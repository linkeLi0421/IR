; ModuleID = '/llk/IR/drivers/phy/motorola/phy-cpcap-usb.c_pt.bc'
source_filename = "../drivers/phy/motorola/phy-cpcap-usb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.cpcap_phy_ddata = type { ptr, ptr, %struct.usb_phy, %struct.delayed_work, ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, ptr, %struct.atomic_t, i8 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }

@cpcap_usb_phy_id_table = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"motorola,cpcap-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"motorola,mapphone-cpcap-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_alias252 = internal constant [25 x i8] c"alias=platform:cpcap_usb\00", section ".modinfo", align 1
@__UNIQUE_ID_author253 = internal constant [40 x i8] c"author=Tony Lindgren <tony@atomide.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [33 x i8] c"description=CPCAP usb phy driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@cpcap_usb_phy_driver = internal global %struct.platform_driver { ptr @cpcap_usb_phy_probe, ptr @cpcap_usb_phy_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cpcap_usb_phy_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [14 x i8] c"cpcap-usb-phy\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"cpcap_usb_phy\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"vusb\00", align 1
@ops = internal constant %struct.phy_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @__this_module }, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"error setting cable state: %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"error reading VBUS: %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"could not set usb mode: %i\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"%s failed with %i\0A\00", align 1
@__func__.cpcap_usb_set_usb_mode = private unnamed_addr constant [23 x i8] c"cpcap_usb_set_usb_mode\00", align 1
@__func__.cpcap_usb_set_uart_mode = private unnamed_addr constant [24 x i8] c"cpcap_usb_set_uart_mode\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"default pins not configured: %ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"ulpi\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"ulpi pins not configured\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"utmi\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"utmi pins not configured\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"uart\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"uart pins not configured\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"no mode change GPIO%i: %li\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"could not initialize VBUS or ID IIO: %i\0A\00", align 1
@cpcap_phy_irqs = internal unnamed_addr constant [9 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], align 4
@.str.18 = private unnamed_addr constant [26 x i8] c"could not get irq %s: %i\0A\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"id_ground\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"id_float\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"se0conn\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"vbusvld\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"sessvld\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"sessend\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"se1\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"dm\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"dp\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.28 = private unnamed_addr constant [25 x i8] c"could not set UART mode\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias252, ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_license255], section "llvm.metadata"

@__mod_of__cpcap_usb_phy_id_table_device_table = dso_local alias [3 x %struct.of_device_id], ptr @cpcap_usb_phy_id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @cpcap_usb_phy_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @cpcap_usb_phy_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_usb_phy_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_match_device(ptr noundef nonnull @cpcap_usb_phy_id_table, ptr noundef %2) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %70, label %5

5:                                                ; preds = %1
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 288, i32 noundef 3520) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %70, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @dev_get_regmap(ptr noundef %10, ptr noundef null) #6
  store ptr %11, ptr %6, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %70, label %13

13:                                               ; preds = %8
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 44, i32 noundef 3520) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %70, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %6, i32 0, i32 1
  store ptr %2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %6, i32 0, i32 2
  store ptr %2, ptr %18, align 4
  %19 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %6, i32 0, i32 2, i32 1
  store ptr @.str.1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %6, i32 0, i32 2, i32 5
  store ptr %14, ptr %20, align 4
  %21 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %6, i32 0, i32 2, i32 3
  store i32 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.usb_otg, ptr %14, i32 0, i32 6
  store ptr @cpcap_usb_phy_set_host, ptr %22, align 4
  %23 = getelementptr inbounds %struct.usb_otg, ptr %14, i32 0, i32 7
  store ptr @cpcap_usb_phy_set_peripheral, ptr %23, align 4
  %24 = getelementptr inbounds %struct.usb_otg, ptr %14, i32 0, i32 2
  store ptr %18, ptr %24, align 4
  %25 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %6, i32 0, i32 3
  store i32 -32, ptr %25, align 4
  %26 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %6, i32 0, i32 3, i32 0, i32 1
  store volatile ptr %26, ptr %26, align 4
  %27 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %6, i32 0, i32 3, i32 0, i32 1, i32 1
  store ptr %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %6, i32 0, i32 3, i32 0, i32 2
  store ptr @cpcap_usb_detect, ptr %28, align 4
  %29 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %6, i32 0, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %29, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #6
  %30 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %30, align 8
  %31 = tail call ptr @devm_regulator_get(ptr noundef %2, ptr noundef nonnull @.str.2) #6
  %32 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %6, i32 0, i32 11
  store ptr %31, ptr %32, align 4
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %36

34:                                               ; preds = %16
  %35 = ptrtoint ptr %31 to i32
  br label %70

36:                                               ; preds = %16
  %37 = tail call i32 @regulator_enable(ptr noundef %31) #6
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %70

39:                                               ; preds = %36
  %40 = load ptr, ptr %17, align 4
  %41 = tail call ptr @devm_phy_create(ptr noundef %40, ptr noundef null, ptr noundef nonnull @ops) #6
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = ptrtoint ptr %41 to i32
  br label %66

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 8
  store ptr %6, ptr %46, align 8
  %47 = load ptr, ptr %17, align 4
  %48 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %47, ptr noundef null, ptr noundef nonnull @__this_module, ptr noundef nonnull @of_phy_simple_xlate) #6
  %49 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = ptrtoint ptr %48 to i32
  br label %66

52:                                               ; preds = %45
  %53 = tail call fastcc i32 @cpcap_usb_init_optional_pins(ptr noundef nonnull %6)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  tail call fastcc void @cpcap_usb_init_optional_gpios(ptr noundef nonnull %6)
  %56 = tail call fastcc i32 @cpcap_usb_init_iio(ptr noundef nonnull %6)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = tail call fastcc i32 @cpcap_usb_init_interrupts(ptr noundef %0, ptr noundef nonnull %6)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = tail call i32 @usb_add_phy_dev(ptr noundef %18) #6
  %63 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %6, i32 0, i32 12
  store volatile i32 1, ptr %63, align 4
  %64 = load ptr, ptr @system_wq, align 4
  %65 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %64, ptr noundef %25, i32 noundef 1) #6
  br label %70

66:                                               ; preds = %58, %55, %52, %50, %43
  %67 = phi i32 [ %44, %43 ], [ %51, %50 ], [ %53, %52 ], [ %56, %55 ], [ %59, %58 ]
  %68 = load ptr, ptr %32, align 4
  %69 = tail call i32 @regulator_disable(ptr noundef %68) #6
  br label %70

70:                                               ; preds = %66, %61, %36, %34, %13, %8, %5, %1
  %71 = phi i32 [ %35, %34 ], [ %67, %66 ], [ 0, %61 ], [ -22, %1 ], [ -12, %5 ], [ -19, %8 ], [ -12, %13 ], [ %37, %36 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_usb_phy_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %3, i32 0, i32 12
  store volatile i32 0, ptr %4, align 4
  %5 = tail call fastcc i32 @cpcap_usb_set_uart_mode(ptr noundef %3)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.28) #7
  br label %10

10:                                               ; preds = %7, %1
  %11 = tail call i32 @musb_mailbox(i32 noundef 4) #6
  %12 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %3, i32 0, i32 2
  tail call void @usb_remove_phy(ptr noundef %12) #6
  %13 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %3, i32 0, i32 3
  %14 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %13) #6
  %15 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %3, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @regulator_disable(ptr noundef %16) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cpcap_usb_phy_set_host(ptr nocapture noundef writeonly %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.usb_otg, ptr %0, i32 0, i32 3
  store ptr %1, ptr %3, align 4
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.usb_otg, ptr %0, i32 0, i32 5
  store i32 0, ptr %6, align 4
  br label %7

7:                                                ; preds = %5, %2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cpcap_usb_phy_set_peripheral(ptr nocapture noundef writeonly %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.usb_otg, ptr %0, i32 0, i32 4
  store ptr %1, ptr %3, align 4
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.usb_otg, ptr %0, i32 0, i32 5
  store i32 0, ptr %6, align 4
  br label %7

7:                                                ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpcap_usb_detect(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr i8, ptr %0, i32 -200
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 32, ptr noundef nonnull %4) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load i32, ptr %4, align 4
  %11 = load ptr, ptr %5, align 4
  %12 = call i32 @regmap_read(ptr noundef %11, i32 noundef 36, ptr noundef nonnull %4) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load ptr, ptr %5, align 4
  %16 = call i32 @regmap_read(ptr noundef %15, i32 noundef 44, ptr noundef nonnull %4) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14, %9, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  br label %98

19:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4
  %20 = getelementptr i8, ptr %0, i32 68
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 @iio_read_channel_processed(ptr noundef %21, ptr noundef nonnull %3) #6
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, ptr %3, align 4
  %26 = icmp slt i32 %25, 3901
  br label %30

27:                                               ; preds = %19
  %28 = getelementptr i8, ptr %0, i32 -196
  %29 = load ptr, ptr %28, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.4, i32 noundef %22) #7
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i1 [ %26, %24 ], [ true, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %32 = and i32 %10, 32768
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %68, label %34

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %0, i32 84
  %36 = load i8, ptr %35, align 4
  %37 = and i8 %36, 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = call i32 @musb_mailbox(i32 noundef 1) #6
  %41 = load ptr, ptr %5, align 4
  %42 = call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 3592, i32 noundef 384, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %98, label %94

44:                                               ; preds = %34
  %45 = and i8 %36, 2
  %46 = icmp eq i8 %45, 0
  br i1 %31, label %58, label %47

47:                                               ; preds = %44
  br i1 %46, label %50, label %48

48:                                               ; preds = %47
  %49 = call i32 @musb_mailbox(i32 noundef 1) #6
  br label %98

50:                                               ; preds = %47
  %51 = or i8 %36, 2
  store i8 %51, ptr %35, align 4
  %52 = call fastcc i32 @cpcap_usb_set_usb_mode(ptr noundef %5)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %94

54:                                               ; preds = %50
  %55 = call i32 @musb_mailbox(i32 noundef 1) #6
  %56 = load ptr, ptr @system_wq, align 4
  %57 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %56, ptr noundef %0, i32 noundef 100) #6
  br label %98

58:                                               ; preds = %44
  br i1 %46, label %59, label %68

59:                                               ; preds = %58
  %60 = or i8 %36, 1
  store i8 %60, ptr %35, align 4
  %61 = call fastcc i32 @cpcap_usb_set_usb_mode(ptr noundef %5)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %94

63:                                               ; preds = %59
  %64 = call i32 @musb_mailbox(i32 noundef 1) #6
  %65 = load ptr, ptr %5, align 4
  %66 = call i32 @regmap_update_bits_base(ptr noundef %65, i32 noundef 3592, i32 noundef 384, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %98, label %94

68:                                               ; preds = %58, %30
  %69 = load ptr, ptr %5, align 4
  %70 = call i32 @regmap_update_bits_base(ptr noundef %69, i32 noundef 3592, i32 noundef 384, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %94

72:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4
  %73 = load ptr, ptr %20, align 4
  %74 = call i32 @iio_read_channel_processed(ptr noundef %73, ptr noundef nonnull %2) #6
  %75 = icmp sgt i32 %74, -1
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = getelementptr i8, ptr %0, i32 -196
  %78 = load ptr, ptr %77, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.4, i32 noundef %74) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br label %87

79:                                               ; preds = %72
  %80 = load i32, ptr %2, align 4
  %81 = icmp sgt i32 %80, 3900
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = call fastcc i32 @cpcap_usb_set_usb_mode(ptr noundef %5)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = call i32 @musb_mailbox(i32 noundef 3) #6
  br label %98

87:                                               ; preds = %79, %76
  %88 = getelementptr i8, ptr %0, i32 84
  %89 = load i8, ptr %88, align 4
  %90 = and i8 %89, -4
  store i8 %90, ptr %88, align 4
  %91 = call i32 @musb_mailbox(i32 noundef 4) #6
  %92 = call fastcc i32 @cpcap_usb_set_uart_mode(ptr noundef %5)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %87, %82, %68, %63, %59, %50, %39
  %95 = phi i32 [ %42, %39 ], [ %70, %68 ], [ %83, %82 ], [ %92, %87 ], [ %61, %59 ], [ %66, %63 ], [ %52, %50 ]
  %96 = getelementptr i8, ptr %0, i32 -196
  %97 = load ptr, ptr %96, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.3, i32 noundef %95) #7
  br label %98

98:                                               ; preds = %94, %87, %85, %63, %54, %48, %39, %18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpcap_usb_init_optional_pins(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @devm_pinctrl_get(ptr noundef %3) #6
  %5 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %0, i32 0, i32 4
  store ptr %4, ptr %5, align 4
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 4
  %9 = ptrtoint ptr %4 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.7, i32 noundef %9) #7
  store ptr null, ptr %5, align 4
  br label %35

10:                                               ; preds = %1
  %11 = tail call ptr @pinctrl_lookup_state(ptr noundef %4, ptr noundef nonnull @.str.8) #6
  %12 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %0, i32 0, i32 5
  store ptr %11, ptr %12, align 4
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.9) #7
  store ptr null, ptr %12, align 4
  br label %16

16:                                               ; preds = %14, %10
  %17 = load ptr, ptr %5, align 4
  %18 = tail call ptr @pinctrl_lookup_state(ptr noundef %17, ptr noundef nonnull @.str.10) #6
  %19 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %0, i32 0, i32 6
  store ptr %18, ptr %19, align 4
  %20 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.11) #7
  store ptr null, ptr %19, align 4
  br label %23

23:                                               ; preds = %21, %16
  %24 = load ptr, ptr %5, align 4
  %25 = tail call ptr @pinctrl_lookup_state(ptr noundef %24, ptr noundef nonnull @.str.12) #6
  %26 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %0, i32 0, i32 7
  store ptr %25, ptr %26, align 4
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %29, ptr noundef nonnull @.str.13) #7
  store ptr null, ptr %26, align 4
  br label %35

30:                                               ; preds = %23
  %31 = icmp eq ptr %25, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr %5, align 4
  %34 = tail call i32 @pinctrl_select_state(ptr noundef %33, ptr noundef nonnull %25) #6
  br label %35

35:                                               ; preds = %32, %30, %28, %7
  %36 = phi i32 [ 0, %7 ], [ %34, %32 ], [ 0, %30 ], [ 0, %28 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cpcap_usb_init_optional_gpios(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @devm_gpiod_get_index(ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef 7) #6
  %5 = getelementptr %struct.cpcap_phy_ddata, ptr %0, i32 0, i32 8, i32 0
  store ptr %4, ptr %5, align 4
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 4
  %9 = ptrtoint ptr %4 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.15, i32 noundef 0, i32 noundef %9) #7
  store ptr null, ptr %5, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = load ptr, ptr %2, align 4
  %12 = tail call ptr @devm_gpiod_get_index(ptr noundef %11, ptr noundef nonnull @.str.14, i32 noundef 1, i32 noundef 7) #6
  %13 = getelementptr %struct.cpcap_phy_ddata, ptr %0, i32 0, i32 8, i32 1
  store ptr %12, ptr %13, align 4
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load ptr, ptr %2, align 4
  %17 = ptrtoint ptr %12 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.15, i32 noundef 1, i32 noundef %17) #7
  store ptr null, ptr %13, align 4
  br label %18

18:                                               ; preds = %15, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpcap_usb_init_iio(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @devm_iio_channel_get(ptr noundef %4, ptr noundef nonnull @.str.16) #6
  %6 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %0, i32 0, i32 9
  store ptr %5, ptr %6, align 4
  %7 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %5 to i32
  br label %19

10:                                               ; preds = %1
  %11 = load ptr, ptr %5, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = call i32 @iio_get_channel_type(ptr noundef %5, ptr noundef nonnull %2) #6
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr %2, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16, %13, %10, %8
  %20 = phi i32 [ %9, %8 ], [ %14, %13 ], [ -6, %10 ], [ -22, %16 ]
  %21 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.17, i32 noundef %20) #7
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i32 [ %20, %19 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpcap_usb_init_interrupts(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %1, i32 0, i32 1
  br label %7

4:                                                ; preds = %13
  %5 = add nuw nsw i32 %8, 1
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %19, label %7

7:                                                ; preds = %4, %2
  %8 = phi i32 [ 0, %2 ], [ %5, %4 ]
  %9 = getelementptr [9 x ptr], ptr @cpcap_phy_irqs, i32 0, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef %10) #6
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr %3, align 4
  %15 = tail call i32 @devm_request_threaded_irq(ptr noundef %14, i32 noundef %11, ptr noundef null, ptr noundef nonnull @cpcap_phy_irq_thread, i32 noundef 8320, ptr noundef %10, ptr noundef %1) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %4, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.18, ptr noundef %10, i32 noundef %15) #7
  br label %19

19:                                               ; preds = %17, %7, %4
  %20 = phi i32 [ %15, %17 ], [ -19, %7 ], [ 0, %4 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_phy_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpcap_usb_set_usb_mode(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr %struct.cpcap_phy_ddata, ptr %0, i32 0, i32 8, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  tail call void @gpiod_set_value(ptr noundef nonnull %3, i32 noundef 0) #6
  %10 = load ptr, ptr %6, align 4
  tail call void @gpiod_set_value(ptr noundef %10, i32 noundef 1) #6
  br label %11

11:                                               ; preds = %9, %5, %1
  %12 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @pinctrl_select_state(ptr noundef %17, ptr noundef nonnull %13) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.5, i32 noundef %18) #7
  br label %48

23:                                               ; preds = %15, %11
  %24 = load ptr, ptr %0, align 4
  %25 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 3584, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = load ptr, ptr %0, align 4
  %29 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 3592, i32 noundef 31, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load ptr, ptr %0, align 4
  %33 = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 3588, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load ptr, ptr %2, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %35
  %39 = getelementptr %struct.cpcap_phy_ddata, ptr %0, i32 0, i32 8, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  tail call void @gpiod_set_value(ptr noundef nonnull %36, i32 noundef 1) #6
  %43 = load ptr, ptr %39, align 4
  tail call void @gpiod_set_value(ptr noundef %43, i32 noundef 1) #6
  br label %48

44:                                               ; preds = %31, %27, %23
  %45 = phi i32 [ %25, %23 ], [ %29, %27 ], [ %33, %31 ]
  %46 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %0, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cpcap_usb_set_usb_mode, i32 noundef %45) #7
  br label %48

48:                                               ; preds = %44, %42, %38, %35, %20
  %49 = phi i32 [ %18, %20 ], [ %45, %44 ], [ 0, %35 ], [ 0, %38 ], [ 0, %42 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpcap_usb_set_uart_mode(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr %struct.cpcap_phy_ddata, ptr %0, i32 0, i32 8, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  tail call void @gpiod_set_value(ptr noundef nonnull %3, i32 noundef 0) #6
  %10 = load ptr, ptr %6, align 4
  tail call void @gpiod_set_value(ptr noundef %10, i32 noundef 1) #6
  br label %11

11:                                               ; preds = %9, %5, %1
  %12 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %0, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @pinctrl_select_state(ptr noundef %17, ptr noundef nonnull %13) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %15, %11
  %21 = load ptr, ptr %0, align 4
  %22 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 3584, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load ptr, ptr %0, align 4
  %26 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 3588, i32 noundef 65535, i32 noundef 257, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load ptr, ptr %0, align 4
  %30 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 3592, i32 noundef 32767, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load ptr, ptr %2, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %32
  %36 = getelementptr %struct.cpcap_phy_ddata, ptr %0, i32 0, i32 8, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  tail call void @gpiod_set_value(ptr noundef nonnull %33, i32 noundef 0) #6
  %40 = load ptr, ptr %36, align 4
  tail call void @gpiod_set_value(ptr noundef %40, i32 noundef 0) #6
  br label %45

41:                                               ; preds = %28, %24, %20, %15
  %42 = phi i32 [ %18, %15 ], [ %22, %20 ], [ %26, %24 ], [ %30, %28 ]
  %43 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %0, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cpcap_usb_set_uart_mode, i32 noundef %42) #7
  br label %45

45:                                               ; preds = %41, %39, %35, %32
  %46 = phi i32 [ %42, %41 ], [ 0, %32 ], [ 0, %35 ], [ 0, %39 ]
  ret i32 %46
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_processed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_mailbox(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_get_channel_type(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_phy_irq_thread(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %1, i32 0, i32 12
  %4 = load volatile i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %1, i32 0, i32 3
  %8 = load ptr, ptr @system_wq, align 4
  %9 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %8, ptr noundef %7, i32 noundef 1) #6
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ 1, %6 ], [ 0, %2 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"auto-init"}
