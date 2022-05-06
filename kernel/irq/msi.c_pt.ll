; ModuleID = '/llk/IR/kernel/irq/msi.c_pt.bc'
source_filename = "../kernel/irq/msi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_cached_msi_msg:\09\09\09\09\09"
module asm "\09.asciz \09\22get_cached_msi_msg\22\09\09\09\09\09"
module asm "__kstrtabns_get_cached_msi_msg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_msi_lock_descs:\09\09\09\09\09"
module asm "\09.asciz \09\22msi_lock_descs\22\09\09\09\09\09"
module asm "__kstrtabns_msi_lock_descs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_msi_unlock_descs:\09\09\09\09\09"
module asm "\09.asciz \09\22msi_unlock_descs\22\09\09\09\09\09"
module asm "__kstrtabns_msi_unlock_descs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_msi_first_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22msi_first_desc\22\09\09\09\09\09"
module asm "__kstrtabns_msi_first_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_msi_next_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22msi_next_desc\22\09\09\09\09\09"
module asm "__kstrtabns_msi_next_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_msi_get_virq:\09\09\09\09\09"
module asm "\09.asciz \09\22msi_get_virq\22\09\09\09\09\09"
module asm "__kstrtabns_msi_get_virq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.msi_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msi_desc = type { i32, i32, ptr, %struct.msi_msg, ptr, ptr, ptr, ptr, i16, %struct.pci_msi_desc }
%struct.msi_msg = type { %union.anon.61, %union.anon.62, %union.anon.63 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i32 }
%struct.pci_msi_desc = type { %union.anon.64, %struct.anon.65, %union.anon.66 }
%union.anon.64 = type { i32 }
%struct.anon.65 = type { i16, i32 }
%union.anon.66 = type { ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.msi_device_data = type { i32, ptr, %struct.mutex, %struct.xarray, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msi_alloc_info = type { ptr, i32, i32, [2 x %union.anon.71] }
%union.anon.71 = type { i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }

@__kstrtab_get_cached_msi_msg = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_cached_msi_msg = external dso_local constant [0 x i8], align 1
@__ksymtab_get_cached_msi_msg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_cached_msi_msg to i32), ptr @__kstrtab_get_cached_msi_msg, ptr @__kstrtabns_get_cached_msi_msg }, section "___ksymtab_gpl+get_cached_msi_msg", align 4
@.str = private unnamed_addr constant [24 x i8] c"msi_device_data_release\00", align 1
@msi_setup_device_data.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"&md->mutex\00", align 1
@__kstrtab_msi_lock_descs = external dso_local constant [0 x i8], align 1
@__kstrtabns_msi_lock_descs = external dso_local constant [0 x i8], align 1
@__ksymtab_msi_lock_descs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @msi_lock_descs to i32), ptr @__kstrtab_msi_lock_descs, ptr @__kstrtabns_msi_lock_descs }, section "___ksymtab_gpl+msi_lock_descs", align 4
@__kstrtab_msi_unlock_descs = external dso_local constant [0 x i8], align 1
@__kstrtabns_msi_unlock_descs = external dso_local constant [0 x i8], align 1
@__ksymtab_msi_unlock_descs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @msi_unlock_descs to i32), ptr @__kstrtab_msi_unlock_descs, ptr @__kstrtabns_msi_unlock_descs }, section "___ksymtab_gpl+msi_unlock_descs", align 4
@msi_first_desc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"kernel/irq/msi.c\00", align 1
@__kstrtab_msi_first_desc = external dso_local constant [0 x i8], align 1
@__kstrtabns_msi_first_desc = external dso_local constant [0 x i8], align 1
@__ksymtab_msi_first_desc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @msi_first_desc to i32), ptr @__kstrtab_msi_first_desc, ptr @__kstrtabns_msi_first_desc }, section "___ksymtab_gpl+msi_first_desc", align 4
@msi_next_desc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_msi_next_desc = external dso_local constant [0 x i8], align 1
@__kstrtabns_msi_next_desc = external dso_local constant [0 x i8], align 1
@__ksymtab_msi_next_desc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @msi_next_desc to i32), ptr @__kstrtab_msi_next_desc, ptr @__kstrtabns_msi_next_desc }, section "___ksymtab_gpl+msi_next_desc", align 4
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@__kstrtab_msi_get_virq = external dso_local constant [0 x i8], align 1
@__kstrtabns_msi_get_virq = external dso_local constant [0 x i8], align 1
@__ksymtab_msi_get_virq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @msi_get_virq to i32), ptr @__kstrtab_msi_get_virq, ptr @__kstrtabns_msi_get_virq }, section "___ksymtab_gpl+msi_get_virq", align 4
@msi_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msi_domain_alloc, ptr @msi_domain_free, ptr @msi_domain_activate, ptr @msi_domain_deactivate, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@msi_desc_match.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@msi_device_data_release.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@msi_irqs_group = internal constant %struct.attribute_group { ptr @.str.3, ptr null, ptr null, ptr @msi_dev_attrs, ptr null }, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"msi_irqs\00", align 1
@msi_dev_attrs = internal global [1 x ptr] zeroinitializer, align 4
@msi_domain_ops_default = internal global %struct.msi_domain_ops { ptr @msi_domain_ops_get_hwirq, ptr @msi_domain_ops_init, ptr null, ptr @msi_domain_ops_check, ptr @msi_domain_ops_prepare, ptr @msi_domain_ops_set_desc, ptr @__msi_domain_alloc_irqs, ptr @__msi_domain_free_irqs }, align 4
@pci_msi_ignore_mask = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"msix\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"msi\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_get_cached_msi_msg, ptr @__ksymtab_msi_first_desc, ptr @__ksymtab_msi_get_virq, ptr @__ksymtab_msi_lock_descs, ptr @__ksymtab_msi_next_desc, ptr @__ksymtab_msi_unlock_descs], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msi_add_msi_desc(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.msi_desc, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msi_desc, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 60) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %38, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.msi_desc, ptr %8, i32 0, i32 2
  store ptr %0, ptr %11, align 8
  %12 = getelementptr inbounds %struct.msi_desc, ptr %8, i32 0, i32 1
  store i32 %4, ptr %12, align 4
  %13 = icmp eq ptr %6, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = shl i32 %4, 3
  %16 = tail call ptr @kmemdup(ptr noundef nonnull %6, i32 noundef %15, i32 noundef 3264) #14
  %17 = getelementptr inbounds %struct.msi_desc, ptr %8, i32 0, i32 4
  store ptr %16, ptr %17, align 8
  %18 = icmp eq ptr %16, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %14, %10
  %20 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 14, i32 1
  %21 = getelementptr inbounds %struct.msi_desc, ptr %8, i32 0, i32 9
  %22 = getelementptr inbounds %struct.msi_desc, ptr %1, i32 0, i32 9
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %21, ptr noundef align 4 dereferenceable(16) %22, i32 16, i1 false)
  %23 = load ptr, ptr %20, align 4
  %24 = getelementptr inbounds %struct.msi_desc, ptr %1, i32 0, i32 8
  %25 = load i16, ptr %24, align 4
  %26 = zext i16 %25 to i32
  %27 = getelementptr inbounds %struct.msi_desc, ptr %8, i32 0, i32 8
  store i16 %25, ptr %27, align 8
  %28 = getelementptr inbounds %struct.msi_device_data, ptr %23, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %28) #14
  %29 = tail call i32 @__xa_insert(ptr noundef %28, i32 noundef %26, ptr noundef nonnull %8, i32 noundef 3264) #14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %30 = load i16, ptr %28, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %28, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  %32 = icmp eq i32 %29, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %19
  %34 = getelementptr inbounds %struct.msi_desc, ptr %8, i32 0, i32 4
  %35 = load ptr, ptr %34, align 8
  tail call void @kfree(ptr noundef %35) #14
  br label %36

36:                                               ; preds = %33, %14
  %37 = phi i32 [ %29, %33 ], [ -12, %14 ]
  tail call void @kfree(ptr noundef nonnull %8) #14
  br label %38

38:                                               ; preds = %36, %19, %2
  %39 = phi i32 [ 0, %19 ], [ -12, %2 ], [ %37, %36 ]
  ret i32 %39
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msi_free_msi_descs_range(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 14, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msi_device_data, ptr %7, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 %2, ptr %5, align 4
  %9 = call ptr @xa_find(ptr noundef %8, ptr noundef nonnull %5, i32 noundef %3, i32 noundef 8) #14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %27, %4
  %12 = phi ptr [ %28, %27 ], [ %9, %4 ]
  switch i32 %1, label %16 [
    i32 0, label %22
    i32 1, label %19
    i32 2, label %13
  ]

13:                                               ; preds = %11
  %14 = load i32, ptr %12, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %27, label %22

16:                                               ; preds = %11
  %17 = load i1, ptr @msi_desc_match.__already_done, align 1
  br i1 %17, label %27, label %18, !prof !12

18:                                               ; preds = %16
  store i1 true, ptr @msi_desc_match.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 137, i32 noundef 9, ptr noundef null) #14
  br label %27

19:                                               ; preds = %11
  %20 = load i32, ptr %12, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19, %13, %11
  %23 = load i32, ptr %5, align 4
  %24 = call ptr @xa_erase(ptr noundef %8, i32 noundef %23) #14
  %25 = getelementptr inbounds %struct.msi_desc, ptr %12, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  call void @kfree(ptr noundef %26) #14
  call void @kfree(ptr noundef nonnull %12) #14
  br label %27

27:                                               ; preds = %22, %19, %18, %16, %13
  %28 = call ptr @xa_find_after(ptr noundef %8, ptr noundef nonnull %5, i32 noundef %3, i32 noundef 8) #14
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %11

30:                                               ; preds = %27, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @__get_cached_msi_msg(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.msi_desc, ptr %0, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %1, ptr noundef align 4 dereferenceable(12) %3, i32 12, i1 false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @get_cached_msi_msg(i32 noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = tail call ptr @irq_get_irq_data(i32 noundef %0) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.irq_data, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.irq_common_data, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  %12 = getelementptr inbounds %struct.msi_desc, ptr %11, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %1, ptr noundef align 4 dereferenceable(12) %12, i32 12, i1 false) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msi_setup_device_data(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 14, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @msi_device_data_release, i32 noundef 44, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @devm_device_add_group(ptr noundef %0, ptr noundef nonnull @msi_irqs_group) #14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @devres_free(ptr noundef nonnull %6) #14
  br label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.msi_device_data, ptr %6, i32 0, i32 3
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.msi_device_data, ptr %6, i32 0, i32 3, i32 1
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.msi_device_data, ptr %6, i32 0, i32 3, i32 2
  store ptr null, ptr %15, align 4
  %16 = getelementptr inbounds %struct.msi_device_data, ptr %6, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %16, ptr noundef nonnull @.str.1, ptr noundef nonnull @msi_setup_device_data.__key) #14
  store ptr %6, ptr %2, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %6) #14
  br label %17

17:                                               ; preds = %12, %11, %5, %1
  %18 = phi i32 [ %9, %11 ], [ 0, %12 ], [ 0, %1 ], [ -12, %5 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msi_device_data_release(ptr nocapture noundef writeonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.msi_device_data, ptr %1, i32 0, i32 3, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = load i1, ptr @msi_device_data_release.__already_done, align 1
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %9, label %8, !prof !12

8:                                                ; preds = %2
  store i1 true, ptr @msi_device_data_release.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 182, i32 noundef 9, ptr noundef null) #14
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.msi_device_data, ptr %1, i32 0, i32 3
  tail call void @xa_destroy(ptr noundef %10) #14
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 14, i32 1
  store ptr null, ptr %11, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msi_lock_descs(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 14, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.msi_device_data, ptr %3, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %4) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msi_unlock_descs(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 14, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.msi_device_data, ptr %3, i32 0, i32 4
  store i32 65535, ptr %4, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.msi_device_data, ptr %5, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %6) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msi_first_desc(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 14, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = load i1, ptr @msi_first_desc.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !13

9:                                                ; preds = %2
  store i1 true, ptr @msi_first_desc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 271, i32 noundef 9, ptr noundef null) #14
  br label %10

10:                                               ; preds = %9, %2
  br i1 %5, label %33, label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.msi_device_data, ptr %4, i32 0, i32 4
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.msi_device_data, ptr %4, i32 0, i32 3
  %14 = tail call ptr @xa_find(ptr noundef %13, ptr noundef %12, i32 noundef -1, i32 noundef 8) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %11
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %29, %16
  %19 = phi ptr [ %30, %29 ], [ %14, %16 ]
  switch i32 %1, label %23 [
    i32 2, label %20
    i32 1, label %26
  ]

20:                                               ; preds = %18
  %21 = load i32, ptr %19, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %33

23:                                               ; preds = %18
  %24 = load i1, ptr @msi_desc_match.__already_done, align 1
  br i1 %24, label %29, label %25, !prof !12

25:                                               ; preds = %23
  store i1 true, ptr @msi_desc_match.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 137, i32 noundef 9, ptr noundef null) #14
  br label %29

26:                                               ; preds = %18
  %27 = load i32, ptr %19, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26, %25, %23, %20
  %30 = tail call ptr @xa_find_after(ptr noundef %13, ptr noundef %12, i32 noundef -1, i32 noundef 8) #14
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %18

32:                                               ; preds = %29, %11
  store i32 65535, ptr %12, align 4
  br label %33

33:                                               ; preds = %32, %26, %20, %16, %10
  %34 = phi ptr [ null, %10 ], [ null, %32 ], [ %14, %16 ], [ %19, %26 ], [ %19, %20 ]
  ret ptr %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msi_next_desc(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 14, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = load i1, ptr @msi_next_desc.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !13

9:                                                ; preds = %2
  store i1 true, ptr @msi_next_desc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 297, i32 noundef 9, ptr noundef null) #14
  br label %10

10:                                               ; preds = %9, %2
  br i1 %5, label %37, label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.msi_device_data, ptr %4, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, 65534
  br i1 %14, label %37, label %15

15:                                               ; preds = %11
  %16 = add nuw nsw i32 %13, 1
  store i32 %16, ptr %12, align 4
  %17 = getelementptr inbounds %struct.msi_device_data, ptr %4, i32 0, i32 3
  %18 = tail call ptr @xa_find(ptr noundef %17, ptr noundef %12, i32 noundef -1, i32 noundef 8) #14
  %19 = icmp eq ptr %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %15
  %21 = icmp eq i32 %1, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %33, %20
  %23 = phi ptr [ %34, %33 ], [ %18, %20 ]
  switch i32 %1, label %27 [
    i32 2, label %24
    i32 1, label %30
  ]

24:                                               ; preds = %22
  %25 = load i32, ptr %23, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %37

27:                                               ; preds = %22
  %28 = load i1, ptr @msi_desc_match.__already_done, align 1
  br i1 %28, label %33, label %29, !prof !12

29:                                               ; preds = %27
  store i1 true, ptr @msi_desc_match.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 137, i32 noundef 9, ptr noundef null) #14
  br label %33

30:                                               ; preds = %22
  %31 = load i32, ptr %23, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30, %29, %27, %24
  %34 = tail call ptr @xa_find_after(ptr noundef %17, ptr noundef %12, i32 noundef -1, i32 noundef 8) #14
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %22

36:                                               ; preds = %33, %15
  store i32 65535, ptr %12, align 4
  br label %37

37:                                               ; preds = %36, %30, %24, %20, %11, %10
  %38 = phi ptr [ null, %10 ], [ null, %11 ], [ null, %36 ], [ %18, %20 ], [ %23, %30 ], [ %23, %24 ]
  ret ptr %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msi_get_virq(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 14, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %39, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @pci_bus_type
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %0, i32 833
  %12 = load i40, ptr %11, align 1
  %13 = and i40 %12, 4096
  %14 = icmp eq i40 %13, 0
  br label %15

15:                                               ; preds = %10, %6
  %16 = phi i1 [ %14, %10 ], [ true, %6 ]
  %17 = getelementptr inbounds %struct.msi_device_data, ptr %4, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %17) #14
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr inbounds %struct.msi_device_data, ptr %18, i32 0, i32 3
  %20 = select i1 %16, i32 %1, i32 0
  %21 = tail call ptr @xa_load(ptr noundef %19, i32 noundef %20) #14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %15
  %24 = load i32, ptr %21, align 4
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i1 true, i1 %16
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.msi_desc, ptr %21, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp ugt i32 %29, %1
  %31 = add i32 %24, %1
  %32 = select i1 %30, i32 %31, i32 0
  br label %33

33:                                               ; preds = %27, %23, %15
  %34 = phi i32 [ %24, %23 ], [ 0, %15 ], [ %32, %27 ]
  %35 = load ptr, ptr %3, align 4
  %36 = getelementptr inbounds %struct.msi_device_data, ptr %35, i32 0, i32 4
  store i32 65535, ptr %36, align 4
  %37 = load ptr, ptr %3, align 4
  %38 = getelementptr inbounds %struct.msi_device_data, ptr %37, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %38) #14
  br label %39

39:                                               ; preds = %33, %2
  %40 = phi i32 [ %34, %33 ], [ 0, %2 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msi_domain_set_affinity(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
  %4 = alloca [2 x %struct.msi_msg], align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false)
  %7 = getelementptr inbounds %struct.irq_data, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.irq_chip, ptr %8, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %6, ptr noundef %1, i1 noundef zeroext %2) #14
  %12 = icmp sgt i32 %11, -1
  %13 = icmp ne i32 %11, 2
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %52

15:                                               ; preds = %3
  %16 = call i32 @irq_chip_compose_msi_msg(ptr noundef %0, ptr noundef nonnull %4) #14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18, !prof !12

18:                                               ; preds = %15
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/irq/msi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 502, 0\0A.popsection", ""() #14, !srcloc !14
  unreachable

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.irq_domain, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 64
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.msi_domain_info, ptr %23, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.irq_chip, ptr %29, i32 0, i32 33
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 128
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %27, %19
  %35 = getelementptr inbounds %struct.msi_msg, ptr %4, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.msi_msg, ptr %4, i32 1, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.msi_msg, ptr %4, i32 1, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46, !prof !12

46:                                               ; preds = %42, %38, %34
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 479, i32 noundef 9, ptr noundef null) #14
  br label %47

47:                                               ; preds = %46, %42, %27
  %48 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 4
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.irq_chip, ptr %49, i32 0, i32 25
  %51 = load ptr, ptr %50, align 4
  call void %51(ptr noundef %0, ptr noundef nonnull %4) #14
  br label %52

52:                                               ; preds = %47, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  ret i32 %11
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_compose_msi_msg(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msi_create_irq_domain(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.msi_domain_info, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @msi_domain_ops_default, ptr %4, align 4
  br label %53

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.msi_domain_ops, ptr %5, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load ptr, ptr getelementptr inbounds (%struct.msi_domain_ops, ptr @msi_domain_ops_default, i32 0, i32 6), align 4
  store ptr %13, ptr %9, align 4
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct.msi_domain_ops, ptr %5, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load ptr, ptr getelementptr inbounds (%struct.msi_domain_ops, ptr @msi_domain_ops_default, i32 0, i32 7), align 4
  store ptr %19, ptr %15, align 4
  br label %20

20:                                               ; preds = %18, %14
  %21 = load i32, ptr %1, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %53, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %5, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load ptr, ptr @msi_domain_ops_default, align 4
  store ptr %28, ptr %5, align 4
  br label %29

29:                                               ; preds = %27, %24
  %30 = getelementptr inbounds %struct.msi_domain_ops, ptr %5, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load ptr, ptr getelementptr inbounds (%struct.msi_domain_ops, ptr @msi_domain_ops_default, i32 0, i32 1), align 4
  store ptr %34, ptr %30, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = getelementptr inbounds %struct.msi_domain_ops, ptr %5, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load ptr, ptr getelementptr inbounds (%struct.msi_domain_ops, ptr @msi_domain_ops_default, i32 0, i32 3), align 4
  store ptr %40, ptr %36, align 4
  br label %41

41:                                               ; preds = %39, %35
  %42 = getelementptr inbounds %struct.msi_domain_ops, ptr %5, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load ptr, ptr getelementptr inbounds (%struct.msi_domain_ops, ptr @msi_domain_ops_default, i32 0, i32 4), align 4
  store ptr %46, ptr %42, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = getelementptr inbounds %struct.msi_domain_ops, ptr %5, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load ptr, ptr getelementptr inbounds (%struct.msi_domain_ops, ptr @msi_domain_ops_default, i32 0, i32 5), align 4
  store ptr %52, ptr %48, align 4
  br label %53

53:                                               ; preds = %51, %47, %20, %7
  %54 = load i32, ptr %1, align 4
  %55 = and i32 %54, 2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %75, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.msi_domain_info, ptr %1, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %69, label %61, !prof !13

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.irq_chip, ptr %59, i32 0, i32 7
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65, !prof !13

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.irq_chip, ptr %59, i32 0, i32 9
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %70, !prof !13

69:                                               ; preds = %65, %61, %57
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/irq/msi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 666, 0\0A.popsection", ""() #14, !srcloc !15
  unreachable

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.irq_chip, ptr %59, i32 0, i32 11
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store ptr @msi_domain_set_affinity, ptr %71, align 4
  br label %75

75:                                               ; preds = %74, %70, %53
  %76 = tail call ptr @irq_domain_create_hierarchy(ptr noundef %2, i32 noundef 16, i32 noundef 0, ptr noundef %0, ptr noundef nonnull @msi_domain_ops, ptr noundef %1) #14
  %77 = icmp eq ptr %76, null
  br i1 %77, label %89, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.irq_domain, ptr %76, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.msi_domain_info, ptr %1, i32 0, i32 2
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.irq_chip, ptr %84, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  store ptr %88, ptr %79, align 4
  br label %89

89:                                               ; preds = %86, %82, %78, %75
  ret ptr %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msi_domain_prepare_irqs(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msi_domain_info, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msi_domain_ops, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %0, ptr noundef %6, ptr noundef %1) #14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.msi_domain_ops, ptr %8, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #14
  br label %17

17:                                               ; preds = %13, %4
  %18 = phi i32 [ %16, %13 ], [ %11, %4 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msi_domain_populate_irqs(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msi_domain_info, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 14, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.msi_device_data, ptr %12, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %13) #14
  %14 = tail call fastcc i32 @msi_add_simple_msi_descs(ptr noundef %1, i32 noundef %2, i32 noundef %3)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %60

16:                                               ; preds = %5
  %17 = add i32 %3, %2
  %18 = icmp sgt i32 %17, %2
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.msi_domain_ops, ptr %10, i32 0, i32 5
  br label %21

21:                                               ; preds = %32, %19
  %22 = phi i32 [ %2, %19 ], [ %34, %32 ]
  %23 = load ptr, ptr %11, align 4
  %24 = getelementptr inbounds %struct.msi_device_data, ptr %23, i32 0, i32 3
  %25 = tail call ptr @xa_load(ptr noundef %24, i32 noundef %22) #14
  store i32 %22, ptr %25, align 4
  %26 = load ptr, ptr %20, align 4
  tail call void %26(ptr noundef %4, ptr noundef %25) #14
  %27 = tail call i32 @irq_domain_alloc_irqs_hierarchy(ptr noundef %0, i32 noundef %22, i32 noundef 1, ptr noundef %4) #14
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = add i32 %22, -1
  %31 = icmp slt i32 %30, %2
  br i1 %31, label %45, label %41

32:                                               ; preds = %21
  %33 = tail call i32 @irq_set_msi_desc(i32 noundef %22, ptr noundef %25) #14
  %34 = add i32 %22, 1
  %35 = icmp eq i32 %34, %17
  br i1 %35, label %36, label %21

36:                                               ; preds = %32, %16
  %37 = load ptr, ptr %11, align 4
  %38 = getelementptr inbounds %struct.msi_device_data, ptr %37, i32 0, i32 4
  store i32 65535, ptr %38, align 4
  %39 = load ptr, ptr %11, align 4
  %40 = getelementptr inbounds %struct.msi_device_data, ptr %39, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %40) #14
  br label %66

41:                                               ; preds = %41, %29
  %42 = phi i32 [ %43, %41 ], [ %30, %29 ]
  tail call void @irq_domain_free_irqs_common(ptr noundef %0, i32 noundef %42, i32 noundef 1) #14
  %43 = add i32 %42, -1
  %44 = icmp slt i32 %43, %2
  br i1 %44, label %45, label %41

45:                                               ; preds = %41, %29
  %46 = add i32 %17, -1
  %47 = load ptr, ptr %11, align 4
  %48 = getelementptr inbounds %struct.msi_device_data, ptr %47, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 %2, ptr %6, align 4
  %49 = call ptr @xa_find(ptr noundef %48, ptr noundef nonnull %6, i32 noundef %46, i32 noundef 8) #14
  %50 = icmp eq ptr %49, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %51, %45
  %52 = phi ptr [ %57, %51 ], [ %49, %45 ]
  %53 = load i32, ptr %6, align 4
  %54 = call ptr @xa_erase(ptr noundef %48, i32 noundef %53) #14
  %55 = getelementptr inbounds %struct.msi_desc, ptr %52, i32 0, i32 4
  %56 = load ptr, ptr %55, align 4
  call void @kfree(ptr noundef %56) #14
  call void @kfree(ptr noundef nonnull %52) #14
  %57 = call ptr @xa_find_after(ptr noundef %48, ptr noundef nonnull %6, i32 noundef %46, i32 noundef 8) #14
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %51

59:                                               ; preds = %51, %45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br label %60

60:                                               ; preds = %59, %5
  %61 = phi i32 [ %14, %5 ], [ %27, %59 ]
  %62 = load ptr, ptr %11, align 4
  %63 = getelementptr inbounds %struct.msi_device_data, ptr %62, i32 0, i32 4
  store i32 65535, ptr %63, align 4
  %64 = load ptr, ptr %11, align 4
  %65 = getelementptr inbounds %struct.msi_device_data, ptr %64, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %65) #14
  br label %66

66:                                               ; preds = %60, %36
  %67 = phi i32 [ %61, %60 ], [ 0, %36 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @msi_add_simple_msi_descs(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = add i32 %1, -1
  %6 = add i32 %5, %2
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 14, i32 1
  %8 = icmp ult i32 %6, %1
  br i1 %8, label %50, label %12

9:                                                ; preds = %17
  %10 = add i32 %13, 1
  %11 = icmp ugt i32 %10, %6
  br i1 %11, label %50, label %12

12:                                               ; preds = %9, %3
  %13 = phi i32 [ %10, %9 ], [ %1, %3 ]
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 60) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.msi_desc, ptr %15, i32 0, i32 2
  store ptr %0, ptr %18, align 8
  %19 = getelementptr inbounds %struct.msi_desc, ptr %15, i32 0, i32 1
  store i32 1, ptr %19, align 4
  %20 = load ptr, ptr %7, align 4
  %21 = trunc i32 %13 to i16
  %22 = getelementptr inbounds %struct.msi_desc, ptr %15, i32 0, i32 8
  store i16 %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.msi_device_data, ptr %20, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %23) #14
  %24 = tail call i32 @__xa_insert(ptr noundef %23, i32 noundef %13, ptr noundef nonnull %15, i32 noundef 3264) #14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %25 = load i16, ptr %23, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  %27 = icmp eq i32 %24, 0
  br i1 %27, label %9, label %28

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.msi_desc, ptr %15, i32 0, i32 4
  %30 = load ptr, ptr %29, align 8
  tail call void @kfree(ptr noundef %30) #14
  tail call void @kfree(ptr noundef nonnull %15) #14
  br label %31

31:                                               ; preds = %28, %12
  %32 = phi i32 [ %24, %28 ], [ -12, %12 ]
  %33 = load ptr, ptr %7, align 4
  %34 = getelementptr inbounds %struct.msi_device_data, ptr %33, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 %1, ptr %4, align 4
  %35 = call ptr @xa_find(ptr noundef %34, ptr noundef nonnull %4, i32 noundef %6, i32 noundef 8) #14
  %36 = icmp eq ptr %35, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %46, %31
  %38 = phi ptr [ %47, %46 ], [ %35, %31 ]
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i32, ptr %4, align 4
  %43 = call ptr @xa_erase(ptr noundef %34, i32 noundef %42) #14
  %44 = getelementptr inbounds %struct.msi_desc, ptr %38, i32 0, i32 4
  %45 = load ptr, ptr %44, align 4
  call void @kfree(ptr noundef %45) #14
  call void @kfree(ptr noundef nonnull %38) #14
  br label %46

46:                                               ; preds = %41, %37
  %47 = call ptr @xa_find_after(ptr noundef %34, ptr noundef nonnull %4, i32 noundef %6, i32 noundef 8) #14
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %37

49:                                               ; preds = %46, %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  br label %50

50:                                               ; preds = %49, %9, %3
  %51 = phi i32 [ %32, %49 ], [ 0, %3 ], [ 0, %9 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_msi_desc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__msi_domain_alloc_irqs(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.msi_alloc_info, align 4
  %5 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msi_domain_info, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false)
  %9 = load ptr, ptr %7, align 4
  %10 = getelementptr inbounds %struct.msi_domain_ops, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %0, ptr noundef %6, ptr noundef %1) #14
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %231

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.msi_domain_ops, ptr %9, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 %16(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %4) #14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %231

19:                                               ; preds = %14
  %20 = load i32, ptr %6, align 4
  %21 = lshr i32 %20, 3
  %22 = and i32 %21, 2
  %23 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  switch i32 %24, label %59 [
    i32 3, label %25
    i32 10, label %25
  ]

25:                                               ; preds = %19, %19
  %26 = and i32 %20, 32
  %27 = icmp ne i32 %26, 0
  %28 = load i32, ptr @pci_msi_ignore_mask, align 4
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %59

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 14, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  %35 = load i1, ptr @msi_first_desc.__already_done, align 1
  %36 = xor i1 %35, true
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %39, !prof !13

38:                                               ; preds = %31
  store i1 true, ptr @msi_first_desc.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 271, i32 noundef 9, ptr noundef null) #14
  br label %39

39:                                               ; preds = %38, %31
  br i1 %34, label %46, label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.msi_device_data, ptr %33, i32 0, i32 4
  store i32 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.msi_device_data, ptr %33, i32 0, i32 3
  %43 = call ptr @xa_find(ptr noundef %42, ptr noundef %41, i32 noundef -1, i32 noundef 8) #14
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 65535, ptr %41, align 4
  br label %46

46:                                               ; preds = %45, %40, %39
  %47 = phi ptr [ null, %39 ], [ null, %45 ], [ %43, %40 ]
  %48 = getelementptr inbounds %struct.msi_desc, ptr %47, i32 0, i32 9, i32 1
  %49 = load i16, ptr %48, align 4
  %50 = and i16 %49, 129
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 4
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, 64
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, i32 1, i32 5
  %58 = or i32 %57, %22
  br label %59

59:                                               ; preds = %52, %46, %25, %19
  %60 = phi i32 [ %22, %46 ], [ %58, %52 ], [ %22, %19 ], [ %22, %25 ]
  %61 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 14, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  %64 = load i1, ptr @msi_first_desc.__already_done, align 1
  %65 = xor i1 %64, true
  %66 = select i1 %63, i1 %65, i1 false
  br i1 %66, label %67, label %68, !prof !13

67:                                               ; preds = %59
  store i1 true, ptr @msi_first_desc.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 271, i32 noundef 9, ptr noundef null) #14
  br label %68

68:                                               ; preds = %67, %59
  br i1 %63, label %231, label %69

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.msi_device_data, ptr %62, i32 0, i32 4
  store i32 0, ptr %70, align 4
  %71 = getelementptr inbounds %struct.msi_device_data, ptr %62, i32 0, i32 3
  %72 = call ptr @xa_find(ptr noundef %71, ptr noundef %70, i32 noundef -1, i32 noundef 8) #14
  %73 = icmp eq ptr %72, null
  br i1 %73, label %81, label %74

74:                                               ; preds = %78, %69
  %75 = phi ptr [ %79, %78 ], [ %72, %69 ]
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = call ptr @xa_find_after(ptr noundef %71, ptr noundef %70, i32 noundef -1, i32 noundef 8) #14
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %74

81:                                               ; preds = %78, %69
  store i32 65535, ptr %70, align 4
  br label %231

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.msi_domain_ops, ptr %8, i32 0, i32 5
  %84 = and i32 %60, 1
  %85 = icmp ne i32 %84, 0
  %86 = and i32 %60, 4
  %87 = icmp eq i32 %86, 0
  %88 = icmp eq i32 %22, 0
  %89 = load ptr, ptr %83, align 4
  call void %89(ptr noundef nonnull %4, ptr noundef nonnull %75) #14
  %90 = getelementptr inbounds %struct.msi_desc, ptr %75, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr inbounds %struct.msi_desc, ptr %75, i32 0, i32 4
  %93 = load ptr, ptr %92, align 4
  %94 = call i32 @__irq_domain_alloc_irqs(ptr noundef %0, i32 noundef -1, i32 noundef %91, i32 noundef -1, ptr noundef nonnull %4, i1 noundef zeroext false, ptr noundef %93) #14
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %111, label %104

96:                                               ; preds = %223
  %97 = load ptr, ptr %83, align 4
  call void %97(ptr noundef nonnull %4, ptr noundef nonnull %224) #14
  %98 = getelementptr inbounds %struct.msi_desc, ptr %224, i32 0, i32 1
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr inbounds %struct.msi_desc, ptr %224, i32 0, i32 4
  %101 = load ptr, ptr %100, align 4
  %102 = call i32 @__irq_domain_alloc_irqs(ptr noundef %0, i32 noundef -1, i32 noundef %99, i32 noundef -1, ptr noundef nonnull %4, i1 noundef zeroext false, ptr noundef %101) #14
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %96, %82
  %105 = phi i32 [ %102, %96 ], [ %94, %82 ]
  %106 = phi ptr [ %98, %96 ], [ %90, %82 ]
  %107 = phi ptr [ %224, %96 ], [ %75, %82 ]
  %108 = phi i32 [ %206, %96 ], [ 0, %82 ]
  %109 = load i32, ptr %106, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %150, label %121

111:                                              ; preds = %96, %82
  %112 = phi i32 [ 0, %82 ], [ %206, %96 ]
  %113 = phi ptr [ %90, %82 ], [ %98, %96 ]
  %114 = load i32, ptr %23, align 4
  switch i32 %114, label %231 [
    i32 3, label %115
    i32 10, label %115
  ]

115:                                              ; preds = %111, %111
  %116 = load i32, ptr %113, align 4
  %117 = icmp ugt i32 %116, 1
  br i1 %117, label %231, label %118

118:                                              ; preds = %115
  %119 = icmp eq i32 %112, 0
  %120 = select i1 %119, i32 -28, i32 %112
  br label %231

121:                                              ; preds = %146, %104
  %122 = phi i32 [ %147, %146 ], [ 0, %104 ]
  %123 = call i32 @irq_set_msi_desc_off(i32 noundef %105, i32 noundef %122, ptr noundef nonnull %107) #14
  %124 = add i32 %122, %105
  %125 = call ptr @irq_domain_get_irq_data(ptr noundef %0, i32 noundef %124) #14
  br i1 %85, label %135, label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.irq_data, ptr %125, i32 0, i32 3
  %128 = load ptr, ptr %127, align 4
  %129 = load i32, ptr %128, align 4
  %130 = and i32 %129, -67108865
  store i32 %130, ptr %128, align 4
  br i1 %87, label %135, label %131

131:                                              ; preds = %126
  %132 = load ptr, ptr %127, align 4
  %133 = load i32, ptr %132, align 4
  %134 = or i32 %133, 134217728
  store i32 %134, ptr %132, align 4
  br label %135

135:                                              ; preds = %131, %126, %121
  br i1 %88, label %146, label %136

136:                                              ; preds = %135
  %137 = call i32 @irq_domain_activate_irq(ptr noundef %125, i1 noundef zeroext %85) #14
  %138 = icmp eq i32 %137, 0
  %139 = and i1 %85, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.irq_data, ptr %125, i32 0, i32 3
  %142 = load ptr, ptr %141, align 4
  %143 = load i32, ptr %142, align 4
  %144 = and i32 %143, -513
  store i32 %144, ptr %142, align 4
  br label %146

145:                                              ; preds = %136
  br i1 %138, label %146, label %231

146:                                              ; preds = %145, %140, %135
  %147 = add nuw i32 %122, 1
  %148 = load i32, ptr %106, align 4
  %149 = icmp ult i32 %147, %148
  br i1 %149, label %121, label %150

150:                                              ; preds = %146, %104
  %151 = phi i32 [ 0, %104 ], [ %148, %146 ]
  %152 = load i32, ptr %6, align 4
  %153 = and i32 %152, 128
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %205, label %155

155:                                              ; preds = %150
  %156 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %151, i32 16) #14
  %157 = extractvalue { i32, i1 } %156, 1
  br i1 %157, label %231, label %158, !prof !13

158:                                              ; preds = %155
  %159 = extractvalue { i32, i1 } %156, 0
  %160 = call noalias align 64 ptr @__kmalloc(i32 noundef %159, i32 noundef 3520) #15
  %161 = icmp eq ptr %160, null
  br i1 %161, label %231, label %162

162:                                              ; preds = %158
  %163 = load i32, ptr %106, align 4
  %164 = getelementptr inbounds %struct.msi_desc, ptr %107, i32 0, i32 5
  store ptr %160, ptr %164, align 4
  %165 = icmp eq i32 %163, 0
  br i1 %165, label %205, label %170

166:                                              ; preds = %177
  %167 = add nuw i32 %171, 1
  %168 = load i32, ptr %106, align 4
  %169 = icmp ult i32 %167, %168
  br i1 %169, label %170, label %205

170:                                              ; preds = %166, %162
  %171 = phi i32 [ %167, %166 ], [ 0, %162 ]
  %172 = load i32, ptr %107, align 4
  %173 = add i32 %172, %171
  %174 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.4, i32 noundef %173) #14
  %175 = getelementptr %struct.device_attribute, ptr %160, i32 %171
  store ptr %174, ptr %175, align 16
  %176 = icmp eq ptr %174, null
  br i1 %176, label %183, label %177

177:                                              ; preds = %170
  %178 = getelementptr inbounds %struct.attribute, ptr %175, i32 0, i32 1
  store i16 292, ptr %178, align 4
  %179 = getelementptr %struct.device_attribute, ptr %160, i32 %171, i32 1
  store ptr @msi_mode_show, ptr %179, align 8
  %180 = call i32 @sysfs_add_file_to_group(ptr noundef %1, ptr noundef %175, ptr noundef nonnull @.str.3) #14
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %166, label %182

182:                                              ; preds = %177
  store ptr null, ptr %179, align 8
  br label %183

183:                                              ; preds = %182, %170
  %184 = phi i32 [ %180, %182 ], [ -12, %170 ]
  %185 = getelementptr inbounds %struct.msi_desc, ptr %107, i32 0, i32 5
  %186 = load ptr, ptr %185, align 4
  %187 = icmp eq ptr %186, null
  br i1 %187, label %231, label %188

188:                                              ; preds = %183
  store ptr null, ptr %185, align 4
  %189 = load i32, ptr %106, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  call void @kfree(ptr noundef nonnull %186) #14
  br label %231

192:                                              ; preds = %199, %188
  %193 = phi i32 [ %201, %199 ], [ 0, %188 ]
  %194 = getelementptr %struct.device_attribute, ptr %186, i32 %193
  %195 = getelementptr %struct.device_attribute, ptr %186, i32 %193, i32 1
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %199, label %198

198:                                              ; preds = %192
  call void @sysfs_remove_file_from_group(ptr noundef %1, ptr noundef %194, ptr noundef nonnull @.str.3) #14
  br label %199

199:                                              ; preds = %198, %192
  %200 = load ptr, ptr %194, align 4
  call void @kfree(ptr noundef %200) #14
  %201 = add nuw i32 %193, 1
  %202 = load i32, ptr %106, align 4
  %203 = icmp ult i32 %201, %202
  br i1 %203, label %192, label %204

204:                                              ; preds = %199
  call void @kfree(ptr noundef nonnull %186) #14
  br label %231

205:                                              ; preds = %166, %162, %150
  %206 = add i32 %108, 1
  %207 = load ptr, ptr %61, align 4
  %208 = icmp eq ptr %207, null
  %209 = load i1, ptr @msi_next_desc.__already_done, align 1
  %210 = xor i1 %209, true
  %211 = select i1 %208, i1 %210, i1 false
  br i1 %211, label %212, label %213, !prof !13

212:                                              ; preds = %205
  store i1 true, ptr @msi_next_desc.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 297, i32 noundef 9, ptr noundef null) #14
  br label %213

213:                                              ; preds = %212, %205
  br i1 %208, label %231, label %214

214:                                              ; preds = %213
  %215 = getelementptr inbounds %struct.msi_device_data, ptr %207, i32 0, i32 4
  %216 = load i32, ptr %215, align 4
  %217 = icmp ugt i32 %216, 65534
  br i1 %217, label %231, label %218

218:                                              ; preds = %214
  %219 = add nuw nsw i32 %216, 1
  store i32 %219, ptr %215, align 4
  %220 = getelementptr inbounds %struct.msi_device_data, ptr %207, i32 0, i32 3
  %221 = call ptr @xa_find(ptr noundef %220, ptr noundef %215, i32 noundef -1, i32 noundef 8) #14
  %222 = icmp eq ptr %221, null
  br i1 %222, label %230, label %223

223:                                              ; preds = %227, %218
  %224 = phi ptr [ %228, %227 ], [ %221, %218 ]
  %225 = load i32, ptr %224, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %96, label %227

227:                                              ; preds = %223
  %228 = call ptr @xa_find_after(ptr noundef %220, ptr noundef %215, i32 noundef -1, i32 noundef 8) #14
  %229 = icmp eq ptr %228, null
  br i1 %229, label %230, label %223

230:                                              ; preds = %227, %218
  store i32 65535, ptr %215, align 4
  br label %231

231:                                              ; preds = %230, %214, %213, %204, %191, %183, %158, %155, %145, %118, %115, %111, %81, %68, %14, %3
  %232 = phi i32 [ %17, %14 ], [ %184, %204 ], [ %120, %118 ], [ -28, %111 ], [ 1, %115 ], [ %184, %191 ], [ %12, %3 ], [ %184, %183 ], [ 0, %68 ], [ 0, %81 ], [ 0, %230 ], [ %137, %145 ], [ 0, %214 ], [ 0, %213 ], [ -12, %158 ], [ -12, %155 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #14
  ret i32 %232
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_domain_alloc_irqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_msi_desc_off(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msi_domain_alloc_irqs_descs_locked(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msi_domain_info, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %5, align 4
  %9 = and i32 %8, 512
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = tail call fastcc i32 @msi_add_simple_msi_descs(ptr noundef %1, i32 noundef 0, i32 noundef %2) #14
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %11, %3
  %15 = getelementptr inbounds %struct.msi_domain_ops, ptr %7, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %0, ptr noundef %1, i32 noundef %2) #14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call void @msi_domain_free_irqs_descs_locked(ptr noundef %0, ptr noundef %1)
  br label %20

20:                                               ; preds = %19, %14, %11
  %21 = phi i32 [ %12, %11 ], [ %17, %19 ], [ 0, %14 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msi_domain_free_irqs_descs_locked(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msi_domain_info, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msi_domain_ops, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %0, ptr noundef %1) #14
  %10 = load i32, ptr %5, align 4
  %11 = and i32 %10, 1024
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 14, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.msi_device_data, ptr %15, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4
  %17 = call ptr @xa_find(ptr noundef %16, ptr noundef nonnull %3, i32 noundef 65535, i32 noundef 8) #14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %19, %13
  %20 = phi ptr [ %25, %19 ], [ %17, %13 ]
  %21 = load i32, ptr %3, align 4
  %22 = call ptr @xa_erase(ptr noundef %16, i32 noundef %21) #14
  %23 = getelementptr inbounds %struct.msi_desc, ptr %20, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  call void @kfree(ptr noundef %24) #14
  call void @kfree(ptr noundef nonnull %20) #14
  %25 = call ptr @xa_find_after(ptr noundef %16, ptr noundef nonnull %3, i32 noundef 65535, i32 noundef 8) #14
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %19

27:                                               ; preds = %19, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  br label %28

28:                                               ; preds = %27, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msi_domain_alloc_irqs(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 14, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msi_device_data, ptr %5, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %6) #14
  %7 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msi_domain_info, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %8, align 4
  %12 = and i32 %11, 512
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = tail call fastcc i32 @msi_add_simple_msi_descs(ptr noundef %1, i32 noundef 0, i32 noundef %2) #14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14, %3
  %18 = getelementptr inbounds %struct.msi_domain_ops, ptr %10, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(ptr noundef %0, ptr noundef %1, i32 noundef %2) #14
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  tail call void @msi_domain_free_irqs_descs_locked(ptr noundef %0, ptr noundef %1) #14
  br label %23

23:                                               ; preds = %22, %17, %14
  %24 = phi i32 [ %15, %14 ], [ %20, %22 ], [ 0, %17 ]
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr inbounds %struct.msi_device_data, ptr %25, i32 0, i32 4
  store i32 65535, ptr %26, align 4
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr inbounds %struct.msi_device_data, ptr %27, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %28) #14
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__msi_domain_free_irqs(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 14, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = load i1, ptr @msi_first_desc.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !13

11:                                               ; preds = %2
  store i1 true, ptr @msi_first_desc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 271, i32 noundef 9, ptr noundef null) #14
  br label %12

12:                                               ; preds = %11, %2
  br i1 %7, label %99, label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.msi_device_data, ptr %6, i32 0, i32 4
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.msi_device_data, ptr %6, i32 0, i32 3
  %16 = tail call ptr @xa_find(ptr noundef %15, ptr noundef %14, i32 noundef -1, i32 noundef 8) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %97, label %18

18:                                               ; preds = %22, %13
  %19 = phi ptr [ %23, %22 ], [ %16, %13 ]
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = tail call ptr @xa_find_after(ptr noundef %15, ptr noundef %14, i32 noundef -1, i32 noundef 8) #14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %97, label %18

25:                                               ; preds = %90, %18
  %26 = phi ptr [ %19, %18 ], [ %91, %90 ]
  %27 = getelementptr inbounds %struct.msi_desc, ptr %26, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %43, %25
  %31 = phi i32 [ %44, %43 ], [ 0, %25 ]
  %32 = load i32, ptr %26, align 4
  %33 = add i32 %32, %31
  %34 = tail call ptr @irq_domain_get_irq_data(ptr noundef %0, i32 noundef %33) #14
  %35 = icmp eq ptr %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.irq_data, ptr %34, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 512
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  tail call void @irq_domain_deactivate_irq(ptr noundef nonnull %34) #14
  br label %43

43:                                               ; preds = %42, %36, %30
  %44 = add nuw i32 %31, 1
  %45 = load i32, ptr %27, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %30, label %47

47:                                               ; preds = %43, %25
  %48 = phi i32 [ 0, %25 ], [ %45, %43 ]
  %49 = load i32, ptr %26, align 4
  tail call void @irq_domain_free_irqs(i32 noundef %49, i32 noundef %48) #14
  %50 = load i32, ptr %4, align 4
  %51 = and i32 %50, 128
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %73, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.msi_desc, ptr %26, i32 0, i32 5
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %73, label %57

57:                                               ; preds = %53
  store ptr null, ptr %54, align 4
  %58 = load i32, ptr %27, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %67, %57
  %61 = phi i32 [ %69, %67 ], [ 0, %57 ]
  %62 = getelementptr %struct.device_attribute, ptr %55, i32 %61
  %63 = getelementptr %struct.device_attribute, ptr %55, i32 %61, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  tail call void @sysfs_remove_file_from_group(ptr noundef %1, ptr noundef %62, ptr noundef nonnull @.str.3) #14
  br label %67

67:                                               ; preds = %66, %60
  %68 = load ptr, ptr %62, align 4
  tail call void @kfree(ptr noundef %68) #14
  %69 = add nuw i32 %61, 1
  %70 = load i32, ptr %27, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %60, label %72

72:                                               ; preds = %67, %57
  tail call void @kfree(ptr noundef nonnull %55) #14
  br label %73

73:                                               ; preds = %72, %53, %47
  store i32 0, ptr %26, align 4
  %74 = load ptr, ptr %5, align 4
  %75 = icmp eq ptr %74, null
  %76 = load i1, ptr @msi_next_desc.__already_done, align 1
  %77 = xor i1 %76, true
  %78 = select i1 %75, i1 %77, i1 false
  br i1 %78, label %79, label %80, !prof !13

79:                                               ; preds = %73
  store i1 true, ptr @msi_next_desc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 297, i32 noundef 9, ptr noundef null) #14
  br label %80

80:                                               ; preds = %79, %73
  br i1 %75, label %99, label %81

81:                                               ; preds = %80
  %82 = getelementptr inbounds %struct.msi_device_data, ptr %74, i32 0, i32 4
  %83 = load i32, ptr %82, align 4
  %84 = icmp ugt i32 %83, 65534
  br i1 %84, label %99, label %85

85:                                               ; preds = %81
  %86 = add nuw nsw i32 %83, 1
  store i32 %86, ptr %82, align 4
  %87 = getelementptr inbounds %struct.msi_device_data, ptr %74, i32 0, i32 3
  %88 = tail call ptr @xa_find(ptr noundef %87, ptr noundef %82, i32 noundef -1, i32 noundef 8) #14
  %89 = icmp eq ptr %88, null
  br i1 %89, label %97, label %90

90:                                               ; preds = %94, %85
  %91 = phi ptr [ %95, %94 ], [ %88, %85 ]
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %25

94:                                               ; preds = %90
  %95 = tail call ptr @xa_find_after(ptr noundef %87, ptr noundef %82, i32 noundef -1, i32 noundef 8) #14
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %90

97:                                               ; preds = %94, %85, %22, %13
  %98 = phi ptr [ %14, %13 ], [ %82, %94 ], [ %82, %85 ], [ %14, %22 ]
  store i32 65535, ptr %98, align 4
  br label %99

99:                                               ; preds = %97, %81, %80, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_deactivate_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msi_domain_free_irqs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 14, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msi_device_data, ptr %4, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %5) #14
  tail call void @msi_domain_free_irqs_descs_locked(ptr noundef %0, ptr noundef %1)
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.msi_device_data, ptr %6, i32 0, i32 4
  store i32 65535, ptr %7, align 4
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.msi_device_data, ptr %8, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %9) #14
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @msi_get_domain_info(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xa_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_device_add_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @msi_domain_ops_get_hwirq(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.msi_alloc_info, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msi_domain_ops_init(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readnone %4) #0 {
  %6 = getelementptr inbounds %struct.msi_domain_info, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msi_domain_info, ptr %1, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef %7, ptr noundef %9) #14
  %11 = getelementptr inbounds %struct.msi_domain_info, ptr %1, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.msi_domain_info, ptr %1, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  tail call void @__irq_set_handler(i32 noundef %2, ptr noundef nonnull %12, i32 noundef 0, ptr noundef nonnull %16) #14
  %19 = getelementptr inbounds %struct.msi_domain_info, ptr %1, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @irq_set_handler_data(i32 noundef %2, ptr noundef nonnull %20) #14
  br label %24

24:                                               ; preds = %22, %18, %14, %5
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @msi_domain_ops_check(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #9 {
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @msi_domain_ops_prepare(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #10 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @msi_domain_ops_set_desc(ptr nocapture noundef writeonly %0, ptr noundef %1) #11 {
  store ptr %1, ptr %0, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_handler_data(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msi_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msi_domain_info, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %7, ptr noundef %3) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !16
  %12 = call ptr @__irq_resolve_mapping(ptr noundef %0, i32 noundef %11, ptr noundef nonnull %5) #14
  %13 = icmp eq ptr %12, null
  %14 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %17, label %56

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 9
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #14
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %56, label %24

24:                                               ; preds = %21, %17
  %25 = icmp eq i32 %2, 0
  br i1 %25, label %56, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.msi_domain_ops, ptr %9, i32 0, i32 1
  br label %28

28:                                               ; preds = %53, %26
  %29 = phi i32 [ 0, %26 ], [ %54, %53 ]
  %30 = load ptr, ptr %27, align 4
  %31 = add i32 %29, %1
  %32 = add i32 %29, %11
  %33 = call i32 %30(ptr noundef %0, ptr noundef %7, i32 noundef %31, i32 noundef %32, ptr noundef %3) #14
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.msi_domain_ops, ptr %9, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = icmp ne ptr %37, null
  %39 = add i32 %29, -1
  %40 = icmp sgt i32 %39, 0
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %52

42:                                               ; preds = %35
  %43 = add i32 %39, %1
  call void %37(ptr noundef %0, ptr noundef %7, i32 noundef %43) #14
  %44 = add i32 %29, -2
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %46, %42
  %47 = phi i32 [ %50, %46 ], [ %44, %42 ]
  %48 = load ptr, ptr %36, align 4
  %49 = add i32 %47, %1
  call void %48(ptr noundef %0, ptr noundef %7, i32 noundef %49) #14
  %50 = add i32 %47, -1
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %46, label %52

52:                                               ; preds = %46, %42, %35
  call void @irq_domain_free_irqs_top(ptr noundef %0, i32 noundef %1, i32 noundef %2) #14
  br label %56

53:                                               ; preds = %28
  %54 = add nuw i32 %29, 1
  %55 = icmp eq i32 %54, %2
  br i1 %55, label %56, label %28

56:                                               ; preds = %53, %52, %24, %21, %4
  %57 = phi i32 [ %33, %52 ], [ -17, %4 ], [ %22, %21 ], [ 0, %24 ], [ 0, %53 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msi_domain_free(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msi_domain_info, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msi_domain_ops, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ne ptr %9, null
  %11 = icmp ne i32 %2, 0
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  tail call void %9(ptr noundef %0, ptr noundef %5, i32 noundef %1) #14
  %14 = icmp eq i32 %2, 1
  br i1 %14, label %23, label %15

15:                                               ; preds = %15, %13
  %16 = phi i32 [ %21, %15 ], [ 1, %13 ]
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr inbounds %struct.msi_domain_ops, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = add i32 %16, %1
  tail call void %19(ptr noundef %0, ptr noundef %5, i32 noundef %20) #14
  %21 = add nuw i32 %16, 1
  %22 = icmp eq i32 %21, %2
  br i1 %22, label %23, label %15

23:                                               ; preds = %15, %13, %3
  tail call void @irq_domain_free_irqs_top(ptr noundef %0, i32 noundef %1, i32 noundef %2) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msi_domain_activate(ptr nocapture noundef readnone %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
  %4 = alloca [2 x %struct.msi_msg], align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false)
  %5 = call i32 @irq_chip_compose_msi_msg(ptr noundef %1, ptr noundef nonnull %4) #14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7, !prof !12

7:                                                ; preds = %3
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/irq/msi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 515, 0\0A.popsection", ""() #14, !srcloc !17
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.irq_data, ptr %1, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.irq_domain, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 64
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.msi_domain_info, ptr %12, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.irq_chip, ptr %18, i32 0, i32 33
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 128
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %16, %8
  %24 = getelementptr inbounds %struct.msi_msg, ptr %4, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.msi_msg, ptr %4, i32 1, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.msi_msg, ptr %4, i32 1, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35, !prof !12

35:                                               ; preds = %31, %27, %23
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 479, i32 noundef 9, ptr noundef null) #14
  br label %36

36:                                               ; preds = %35, %31, %16
  %37 = getelementptr inbounds %struct.irq_data, ptr %1, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.irq_chip, ptr %38, i32 0, i32 25
  %40 = load ptr, ptr %39, align 4
  call void %40(ptr noundef %1, ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msi_domain_deactivate(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = alloca [2 x %struct.msi_msg], align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  %4 = getelementptr inbounds %struct.irq_data, ptr %1, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 25
  %7 = load ptr, ptr %6, align 4
  call void %7(ptr noundef %1, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_top(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_activate_irq(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msi_mode_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @pci_bus_type
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 833
  %9 = load i40, ptr %8, align 1
  %10 = and i40 %9, 8192
  %11 = icmp eq i40 %10, 0
  %12 = select i1 %11, ptr @.str.7, ptr @.str.6
  br label %13

13:                                               ; preds = %7, %3
  %14 = phi ptr [ %12, %7 ], [ @.str.7, %3 ]
  %15 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.5, ptr noundef nonnull %14) #14
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_add_file_to_group(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_from_group(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }

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
!8 = !{i64 2149235461}
!9 = !{i64 2149231285}
!10 = !{i64 2149231360, i64 2149231387, i64 2149231434, i64 2149231456, i64 2149231484, i64 2149231504}
!11 = !{i64 2149258464}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2153395453, i64 2153395934, i64 2153395490, i64 2153395546, i64 2153395580, i64 2153395604, i64 2153395645, i64 2153395666, i64 2153395694, i64 2153395728}
!15 = !{i64 2153397686, i64 2153398167, i64 2153397723, i64 2153397779, i64 2153397813, i64 2153397837, i64 2153397878, i64 2153397899, i64 2153397927, i64 2153397961}
!16 = !{!"auto-init"}
!17 = !{i64 2153396514, i64 2153396995, i64 2153396551, i64 2153396607, i64 2153396641, i64 2153396665, i64 2153396706, i64 2153396727, i64 2153396755, i64 2153396789}
