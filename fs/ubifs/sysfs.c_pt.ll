; ModuleID = '/llk/IR/fs/ubifs/sysfs.c_pt.bc'
source_filename = "../fs/ubifs/sysfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.ubifs_attr = type { %struct.attribute, i32 }
%struct.attribute = type { ptr, i16 }
%struct.ubifs_info = type { ptr, ptr, i32, i64, i64, %struct.spinlock, i32, i32, [16 x i8], i32, i32, i32, %struct.mutex, i32, i64, %struct.rb_root, i64, %struct.spinlock, i32, ptr, i64, i64, %struct.list_head, i32, %struct.rw_semaphore, i32, %struct.spinlock, %struct.wait_queue_head, %struct.kobject, %struct.completion, i16, %struct.mutex, %struct.ubifs_zbranch, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.rb_root, ptr, ptr, i32, i32, %struct.mutex, %struct.bu_info, %struct.mutex, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, [14 x %struct.ubifs_node_range], ptr, %struct.ubi_device_info, %struct.ubi_volume_info, %struct.rb_root, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, [24 x i8], i32, i32, i32, ptr, %struct.list_head, i32, i32, i32, %struct.list_head, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [3 x %struct.ubifs_lpt_heap], %struct.ubifs_lpt_heap, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i64, i64, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, ptr, ptr, i32, ptr, i8, %struct.list_head, %struct.list_head, i64, %struct.list_head, ptr, %struct.rb_root, %struct.ubifs_mount_opts, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ubifs_zbranch = type { %union.ubifs_key, %union.anon.72, i32, i32, i32, [0 x i8] }
%union.ubifs_key = type { [1 x i64] }
%union.anon.72 = type { ptr }
%struct.bu_info = type { %union.ubifs_key, [32 x %struct.ubifs_zbranch], ptr, i32, i32, i32, i32, i32 }
%struct.ubifs_lp_stats = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.ubifs_budg_info = type { i64, i64, i64, i64, i64, i32, i8, i32, i32, i32 }
%struct.ubifs_node_range = type { %union.anon.73, i32 }
%union.anon.73 = type { i32 }
%struct.ubi_device_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ubi_volume_info = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ubifs_lpt_heap = type { ptr, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.rb_root = type { ptr }
%struct.ubifs_mount_opts = type { i16, [2 x i8] }
%struct.ubifs_stats_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"ubi%d_%d\00", align 1
@ubifs_kset = internal global %struct.kset { %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, %struct.kobject { ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @ubifs_ktype, ptr null, %struct.kref zeroinitializer, i8 0 }, ptr null }, align 4
@ubifs_sb_ktype = internal global %struct.kobj_type { ptr @ubifs_sb_release, ptr @ubifs_attr_ops, ptr @ubifs_attrs, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"cannot create sysfs entry for ubifs%d_%d, error %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"ubifs\00", align 1
@fs_kobj = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@ubifs_ktype = internal global %struct.kobj_type { ptr null, ptr @ubifs_attr_ops, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ubifs_attr_ops = internal constant %struct.sysfs_ops { ptr @ubifs_attr_show, ptr null }, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@ubifs_attrs = internal global [4 x ptr] [ptr @ubifs_attr_errors_magic, ptr @ubifs_attr_errors_node, ptr @ubifs_attr_errors_crc, ptr null], align 4
@ubifs_attr_errors_magic = internal global %struct.ubifs_attr { %struct.attribute { ptr @.str.6, i16 292 }, i32 0 }, align 4
@ubifs_attr_errors_node = internal global %struct.ubifs_attr { %struct.attribute { ptr @.str.7, i16 292 }, i32 1 }, align 4
@ubifs_attr_errors_crc = internal global %struct.ubifs_attr { %struct.attribute { ptr @.str.8, i16 292 }, i32 2 }, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"errors_magic\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"errors_node\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"errors_crc\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_sysfs_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %2, i8 0, i32 10, i1 false), !annotation !8
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 12) #8
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 195
  store ptr %4, ptr %5, align 8
  %6 = icmp eq ptr %4, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 102
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 102, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 10, ptr noundef nonnull @.str, i32 noundef %9, i32 noundef %11)
  %13 = icmp sgt i32 %12, 9
  br i1 %13, label %22, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 28
  %16 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 28, i32 3
  store ptr @ubifs_kset, ptr %16, align 8
  %17 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 29
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 29, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %18, ptr noundef nonnull @.str.5, ptr noundef nonnull @init_completion.__key) #7
  %19 = call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %15, ptr noundef nonnull @ubifs_sb_ktype, ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull %2) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %14
  call void @kobject_put(ptr noundef %15) #7
  call void @wait_for_completion(ptr noundef %17) #7
  br label %22

22:                                               ; preds = %21, %7
  %23 = phi i32 [ %19, %21 ], [ -22, %7 ]
  %24 = load ptr, ptr %5, align 8
  call void @kfree(ptr noundef %24) #7
  br label %25

25:                                               ; preds = %22, %1
  %26 = phi i32 [ %23, %22 ], [ -12, %1 ]
  %27 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 102
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 102, i32 1
  %30 = load i32, ptr %29, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %28, i32 noundef %30, i32 noundef %26) #7
  br label %31

31:                                               ; preds = %25, %14
  %32 = phi i32 [ %26, %25 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %2) #7
  ret i32 %32
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_sysfs_unregister(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 28
  tail call void @kobject_del(ptr noundef %2) #7
  tail call void @kobject_put(ptr noundef %2) #7
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 29
  tail call void @wait_for_completion(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 195
  %5 = load ptr, ptr %4, align 8
  tail call void @kfree(ptr noundef %5) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @ubifs_sysfs_init() local_unnamed_addr #5 section ".init.text" {
  %1 = tail call i32 (ptr, ptr, ...) @kobject_set_name(ptr noundef getelementptr inbounds (%struct.kset, ptr @ubifs_kset, i32 0, i32 2), ptr noundef nonnull @.str.3) #7
  %2 = load ptr, ptr @fs_kobj, align 4
  store ptr %2, ptr getelementptr inbounds (%struct.kset, ptr @ubifs_kset, i32 0, i32 2, i32 2), align 4
  %3 = tail call i32 @kset_register(ptr noundef nonnull @ubifs_kset) #7
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kset_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_sysfs_exit() local_unnamed_addr #0 {
  tail call void @kset_unregister(ptr noundef nonnull @ubifs_kset) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kset_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ubifs_attr_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.ubifs_attr, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %21 [
    i32 0, label %6
    i32 1, label %9
    i32 2, label %13
  ]

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %0, i32 2080
  %8 = load ptr, ptr %7, align 8
  br label %17

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %0, i32 2080
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.ubifs_stats_info, ptr %11, i32 0, i32 1
  br label %17

13:                                               ; preds = %3
  %14 = getelementptr i8, ptr %0, i32 2080
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.ubifs_stats_info, ptr %15, i32 0, i32 2
  br label %17

17:                                               ; preds = %13, %9, %6
  %18 = phi ptr [ %16, %13 ], [ %12, %9 ], [ %8, %6 ]
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %19) #7
  br label %21

21:                                               ; preds = %17, %3
  %22 = phi i32 [ 0, %3 ], [ %20, %17 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ubifs_sb_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 36
  tail call void @complete(ptr noundef %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }

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
