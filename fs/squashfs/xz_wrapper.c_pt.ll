; ModuleID = '/llk/IR/fs/squashfs/xz_wrapper.c_pt.bc'
source_filename = "../fs/squashfs/xz_wrapper.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.squashfs_decompressor = type { ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.squashfs_sb_info = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i64, i64, i32, i16, i64, i32, i32, i32, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.squashfs_xz = type { ptr, %struct.xz_buf }
%struct.xz_buf = type { ptr, i32, i32, ptr, i32, i32 }
%struct.squashfs_page_actor = type { ptr, i32, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, %union.anon.68, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%union.anon.68 = type {}
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.4, %union.anon.34, %struct.atomic_t }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.34 = type { %struct.atomic_t }

@.str = private unnamed_addr constant [3 x i8] c"xz\00", align 1
@squashfs_xz_comp_ops = dso_local local_unnamed_addr constant %struct.squashfs_decompressor { ptr @squashfs_xz_init, ptr @squashfs_xz_comp_opts, ptr @squashfs_xz_free, ptr @squashfs_xz_uncompress, i32 4, ptr @.str, i32 1 }, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"\013SQUASHFS error: Failed to initialise xz decompressor\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@bvec_virt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/bvec.h\00", align 1
@movable_zone = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @squashfs_xz_init(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 28) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 4
  %8 = tail call ptr @xz_dec_init(i32 noundef 1, i32 noundef %7) #6
  store ptr %8, ptr %4, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  tail call void @kfree(ptr noundef nonnull %4) #6
  br label %11

11:                                               ; preds = %10, %2
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #7
  br label %13

13:                                               ; preds = %11, %6
  %14 = phi ptr [ inttoptr (i32 -12 to ptr), %11 ], [ %4, %6 ]
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @squashfs_xz_comp_opts(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 4) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %1, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %7
  %10 = icmp ult i32 %2, 8
  br i1 %10, label %28, label %11

11:                                               ; preds = %9
  %12 = load i32, ptr %1, align 4
  store i32 %12, ptr %5, align 8
  %13 = tail call i32 @llvm.cttz.i32(i32 %12, i1 true), !range !8
  %14 = add nuw nsw i32 %13, 1
  %15 = icmp eq i32 %12, 0
  %16 = select i1 %15, i32 0, i32 %14
  %17 = add nsw i32 %16, -1
  %18 = shl nuw i32 1, %17
  %19 = icmp eq i32 %12, %18
  br i1 %19, label %29, label %20

20:                                               ; preds = %11
  %21 = shl nuw i32 1, %16
  %22 = add i32 %18, %21
  %23 = icmp eq i32 %12, %22
  br i1 %23, label %29, label %28

24:                                               ; preds = %7
  %25 = getelementptr inbounds %struct.squashfs_sb_info, ptr %0, i32 0, i32 17
  %26 = load i32, ptr %25, align 8
  %27 = tail call i32 @llvm.smax.i32(i32 %26, i32 8192)
  store i32 %27, ptr %5, align 8
  br label %29

28:                                               ; preds = %20, %9
  tail call void @kfree(ptr noundef nonnull %5) #6
  br label %29

29:                                               ; preds = %28, %24, %20, %11, %3
  %30 = phi ptr [ %5, %11 ], [ %5, %20 ], [ %5, %24 ], [ inttoptr (i32 -5 to ptr), %28 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @squashfs_xz_free(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  tail call void @xz_dec_end(ptr noundef %4) #6
  tail call void @kfree(ptr noundef nonnull %0) #6
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @squashfs_xz_uncompress(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef %5) #0 {
  %7 = load ptr, ptr %1, align 4
  tail call void @xz_dec_reset(ptr noundef %7) #6
  %8 = getelementptr inbounds %struct.squashfs_xz, ptr %1, i32 0, i32 1
  %9 = getelementptr inbounds %struct.squashfs_xz, ptr %1, i32 0, i32 1, i32 1
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.squashfs_xz, ptr %1, i32 0, i32 1, i32 2
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.squashfs_xz, ptr %1, i32 0, i32 1, i32 4
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.squashfs_xz, ptr %1, i32 0, i32 1, i32 5
  store i32 4096, ptr %12, align 4
  %13 = getelementptr inbounds %struct.squashfs_page_actor, ptr %5, i32 0, i32 3
  store i32 1, ptr %13, align 4
  %14 = load ptr, ptr %5, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.squashfs_xz, ptr %1, i32 0, i32 1, i32 3
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.bio, ptr %2, i32 0, i32 13
  %18 = getelementptr inbounds %struct.bio, ptr %2, i32 0, i32 16
  %19 = getelementptr inbounds %struct.squashfs_page_actor, ptr %5, i32 0, i32 1
  br label %20

20:                                               ; preds = %103, %6
  %21 = phi ptr [ null, %6 ], [ %82, %103 ]
  %22 = phi i32 [ 0, %6 ], [ %83, %103 ]
  %23 = phi i32 [ 0, %6 ], [ %84, %103 ]
  %24 = phi i32 [ 0, %6 ], [ %104, %103 ]
  %25 = phi i32 [ %4, %6 ], [ %85, %103 ]
  %26 = phi i32 [ %3, %6 ], [ %86, %103 ]
  %27 = load i32, ptr %9, align 4
  %28 = load i32, ptr %10, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %81

30:                                               ; preds = %20
  %31 = load i16, ptr %17, align 4
  %32 = zext i16 %31 to i32
  %33 = icmp slt i32 %22, %32
  br i1 %33, label %34, label %110

34:                                               ; preds = %30
  %35 = load ptr, ptr %18, align 4
  %36 = icmp eq i32 %23, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = getelementptr %struct.page, ptr %21, i32 1
  br label %47

39:                                               ; preds = %34
  %40 = getelementptr %struct.bio_vec, ptr %35, i32 %22
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr %struct.bio_vec, ptr %35, i32 %22, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = lshr i32 %43, 12
  %45 = getelementptr %struct.page, ptr %41, i32 %44
  %46 = and i32 %43, 4095
  br label %47

47:                                               ; preds = %39, %37
  %48 = phi ptr [ %45, %39 ], [ %38, %37 ]
  %49 = phi i32 [ %46, %39 ], [ 0, %37 ]
  %50 = sub nuw nsw i32 4096, %49
  %51 = getelementptr %struct.bio_vec, ptr %35, i32 %22, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = sub i32 %52, %23
  %54 = tail call i32 @llvm.umin.i32(i32 %50, i32 %53) #6
  %55 = add i32 %54, %23
  %56 = icmp eq i32 %55, %52
  %57 = zext i1 %56 to i32
  %58 = add nsw i32 %22, %57
  %59 = select i1 %56, i32 0, i32 %55
  %60 = sub i32 %54, %26
  %61 = tail call i32 @llvm.smin.i32(i32 %25, i32 %60)
  %62 = load i32, ptr %48, align 4
  %63 = lshr i32 %62, 30
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %70, label %65

65:                                               ; preds = %47
  %66 = icmp eq i32 %63, 3
  %67 = load i32, ptr @movable_zone, align 4
  %68 = icmp eq i32 %67, 2
  %69 = select i1 %66, i1 %68, i1 false
  br label %70

70:                                               ; preds = %65, %47
  %71 = phi i1 [ true, %47 ], [ %69, %65 ]
  %72 = load i1, ptr @bvec_virt.__already_done, align 1
  %73 = xor i1 %72, true
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %75, label %76, !prof !9

75:                                               ; preds = %70
  store i1 true, ptr @bvec_virt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 240, i32 noundef 9, ptr noundef null) #6
  br label %76

76:                                               ; preds = %75, %70
  %77 = tail call ptr @page_address(ptr noundef %48) #6
  %78 = getelementptr i8, ptr %77, i32 %49
  %79 = sub i32 %25, %61
  %80 = getelementptr i8, ptr %78, i32 %26
  store ptr %80, ptr %8, align 4
  store i32 %61, ptr %10, align 4
  store i32 0, ptr %9, align 4
  br label %81

81:                                               ; preds = %76, %20
  %82 = phi ptr [ %21, %20 ], [ %48, %76 ]
  %83 = phi i32 [ %22, %20 ], [ %58, %76 ]
  %84 = phi i32 [ %23, %20 ], [ %59, %76 ]
  %85 = phi i32 [ %25, %20 ], [ %79, %76 ]
  %86 = phi i32 [ %26, %20 ], [ 0, %76 ]
  %87 = load i32, ptr %11, align 4
  %88 = load i32, ptr %12, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %81
  %91 = load i32, ptr %13, align 4
  %92 = load i32, ptr %19, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store ptr null, ptr %16, align 4
  br label %103

95:                                               ; preds = %90
  %96 = load ptr, ptr %5, align 4
  %97 = add i32 %91, 1
  store i32 %97, ptr %13, align 4
  %98 = getelementptr ptr, ptr %96, i32 %91
  %99 = load ptr, ptr %98, align 4
  store ptr %99, ptr %16, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %95
  store i32 0, ptr %11, align 4
  %102 = add i32 %24, 4096
  br label %103

103:                                              ; preds = %101, %95, %94, %81
  %104 = phi i32 [ %102, %101 ], [ %24, %95 ], [ %24, %81 ], [ %24, %94 ]
  %105 = load ptr, ptr %1, align 4
  %106 = tail call i32 @xz_dec_run(ptr noundef %105, ptr noundef %8) #6
  switch i32 %106, label %110 [
    i32 1, label %107
    i32 0, label %20
  ]

107:                                              ; preds = %103
  %108 = load i32, ptr %11, align 4
  %109 = add i32 %108, %104
  br label %110

110:                                              ; preds = %107, %103, %30
  %111 = phi i32 [ %109, %107 ], [ -5, %30 ], [ -5, %103 ]
  ret i32 %111
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xz_dec_init(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xz_dec_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xz_dec_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xz_dec_run(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind allocsize(2) }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!8 = !{i32 0, i32 33}
!9 = !{!"branch_weights", i32 1, i32 2000}
