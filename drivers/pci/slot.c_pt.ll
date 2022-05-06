; ModuleID = '/llk/IR/drivers/pci/slot.c_pt.bc'
source_filename = "../drivers/pci/slot.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_slots_kset:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_slots_kset\22\09\09\09\09\09"
module asm "__kstrtabns_pci_slots_kset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_create_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_create_slot\22\09\09\09\09\09"
module asm "__kstrtabns_pci_create_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_destroy_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_destroy_slot\22\09\09\09\09\09"
module asm "__kstrtabns_pci_destroy_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.sysfs_ops = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.pci_slot_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.pci_slot = type { ptr, %struct.list_head, ptr, i8, %struct.kobject }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, ptr }

@pci_slots_kset = dso_local global ptr null, align 4
@__kstrtab_pci_slots_kset = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_slots_kset = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_slots_kset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_slots_kset to i32), ptr @__kstrtab_pci_slots_kset, ptr @__kstrtabns_pci_slots_kset }, section "___ksymtab_gpl+pci_slots_kset", align 4
@pci_slot_mutex = external dso_local global %struct.mutex, align 4
@pci_slot_ktype = internal global %struct.kobj_type { ptr @pci_slot_release, ptr @pci_slot_sysfs_ops, ptr null, ptr @pci_slot_default_groups, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@pci_bus_sem = external dso_local global %struct.rw_semaphore, align 4
@__kstrtab_pci_create_slot = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_create_slot = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_create_slot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_create_slot to i32), ptr @__kstrtab_pci_create_slot, ptr @__kstrtabns_pci_create_slot }, section "___ksymtab_gpl+pci_create_slot", align 4
@__kstrtab_pci_destroy_slot = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_destroy_slot = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_destroy_slot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_destroy_slot to i32), ptr @__kstrtab_pci_destroy_slot, ptr @__kstrtabns_pci_destroy_slot }, section "___ksymtab_gpl+pci_destroy_slot", align 4
@__initcall__kmod_slot__228_381_pci_slot_init4 = internal global ptr @pci_slot_init, section ".initcall4.init", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@pci_slot_sysfs_ops = internal constant %struct.sysfs_ops { ptr @pci_slot_attr_show, ptr @pci_slot_attr_store }, align 4
@pci_slot_default_groups = internal global [2 x ptr] [ptr @pci_slot_default_group, ptr null], align 4
@pci_slot_default_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pci_slot_default_attrs, ptr null }, align 4
@pci_slot_default_attrs = internal global [4 x ptr] [ptr @pci_slot_attr_address, ptr @pci_slot_attr_max_speed, ptr @pci_slot_attr_cur_speed, ptr null], align 4
@pci_slot_attr_address = internal global %struct.pci_slot_attribute { %struct.attribute { ptr @.str.2, i16 292 }, ptr @address_read_file, ptr null }, align 4
@pci_slot_attr_max_speed = internal global %struct.pci_slot_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @max_speed_read_file, ptr null }, align 4
@pci_slot_attr_cur_speed = internal global %struct.pci_slot_attribute { %struct.attribute { ptr @.str.7, i16 292 }, ptr @cur_speed_read_file, ptr null }, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"address\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%04x:%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"%04x:%02x:%02x\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"max_bus_speed\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"cur_bus_speed\00", align 1
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"slots\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"\013PCI: Slot initialization failure\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__initcall__kmod_slot__228_381_pci_slot_init4, ptr @__ksymtab_pci_create_slot, ptr @__ksymtab_pci_destroy_slot, ptr @__ksymtab_pci_slots_kset], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_dev_assign_slot(ptr nocapture noundef %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @pci_slot_mutex) #7
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %24, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 3
  %11 = and i32 %10, 31
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 5
  br label %13

13:                                               ; preds = %21, %7
  %14 = phi ptr [ %5, %7 ], [ %22, %21 ]
  %15 = getelementptr i8, ptr %14, i32 12
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i32
  %18 = icmp eq i32 %11, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = getelementptr i8, ptr %14, i32 -4
  store ptr %20, ptr %12, align 8
  br label %21

21:                                               ; preds = %19, %13
  %22 = load ptr, ptr %14, align 4
  %23 = icmp eq ptr %22, %4
  br i1 %23, label %24, label %13

24:                                               ; preds = %21, %1
  tail call void @mutex_unlock(ptr noundef nonnull @pci_slot_mutex) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_create_slot(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef readnone %3) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @pci_slot_mutex) #7
  %5 = icmp eq i32 %1, -1
  br i1 %5, label %40, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 5
  br label %8

8:                                                ; preds = %12, %6
  %9 = phi ptr [ %7, %6 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %40, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %10, i32 12
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %8

17:                                               ; preds = %12
  %18 = getelementptr i8, ptr %10, i32 -4
  %19 = getelementptr i8, ptr %10, i32 16
  %20 = tail call ptr @kobject_get(ptr noundef %19) #7
  %21 = icmp eq ptr %18, null
  br i1 %21, label %40, label %22

22:                                               ; preds = %17
  %23 = icmp eq ptr %3, null
  br i1 %23, label %79, label %24

24:                                               ; preds = %22
  %25 = getelementptr i8, ptr %10, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load ptr, ptr %19, align 4
  %30 = tail call i32 @strcmp(ptr noundef %29, ptr noundef %2) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %79, label %32

32:                                               ; preds = %28
  %33 = tail call fastcc ptr @make_slot_name(ptr noundef %2) #7
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = tail call i32 @kobject_rename(ptr noundef %19, ptr noundef nonnull %33) #7
  tail call void @kfree(ptr noundef nonnull %33) #7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %79, label %38

38:                                               ; preds = %35, %32, %24
  %39 = phi i32 [ -16, %24 ], [ %36, %35 ], [ -12, %32 ]
  tail call void @kobject_put(ptr noundef %19) #7
  br label %82

40:                                               ; preds = %17, %8, %4
  %41 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %42 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3520, i32 noundef 56) #8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %82, label %44

44:                                               ; preds = %40
  store ptr %0, ptr %42, align 8
  %45 = trunc i32 %1 to i8
  %46 = getelementptr inbounds %struct.pci_slot, ptr %42, i32 0, i32 3
  store i8 %45, ptr %46, align 8
  %47 = load ptr, ptr @pci_slots_kset, align 4
  %48 = getelementptr inbounds %struct.pci_slot, ptr %42, i32 0, i32 4
  %49 = getelementptr inbounds %struct.pci_slot, ptr %42, i32 0, i32 4, i32 3
  store ptr %47, ptr %49, align 4
  %50 = tail call fastcc ptr @make_slot_name(ptr noundef %2)
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  tail call void @kfree(ptr noundef nonnull %42) #7
  br label %82

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.pci_slot, ptr %42, i32 0, i32 1
  store volatile ptr %54, ptr %54, align 4
  %55 = getelementptr inbounds %struct.pci_slot, ptr %42, i32 0, i32 1, i32 1
  %56 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 5
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  store ptr %54, ptr %58, align 4
  store ptr %57, ptr %54, align 4
  store ptr %56, ptr %55, align 8
  store volatile ptr %54, ptr %56, align 4
  %59 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %48, ptr noundef nonnull @pci_slot_ktype, ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull %50) #7
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %53
  tail call void @kobject_put(ptr noundef %48) #7
  br label %82

62:                                               ; preds = %53
  tail call void @down_read(ptr noundef nonnull @pci_bus_sem) #7
  %63 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, %63
  br i1 %65, label %78, label %66

66:                                               ; preds = %75, %62
  %67 = phi ptr [ %76, %75 ], [ %64, %62 ]
  %68 = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 6
  %69 = load i32, ptr %68, align 4
  %70 = lshr i32 %69, 3
  %71 = and i32 %70, 31
  %72 = icmp eq i32 %71, %1
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 5
  store ptr %42, ptr %74, align 8
  br label %75

75:                                               ; preds = %73, %66
  %76 = load ptr, ptr %67, align 4
  %77 = icmp eq ptr %76, %63
  br i1 %77, label %78, label %66

78:                                               ; preds = %75, %62
  tail call void @up_read(ptr noundef nonnull @pci_bus_sem) #7
  br label %79

79:                                               ; preds = %82, %78, %35, %28, %22
  %80 = phi ptr [ %83, %82 ], [ %50, %78 ], [ null, %35 ], [ null, %22 ], [ null, %28 ]
  %81 = phi ptr [ %85, %82 ], [ %42, %78 ], [ %18, %35 ], [ %18, %22 ], [ %18, %28 ]
  tail call void @kfree(ptr noundef %80) #7
  tail call void @mutex_unlock(ptr noundef nonnull @pci_slot_mutex) #7
  ret ptr %81

82:                                               ; preds = %61, %52, %40, %38
  %83 = phi ptr [ %50, %61 ], [ null, %52 ], [ null, %38 ], [ null, %40 ]
  %84 = phi i32 [ %59, %61 ], [ -12, %52 ], [ %39, %38 ], [ -12, %40 ]
  %85 = inttoptr i32 %84 to ptr
  br label %79
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @make_slot_name(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call noalias ptr @kstrdup(ptr noundef %0, i32 noundef 3264) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @strlen(ptr noundef %0)
  %6 = load ptr, ptr @pci_slots_kset, align 4
  %7 = tail call ptr @kset_find_obj(ptr noundef %6, ptr noundef nonnull %2) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %4
  %10 = add i32 %5, 2
  br label %11

11:                                               ; preds = %23, %9
  %12 = phi ptr [ %30, %23 ], [ %7, %9 ]
  %13 = phi i32 [ %27, %23 ], [ 1, %9 ]
  %14 = phi i32 [ %26, %23 ], [ 1, %9 ]
  %15 = phi i32 [ %25, %23 ], [ %10, %9 ]
  %16 = phi ptr [ %24, %23 ], [ %2, %9 ]
  tail call void @kobject_put(ptr noundef nonnull %12) #7
  %17 = icmp eq i32 %13, %14
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = add i32 %15, 1
  %20 = mul i32 %13, 10
  tail call void @kfree(ptr noundef %16) #7
  %21 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %19, i32 noundef 3264) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %18, %11
  %24 = phi ptr [ %21, %18 ], [ %16, %11 ]
  %25 = phi i32 [ %19, %18 ], [ %15, %11 ]
  %26 = phi i32 [ %20, %18 ], [ %14, %11 ]
  %27 = add i32 %13, 1
  %28 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %24, ptr noundef nonnull @.str.1, ptr noundef %0, i32 noundef %13)
  %29 = load ptr, ptr @pci_slots_kset, align 4
  %30 = tail call ptr @kset_find_obj(ptr noundef %29, ptr noundef %24) #7
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %11

32:                                               ; preds = %23, %18, %4, %1
  %33 = phi ptr [ null, %1 ], [ %2, %4 ], [ %24, %23 ], [ null, %18 ]
  ret ptr %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_destroy_slot(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @pci_slot_mutex) #7
  %2 = getelementptr inbounds %struct.pci_slot, ptr %0, i32 0, i32 4
  tail call void @kobject_put(ptr noundef %2) #7
  tail call void @mutex_unlock(ptr noundef nonnull @pci_slot_mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_slot_init() #0 {
  %1 = tail call ptr @bus_get_kset(ptr noundef nonnull @pci_bus_type) #7
  %2 = getelementptr inbounds %struct.kset, ptr %1, i32 0, i32 2
  %3 = tail call ptr @kset_create_and_add(ptr noundef nonnull @.str.8, ptr noundef null, ptr noundef %2) #7
  store ptr %3, ptr @pci_slots_kset, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #10
  br label %7

7:                                                ; preds = %5, %0
  %8 = phi i32 [ -12, %5 ], [ 0, %0 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_rename(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kset_find_obj(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_slot_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -20
  tail call void @down_read(ptr noundef nonnull @pci_bus_sem) #7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %27, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -4
  br label %9

9:                                                ; preds = %22, %7
  %10 = phi ptr [ %3, %7 ], [ %23, %22 ]
  %11 = phi ptr [ %5, %7 ], [ %24, %22 ]
  %12 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 3
  %15 = and i32 %14, 31
  %16 = load i8, ptr %8, align 4
  %17 = zext i8 %16 to i32
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 5
  store ptr null, ptr %20, align 8
  %21 = load ptr, ptr %2, align 4
  br label %22

22:                                               ; preds = %19, %9
  %23 = phi ptr [ %10, %9 ], [ %21, %19 ]
  %24 = load ptr, ptr %11, align 4
  %25 = getelementptr inbounds %struct.pci_bus, ptr %23, i32 0, i32 3
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %27, label %9

27:                                               ; preds = %22, %1
  tail call void @up_read(ptr noundef nonnull @pci_bus_sem) #7
  %28 = getelementptr i8, ptr %0, i32 -16
  %29 = getelementptr i8, ptr %0, i32 -12
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %28, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %30, ptr %32, align 4
  store volatile ptr %31, ptr %30, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %28, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %29, align 4
  tail call void @kfree(ptr noundef %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_slot_attr_show(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.pci_slot_attribute, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -20
  %9 = tail call i32 %5(ptr noundef %8, ptr noundef %2) #7
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ %9, %7 ], [ -5, %3 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_slot_attr_store(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.pci_slot_attribute, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 -20
  %10 = tail call i32 %6(ptr noundef %9, ptr noundef %2, i32 noundef %3) #7
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi i32 [ %10, %8 ], [ -5, %4 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @address_read_file(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pci_slot, ptr %0, i32 0, i32 3
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, -1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.pci_bus, ptr %6, i32 0, i32 16
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.pci_bus, ptr %6, i32 0, i32 12
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  br i1 %5, label %12, label %14

12:                                               ; preds = %2
  %13 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %8, i32 noundef %11) #7
  br label %17

14:                                               ; preds = %2
  %15 = zext i8 %4 to i32
  %16 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %8, i32 noundef %11, i32 noundef %15) #7
  br label %17

17:                                               ; preds = %14, %12
  %18 = phi i32 [ %13, %12 ], [ %16, %14 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max_speed_read_file(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 14
  %5 = load i8, ptr %4, align 2
  %6 = zext i8 %5 to i32
  %7 = tail call ptr @pci_speed_string(i32 noundef %6) #7
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef %7) #7
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_speed_string(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cur_speed_read_file(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 15
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = tail call ptr @pci_speed_string(i32 noundef %6) #7
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef %7) #7
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bus_get_kset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kset_create_and_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }

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
