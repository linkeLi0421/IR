; ModuleID = '/llk/IR/lib/mpi/mpih-mul.c_pt.bc'
source_filename = "../lib/mpi/mpih-mul.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.karatsuba_ctx = type { ptr, ptr, i32, ptr, i32 }

@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpih_sqr_n_basecase(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %1, align 4
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %6, label %22

6:                                                ; preds = %3
  %7 = icmp eq i32 %4, 1
  %8 = icmp sgt i32 %2, 0
  br i1 %7, label %12, label %9

9:                                                ; preds = %6
  br i1 %8, label %10, label %24

10:                                               ; preds = %9
  %11 = shl nuw i32 %2, 2
  call void @llvm.memset.p0.i32(ptr align 4 %0, i8 0, i32 %11, i1 false)
  br label %26

12:                                               ; preds = %6
  br i1 %8, label %13, label %24

13:                                               ; preds = %12
  store i32 1, ptr %0, align 4
  %14 = icmp eq i32 %2, 1
  br i1 %14, label %26, label %15

15:                                               ; preds = %15, %13
  %16 = phi i32 [ %20, %15 ], [ 1, %13 ]
  %17 = getelementptr i32, ptr %1, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i32, ptr %0, i32 %16
  store i32 %18, ptr %19, align 4
  %20 = add nuw nsw i32 %16, 1
  %21 = icmp eq i32 %20, %2
  br i1 %21, label %26, label %15

22:                                               ; preds = %3
  %23 = tail call i32 @mpihelp_mul_1(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %4) #6
  br label %26

24:                                               ; preds = %12, %9
  %25 = getelementptr i32, ptr %0, i32 %2
  store i32 0, ptr %25, align 4
  br label %48

26:                                               ; preds = %22, %15, %13, %10
  %27 = phi i32 [ %23, %22 ], [ 0, %10 ], [ 0, %13 ], [ 0, %15 ]
  %28 = getelementptr i32, ptr %0, i32 %2
  store i32 %27, ptr %28, align 4
  %29 = icmp sgt i32 %2, 1
  br i1 %29, label %30, label %48

30:                                               ; preds = %43, %26
  %31 = phi ptr [ %33, %43 ], [ %0, %26 ]
  %32 = phi i32 [ %46, %43 ], [ 1, %26 ]
  %33 = getelementptr i32, ptr %31, i32 1
  %34 = getelementptr i32, ptr %1, i32 %32
  %35 = load i32, ptr %34, align 4
  %36 = icmp ult i32 %35, 2
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = icmp eq i32 %35, 1
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  %40 = tail call i32 @mpihelp_add_n(ptr noundef %33, ptr noundef %33, ptr noundef %1, i32 noundef %2) #6
  br label %43

41:                                               ; preds = %30
  %42 = tail call i32 @mpihelp_addmul_1(ptr noundef %33, ptr noundef %1, i32 noundef %2, i32 noundef %35) #6
  br label %43

43:                                               ; preds = %41, %39, %37
  %44 = phi i32 [ %40, %39 ], [ 0, %37 ], [ %42, %41 ]
  %45 = getelementptr i32, ptr %33, i32 %2
  store i32 %44, ptr %45, align 4
  %46 = add nuw nsw i32 %32, 1
  %47 = icmp eq i32 %46, %2
  br i1 %47, label %48, label %30

48:                                               ; preds = %43, %26, %24
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_mul_1(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_add_n(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_addmul_1(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpih_sqr_n(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = and i32 %2, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %4
  %8 = add i32 %2, -1
  %9 = icmp slt i32 %8, 16
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @mpih_sqr_n_basecase(ptr noundef %0, ptr noundef %1, i32 noundef %8)
  br label %12

11:                                               ; preds = %7
  tail call void @mpih_sqr_n(ptr noundef %0, ptr noundef %1, i32 noundef %8, ptr noundef %3)
  br label %12

12:                                               ; preds = %11, %10
  %13 = getelementptr i32, ptr %0, i32 %8
  %14 = getelementptr i32, ptr %1, i32 %8
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @mpihelp_addmul_1(ptr noundef %13, ptr noundef %1, i32 noundef %8, i32 noundef %15) #6
  %17 = shl i32 %8, 1
  %18 = getelementptr i32, ptr %0, i32 %17
  store i32 %16, ptr %18, align 4
  %19 = load i32, ptr %14, align 4
  %20 = tail call i32 @mpihelp_addmul_1(ptr noundef %13, ptr noundef %1, i32 noundef %2, i32 noundef %19) #6
  %21 = add i32 %8, %2
  %22 = getelementptr i32, ptr %0, i32 %21
  store i32 %20, ptr %22, align 4
  br label %112

23:                                               ; preds = %4
  %24 = ashr i32 %2, 1
  %25 = icmp slt i32 %2, 32
  %26 = getelementptr i32, ptr %0, i32 %2
  %27 = getelementptr i32, ptr %1, i32 %24
  br i1 %25, label %28, label %29

28:                                               ; preds = %23
  tail call void @mpih_sqr_n_basecase(ptr noundef %26, ptr noundef %27, i32 noundef %24)
  br label %30

29:                                               ; preds = %23
  tail call void @mpih_sqr_n(ptr noundef %26, ptr noundef %27, i32 noundef %24, ptr noundef %3)
  br label %30

30:                                               ; preds = %29, %28
  %31 = getelementptr i32, ptr %1, i32 %24
  %32 = tail call i32 @mpihelp_cmp(ptr noundef %31, ptr noundef %1, i32 noundef %24) #6
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = tail call i32 @mpihelp_sub_n(ptr noundef %0, ptr noundef %31, ptr noundef %1, i32 noundef %24) #6
  br label %38

36:                                               ; preds = %30
  %37 = tail call i32 @mpihelp_sub_n(ptr noundef %0, ptr noundef %1, ptr noundef %31, i32 noundef %24) #6
  br label %38

38:                                               ; preds = %36, %34
  br i1 %25, label %41, label %39

39:                                               ; preds = %38
  %40 = getelementptr i32, ptr %3, i32 %2
  tail call void @mpih_sqr_n(ptr noundef %3, ptr noundef %0, i32 noundef %24, ptr noundef %40)
  br label %43

41:                                               ; preds = %38
  tail call void @mpih_sqr_n_basecase(ptr noundef %3, ptr noundef %0, i32 noundef %24)
  %42 = icmp sgt i32 %2, 1
  br i1 %42, label %43, label %54

43:                                               ; preds = %41, %39
  %44 = getelementptr i32, ptr %0, i32 %2
  %45 = getelementptr i32, ptr %0, i32 %24
  %46 = call i32 @llvm.smax.i32(i32 %24, i32 1)
  br label %47

47:                                               ; preds = %47, %43
  %48 = phi i32 [ 0, %43 ], [ %52, %47 ]
  %49 = getelementptr i32, ptr %44, i32 %48
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr i32, ptr %45, i32 %48
  store i32 %50, ptr %51, align 4
  %52 = add nuw nsw i32 %48, 1
  %53 = icmp eq i32 %52, %46
  br i1 %53, label %54, label %47

54:                                               ; preds = %47, %41
  %55 = phi i1 [ false, %41 ], [ true, %47 ]
  %56 = getelementptr i32, ptr %0, i32 %2
  %57 = getelementptr i32, ptr %56, i32 %24
  %58 = tail call i32 @mpihelp_add_n(ptr noundef %56, ptr noundef %56, ptr noundef %57, i32 noundef %24) #6
  %59 = getelementptr i32, ptr %0, i32 %24
  %60 = tail call i32 @mpihelp_sub_n(ptr noundef %59, ptr noundef %59, ptr noundef %3, i32 noundef %2) #6
  %61 = sub i32 %58, %60
  br i1 %25, label %62, label %63

62:                                               ; preds = %54
  tail call void @mpih_sqr_n_basecase(ptr noundef %3, ptr noundef %1, i32 noundef %24)
  br label %65

63:                                               ; preds = %54
  %64 = getelementptr i32, ptr %3, i32 %2
  tail call void @mpih_sqr_n(ptr noundef %3, ptr noundef %1, i32 noundef %24, ptr noundef %64)
  br label %65

65:                                               ; preds = %63, %62
  %66 = tail call i32 @mpihelp_add_n(ptr noundef %59, ptr noundef %59, ptr noundef %3, i32 noundef %2) #6
  %67 = add i32 %66, %61
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %84, label %69

69:                                               ; preds = %65
  %70 = getelementptr i32, ptr %59, i32 %2
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, %67
  store i32 %72, ptr %70, align 4
  %73 = icmp ult i32 %72, %71
  br i1 %73, label %74, label %84

74:                                               ; preds = %79, %69
  %75 = phi ptr [ %80, %79 ], [ %70, %69 ]
  %76 = phi i32 [ %77, %79 ], [ %24, %69 ]
  %77 = add i32 %76, -1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = getelementptr i32, ptr %75, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %81, 1
  store i32 %82, ptr %80, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %74, label %84

84:                                               ; preds = %79, %74, %69, %65
  br i1 %55, label %85, label %94

85:                                               ; preds = %84
  %86 = call i32 @llvm.smax.i32(i32 %24, i32 1)
  br label %87

87:                                               ; preds = %87, %85
  %88 = phi i32 [ %92, %87 ], [ 0, %85 ]
  %89 = getelementptr i32, ptr %3, i32 %88
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr i32, ptr %0, i32 %88
  store i32 %90, ptr %91, align 4
  %92 = add nuw nsw i32 %88, 1
  %93 = icmp eq i32 %92, %86
  br i1 %93, label %94, label %87

94:                                               ; preds = %87, %84
  %95 = getelementptr i32, ptr %3, i32 %24
  %96 = tail call i32 @mpihelp_add_n(ptr noundef %59, ptr noundef %59, ptr noundef %95, i32 noundef %24) #6
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %112, label %98

98:                                               ; preds = %94
  %99 = load i32, ptr %56, align 4
  %100 = add i32 %99, 1
  store i32 %100, ptr %56, align 4
  %101 = icmp eq i32 %99, -1
  br i1 %101, label %102, label %112

102:                                              ; preds = %107, %98
  %103 = phi ptr [ %108, %107 ], [ %56, %98 ]
  %104 = phi i32 [ %105, %107 ], [ %2, %98 ]
  %105 = add i32 %104, -1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = getelementptr i32, ptr %103, i32 1
  %109 = load i32, ptr %108, align 4
  %110 = add i32 %109, 1
  store i32 %110, ptr %108, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %102, label %112

112:                                              ; preds = %107, %102, %98, %94, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_cmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_sub_n(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpihelp_mul_n(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %1, %2
  %6 = icmp slt i32 %3, 16
  br i1 %5, label %7, label %12

7:                                                ; preds = %4
  br i1 %6, label %8, label %9

8:                                                ; preds = %7
  tail call void @mpih_sqr_n_basecase(ptr noundef %0, ptr noundef %1, i32 noundef %3)
  br label %17

9:                                                ; preds = %7
  %10 = shl nuw i32 %3, 1
  %11 = tail call ptr @mpi_alloc_limb_space(i32 noundef %10) #6
  tail call void @mpih_sqr_n(ptr noundef %0, ptr noundef %1, i32 noundef %3, ptr noundef %11)
  tail call void @mpi_free_limb_space(ptr noundef %11) #6
  br label %17

12:                                               ; preds = %4
  br i1 %6, label %13, label %14

13:                                               ; preds = %12
  tail call fastcc void @mul_n_basecase(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  br label %17

14:                                               ; preds = %12
  %15 = shl nuw i32 %3, 1
  %16 = tail call ptr @mpi_alloc_limb_space(i32 noundef %15) #6
  tail call fastcc void @mul_n(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %16)
  tail call void @mpi_free_limb_space(ptr noundef %16) #6
  br label %17

17:                                               ; preds = %14, %13, %9, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_alloc_limb_space(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_free_limb_space(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mul_n_basecase(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load i32, ptr %2, align 4
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %7, label %21

7:                                                ; preds = %4
  %8 = icmp eq i32 %5, 1
  %9 = icmp sgt i32 %3, 0
  br i1 %8, label %13, label %10

10:                                               ; preds = %7
  br i1 %9, label %11, label %23

11:                                               ; preds = %10
  %12 = shl nuw i32 %3, 2
  call void @llvm.memset.p0.i32(ptr align 4 %0, i8 0, i32 %12, i1 false)
  br label %25

13:                                               ; preds = %7
  br i1 %9, label %14, label %23

14:                                               ; preds = %14, %13
  %15 = phi i32 [ %19, %14 ], [ 0, %13 ]
  %16 = getelementptr i32, ptr %1, i32 %15
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i32, ptr %0, i32 %15
  store i32 %17, ptr %18, align 4
  %19 = add nuw nsw i32 %15, 1
  %20 = icmp eq i32 %19, %3
  br i1 %20, label %25, label %14

21:                                               ; preds = %4
  %22 = tail call i32 @mpihelp_mul_1(ptr noundef %0, ptr noundef %1, i32 noundef %3, i32 noundef %5) #6
  br label %25

23:                                               ; preds = %13, %10
  %24 = getelementptr i32, ptr %0, i32 %3
  store i32 0, ptr %24, align 4
  br label %47

25:                                               ; preds = %21, %14, %11
  %26 = phi i32 [ %22, %21 ], [ 0, %11 ], [ 0, %14 ]
  %27 = getelementptr i32, ptr %0, i32 %3
  store i32 %26, ptr %27, align 4
  %28 = icmp sgt i32 %3, 1
  br i1 %28, label %29, label %47

29:                                               ; preds = %42, %25
  %30 = phi ptr [ %32, %42 ], [ %0, %25 ]
  %31 = phi i32 [ %45, %42 ], [ 1, %25 ]
  %32 = getelementptr i32, ptr %30, i32 1
  %33 = getelementptr i32, ptr %2, i32 %31
  %34 = load i32, ptr %33, align 4
  %35 = icmp ult i32 %34, 2
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = icmp eq i32 %34, 1
  br i1 %37, label %38, label %42

38:                                               ; preds = %36
  %39 = tail call i32 @mpihelp_add_n(ptr noundef %32, ptr noundef %32, ptr noundef %1, i32 noundef %3) #6
  br label %42

40:                                               ; preds = %29
  %41 = tail call i32 @mpihelp_addmul_1(ptr noundef %32, ptr noundef %1, i32 noundef %3, i32 noundef %34) #6
  br label %42

42:                                               ; preds = %40, %38, %36
  %43 = phi i32 [ %39, %38 ], [ 0, %36 ], [ %41, %40 ]
  %44 = getelementptr i32, ptr %32, i32 %3
  store i32 %43, ptr %44, align 4
  %45 = add nuw nsw i32 %31, 1
  %46 = icmp eq i32 %45, %3
  br i1 %46, label %47, label %29

47:                                               ; preds = %42, %25, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mul_n(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = and i32 %3, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %5
  %9 = add i32 %3, -1
  %10 = icmp slt i32 %9, 16
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call fastcc void @mul_n_basecase(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %9)
  br label %13

12:                                               ; preds = %8
  tail call fastcc void @mul_n(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %9, ptr noundef %4)
  br label %13

13:                                               ; preds = %12, %11
  %14 = getelementptr i32, ptr %0, i32 %9
  %15 = getelementptr i32, ptr %2, i32 %9
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @mpihelp_addmul_1(ptr noundef %14, ptr noundef %1, i32 noundef %9, i32 noundef %16) #6
  %18 = shl i32 %9, 1
  %19 = getelementptr i32, ptr %0, i32 %18
  store i32 %17, ptr %19, align 4
  %20 = getelementptr i32, ptr %1, i32 %9
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @mpihelp_addmul_1(ptr noundef %14, ptr noundef %2, i32 noundef %3, i32 noundef %21) #6
  %23 = add i32 %9, %3
  %24 = getelementptr i32, ptr %0, i32 %23
  store i32 %22, ptr %24, align 4
  br label %136

25:                                               ; preds = %5
  %26 = ashr i32 %3, 1
  %27 = icmp slt i32 %3, 32
  %28 = getelementptr i32, ptr %0, i32 %3
  %29 = getelementptr i32, ptr %1, i32 %26
  %30 = getelementptr i32, ptr %2, i32 %26
  br i1 %27, label %31, label %32

31:                                               ; preds = %25
  tail call fastcc void @mul_n_basecase(ptr noundef %28, ptr noundef %29, ptr noundef %30, i32 noundef %26)
  br label %33

32:                                               ; preds = %25
  tail call fastcc void @mul_n(ptr noundef %28, ptr noundef %29, ptr noundef %30, i32 noundef %26, ptr noundef %4)
  br label %33

33:                                               ; preds = %32, %31
  %34 = getelementptr i32, ptr %1, i32 %26
  %35 = tail call i32 @mpihelp_cmp(ptr noundef %34, ptr noundef %1, i32 noundef %26) #6
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = tail call i32 @mpihelp_sub_n(ptr noundef %0, ptr noundef %34, ptr noundef %1, i32 noundef %26) #6
  br label %41

39:                                               ; preds = %33
  %40 = tail call i32 @mpihelp_sub_n(ptr noundef %0, ptr noundef %1, ptr noundef %34, i32 noundef %26) #6
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ 0, %37 ], [ 1, %39 ]
  %43 = getelementptr i32, ptr %2, i32 %26
  %44 = tail call i32 @mpihelp_cmp(ptr noundef %43, ptr noundef %2, i32 noundef %26) #6
  %45 = icmp sgt i32 %44, -1
  %46 = getelementptr i32, ptr %0, i32 %26
  br i1 %45, label %47, label %50

47:                                               ; preds = %41
  %48 = tail call i32 @mpihelp_sub_n(ptr noundef %46, ptr noundef %43, ptr noundef %2, i32 noundef %26) #6
  %49 = xor i32 %42, 1
  br label %52

50:                                               ; preds = %41
  %51 = tail call i32 @mpihelp_sub_n(ptr noundef %46, ptr noundef %2, ptr noundef %43, i32 noundef %26) #6
  br label %52

52:                                               ; preds = %50, %47
  %53 = phi i32 [ %49, %47 ], [ %42, %50 ]
  %54 = getelementptr i32, ptr %0, i32 %26
  br i1 %27, label %57, label %55

55:                                               ; preds = %52
  %56 = getelementptr i32, ptr %4, i32 %3
  tail call fastcc void @mul_n(ptr noundef %4, ptr noundef %0, ptr noundef %54, i32 noundef %26, ptr noundef %56)
  br label %59

57:                                               ; preds = %52
  tail call fastcc void @mul_n_basecase(ptr noundef %4, ptr noundef %0, ptr noundef %54, i32 noundef %26)
  %58 = icmp sgt i32 %3, 1
  br i1 %58, label %59, label %70

59:                                               ; preds = %57, %55
  %60 = getelementptr i32, ptr %0, i32 %3
  %61 = getelementptr i32, ptr %0, i32 %26
  %62 = call i32 @llvm.smax.i32(i32 %26, i32 1)
  br label %63

63:                                               ; preds = %63, %59
  %64 = phi i32 [ 0, %59 ], [ %68, %63 ]
  %65 = getelementptr i32, ptr %60, i32 %64
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr i32, ptr %61, i32 %64
  store i32 %66, ptr %67, align 4
  %68 = add nuw nsw i32 %64, 1
  %69 = icmp eq i32 %68, %62
  br i1 %69, label %70, label %63

70:                                               ; preds = %63, %57
  %71 = phi i1 [ false, %57 ], [ true, %63 ]
  %72 = getelementptr i32, ptr %0, i32 %3
  %73 = getelementptr i32, ptr %72, i32 %26
  %74 = tail call i32 @mpihelp_add_n(ptr noundef %72, ptr noundef %72, ptr noundef %73, i32 noundef %26) #6
  %75 = icmp eq i32 %53, 0
  %76 = getelementptr i32, ptr %0, i32 %26
  br i1 %75, label %80, label %77

77:                                               ; preds = %70
  %78 = tail call i32 @mpihelp_sub_n(ptr noundef %76, ptr noundef %76, ptr noundef %4, i32 noundef %3) #6
  %79 = sub i32 %74, %78
  br label %83

80:                                               ; preds = %70
  %81 = tail call i32 @mpihelp_add_n(ptr noundef %76, ptr noundef %76, ptr noundef %4, i32 noundef %3) #6
  %82 = add i32 %81, %74
  br label %83

83:                                               ; preds = %80, %77
  %84 = phi i32 [ %79, %77 ], [ %82, %80 ]
  br i1 %27, label %85, label %86

85:                                               ; preds = %83
  tail call fastcc void @mul_n_basecase(ptr noundef %4, ptr noundef %1, ptr noundef %2, i32 noundef %26)
  br label %88

86:                                               ; preds = %83
  %87 = getelementptr i32, ptr %4, i32 %3
  tail call fastcc void @mul_n(ptr noundef %4, ptr noundef %1, ptr noundef %2, i32 noundef %26, ptr noundef %87)
  br label %88

88:                                               ; preds = %86, %85
  %89 = getelementptr i32, ptr %0, i32 %26
  %90 = tail call i32 @mpihelp_add_n(ptr noundef %89, ptr noundef %89, ptr noundef %4, i32 noundef %3) #6
  %91 = add i32 %90, %84
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %108, label %93

93:                                               ; preds = %88
  %94 = getelementptr i32, ptr %89, i32 %3
  %95 = load i32, ptr %94, align 4
  %96 = add i32 %95, %91
  store i32 %96, ptr %94, align 4
  %97 = icmp ult i32 %96, %95
  br i1 %97, label %98, label %108

98:                                               ; preds = %103, %93
  %99 = phi ptr [ %104, %103 ], [ %94, %93 ]
  %100 = phi i32 [ %101, %103 ], [ %26, %93 ]
  %101 = add i32 %100, -1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %98
  %104 = getelementptr i32, ptr %99, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = add i32 %105, 1
  store i32 %106, ptr %104, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %98, label %108

108:                                              ; preds = %103, %98, %93, %88
  br i1 %71, label %109, label %118

109:                                              ; preds = %108
  %110 = call i32 @llvm.smax.i32(i32 %26, i32 1)
  br label %111

111:                                              ; preds = %111, %109
  %112 = phi i32 [ %116, %111 ], [ 0, %109 ]
  %113 = getelementptr i32, ptr %4, i32 %112
  %114 = load i32, ptr %113, align 4
  %115 = getelementptr i32, ptr %0, i32 %112
  store i32 %114, ptr %115, align 4
  %116 = add nuw nsw i32 %112, 1
  %117 = icmp eq i32 %116, %110
  br i1 %117, label %118, label %111

118:                                              ; preds = %111, %108
  %119 = getelementptr i32, ptr %4, i32 %26
  %120 = tail call i32 @mpihelp_add_n(ptr noundef %89, ptr noundef %89, ptr noundef %119, i32 noundef %26) #6
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %136, label %122

122:                                              ; preds = %118
  %123 = load i32, ptr %72, align 4
  %124 = add i32 %123, 1
  store i32 %124, ptr %72, align 4
  %125 = icmp eq i32 %123, -1
  br i1 %125, label %126, label %136

126:                                              ; preds = %131, %122
  %127 = phi ptr [ %132, %131 ], [ %72, %122 ]
  %128 = phi i32 [ %129, %131 ], [ %3, %122 ]
  %129 = add i32 %128, -1
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %126
  %132 = getelementptr i32, ptr %127, i32 1
  %133 = load i32, ptr %132, align 4
  %134 = add i32 %133, 1
  store i32 %134, ptr %132, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %126, label %136

136:                                              ; preds = %131, %126, %122, %118, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mpihelp_mul_karatsuba_case(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.karatsuba_ctx, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.karatsuba_ctx, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp slt i32 %13, %4
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  tail call void @mpi_free_limb_space(ptr noundef nonnull %9) #6
  br label %16

16:                                               ; preds = %15, %6
  %17 = shl i32 %4, 1
  %18 = tail call ptr @mpi_alloc_limb_space(i32 noundef %17) #6
  store ptr %18, ptr %8, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %164, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.karatsuba_ctx, ptr %5, i32 0, i32 2
  store i32 %4, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %11
  %23 = phi ptr [ %9, %11 ], [ %18, %20 ]
  %24 = icmp slt i32 %4, 16
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  tail call fastcc void @mul_n_basecase(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef %4)
  br label %27

26:                                               ; preds = %22
  tail call fastcc void @mul_n(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %23)
  br label %27

27:                                               ; preds = %26, %25
  %28 = getelementptr i32, ptr %0, i32 %4
  %29 = getelementptr i32, ptr %1, i32 %4
  %30 = sub i32 %2, %4
  %31 = icmp slt i32 %30, %4
  br i1 %31, label %103, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.karatsuba_ctx, ptr %5, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.karatsuba_ctx, ptr %5, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = icmp slt i32 %38, %4
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  tail call void @mpi_free_limb_space(ptr noundef nonnull %34) #6
  br label %41

41:                                               ; preds = %40, %32
  %42 = shl i32 %4, 1
  %43 = tail call ptr @mpi_alloc_limb_space(i32 noundef %42) #6
  store ptr %43, ptr %33, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load ptr, ptr %8, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void @mpi_free_limb_space(ptr noundef nonnull %46) #6
  br label %49

49:                                               ; preds = %48, %45
  store ptr null, ptr %8, align 4
  br label %164

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.karatsuba_ctx, ptr %5, i32 0, i32 4
  store i32 %4, ptr %51, align 4
  br label %52

52:                                               ; preds = %50, %36
  br label %53

53:                                               ; preds = %99, %52
  %54 = phi i32 [ %101, %99 ], [ %30, %52 ]
  %55 = phi ptr [ %100, %99 ], [ %29, %52 ]
  %56 = phi ptr [ %64, %99 ], [ %28, %52 ]
  %57 = load ptr, ptr %33, align 4
  br i1 %24, label %58, label %59

58:                                               ; preds = %53
  tail call fastcc void @mul_n_basecase(ptr noundef %57, ptr noundef %55, ptr noundef %3, i32 noundef %4)
  br label %61

59:                                               ; preds = %53
  %60 = load ptr, ptr %8, align 4
  tail call fastcc void @mul_n(ptr noundef %57, ptr noundef %55, ptr noundef %3, i32 noundef %4, ptr noundef %60)
  br label %61

61:                                               ; preds = %59, %58
  %62 = load ptr, ptr %33, align 4
  %63 = tail call i32 @mpihelp_add_n(ptr noundef %56, ptr noundef %56, ptr noundef %62, i32 noundef %4) #6
  %64 = getelementptr i32, ptr %56, i32 %4
  %65 = load ptr, ptr %33, align 4
  %66 = getelementptr i32, ptr %65, i32 %4
  %67 = getelementptr i32, ptr %66, i32 1
  %68 = load i32, ptr %66, align 4
  %69 = add i32 %68, %63
  %70 = getelementptr i32, ptr %64, i32 1
  store i32 %69, ptr %64, align 4
  %71 = icmp ult i32 %69, %68
  br i1 %71, label %72, label %84

72:                                               ; preds = %78, %61
  %73 = phi ptr [ %82, %78 ], [ %70, %61 ]
  %74 = phi ptr [ %79, %78 ], [ %67, %61 ]
  %75 = phi i32 [ %76, %78 ], [ %4, %61 ]
  %76 = add i32 %75, -1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %99, label %78

78:                                               ; preds = %72
  %79 = getelementptr i32, ptr %74, i32 1
  %80 = load i32, ptr %74, align 4
  %81 = add i32 %80, 1
  %82 = getelementptr i32, ptr %73, i32 1
  store i32 %81, ptr %73, align 4
  %83 = icmp eq i32 %81, 0
  br i1 %83, label %72, label %84

84:                                               ; preds = %78, %61
  %85 = phi ptr [ %70, %61 ], [ %82, %78 ]
  %86 = phi ptr [ %67, %61 ], [ %79, %78 ]
  %87 = phi i32 [ %4, %61 ], [ %76, %78 ]
  %88 = icmp eq ptr %85, %86
  br i1 %88, label %99, label %89

89:                                               ; preds = %84
  %90 = add i32 %87, -1
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %92, %89
  %93 = phi i32 [ %97, %92 ], [ 0, %89 ]
  %94 = getelementptr i32, ptr %86, i32 %93
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr i32, ptr %85, i32 %93
  store i32 %95, ptr %96, align 4
  %97 = add nuw nsw i32 %93, 1
  %98 = icmp eq i32 %97, %90
  br i1 %98, label %99, label %92

99:                                               ; preds = %92, %89, %84, %72
  %100 = getelementptr i32, ptr %55, i32 %4
  %101 = sub i32 %54, %4
  %102 = icmp slt i32 %101, %4
  br i1 %102, label %103, label %53

103:                                              ; preds = %99, %27
  %104 = phi i32 [ %30, %27 ], [ %101, %99 ]
  %105 = phi ptr [ %29, %27 ], [ %100, %99 ]
  %106 = phi ptr [ %28, %27 ], [ %64, %99 ]
  %107 = icmp eq i32 %104, 0
  br i1 %107, label %164, label %108

108:                                              ; preds = %103
  %109 = icmp slt i32 %104, 16
  br i1 %109, label %110, label %114

110:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  %111 = load ptr, ptr %8, align 4
  %112 = call i32 @mpihelp_mul(ptr noundef %111, ptr noundef %3, i32 noundef %4, ptr noundef %105, i32 noundef %104, ptr noundef nonnull %7)
  %113 = icmp slt i32 %112, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  br i1 %113, label %164, label %126

114:                                              ; preds = %108
  %115 = load ptr, ptr %5, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %119 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %118, i32 noundef 3520, i32 noundef 20) #7
  store ptr %119, ptr %5, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %164, label %121

121:                                              ; preds = %117, %114
  %122 = phi ptr [ %119, %117 ], [ %115, %114 ]
  %123 = load ptr, ptr %8, align 4
  %124 = tail call i32 @mpihelp_mul_karatsuba_case(ptr noundef %123, ptr noundef %3, i32 noundef %4, ptr noundef %105, i32 noundef %104, ptr noundef nonnull %122)
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %164, label %126

126:                                              ; preds = %121, %110
  %127 = load ptr, ptr %8, align 4
  %128 = tail call i32 @mpihelp_add_n(ptr noundef %106, ptr noundef %106, ptr noundef %127, i32 noundef %4) #6
  %129 = getelementptr i32, ptr %106, i32 %4
  %130 = load ptr, ptr %8, align 4
  %131 = getelementptr i32, ptr %130, i32 %4
  %132 = getelementptr i32, ptr %131, i32 1
  %133 = load i32, ptr %131, align 4
  %134 = add i32 %133, %128
  %135 = getelementptr i32, ptr %129, i32 1
  store i32 %134, ptr %129, align 4
  %136 = icmp ult i32 %134, %133
  br i1 %136, label %137, label %149

137:                                              ; preds = %143, %126
  %138 = phi ptr [ %147, %143 ], [ %135, %126 ]
  %139 = phi ptr [ %144, %143 ], [ %132, %126 ]
  %140 = phi i32 [ %141, %143 ], [ %104, %126 ]
  %141 = add i32 %140, -1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %164, label %143

143:                                              ; preds = %137
  %144 = getelementptr i32, ptr %139, i32 1
  %145 = load i32, ptr %139, align 4
  %146 = add i32 %145, 1
  %147 = getelementptr i32, ptr %138, i32 1
  store i32 %146, ptr %138, align 4
  %148 = icmp eq i32 %146, 0
  br i1 %148, label %137, label %149

149:                                              ; preds = %143, %126
  %150 = phi ptr [ %135, %126 ], [ %147, %143 ]
  %151 = phi ptr [ %132, %126 ], [ %144, %143 ]
  %152 = phi i32 [ %104, %126 ], [ %141, %143 ]
  %153 = icmp eq ptr %150, %151
  br i1 %153, label %164, label %154

154:                                              ; preds = %149
  %155 = add i32 %152, -1
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %157, %154
  %158 = phi i32 [ %162, %157 ], [ 0, %154 ]
  %159 = getelementptr i32, ptr %151, i32 %158
  %160 = load i32, ptr %159, align 4
  %161 = getelementptr i32, ptr %150, i32 %158
  store i32 %160, ptr %161, align 4
  %162 = add nuw nsw i32 %158, 1
  %163 = icmp eq i32 %162, %155
  br i1 %163, label %164, label %157

164:                                              ; preds = %157, %154, %149, %137, %121, %117, %110, %103, %49, %16
  %165 = phi i32 [ -12, %110 ], [ -12, %49 ], [ -12, %16 ], [ -12, %117 ], [ -12, %121 ], [ 0, %103 ], [ 0, %149 ], [ 0, %154 ], [ 0, %157 ], [ 0, %137 ]
  ret i32 %165
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mpihelp_mul(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca %struct.karatsuba_ctx, align 4
  %8 = getelementptr i32, ptr %0, i32 %2
  %9 = getelementptr i32, ptr %8, i32 %4
  %10 = getelementptr i32, ptr %9, i32 -1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #6
  %11 = icmp slt i32 %4, 16
  br i1 %11, label %12, label %54

12:                                               ; preds = %6
  %13 = icmp eq i32 %4, 0
  br i1 %13, label %86, label %14

14:                                               ; preds = %12
  %15 = load i32, ptr %3, align 4
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = icmp eq i32 %15, 1
  %19 = icmp sgt i32 %2, 0
  br i1 %18, label %23, label %20

20:                                               ; preds = %17
  br i1 %19, label %21, label %33

21:                                               ; preds = %20
  %22 = shl nuw i32 %2, 2
  call void @llvm.memset.p0.i32(ptr align 4 %0, i8 0, i32 %22, i1 false)
  br label %33

23:                                               ; preds = %17
  br i1 %19, label %24, label %33

24:                                               ; preds = %24, %23
  %25 = phi i32 [ %29, %24 ], [ 0, %23 ]
  %26 = getelementptr i32, ptr %1, i32 %25
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i32, ptr %0, i32 %25
  store i32 %27, ptr %28, align 4
  %29 = add nuw nsw i32 %25, 1
  %30 = icmp eq i32 %29, %2
  br i1 %30, label %33, label %24

31:                                               ; preds = %14
  %32 = tail call i32 @mpihelp_mul_1(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %15) #6
  br label %33

33:                                               ; preds = %31, %24, %23, %21, %20
  %34 = phi i32 [ %32, %31 ], [ 0, %23 ], [ 0, %20 ], [ 0, %21 ], [ 0, %24 ]
  store i32 %34, ptr %8, align 4
  %35 = icmp sgt i32 %4, 1
  br i1 %35, label %36, label %86

36:                                               ; preds = %49, %33
  %37 = phi ptr [ %39, %49 ], [ %0, %33 ]
  %38 = phi i32 [ %52, %49 ], [ 1, %33 ]
  %39 = getelementptr i32, ptr %37, i32 1
  %40 = getelementptr i32, ptr %3, i32 %38
  %41 = load i32, ptr %40, align 4
  %42 = icmp ult i32 %41, 2
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = icmp eq i32 %41, 1
  br i1 %44, label %45, label %49

45:                                               ; preds = %43
  %46 = tail call i32 @mpihelp_add_n(ptr noundef %39, ptr noundef %39, ptr noundef %1, i32 noundef %2) #6
  br label %49

47:                                               ; preds = %36
  %48 = tail call i32 @mpihelp_addmul_1(ptr noundef %39, ptr noundef %1, i32 noundef %2, i32 noundef %41) #6
  br label %49

49:                                               ; preds = %47, %45, %43
  %50 = phi i32 [ %46, %45 ], [ 0, %43 ], [ %48, %47 ]
  %51 = getelementptr i32, ptr %39, i32 %2
  store i32 %50, ptr %51, align 4
  %52 = add nuw nsw i32 %38, 1
  %53 = icmp eq i32 %52, %4
  br i1 %53, label %86, label %36

54:                                               ; preds = %6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i32 20, i1 false)
  %55 = call i32 @mpihelp_mul_karatsuba_case(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %7)
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %88, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.karatsuba_ctx, ptr %7, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  tail call void @mpi_free_limb_space(ptr noundef nonnull %59) #6
  br label %62

62:                                               ; preds = %61, %57
  %63 = getelementptr inbounds %struct.karatsuba_ctx, ptr %7, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  tail call void @mpi_free_limb_space(ptr noundef nonnull %64) #6
  br label %67

67:                                               ; preds = %66, %62
  %68 = load ptr, ptr %7, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %84, label %70

70:                                               ; preds = %82, %67
  %71 = phi ptr [ %72, %82 ], [ %68, %67 ]
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.karatsuba_ctx, ptr %71, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %70
  tail call void @mpi_free_limb_space(ptr noundef nonnull %74) #6
  br label %77

77:                                               ; preds = %76, %70
  %78 = getelementptr inbounds %struct.karatsuba_ctx, ptr %71, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  tail call void @mpi_free_limb_space(ptr noundef nonnull %79) #6
  br label %82

82:                                               ; preds = %81, %77
  tail call void @kfree(ptr noundef nonnull %71) #6
  %83 = icmp eq ptr %72, null
  br i1 %83, label %84, label %70

84:                                               ; preds = %82, %67
  %85 = load i32, ptr %10, align 4
  br label %86

86:                                               ; preds = %84, %49, %33, %12
  %87 = phi i32 [ %85, %84 ], [ 0, %12 ], [ %34, %33 ], [ %50, %49 ]
  store i32 %87, ptr %5, align 4
  br label %88

88:                                               ; preds = %86, %54
  %89 = phi i32 [ -12, %54 ], [ 0, %86 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #6
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpihelp_release_karatsuba_ctx(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.karatsuba_ctx, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @mpi_free_limb_space(ptr noundef nonnull %3) #6
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.karatsuba_ctx, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @mpi_free_limb_space(ptr noundef nonnull %8) #6
  br label %11

11:                                               ; preds = %10, %6
  %12 = load ptr, ptr %0, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %26, %11
  %15 = phi ptr [ %16, %26 ], [ %12, %11 ]
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.karatsuba_ctx, ptr %15, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call void @mpi_free_limb_space(ptr noundef nonnull %18) #6
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %struct.karatsuba_ctx, ptr %15, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @mpi_free_limb_space(ptr noundef nonnull %23) #6
  br label %26

26:                                               ; preds = %25, %21
  tail call void @kfree(ptr noundef nonnull %15) #6
  %27 = icmp eq ptr %16, null
  br i1 %27, label %28, label %14

28:                                               ; preds = %26, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
