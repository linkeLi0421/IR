; ModuleID = '/llk/IR/drivers/mmc/core/sdio_bus.c_pt.bc'
source_filename = "../drivers/mmc/core/sdio_bus.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdio_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22sdio_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns_sdio_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdio_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22sdio_unregister_driver\22\09\09\09\09\09"
module asm "__kstrtabns_sdio_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.sdio_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
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
%struct.mmc_card = type { ptr, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, %struct.sd_ext_reg, %struct.sd_ext_reg, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x ptr], ptr, i8, i8, i32, ptr, ptr, i32, i32, i32, ptr, [7 x %struct.mmc_part], i32, ptr }
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sd_ext_reg = type { i8, i8, i16, i8, i8, i8 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
%struct.sdio_device_id = type { i8, i16, i16, i32 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }

@sdio_bus_type = internal global %struct.bus_type { ptr @.str.1, ptr null, ptr null, ptr null, ptr @sdio_dev_groups, ptr null, ptr @sdio_bus_match, ptr @sdio_bus_uevent, ptr @sdio_bus_probe, ptr null, ptr @sdio_bus_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdio_bus_pm_ops, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@__kstrtab_sdio_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdio_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_sdio_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdio_register_driver to i32), ptr @__kstrtab_sdio_register_driver, ptr @__kstrtabns_sdio_register_driver }, section "___ksymtab_gpl+sdio_register_driver", align 4
@__kstrtab_sdio_unregister_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdio_unregister_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_sdio_unregister_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdio_unregister_driver to i32), ptr @__kstrtab_sdio_unregister_driver, ptr @__kstrtabns_sdio_unregister_driver }, section "___ksymtab_gpl+sdio_unregister_driver", align 4
@.str = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"sdio\00", align 1
@sdio_dev_groups = internal global [2 x ptr] [ptr @sdio_dev_group, ptr null], align 4
@sdio_bus_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_generic_suspend, ptr @pm_generic_resume, ptr @pm_generic_suspend, ptr @pm_generic_resume, ptr @pm_generic_suspend, ptr @pm_generic_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_generic_runtime_suspend, ptr @pm_generic_runtime_resume, ptr null }, align 4
@sdio_dev_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @sdio_dev_attrs, ptr null }, align 4
@sdio_dev_attrs = internal global [10 x ptr] [ptr @dev_attr_class, ptr @dev_attr_vendor, ptr @dev_attr_device, ptr @dev_attr_revision, ptr @dev_attr_info1, ptr @dev_attr_info2, ptr @dev_attr_info3, ptr @dev_attr_info4, ptr @dev_attr_modalias, ptr null], align 4
@dev_attr_class = internal global %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292 }, ptr @class_show, ptr null }, align 4
@dev_attr_vendor = internal global %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292 }, ptr @vendor_show, ptr null }, align 4
@dev_attr_device = internal global %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @device_show, ptr null }, align 4
@dev_attr_revision = internal global %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292 }, ptr @revision_show, ptr null }, align 4
@dev_attr_info1 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292 }, ptr @info1_show, ptr null }, align 4
@dev_attr_info2 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292 }, ptr @info2_show, ptr null }, align 4
@dev_attr_info3 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292 }, ptr @info3_show, ptr null }, align 4
@dev_attr_info4 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292 }, ptr @info4_show, ptr null }, align 4
@dev_attr_modalias = internal global %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292 }, ptr @modalias_show, ptr null }, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"0x%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"vendor\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"0x%04x\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"revision\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%u.%u\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"info1\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"info2\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"info3\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"info4\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"modalias\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"sdio:c%02Xv%04Xd%04X\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"SDIO_CLASS=%02X\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"SDIO_ID=%04X:%04X\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"SDIO_REVISION=%u.%u\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"SDIO_INFO%u=%s\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"MODALIAS=sdio:c%02Xv%04Xd%04X\00", align 1
@.str.21 = private unnamed_addr constant [60 x i8] c"\014WARNING: driver %s did not remove its interrupt handler!\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_sdio_register_driver, ptr @__ksymtab_sdio_unregister_driver], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sdio_register_bus() local_unnamed_addr #0 {
  %1 = tail call i32 @bus_register(ptr noundef nonnull @sdio_bus_type) #7
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdio_unregister_bus() local_unnamed_addr #0 {
  tail call void @bus_unregister(ptr noundef nonnull @sdio_bus_type) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sdio_register_driver(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.sdio_driver, ptr %0, i32 0, i32 4
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.sdio_driver, ptr %0, i32 0, i32 4, i32 1
  store ptr @sdio_bus_type, ptr %4, align 4
  %5 = tail call i32 @driver_register(ptr noundef %3) #7
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdio_unregister_driver(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sdio_driver, ptr %0, i32 0, i32 4
  %3 = getelementptr inbounds %struct.sdio_driver, ptr %0, i32 0, i32 4, i32 1
  store ptr @sdio_bus_type, ptr %3, align 4
  tail call void @driver_unregister(ptr noundef %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sdio_alloc_func(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 536) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 4) #8
  %8 = getelementptr inbounds %struct.sdio_func, ptr %3, i32 0, i32 11
  store ptr %7, ptr %8, align 8
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call void @kfree(ptr noundef nonnull %3) #7
  br label %17

11:                                               ; preds = %5
  store ptr %0, ptr %3, align 8
  %12 = getelementptr inbounds %struct.sdio_func, ptr %3, i32 0, i32 1
  tail call void @device_initialize(ptr noundef %12) #7
  %13 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 1
  %14 = getelementptr inbounds %struct.sdio_func, ptr %3, i32 0, i32 1, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.sdio_func, ptr %3, i32 0, i32 1, i32 5
  store ptr @sdio_bus_type, ptr %15, align 4
  %16 = getelementptr inbounds %struct.sdio_func, ptr %3, i32 0, i32 1, i32 33
  store ptr @sdio_release_func, ptr %16, align 4
  br label %17

17:                                               ; preds = %11, %10, %1
  %18 = phi ptr [ %3, %11 ], [ inttoptr (i32 -12 to ptr), %10 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdio_release_func(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  tail call void @sdio_free_func_cis(ptr noundef %2) #7
  %3 = getelementptr i8, ptr %0, i32 516
  %4 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %4) #7
  %5 = getelementptr i8, ptr %0, i32 504
  %6 = load ptr, ptr %5, align 8
  tail call void @kfree(ptr noundef %6) #7
  tail call void @kfree(ptr noundef %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sdio_add_func(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 1, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi ptr [ %9, %7 ], [ %5, %1 ]
  %12 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef %11, i32 noundef %13) #7
  %15 = load ptr, ptr %0, align 8
  %16 = load ptr, ptr %15, align 8
  %17 = load i32, ptr %12, align 4
  %18 = tail call ptr @mmc_of_find_child_device(ptr noundef %16, i32 noundef %17) #7
  %19 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 1, i32 25
  store ptr %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 1, i32 11, i32 1
  %21 = load i16, ptr %20, align 4
  %22 = and i16 %21, 8
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %10
  %25 = or i16 %21, 2
  store i16 %25, ptr %20, align 4
  br label %26

26:                                               ; preds = %24, %10
  %27 = tail call i32 @device_add(ptr noundef %2) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 10
  %31 = load i32, ptr %30, align 4
  %32 = or i32 %31, 1
  store i32 %32, ptr %30, align 4
  br label %33

33:                                               ; preds = %29, %26
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdio_remove_func(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 1
  tail call void @device_del(ptr noundef %7) #7
  %8 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 1, i32 25
  %9 = load ptr, ptr %8, align 8
  tail call void @of_node_put(ptr noundef %9) #7
  tail call void @put_device(ptr noundef %7) #7
  br label %10

10:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @sdio_bus_match(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 -12
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %44, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 480
  %8 = getelementptr i8, ptr %0, i32 482
  %9 = getelementptr i8, ptr %0, i32 484
  br label %10

10:                                               ; preds = %42, %6
  %11 = phi ptr [ %43, %42 ], [ %4, %6 ]
  %12 = load i8, ptr %11, align 4
  switch i8 %12, label %21 [
    i8 0, label %13
    i8 -1, label %24
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.sdio_device_id, ptr %11, i32 0, i32 1
  %15 = load i16, ptr %14, align 2
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.sdio_device_id, ptr %11, i32 0, i32 2
  %19 = load i16, ptr %18, align 4
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %44, label %21

21:                                               ; preds = %17, %13, %10
  %22 = load i8, ptr %7, align 8
  %23 = icmp eq i8 %12, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %21, %10
  %25 = getelementptr inbounds %struct.sdio_device_id, ptr %11, i32 0, i32 1
  %26 = load i16, ptr %25, align 2
  %27 = icmp eq i16 %26, -1
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i16, ptr %8, align 2
  %30 = icmp eq i16 %26, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %28, %24
  %32 = getelementptr inbounds %struct.sdio_device_id, ptr %11, i32 0, i32 2
  %33 = load i16, ptr %32, align 4
  %34 = icmp eq i16 %33, -1
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load i16, ptr %9, align 4
  %37 = icmp ne i16 %33, %36
  %38 = icmp eq ptr %11, null
  %39 = or i1 %38, %37
  br i1 %39, label %42, label %44

40:                                               ; preds = %31
  %41 = icmp eq ptr %11, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %40, %35, %28, %21
  %43 = getelementptr %struct.sdio_device_id, ptr %11, i32 1
  br label %10

44:                                               ; preds = %40, %35, %17, %2
  %45 = phi ptr [ null, %2 ], [ %11, %40 ], [ null, %17 ], [ %11, %35 ]
  %46 = icmp ne ptr %45, null
  %47 = zext i1 %46 to i32
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdio_bus_uevent(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 480
  %4 = load i8, ptr %3, align 8
  %5 = zext i8 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.16, i32 noundef %5) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %50

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 482
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %0, i32 484
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.17, i32 noundef %11, i32 noundef %14) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %8
  %18 = getelementptr i8, ptr %0, i32 508
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i32
  %21 = getelementptr i8, ptr %0, i32 509
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.18, i32 noundef %20, i32 noundef %23) #7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %17
  %27 = getelementptr i8, ptr %0, i32 512
  %28 = getelementptr i8, ptr %0, i32 516
  br label %29

29:                                               ; preds = %33, %26
  %30 = phi i32 [ %34, %33 ], [ 0, %26 ]
  %31 = load i32, ptr %27, align 8
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = add nuw i32 %30, 1
  %35 = load ptr, ptr %28, align 4
  %36 = getelementptr ptr, ptr %35, i32 %30
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %34, ptr noundef %37) #7
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %29, label %50

40:                                               ; preds = %29
  %41 = load i8, ptr %3, align 8
  %42 = zext i8 %41 to i32
  %43 = load i16, ptr %9, align 2
  %44 = zext i16 %43 to i32
  %45 = load i16, ptr %12, align 4
  %46 = zext i16 %45 to i32
  %47 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %42, i32 noundef %44, i32 noundef %46) #7
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i32 0, i32 -12
  br label %50

50:                                               ; preds = %40, %33, %17, %8, %2
  %51 = phi i32 [ -12, %2 ], [ -12, %8 ], [ -12, %17 ], [ %49, %40 ], [ -12, %33 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdio_bus_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = getelementptr i8, ptr %3, i32 -12
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %97, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 480
  %10 = getelementptr i8, ptr %0, i32 482
  %11 = getelementptr i8, ptr %0, i32 484
  br label %12

12:                                               ; preds = %44, %8
  %13 = phi ptr [ %45, %44 ], [ %6, %8 ]
  %14 = load i8, ptr %13, align 4
  switch i8 %14, label %23 [
    i8 0, label %15
    i8 -1, label %26
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.sdio_device_id, ptr %13, i32 0, i32 1
  %17 = load i16, ptr %16, align 2
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.sdio_device_id, ptr %13, i32 0, i32 2
  %21 = load i16, ptr %20, align 4
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %97, label %23

23:                                               ; preds = %19, %15, %12
  %24 = load i8, ptr %9, align 8
  %25 = icmp eq i8 %14, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %23, %12
  %27 = getelementptr inbounds %struct.sdio_device_id, ptr %13, i32 0, i32 1
  %28 = load i16, ptr %27, align 2
  %29 = icmp eq i16 %28, -1
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i16, ptr %10, align 2
  %32 = icmp eq i16 %28, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %30, %26
  %34 = getelementptr inbounds %struct.sdio_device_id, ptr %13, i32 0, i32 2
  %35 = load i16, ptr %34, align 4
  %36 = icmp eq i16 %35, -1
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load i16, ptr %11, align 4
  %39 = icmp ne i16 %35, %38
  %40 = icmp eq ptr %13, null
  %41 = or i1 %40, %39
  br i1 %41, label %44, label %46

42:                                               ; preds = %33
  %43 = icmp eq ptr %13, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %42, %37, %30, %23
  %45 = getelementptr %struct.sdio_device_id, ptr %13, i32 1
  br label %12

46:                                               ; preds = %42, %37
  %47 = tail call i32 @dev_pm_domain_attach(ptr noundef %0, i1 noundef zeroext false) #7
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %97

49:                                               ; preds = %46
  %50 = load ptr, ptr %4, align 8
  %51 = getelementptr inbounds %struct.mmc_card, ptr %50, i32 0, i32 28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %51) #7, !srcloc !8
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %51, ptr %51, i32 1, ptr elementtype(i32) %51) #7, !srcloc !9
  %53 = load ptr, ptr %4, align 8
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.mmc_host, ptr %54, i32 0, i32 16
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 16384
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %49
  %60 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #7
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %79, label %62

62:                                               ; preds = %59, %49
  tail call void @sdio_claim_host(ptr noundef %4) #7
  %63 = load ptr, ptr %4, align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.mmc_card, ptr %63, i32 0, i32 5
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, 16
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  tail call void @sdio_release_host(ptr noundef %4) #7
  br label %79

71:                                               ; preds = %65, %62
  %72 = tail call i32 @sdio_set_block_size(ptr noundef %4, i32 noundef 0) #7
  tail call void @sdio_release_host(ptr noundef %4) #7
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = getelementptr i8, ptr %3, i32 -8
  %76 = load ptr, ptr %75, align 4
  %77 = tail call i32 %76(ptr noundef %4, ptr noundef nonnull %13) #7
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %97, label %79

79:                                               ; preds = %74, %71, %70, %59
  %80 = phi i32 [ %60, %59 ], [ %72, %71 ], [ %77, %74 ], [ -123, %70 ]
  %81 = load ptr, ptr %4, align 8
  %82 = getelementptr inbounds %struct.mmc_card, ptr %81, i32 0, i32 28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %82) #7, !srcloc !8
  %83 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %82, ptr %82, i32 1, ptr elementtype(i32) %82) #7, !srcloc !10
  %84 = load ptr, ptr %4, align 8
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds %struct.mmc_host, ptr %85, i32 0, i32 16
  %87 = load i32, ptr %86, align 8
  %88 = and i32 %87, 16384
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %79
  %91 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %91) #7, !srcloc !8
  %92 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %91, ptr %91, i32 0, i32 -1, ptr elementtype(i32) %91) #7, !srcloc !12
  %93 = extractvalue { i32, i32, i32 } %92, 0
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %90
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  br label %96

96:                                               ; preds = %95, %90, %79
  tail call void @dev_pm_domain_detach(ptr noundef %0, i1 noundef zeroext false) #7
  br label %97

97:                                               ; preds = %96, %74, %46, %19, %1
  %98 = phi i32 [ %80, %96 ], [ %47, %46 ], [ 0, %74 ], [ -19, %1 ], [ -19, %19 ]
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdio_bus_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -16
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 16
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 16384
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #7
  br label %14

14:                                               ; preds = %12, %1
  %15 = getelementptr i8, ptr %3, i32 -4
  %16 = load ptr, ptr %15, align 4
  tail call void %16(ptr noundef %5) #7
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds %struct.mmc_card, ptr %17, i32 0, i32 28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #7, !srcloc !8
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #7, !srcloc !10
  %20 = getelementptr i8, ptr %0, i32 472
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %14
  %24 = load ptr, ptr %4, align 4
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %24) #9
  tail call void @sdio_claim_host(ptr noundef %5) #7
  %26 = tail call i32 @sdio_release_irq(ptr noundef %5) #7
  tail call void @sdio_release_host(ptr noundef %5) #7
  br label %27

27:                                               ; preds = %23, %14
  %28 = load ptr, ptr %5, align 8
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.mmc_host, ptr %29, i32 0, i32 16
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 16384
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #7, !srcloc !8
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 0, i32 -1, ptr elementtype(i32) %35) #7, !srcloc !12
  %37 = extractvalue { i32, i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  br label %40

40:                                               ; preds = %39, %34, %27
  %41 = load ptr, ptr %5, align 8
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.mmc_host, ptr %42, i32 0, i32 16
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 16384
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %40
  %48 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 4) #7
  br label %49

49:                                               ; preds = %47, %40
  tail call void @dev_pm_domain_detach(ptr noundef %0, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @class_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 480
  %5 = load i8, ptr %4, align 8
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vendor_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 482
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @device_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 484
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @revision_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 508
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = getelementptr i8, ptr %0, i32 509
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %6, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @info1_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 512
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 516
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.10, ptr noundef %10)
  br label %15

15:                                               ; preds = %13, %7, %3
  %16 = phi i32 [ %14, %13 ], [ -61, %3 ], [ 0, %7 ]
  ret i32 %16
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @info2_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 512
  %5 = load i32, ptr %4, align 8
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 516
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr ptr, ptr %9, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  %15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.10, ptr noundef %11)
  br label %16

16:                                               ; preds = %14, %7, %3
  %17 = phi i32 [ %15, %14 ], [ -61, %3 ], [ 0, %7 ]
  ret i32 %17
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @info3_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 512
  %5 = load i32, ptr %4, align 8
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 516
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr ptr, ptr %9, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  %15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.10, ptr noundef %11)
  br label %16

16:                                               ; preds = %14, %7, %3
  %17 = phi i32 [ %15, %14 ], [ -61, %3 ], [ 0, %7 ]
  ret i32 %17
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @info4_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 512
  %5 = load i32, ptr %4, align 8
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 516
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr ptr, ptr %9, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  %15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.10, ptr noundef %11)
  br label %16

16:                                               ; preds = %14, %7, %3
  %17 = phi i32 [ %15, %14 ], [ -61, %3 ], [ 0, %7 ]
  ret i32 %17
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @modalias_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 480
  %5 = load i8, ptr %4, align 8
  %6 = zext i8 %5 to i32
  %7 = getelementptr i8, ptr %0, i32 482
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %0, i32 484
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.15, i32 noundef %6, i32 noundef %9, i32 noundef %12)
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_domain_attach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_claim_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_set_block_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_release_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_detach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_release_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_runtime_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_runtime_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_free_func_cis(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_of_find_child_device(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
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
!8 = !{i64 580084, i64 2148081650, i64 2148081676, i64 2148081723, i64 2148081745, i64 2148081773, i64 2148081793}
!9 = !{i64 2148144912, i64 2148144938, i64 2148144967, i64 2148145001, i64 2148145032, i64 2148145055}
!10 = !{i64 2148147269, i64 2148147295, i64 2148147324, i64 2148147358, i64 2148147389, i64 2148147412}
!11 = !{i64 2148144419}
!12 = !{i64 566653, i64 566678, i64 566700, i64 566716, i64 566728, i64 566748, i64 566772, i64 566788, i64 566800}
!13 = !{i64 2148144545}
