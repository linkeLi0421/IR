; ModuleID = '/llk/IR/kernel/irq/irqdesc.c_pt.bc'
source_filename = "../kernel/irq/irqdesc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nr_irqs:\09\09\09\09\09"
module asm "\09.asciz \09\22nr_irqs\22\09\09\09\09\09"
module asm "__kstrtabns_nr_irqs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_handle_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_handle_irq\22\09\09\09\09\09"
module asm "__kstrtabns_generic_handle_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_handle_domain_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_handle_domain_irq\22\09\09\09\09\09"
module asm "__kstrtabns_generic_handle_domain_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_free_descs:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_free_descs\22\09\09\09\09\09"
module asm "__kstrtabns_irq_free_descs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___irq_alloc_descs:\09\09\09\09\09"
module asm "\09.asciz \09\22__irq_alloc_descs\22\09\09\09\09\09"
module asm "__kstrtabns___irq_alloc_descs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_get_percpu_devid_partition:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_get_percpu_devid_partition\22\09\09\09\09\09"
module asm "__kstrtabns_irq_get_percpu_devid_partition:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type {}
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.sysfs_ops = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.kernel_stat = type { i32, [10 x i32] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.irq_affinity_desc = type { %struct.cpumask, i8 }
%struct.irqaction = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, [12 x i8] }

@__setup_str_irq_affinity_setup = internal constant [13 x i8] c"irqaffinity=\00", section ".init.rodata", align 1
@__setup_irq_affinity_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_irq_affinity_setup, ptr @irq_affinity_setup, i32 0 }, section ".init.setup", align 4
@nr_irqs = dso_local global i32 16, align 4
@__kstrtab_nr_irqs = external dso_local constant [0 x i8], align 1
@__kstrtabns_nr_irqs = external dso_local constant [0 x i8], align 1
@__ksymtab_nr_irqs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nr_irqs to i32), ptr @__kstrtab_nr_irqs, ptr @__kstrtabns_nr_irqs }, section "___ksymtab_gpl+nr_irqs", align 4
@__initcall__kmod_irqdesc__171_331_irq_sysfs_init2 = internal global ptr @irq_sysfs_init, section ".initcall2.init", align 4
@irq_desc_tree = internal global %struct.xarray { %struct.spinlock zeroinitializer, i32 3264, ptr null }, align 4
@sparse_irq_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @sparse_irq_lock, i64 12), ptr getelementptr (i8, ptr @sparse_irq_lock, i64 12) } }, align 4
@.str = private unnamed_addr constant [51 x i8] c"\016NR_IRQS: %d, nr_irqs: %d, preallocated irqs: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"kernel/irq/irqdesc.c\00", align 1
@allocated_irqs = internal global [257 x i32] zeroinitializer, align 4
@__kstrtab_generic_handle_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_handle_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_handle_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_handle_irq to i32), ptr @__kstrtab_generic_handle_irq, ptr @__kstrtabns_generic_handle_irq }, section "___ksymtab_gpl+generic_handle_irq", align 4
@generic_handle_domain_irq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_generic_handle_domain_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_handle_domain_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_handle_domain_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_handle_domain_irq to i32), ptr @__kstrtab_generic_handle_domain_irq, ptr @__kstrtabns_generic_handle_domain_irq }, section "___ksymtab_gpl+generic_handle_domain_irq", align 4
@generic_handle_domain_nmi.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_irq_free_descs = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_free_descs = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_free_descs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_free_descs to i32), ptr @__kstrtab_irq_free_descs, ptr @__kstrtabns_irq_free_descs }, section "___ksymtab_gpl+irq_free_descs", align 4
@__kstrtab___irq_alloc_descs = external dso_local constant [0 x i8], align 1
@__kstrtabns___irq_alloc_descs = external dso_local constant [0 x i8], align 1
@__ksymtab___irq_alloc_descs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__irq_alloc_descs to i32), ptr @__kstrtab___irq_alloc_descs, ptr @__kstrtabns___irq_alloc_descs }, section "___ksymtab_gpl+__irq_alloc_descs", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@__kstrtab_irq_get_percpu_devid_partition = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_get_percpu_devid_partition = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_get_percpu_devid_partition = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_get_percpu_devid_partition to i32), ptr @__kstrtab_irq_get_percpu_devid_partition, ptr @__kstrtabns_irq_get_percpu_devid_partition }, section "___ksymtab_gpl+irq_get_percpu_devid_partition", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@irq_default_affinity = external dso_local global [1 x %struct.cpumask], align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@kernel_kobj = external dso_local local_unnamed_addr global ptr, align 4
@irq_kobj_base = internal unnamed_addr global ptr null, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"\014Failed to add kobject for irq %d\0A\00", align 1
@alloc_desc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"&desc->request_mutex\00", align 1
@irq_kobj_type = internal global %struct.kobj_type { ptr @irq_kobj_release, ptr @kobj_sysfs_ops, ptr null, ptr @irq_groups, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@no_irq_chip = external dso_local global %struct.irq_chip, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@kobj_sysfs_ops = external dso_local constant %struct.sysfs_ops, align 4
@irq_groups = internal global [2 x ptr] [ptr @irq_group, ptr null], align 4
@irq_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @irq_attrs, ptr null }, align 4
@irq_attrs = internal global [8 x ptr] [ptr @per_cpu_count_attr, ptr @chip_name_attr, ptr @hwirq_attr, ptr @type_attr, ptr @wakeup_attr, ptr @name_attr, ptr @actions_attr, ptr null], align 4
@per_cpu_count_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @per_cpu_count_show, ptr null }, align 4
@chip_name_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.11, i16 292 }, ptr @chip_name_show, ptr null }, align 4
@hwirq_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.13, i16 292 }, ptr @hwirq_show, ptr null }, align 4
@type_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.15, i16 292 }, ptr @type_show, ptr null }, align 4
@wakeup_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.18, i16 292 }, ptr @wakeup_show, ptr null }, align 4
@name_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.21, i16 292 }, ptr @name_show, ptr null }, align 4
@actions_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.22, i16 292 }, ptr @actions_show, ptr null }, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"per_cpu_count\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%s%u\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"chip_name\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"hwirq\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"edge\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"wakeup\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"actions\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@kstat = external dso_local global %struct.kernel_stat, section ".data..percpu", align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__initcall__kmod_irqdesc__171_331_irq_sysfs_init2, ptr @__ksymtab___irq_alloc_descs, ptr @__ksymtab_generic_handle_domain_irq, ptr @__ksymtab_generic_handle_irq, ptr @__ksymtab_irq_free_descs, ptr @__ksymtab_irq_get_percpu_devid_partition, ptr @__ksymtab_nr_irqs, ptr @__setup_irq_affinity_setup], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @irq_affinity_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call i32 @bitmap_parselist(ptr noundef %0, ptr noundef nonnull @irq_default_affinity, i32 noundef 16) #12
  %3 = tail call ptr @llvm.thread.pointer() #12
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  tail call void @_set_bit(i32 noundef %5, ptr noundef nonnull @irq_default_affinity) #12
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @irq_sysfs_init() #0 section ".init.text" {
  tail call void @mutex_lock(ptr noundef nonnull @sparse_irq_lock) #12
  %1 = load ptr, ptr @kernel_kobj, align 4
  %2 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.2, ptr noundef %1) #12
  store ptr %2, ptr @irq_kobj_base, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %0
  %5 = tail call ptr @radix_tree_lookup(ptr noundef nonnull @irq_desc_tree, i32 noundef 0) #12
  %6 = load i32, ptr @nr_irqs, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %21, %4
  %9 = phi i32 [ %22, %21 ], [ 0, %4 ]
  %10 = phi ptr [ %23, %21 ], [ %5, %4 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr @irq_kobj_base, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.irq_desc, ptr %10, i32 0, i32 29
  %17 = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %16, ptr noundef nonnull %13, ptr noundef nonnull @.str.3, i32 noundef %9) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %9) #13
  br label %21

21:                                               ; preds = %19, %15, %12, %8
  %22 = add nuw nsw i32 %9, 1
  %23 = tail call ptr @radix_tree_lookup(ptr noundef nonnull @irq_desc_tree, i32 noundef %22) #12
  %24 = load i32, ptr @nr_irqs, align 4
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %8, label %26

26:                                               ; preds = %21, %4, %0
  %27 = phi i32 [ -12, %0 ], [ 0, %4 ], [ 0, %21 ]
  tail call void @mutex_unlock(ptr noundef nonnull @sparse_irq_lock) #12
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @irq_to_desc(i32 noundef %0) local_unnamed_addr #1 {
  %2 = tail call ptr @radix_tree_lookup(ptr noundef nonnull @irq_desc_tree, i32 noundef %0) #12
  ret ptr %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_lock_sparse() local_unnamed_addr #1 {
  tail call void @mutex_lock(ptr noundef nonnull @sparse_irq_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_unlock_sparse() local_unnamed_addr #1 {
  tail call void @mutex_unlock(ptr noundef nonnull @sparse_irq_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @early_irq_init() local_unnamed_addr #0 section ".init.text" {
  %1 = load i32, ptr @irq_default_affinity, align 4
  %2 = and i32 %1, 65535
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 -1, ptr @irq_default_affinity, align 4
  br label %5

5:                                                ; preds = %4, %0
  %6 = tail call i32 @arch_probe_nr_irqs() #12
  %7 = load i32, ptr @nr_irqs, align 4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 16, i32 noundef %7, i32 noundef %6) #13
  %9 = load i32, ptr @nr_irqs, align 4
  %10 = icmp sgt i32 %9, 8212
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 533, i32 noundef 9, ptr noundef null) #12
  store i32 8212, ptr @nr_irqs, align 4
  br label %12

12:                                               ; preds = %11, %5
  %13 = phi i32 [ %9, %5 ], [ 8212, %11 ]
  %14 = icmp sgt i32 %6, 8212
  br i1 %14, label %15, label %17, !prof !9

15:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 536, i32 noundef 9, ptr noundef null) #12
  %16 = load i32, ptr @nr_irqs, align 4
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi i32 [ %16, %15 ], [ %13, %12 ]
  %19 = tail call i32 @llvm.smin.i32(i32 %6, i32 8212)
  %20 = icmp sgt i32 %19, %18
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 %19, ptr @nr_irqs, align 4
  br label %22

22:                                               ; preds = %21, %17
  %23 = icmp sgt i32 %6, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %22
  %25 = call i32 @llvm.smax.i32(i32 %19, i32 1)
  br label %26

26:                                               ; preds = %26, %24
  %27 = phi i32 [ %30, %26 ], [ 0, %24 ]
  %28 = tail call fastcc ptr @alloc_desc(i32 noundef %27, i32 noundef 0, ptr noundef null, ptr noundef null)
  tail call void @_set_bit(i32 noundef %27, ptr noundef nonnull @allocated_irqs) #12
  %29 = tail call i32 @radix_tree_insert(ptr noundef nonnull @irq_desc_tree, i32 noundef %27, ptr noundef %28) #12
  %30 = add nuw nsw i32 %27, 1
  %31 = icmp eq i32 %30, %25
  br i1 %31, label %32, label %26

32:                                               ; preds = %26, %22
  %33 = tail call i32 @arch_early_irq_init() #12
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_probe_nr_irqs() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @alloc_desc(i32 noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef %3) unnamed_addr #1 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 256) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %61, label %8

8:                                                ; preds = %4
  %9 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #15
  %10 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 2
  store ptr %9, ptr %10, align 8
  %11 = icmp eq ptr %9, null
  br i1 %11, label %60, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.irq_common_data, ptr %6, i32 0, i32 3
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.irq_common_data, ptr %6, i32 0, i32 4
  store i32 0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 15
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 30
  tail call void @__mutex_init(ptr noundef %16, ptr noundef nonnull @.str.5, ptr noundef nonnull @alloc_desc.__key) #12
  %17 = getelementptr inbounds %struct.irq_common_data, ptr %6, i32 0, i32 1
  store ptr null, ptr %17, align 4
  %18 = getelementptr inbounds %struct.irq_common_data, ptr %6, i32 0, i32 2
  store ptr null, ptr %18, align 8
  %19 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 1, i32 3
  store ptr %6, ptr %19, align 4
  %20 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 1, i32 1
  store i32 %0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 1, i32 4
  store ptr @no_irq_chip, ptr %21, align 8
  %22 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 1, i32 7
  store ptr null, ptr %22, align 4
  %23 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, -2096912
  %26 = or i32 %25, 3072
  store i32 %26, ptr %23, align 4
  %27 = load i32, ptr %6, align 8
  %28 = or i32 %27, 196608
  store i32 %28, ptr %6, align 8
  %29 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 3
  store ptr @handle_bad_irq, ptr %29, align 4
  %30 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 7
  store i32 1, ptr %30, align 4
  %31 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 10
  store i32 0, ptr %31, align 8
  %32 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 12
  store i32 0, ptr %32, align 32
  %33 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 9
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 33
  store ptr null, ptr %34, align 16
  %35 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 32
  store ptr %3, ptr %35, align 4
  %36 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #16
  %37 = load i32, ptr @nr_cpu_ids, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %39, %12
  %40 = phi i32 [ %47, %39 ], [ %36, %12 ]
  %41 = load ptr, ptr %10, align 8
  %42 = ptrtoint ptr %41 to i32
  %43 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, %42
  %46 = inttoptr i32 %45 to ptr
  store i32 0, ptr %46, align 4
  %47 = tail call i32 @cpumask_next(i32 noundef %40, ptr noundef nonnull @__cpu_possible_mask) #16
  %48 = load i32, ptr @nr_cpu_ids, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %39, label %50

50:                                               ; preds = %39
  %51 = load ptr, ptr %19, align 4
  br label %52

52:                                               ; preds = %50, %12
  %53 = phi ptr [ %51, %50 ], [ %6, %12 ]
  %54 = icmp eq ptr %2, null
  %55 = select i1 %54, ptr @irq_default_affinity, ptr %2
  %56 = load i32, ptr %55, align 4
  store i32 %56, ptr %13, align 4
  %57 = load i32, ptr %53, align 4
  %58 = or i32 %57, %1
  store i32 %58, ptr %53, align 4
  %59 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 29
  tail call void @kobject_init(ptr noundef %59, ptr noundef nonnull @irq_kobj_type) #12
  br label %61

60:                                               ; preds = %8
  tail call void @kfree(ptr noundef nonnull %6) #12
  br label %61

61:                                               ; preds = %60, %52, %4
  %62 = phi ptr [ null, %60 ], [ %6, %52 ], [ null, %4 ]
  ret ptr %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_early_irq_init() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @handle_irq_desc(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @llvm.thread.pointer() #12
  %5 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %6 = load volatile i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  tail call void %8(ptr noundef nonnull %0) #12
  br label %9

9:                                                ; preds = %3, %1
  %10 = phi i32 [ 0, %3 ], [ -22, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @generic_handle_irq(i32 noundef %0) #1 {
  %2 = tail call ptr @radix_tree_lookup(ptr noundef nonnull @irq_desc_tree, i32 noundef %0) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #12
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef nonnull %2) #12
  br label %10

10:                                               ; preds = %4, %1
  %11 = phi i32 [ 0, %4 ], [ -22, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @generic_handle_domain_irq(ptr noundef %0, i32 noundef %1) #1 {
  %3 = tail call ptr @llvm.thread.pointer() #12
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 983040
  %7 = icmp eq i32 %6, 0
  %8 = load i1, ptr @generic_handle_domain_irq.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %2
  store i1 true, ptr @generic_handle_domain_irq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 679, i32 noundef 9, ptr noundef null) #12
  br label %12

12:                                               ; preds = %11, %2
  %13 = tail call ptr @__irq_resolve_mapping(ptr noundef %0, i32 noundef %1, ptr noundef null) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load volatile i32, ptr %4, align 4
  %17 = getelementptr inbounds %struct.irq_desc, ptr %13, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  tail call void %18(ptr noundef nonnull %13) #12
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i32 [ 0, %15 ], [ -22, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @generic_handle_domain_nmi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = tail call ptr @llvm.thread.pointer() #12
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 15728640
  %7 = icmp eq i32 %6, 0
  %8 = load i1, ptr @generic_handle_domain_nmi.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %2
  store i1 true, ptr @generic_handle_domain_nmi.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 697, i32 noundef 9, ptr noundef null) #12
  br label %12

12:                                               ; preds = %11, %2
  %13 = tail call ptr @__irq_resolve_mapping(ptr noundef %0, i32 noundef %1, ptr noundef null) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load volatile i32, ptr %4, align 4
  %17 = getelementptr inbounds %struct.irq_desc, ptr %13, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  tail call void %18(ptr noundef nonnull %13) #12
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i32 [ 0, %15 ], [ -22, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_free_descs(i32 noundef %0, i32 noundef %1) #1 {
  %3 = load i32, ptr @nr_irqs, align 4
  %4 = icmp ule i32 %3, %0
  %5 = add i32 %1, %0
  %6 = icmp ugt i32 %5, %3
  %7 = or i1 %4, %6
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @sparse_irq_lock) #12
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %18, %8
  %11 = phi i32 [ %21, %18 ], [ 0, %8 ]
  %12 = add i32 %11, %0
  %13 = tail call ptr @radix_tree_lookup(ptr noundef nonnull @irq_desc_tree, i32 noundef %12) #12
  tail call void @unregister_irq_proc(i32 noundef %12, ptr noundef %13) #12
  %14 = load ptr, ptr @irq_kobj_base, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.irq_desc, ptr %13, i32 0, i32 29
  tail call void @kobject_del(ptr noundef %17) #12
  br label %18

18:                                               ; preds = %16, %10
  %19 = tail call ptr @radix_tree_delete(ptr noundef nonnull @irq_desc_tree, i32 noundef %12) #12
  %20 = getelementptr inbounds %struct.irq_desc, ptr %13, i32 0, i32 28
  tail call void @call_rcu(ptr noundef %20, ptr noundef nonnull @delayed_free_desc) #12
  %21 = add nuw i32 %11, 1
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %23, label %10

23:                                               ; preds = %18, %8
  tail call void @__bitmap_clear(ptr noundef nonnull @allocated_irqs, i32 noundef %0, i32 noundef %1) #12
  tail call void @mutex_unlock(ptr noundef nonnull @sparse_irq_lock) #12
  br label %24

24:                                               ; preds = %23, %2
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__irq_alloc_descs(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #4 section ".ref.text" {
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %89, label %8

8:                                                ; preds = %6
  %9 = icmp sgt i32 %0, -1
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = icmp ugt i32 %1, %0
  br i1 %11, label %89, label %14

12:                                               ; preds = %8
  %13 = tail call i32 @arch_dynirq_lower_bound(i32 noundef %1) #12
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %13, %12 ], [ %0, %10 ]
  tail call void @mutex_lock(ptr noundef nonnull @sparse_irq_lock) #12
  %16 = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef nonnull @allocated_irqs, i32 noundef 8212, i32 noundef %15, i32 noundef %2, i32 noundef 0, i32 noundef 0) #12
  %17 = xor i1 %9, true
  %18 = icmp eq i32 %16, %0
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %20, label %87

20:                                               ; preds = %14
  %21 = add i32 %16, %2
  %22 = load i32, ptr @nr_irqs, align 4
  %23 = icmp ugt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = icmp ugt i32 %21, 8212
  br i1 %25, label %87, label %26

26:                                               ; preds = %24
  store i32 %21, ptr @nr_irqs, align 4
  br label %27

27:                                               ; preds = %26, %20
  %28 = icmp eq ptr %5, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %30, %27
  br label %39

30:                                               ; preds = %33
  %31 = add nuw i32 %34, 1
  %32 = icmp eq i32 %31, %2
  br i1 %32, label %29, label %33

33:                                               ; preds = %30, %27
  %34 = phi i32 [ %31, %30 ], [ 0, %27 ]
  %35 = getelementptr %struct.irq_affinity_desc, ptr %5, i32 %34
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %87, label %30

39:                                               ; preds = %70, %29
  %40 = phi i32 [ %71, %70 ], [ 0, %29 ]
  %41 = phi ptr [ %52, %70 ], [ %5, %29 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.irq_affinity_desc, ptr %41, i32 0, i32 1
  %45 = load i8, ptr %44, align 4
  %46 = and i8 %45, 1
  %47 = icmp eq i8 %46, 0
  %48 = select i1 %47, i32 0, i32 10485760
  %49 = tail call i32 @_find_first_bit_le(ptr noundef nonnull %41, i32 noundef 16) #12
  %50 = getelementptr %struct.irq_affinity_desc, ptr %41, i32 1
  br label %51

51:                                               ; preds = %43, %39
  %52 = phi ptr [ %50, %43 ], [ null, %39 ]
  %53 = phi i32 [ %48, %43 ], [ 0, %39 ]
  %54 = add i32 %40, %16
  %55 = tail call fastcc ptr @alloc_desc(i32 noundef %54, i32 noundef %53, ptr noundef %41, ptr noundef %4) #12
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = add i32 %40, -1
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %74, label %87

60:                                               ; preds = %51
  %61 = tail call i32 @radix_tree_insert(ptr noundef nonnull @irq_desc_tree, i32 noundef %54, ptr noundef nonnull %55) #12
  %62 = load ptr, ptr @irq_kobj_base, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.irq_desc, ptr %55, i32 0, i32 29
  %66 = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %65, ptr noundef nonnull %62, ptr noundef nonnull @.str.3, i32 noundef %54) #12
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %54) #13
  br label %70

70:                                               ; preds = %68, %64, %60
  %71 = add nuw i32 %40, 1
  %72 = icmp eq i32 %71, %2
  br i1 %72, label %73, label %39

73:                                               ; preds = %70
  tail call void @__bitmap_set(ptr noundef nonnull @allocated_irqs, i32 noundef %16, i32 noundef %2) #12
  br label %87

74:                                               ; preds = %82, %57
  %75 = phi i32 [ %85, %82 ], [ %58, %57 ]
  %76 = add i32 %75, %16
  %77 = tail call ptr @radix_tree_lookup(ptr noundef nonnull @irq_desc_tree, i32 noundef %76) #12
  tail call void @unregister_irq_proc(i32 noundef %76, ptr noundef %77) #12
  %78 = load ptr, ptr @irq_kobj_base, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.irq_desc, ptr %77, i32 0, i32 29
  tail call void @kobject_del(ptr noundef %81) #12
  br label %82

82:                                               ; preds = %80, %74
  %83 = tail call ptr @radix_tree_delete(ptr noundef nonnull @irq_desc_tree, i32 noundef %76) #12
  %84 = getelementptr inbounds %struct.irq_desc, ptr %77, i32 0, i32 28
  tail call void @call_rcu(ptr noundef %84, ptr noundef nonnull @delayed_free_desc) #12
  %85 = add i32 %75, -1
  %86 = icmp sgt i32 %85, -1
  br i1 %86, label %74, label %87

87:                                               ; preds = %82, %73, %57, %33, %24, %14
  %88 = phi i32 [ -17, %14 ], [ -12, %24 ], [ %16, %73 ], [ -12, %57 ], [ -12, %82 ], [ -22, %33 ]
  tail call void @mutex_unlock(ptr noundef nonnull @sparse_irq_lock) #12
  br label %89

89:                                               ; preds = %87, %10, %6
  %90 = phi i32 [ %88, %87 ], [ -22, %6 ], [ -22, %10 ]
  ret i32 %90
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_dynirq_lower_bound(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_get_next_irq(i32 noundef %0) local_unnamed_addr #1 {
  %2 = load i32, ptr @nr_irqs, align 4
  %3 = tail call i32 @_find_next_bit_le(ptr noundef nonnull @allocated_irqs, i32 noundef %2, i32 noundef %0) #12
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__irq_get_desc_lock(i32 noundef %0, ptr nocapture noundef writeonly %1, i1 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = tail call ptr @radix_tree_lookup(ptr noundef nonnull @irq_desc_tree, i32 noundef %0) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %4
  %8 = and i32 %3, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %7
  %11 = and i32 %3, 2
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 131072
  %16 = icmp eq i32 %15, 0
  br i1 %12, label %18, label %17

17:                                               ; preds = %10
  br i1 %16, label %31, label %19

18:                                               ; preds = %10
  br i1 %16, label %19, label %31

19:                                               ; preds = %18, %17, %7
  br i1 %2, label %20, label %28

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 1, i32 4
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.irq_chip, ptr %22, i32 0, i32 15
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26, !prof !10

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 1
  tail call void %24(ptr noundef %27) #12
  br label %28

28:                                               ; preds = %26, %20, %19
  %29 = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 15
  %30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %29) #12
  store i32 %30, ptr %1, align 4
  br label %31

31:                                               ; preds = %28, %18, %17, %4
  %32 = phi ptr [ null, %17 ], [ null, %18 ], [ %5, %28 ], [ null, %4 ]
  ret ptr %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__irq_put_desc_unlock(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %1) #12
  br i1 %2, label %5, label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 16
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11, !prof !10

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %9(ptr noundef %12) #12
  br label %13

13:                                               ; preds = %11, %5, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_set_percpu_devid_partition(i32 noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = tail call ptr @radix_tree_lookup(ptr noundef nonnull @irq_desc_tree, i32 noundef %0) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 16
  %7 = load ptr, ptr %6, align 16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %5
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 4) #14
  store ptr %11, ptr %6, align 16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = icmp eq ptr %1, null
  %15 = select i1 %14, ptr @__cpu_possible_mask, ptr %1
  %16 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 17
  store ptr %15, ptr %16, align 4
  tail call void @irq_modify_status(i32 noundef %0, i32 noundef 0, i32 noundef 202240) #12
  br label %17

17:                                               ; preds = %13, %9, %5, %2
  %18 = phi i32 [ 0, %13 ], [ -22, %2 ], [ -22, %5 ], [ -12, %9 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_set_percpu_devid(i32 noundef %0) local_unnamed_addr #1 {
  %2 = tail call ptr @radix_tree_lookup(ptr noundef nonnull @irq_desc_tree, i32 noundef %0) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 16
  %6 = load ptr, ptr %5, align 16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 4) #14
  store ptr %10, ptr %5, align 16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 17
  store ptr @__cpu_possible_mask, ptr %13, align 4
  tail call void @irq_modify_status(i32 noundef %0, i32 noundef 0, i32 noundef 202240) #12
  br label %14

14:                                               ; preds = %12, %8, %4, %1
  %15 = phi i32 [ 0, %12 ], [ -22, %1 ], [ -22, %4 ], [ -12, %8 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_get_percpu_devid_partition(i32 noundef %0, ptr noundef writeonly %1) #1 {
  %3 = tail call ptr @radix_tree_lookup(ptr noundef nonnull @irq_desc_tree, i32 noundef %0) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 16
  %7 = load ptr, ptr %6, align 16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = icmp eq ptr %1, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %1, align 4
  br label %15

15:                                               ; preds = %11, %9, %5, %2
  %16 = phi i32 [ -22, %5 ], [ -22, %2 ], [ 0, %11 ], [ 0, %9 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kstat_incr_irq_this_cpu(i32 noundef %0) local_unnamed_addr #1 {
  %2 = tail call ptr @radix_tree_lookup(ptr noundef nonnull @irq_desc_tree, i32 noundef %0) #12
  %3 = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %7 = inttoptr i32 %6 to ptr
  %8 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %7) #10, !srcloc !11
  %9 = add i32 %8, %5
  %10 = inttoptr i32 %9 to ptr
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 4
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #10, !srcloc !11
  %16 = add i32 %15, ptrtoint (ptr @kstat to i32)
  %17 = inttoptr i32 %16 to ptr
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 9
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kstat_irqs_cpu(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = tail call ptr @radix_tree_lookup(ptr noundef nonnull @irq_desc_tree, i32 noundef %0) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = ptrtoint ptr %7 to i32
  %11 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, %10
  %14 = inttoptr i32 %13 to ptr
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %9, %5, %2
  %17 = phi i32 [ %15, %9 ], [ 0, %5 ], [ 0, %2 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kstat_irqs_usr(i32 noundef %0) local_unnamed_addr #1 {
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %2 = tail call ptr @radix_tree_lookup(ptr noundef nonnull @irq_desc_tree, i32 noundef %0) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %38, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %38, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 131584
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 6
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 8192
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 9
  %20 = load i32, ptr %19, align 4
  br label %38

21:                                               ; preds = %13, %8
  %22 = load i32, ptr @nr_cpu_ids, align 4
  %23 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #16
  %24 = icmp ult i32 %23, %22
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = ptrtoint ptr %6 to i32
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i32 [ %23, %25 ], [ %36, %27 ]
  %29 = phi i32 [ 0, %25 ], [ %35, %27 ]
  %30 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, %26
  %33 = inttoptr i32 %32 to ptr
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %29
  %36 = tail call i32 @cpumask_next(i32 noundef %28, ptr noundef nonnull @__cpu_possible_mask) #16
  %37 = icmp ult i32 %36, %22
  br i1 %37, label %27, label %38

38:                                               ; preds = %27, %21, %18, %4, %1
  %39 = phi i32 [ %20, %18 ], [ 0, %4 ], [ 0, %1 ], [ 0, %21 ], [ %35, %27 ]
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_parselist(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_add(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @irq_kobj_release(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -176
  %3 = getelementptr i8, ptr %0, i32 -120
  %4 = load ptr, ptr %3, align 8
  tail call void @free_percpu(ptr noundef %4) #12
  tail call void @kfree(ptr noundef %2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @per_cpu_count_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #1 {
  %4 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #16
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %45

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -120
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = ptrtoint ptr %9 to i32
  %13 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %12
  %16 = inttoptr i32 %15 to ptr
  %17 = load i32, ptr %16, align 4
  br label %18

18:                                               ; preds = %11, %7
  %19 = phi i32 [ %17, %11 ], [ 0, %7 ]
  %20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i32 noundef %19) #12
  %21 = tail call i32 @cpumask_next(i32 noundef %4, ptr noundef nonnull @__cpu_possible_mask) #16
  %22 = load i32, ptr @nr_cpu_ids, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %36, %18
  %25 = phi i32 [ %42, %36 ], [ %21, %18 ]
  %26 = phi i32 [ %41, %36 ], [ %20, %18 ]
  %27 = load ptr, ptr %8, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = ptrtoint ptr %27 to i32
  %31 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %30
  %34 = inttoptr i32 %33 to ptr
  %35 = load i32, ptr %34, align 4
  br label %36

36:                                               ; preds = %29, %24
  %37 = phi i32 [ %35, %29 ], [ 0, %24 ]
  %38 = getelementptr i8, ptr %2, i32 %26
  %39 = sub i32 4096, %26
  %40 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %38, i32 noundef %39, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %37) #12
  %41 = add i32 %40, %26
  %42 = tail call i32 @cpumask_next(i32 noundef %25, ptr noundef nonnull @__cpu_possible_mask) #16
  %43 = load i32, ptr @nr_cpu_ids, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %24, label %45, !llvm.loop !14

45:                                               ; preds = %36, %18, %3
  %46 = phi i32 [ 0, %3 ], [ %20, %18 ], [ %41, %36 ]
  %47 = getelementptr i8, ptr %2, i32 %46
  %48 = sub i32 4096, %46
  %49 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %47, i32 noundef %48, ptr noundef nonnull @.str.10) #12
  %50 = add i32 %49, %46
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @chip_name_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 -68
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #12
  %5 = getelementptr i8, ptr %0, i32 -136
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.12, ptr noundef nonnull %10) #12
  br label %14

14:                                               ; preds = %12, %8, %3
  %15 = phi i32 [ %13, %12 ], [ 0, %8 ], [ 0, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %16 = load i16, ptr %4, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !18
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !20
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hwirq_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 -68
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #12
  %5 = getelementptr i8, ptr %0, i32 -132
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -144
  %10 = load i32, ptr %9, align 8
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %10)
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi i32 [ %11, %8 ], [ 0, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %14 = load i16, ptr %4, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !18
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !20
  ret i32 %13
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @type_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 -68
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #12
  %5 = getelementptr i8, ptr %0, i32 -140
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 8192
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, ptr @.str.17, ptr @.str.16
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.12, ptr noundef nonnull %10)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %12 = load i16, ptr %4, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !18
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !20
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wakeup_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 -68
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #12
  %5 = getelementptr i8, ptr %0, i32 -140
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 16384
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, ptr @.str.20, ptr @.str.19
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.12, ptr noundef nonnull %10)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %12 = load i16, ptr %4, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !18
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !20
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @name_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 -68
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #12
  %5 = getelementptr i8, ptr %0, i32 64
  %6 = load ptr, ptr %5, align 16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.12, ptr noundef nonnull %6) #12
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi i32 [ %9, %8 ], [ 0, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %12 = load i16, ptr %4, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !18
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !20
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @actions_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 -68
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #12
  %5 = getelementptr i8, ptr %0, i32 -112
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.irqaction, ptr %6, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.7, ptr noundef %10) #12
  %12 = getelementptr inbounds %struct.irqaction, ptr %6, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %15, %8
  %16 = phi ptr [ %25, %15 ], [ %13, %8 ]
  %17 = phi i32 [ %23, %15 ], [ %11, %8 ]
  %18 = getelementptr i8, ptr %2, i32 %17
  %19 = sub i32 4096, %17
  %20 = getelementptr inbounds %struct.irqaction, ptr %16, i32 0, i32 11
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %18, i32 noundef %19, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.9, ptr noundef %21) #12
  %23 = add i32 %22, %17
  %24 = getelementptr inbounds %struct.irqaction, ptr %16, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %15, !llvm.loop !21

27:                                               ; preds = %15, %8, %3
  %28 = phi i32 [ 0, %3 ], [ %11, %8 ], [ %23, %15 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %29 = load i16, ptr %4, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !18
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !20
  %31 = icmp eq i32 %28, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = getelementptr i8, ptr %2, i32 %28
  %34 = sub i32 4096, %28
  %35 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %33, i32 noundef %34, ptr noundef nonnull @.str.10) #12
  %36 = add i32 %35, %28
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi i32 [ %36, %32 ], [ 0, %27 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_irq_proc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @delayed_free_desc(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 8
  tail call void @kobject_put(ptr noundef %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_delete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_next_zero_area_off(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readonly willreturn }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 640393}
!12 = !{i64 2149355765}
!13 = !{i64 2149355982}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.peeled.count", i32 1}
!16 = !{i64 2148884619}
!17 = !{i64 2148880443}
!18 = !{i64 2148880518, i64 2148880545, i64 2148880592, i64 2148880614, i64 2148880642, i64 2148880662}
!19 = !{i64 621938}
!20 = !{i64 2148908763}
!21 = distinct !{!21, !15}
