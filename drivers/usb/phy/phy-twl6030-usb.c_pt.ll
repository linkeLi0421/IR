; ModuleID = '/llk/IR/drivers/usb/phy/phy-twl6030-usb.c_pt.bc'
source_filename = "../drivers/usb/phy/phy-twl6030-usb.c"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
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
%struct.twl6030_usb = type { %struct.phy_companion, ptr, %struct.spinlock, ptr, %struct.delayed_work, %struct.work_struct, i32, i32, i32, i8, i8 }
%struct.phy_companion = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@twl6030_usb_id_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_alias252 = internal constant [27 x i8] c"alias=platform:twl6030_usb\00", section ".modinfo", align 1
@__UNIQUE_ID_author253 = internal constant [31 x i8] c"author=Hema HK <hemahk@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [43 x i8] c"description=TWL6030 USB transceiver driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@twl6030_usb_driver = internal global %struct.platform_driver { ptr @twl6030_usb_probe, ptr @twl6030_usb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @twl6030_usb_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl6030_groups, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [12 x i8] c"twl6030_usb\00", align 1
@twl6030_groups = internal global [2 x ptr] [ptr @twl6030_group, ptr null], align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"no DT info\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"phy not ready, deferring probe\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"ldo init failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"can't get IRQ %d, err %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Initialized TWL6030 USB module\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"Write[0x%x] Error %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Failed to enable usb3v3\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"readb[0x%x,0x%x] Error %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@twl6030_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @twl6030_attrs, ptr null }, align 4
@twl6030_attrs = internal global [2 x ptr] [ptr @dev_attr_vbus, ptr null], align 4
@dev_attr_vbus = internal global %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292 }, ptr @vbus_show, ptr null }, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"vbus\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"none\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"UNKNOWN\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias252, ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_license255], section "llvm.metadata"

@__mod_of__twl6030_usb_id_table_device_table = dso_local alias [2 x %struct.of_device_id], ptr @twl6030_usb_id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @twl6030_usb_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @twl6030_usb_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl6030_usb_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #7
  br label %63

7:                                                ; preds = %1
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 96, i32 noundef 3520) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %63, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.twl6030_usb, ptr %8, i32 0, i32 1
  store ptr %2, ptr %11, align 4
  %12 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %13 = getelementptr inbounds %struct.twl6030_usb, ptr %8, i32 0, i32 6
  store i32 %12, ptr %13, align 4
  %14 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 1) #6
  %15 = getelementptr inbounds %struct.twl6030_usb, ptr %8, i32 0, i32 7
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.twl6030_usb, ptr %8, i32 0, i32 8
  store i32 0, ptr %16, align 4
  %17 = load i32, ptr %13, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %63, label %19

19:                                               ; preds = %10
  %20 = icmp slt i32 %14, 0
  br i1 %20, label %63, label %21

21:                                               ; preds = %19
  store ptr @twl6030_set_vbus, ptr %8, align 4
  %22 = getelementptr inbounds %struct.phy_companion, ptr %8, i32 0, i32 1
  store ptr @twl6030_start_srp, ptr %22, align 4
  %23 = tail call i32 @omap_usb2_set_comparator(ptr noundef nonnull %8) #6
  %24 = icmp eq i32 %23, -19
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.2) #7
  br label %63

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.twl6030_usb, ptr %8, i32 0, i32 2
  store i32 0, ptr %27, align 4
  %28 = tail call fastcc i32 @twl6030_usb_ldo_init(ptr noundef nonnull %8)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #7
  br label %63

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %8, ptr %32, align 8
  %33 = getelementptr inbounds %struct.twl6030_usb, ptr %8, i32 0, i32 5
  store i32 -32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.twl6030_usb, ptr %8, i32 0, i32 5, i32 1
  store volatile ptr %34, ptr %34, align 4
  %35 = getelementptr inbounds %struct.twl6030_usb, ptr %8, i32 0, i32 5, i32 1, i32 1
  store ptr %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.twl6030_usb, ptr %8, i32 0, i32 5, i32 2
  store ptr @otg_set_vbus_work, ptr %36, align 4
  %37 = getelementptr inbounds %struct.twl6030_usb, ptr %8, i32 0, i32 4
  store i32 -32, ptr %37, align 4
  %38 = getelementptr inbounds %struct.twl6030_usb, ptr %8, i32 0, i32 4, i32 0, i32 1
  store volatile ptr %38, ptr %38, align 4
  %39 = getelementptr inbounds %struct.twl6030_usb, ptr %8, i32 0, i32 4, i32 0, i32 1, i32 1
  store ptr %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.twl6030_usb, ptr %8, i32 0, i32 4, i32 0, i32 2
  store ptr @twl6030_status_work, ptr %40, align 4
  %41 = getelementptr inbounds %struct.twl6030_usb, ptr %8, i32 0, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %41, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #6
  %42 = load i32, ptr %13, align 4
  %43 = tail call i32 @request_threaded_irq(i32 noundef %42, ptr noundef null, ptr noundef nonnull @twl6030_usbotg_irq, i32 noundef 8195, ptr noundef nonnull @.str, ptr noundef nonnull %8) #6
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %31
  %46 = load i32, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %46, i32 noundef %43) #7
  br label %59

47:                                               ; preds = %31
  %48 = load i32, ptr %15, align 4
  %49 = tail call i32 @request_threaded_irq(i32 noundef %48, ptr noundef null, ptr noundef nonnull @twl6030_usb_irq, i32 noundef 8195, ptr noundef nonnull @.str, ptr noundef nonnull %8) #6
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %52, i32 noundef %49) #7
  %53 = load i32, ptr %13, align 4
  %54 = tail call ptr @free_irq(i32 noundef %53, ptr noundef nonnull %8) #6
  br label %59

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.twl6030_usb, ptr %8, i32 0, i32 9
  store i8 0, ptr %56, align 4
  tail call fastcc void @twl6030_enable_irq(ptr noundef nonnull %8)
  %57 = load ptr, ptr @system_wq, align 4
  %58 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %57, ptr noundef %37, i32 noundef 100) #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.5) #7
  br label %63

59:                                               ; preds = %51, %45
  %60 = phi i32 [ %43, %45 ], [ %49, %51 ]
  %61 = getelementptr inbounds %struct.twl6030_usb, ptr %8, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  tail call void @regulator_put(ptr noundef %62) #6
  br label %63

63:                                               ; preds = %59, %55, %30, %25, %19, %10, %7, %6
  %64 = phi i32 [ -517, %25 ], [ %28, %30 ], [ %60, %59 ], [ 0, %55 ], [ -22, %6 ], [ -12, %7 ], [ %17, %10 ], [ %14, %19 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl6030_usb_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.twl6030_usb, ptr %3, i32 0, i32 4
  %5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %4) #6
  %6 = tail call i32 @twl6030_interrupt_mask(i8 noundef zeroext 15, i8 noundef zeroext 5) #6
  %7 = tail call i32 @twl6030_interrupt_mask(i8 noundef zeroext 15, i8 noundef zeroext 8) #6
  %8 = getelementptr inbounds %struct.twl6030_usb, ptr %3, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %3) #6
  %11 = getelementptr inbounds %struct.twl6030_usb, ptr %3, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = tail call ptr @free_irq(i32 noundef %12, ptr noundef %3) #6
  %14 = getelementptr inbounds %struct.twl6030_usb, ptr %3, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  tail call void @regulator_put(ptr noundef %15) #6
  %16 = getelementptr inbounds %struct.twl6030_usb, ptr %3, i32 0, i32 5
  %17 = tail call zeroext i1 @cancel_work_sync(ptr noundef %16) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl6030_set_vbus(ptr noundef %0, i1 noundef zeroext %1) #2 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %struct.twl6030_usb, ptr %0, i32 0, i32 10
  store i8 %3, ptr %4, align 1
  %5 = getelementptr inbounds %struct.twl6030_usb, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr @system_wq, align 4
  %7 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %6, ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl6030_start_srp(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #6
  store i8 36, ptr %4, align 1
  %5 = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %4, i8 noundef zeroext 4, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #6
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.twl6030_usb, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef 4, i32 noundef %5) #7
  br label %10

10:                                               ; preds = %7, %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  store i8 -124, ptr %3, align 1
  %11 = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %3, i8 noundef zeroext 4, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.twl6030_usb, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.6, i32 noundef 4, i32 noundef %11) #7
  br label %16

16:                                               ; preds = %13, %10
  br label %17

17:                                               ; preds = %17, %16
  %18 = phi i32 [ %19, %17 ], [ 100, %16 ]
  %19 = add nsw i32 %18, -1
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 214748000) #6
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %22, label %17

22:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  store i8 -96, ptr %2, align 1
  %23 = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %2, i8 noundef zeroext 5, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.twl6030_usb, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.6, i32 noundef 5, i32 noundef %23) #7
  br label %28

28:                                               ; preds = %25, %22
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_usb2_set_comparator(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @twl6030_usb_ldo_init(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #6
  store i8 1, ptr %6, align 1
  %7 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %6, i8 noundef zeroext -6, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #6
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.twl6030_usb, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.6, i32 noundef 250, i32 noundef %7) #7
  br label %12

12:                                               ; preds = %9, %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #6
  store i8 1, ptr %5, align 1
  %13 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %5, i8 noundef zeroext -11, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #6
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.twl6030_usb, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.6, i32 noundef 245, i32 noundef %13) #7
  br label %18

18:                                               ; preds = %15, %12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #6
  store i8 16, ptr %4, align 1
  %19 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %4, i8 noundef zeroext -27, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #6
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.twl6030_usb, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.6, i32 noundef 229, i32 noundef %19) #7
  br label %24

24:                                               ; preds = %21, %18
  %25 = getelementptr inbounds %struct.twl6030_usb, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = call ptr @regulator_get(ptr noundef %26, ptr noundef nonnull @.str.7) #6
  %28 = getelementptr inbounds %struct.twl6030_usb, ptr %0, i32 0, i32 3
  store ptr %27, ptr %28, align 4
  %29 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %40, label %30

30:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  store i8 4, ptr %3, align 1
  %31 = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %3, i8 noundef zeroext 4, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load ptr, ptr %25, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.6, i32 noundef 4, i32 noundef %31) #7
  br label %35

35:                                               ; preds = %33, %30
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  store i8 20, ptr %2, align 1
  %36 = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %2, i8 noundef zeroext 6, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load ptr, ptr %25, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.6, i32 noundef 6, i32 noundef %36) #7
  br label %40

40:                                               ; preds = %38, %35, %24
  %41 = phi i32 [ -19, %24 ], [ 0, %35 ], [ 0, %38 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @otg_set_vbus_work(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = getelementptr i8, ptr %0, i32 29
  %5 = load i8, ptr %4, align 1, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  store i8 64, ptr %3, align 1
  %8 = call i32 @twl_i2c_write(i8 noundef zeroext 2, ptr noundef nonnull %3, i8 noundef zeroext 8, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %13, label %17

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  store i8 0, ptr %2, align 1
  %11 = call i32 @twl_i2c_write(i8 noundef zeroext 2, ptr noundef nonnull %2, i8 noundef zeroext 8, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10, %7
  %14 = phi i32 [ %8, %7 ], [ %11, %10 ]
  %15 = getelementptr i8, ptr %0, i32 -56
  %16 = load ptr, ptr %15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.6, i32 noundef 8, i32 noundef %14) #7
  br label %17

17:                                               ; preds = %13, %10, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @twl6030_status_work(ptr nocapture noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -20
  %3 = getelementptr i8, ptr %0, i32 64
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 @twl6030_usb_irq(i32 noundef %4, ptr noundef %2)
  %6 = getelementptr i8, ptr %0, i32 60
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @twl6030_usbotg_irq(i32 noundef %7, ptr noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl6030_usbotg_irq(i32 noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #6
  store i8 0, ptr %8, align 1, !annotation !9
  %9 = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %8, i8 noundef zeroext 33, i32 noundef 1) #6
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i8, ptr %8, align 1
  %13 = zext i8 %12 to i32
  br label %17

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.twl6030_usb, ptr %1, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.9, i32 noundef 9, i32 noundef 33, i32 noundef %9) #7
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i32 [ %13, %11 ], [ %9, %14 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #6
  %19 = and i32 %18, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %47, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.twl6030_usb, ptr %1, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 @regulator_enable(ptr noundef %23) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.twl6030_usb, ptr %1, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.8) #7
  br label %29

29:                                               ; preds = %26, %21
  %30 = getelementptr inbounds %struct.twl6030_usb, ptr %1, i32 0, i32 9
  store i8 1, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #6
  store i8 1, ptr %7, align 1
  %31 = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %7, i8 noundef zeroext 21, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #6
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.twl6030_usb, ptr %1, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.6, i32 noundef 21, i32 noundef %31) #7
  br label %36

36:                                               ; preds = %33, %29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #6
  store i8 16, ptr %6, align 1
  %37 = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %6, i8 noundef zeroext 20, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #6
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.twl6030_usb, ptr %1, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.6, i32 noundef 20, i32 noundef %37) #7
  br label %42

42:                                               ; preds = %39, %36
  %43 = getelementptr inbounds %struct.twl6030_usb, ptr %1, i32 0, i32 8
  store i32 1, ptr %43, align 4
  %44 = call i32 @musb_mailbox(i32 noundef 1) #6
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %42
  store i32 0, ptr %43, align 4
  br label %59

47:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #6
  store i8 16, ptr %5, align 1
  %48 = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %5, i8 noundef zeroext 21, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #6
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.twl6030_usb, ptr %1, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.6, i32 noundef 21, i32 noundef %48) #7
  br label %53

53:                                               ; preds = %50, %47
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #6
  store i8 1, ptr %4, align 1
  %54 = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %4, i8 noundef zeroext 20, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #6
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.twl6030_usb, ptr %1, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.6, i32 noundef 20, i32 noundef %54) #7
  br label %59

59:                                               ; preds = %56, %53, %46, %42
  %60 = phi i8 [ 1, %46 ], [ 1, %42 ], [ 0, %53 ], [ 0, %56 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  store i8 %60, ptr %3, align 1
  %61 = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %3, i8 noundef zeroext 17, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.twl6030_usb, ptr %1, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.6, i32 noundef 17, i32 noundef %61) #7
  br label %66

66:                                               ; preds = %63, %59
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl6030_usb_irq(i32 noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #6
  store i8 0, ptr %4, align 1, !annotation !9
  %5 = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %4, i8 noundef zeroext 33, i32 noundef 1) #6
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i8, ptr %4, align 1
  %9 = zext i8 %8 to i32
  br label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.twl6030_usb, ptr %1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.9, i32 noundef 9, i32 noundef 33, i32 noundef %5) #7
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi i32 [ %9, %7 ], [ %5, %10 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  store i8 0, ptr %3, align 1, !annotation !9
  %15 = call i32 @twl_i2c_read(i8 noundef zeroext 2, ptr noundef nonnull %3, i8 noundef zeroext 3, i32 noundef 1) #6
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i8, ptr %3, align 1
  %19 = zext i8 %18 to i32
  br label %23

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.twl6030_usb, ptr %1, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.9, i32 noundef 2, i32 noundef 3, i32 noundef %15) #7
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i32 [ %19, %17 ], [ %15, %20 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  %25 = and i32 %14, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %23
  %28 = and i32 %24, 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.twl6030_usb, ptr %1, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = call i32 @regulator_enable(ptr noundef %32) #6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.twl6030_usb, ptr %1, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.8) #7
  br label %38

38:                                               ; preds = %35, %30
  %39 = getelementptr inbounds %struct.twl6030_usb, ptr %1, i32 0, i32 9
  store i8 1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.twl6030_usb, ptr %1, i32 0, i32 8
  store i32 3, ptr %40, align 4
  %41 = call i32 @musb_mailbox(i32 noundef 3) #6
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %60, label %43

43:                                               ; preds = %38
  store i32 0, ptr %40, align 4
  br label %60

44:                                               ; preds = %27
  %45 = getelementptr inbounds %struct.twl6030_usb, ptr %1, i32 0, i32 8
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %44
  store i32 4, ptr %45, align 4
  %49 = call i32 @musb_mailbox(i32 noundef 4) #6
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  store i32 0, ptr %45, align 4
  br label %52

52:                                               ; preds = %51, %48
  %53 = getelementptr inbounds %struct.twl6030_usb, ptr %1, i32 0, i32 9
  %54 = load i8, ptr %53, align 4
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.twl6030_usb, ptr %1, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = call i32 @regulator_disable(ptr noundef %58) #6
  store i8 0, ptr %53, align 4
  br label %60

60:                                               ; preds = %56, %52, %44, %43, %38, %23
  %61 = getelementptr inbounds %struct.twl6030_usb, ptr %1, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  call void @sysfs_notify(ptr noundef %62, ptr noundef null, ptr noundef nonnull @.str.10) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @twl6030_enable_irq(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  store i8 1, ptr %2, align 1
  %3 = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %2, i8 noundef zeroext 20, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.twl6030_usb, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.6, i32 noundef 20, i32 noundef %3) #7
  br label %8

8:                                                ; preds = %5, %1
  %9 = call i32 @twl6030_interrupt_unmask(i8 noundef zeroext 5, i8 noundef zeroext 5) #6
  %10 = call i32 @twl6030_interrupt_unmask(i8 noundef zeroext 5, i8 noundef zeroext 8) #6
  %11 = call i32 @twl6030_interrupt_unmask(i8 noundef zeroext 16, i8 noundef zeroext 5) #6
  %12 = call i32 @twl6030_interrupt_unmask(i8 noundef zeroext 16, i8 noundef zeroext 8) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_write(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_mailbox(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_read(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl6030_interrupt_unmask(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl6030_interrupt_mask(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vbus_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.twl6030_usb, ptr %5, i32 0, i32 2
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #6
  %8 = getelementptr inbounds %struct.twl6030_usb, ptr %5, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %13 [
    i32 3, label %10
    i32 1, label %11
    i32 4, label %12
  ]

10:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.11, i32 6, i1 false)
  br label %14

11:                                               ; preds = %3
  store i32 681065, ptr %2, align 1
  br label %14

12:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.13, i32 6, i1 false)
  br label %14

13:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(9) %2, ptr noundef nonnull align 1 dereferenceable(9) @.str.14, i32 9, i1 false)
  br label %14

14:                                               ; preds = %13, %12, %11, %10
  %15 = phi i32 [ 8, %13 ], [ 5, %12 ], [ 3, %11 ], [ 5, %10 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #6
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
