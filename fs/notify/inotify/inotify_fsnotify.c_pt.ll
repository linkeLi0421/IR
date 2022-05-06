; ModuleID = '/llk/IR/fs/notify/inotify/inotify_fsnotify.c_pt.bc'
source_filename = "../fs/notify/inotify/inotify_fsnotify.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fsnotify_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fsnotify_mark = type { i32, %struct.refcount_struct, ptr, %struct.list_head, %struct.spinlock, %struct.hlist_node, ptr, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.anon = type { i32, i32 }
%struct.fsnotify_group = type { ptr, %struct.refcount_struct, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, i32, i32, i32, i8, %struct.mutex, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, %union.anon.65 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.65 = type { %struct.inotify_group_private_data }
%struct.inotify_group_private_data = type { %struct.spinlock, %struct.idr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.inotify_event_info = type { %struct.fsnotify_event, i32, i32, i32, i32, [0 x i8] }
%struct.fsnotify_event = type { %struct.list_head }
%struct.inotify_inode_mark = type { %struct.fsnotify_mark, i32 }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }

@inotify_fsnotify_ops = dso_local local_unnamed_addr constant %struct.fsnotify_ops { ptr null, ptr @inotify_handle_inode_event, ptr @inotify_free_group_priv, ptr @inotify_freeing_mark, ptr @inotify_free_event, ptr @inotify_free_mark }, align 4
@idr_callback.warned = internal unnamed_addr global i1 false, align 1
@.str = private unnamed_addr constant [37 x i8] c"fs/notify/inotify/inotify_fsnotify.c\00", align 1
@.str.1 = private unnamed_addr constant [94 x i8] c"inotify closing but id=%d for fsn_mark=%p in group=%p still in idr.  Probably leaking memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"\014fsn_mark->group=%p wd=%d\0A\00", align 1
@inotify_inode_mark_cachep = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inotify_handle_inode_event(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef readonly %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %4, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 25
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi i32 [ %12, %10 ], [ 0, %6 ]
  %16 = phi i32 [ %13, %10 ], [ 24, %6 ]
  %17 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %16, i32 noundef 4213952) #7
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23, !prof !8

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.fsnotify_group, ptr %8, i32 0, i32 13
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @fsnotify_insert_event(ptr noundef %8, ptr noundef %21, ptr noundef null, ptr noundef null) #8
  br label %49

23:                                               ; preds = %14
  %24 = and i32 %1, 3072
  %25 = icmp eq i32 %24, 0
  %26 = and i32 %1, -1073741825
  %27 = select i1 %25, i32 %1, i32 %26
  store volatile ptr %17, ptr %17, align 64
  %28 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %17, ptr %28, align 4
  %29 = getelementptr inbounds %struct.inotify_event_info, ptr %17, i32 0, i32 1
  store i32 %27, ptr %29, align 8
  %30 = getelementptr inbounds %struct.inotify_inode_mark, ptr %0, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.inotify_event_info, ptr %17, i32 0, i32 2
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.inotify_event_info, ptr %17, i32 0, i32 3
  store i32 %5, ptr %33, align 16
  %34 = getelementptr inbounds %struct.inotify_event_info, ptr %17, i32 0, i32 4
  store i32 %15, ptr %34, align 4
  %35 = icmp eq i32 %15, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.inotify_event_info, ptr %17, i32 0, i32 5
  %38 = getelementptr inbounds %struct.qstr, ptr %4, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = tail call ptr @strcpy(ptr noundef %37, ptr noundef %39)
  br label %41

41:                                               ; preds = %36, %23
  %42 = tail call i32 @fsnotify_insert_event(ptr noundef %8, ptr noundef nonnull %17, ptr noundef nonnull @inotify_merge, ptr noundef null) #8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  tail call void @fsnotify_destroy_event(ptr noundef %8, ptr noundef nonnull %17) #8
  br label %45

45:                                               ; preds = %44, %41
  %46 = load i32, ptr %0, align 4
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void @fsnotify_destroy_mark(ptr noundef %0, ptr noundef %8) #8
  br label %49

49:                                               ; preds = %48, %45, %19
  %50 = phi i32 [ -12, %19 ], [ 0, %48 ], [ 0, %45 ]
  ret i32 %50
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @inotify_merge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.inotify_event_info, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 32768
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.inotify_event_info, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %6, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.inotify_event_info, ptr %4, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.inotify_event_info, ptr %1, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.inotify_event_info, ptr %4, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.inotify_event_info, ptr %1, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = icmp eq i32 %21, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.inotify_event_info, ptr %4, i32 0, i32 5
  %29 = getelementptr inbounds %struct.inotify_event_info, ptr %1, i32 0, i32 5
  %30 = tail call i32 @strcmp(ptr noundef %28, ptr noundef %29) #8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27, %19, %13, %9
  br label %33

33:                                               ; preds = %32, %27, %25, %2
  %34 = phi i32 [ 0, %32 ], [ 0, %2 ], [ 1, %27 ], [ 1, %25 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_destroy_event(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_destroy_mark(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @inotify_free_group_priv(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 15, i32 0, i32 1
  %3 = tail call i32 @idr_for_each(ptr noundef %2, ptr noundef nonnull @idr_callback, ptr noundef %0) #8
  tail call void @idr_destroy(ptr noundef %2) #8
  %4 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 15, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @dec_ucount(ptr noundef nonnull %5, i32 noundef 8) #8
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @inotify_freeing_mark(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @inotify_ignored_and_remove_idr(ptr noundef %0, ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @inotify_free_event(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @inotify_free_mark(ptr noundef %0) #0 {
  %2 = load ptr, ptr @inotify_inode_mark_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify_insert_event(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @idr_callback(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load i1, ptr @idr_callback.warned, align 1
  br i1 %4, label %13, label %5

5:                                                ; preds = %3
  store i1 true, ptr @idr_callback.warned, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 157, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %0, ptr noundef %1, ptr noundef %2) #8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.fsnotify_mark, ptr %1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.inotify_inode_mark, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %9, i32 noundef %11) #9
  br label %13

13:                                               ; preds = %7, %5, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dec_ucount(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inotify_ignored_and_remove_idr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
