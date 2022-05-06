; ModuleID = '/llk/IR/drivers/amba/bus.c_pt.bc'
source_filename = "../drivers/amba/bus.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_amba_bustype:\09\09\09\09\09"
module asm "\09.asciz \09\22amba_bustype\22\09\09\09\09\09"
module asm "__kstrtabns_amba_bustype:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_amba_device_add:\09\09\09\09\09"
module asm "\09.asciz \09\22amba_device_add\22\09\09\09\09\09"
module asm "__kstrtabns_amba_device_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_amba_device_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22amba_device_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_amba_device_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_amba_device_put:\09\09\09\09\09"
module asm "\09.asciz \09\22amba_device_put\22\09\09\09\09\09"
module asm "__kstrtabns_amba_device_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_amba_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22amba_driver_register\22\09\09\09\09\09"
module asm "__kstrtabns_amba_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_amba_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22amba_driver_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_amba_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_amba_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22amba_device_register\22\09\09\09\09\09"
module asm "__kstrtabns_amba_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_amba_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22amba_device_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_amba_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_amba_find_device:\09\09\09\09\09"
module asm "\09.asciz \09\22amba_find_device\22\09\09\09\09\09"
module asm "__kstrtabns_amba_find_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_amba_request_regions:\09\09\09\09\09"
module asm "\09.asciz \09\22amba_request_regions\22\09\09\09\09\09"
module asm "__kstrtabns_amba_request_regions:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_amba_release_regions:\09\09\09\09\09"
module asm "\09.asciz \09\22amba_release_regions\22\09\09\09\09\09"
module asm "__kstrtabns_amba_release_regions:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }
%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_id = type { i32, i32, ptr }
%struct.deferred_device = type { ptr, ptr, %struct.list_head }
%struct.find_data = type { ptr, ptr, ptr, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"amba\00", align 1
@amba_dev_groups = internal global [2 x ptr] [ptr @amba_dev_group, ptr null], align 4
@amba_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_generic_suspend, ptr @pm_generic_resume, ptr @pm_generic_freeze, ptr @pm_generic_thaw, ptr @pm_generic_poweroff, ptr @pm_generic_restore, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @amba_pm_runtime_suspend, ptr @amba_pm_runtime_resume, ptr null }, align 4
@amba_bustype = dso_local global %struct.bus_type { ptr @.str, ptr null, ptr null, ptr null, ptr @amba_dev_groups, ptr null, ptr @amba_match, ptr @amba_uevent, ptr @amba_probe, ptr null, ptr @amba_remove, ptr @amba_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @platform_dma_configure, ptr @amba_pm, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@__kstrtab_amba_bustype = external dso_local constant [0 x i8], align 1
@__kstrtabns_amba_bustype = external dso_local constant [0 x i8], align 1
@__ksymtab_amba_bustype = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @amba_bustype to i32), ptr @__kstrtab_amba_bustype, ptr @__kstrtabns_amba_bustype }, section "___ksymtab_gpl+amba_bustype", align 4
@__initcall__kmod_bus__248_354_amba_init2 = internal global ptr @amba_init, section ".initcall2.init", align 4
@__initcall__kmod_bus__249_543_amba_deferred_retry7 = internal global ptr @amba_deferred_retry, section ".initcall7.init", align 4
@deferred_devices_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @deferred_devices_lock, i64 12), ptr getelementptr (i8, ptr @deferred_devices_lock, i64 12) } }, align 4
@deferred_devices = internal global %struct.list_head { ptr @deferred_devices, ptr @deferred_devices }, align 4
@deferred_retry_work = internal global %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @deferred_retry_work, i64 4), ptr getelementptr (i8, ptr @deferred_retry_work, i64 4) }, ptr @amba_deferred_retry_func }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152 }, ptr null, i32 0 }, align 4
@__kstrtab_amba_device_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_amba_device_add = external dso_local constant [0 x i8], align 1
@__ksymtab_amba_device_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @amba_device_add to i32), ptr @__kstrtab_amba_device_add, ptr @__kstrtabns_amba_device_add }, section "___ksymtab_gpl+amba_device_add", align 4
@__kstrtab_amba_device_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_amba_device_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_amba_device_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @amba_device_alloc to i32), ptr @__kstrtab_amba_device_alloc, ptr @__kstrtabns_amba_device_alloc }, section "___ksymtab_gpl+amba_device_alloc", align 4
@__kstrtab_amba_device_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_amba_device_put = external dso_local constant [0 x i8], align 1
@__ksymtab_amba_device_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @amba_device_put to i32), ptr @__kstrtab_amba_device_put, ptr @__kstrtabns_amba_device_put }, section "___ksymtab_gpl+amba_device_put", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@__kstrtab_amba_driver_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_amba_driver_register = external dso_local constant [0 x i8], align 1
@__ksymtab_amba_driver_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @amba_driver_register to i32), ptr @__kstrtab_amba_driver_register, ptr @__kstrtabns_amba_driver_register }, section "___ksymtab+amba_driver_register", align 4
@__kstrtab_amba_driver_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_amba_driver_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_amba_driver_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @amba_driver_unregister to i32), ptr @__kstrtab_amba_driver_unregister, ptr @__kstrtabns_amba_driver_unregister }, section "___ksymtab+amba_driver_unregister", align 4
@__kstrtab_amba_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_amba_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab_amba_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @amba_device_register to i32), ptr @__kstrtab_amba_device_register, ptr @__kstrtabns_amba_device_register }, section "___ksymtab+amba_device_register", align 4
@__kstrtab_amba_device_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_amba_device_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_amba_device_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @amba_device_unregister to i32), ptr @__kstrtab_amba_device_unregister, ptr @__kstrtabns_amba_device_unregister }, section "___ksymtab+amba_device_unregister", align 4
@__kstrtab_amba_find_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_amba_find_device = external dso_local constant [0 x i8], align 1
@__ksymtab_amba_find_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @amba_find_device to i32), ptr @__kstrtab_amba_find_device, ptr @__kstrtabns_amba_find_device }, section "___ksymtab+amba_find_device", align 4
@__kstrtab_amba_request_regions = external dso_local constant [0 x i8], align 1
@__kstrtabns_amba_request_regions = external dso_local constant [0 x i8], align 1
@__ksymtab_amba_request_regions = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @amba_request_regions to i32), ptr @__kstrtab_amba_request_regions, ptr @__kstrtabns_amba_request_regions }, section "___ksymtab+amba_request_regions", align 4
@__kstrtab_amba_release_regions = external dso_local constant [0 x i8], align 1
@__kstrtabns_amba_release_regions = external dso_local constant [0 x i8], align 1
@__ksymtab_amba_release_regions = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @amba_release_regions to i32), ptr @__kstrtab_amba_release_regions, ptr @__kstrtabns_amba_release_regions }, section "___ksymtab+amba_release_regions", align 4
@amba_dev_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @amba_dev_attrs, ptr null }, align 4
@amba_dev_attrs = internal global [4 x ptr] [ptr @dev_attr_id, ptr @dev_attr_resource, ptr @dev_attr_driver_override, ptr null], align 4
@dev_attr_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292 }, ptr @id_show, ptr null }, align 4
@dev_attr_resource = internal global %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292 }, ptr @resource_show, ptr null }, align 4
@dev_attr_driver_override = internal global %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 420 }, ptr @driver_override_show, ptr @driver_override_store }, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"resource\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"\09%016llx\09%016llx\09%016lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"driver_override\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"AMBA_ID=%08x\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"MODALIAS=amba:d%08X\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"apb_pclk\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"can't get reset: %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @__initcall__kmod_bus__248_354_amba_init2, ptr @__initcall__kmod_bus__249_543_amba_deferred_retry7, ptr @__ksymtab_amba_bustype, ptr @__ksymtab_amba_device_add, ptr @__ksymtab_amba_device_alloc, ptr @__ksymtab_amba_device_put, ptr @__ksymtab_amba_device_register, ptr @__ksymtab_amba_device_unregister, ptr @__ksymtab_amba_driver_register, ptr @__ksymtab_amba_driver_unregister, ptr @__ksymtab_amba_find_device, ptr @__ksymtab_amba_release_regions, ptr @__ksymtab_amba_request_regions], section "llvm.metadata"

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @amba_match(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 4
  %8 = tail call i32 @strcmp(ptr noundef nonnull %4, ptr noundef %7)
  %9 = icmp eq i32 %8, 0
  br label %57

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.amba_driver, ptr %1, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 5
  %14 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 6
  %15 = getelementptr inbounds %struct.amba_id, ptr %12, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %54, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 4
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 6, i32 2
  br label %22

22:                                               ; preds = %49, %18
  %23 = phi i32 [ %16, %18 ], [ %52, %49 ]
  %24 = phi ptr [ %12, %18 ], [ %50, %49 ]
  %25 = and i32 %23, %20
  %26 = load i32, ptr %24, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %22
  %29 = load i32, ptr %13, align 4
  %30 = icmp eq i32 %29, -1325035507
  br i1 %30, label %31, label %54

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.amba_id, ptr %24, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %54, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.amba_cs_uci_id, ptr %33, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %35
  %40 = load i32, ptr %21, align 8
  %41 = getelementptr inbounds %struct.amba_cs_uci_id, ptr %33, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32, ptr %14, align 8
  %46 = and i32 %45, %37
  %47 = load i32, ptr %33, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %44, %39, %22
  %50 = getelementptr %struct.amba_id, ptr %24, i32 1
  %51 = getelementptr %struct.amba_id, ptr %24, i32 1, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %22

54:                                               ; preds = %49, %44, %35, %31, %28, %10
  %55 = phi ptr [ null, %10 ], [ %24, %44 ], [ %24, %28 ], [ null, %49 ], [ %24, %35 ], [ %24, %31 ]
  %56 = icmp ne ptr %55, null
  br label %57

57:                                               ; preds = %54, %6
  %58 = phi i1 [ %9, %6 ], [ %56, %54 ]
  %59 = zext i1 %58 to i32
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @amba_uevent(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef %4) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 8
  %9 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.8, i32 noundef %8) #10
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ %9, %7 ], [ %5, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @amba_probe(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.amba_driver, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 5
  %7 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 6
  %8 = getelementptr inbounds %struct.amba_id, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %47, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 6, i32 2
  br label %15

15:                                               ; preds = %42, %11
  %16 = phi i32 [ %9, %11 ], [ %45, %42 ]
  %17 = phi ptr [ %5, %11 ], [ %43, %42 ]
  %18 = and i32 %16, %13
  %19 = load i32, ptr %17, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %15
  %22 = load i32, ptr %6, align 4
  %23 = icmp eq i32 %22, -1325035507
  br i1 %23, label %24, label %47

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.amba_id, ptr %17, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %47, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.amba_cs_uci_id, ptr %26, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr %14, align 8
  %34 = getelementptr inbounds %struct.amba_cs_uci_id, ptr %26, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32, ptr %7, align 8
  %39 = and i32 %38, %30
  %40 = load i32, ptr %26, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %37, %32, %15
  %43 = getelementptr %struct.amba_id, ptr %17, i32 1
  %44 = getelementptr %struct.amba_id, ptr %17, i32 1, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %15

47:                                               ; preds = %42, %37, %28, %24, %21, %1
  %48 = phi ptr [ null, %1 ], [ %17, %37 ], [ %17, %21 ], [ null, %42 ], [ %17, %28 ], [ %17, %24 ]
  %49 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %50 = load ptr, ptr %49, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %117, label %52

52:                                               ; preds = %47
  %53 = tail call i32 @of_irq_get(ptr noundef nonnull %50, i32 noundef 0) #10
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = icmp eq i32 %53, -517
  br i1 %56, label %159, label %57

57:                                               ; preds = %55, %52
  %58 = phi i32 [ %53, %52 ], [ 0, %55 ]
  %59 = getelementptr %struct.amba_device, ptr %0, i32 0, i32 7, i32 0
  store i32 %58, ptr %59, align 4
  %60 = tail call i32 @of_irq_get(ptr noundef nonnull %50, i32 noundef 1) #10
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = icmp eq i32 %60, -517
  br i1 %63, label %159, label %64

64:                                               ; preds = %62, %57
  %65 = phi i32 [ %60, %57 ], [ 0, %62 ]
  %66 = getelementptr %struct.amba_device, ptr %0, i32 0, i32 7, i32 1
  store i32 %65, ptr %66, align 4
  %67 = tail call i32 @of_irq_get(ptr noundef nonnull %50, i32 noundef 2) #10
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = icmp eq i32 %67, -517
  br i1 %70, label %159, label %71

71:                                               ; preds = %69, %64
  %72 = phi i32 [ %67, %64 ], [ 0, %69 ]
  %73 = getelementptr %struct.amba_device, ptr %0, i32 0, i32 7, i32 2
  store i32 %72, ptr %73, align 4
  %74 = tail call i32 @of_irq_get(ptr noundef nonnull %50, i32 noundef 3) #10
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = icmp eq i32 %74, -517
  br i1 %77, label %159, label %78

78:                                               ; preds = %76, %71
  %79 = phi i32 [ %74, %71 ], [ 0, %76 ]
  %80 = getelementptr %struct.amba_device, ptr %0, i32 0, i32 7, i32 3
  store i32 %79, ptr %80, align 4
  %81 = tail call i32 @of_irq_get(ptr noundef nonnull %50, i32 noundef 4) #10
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = icmp eq i32 %81, -517
  br i1 %84, label %159, label %85

85:                                               ; preds = %83, %78
  %86 = phi i32 [ %81, %78 ], [ 0, %83 ]
  %87 = getelementptr %struct.amba_device, ptr %0, i32 0, i32 7, i32 4
  store i32 %86, ptr %87, align 4
  %88 = tail call i32 @of_irq_get(ptr noundef nonnull %50, i32 noundef 5) #10
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = icmp eq i32 %88, -517
  br i1 %91, label %159, label %92

92:                                               ; preds = %90, %85
  %93 = phi i32 [ %88, %85 ], [ 0, %90 ]
  %94 = getelementptr %struct.amba_device, ptr %0, i32 0, i32 7, i32 5
  store i32 %93, ptr %94, align 4
  %95 = tail call i32 @of_irq_get(ptr noundef nonnull %50, i32 noundef 6) #10
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = icmp eq i32 %95, -517
  br i1 %98, label %159, label %99

99:                                               ; preds = %97, %92
  %100 = phi i32 [ %95, %92 ], [ 0, %97 ]
  %101 = getelementptr %struct.amba_device, ptr %0, i32 0, i32 7, i32 6
  store i32 %100, ptr %101, align 4
  %102 = tail call i32 @of_irq_get(ptr noundef nonnull %50, i32 noundef 7) #10
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = icmp eq i32 %102, -517
  br i1 %105, label %159, label %106

106:                                              ; preds = %104, %99
  %107 = phi i32 [ %102, %99 ], [ 0, %104 ]
  %108 = getelementptr %struct.amba_device, ptr %0, i32 0, i32 7, i32 7
  store i32 %107, ptr %108, align 4
  %109 = tail call i32 @of_irq_get(ptr noundef nonnull %50, i32 noundef 8) #10
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = icmp eq i32 %109, -517
  br i1 %112, label %159, label %113

113:                                              ; preds = %111, %106
  %114 = phi i32 [ %109, %106 ], [ 0, %111 ]
  %115 = getelementptr %struct.amba_device, ptr %0, i32 0, i32 7, i32 8
  store i32 %114, ptr %115, align 4
  %116 = load ptr, ptr %49, align 8
  br label %117

117:                                              ; preds = %113, %47
  %118 = phi ptr [ %116, %113 ], [ null, %47 ]
  %119 = tail call i32 @of_clk_set_defaults(ptr noundef %118, i1 noundef zeroext false) #10
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %159, label %121

121:                                              ; preds = %117
  %122 = tail call i32 @dev_pm_domain_attach(ptr noundef %0, i1 noundef zeroext true) #10
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %159

124:                                              ; preds = %121
  %125 = tail call ptr @clk_get(ptr noundef %0, ptr noundef nonnull @.str.9) #10
  %126 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 2
  store ptr %125, ptr %126, align 8
  %127 = icmp ugt ptr %125, inttoptr (i32 -4096 to ptr)
  br i1 %127, label %138, label %128

128:                                              ; preds = %124
  %129 = tail call i32 @clk_prepare(ptr noundef %125) #10
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = tail call i32 @clk_enable(ptr noundef %125) #10
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %131
  tail call void @clk_unprepare(ptr noundef %125) #10
  br label %135

135:                                              ; preds = %134, %128
  %136 = phi i32 [ %132, %134 ], [ %129, %128 ]
  %137 = load ptr, ptr %126, align 8
  tail call void @clk_put(ptr noundef %137) #10
  br label %157

138:                                              ; preds = %124
  %139 = ptrtoint ptr %125 to i32
  br label %157

140:                                              ; preds = %131
  %141 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %141) #10, !srcloc !8
  %142 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %141, ptr %141, i32 1, ptr elementtype(i32) %141) #10, !srcloc !9
  %143 = tail call i32 @__pm_runtime_set_status(ptr noundef %0, i32 noundef 0) #10
  tail call void @pm_runtime_enable(ptr noundef %0) #10
  %144 = getelementptr inbounds %struct.amba_driver, ptr %3, i32 0, i32 1
  %145 = load ptr, ptr %144, align 4
  %146 = tail call i32 %145(ptr noundef %0, ptr noundef %48) #10
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %159, label %148

148:                                              ; preds = %140
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #10
  %149 = tail call i32 @__pm_runtime_set_status(ptr noundef %0, i32 noundef 2) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %141) #10, !srcloc !8
  %150 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %141, ptr %141, i32 0, i32 -1, ptr elementtype(i32) %141) #10, !srcloc !11
  %151 = extractvalue { i32, i32, i32 } %150, 0
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %148
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  br label %154

154:                                              ; preds = %153, %148
  %155 = load ptr, ptr %126, align 8
  tail call void @clk_disable(ptr noundef %155) #10
  tail call void @clk_unprepare(ptr noundef %155) #10
  %156 = load ptr, ptr %126, align 8
  tail call void @clk_put(ptr noundef %156) #10
  br label %157

157:                                              ; preds = %154, %138, %135
  %158 = phi i32 [ %146, %154 ], [ %136, %135 ], [ %139, %138 ]
  tail call void @dev_pm_domain_detach(ptr noundef %0, i1 noundef zeroext true) #10
  br label %159

159:                                              ; preds = %157, %140, %121, %117, %111, %104, %97, %90, %83, %76, %69, %62, %55
  %160 = phi i32 [ %119, %117 ], [ %122, %121 ], [ 0, %140 ], [ -517, %55 ], [ -517, %62 ], [ -517, %69 ], [ -517, %76 ], [ -517, %83 ], [ -517, %90 ], [ -517, %97 ], [ -517, %104 ], [ -517, %111 ], [ %158, %157 ]
  ret i32 %160
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @amba_remove(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #10
  %5 = getelementptr inbounds %struct.amba_driver, ptr %3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void %6(ptr noundef %0) #10
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #10, !srcloc !8
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 0, i32 -1, ptr elementtype(i32) %10) #10, !srcloc !11
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  br label %15

15:                                               ; preds = %14, %9
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #10
  %16 = tail call i32 @__pm_runtime_set_status(ptr noundef %0, i32 noundef 2) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #10, !srcloc !8
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 0, i32 -1, ptr elementtype(i32) %10) #10, !srcloc !11
  %18 = extractvalue { i32, i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  br label %21

21:                                               ; preds = %20, %15
  %22 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  tail call void @clk_disable(ptr noundef %23) #10
  tail call void @clk_unprepare(ptr noundef %23) #10
  %24 = load ptr, ptr %22, align 8
  tail call void @clk_put(ptr noundef %24) #10
  tail call void @dev_pm_domain_detach(ptr noundef %0, i1 noundef zeroext true) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @amba_shutdown(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.amba_driver, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void %7(ptr noundef %0) #10
  br label %10

10:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_dma_configure(ptr noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @amba_init() #3 section ".init.text" {
  %1 = tail call i32 @bus_register(ptr noundef nonnull @amba_bustype) #10
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @amba_driver_register(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.amba_driver, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 1
  store ptr @amba_bustype, ptr %6, align 4
  %7 = tail call i32 @driver_register(ptr noundef %0) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i32 [ %7, %5 ], [ -22, %1 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @amba_driver_unregister(ptr noundef %0) #1 {
  tail call void @driver_unregister(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @amba_deferred_retry() #1 {
  tail call void @mutex_lock(ptr noundef nonnull @deferred_devices_lock) #10
  %1 = load ptr, ptr @deferred_devices, align 4
  %2 = icmp eq ptr %1, @deferred_devices
  br i1 %2, label %19, label %3

3:                                                ; preds = %17, %0
  %4 = phi ptr [ %6, %17 ], [ %1, %0 ]
  %5 = getelementptr i8, ptr %4, i32 -8
  %6 = load ptr, ptr %4, align 4
  %7 = load ptr, ptr %5, align 4
  %8 = getelementptr i8, ptr %4, i32 -4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call fastcc i32 @amba_device_try_add(ptr noundef %7, ptr noundef %9)
  %11 = icmp eq i32 %10, -517
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  store volatile ptr %15, ptr %14, align 4
  store volatile ptr %4, ptr %4, align 4
  store ptr %4, ptr %13, align 4
  tail call void @kfree(ptr noundef %5) #10
  br label %17

17:                                               ; preds = %12, %3
  %18 = icmp eq ptr %6, @deferred_devices
  br i1 %18, label %19, label %3

19:                                               ; preds = %17, %0
  tail call void @mutex_unlock(ptr noundef nonnull @deferred_devices_lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @amba_device_add(ptr noundef %0, ptr noundef %1) #1 {
  %3 = tail call fastcc i32 @amba_device_try_add(ptr noundef %0, ptr noundef %1)
  %4 = icmp eq i32 %3, -517
  br i1 %4, label %5, label %20

5:                                                ; preds = %2
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 16) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %5
  store ptr %0, ptr %7, align 8
  %10 = getelementptr inbounds %struct.deferred_device, ptr %7, i32 0, i32 1
  store ptr %1, ptr %10, align 4
  tail call void @mutex_lock(ptr noundef nonnull @deferred_devices_lock) #10
  %11 = load volatile ptr, ptr @deferred_devices, align 4
  %12 = icmp eq ptr %11, @deferred_devices
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load ptr, ptr @system_wq, align 4
  %15 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %14, ptr noundef nonnull @deferred_retry_work, i32 noundef 500) #10
  br label %16

16:                                               ; preds = %13, %9
  %17 = getelementptr inbounds %struct.deferred_device, ptr %7, i32 0, i32 2
  %18 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_devices, i32 0, i32 1), align 4
  store ptr %17, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_devices, i32 0, i32 1), align 4
  store ptr @deferred_devices, ptr %17, align 8
  %19 = getelementptr inbounds %struct.deferred_device, ptr %7, i32 0, i32 2, i32 1
  store ptr %18, ptr %19, align 4
  store volatile ptr %17, ptr %18, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @deferred_devices_lock) #10
  br label %20

20:                                               ; preds = %16, %5, %2
  %21 = phi i32 [ 0, %16 ], [ %3, %2 ], [ -12, %5 ]
  ret i32 %21
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @amba_device_try_add(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 1
  %4 = tail call i32 @request_resource(ptr noundef %1, ptr noundef %3) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %116

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %107

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 1, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr %3, align 4
  %14 = add i32 %12, 1
  %15 = sub i32 %14, %13
  %16 = tail call ptr @ioremap(i32 noundef %13, i32 noundef %15) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %112, label %18

18:                                               ; preds = %10
  %19 = tail call i32 @dev_pm_domain_attach(ptr noundef %0, i1 noundef zeroext true) #10
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @iounmap(ptr noundef nonnull %16) #10
  br label %112

22:                                               ; preds = %18
  %23 = tail call ptr @clk_get(ptr noundef %0, ptr noundef nonnull @.str.9) #10
  %24 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 2
  store ptr %23, ptr %24, align 8
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = tail call i32 @clk_prepare(ptr noundef %23) #10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = tail call i32 @clk_enable(ptr noundef %23) #10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  tail call void @clk_unprepare(ptr noundef %23) #10
  br label %33

33:                                               ; preds = %32, %26
  %34 = phi i32 [ %30, %32 ], [ %27, %26 ]
  %35 = load ptr, ptr %24, align 8
  tail call void @clk_put(ptr noundef %35) #10
  br label %104

36:                                               ; preds = %22
  %37 = ptrtoint ptr %23 to i32
  br label %104

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %40 = load ptr, ptr %39, align 8
  %41 = tail call ptr @of_reset_control_array_get(ptr noundef %40, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true) #10
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = ptrtoint ptr %41 to i32
  %45 = icmp eq ptr %41, inttoptr (i32 -517 to ptr)
  br i1 %45, label %115, label %46

46:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %44) #12
  br label %115

47:                                               ; preds = %38
  %48 = tail call i32 @reset_control_deassert(ptr noundef %41) #10
  tail call void @reset_control_put(ptr noundef %41) #10
  %49 = getelementptr i8, ptr %16, i32 %15
  %50 = getelementptr i8, ptr %49, i32 -32
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #10, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %52 = getelementptr i8, ptr %50, i32 4
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #10, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %54 = shl i32 %53, 8
  %55 = and i32 %54, 65280
  %56 = getelementptr i8, ptr %50, i32 8
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #10, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %58 = shl i32 %57, 16
  %59 = and i32 %58, 16711680
  %60 = getelementptr i8, ptr %50, i32 12
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #10, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %62 = shl i32 %61, 24
  %63 = getelementptr i8, ptr %49, i32 -16
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #10, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  %65 = and i32 %64, 255
  %66 = getelementptr i8, ptr %63, i32 4
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #10, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  %68 = shl i32 %67, 8
  %69 = and i32 %68, 65280
  %70 = or i32 %69, %65
  %71 = getelementptr i8, ptr %63, i32 8
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #10, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  %73 = shl i32 %72, 16
  %74 = and i32 %73, 16711680
  %75 = or i32 %74, %70
  %76 = getelementptr i8, ptr %63, i32 12
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #10, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  %78 = shl i32 %77, 24
  %79 = or i32 %78, %75
  %80 = and i32 %51, 255
  %81 = or i32 %55, %80
  %82 = or i32 %59, %81
  %83 = or i32 %62, %82
  %84 = icmp eq i32 %79, -1325035507
  br i1 %84, label %85, label %94

85:                                               ; preds = %47
  %86 = getelementptr i8, ptr %49, i32 -4096
  %87 = getelementptr i8, ptr %86, i32 4028
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #10, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !16
  %89 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 6
  store i32 %88, ptr %89, align 8
  %90 = getelementptr i8, ptr %86, i32 4044
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #10, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !17
  %92 = and i32 %91, 255
  %93 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 6, i32 2
  store i32 %92, ptr %93, align 8
  tail call fastcc void @amba_put_disable_pclk(ptr noundef %0)
  br label %96

94:                                               ; preds = %47
  tail call fastcc void @amba_put_disable_pclk(ptr noundef %0)
  %95 = icmp eq i32 %79, -1325010931
  br i1 %95, label %96, label %98

96:                                               ; preds = %94, %85
  store i32 %83, ptr %7, align 8
  %97 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 5
  store i32 %79, ptr %97, align 4
  br label %100

98:                                               ; preds = %94
  %99 = load i32, ptr %7, align 8
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %99, %98 ], [ %83, %96 ]
  %102 = icmp eq i32 %101, 0
  %103 = select i1 %102, i32 -19, i32 0
  br label %104

104:                                              ; preds = %100, %36, %33
  %105 = phi i32 [ %37, %36 ], [ %34, %33 ], [ %103, %100 ]
  tail call void @iounmap(ptr noundef nonnull %16) #10
  tail call void @dev_pm_domain_detach(ptr noundef %0, i1 noundef zeroext true) #10
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104, %6
  %108 = tail call i32 @device_add(ptr noundef %0) #10
  br label %109

109:                                              ; preds = %115, %107
  %110 = phi i32 [ %108, %107 ], [ %44, %115 ]
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %109, %104, %21, %10
  %113 = phi i32 [ %110, %109 ], [ -12, %10 ], [ %105, %104 ], [ %19, %21 ]
  %114 = tail call i32 @release_resource(ptr noundef %3) #10
  br label %116

115:                                              ; preds = %46, %43
  tail call fastcc void @amba_put_disable_pclk(ptr noundef %0)
  tail call void @iounmap(ptr noundef nonnull %16) #10
  tail call void @dev_pm_domain_detach(ptr noundef %0, i1 noundef zeroext true) #10
  br label %109

116:                                              ; preds = %112, %109, %2
  %117 = phi i32 [ %4, %2 ], [ %113, %112 ], [ 0, %109 ]
  ret i32 %117
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @amba_device_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 584) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %3
  tail call void @device_initialize(ptr noundef nonnull %5) #10
  %8 = icmp eq ptr %0, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  %10 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %5, ptr noundef nonnull @.str.11, ptr noundef nonnull %0) #10
  br label %11

11:                                               ; preds = %9, %7
  %12 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 33
  store ptr @amba_device_release, ptr %12, align 4
  %13 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 5
  store ptr @amba_bustype, ptr %13, align 4
  %14 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 17
  %15 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 16
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.amba_device, ptr %5, i32 0, i32 3
  %17 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 20
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = load ptr, ptr %5, align 8
  br label %23

23:                                               ; preds = %21, %11
  %24 = phi ptr [ %22, %21 ], [ %19, %11 ]
  %25 = getelementptr inbounds %struct.amba_device, ptr %5, i32 0, i32 1, i32 2
  store ptr %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.amba_device, ptr %5, i32 0, i32 1
  store i32 %1, ptr %26, align 8
  %27 = add i32 %1, -1
  %28 = add i32 %27, %2
  %29 = getelementptr inbounds %struct.amba_device, ptr %5, i32 0, i32 1, i32 1
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.amba_device, ptr %5, i32 0, i32 1, i32 3
  store i32 512, ptr %30, align 4
  br label %31

31:                                               ; preds = %23, %3
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @amba_device_register(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  tail call void @device_initialize(ptr noundef %0) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull %4) #10
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 33
  store ptr @amba_device_release, ptr %9, align 4
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  store ptr @amba_bustype, ptr %10, align 4
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 17
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 16
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 3
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 20
  store ptr %13, ptr %14, align 4
  %15 = load ptr, ptr %3, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %8
  %18 = load ptr, ptr %0, align 4
  br label %19

19:                                               ; preds = %17, %8
  %20 = phi ptr [ %18, %17 ], [ %15, %8 ]
  %21 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 1, i32 2
  store ptr %20, ptr %21, align 8
  store ptr null, ptr %3, align 4
  %22 = tail call i32 @amba_device_add(ptr noundef %0, ptr noundef %1)
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @amba_device_put(ptr noundef %0) #1 {
  tail call void @put_device(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @amba_device_unregister(ptr noundef %0) #1 {
  tail call void @device_unregister(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @amba_find_device(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = alloca %struct.find_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #10
  %6 = getelementptr inbounds %struct.find_data, ptr %5, i32 0, i32 1
  store i32 0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.find_data, ptr %5, i32 0, i32 2
  store ptr %0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.find_data, ptr %5, i32 0, i32 3
  store i32 %2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.find_data, ptr %5, i32 0, i32 4
  store i32 %3, ptr %9, align 4
  %10 = call i32 @bus_for_each_dev(ptr noundef nonnull @amba_bustype, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull @amba_find_match) #10
  %11 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #10
  ret ptr %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @amba_find_match(ptr noundef %0, ptr nocapture noundef %1) #1 {
  %3 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.find_data, ptr %1, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, %4
  %8 = getelementptr inbounds %struct.find_data, ptr %1, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %7, %9
  %11 = getelementptr inbounds %struct.find_data, ptr %1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %12, %16
  %18 = and i1 %10, %17
  br label %19

19:                                               ; preds = %14, %2
  %20 = phi i1 [ %18, %14 ], [ %10, %2 ]
  %21 = getelementptr inbounds %struct.find_data, ptr %1, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load ptr, ptr %0, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi ptr [ %29, %28 ], [ %26, %24 ]
  %32 = tail call i32 @strcmp(ptr noundef %31, ptr noundef nonnull %22)
  %33 = icmp eq i32 %32, 0
  %34 = and i1 %20, %33
  br i1 %34, label %36, label %38

35:                                               ; preds = %19
  br i1 %20, label %36, label %38

36:                                               ; preds = %35, %30
  %37 = tail call ptr @get_device(ptr noundef %0) #10
  store ptr %0, ptr %1, align 4
  br label %38

38:                                               ; preds = %36, %35, %30
  %39 = phi i32 [ 0, %30 ], [ 1, %36 ], [ 0, %35 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @amba_request_regions(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi ptr [ %1, %2 ], [ %7, %4 ]
  %10 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 1, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr %10, align 4
  %14 = add i32 %12, 1
  %15 = sub i32 %14, %13
  %16 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %13, i32 noundef %15, ptr noundef %9, i32 noundef 0) #10
  %17 = icmp eq ptr %16, null
  %18 = select i1 %17, i32 -16, i32 0
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @amba_release_regions(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 1, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = load i32, ptr %2, align 4
  %6 = add i32 %4, 1
  %7 = sub i32 %6, %5
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %5, i32 noundef %7) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @id_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @resource_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 1, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 1, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.4, i64 noundef %6, i64 noundef %9, i32 noundef %11)
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @driver_override_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef %6)
  tail call void @mutex_unlock(ptr noundef %4) #10
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @driver_override_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #1 {
  %5 = icmp ugt i32 %3, 4094
  br i1 %5, label %22, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @kstrndup(ptr noundef %2, i32 noundef %3, i32 noundef 3264) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @strchr(ptr noundef nonnull %7, i32 noundef 10)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  store i8 0, ptr %10, align 1
  br label %13

13:                                               ; preds = %12, %9
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %14) #10
  %15 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = load i8, ptr %7, align 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  tail call void @kfree(ptr noundef nonnull %7) #10
  br label %20

20:                                               ; preds = %19, %13
  %21 = phi ptr [ null, %19 ], [ %7, %13 ]
  store ptr %21, ptr %15, align 4
  tail call void @mutex_unlock(ptr noundef %14) #10
  tail call void @kfree(ptr noundef %16) #10
  br label %22

22:                                               ; preds = %20, %6, %4
  %23 = phi i32 [ %3, %20 ], [ -22, %4 ], [ -12, %6 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_set_defaults(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_domain_attach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_detach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @amba_put_disable_pclk(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  tail call void @clk_disable(ptr noundef %3) #10
  tail call void @clk_unprepare(ptr noundef %3) #10
  %4 = load ptr, ptr %2, align 8
  tail call void @clk_put(ptr noundef %4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_freeze(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_thaw(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_poweroff(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_restore(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @amba_pm_runtime_suspend(ptr noundef %0) #1 {
  %2 = tail call i32 @pm_generic_runtime_suspend(ptr noundef %0) #10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %16

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %10 = load i16, ptr %9, align 8
  %11 = and i16 %10, 1024
  %12 = icmp eq i16 %11, 0
  %13 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  tail call void @clk_disable(ptr noundef %14) #10
  br i1 %12, label %15, label %16

15:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %14) #10
  br label %16

16:                                               ; preds = %15, %8, %4, %1
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @amba_pm_runtime_resume(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 1024
  %9 = icmp eq i16 %8, 0
  %10 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  br i1 %9, label %12, label %19

12:                                               ; preds = %5
  %13 = tail call i32 @clk_prepare(ptr noundef %11) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = tail call i32 @clk_enable(ptr noundef %11) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  tail call void @clk_unprepare(ptr noundef %11) #10
  br label %24

19:                                               ; preds = %5
  %20 = tail call i32 @clk_enable(ptr noundef %11) #10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %15, %1
  %23 = tail call i32 @pm_generic_runtime_resume(ptr noundef %0) #10
  br label %24

24:                                               ; preds = %22, %19, %18, %12
  %25 = phi i32 [ %23, %22 ], [ %20, %19 ], [ %16, %18 ], [ %13, %12 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_runtime_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_runtime_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_control_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @amba_deferred_retry_func(ptr nocapture noundef readnone %0) #1 {
  tail call void @mutex_lock(ptr noundef nonnull @deferred_devices_lock) #10
  %2 = load ptr, ptr @deferred_devices, align 4
  %3 = icmp eq ptr %2, @deferred_devices
  br i1 %3, label %20, label %4

4:                                                ; preds = %18, %1
  %5 = phi ptr [ %7, %18 ], [ %2, %1 ]
  %6 = getelementptr i8, ptr %5, i32 -8
  %7 = load ptr, ptr %5, align 4
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr i8, ptr %5, i32 -4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call fastcc i32 @amba_device_try_add(ptr noundef %8, ptr noundef %10) #10
  %12 = icmp eq i32 %11, -517
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 4
  store volatile ptr %16, ptr %15, align 4
  store volatile ptr %5, ptr %5, align 4
  store ptr %5, ptr %14, align 4
  tail call void @kfree(ptr noundef %6) #10
  br label %18

18:                                               ; preds = %13, %4
  %19 = icmp eq ptr %7, @deferred_devices
  br i1 %19, label %20, label %4

20:                                               ; preds = %18, %1
  tail call void @mutex_unlock(ptr noundef nonnull @deferred_devices_lock) #10
  %21 = load volatile ptr, ptr @deferred_devices, align 4
  %22 = icmp eq ptr %21, @deferred_devices
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr @system_wq, align 4
  %25 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %24, ptr noundef nonnull @deferred_retry_work, i32 noundef 500) #10
  br label %26

26:                                               ; preds = %23, %20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @amba_device_release(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 1, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 1
  %7 = tail call i32 @release_resource(ptr noundef %6) #10
  br label %8

8:                                                ; preds = %5, %1
  tail call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

attributes #0 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

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
!8 = !{i64 558029, i64 2148048000, i64 2148048026, i64 2148048073, i64 2148048095, i64 2148048123, i64 2148048143}
!9 = !{i64 2148059415, i64 2148059441, i64 2148059470, i64 2148059504, i64 2148059535, i64 2148059558}
!10 = !{i64 2148058922}
!11 = !{i64 544598, i64 544623, i64 544645, i64 544661, i64 544673, i64 544693, i64 544717, i64 544733, i64 544745}
!12 = !{i64 2148059048}
!13 = !{i64 3736038}
!14 = !{i64 2153684921}
!15 = !{i64 2153685279}
!16 = !{i64 2153685621}
!17 = !{i64 2153685952}
