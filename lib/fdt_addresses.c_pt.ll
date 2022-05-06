; ModuleID = '/llk/IR/lib/fdt_addresses.c_pt.bc'
source_filename = "../lib/fdt_addresses.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

@.str = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fdt_address_cells(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = call ptr @fdt_getprop(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %3) #5
  %5 = icmp eq ptr %4, null
  %6 = load i32, ptr %3, align 4
  br i1 %5, label %14, label %7

7:                                                ; preds = %2
  %8 = icmp eq i32 %6, 4
  br i1 %8, label %9, label %13

9:                                                ; preds = %7
  %10 = load i32, ptr %4, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %10) #5
  %12 = icmp ugt i32 %11, 4
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  br label %17

14:                                               ; preds = %9, %2
  %15 = phi i32 [ %11, %9 ], [ %6, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  switch i32 %15, label %17 [
    i32 0, label %19
    i32 -1, label %16
  ]

16:                                               ; preds = %14
  br label %19

17:                                               ; preds = %14, %13
  %18 = phi i32 [ -14, %13 ], [ %15, %14 ]
  br label %19

19:                                               ; preds = %17, %16, %14
  %20 = phi i32 [ 2, %16 ], [ %18, %17 ], [ -14, %14 ]
  ret i32 %20
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fdt_size_cells(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = call ptr @fdt_getprop(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %3) #5
  %5 = icmp eq ptr %4, null
  %6 = load i32, ptr %3, align 4
  br i1 %5, label %16, label %7

7:                                                ; preds = %2
  %8 = icmp eq i32 %6, 4
  br i1 %8, label %9, label %14

9:                                                ; preds = %7
  %10 = load i32, ptr %4, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %10) #5
  %12 = icmp ugt i32 %11, 4
  %13 = select i1 %12, i32 -14, i32 %11
  br label %14

14:                                               ; preds = %9, %7
  %15 = phi i32 [ -14, %7 ], [ %13, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  br label %19

16:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  %17 = icmp eq i32 %6, -1
  %18 = select i1 %17, i32 1, i32 %6
  br label %19

19:                                               ; preds = %16, %14
  %20 = phi i32 [ %15, %14 ], [ %18, %16 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fdt_appendprop_addrrange(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %9, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #5
  store i32 0, ptr %8, align 4, !annotation !8
  %10 = call ptr @fdt_getprop(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %8) #5
  %11 = icmp eq ptr %10, null
  %12 = load i32, ptr %8, align 4
  br i1 %11, label %20, label %13

13:                                               ; preds = %6
  %14 = icmp eq i32 %12, 4
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = load i32, ptr %10, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16) #5
  %18 = icmp ugt i32 %17, 4
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #5
  br label %117

20:                                               ; preds = %15, %6
  %21 = phi i32 [ %17, %15 ], [ %12, %6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #5
  switch i32 %21, label %22 [
    i32 0, label %117
    i32 -1, label %24
  ]

22:                                               ; preds = %20
  %23 = icmp slt i32 %21, 0
  br i1 %23, label %117, label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %22 ], [ 2, %20 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #5
  store i32 0, ptr %7, align 4, !annotation !8
  %26 = call ptr @fdt_getprop(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %7) #5
  %27 = icmp eq ptr %26, null
  %28 = load i32, ptr %7, align 4
  br i1 %27, label %38, label %29

29:                                               ; preds = %24
  %30 = icmp eq i32 %28, 4
  br i1 %30, label %31, label %36

31:                                               ; preds = %29
  %32 = load i32, ptr %26, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %32) #5
  %34 = icmp ugt i32 %33, 4
  %35 = select i1 %34, i32 -14, i32 %33
  br label %36

36:                                               ; preds = %31, %29
  %37 = phi i32 [ -14, %29 ], [ %35, %31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #5
  br label %40

38:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #5
  %39 = icmp eq i32 %28, -1
  br i1 %39, label %43, label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %28, %38 ]
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %117, label %43

43:                                               ; preds = %40, %38
  %44 = phi i32 [ %41, %40 ], [ 1, %38 ]
  switch i32 %25, label %117 [
    i32 1, label %45
    i32 2, label %53
  ]

45:                                               ; preds = %43
  %46 = icmp ugt i64 %4, 4294967295
  %47 = sub i64 0, %4
  %48 = icmp ult i64 %47, %5
  %49 = or i1 %46, %48
  br i1 %49, label %117, label %50

50:                                               ; preds = %45
  %51 = lshr i64 %4, 24
  %52 = trunc i64 %51 to i8
  store i8 %52, ptr %9, align 1
  br label %68

53:                                               ; preds = %43
  %54 = lshr i64 %4, 56
  %55 = trunc i64 %54 to i8
  store i8 %55, ptr %9, align 1
  %56 = lshr i64 %4, 48
  %57 = trunc i64 %56 to i8
  %58 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 %57, ptr %58, align 1
  %59 = lshr i64 %4, 40
  %60 = trunc i64 %59 to i8
  %61 = getelementptr inbounds i8, ptr %9, i32 2
  store i8 %60, ptr %61, align 1
  %62 = lshr i64 %4, 32
  %63 = trunc i64 %62 to i8
  %64 = getelementptr inbounds i8, ptr %9, i32 3
  store i8 %63, ptr %64, align 1
  %65 = lshr i64 %4, 24
  %66 = trunc i64 %65 to i8
  %67 = getelementptr inbounds i8, ptr %9, i32 4
  store i8 %66, ptr %67, align 1
  br label %68

68:                                               ; preds = %53, %50
  %69 = phi i32 [ 5, %53 ], [ 1, %50 ]
  %70 = phi i32 [ 6, %53 ], [ 2, %50 ]
  %71 = phi i32 [ 7, %53 ], [ 3, %50 ]
  %72 = lshr i64 %4, 16
  %73 = trunc i64 %72 to i8
  %74 = getelementptr inbounds i8, ptr %9, i32 %69
  store i8 %73, ptr %74, align 1
  %75 = lshr i64 %4, 8
  %76 = trunc i64 %75 to i8
  %77 = getelementptr inbounds i8, ptr %9, i32 %70
  store i8 %76, ptr %77, align 1
  %78 = trunc i64 %4 to i8
  %79 = getelementptr inbounds i8, ptr %9, i32 %71
  store i8 %78, ptr %79, align 1
  %80 = shl nuw nsw i32 %25, 2
  %81 = getelementptr i8, ptr %9, i32 %80
  switch i32 %44, label %117 [
    i32 1, label %82
    i32 2, label %87
  ]

82:                                               ; preds = %68
  %83 = icmp ugt i64 %5, 4294967295
  br i1 %83, label %117, label %84

84:                                               ; preds = %82
  %85 = lshr i64 %5, 24
  %86 = trunc i64 %85 to i8
  store i8 %86, ptr %81, align 1
  br label %102

87:                                               ; preds = %68
  %88 = lshr i64 %5, 56
  %89 = trunc i64 %88 to i8
  store i8 %89, ptr %81, align 1
  %90 = lshr i64 %5, 48
  %91 = trunc i64 %90 to i8
  %92 = getelementptr i8, ptr %81, i32 1
  store i8 %91, ptr %92, align 1
  %93 = lshr i64 %5, 40
  %94 = trunc i64 %93 to i8
  %95 = getelementptr i8, ptr %81, i32 2
  store i8 %94, ptr %95, align 1
  %96 = lshr i64 %5, 32
  %97 = trunc i64 %96 to i8
  %98 = getelementptr i8, ptr %81, i32 3
  store i8 %97, ptr %98, align 1
  %99 = lshr i64 %5, 24
  %100 = trunc i64 %99 to i8
  %101 = getelementptr i8, ptr %81, i32 4
  store i8 %100, ptr %101, align 1
  br label %102

102:                                              ; preds = %87, %84
  %103 = phi i32 [ 5, %87 ], [ 1, %84 ]
  %104 = phi i32 [ 6, %87 ], [ 2, %84 ]
  %105 = phi i32 [ 7, %87 ], [ 3, %84 ]
  %106 = lshr i64 %5, 16
  %107 = trunc i64 %106 to i8
  %108 = getelementptr i8, ptr %81, i32 %103
  store i8 %107, ptr %108, align 1
  %109 = lshr i64 %5, 8
  %110 = trunc i64 %109 to i8
  %111 = getelementptr i8, ptr %81, i32 %104
  store i8 %110, ptr %111, align 1
  %112 = trunc i64 %5 to i8
  %113 = getelementptr i8, ptr %81, i32 %105
  store i8 %112, ptr %113, align 1
  %114 = add nuw nsw i32 %44, %25
  %115 = shl nuw nsw i32 %114, 2
  %116 = call i32 @fdt_appendprop(ptr noundef %0, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %9, i32 noundef %115) #5
  br label %117

117:                                              ; preds = %102, %82, %68, %45, %43, %40, %22, %20, %19
  %118 = phi i32 [ %116, %102 ], [ %21, %22 ], [ %41, %40 ], [ -15, %45 ], [ -14, %43 ], [ -15, %82 ], [ -14, %68 ], [ -14, %19 ], [ -14, %20 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #5
  ret i32 %118
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_appendprop(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fdt_getprop(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

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
