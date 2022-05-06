; ModuleID = '/llk/IR/drivers/iommu/iommu-sysfs.c_pt.bc'
source_filename = "../drivers/iommu/iommu-sysfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_device_sysfs_add:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_device_sysfs_add\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_device_sysfs_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_device_sysfs_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_device_sysfs_remove\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_device_sysfs_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_device_link:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_device_link\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_device_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_device_unlink:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_device_unlink\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_device_unlink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.__va_list = type { ptr }
%struct.iommu_device = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }

@__initcall__kmod_iommu_sysfs__220_47_iommu_dev_init2 = internal global ptr @iommu_dev_init, section ".initcall2.init", align 4
@iommu_class = internal global %struct.class { ptr @.str.1, ptr null, ptr null, ptr @dev_groups, ptr null, ptr null, ptr null, ptr null, ptr @release_device, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_iommu_device_sysfs_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_device_sysfs_add = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_device_sysfs_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_device_sysfs_add to i32), ptr @__kstrtab_iommu_device_sysfs_add, ptr @__kstrtabns_iommu_device_sysfs_add }, section "___ksymtab_gpl+iommu_device_sysfs_add", align 4
@__kstrtab_iommu_device_sysfs_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_device_sysfs_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_device_sysfs_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_device_sysfs_remove to i32), ptr @__kstrtab_iommu_device_sysfs_remove, ptr @__kstrtabns_iommu_device_sysfs_remove }, section "___ksymtab_gpl+iommu_device_sysfs_remove", align 4
@.str = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"iommu\00", align 1
@__kstrtab_iommu_device_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_device_link = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_device_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_device_link to i32), ptr @__kstrtab_iommu_device_link, ptr @__kstrtabns_iommu_device_link }, section "___ksymtab_gpl+iommu_device_link", align 4
@__kstrtab_iommu_device_unlink = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_device_unlink = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_device_unlink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_device_unlink to i32), ptr @__kstrtab_iommu_device_unlink, ptr @__kstrtabns_iommu_device_unlink }, section "___ksymtab_gpl+iommu_device_unlink", align 4
@iommu_dev_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@dev_groups = internal global [2 x ptr] [ptr @devices_attr_group, ptr null], align 4
@devices_attr_group = internal constant %struct.attribute_group { ptr @.str, ptr null, ptr null, ptr @devices_attr, ptr null }, align 4
@devices_attr = internal global [1 x ptr] zeroinitializer, align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__initcall__kmod_iommu_sysfs__220_47_iommu_dev_init2, ptr @__ksymtab_iommu_device_link, ptr @__ksymtab_iommu_device_sysfs_add, ptr @__ksymtab_iommu_device_sysfs_remove, ptr @__ksymtab_iommu_device_unlink], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @iommu_dev_init() #0 section ".init.text" {
  %1 = tail call i32 @__class_register(ptr noundef nonnull @iommu_class, ptr noundef nonnull @iommu_dev_init.__key) #6
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_device_sysfs_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) #1 {
  %5 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 472) #7
  %8 = getelementptr inbounds %struct.iommu_device, ptr %0, i32 0, i32 3
  store ptr %7, ptr %8, align 4
  %9 = icmp eq ptr %7, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %4
  tail call void @device_initialize(ptr noundef nonnull %7) #6
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 31
  store ptr @iommu_class, ptr %12, align 4
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 1
  store ptr %1, ptr %14, align 4
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 32
  store ptr %2, ptr %16, align 8
  call void @llvm.va_start(ptr nonnull %5)
  %17 = load ptr, ptr %8, align 4
  %18 = load i32, ptr %5, align 4
  %19 = insertvalue [1 x i32] poison, i32 %18, 0
  %20 = call i32 @kobject_set_name_vargs(ptr noundef %17, ptr noundef %3, [1 x i32] %19) #6
  call void @llvm.va_end(ptr nonnull %5)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %10
  %23 = load ptr, ptr %8, align 4
  %24 = call i32 @device_add(ptr noundef %23) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load ptr, ptr %8, align 4
  %28 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 8
  store ptr %0, ptr %28, align 8
  br label %32

29:                                               ; preds = %22, %10
  %30 = phi i32 [ %20, %10 ], [ %24, %22 ]
  %31 = load ptr, ptr %8, align 4
  call void @put_device(ptr noundef %31) #6
  br label %32

32:                                               ; preds = %29, %26, %4
  %33 = phi i32 [ %30, %29 ], [ 0, %26 ], [ -12, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret i32 %33
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_set_name_vargs(ptr noundef, ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iommu_device_sysfs_remove(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.iommu_device, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  store ptr null, ptr %4, align 8
  %5 = load ptr, ptr %2, align 4
  tail call void @device_unregister(ptr noundef %5) #6
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_device_link(ptr noundef readonly %0, ptr noundef %1) #1 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.iommu_device, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = load ptr, ptr %1, align 4
  br label %14

14:                                               ; preds = %12, %6
  %15 = phi ptr [ %13, %12 ], [ %10, %6 ]
  %16 = tail call i32 @sysfs_add_link_to_group(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef %1, ptr noundef %15) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load ptr, ptr %7, align 4
  %20 = tail call i32 @sysfs_create_link_nowarn(ptr noundef %1, ptr noundef %19, ptr noundef nonnull @.str.1) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %7, align 4
  %24 = load ptr, ptr %9, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load ptr, ptr %1, align 4
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi ptr [ %27, %26 ], [ %24, %22 ]
  tail call void @sysfs_remove_link_from_group(ptr noundef %23, ptr noundef nonnull @.str, ptr noundef %29) #6
  br label %30

30:                                               ; preds = %28, %18, %14, %2
  %31 = phi i32 [ -19, %2 ], [ %16, %14 ], [ %20, %28 ], [ 0, %18 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_add_link_to_group(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link_nowarn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link_from_group(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iommu_device_unlink(ptr noundef readonly %0, ptr noundef %1) #1 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  tail call void @sysfs_remove_link(ptr noundef %1, ptr noundef nonnull @.str.1) #6
  %7 = getelementptr inbounds %struct.iommu_device, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = load ptr, ptr %1, align 4
  br label %14

14:                                               ; preds = %12, %6
  %15 = phi ptr [ %13, %12 ], [ %10, %6 ]
  tail call void @sysfs_remove_link_from_group(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef %15) #6
  br label %16

16:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @release_device(ptr noundef %0) #1 {
  tail call void @kfree(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"auto-init"}
