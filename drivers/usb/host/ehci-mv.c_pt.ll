; ModuleID = '/llk/IR/drivers/usb/host/ehci-mv.c_pt.bc'
source_filename = "../drivers/usb/host/ehci-mv.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ehci_driver_overrides = type { i32, ptr, ptr }
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
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.65, i32 }
%union.anon.65 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ehci_regs = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, [6 x i32], i32, %union.anon.72, %union.anon.74, [2 x i32], i32 }
%union.anon.72 = type { [15 x i32] }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { i32, [15 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mv_usb_platform_data = type { ptr, ptr, i32, i8, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ehci_hcd_mv = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_description252 = internal constant [32 x i8] c"description=Marvell EHCI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author253 = internal constant [39 x i8] c"author=Chao Xie <chao.xie@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [40 x i8] c"author=Neil Zhang <zhangwm@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias255 = internal constant [14 x i8] c"alias=mv-ehci\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@ehci_mv_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,pxau2o-ehci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@ehci_platform_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@platform_overrides = internal constant %struct.ehci_driver_overrides { i32 32, ptr @mv_ehci_reset, ptr null }, section ".init.rodata", align 4
@ehci_mv_driver = internal global %struct.platform_driver { ptr @mv_ehci_probe, ptr @mv_ehci_remove, ptr @mv_ehci_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr @platform_bus_type, ptr null, ptr null, i8 0, i32 0, ptr @ehci_mv_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ehci_id_table, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [32 x i8] c"Can not find private ehci data\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"ehci_setup failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"mv-ehci\00", align 1
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@ehci_id_table = internal constant [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"pxa-u2oehci\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"pxa-sph\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Failed to get phy.\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"error getting clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"init phy error %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"MV_USB_MODE_OTG must have CONFIG_USB_PHY enabled\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"unable to find transceiver\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"unable to register with transceiver\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"failed to add hcd with err %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [70 x i8] c"successful find EHCI device with regs 0x%p irq %d working in %s mode\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"OTG\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_alias255, ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_license256], section "llvm.metadata"

@__mod_of__ehci_mv_dt_ids_device_table = dso_local alias [2 x %struct.of_device_id], ptr @ehci_mv_dt_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @usb_disabled() #4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  tail call void @ehci_init_driver(ptr noundef nonnull @ehci_platform_hc_driver, ptr noundef nonnull @platform_overrides) #4
  %4 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ehci_mv_driver, ptr noundef nonnull @__this_module) #4
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i32 [ %4, %3 ], [ -19, %0 ]
  ret i32 %6
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ehci_mv_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ehci_init_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_ehci_reset(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 3, i32 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str) #5
  br label %40

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 14
  %8 = load i16, ptr %7, align 8
  %9 = or i16 %8, 128
  store i16 %9, ptr %7, align 8
  %10 = tail call i32 @ehci_setup(ptr noundef %0) #4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %10) #5
  br label %13

13:                                               ; preds = %12, %6
  %14 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 25
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i32 @of_usb_get_phy_mode(ptr noundef %15) #4
  %17 = icmp eq i32 %16, 5
  br i1 %17, label %18, label %40

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.ehci_regs, ptr %20, i32 0, i32 11
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %23 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 16384
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load ptr, ptr %19, align 8
  %29 = getelementptr inbounds %struct.ehci_regs, ptr %28, i32 0, i32 11
  %30 = or i32 %22, 327680
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %30) #4, !srcloc !11
  %31 = load i32, ptr %23, align 4
  br label %32

32:                                               ; preds = %27, %18
  %33 = phi i32 [ %24, %18 ], [ %31, %27 ]
  %34 = and i32 %33, 16384
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load ptr, ptr %19, align 8
  %38 = getelementptr inbounds %struct.ehci_regs, ptr %37, i32 0, i32 11
  %39 = and i32 %22, -327681
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %39) #4, !srcloc !11
  br label %40

40:                                               ; preds = %36, %32, %13, %5
  %41 = phi i32 [ -19, %5 ], [ %10, %13 ], [ %10, %32 ], [ %10, %36 ]
  ret i32 %41
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_usb_get_phy_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_ehci_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @usb_disabled() #4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %170

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load ptr, ptr %2, align 4
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %12, %11 ], [ %9, %7 ]
  %15 = tail call ptr @usb_create_hcd(ptr noundef nonnull @ehci_platform_hc_driver, ptr noundef %2, ptr noundef %14) #4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %170, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %15, ptr %18, align 8
  %19 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 2, i32 20, i32 3, i32 4
  store i32 1, ptr %19, align 4
  %20 = icmp eq ptr %4, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.mv_usb_platform_data, ptr %4, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %19, align 4
  %24 = getelementptr inbounds %struct.mv_usb_platform_data, ptr %4, i32 0, i32 6
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 2, i32 21, i32 3
  store ptr %25, ptr %26, align 4
  br label %27

27:                                               ; preds = %21, %17
  %28 = tail call ptr @devm_phy_optional_get(ptr noundef %2, ptr noundef nonnull @.str.3) #4
  %29 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 2, i32 21, i32 2, i32 1
  store ptr %28, ptr %29, align 4
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = icmp eq ptr %28, inttoptr (i32 -517 to ptr)
  br i1 %32, label %168, label %33

33:                                               ; preds = %31
  %34 = ptrtoint ptr %28 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #5
  br label %168

35:                                               ; preds = %27
  %36 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #4
  %37 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 2, i32 21, i32 2
  store ptr %36, ptr %37, align 4
  %38 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #5
  %40 = load ptr, ptr %37, align 4
  %41 = ptrtoint ptr %40 to i32
  br label %168

42:                                               ; preds = %35
  %43 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #4
  %44 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %43) #4
  %45 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 2, i32 20, i32 3, i32 5
  store ptr %44, ptr %45, align 4
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = ptrtoint ptr %44 to i32
  br label %168

49:                                               ; preds = %42
  %50 = load ptr, ptr %37, align 4
  %51 = tail call i32 @clk_prepare(ptr noundef %50) #4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = tail call i32 @clk_enable(ptr noundef %50) #4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load ptr, ptr %29, align 4
  %58 = tail call i32 @phy_init(ptr noundef %57) #4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %37, align 4
  tail call void @clk_disable(ptr noundef %61) #4
  br label %62

62:                                               ; preds = %60, %53
  %63 = phi ptr [ %61, %60 ], [ %50, %53 ]
  %64 = phi i32 [ %58, %60 ], [ %54, %53 ]
  tail call void @clk_unprepare(ptr noundef %63) #4
  br label %65

65:                                               ; preds = %62, %49
  %66 = phi i32 [ %64, %62 ], [ %51, %49 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %66) #5
  br label %168

67:                                               ; preds = %56
  %68 = load ptr, ptr %45, align 4
  %69 = ptrtoint ptr %68 to i32
  %70 = add i32 %69, 256
  %71 = inttoptr i32 %70 to ptr
  %72 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 2, i32 20, i32 4
  store ptr %71, ptr %72, align 4
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  %74 = and i32 %73, 255
  %75 = load ptr, ptr %72, align 4
  %76 = ptrtoint ptr %75 to i32
  %77 = add i32 %74, %76
  %78 = inttoptr i32 %77 to ptr
  %79 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 2, i32 21
  store ptr %78, ptr %79, align 4
  %80 = load i32, ptr %43, align 4
  %81 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 0, i32 17
  store i32 %80, ptr %81, align 4
  %82 = getelementptr inbounds %struct.resource, ptr %43, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = load i32, ptr %43, align 4
  %85 = add i32 %83, 1
  %86 = sub i32 %85, %84
  %87 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 0, i32 18
  store i32 %86, ptr %87, align 8
  %88 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 0, i32 16
  store ptr %78, ptr %88, align 8
  %89 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %163, label %91

91:                                               ; preds = %67
  %92 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 0, i32 15
  store i32 %89, ptr %92, align 4
  %93 = load ptr, ptr %72, align 4
  %94 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 1, i32 8
  store ptr %93, ptr %94, align 4
  %95 = load i32, ptr %19, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %119

97:                                               ; preds = %91
  %98 = tail call ptr @devm_usb_get_phy(ptr noundef %2, i32 noundef 1) #4
  %99 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 2, i32 21, i32 1
  store ptr %98, ptr %99, align 4
  %100 = icmp ugt ptr %98, inttoptr (i32 -4096 to ptr)
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = icmp eq ptr %98, inttoptr (i32 -6 to ptr)
  br i1 %102, label %103, label %104

103:                                              ; preds = %101
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.7) #5
  br label %163

104:                                              ; preds = %101
  %105 = ptrtoint ptr %98 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8) #5
  br label %163

106:                                              ; preds = %97
  %107 = getelementptr inbounds %struct.usb_phy, ptr %98, i32 0, i32 5
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %117, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.usb_otg, ptr %108, i32 0, i32 6
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %110
  %115 = tail call i32 %112(ptr noundef nonnull %108, ptr noundef nonnull %15) #4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114, %110, %106
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.9) #5
  br label %163

118:                                              ; preds = %114
  tail call fastcc void @mv_ehci_disable(ptr noundef %19)
  br label %136

119:                                              ; preds = %91
  %120 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 2, i32 21, i32 3
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %119
  %124 = tail call i32 %121(i32 noundef 1) #4
  %125 = load i32, ptr %92, align 4
  br label %126

126:                                              ; preds = %123, %119
  %127 = phi i32 [ %125, %123 ], [ %89, %119 ]
  %128 = tail call i32 @usb_add_hcd(ptr noundef nonnull %15, i32 noundef %127, i32 noundef 128) #4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %126
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %128) #5
  %131 = load ptr, ptr %120, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %163, label %161

133:                                              ; preds = %126
  %134 = load ptr, ptr %15, align 8
  %135 = tail call i32 @device_wakeup_enable(ptr noundef %134) #4
  br label %136

136:                                              ; preds = %133, %118
  %137 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %138 = load ptr, ptr %137, align 8
  %139 = tail call i32 @of_usb_get_phy_mode(ptr noundef %138) #4
  %140 = icmp eq i32 %139, 5
  br i1 %140, label %141, label %155

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 1, i32 8, i32 1
  %143 = load ptr, ptr %142, align 8
  %144 = getelementptr inbounds %struct.ehci_regs, ptr %143, i32 0, i32 11
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %144) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %146 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 2, i32 4, i32 8
  %147 = load i32, ptr %146, align 4
  %148 = and i32 %147, 16384
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %141
  %151 = load ptr, ptr %142, align 8
  %152 = getelementptr inbounds %struct.ehci_regs, ptr %151, i32 0, i32 11
  %153 = and i32 %145, 1040187391
  %154 = or i32 %153, 33554432
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 %154) #4, !srcloc !11
  br label %155

155:                                              ; preds = %150, %141, %136
  %156 = load ptr, ptr %88, align 8
  %157 = load i32, ptr %92, align 4
  %158 = load i32, ptr %19, align 4
  %159 = icmp eq i32 %158, 0
  %160 = select i1 %159, ptr @.str.12, ptr @.str.13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.11, ptr noundef %156, i32 noundef %157, ptr noundef nonnull %160) #5
  br label %170

161:                                              ; preds = %130
  %162 = tail call i32 %131(i32 noundef 0) #4
  br label %163

163:                                              ; preds = %161, %130, %117, %104, %103, %67
  %164 = phi i32 [ %89, %67 ], [ -6, %103 ], [ %105, %104 ], [ -19, %117 ], [ %128, %161 ], [ %128, %130 ]
  %165 = load ptr, ptr %29, align 4
  %166 = tail call i32 @phy_exit(ptr noundef %165) #4
  %167 = load ptr, ptr %37, align 4
  tail call void @clk_disable(ptr noundef %167) #4
  tail call void @clk_unprepare(ptr noundef %167) #4
  br label %168

168:                                              ; preds = %163, %65, %47, %39, %33, %31
  %169 = phi i32 [ %34, %33 ], [ -517, %31 ], [ %41, %39 ], [ %48, %47 ], [ %66, %65 ], [ %164, %163 ]
  tail call void @usb_put_hcd(ptr noundef nonnull %15) #4
  br label %170

170:                                              ; preds = %168, %155, %13, %1
  %171 = phi i32 [ %169, %168 ], [ 0, %155 ], [ -19, %1 ], [ -12, %13 ]
  ret i32 %171
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_ehci_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 3, i32 4
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 14
  %6 = load i16, ptr %5, align 8
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @usb_remove_hcd(ptr noundef %3) #4
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 21, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  %15 = or i1 %13, %14
  br i1 %15, label %26, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.usb_phy, ptr %12, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.usb_otg, ptr %18, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = tail call i32 %22(ptr noundef nonnull %18, ptr noundef null) #4
  br label %26

26:                                               ; preds = %24, %20, %16, %10
  %27 = load i32, ptr %4, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 21, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = tail call i32 %31(i32 noundef 0) #4
  br label %35

35:                                               ; preds = %33, %29
  %36 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 21, i32 2, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 @phy_exit(ptr noundef %37) #4
  %39 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 21, i32 2
  %40 = load ptr, ptr %39, align 4
  tail call void @clk_disable(ptr noundef %40) #4
  tail call void @clk_unprepare(ptr noundef %40) #4
  br label %41

41:                                               ; preds = %35, %26
  tail call void @usb_put_hcd(ptr noundef %3) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv_ehci_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 14
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.hc_driver, ptr %10, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  tail call void %12(ptr noundef %3) #4
  br label %15

15:                                               ; preds = %14, %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_optional_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mv_ehci_disable(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ehci_hcd_mv, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @phy_exit(ptr noundef %3) #4
  %5 = getelementptr inbounds %struct.ehci_hcd_mv, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %6) #4
  tail call void @clk_unprepare(ptr noundef %6) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 4788500}
!9 = !{i64 2153843220}
!10 = !{i64 2153843730}
!11 = !{i64 4788082}
!12 = !{i64 2153848078}
