; ModuleID = '/llk/IR/fs/ntfs/mst.c_pt.bc'
source_filename = "../fs/ntfs/mst.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.NTFS_RECORD = type { i32, i16, i16 }

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @post_read_mst_fixup(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.NTFS_RECORD, ptr %0, i32 0, i32 2
  %4 = load i16, ptr %3, align 1
  %5 = add i16 %4, -1
  %6 = and i32 %1, 511
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %50

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.NTFS_RECORD, ptr %0, i32 0, i32 1
  %10 = load i16, ptr %9, align 1
  %11 = zext i16 %10 to i32
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %50

14:                                               ; preds = %8
  %15 = zext i16 %5 to i32
  %16 = shl nuw nsw i32 %15, 1
  %17 = add nuw nsw i32 %16, %11
  %18 = icmp ule i32 %17, %1
  %19 = lshr i32 %1, 9
  %20 = icmp eq i32 %19, %15
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %50

22:                                               ; preds = %14
  %23 = lshr i32 %11, 1
  %24 = getelementptr i16, ptr %0, i32 %23
  %25 = load i16, ptr %24, align 2
  %26 = getelementptr i16, ptr %0, i32 255
  %27 = icmp eq i16 %5, 0
  br i1 %27, label %50, label %28

28:                                               ; preds = %22
  %29 = add i16 %4, -2
  br label %35

30:                                               ; preds = %35
  %31 = getelementptr i16, ptr %37, i32 256
  %32 = add i16 %36, -1
  %33 = icmp eq i16 %36, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br i1 %27, label %50, label %41

35:                                               ; preds = %30, %28
  %36 = phi i16 [ %32, %30 ], [ %29, %28 ]
  %37 = phi ptr [ %31, %30 ], [ %26, %28 ]
  %38 = load i16, ptr %37, align 2
  %39 = icmp eq i16 %38, %25
  br i1 %39, label %30, label %40

40:                                               ; preds = %35
  store i32 1145127234, ptr %0, align 1
  br label %50

41:                                               ; preds = %41, %34
  %42 = phi i16 [ %48, %41 ], [ %5, %34 ]
  %43 = phi ptr [ %47, %41 ], [ %26, %34 ]
  %44 = phi ptr [ %45, %41 ], [ %24, %34 ]
  %45 = getelementptr i16, ptr %44, i32 1
  %46 = load i16, ptr %45, align 2
  store i16 %46, ptr %43, align 2
  %47 = getelementptr i16, ptr %43, i32 256
  %48 = add i16 %42, -1
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %41

50:                                               ; preds = %41, %40, %34, %22, %14, %8, %2
  %51 = phi i32 [ -22, %40 ], [ 0, %14 ], [ 0, %8 ], [ 0, %2 ], [ 0, %34 ], [ 0, %22 ], [ 0, %41 ]
  ret i32 %51
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pre_write_mst_fixup(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %44, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 1
  switch i32 %5, label %6 [
    i32 1145127234, label %44
    i32 1162628936, label %44
  ]

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.NTFS_RECORD, ptr %0, i32 0, i32 2
  %8 = load i16, ptr %7, align 1
  %9 = add i16 %8, -1
  %10 = and i32 %1, 511
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %44

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.NTFS_RECORD, ptr %0, i32 0, i32 1
  %14 = load i16, ptr %13, align 1
  %15 = zext i16 %14 to i32
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %12
  %19 = zext i16 %9 to i32
  %20 = shl nuw nsw i32 %19, 1
  %21 = add nuw nsw i32 %20, %15
  %22 = icmp ule i32 %21, %1
  %23 = lshr i32 %1, 9
  %24 = icmp eq i32 %23, %19
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %44

26:                                               ; preds = %18
  %27 = getelementptr i8, ptr %0, i32 %15
  %28 = load i16, ptr %27, align 2
  %29 = add i16 %28, 1
  %30 = icmp ult i16 %28, -2
  %31 = select i1 %30, i16 %29, i16 1
  store i16 %31, ptr %27, align 2
  %32 = icmp eq i16 %9, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %26
  %34 = getelementptr i16, ptr %0, i32 255
  br label %35

35:                                               ; preds = %35, %33
  %36 = phi i16 [ %39, %35 ], [ %9, %33 ]
  %37 = phi ptr [ %42, %35 ], [ %34, %33 ]
  %38 = phi ptr [ %41, %35 ], [ %27, %33 ]
  %39 = add i16 %36, -1
  %40 = load i16, ptr %37, align 2
  %41 = getelementptr i16, ptr %38, i32 1
  store i16 %40, ptr %41, align 2
  store i16 %31, ptr %37, align 2
  %42 = getelementptr i16, ptr %37, i32 256
  %43 = icmp eq i16 %39, 0
  br i1 %43, label %44, label %35

44:                                               ; preds = %35, %26, %18, %12, %6, %4, %4, %2
  %45 = phi i32 [ -22, %4 ], [ -22, %2 ], [ -22, %18 ], [ -22, %12 ], [ -22, %6 ], [ -22, %4 ], [ 0, %26 ], [ 0, %35 ]
  ret i32 %45
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @post_write_mst_fixup(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.NTFS_RECORD, ptr %0, i32 0, i32 2
  %3 = load i16, ptr %2, align 1
  %4 = add i16 %3, -1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %1
  %7 = getelementptr i16, ptr %0, i32 255
  %8 = getelementptr inbounds %struct.NTFS_RECORD, ptr %0, i32 0, i32 1
  %9 = load i16, ptr %8, align 1
  %10 = lshr i16 %9, 1
  %11 = zext i16 %10 to i32
  %12 = getelementptr i16, ptr %0, i32 %11
  br label %13

13:                                               ; preds = %13, %6
  %14 = phi i16 [ %20, %13 ], [ %4, %6 ]
  %15 = phi ptr [ %17, %13 ], [ %12, %6 ]
  %16 = phi ptr [ %19, %13 ], [ %7, %6 ]
  %17 = getelementptr i16, ptr %15, i32 1
  %18 = load i16, ptr %17, align 2
  store i16 %18, ptr %16, align 2
  %19 = getelementptr i16, ptr %16, i32 256
  %20 = add i16 %14, -1
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %13

22:                                               ; preds = %13, %1
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }

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
