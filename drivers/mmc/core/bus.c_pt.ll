; ModuleID = '/llk/IR/drivers/mmc/core/bus.c_pt.bc'
source_filename = "../drivers/mmc/core/bus.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_unregister_driver\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_card = type { ptr, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, %struct.sd_ext_reg, %struct.sd_ext_reg, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x ptr], ptr, i8, i8, i32, ptr, ptr, i32, i32, i32, ptr, [7 x %struct.mmc_part], i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sd_ext_reg = type { i8, i8, i16, i8, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.mmc_cqe_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.mmc_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@mmc_bus_type = internal global %struct.bus_type { ptr @.str.25, ptr null, ptr null, ptr null, ptr @mmc_dev_groups, ptr null, ptr null, ptr @mmc_bus_uevent, ptr @mmc_bus_probe, ptr null, ptr @mmc_bus_remove, ptr @mmc_bus_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmc_bus_pm_ops, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@__kstrtab_mmc_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_register_driver to i32), ptr @__kstrtab_mmc_register_driver, ptr @__kstrtabns_mmc_register_driver }, section "___ksymtab+mmc_register_driver", align 4
@__kstrtab_mmc_unregister_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_unregister_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_unregister_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_unregister_driver to i32), ptr @__kstrtab_mmc_unregister_driver, ptr @__kstrtabns_mmc_unregister_driver }, section "___ksymtab+mmc_unregister_driver", align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@mmc_add_card.uhs_speeds = internal unnamed_addr constant [5 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"SDR12 \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"SDR25 \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"SDR50 \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"SDR104 \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"DDR50 \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%s:%04x\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"MMC\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"SD\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"SDXC\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"SDHC\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"SDIO\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"SD-combo\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"SDHC-combo\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"\016%s: new %s%s%s card on SPI\0A\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"high speed \00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"DDR \00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"\016%s: new %s%s%s%s%s%s card at address %04x\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"ultra high speed \00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"HS400 \00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"HS200 \00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"Enhanced strobe \00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"\016%s: SPI card removed\0A\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"\016%s: card %04x removed\0A\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"mmc\00", align 1
@mmc_dev_groups = internal global [2 x ptr] [ptr @mmc_dev_group, ptr null], align 4
@mmc_bus_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @mmc_bus_suspend, ptr @mmc_bus_resume, ptr @mmc_bus_suspend, ptr @mmc_bus_resume, ptr @mmc_bus_suspend, ptr @mmc_bus_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmc_runtime_suspend, ptr @mmc_runtime_resume, ptr null }, align 4
@mmc_dev_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mmc_dev_attrs, ptr null }, align 4
@mmc_dev_attrs = internal global [2 x ptr] [ptr @dev_attr_type, ptr null], align 4
@dev_attr_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292 }, ptr @type_show, ptr null }, align 4
@.str.26 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"MMC\0A\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"SDIO\0A\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"SDcombo\0A\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"SDcombo\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"MMC_TYPE=%s\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"SDIO_ID=%04X:%04X\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"SDIO_REVISION=%u.%u\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"SDIO_INFO%u=%s\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"MMC_NAME=%s\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"MODALIAS=mmc:block\00", align 1
@.str.38 = private unnamed_addr constant [32 x i8] c"\014%s: error %d during shutdown\0A\00", align 1
@.str.39 = private unnamed_addr constant [50 x i8] c"\014%s: error %d during resume (card was removed?)\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_mmc_register_driver, ptr @__ksymtab_mmc_unregister_driver], section "llvm.metadata"
@switch.table.mmc_bus_uevent = private unnamed_addr constant [4 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.31], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_register_bus() local_unnamed_addr #0 {
  %1 = tail call i32 @bus_register(ptr noundef nonnull @mmc_bus_type) #6
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_unregister_bus() local_unnamed_addr #0 {
  tail call void @bus_unregister(ptr noundef nonnull @mmc_bus_type) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_register_driver(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 1
  store ptr @mmc_bus_type, ptr %2, align 4
  %3 = tail call i32 @driver_register(ptr noundef %0) #6
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_unregister_driver(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 1
  store ptr @mmc_bus_type, ptr %2, align 4
  tail call void @driver_unregister(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mmc_alloc_card(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1320) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  store ptr %0, ptr %4, align 8
  %7 = getelementptr inbounds %struct.mmc_card, ptr %4, i32 0, i32 1
  tail call void @device_initialize(ptr noundef %7) #6
  %8 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %9 = getelementptr inbounds %struct.mmc_card, ptr %4, i32 0, i32 1, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mmc_card, ptr %4, i32 0, i32 1, i32 5
  store ptr @mmc_bus_type, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mmc_card, ptr %4, i32 0, i32 1, i32 33
  store ptr @mmc_release_card, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mmc_card, ptr %4, i32 0, i32 1, i32 4
  store ptr %1, ptr %12, align 8
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi ptr [ %4, %6 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmc_release_card(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  tail call void @sdio_free_common_cis(ptr noundef %2) #6
  %3 = getelementptr i8, ptr %0, i32 1000
  %4 = load ptr, ptr %3, align 8
  tail call void @kfree(ptr noundef %4) #6
  tail call void @kfree(ptr noundef %2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_add_card(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi ptr [ %9, %7 ], [ %5, %1 ]
  %12 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef %11, i32 noundef %13) #6
  %15 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 8
  switch i32 %16, label %33 [
    i32 0, label %34
    i32 1, label %17
    i32 2, label %26
    i32 3, label %27
  ]

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %17
  %23 = and i32 %19, 8
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, ptr @.str.10, ptr @.str.9
  br label %34

26:                                               ; preds = %10
  br label %34

27:                                               ; preds = %10
  %28 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 4
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, ptr @.str.12, ptr @.str.13
  br label %34

33:                                               ; preds = %10
  br label %34

34:                                               ; preds = %33, %27, %26, %22, %17, %10
  %35 = phi ptr [ @.str.14, %33 ], [ %32, %27 ], [ @.str.11, %26 ], [ @.str.8, %17 ], [ @.str.7, %10 ], [ %25, %22 ]
  %36 = load ptr, ptr %0, align 8
  %37 = getelementptr inbounds %struct.mmc_host, ptr %36, i32 0, i32 28, i32 7
  %38 = load i8, ptr %37, align 4
  %39 = add i8 %38, -8
  %40 = icmp ult i8 %39, -5
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 38
  %43 = load i32, ptr %42, align 8
  %44 = icmp ult i32 %43, 5
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = getelementptr [5 x ptr], ptr @mmc_add_card.uhs_speeds, i32 0, i32 %43
  %47 = load ptr, ptr %46, align 4
  br label %48

48:                                               ; preds = %45, %41, %34
  %49 = phi ptr [ %47, %45 ], [ @.str, %41 ], [ @.str, %34 ]
  %50 = getelementptr inbounds %struct.mmc_host, ptr %36, i32 0, i32 16
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 16
  %53 = icmp eq i32 %52, 0
  %54 = getelementptr inbounds %struct.mmc_host, ptr %36, i32 0, i32 1, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %53, label %69, label %57

57:                                               ; preds = %48
  br i1 %56, label %58, label %61

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.mmc_host, ptr %36, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  br label %61

61:                                               ; preds = %58, %57
  %62 = phi ptr [ %60, %58 ], [ %55, %57 ]
  %63 = add i8 %38, -3
  %64 = icmp ult i8 %63, -2
  %65 = select i1 %64, ptr @.str, ptr @.str.16
  %66 = icmp eq i8 %38, 8
  %67 = select i1 %66, ptr @.str.17, ptr @.str
  %68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %62, ptr noundef nonnull %65, ptr noundef nonnull %67, ptr noundef nonnull %35) #8
  br label %91

69:                                               ; preds = %48
  br i1 %56, label %70, label %73

70:                                               ; preds = %69
  %71 = getelementptr inbounds %struct.mmc_host, ptr %36, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  br label %73

73:                                               ; preds = %70, %69
  %74 = phi ptr [ %72, %70 ], [ %55, %69 ]
  %75 = add i8 %38, -3
  %76 = icmp ult i8 %75, -2
  %77 = select i1 %76, ptr @.str, ptr @.str.16
  %78 = select i1 %40, ptr %77, ptr @.str.19
  %79 = icmp eq i8 %38, 10
  %80 = icmp eq i8 %38, 9
  %81 = select i1 %80, ptr @.str.21, ptr @.str
  %82 = select i1 %79, ptr @.str.20, ptr %81
  %83 = getelementptr inbounds %struct.mmc_host, ptr %36, i32 0, i32 28, i32 10
  %84 = load i8, ptr %83, align 1, !range !8
  %85 = icmp eq i8 %84, 0
  %86 = select i1 %85, ptr @.str, ptr @.str.22
  %87 = icmp eq i8 %38, 8
  %88 = select i1 %87, ptr @.str.17, ptr @.str
  %89 = load i32, ptr %12, align 4
  %90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %74, ptr noundef nonnull %78, ptr noundef nonnull %82, ptr noundef nonnull %86, ptr noundef nonnull %88, ptr noundef %49, ptr noundef nonnull %35, i32 noundef %89) #8
  br label %91

91:                                               ; preds = %73, %61
  tail call void @mmc_add_card_debugfs(ptr noundef %0) #6
  %92 = load ptr, ptr %0, align 8
  %93 = tail call ptr @mmc_of_find_child_device(ptr noundef %92, i32 noundef 0) #6
  %94 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 1, i32 25
  store ptr %93, ptr %94, align 8
  %95 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 1, i32 11, i32 1
  %96 = load i16, ptr %95, align 4
  %97 = and i16 %96, 8
  %98 = icmp eq i16 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = or i16 %96, 2
  store i16 %100, ptr %95, align 4
  br label %101

101:                                              ; preds = %99, %91
  %102 = tail call i32 @device_add(ptr noundef %2) #6
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 5
  %106 = load i32, ptr %105, align 4
  %107 = or i32 %106, 1
  store i32 %107, ptr %105, align 4
  br label %108

108:                                              ; preds = %104, %101
  ret i32 %102
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_add_card_debugfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_of_find_child_device(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_remove_card(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  tail call void @mmc_remove_card_debugfs(ptr noundef %0) #6
  %3 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %36, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 16
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 16
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 1, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %12, label %23, label %16

16:                                               ; preds = %7
  br i1 %15, label %17, label %20

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %16
  %21 = phi ptr [ %19, %17 ], [ %14, %16 ]
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %21) #8
  br label %32

23:                                               ; preds = %7
  br i1 %15, label %24, label %27

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  br label %27

27:                                               ; preds = %24, %23
  %28 = phi ptr [ %26, %24 ], [ %14, %23 ]
  %29 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %28, i32 noundef %30) #8
  br label %32

32:                                               ; preds = %27, %20
  %33 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 1
  tail call void @device_del(ptr noundef %33) #6
  %34 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 1, i32 25
  %35 = load ptr, ptr %34, align 8
  tail call void @of_node_put(ptr noundef %35) #6
  br label %36

36:                                               ; preds = %32, %1
  %37 = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 64
  %38 = load i8, ptr %37, align 8, !range !8
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 61
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.mmc_cqe_ops, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  tail call void %44(ptr noundef %2) #6
  store i8 0, ptr %37, align 8
  br label %45

45:                                               ; preds = %40, %36
  %46 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 1
  tail call void @put_device(ptr noundef %46) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_card_debugfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_bus_uevent(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 480
  %4 = load i32, ptr %3, align 8
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds [4 x ptr], ptr @switch.table.mmc_bus_uevent, i32 0, i32 %4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef nonnull %8) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %58

11:                                               ; preds = %6
  %12 = load i32, ptr %3, align 8
  br label %13

13:                                               ; preds = %11, %2
  %14 = phi i32 [ %12, %11 ], [ %4, %2 ]
  %15 = and i32 %14, -2
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %52

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %0, i32 948
  %19 = load i16, ptr %18, align 4
  %20 = zext i16 %19 to i32
  %21 = getelementptr i8, ptr %0, i32 950
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.33, i32 noundef %20, i32 noundef %23) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %17
  %27 = getelementptr i8, ptr %0, i32 992
  %28 = load i8, ptr %27, align 8
  %29 = zext i8 %28 to i32
  %30 = getelementptr i8, ptr %0, i32 993
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.34, i32 noundef %29, i32 noundef %32) #6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %26
  %36 = getelementptr i8, ptr %0, i32 996
  %37 = getelementptr i8, ptr %0, i32 1000
  br label %38

38:                                               ; preds = %42, %35
  %39 = phi i32 [ %43, %42 ], [ 0, %35 ]
  %40 = load i32, ptr %36, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = add nuw i32 %39, 1
  %44 = load ptr, ptr %37, align 8
  %45 = getelementptr ptr, ptr %44, i32 %39
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.35, i32 noundef %43, ptr noundef %46) #6
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %38, label %58

49:                                               ; preds = %38
  %50 = load i32, ptr %3, align 8
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %58, label %52

52:                                               ; preds = %49, %13
  %53 = getelementptr i8, ptr %0, i32 632
  %54 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.36, ptr noundef %53) #6
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.37) #6
  br label %58

58:                                               ; preds = %56, %52, %49, %42, %26, %17, %6
  %59 = phi i32 [ %57, %56 ], [ %9, %6 ], [ %24, %17 ], [ %33, %26 ], [ 0, %49 ], [ %54, %52 ], [ %47, %42 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_bus_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = getelementptr inbounds %struct.mmc_driver, ptr %3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %4) #6
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmc_bus_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = getelementptr inbounds %struct.mmc_driver, ptr %3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmc_bus_shutdown(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %3, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mmc_driver, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void %9(ptr noundef %4) #6
  br label %12

12:                                               ; preds = %11, %7, %1
  %13 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 45
  %14 = load ptr, ptr %13, align 32
  %15 = getelementptr inbounds %struct.mmc_bus_ops, ptr %14, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %12
  %19 = tail call i32 %16(ptr noundef %5) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 1, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  br label %28

28:                                               ; preds = %25, %21
  %29 = phi ptr [ %27, %25 ], [ %23, %21 ]
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %29, i32 noundef %19) #8
  br label %31

31:                                               ; preds = %28, %18, %12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @type_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 480
  %5 = load i32, ptr %4, align 8
  switch i32 %5, label %10 [
    i32 0, label %6
    i32 1, label %7
    i32 2, label %8
    i32 3, label %9
  ]

6:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %2, ptr noundef nonnull align 1 dereferenceable(5) @.str.27, i32 5, i1 false)
  br label %10

7:                                                ; preds = %3
  store i32 672851, ptr %2, align 1
  br label %10

8:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.29, i32 6, i1 false)
  br label %10

9:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(9) %2, ptr noundef nonnull align 1 dereferenceable(9) @.str.30, i32 9, i1 false)
  br label %10

10:                                               ; preds = %9, %8, %7, %6, %3
  %11 = phi i32 [ 8, %9 ], [ 5, %8 ], [ 3, %7 ], [ 4, %6 ], [ -14, %3 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_bus_suspend(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pm_generic_suspend(ptr noundef %0) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 45
  %8 = load ptr, ptr %7, align 32
  %9 = getelementptr inbounds %struct.mmc_bus_ops, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %3) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %6
  %14 = tail call i32 @pm_generic_resume(ptr noundef %0) #6
  br label %15

15:                                               ; preds = %13, %6, %1
  %16 = phi i32 [ %4, %1 ], [ %11, %13 ], [ 0, %6 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_bus_resume(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 45
  %5 = load ptr, ptr %4, align 32
  %6 = getelementptr inbounds %struct.mmc_bus_ops, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %3) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi ptr [ %16, %14 ], [ %12, %10 ]
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %18, i32 noundef %8) #8
  br label %20

20:                                               ; preds = %17, %1
  %21 = tail call i32 @pm_generic_resume(ptr noundef %0) #6
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_runtime_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 45
  %5 = load ptr, ptr %4, align 32
  %6 = getelementptr inbounds %struct.mmc_bus_ops, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %3) #6
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_runtime_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 45
  %5 = load ptr, ptr %4, align 32
  %6 = getelementptr inbounds %struct.mmc_bus_ops, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %3) #6
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_free_common_cis(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

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
!8 = !{i8 0, i8 2}
