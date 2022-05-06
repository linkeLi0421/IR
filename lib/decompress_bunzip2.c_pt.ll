; ModuleID = '/llk/IR/lib/decompress_bunzip2.c_pt.bc'
source_filename = "../lib/decompress_bunzip2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bunzip_data = type { i32, i32, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, [256 x i32], i32, i32, i32, ptr, i32, [32768 x i8], [6 x %struct.group_data], i32, [256 x i32], [256 x i8], [256 x i8] }
%struct.group_data = type { [21 x i32], [20 x i32], [258 x i32], i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Could not allocate output buffer\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not allocate input buffer\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Data integrity error when decompressing.\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Compressed file ends unexpectedly\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @bunzip2(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef %4, ptr noundef writeonly %5, ptr nocapture noundef readonly %6) local_unnamed_addr #0 section ".init.text" {
  %8 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store ptr null, ptr %8, align 4, !annotation !8
  %9 = icmp eq ptr %3, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 4096) #10
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi ptr [ %12, %10 ], [ %4, %7 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call void %6(ptr noundef nonnull @.str) #9
  br label %80

17:                                               ; preds = %13
  %18 = icmp eq ptr %0, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %17
  %20 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3264, i32 noundef 4096) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  tail call void %6(ptr noundef nonnull @.str.1) #9
  br label %76

24:                                               ; preds = %19, %17
  %25 = phi ptr [ %21, %19 ], [ %0, %17 ]
  %26 = call fastcc i32 @start_bunzip(ptr noundef nonnull %8, ptr noundef nonnull %25, i32 noundef %1, ptr noundef %2) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %24
  %29 = load ptr, ptr %8, align 4
  %30 = tail call fastcc i32 @read_bunzip(ptr noundef %29, ptr noundef nonnull %14) #11
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %44, label %32

32:                                               ; preds = %40, %28
  %33 = phi i32 [ %42, %40 ], [ %30, %28 ]
  %34 = phi ptr [ %41, %40 ], [ %14, %28 ]
  br i1 %9, label %35, label %37

35:                                               ; preds = %32
  %36 = getelementptr i8, ptr %34, i32 %33
  br label %40

37:                                               ; preds = %32
  %38 = tail call i32 %3(ptr noundef %34, i32 noundef %33) #9
  %39 = icmp eq i32 %33, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %37, %35
  %41 = phi ptr [ %34, %37 ], [ %36, %35 ]
  %42 = tail call fastcc i32 @read_bunzip(ptr noundef %29, ptr noundef %41) #11
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %44, label %32

44:                                               ; preds = %40, %28, %24
  %45 = phi ptr [ %14, %24 ], [ %14, %28 ], [ %41, %40 ]
  %46 = phi i32 [ %26, %24 ], [ %30, %28 ], [ %42, %40 ]
  switch i32 %46, label %58 [
    i32 -1, label %47
    i32 -4, label %54
  ]

47:                                               ; preds = %44
  %48 = load ptr, ptr %8, align 4
  %49 = getelementptr inbounds %struct.bunzip_data, ptr %48, i32 0, i32 12
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.bunzip_data, ptr %48, i32 0, i32 13
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %47, %44, %37
  %55 = phi ptr [ @.str.2, %47 ], [ @.str.3, %44 ], [ @.str.3, %37 ]
  %56 = phi ptr [ %45, %47 ], [ %45, %44 ], [ %34, %37 ]
  %57 = phi i32 [ -1, %47 ], [ %46, %44 ], [ -4, %37 ]
  tail call void %6(ptr noundef nonnull %55) #9
  br label %58

58:                                               ; preds = %54, %47, %44
  %59 = phi ptr [ %45, %47 ], [ %45, %44 ], [ %56, %54 ]
  %60 = phi i32 [ 0, %47 ], [ %46, %44 ], [ %57, %54 ]
  %61 = load ptr, ptr %8, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %74, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.bunzip_data, ptr %61, i32 0, i32 15
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  tail call void @vfree(ptr noundef nonnull %65) #9
  br label %68

68:                                               ; preds = %67, %63
  %69 = icmp eq ptr %5, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.bunzip_data, ptr %61, i32 0, i32 7
  %72 = load i32, ptr %71, align 4
  store i32 %72, ptr %5, align 4
  br label %73

73:                                               ; preds = %70, %68
  tail call void @kfree(ptr noundef nonnull %61) #9
  br label %74

74:                                               ; preds = %73, %58
  br i1 %18, label %75, label %76

75:                                               ; preds = %74
  tail call void @kfree(ptr noundef nonnull %25) #9
  br label %76

76:                                               ; preds = %75, %74, %23
  %77 = phi ptr [ %59, %74 ], [ %59, %75 ], [ %14, %23 ]
  %78 = phi i32 [ %60, %74 ], [ %60, %75 ], [ -6, %23 ]
  br i1 %9, label %80, label %79

79:                                               ; preds = %76
  tail call void @kfree(ptr noundef %77) #9
  br label %80

80:                                               ; preds = %79, %76, %16
  %81 = phi i32 [ -6, %16 ], [ %78, %79 ], [ %78, %76 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  ret i32 %81
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @start_bunzip(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 section ".init.text" {
  %5 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 42620, i32 noundef 3264, i32 noundef 4) #12
  store ptr %5, ptr %0, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %4
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4096 dereferenceable(42620) %5, i8 0, i32 42620, i1 false)
  %8 = getelementptr inbounds %struct.bunzip_data, ptr %5, i32 0, i32 8
  store ptr %1, ptr %8, align 32
  %9 = getelementptr inbounds %struct.bunzip_data, ptr %5, i32 0, i32 6
  store i32 %2, ptr %9, align 8
  %10 = icmp eq ptr %3, null
  %11 = select i1 %10, ptr @nofill, ptr %3
  %12 = getelementptr inbounds %struct.bunzip_data, ptr %5, i32 0, i32 5
  store ptr %11, ptr %12, align 4
  br label %13

13:                                               ; preds = %25, %7
  %14 = phi i32 [ 0, %7 ], [ %27, %25 ]
  %15 = shl nuw i32 %14, 24
  br label %16

16:                                               ; preds = %16, %13
  %17 = phi i32 [ %15, %13 ], [ %22, %16 ]
  %18 = phi i32 [ 8, %13 ], [ %23, %16 ]
  %19 = shl i32 %17, 1
  %20 = xor i32 %19, 79764919
  %21 = icmp slt i32 %17, 0
  %22 = select i1 %21, i32 %20, i32 %19
  %23 = add nsw i32 %18, -1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %16

25:                                               ; preds = %16
  %26 = getelementptr %struct.bunzip_data, ptr %5, i32 0, i32 11, i32 %14
  store i32 %22, ptr %26, align 4
  %27 = add nuw nsw i32 %14, 1
  %28 = icmp eq i32 %27, 256
  br i1 %28, label %29, label %13

29:                                               ; preds = %25
  %30 = tail call fastcc i32 @get_bits(ptr noundef nonnull %5, i8 noundef zeroext 32) #11
  %31 = add i32 %30, -1113221178
  %32 = icmp ult i32 %31, -9
  br i1 %32, label %42, label %33

33:                                               ; preds = %29
  %34 = mul i32 %30, 100000
  %35 = add nsw i32 %34, -859454976
  %36 = getelementptr inbounds %struct.bunzip_data, ptr %5, i32 0, i32 16
  store i32 %35, ptr %36, align 4
  %37 = shl nuw nsw i32 %35, 2
  %38 = tail call noalias ptr @vmalloc(i32 noundef %37) #12
  %39 = getelementptr inbounds %struct.bunzip_data, ptr %5, i32 0, i32 15
  store ptr %38, ptr %39, align 8
  %40 = icmp eq ptr %38, null
  %41 = select i1 %40, i32 -6, i32 0
  br label %42

42:                                               ; preds = %33, %29, %4
  %43 = phi i32 [ -6, %4 ], [ -2, %29 ], [ %41, %33 ]
  ret i32 %43
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @read_bunzip(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 section ".init.text" {
  %3 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %99, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %0, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %88, label %13

13:                                               ; preds = %6
  %14 = load i32, ptr %10, align 4
  %15 = load i32, ptr %9, align 4
  %16 = add i32 %11, -1
  store i32 %16, ptr %0, align 4
  br label %22

17:                                               ; preds = %74, %71, %69
  %18 = phi i32 [ %64, %71 ], [ %52, %69 ], [ %52, %74 ]
  %19 = icmp sgt i32 %53, 4095
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, ptr %0, align 4
  br label %28

22:                                               ; preds = %17, %13
  %23 = phi i32 [ 0, %13 ], [ %53, %17 ]
  %24 = phi i32 [ %14, %13 ], [ %18, %17 ]
  %25 = phi i32 [ %15, %13 ], [ %65, %17 ]
  %26 = trunc i32 %24 to i8
  %27 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 14
  br label %33

28:                                               ; preds = %46, %20
  %29 = phi i32 [ %18, %20 ], [ %24, %46 ]
  %30 = phi i32 [ %65, %20 ], [ %25, %46 ]
  %31 = phi i32 [ %21, %20 ], [ %47, %46 ]
  store i32 %30, ptr %9, align 4
  store i32 %29, ptr %10, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %0, align 4
  br label %99

33:                                               ; preds = %46, %22
  %34 = phi i32 [ %23, %22 ], [ %35, %46 ]
  %35 = add i32 %34, 1
  %36 = getelementptr i8, ptr %1, i32 %34
  store i8 %26, ptr %36, align 1
  %37 = load i32, ptr %27, align 4
  %38 = shl i32 %37, 8
  %39 = lshr i32 %37, 24
  %40 = xor i32 %39, %24
  %41 = getelementptr %struct.bunzip_data, ptr %0, i32 0, i32 11, i32 %40
  %42 = load i32, ptr %41, align 4
  %43 = xor i32 %38, %42
  store i32 %43, ptr %27, align 4
  %44 = load i32, ptr %0, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %33
  %47 = add i32 %44, -1
  store i32 %47, ptr %0, align 4
  %48 = icmp eq i32 %35, 4096
  br i1 %48, label %28, label %33

49:                                               ; preds = %95, %33
  %50 = phi i32 [ -1, %95 ], [ %43, %33 ]
  %51 = phi i32 [ %97, %95 ], [ %25, %33 ]
  %52 = phi i32 [ %98, %95 ], [ %24, %33 ]
  %53 = phi i32 [ %89, %95 ], [ %35, %33 ]
  %54 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 2
  %55 = load i32, ptr %3, align 4
  br label %56

56:                                               ; preds = %72, %49
  %57 = phi i32 [ %59, %72 ], [ %55, %49 ]
  %58 = phi i32 [ %65, %72 ], [ %51, %49 ]
  %59 = add i32 %57, -1
  store i32 %59, ptr %3, align 4
  %60 = icmp eq i32 %57, 0
  br i1 %60, label %76, label %61

61:                                               ; preds = %56
  %62 = getelementptr i32, ptr %8, i32 %58
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 255
  %65 = ashr i32 %63, 8
  %66 = load i32, ptr %54, align 4
  %67 = add i32 %66, -1
  store i32 %67, ptr %54, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %61
  %70 = icmp eq i32 %64, %52
  br i1 %70, label %17, label %71

71:                                               ; preds = %69
  store i32 4, ptr %54, align 4
  br label %17

72:                                               ; preds = %61
  store i32 %64, ptr %0, align 4
  store i32 5, ptr %54, align 4
  %73 = icmp eq i32 %64, 0
  br i1 %73, label %56, label %74

74:                                               ; preds = %72
  %75 = add nsw i32 %64, -1
  store i32 %75, ptr %0, align 4
  br label %17

76:                                               ; preds = %56
  %77 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 14
  %78 = xor i32 %50, -1
  store i32 %78, ptr %77, align 4
  %79 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 13
  %80 = load i32, ptr %79, align 4
  %81 = tail call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 1)
  %82 = xor i32 %81, %78
  store i32 %82, ptr %79, align 4
  %83 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 12
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, %78
  br i1 %85, label %88, label %86

86:                                               ; preds = %76
  %87 = add i32 %84, 1
  store i32 %87, ptr %79, align 4
  br label %99

88:                                               ; preds = %76, %6
  %89 = phi i32 [ %53, %76 ], [ 0, %6 ]
  %90 = tail call fastcc i32 @get_next_block(ptr noundef %0) #11
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  store i32 %90, ptr %3, align 4
  %93 = icmp eq i32 %90, -1
  %94 = select i1 %93, i32 %89, i32 %90
  br label %99

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 14
  store i32 -1, ptr %96, align 4
  %97 = load i32, ptr %9, align 4
  %98 = load i32, ptr %10, align 4
  br label %49

99:                                               ; preds = %92, %86, %28, %2
  %100 = phi i32 [ 4096, %28 ], [ -1, %86 ], [ %94, %92 ], [ %4, %2 ]
  ret i32 %100
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync)
define internal i32 @nofill(ptr nocapture noundef readnone %0, i32 noundef %1) #6 section ".init.text" {
  ret i32 -1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @get_bits(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #0 section ".init.text" {
  %3 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = zext i8 %1 to i32
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  br label %67

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 7
  %12 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 19
  %14 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 5
  %15 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 8
  %16 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 10
  %17 = load i32, ptr %11, align 4
  %18 = load i32, ptr %12, align 4
  br label %19

19:                                               ; preds = %53, %10
  %20 = phi i32 [ %4, %10 ], [ %65, %53 ]
  %21 = phi i32 [ %18, %10 ], [ %40, %53 ]
  %22 = phi i32 [ %17, %10 ], [ %60, %53 ]
  %23 = phi i32 [ 0, %10 ], [ %57, %53 ]
  %24 = phi i8 [ %1, %10 ], [ %56, %53 ]
  %25 = icmp eq i32 %22, %21
  br i1 %25, label %26, label %37

26:                                               ; preds = %19
  %27 = load i32, ptr %13, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %78

29:                                               ; preds = %26
  %30 = load ptr, ptr %14, align 4
  %31 = load ptr, ptr %15, align 4
  %32 = tail call i32 %30(ptr noundef %31, i32 noundef 4096) #9
  store i32 %32, ptr %12, align 4
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 -3, ptr %13, align 4
  br label %78

35:                                               ; preds = %29
  %36 = load i32, ptr %3, align 4
  br label %37

37:                                               ; preds = %35, %19
  %38 = phi i32 [ 0, %35 ], [ %22, %19 ]
  %39 = phi i32 [ %36, %35 ], [ %20, %19 ]
  %40 = phi i32 [ %32, %35 ], [ %21, %19 ]
  %41 = icmp ugt i32 %39, 23
  %42 = load i32, ptr %16, align 4
  br i1 %41, label %45, label %43

43:                                               ; preds = %37
  %44 = zext i8 %24 to i32
  br label %53

45:                                               ; preds = %37
  %46 = shl nsw i32 -1, %39
  %47 = xor i32 %46, -1
  %48 = and i32 %42, %47
  %49 = trunc i32 %39 to i8
  %50 = sub i8 %24, %49
  %51 = zext i8 %50 to i32
  %52 = shl i32 %48, %51
  store i32 0, ptr %3, align 4
  br label %53

53:                                               ; preds = %45, %43
  %54 = phi i32 [ %44, %43 ], [ %51, %45 ]
  %55 = phi i32 [ %39, %43 ], [ 0, %45 ]
  %56 = phi i8 [ %24, %43 ], [ %50, %45 ]
  %57 = phi i32 [ %23, %43 ], [ %52, %45 ]
  %58 = shl i32 %42, 8
  %59 = load ptr, ptr %15, align 4
  %60 = add i32 %38, 1
  store i32 %60, ptr %11, align 4
  %61 = getelementptr i8, ptr %59, i32 %38
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = or i32 %58, %63
  store i32 %64, ptr %16, align 4
  %65 = add nuw nsw i32 %55, 8
  store i32 %65, ptr %3, align 4
  %66 = icmp ult i32 %65, %54
  br i1 %66, label %19, label %67

67:                                               ; preds = %53, %7
  %68 = phi i32 [ %9, %7 ], [ %64, %53 ]
  %69 = phi i32 [ 0, %7 ], [ %57, %53 ]
  %70 = phi i32 [ %4, %7 ], [ %65, %53 ]
  %71 = phi i32 [ %5, %7 ], [ %54, %53 ]
  %72 = sub i32 %70, %71
  store i32 %72, ptr %3, align 4
  %73 = lshr i32 %68, %72
  %74 = shl nsw i32 -1, %71
  %75 = xor i32 %74, -1
  %76 = and i32 %73, %75
  %77 = or i32 %76, %69
  br label %78

78:                                               ; preds = %67, %34, %26
  %79 = phi i32 [ 0, %34 ], [ %77, %67 ], [ 0, %26 ]
  ret i32 %79
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @get_next_block(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = alloca [258 x i8], align 1
  %3 = alloca [21 x i8], align 1
  %4 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 16
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 17
  %9 = getelementptr %struct.bunzip_data, ptr %0, i32 0, i32 20
  %10 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 21
  %11 = getelementptr %struct.bunzip_data, ptr %0, i32 0, i32 22
  %12 = tail call fastcc i32 @get_bits(ptr noundef %0, i8 noundef zeroext 24) #11
  %13 = tail call fastcc i32 @get_bits(ptr noundef %0, i8 noundef zeroext 24) #11
  %14 = tail call fastcc i32 @get_bits(ptr noundef %0, i8 noundef zeroext 32) #11
  %15 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 12
  store i32 %14, ptr %15, align 4
  %16 = icmp eq i32 %12, 1536581
  %17 = icmp eq i32 %13, 3690640
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %446, label %19

19:                                               ; preds = %1
  %20 = icmp ne i32 %12, 3227993
  %21 = icmp ne i32 %13, 2511705
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %446, label %23

23:                                               ; preds = %19
  %24 = tail call fastcc i32 @get_bits(ptr noundef %0, i8 noundef zeroext 1) #11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %446

26:                                               ; preds = %23
  %27 = tail call fastcc i32 @get_bits(ptr noundef %0, i8 noundef zeroext 24) #11
  %28 = icmp ult i32 %27, %7
  br i1 %28, label %29, label %446

29:                                               ; preds = %26
  %30 = tail call fastcc i32 @get_bits(ptr noundef %0, i8 noundef zeroext 16) #11
  br label %31

31:                                               ; preds = %57, %29
  %32 = phi i32 [ 0, %29 ], [ %58, %57 ]
  %33 = phi i32 [ 0, %29 ], [ %59, %57 ]
  %34 = sub nuw nsw i32 15, %33
  %35 = shl nuw nsw i32 1, %34
  %36 = and i32 %35, %30
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %57, label %38

38:                                               ; preds = %31
  %39 = tail call fastcc i32 @get_bits(ptr noundef %0, i8 noundef zeroext 16) #11
  %40 = shl i32 %33, 4
  br label %41

41:                                               ; preds = %53, %38
  %42 = phi i32 [ %32, %38 ], [ %54, %53 ]
  %43 = phi i32 [ 0, %38 ], [ %55, %53 ]
  %44 = sub nuw nsw i32 15, %43
  %45 = shl nuw nsw i32 1, %44
  %46 = and i32 %45, %39
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %41
  %49 = add nuw nsw i32 %43, %40
  %50 = trunc i32 %49 to i8
  %51 = add i32 %42, 1
  %52 = getelementptr i8, ptr %10, i32 %42
  store i8 %50, ptr %52, align 1
  br label %53

53:                                               ; preds = %48, %41
  %54 = phi i32 [ %51, %48 ], [ %42, %41 ]
  %55 = add nuw nsw i32 %43, 1
  %56 = icmp eq i32 %55, 16
  br i1 %56, label %57, label %41

57:                                               ; preds = %53, %31
  %58 = phi i32 [ %32, %31 ], [ %54, %53 ]
  %59 = add nuw nsw i32 %33, 1
  %60 = icmp eq i32 %59, 16
  br i1 %60, label %61, label %31

61:                                               ; preds = %57
  %62 = tail call fastcc i32 @get_bits(ptr noundef %0, i8 noundef zeroext 3) #11
  %63 = add i32 %62, -7
  %64 = icmp ult i32 %63, -5
  br i1 %64, label %446, label %65

65:                                               ; preds = %61
  %66 = tail call fastcc i32 @get_bits(ptr noundef %0, i8 noundef zeroext 15) #11
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %446, label %73

68:                                               ; preds = %73
  %69 = icmp sgt i32 %66, 0
  br i1 %69, label %70, label %100

70:                                               ; preds = %68
  %71 = call i32 @llvm.smax.i32(i32 %62, i32 0)
  %72 = getelementptr i8, ptr %0, i32 42365
  br label %79

73:                                               ; preds = %73, %65
  %74 = phi i32 [ %77, %73 ], [ 0, %65 ]
  %75 = trunc i32 %74 to i8
  %76 = getelementptr i8, ptr %11, i32 %74
  store i8 %75, ptr %76, align 1
  %77 = add nuw nsw i32 %74, 1
  %78 = icmp eq i32 %77, %62
  br i1 %78, label %68, label %73

79:                                               ; preds = %95, %70
  %80 = phi i32 [ %98, %95 ], [ 0, %70 ]
  %81 = tail call fastcc i32 @get_bits(ptr noundef %0, i8 noundef zeroext 1) #11
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i8, ptr %11, align 1
  br label %95

85:                                               ; preds = %88, %79
  %86 = phi i32 [ %89, %88 ], [ 0, %79 ]
  %87 = icmp eq i32 %86, %71
  br i1 %87, label %446, label %88

88:                                               ; preds = %85
  %89 = add nuw i32 %86, 1
  %90 = tail call fastcc i32 @get_bits(ptr noundef %0, i8 noundef zeroext 1) #11
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %85

92:                                               ; preds = %88
  %93 = getelementptr i8, ptr %11, i32 %89
  %94 = load i8, ptr %93, align 1
  call void @llvm.memmove.p0.p0.i32(ptr align 1 %72, ptr align 1 %11, i32 %89, i1 false)
  br label %95

95:                                               ; preds = %92, %83
  %96 = phi i8 [ %84, %83 ], [ %94, %92 ]
  %97 = getelementptr i8, ptr %8, i32 %80
  store i8 %96, ptr %97, align 1
  store i8 %96, ptr %11, align 1
  %98 = add nuw nsw i32 %80, 1
  %99 = icmp eq i32 %98, %66
  br i1 %99, label %100, label %79

100:                                              ; preds = %95, %68
  %101 = add i32 %58, 2
  %102 = icmp sgt i32 %101, 0
  %103 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 9
  %104 = icmp ult i32 %58, 2147483646
  %105 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 18
  %106 = call i32 @llvm.smax.i32(i32 %101, i32 2)
  br label %115

107:                                              ; preds = %241, %229
  %108 = phi i32 [ %230, %229 ], [ %242, %241 ]
  %109 = phi ptr [ %173, %229 ], [ %117, %241 ]
  %110 = phi ptr [ %172, %229 ], [ %118, %241 ]
  %111 = phi ptr [ %169, %229 ], [ %119, %241 ]
  %112 = add nuw nsw i32 %116, 1
  %113 = icmp eq i32 %112, %62
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(1024) %9, i8 0, i32 1024, i1 false)
  br label %251

115:                                              ; preds = %107, %100
  %116 = phi i32 [ 0, %100 ], [ %112, %107 ]
  %117 = phi ptr [ null, %100 ], [ %109, %107 ]
  %118 = phi ptr [ null, %100 ], [ %110, %107 ]
  %119 = phi ptr [ null, %100 ], [ %111, %107 ]
  call void @llvm.lifetime.start.p0(i64 258, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(258) %2, i8 0, i32 258, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %3, i8 0, i32 21, i1 false), !annotation !8
  %120 = tail call fastcc i32 @get_bits(ptr noundef %0, i8 noundef zeroext 5) #11
  br i1 %102, label %121, label %149

121:                                              ; preds = %115
  %122 = add i32 %120, -1
  br label %123

123:                                              ; preds = %132, %121
  %124 = phi i1 [ %139, %132 ], [ true, %121 ]
  %125 = phi i32 [ %129, %132 ], [ %122, %121 ]
  %126 = phi i32 [ %138, %132 ], [ 0, %121 ]
  %127 = icmp ugt i32 %125, 19
  br i1 %127, label %241, label %128

128:                                              ; preds = %141, %123
  %129 = phi i32 [ %145, %141 ], [ %125, %123 ]
  %130 = tail call fastcc i32 @get_bits(ptr noundef %0, i8 noundef zeroext 2) #11
  %131 = icmp slt i32 %130, 2
  br i1 %131, label %132, label %141

132:                                              ; preds = %128
  %133 = load i32, ptr %103, align 4
  %134 = add i32 %133, 1
  store i32 %134, ptr %103, align 4
  %135 = trunc i32 %129 to i8
  %136 = add nuw nsw i8 %135, 1
  %137 = getelementptr [258 x i8], ptr %2, i32 0, i32 %126
  store i8 %136, ptr %137, align 1
  %138 = add nuw nsw i32 %126, 1
  %139 = icmp slt i32 %138, %101
  %140 = icmp eq i32 %138, %101
  br i1 %140, label %147, label %123

141:                                              ; preds = %128
  %142 = add nuw i32 %130, 1
  %143 = and i32 %142, 2
  %144 = add i32 %129, -1
  %145 = add i32 %144, %143
  %146 = icmp ugt i32 %145, 19
  br i1 %146, label %241, label %128

147:                                              ; preds = %132
  %148 = load i8, ptr %2, align 1
  br label %149

149:                                              ; preds = %147, %115
  %150 = phi i8 [ 0, %115 ], [ %148, %147 ]
  %151 = phi i1 [ false, %115 ], [ %139, %147 ]
  %152 = zext i8 %150 to i32
  br i1 %104, label %153, label %166

153:                                              ; preds = %153, %149
  %154 = phi i32 [ %163, %153 ], [ %152, %149 ]
  %155 = phi i32 [ %162, %153 ], [ %152, %149 ]
  %156 = phi i32 [ %164, %153 ], [ 1, %149 ]
  %157 = getelementptr [258 x i8], ptr %2, i32 0, i32 %156
  %158 = load i8, ptr %157, align 1
  %159 = zext i8 %158 to i32
  %160 = icmp ult i32 %154, %159
  %161 = tail call i32 @llvm.smin.i32(i32 %155, i32 %159)
  %162 = select i1 %160, i32 %155, i32 %161
  %163 = tail call i32 @llvm.smax.i32(i32 %154, i32 %159)
  %164 = add nuw nsw i32 %156, 1
  %165 = icmp eq i32 %164, %106
  br i1 %165, label %166, label %153

166:                                              ; preds = %153, %149
  %167 = phi i32 [ %152, %149 ], [ %162, %153 ]
  %168 = phi i32 [ %152, %149 ], [ %163, %153 ]
  %169 = getelementptr %struct.group_data, ptr %105, i32 %116
  %170 = getelementptr %struct.group_data, ptr %105, i32 %116, i32 3
  store i32 %167, ptr %170, align 4
  %171 = getelementptr %struct.group_data, ptr %105, i32 %116, i32 4
  store i32 %168, ptr %171, align 4
  %172 = getelementptr %struct.group_data, ptr %105, i32 %116, i32 0, i32 20
  %173 = getelementptr i32, ptr %169, i32 -1
  %174 = icmp sgt i32 %167, %168
  br i1 %174, label %175, label %176

175:                                              ; preds = %195, %166
  br i1 %102, label %201, label %199

176:                                              ; preds = %195, %166
  %177 = phi i32 [ %196, %195 ], [ 0, %166 ]
  %178 = phi i32 [ %197, %195 ], [ %167, %166 ]
  %179 = getelementptr i32, ptr %173, i32 %178
  store i32 0, ptr %179, align 4
  %180 = getelementptr [21 x i8], ptr %3, i32 0, i32 %178
  store i8 0, ptr %180, align 1
  br i1 %102, label %181, label %195

181:                                              ; preds = %191, %176
  %182 = phi i32 [ %192, %191 ], [ %177, %176 ]
  %183 = phi i32 [ %193, %191 ], [ 0, %176 ]
  %184 = getelementptr [258 x i8], ptr %2, i32 0, i32 %183
  %185 = load i8, ptr %184, align 1
  %186 = zext i8 %185 to i32
  %187 = icmp eq i32 %178, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %181
  %189 = add i32 %182, 1
  %190 = getelementptr %struct.group_data, ptr %105, i32 %116, i32 2, i32 %182
  store i32 %183, ptr %190, align 4
  br label %191

191:                                              ; preds = %188, %181
  %192 = phi i32 [ %189, %188 ], [ %182, %181 ]
  %193 = add nuw nsw i32 %183, 1
  %194 = icmp eq i32 %193, %101
  br i1 %194, label %195, label %181

195:                                              ; preds = %191, %176
  %196 = phi i32 [ %177, %176 ], [ %192, %191 ]
  %197 = add i32 %178, 1
  %198 = icmp sgt i32 %197, %168
  br i1 %198, label %175, label %176

199:                                              ; preds = %201, %175
  %200 = icmp sgt i32 %168, %167
  br i1 %200, label %211, label %229

201:                                              ; preds = %201, %175
  %202 = phi i32 [ %209, %201 ], [ 0, %175 ]
  %203 = getelementptr [258 x i8], ptr %2, i32 0, i32 %202
  %204 = load i8, ptr %203, align 1
  %205 = zext i8 %204 to i32
  %206 = getelementptr [21 x i8], ptr %3, i32 0, i32 %205
  %207 = load i8, ptr %206, align 1
  %208 = add i8 %207, 1
  store i8 %208, ptr %206, align 1
  %209 = add nuw nsw i32 %202, 1
  %210 = icmp eq i32 %209, %101
  br i1 %210, label %199, label %201

211:                                              ; preds = %211, %199
  %212 = phi i32 [ %223, %211 ], [ 0, %199 ]
  %213 = phi i32 [ %224, %211 ], [ 0, %199 ]
  %214 = phi i32 [ %226, %211 ], [ %167, %199 ]
  %215 = getelementptr [21 x i8], ptr %3, i32 0, i32 %214
  %216 = load i8, ptr %215, align 1
  %217 = zext i8 %216 to i32
  %218 = add i32 %212, %217
  %219 = sub i32 %168, %214
  %220 = shl i32 %218, %219
  %221 = add i32 %220, -1
  %222 = getelementptr i32, ptr %173, i32 %214
  store i32 %221, ptr %222, align 4
  %223 = shl i32 %218, 1
  %224 = add i32 %213, %217
  %225 = sub i32 %223, %224
  %226 = add nsw i32 %214, 1
  %227 = getelementptr i32, ptr %172, i32 %226
  store i32 %225, ptr %227, align 4
  %228 = icmp eq i32 %226, %168
  br i1 %228, label %229, label %211

229:                                              ; preds = %211, %199
  %230 = phi i32 [ 0, %199 ], [ %224, %211 ]
  %231 = phi i32 [ 0, %199 ], [ %223, %211 ]
  %232 = add i32 %168, 1
  %233 = getelementptr i32, ptr %173, i32 %232
  store i32 2147483647, ptr %233, align 4
  %234 = getelementptr [21 x i8], ptr %3, i32 0, i32 %168
  %235 = load i8, ptr %234, align 1
  %236 = zext i8 %235 to i32
  %237 = add i32 %231, -1
  %238 = add i32 %237, %236
  %239 = getelementptr i32, ptr %173, i32 %168
  store i32 %238, ptr %239, align 4
  %240 = getelementptr i32, ptr %172, i32 %167
  store i32 0, ptr %240, align 4
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 258, ptr nonnull %2) #9
  br i1 %151, label %446, label %107

241:                                              ; preds = %141, %123
  %242 = phi i32 [ %145, %141 ], [ %125, %123 ]
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 258, ptr nonnull %2) #9
  br i1 %124, label %446, label %107

243:                                              ; preds = %251
  %244 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 18
  %245 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 9
  %246 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 7
  %247 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 6
  %248 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 10
  %249 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 8
  %250 = getelementptr i8, ptr %0, i32 42365
  br label %399

251:                                              ; preds = %251, %114
  %252 = phi i32 [ 0, %114 ], [ %255, %251 ]
  %253 = trunc i32 %252 to i8
  %254 = getelementptr i8, ptr %11, i32 %252
  store i8 %253, ptr %254, align 1
  %255 = add nuw nsw i32 %252, 1
  %256 = icmp eq i32 %255, 256
  br i1 %256, label %243, label %251

257:                                              ; preds = %399, %353
  %258 = phi ptr [ %278, %353 ], [ %400, %399 ]
  %259 = phi ptr [ %279, %353 ], [ %401, %399 ]
  %260 = phi ptr [ %280, %353 ], [ %402, %399 ]
  %261 = phi i32 [ %281, %353 ], [ %404, %399 ]
  %262 = phi i32 [ %357, %353 ], [ %405, %399 ]
  %263 = phi i32 [ %358, %353 ], [ 0, %399 ]
  %264 = phi i32 [ %282, %353 ], [ %406, %399 ]
  %265 = add i32 %264, -1
  %266 = icmp eq i32 %264, 0
  br i1 %266, label %267, label %277

267:                                              ; preds = %257
  %268 = icmp slt i32 %261, %66
  br i1 %268, label %269, label %446

269:                                              ; preds = %267
  %270 = add nsw i32 %261, 1
  %271 = getelementptr i8, ptr %8, i32 %261
  %272 = load i8, ptr %271, align 1
  %273 = zext i8 %272 to i32
  %274 = getelementptr %struct.group_data, ptr %244, i32 %273
  %275 = getelementptr %struct.group_data, ptr %244, i32 %273, i32 0, i32 20
  %276 = getelementptr i32, ptr %274, i32 -1
  br label %277

277:                                              ; preds = %269, %257
  %278 = phi ptr [ %258, %257 ], [ %274, %269 ]
  %279 = phi ptr [ %259, %257 ], [ %275, %269 ]
  %280 = phi ptr [ %260, %257 ], [ %276, %269 ]
  %281 = phi i32 [ %261, %257 ], [ %270, %269 ]
  %282 = phi i32 [ %265, %257 ], [ 49, %269 ]
  %283 = getelementptr inbounds %struct.group_data, ptr %278, i32 0, i32 4
  %284 = load i32, ptr %245, align 4
  %285 = load i32, ptr %283, align 4
  %286 = icmp ult i32 %284, %285
  br i1 %286, label %289, label %287

287:                                              ; preds = %277
  %288 = load i32, ptr %248, align 4
  br label %314

289:                                              ; preds = %277
  %290 = load i32, ptr %247, align 4
  %291 = load i32, ptr %246, align 4
  %292 = icmp eq i32 %291, %290
  br i1 %292, label %297, label %293

293:                                              ; preds = %289
  %294 = load ptr, ptr %249, align 4
  br label %301

295:                                              ; preds = %301
  %296 = icmp eq i32 %306, %290
  br i1 %296, label %297, label %301

297:                                              ; preds = %295, %289
  %298 = phi i32 [ %285, %289 ], [ %312, %295 ]
  %299 = trunc i32 %298 to i8
  %300 = tail call fastcc i32 @get_bits(ptr noundef %0, i8 noundef zeroext %299) #11
  br label %324

301:                                              ; preds = %295, %293
  %302 = phi i32 [ %311, %295 ], [ %284, %293 ]
  %303 = phi i32 [ %306, %295 ], [ %291, %293 ]
  %304 = load i32, ptr %248, align 4
  %305 = shl i32 %304, 8
  %306 = add i32 %303, 1
  store i32 %306, ptr %246, align 4
  %307 = getelementptr i8, ptr %294, i32 %303
  %308 = load i8, ptr %307, align 1
  %309 = zext i8 %308 to i32
  %310 = or i32 %305, %309
  store i32 %310, ptr %248, align 4
  %311 = add i32 %302, 8
  store i32 %311, ptr %245, align 4
  %312 = load i32, ptr %283, align 4
  %313 = icmp ult i32 %311, %312
  br i1 %313, label %295, label %314

314:                                              ; preds = %301, %287
  %315 = phi i32 [ %288, %287 ], [ %310, %301 ]
  %316 = phi i32 [ %284, %287 ], [ %311, %301 ]
  %317 = phi i32 [ %285, %287 ], [ %312, %301 ]
  %318 = sub i32 %316, %317
  store i32 %318, ptr %245, align 4
  %319 = lshr i32 %315, %318
  %320 = load i32, ptr %283, align 4
  %321 = shl nsw i32 -1, %320
  %322 = xor i32 %321, -1
  %323 = and i32 %319, %322
  br label %324

324:                                              ; preds = %314, %297
  %325 = phi i32 [ %300, %297 ], [ %323, %314 ]
  %326 = getelementptr inbounds %struct.group_data, ptr %278, i32 0, i32 3
  %327 = load i32, ptr %326, align 4
  br label %328

328:                                              ; preds = %328, %324
  %329 = phi i32 [ %327, %324 ], [ %333, %328 ]
  %330 = getelementptr i32, ptr %280, i32 %329
  %331 = load i32, ptr %330, align 4
  %332 = icmp sgt i32 %325, %331
  %333 = add i32 %329, 1
  br i1 %332, label %328, label %334

334:                                              ; preds = %328
  %335 = load i32, ptr %283, align 4
  %336 = sub i32 %335, %329
  %337 = load i32, ptr %245, align 4
  %338 = add i32 %336, %337
  store i32 %338, ptr %245, align 4
  %339 = load i32, ptr %283, align 4
  %340 = icmp slt i32 %339, %329
  br i1 %340, label %446, label %341

341:                                              ; preds = %334
  %342 = sub i32 %339, %329
  %343 = ashr i32 %325, %342
  %344 = getelementptr i32, ptr %279, i32 %329
  %345 = load i32, ptr %344, align 4
  %346 = sub i32 %343, %345
  %347 = icmp ugt i32 %346, 257
  br i1 %347, label %446, label %348

348:                                              ; preds = %341
  %349 = getelementptr %struct.group_data, ptr %278, i32 0, i32 2, i32 %346
  %350 = load i32, ptr %349, align 4
  %351 = icmp ult i32 %350, 2
  %352 = icmp eq i32 %263, 0
  br i1 %351, label %353, label %359

353:                                              ; preds = %348
  %354 = select i1 %352, i32 0, i32 %262
  %355 = select i1 %352, i32 1, i32 %263
  %356 = shl i32 %355, %350
  %357 = add i32 %356, %354
  %358 = shl i32 %355, 1
  br label %257

359:                                              ; preds = %348
  br i1 %352, label %380, label %360

360:                                              ; preds = %359
  %361 = add i32 %262, %403
  %362 = icmp slt i32 %361, %7
  br i1 %362, label %363, label %446

363:                                              ; preds = %360
  %364 = load i8, ptr %11, align 1
  %365 = zext i8 %364 to i32
  %366 = getelementptr i8, ptr %10, i32 %365
  %367 = load i8, ptr %366, align 1
  %368 = zext i8 %367 to i32
  %369 = getelementptr i32, ptr %9, i32 %368
  %370 = load i32, ptr %369, align 4
  %371 = add i32 %370, %262
  store i32 %371, ptr %369, align 4
  %372 = icmp eq i32 %262, 0
  br i1 %372, label %380, label %373

373:                                              ; preds = %373, %363
  %374 = phi i32 [ %376, %373 ], [ %262, %363 ]
  %375 = phi i32 [ %377, %373 ], [ %403, %363 ]
  %376 = add i32 %374, -1
  %377 = add i32 %375, 1
  %378 = getelementptr i32, ptr %5, i32 %375
  store i32 %368, ptr %378, align 4
  %379 = icmp eq i32 %376, 0
  br i1 %379, label %380, label %373

380:                                              ; preds = %373, %363, %359
  %381 = phi i32 [ %403, %359 ], [ %403, %363 ], [ %377, %373 ]
  %382 = phi i32 [ %262, %359 ], [ -1, %363 ], [ -1, %373 ]
  %383 = icmp sgt i32 %350, %58
  br i1 %383, label %409, label %384

384:                                              ; preds = %380
  %385 = icmp slt i32 %381, %7
  br i1 %385, label %386, label %446

386:                                              ; preds = %384
  %387 = add i32 %350, -1
  %388 = getelementptr i8, ptr %11, i32 %387
  %389 = load i8, ptr %388, align 1
  call void @llvm.memmove.p0.p0.i32(ptr align 1 %250, ptr align 1 %11, i32 %387, i1 false)
  store i8 %389, ptr %11, align 1
  %390 = zext i8 %389 to i32
  %391 = getelementptr i8, ptr %10, i32 %390
  %392 = load i8, ptr %391, align 1
  %393 = zext i8 %392 to i32
  %394 = getelementptr i32, ptr %9, i32 %393
  %395 = load i32, ptr %394, align 4
  %396 = add i32 %395, 1
  store i32 %396, ptr %394, align 4
  %397 = add nsw i32 %381, 1
  %398 = getelementptr i32, ptr %5, i32 %381
  store i32 %393, ptr %398, align 4
  br label %399

399:                                              ; preds = %386, %243
  %400 = phi ptr [ %111, %243 ], [ %278, %386 ]
  %401 = phi ptr [ %110, %243 ], [ %279, %386 ]
  %402 = phi ptr [ %109, %243 ], [ %280, %386 ]
  %403 = phi i32 [ 0, %243 ], [ %397, %386 ]
  %404 = phi i32 [ 0, %243 ], [ %281, %386 ]
  %405 = phi i32 [ %108, %243 ], [ %382, %386 ]
  %406 = phi i32 [ 0, %243 ], [ %282, %386 ]
  br label %257

407:                                              ; preds = %409
  %408 = icmp sgt i32 %381, 0
  br i1 %408, label %417, label %432

409:                                              ; preds = %409, %380
  %410 = phi i32 [ %414, %409 ], [ 0, %380 ]
  %411 = phi i32 [ %415, %409 ], [ 0, %380 ]
  %412 = getelementptr i32, ptr %9, i32 %411
  %413 = load i32, ptr %412, align 4
  %414 = add i32 %413, %410
  store i32 %410, ptr %412, align 4
  %415 = add nuw nsw i32 %411, 1
  %416 = icmp eq i32 %415, 256
  br i1 %416, label %407, label %409

417:                                              ; preds = %417, %407
  %418 = phi i32 [ %430, %417 ], [ 0, %407 ]
  %419 = getelementptr i32, ptr %5, i32 %418
  %420 = load i32, ptr %419, align 4
  %421 = shl i32 %418, 8
  %422 = and i32 %420, 255
  %423 = getelementptr i32, ptr %9, i32 %422
  %424 = load i32, ptr %423, align 4
  %425 = getelementptr i32, ptr %5, i32 %424
  %426 = load i32, ptr %425, align 4
  %427 = or i32 %426, %421
  store i32 %427, ptr %425, align 4
  %428 = load i32, ptr %423, align 4
  %429 = add i32 %428, 1
  store i32 %429, ptr %423, align 4
  %430 = add nuw nsw i32 %418, 1
  %431 = icmp eq i32 %430, %381
  br i1 %431, label %432, label %417

432:                                              ; preds = %417, %407
  %433 = icmp eq i32 %381, 0
  br i1 %433, label %444, label %434

434:                                              ; preds = %432
  %435 = icmp ult i32 %27, %381
  br i1 %435, label %436, label %446

436:                                              ; preds = %434
  %437 = getelementptr i32, ptr %5, i32 %27
  %438 = load i32, ptr %437, align 4
  %439 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 1
  %440 = and i32 %438, 255
  %441 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 4
  store i32 %440, ptr %441, align 4
  %442 = ashr i32 %438, 8
  store i32 %442, ptr %439, align 4
  %443 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 2
  store i32 5, ptr %443, align 4
  br label %444

444:                                              ; preds = %436, %432
  %445 = getelementptr inbounds %struct.bunzip_data, ptr %0, i32 0, i32 3
  store i32 %381, ptr %445, align 4
  br label %446

446:                                              ; preds = %444, %434, %384, %360, %341, %334, %267, %241, %229, %85, %65, %61, %26, %23, %19, %1
  %447 = phi i32 [ 0, %444 ], [ -1, %1 ], [ -2, %19 ], [ -7, %23 ], [ -5, %26 ], [ -5, %61 ], [ -5, %65 ], [ -5, %434 ], [ -5, %267 ], [ -5, %341 ], [ -5, %334 ], [ -5, %360 ], [ -5, %384 ], [ -5, %229 ], [ -5, %241 ], [ -5, %85 ]
  ret i32 %447
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold }
attributes #12 = { nounwind allocsize(0) }

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
!8 = !{!"auto-init"}
