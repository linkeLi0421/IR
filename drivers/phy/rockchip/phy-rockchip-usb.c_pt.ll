; ModuleID = '/llk/IR/drivers/phy/rockchip/phy-rockchip-usb.c_pt.bc'
source_filename = "../drivers/phy/rockchip/phy-rockchip-usb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rockchip_usb_phy_pdata = type { ptr, ptr, i32 }
%struct.rockchip_usb_phys = type { i32, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rockchip_usb_phy_base = type { ptr, ptr, ptr }
%struct.rockchip_usb_phy = type { ptr, ptr, i32, ptr, ptr, %struct.clk_hw, ptr, i8, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@__initcall__kmod_phy_rockchip_usb__248_519_rockchip_usb_driver_init6 = internal global ptr @rockchip_usb_driver_init, section ".initcall6.init", align 4
@rockchip_usb_driver = internal global %struct.platform_driver { ptr @rockchip_usb_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rockchip_usb_phy_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_rockchip_usb_driver_exit = internal global ptr @rockchip_usb_driver_exit, section ".exitcall.exit", align 4
@__initcall__kmod_phy_rockchip_usb__249_569_rockchip_init_usb_uartearly = internal global ptr @rockchip_init_usb_uart, section ".initcallearly.init", align 4
@__setup_str_rockchip_usb_uart = internal constant [18 x i8] c"rockchip.usb_uart\00", section ".init.rodata", align 1
@__setup_rockchip_usb_uart = internal global %struct.obs_kernel_param { ptr @__setup_str_rockchip_usb_uart, ptr @rockchip_usb_uart, i32 1 }, section ".init.setup", align 4
@__UNIQUE_ID_author250 = internal constant [55 x i8] c"phy_rockchip_usb.author=Yunzhi Li <lyz@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [57 x i8] c"phy_rockchip_usb.description=Rockchip USB 2.0 PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file252 = internal constant [60 x i8] c"phy_rockchip_usb.file=drivers/phy/rockchip/phy-rockchip-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [32 x i8] c"phy_rockchip_usb.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [17 x i8] c"rockchip-usb-phy\00", align 1
@rockchip_usb_phy_dt_ids = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3066a-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3066a_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3188-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3188_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3288_pdata }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"missing phy data\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"rockchip,grf\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Missing rockchip,grf property\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"missing reg property in node %pOFn\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"phy-reset\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"phyclk\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"phy data not found\0A\00", align 1
@enable_usb_uart = internal unnamed_addr global i1 false, align 4
@rockchip_usb_phy480m_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @rockchip_usb_phy480m_enable, ptr @rockchip_usb_phy480m_disable, ptr @rockchip_usb_phy480m_is_enabled, ptr null, ptr null, ptr null, ptr @rockchip_usb_phy480m_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ops = internal constant %struct.phy_ops { ptr null, ptr null, ptr @rockchip_usb_phy_power_on, ptr @rockchip_usb_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_usb_phy_reset, ptr null, ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"failed to create PHY\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rk3066a_pdata = internal constant %struct.rockchip_usb_phy_pdata { ptr @.compoundliteral, ptr null, i32 0 }, align 4
@rk3188_pdata = internal constant %struct.rockchip_usb_phy_pdata { ptr @.compoundliteral.13, ptr @rk3188_init_usb_uart, i32 0 }, align 4
@rk3288_pdata = internal constant %struct.rockchip_usb_phy_pdata { ptr @.compoundliteral.15, ptr @rk3288_init_usb_uart, i32 0 }, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"sclk_otgphy0_480m\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"sclk_otgphy1_480m\00", align 1
@.compoundliteral = internal global [3 x %struct.rockchip_usb_phys] [%struct.rockchip_usb_phys { i32 380, ptr @.str.11 }, %struct.rockchip_usb_phys { i32 392, ptr @.str.12 }, %struct.rockchip_usb_phys zeroinitializer], align 4
@.compoundliteral.13 = internal global [3 x %struct.rockchip_usb_phys] [%struct.rockchip_usb_phys { i32 268, ptr @.str.11 }, %struct.rockchip_usb_phys { i32 284, ptr @.str.12 }, %struct.rockchip_usb_phys zeroinitializer], align 4
@.str.14 = private unnamed_addr constant [18 x i8] c"sclk_otgphy2_480m\00", align 1
@.compoundliteral.15 = internal global [4 x %struct.rockchip_usb_phys] [%struct.rockchip_usb_phys { i32 800, ptr @.str.11 }, %struct.rockchip_usb_phys { i32 820, ptr @.str.12 }, %struct.rockchip_usb_phys { i32 840, ptr @.str.14 }, %struct.rockchip_usb_phys zeroinitializer], align 4
@.str.16 = private unnamed_addr constant [34 x i8] c"\013%s: failed to find usbphy node\0A\00", align 1
@__func__.rockchip_init_usb_uart = private unnamed_addr constant [23 x i8] c"rockchip_init_usb_uart\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"\013%s: usb-uart not available on %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"\013%s: Missing rockchip,grf property, %lu\0A\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"\013%s: could not init usb_uart, %d\0A\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_license253, ptr @__exitcall_rockchip_usb_driver_exit, ptr @__initcall__kmod_phy_rockchip_usb__248_519_rockchip_usb_driver_init6, ptr @__initcall__kmod_phy_rockchip_usb__249_569_rockchip_init_usb_uartearly, ptr @__setup_rockchip_usb_uart, ptr @rockchip_usb_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rockchip_usb_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rockchip_usb_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rockchip_usb_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rockchip_usb_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rockchip_init_usb_uart() #0 section ".init.text" {
  %1 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #8
  store ptr null, ptr %1, align 4, !annotation !8
  %2 = load i1, ptr @enable_usb_uart, align 4
  br i1 %2, label %3, label %39

3:                                                ; preds = %0
  %4 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @rockchip_usb_phy_dt_ids, ptr noundef nonnull %1) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.rockchip_init_usb_uart) #9
  br label %39

8:                                                ; preds = %3
  %9 = load ptr, ptr %1, align 4
  %10 = getelementptr inbounds %struct.of_device_id, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rockchip_usb_phy_pdata, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.of_device_id, ptr %9, i32 0, i32 2
  %17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.rockchip_init_usb_uart, ptr noundef %16) #9
  br label %39

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.device_node, ptr %4, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = call ptr @syscon_node_to_regmap(ptr noundef nonnull %20) #8
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %18
  %26 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef nonnull %4, ptr noundef nonnull @.str.2) #8
  br label %27

27:                                               ; preds = %25, %22
  %28 = phi ptr [ %26, %25 ], [ %23, %22 ]
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = ptrtoint ptr %28 to i32
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.rockchip_init_usb_uart, i32 noundef %31) #9
  br label %39

33:                                               ; preds = %27
  %34 = load ptr, ptr %12, align 4
  %35 = call i32 %34(ptr noundef %28, ptr noundef %11) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.rockchip_init_usb_uart, i32 noundef %35) #9
  store i1 false, ptr @enable_usb_uart, align 4
  br label %39

39:                                               ; preds = %37, %33, %30, %15, %6, %0
  %40 = phi i32 [ %31, %30 ], [ %35, %37 ], [ -524, %15 ], [ -524, %6 ], [ 0, %0 ], [ 0, %33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #8
  ret i32 %40
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @rockchip_usb_uart(ptr nocapture noundef readnone %0) #2 section ".init.text" {
  store i1 true, ptr @enable_usb_uart, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_usb_phy_probe(ptr noundef %0) #3 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca %struct.clk_init_data, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 12, i32 noundef 3520) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %203, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.device_driver, ptr %10, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = tail call ptr @of_match_device(ptr noundef %12, ptr noundef %5) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.of_device_id, ptr %13, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #9
  br label %203

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.rockchip_usb_phy_base, ptr %6, i32 0, i32 2
  store ptr %17, ptr %21, align 4
  store ptr %5, ptr %6, align 4
  %22 = getelementptr inbounds %struct.rockchip_usb_phy_base, ptr %6, i32 0, i32 1
  %23 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 25
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = tail call ptr @syscon_node_to_regmap(ptr noundef nonnull %28) #8
  store ptr %31, ptr %22, align 4
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %37

33:                                               ; preds = %30, %26, %20
  %34 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %35 = load ptr, ptr %34, align 8
  %36 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %35, ptr noundef nonnull @.str.2) #8
  store ptr %36, ptr %22, align 4
  br label %37

37:                                               ; preds = %33, %30
  %38 = phi ptr [ %36, %33 ], [ %31, %30 ]
  %39 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3) #9
  %41 = load ptr, ptr %22, align 4
  %42 = ptrtoint ptr %41 to i32
  br label %203

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %45 = load ptr, ptr %44, align 8
  %46 = tail call ptr @of_get_next_available_child(ptr noundef %45, ptr noundef null) #8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %198, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds i8, ptr %4, i32 4
  %50 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 6
  %51 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 2
  %52 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 5
  br label %53

53:                                               ; preds = %194, %48
  %54 = phi ptr [ %46, %48 ], [ %196, %194 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %49, i8 0, i32 24, i1 false) #8, !annotation !8
  %55 = load ptr, ptr %6, align 4
  %56 = call noalias ptr @devm_kmalloc(ptr noundef %55, i32 noundef 48, i32 noundef 3520) #8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %187, label %58

58:                                               ; preds = %53
  store ptr %6, ptr %56, align 4
  %59 = getelementptr inbounds %struct.rockchip_usb_phy, ptr %56, i32 0, i32 1
  store ptr %54, ptr %59, align 4
  %60 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %54, ptr noundef nonnull @.str.4, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.5, ptr noundef nonnull %54) #9
  br label %187

64:                                               ; preds = %58
  %65 = call ptr @__of_reset_control_get(ptr noundef nonnull %54, ptr noundef nonnull @.str.6, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %66 = getelementptr inbounds %struct.rockchip_usb_phy, ptr %56, i32 0, i32 8
  %67 = icmp ugt ptr %65, inttoptr (i32 -4096 to ptr)
  %68 = select i1 %67, ptr null, ptr %65
  store ptr %68, ptr %66, align 4
  %69 = load i32, ptr %2, align 4
  %70 = getelementptr inbounds %struct.rockchip_usb_phy, ptr %56, i32 0, i32 2
  store i32 %69, ptr %70, align 4
  %71 = call ptr @of_clk_get_by_name(ptr noundef nonnull %54, ptr noundef nonnull @.str.7) #8
  %72 = getelementptr inbounds %struct.rockchip_usb_phy, ptr %56, i32 0, i32 3
  %73 = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  %74 = select i1 %73, ptr null, ptr %71
  store ptr %74, ptr %72, align 4
  %75 = load ptr, ptr %21, align 4
  %76 = load ptr, ptr %75, align 4
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %94, label %79

79:                                               ; preds = %64
  %80 = load i32, ptr %2, align 4
  br label %81

81:                                               ; preds = %85, %79
  %82 = phi i32 [ %77, %79 ], [ %88, %85 ]
  %83 = phi i32 [ 0, %79 ], [ %86, %85 ]
  %84 = icmp eq i32 %82, %80
  br i1 %84, label %90, label %85

85:                                               ; preds = %81
  %86 = add i32 %83, 1
  %87 = getelementptr %struct.rockchip_usb_phys, ptr %76, i32 %86
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %94, label %81

90:                                               ; preds = %81
  %91 = getelementptr %struct.rockchip_usb_phys, ptr %76, i32 %83, i32 1
  %92 = load ptr, ptr %91, align 4
  store ptr %92, ptr %4, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %90, %85, %64
  %95 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.8) #9
  br label %187

96:                                               ; preds = %90
  %97 = load i1, ptr @enable_usb_uart, align 4
  br i1 %97, label %98, label %104

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.rockchip_usb_phy_pdata, ptr %75, i32 0, i32 2
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, %83
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.rockchip_usb_phy, ptr %56, i32 0, i32 7
  store i8 1, ptr %103, align 4
  br label %122

104:                                              ; preds = %98, %96
  %105 = icmp eq ptr %74, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %104
  %107 = call ptr @__clk_get_name(ptr noundef nonnull %74) #8
  store ptr %107, ptr %3, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi ptr [ %3, %106 ], [ null, %104 ]
  %110 = phi i8 [ 1, %106 ], [ 0, %104 ]
  store i32 0, ptr %50, align 4
  store ptr %109, ptr %51, align 4
  store i8 %110, ptr %52, align 4
  store ptr @rockchip_usb_phy480m_ops, ptr %49, align 4
  %111 = getelementptr inbounds %struct.rockchip_usb_phy, ptr %56, i32 0, i32 5
  %112 = getelementptr inbounds %struct.rockchip_usb_phy, ptr %56, i32 0, i32 5, i32 2
  store ptr %4, ptr %112, align 4
  %113 = load ptr, ptr %6, align 4
  %114 = call ptr @clk_register(ptr noundef %113, ptr noundef %111) #8
  %115 = getelementptr inbounds %struct.rockchip_usb_phy, ptr %56, i32 0, i32 4
  store ptr %114, ptr %115, align 4
  %116 = icmp ugt ptr %114, inttoptr (i32 -4096 to ptr)
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = ptrtoint ptr %114 to i32
  br label %182

119:                                              ; preds = %108
  %120 = call i32 @of_clk_add_provider(ptr noundef nonnull %54, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %114) #8
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %176, label %122

122:                                              ; preds = %119, %102
  %123 = load ptr, ptr %6, align 4
  %124 = call i32 @devm_add_action(ptr noundef %123, ptr noundef nonnull @rockchip_usb_phy_action, ptr noundef nonnull %56) #8
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %139, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.rockchip_usb_phy, ptr %56, i32 0, i32 7
  %128 = load i8, ptr %127, align 4, !range !9
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.rockchip_usb_phy, ptr %56, i32 0, i32 1
  %132 = load ptr, ptr %131, align 4
  call void @of_clk_del_provider(ptr noundef %132) #8
  %133 = getelementptr inbounds %struct.rockchip_usb_phy, ptr %56, i32 0, i32 4
  %134 = load ptr, ptr %133, align 4
  call void @clk_unregister(ptr noundef %134) #8
  br label %135

135:                                              ; preds = %130, %126
  %136 = load ptr, ptr %72, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %187, label %138

138:                                              ; preds = %135
  call void @clk_put(ptr noundef nonnull %136) #8
  br label %187

139:                                              ; preds = %122
  %140 = load ptr, ptr %6, align 4
  %141 = call ptr @devm_phy_create(ptr noundef %140, ptr noundef nonnull %54, ptr noundef nonnull @ops) #8
  %142 = getelementptr inbounds %struct.rockchip_usb_phy, ptr %56, i32 0, i32 6
  store ptr %141, ptr %142, align 4
  %143 = icmp ugt ptr %141, inttoptr (i32 -4096 to ptr)
  br i1 %143, label %144, label %148

144:                                              ; preds = %139
  %145 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.9) #9
  %146 = load ptr, ptr %142, align 4
  %147 = ptrtoint ptr %146 to i32
  br label %189

148:                                              ; preds = %139
  %149 = getelementptr inbounds %struct.device, ptr %141, i32 0, i32 8
  store ptr %56, ptr %149, align 8
  %150 = load ptr, ptr %142, align 4
  %151 = call ptr @devm_regulator_get_optional(ptr noundef %150, ptr noundef nonnull @.str.10) #8
  %152 = getelementptr inbounds %struct.rockchip_usb_phy, ptr %56, i32 0, i32 9
  store ptr %151, ptr %152, align 4
  %153 = icmp ugt ptr %151, inttoptr (i32 -4096 to ptr)
  br i1 %153, label %154, label %157

154:                                              ; preds = %148
  %155 = icmp eq ptr %151, inttoptr (i32 -517 to ptr)
  br i1 %155, label %187, label %156

156:                                              ; preds = %154
  store ptr null, ptr %152, align 4
  br label %157

157:                                              ; preds = %156, %148
  %158 = getelementptr inbounds %struct.rockchip_usb_phy, ptr %56, i32 0, i32 7
  %159 = load i8, ptr %158, align 4, !range !9
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %170, label %161

161:                                              ; preds = %157
  %162 = load ptr, ptr %72, align 4
  %163 = call i32 @clk_prepare(ptr noundef %162) #8
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %187

165:                                              ; preds = %161
  %166 = call i32 @clk_enable(ptr noundef %162) #8
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %194

169:                                              ; preds = %165
  call void @clk_unprepare(ptr noundef %162) #8
  br label %187

170:                                              ; preds = %157
  %171 = load ptr, ptr %56, align 4
  %172 = getelementptr inbounds %struct.rockchip_usb_phy_base, ptr %171, i32 0, i32 1
  %173 = load ptr, ptr %172, align 4
  %174 = load i32, ptr %70, align 4
  %175 = call i32 @regmap_write(ptr noundef %173, i32 noundef %174, i32 noundef 536879104) #8
  br label %189

176:                                              ; preds = %119
  %177 = getelementptr inbounds %struct.rockchip_usb_phy, ptr %56, i32 0, i32 7
  %178 = load i8, ptr %177, align 4, !range !9
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %176
  %181 = load ptr, ptr %115, align 4
  call void @clk_unregister(ptr noundef %181) #8
  br label %182

182:                                              ; preds = %180, %176, %117
  %183 = phi i32 [ %118, %117 ], [ %120, %176 ], [ %120, %180 ]
  %184 = load ptr, ptr %72, align 4
  %185 = icmp eq ptr %184, null
  br i1 %185, label %189, label %186

186:                                              ; preds = %182
  call void @clk_put(ptr noundef nonnull %184) #8
  br label %189

187:                                              ; preds = %169, %161, %154, %138, %135, %94, %62, %53
  %188 = phi i32 [ %124, %138 ], [ %124, %135 ], [ %166, %169 ], [ -22, %94 ], [ -22, %62 ], [ %163, %161 ], [ -517, %154 ], [ -12, %53 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %192

189:                                              ; preds = %186, %182, %170, %144
  %190 = phi i32 [ %147, %144 ], [ %175, %170 ], [ %183, %186 ], [ %183, %182 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %189, %187
  %193 = phi i32 [ %188, %187 ], [ %190, %189 ]
  call void @of_node_put(ptr noundef nonnull %54) #8
  br label %203

194:                                              ; preds = %189, %168
  %195 = load ptr, ptr %44, align 8
  %196 = call ptr @of_get_next_available_child(ptr noundef %195, ptr noundef nonnull %54) #8
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %53

198:                                              ; preds = %194, %43
  %199 = call ptr @__devm_of_phy_provider_register(ptr noundef %5, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #8
  %200 = icmp ugt ptr %199, inttoptr (i32 -4096 to ptr)
  %201 = ptrtoint ptr %199 to i32
  %202 = select i1 %200, i32 %201, i32 0
  br label %203

203:                                              ; preds = %198, %192, %40, %19, %1
  %204 = phi i32 [ %42, %40 ], [ %193, %192 ], [ %202, %198 ], [ -22, %19 ], [ -12, %1 ]
  ret i32 %204
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rockchip_usb_phy_action(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.rockchip_usb_phy, ptr %0, i32 0, i32 7
  %3 = load i8, ptr %2, align 4, !range !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rockchip_usb_phy, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void @of_clk_del_provider(ptr noundef %7) #8
  %8 = getelementptr inbounds %struct.rockchip_usb_phy, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_unregister(ptr noundef %9) #8
  br label %10

10:                                               ; preds = %5, %1
  %11 = getelementptr inbounds %struct.rockchip_usb_phy, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @clk_put(ptr noundef nonnull %12) #8
  br label %15

15:                                               ; preds = %14, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_usb_phy480m_enable(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -20
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rockchip_usb_phy_base, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 -12
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %7, i32 noundef 536870912) #8
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rockchip_usb_phy480m_disable(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 24
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @regulator_disable(ptr noundef nonnull %3) #8
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr i8, ptr %0, i32 -20
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rockchip_usb_phy_base, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %0, i32 -12
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %13, i32 noundef 536879104) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_usb_phy480m_is_enabled(ptr nocapture noundef readonly %0) #3 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rockchip_usb_phy_base, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 -12
  %8 = load i32, ptr %7, align 4
  %9 = call i32 @regmap_read(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %2) #8
  %10 = icmp slt i32 %9, 0
  %11 = load i32, ptr %2, align 4
  %12 = lshr i32 %11, 13
  %13 = and i32 %12, 1
  %14 = xor i32 %13, 1
  %15 = select i1 %10, i32 %9, i32 %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @rockchip_usb_phy480m_recalc_rate(ptr nocapture noundef readnone %0, i32 noundef %1) #7 {
  ret i32 480000000
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_usb_phy_power_on(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rockchip_usb_phy, ptr %3, i32 0, i32 7
  %5 = load i8, ptr %4, align 4, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rockchip_usb_phy, ptr %3, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @regulator_enable(ptr noundef nonnull %9) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %11, %7
  %15 = getelementptr inbounds %struct.rockchip_usb_phy, ptr %3, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @clk_prepare(ptr noundef %16) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = tail call i32 @clk_enable(ptr noundef %16) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @clk_unprepare(ptr noundef %16) #8
  br label %23

23:                                               ; preds = %22, %19, %14, %11, %1
  %24 = phi i32 [ %12, %11 ], [ -16, %1 ], [ %17, %14 ], [ %20, %22 ], [ 0, %19 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_usb_phy_power_off(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rockchip_usb_phy, ptr %3, i32 0, i32 7
  %5 = load i8, ptr %4, align 4, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rockchip_usb_phy, ptr %3, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #8
  tail call void @clk_unprepare(ptr noundef %9) #8
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi i32 [ 0, %7 ], [ -16, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_usb_phy_reset(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rockchip_usb_phy, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @reset_control_assert(ptr noundef nonnull %5) #8
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #8
  %10 = load ptr, ptr %4, align 4
  %11 = tail call i32 @reset_control_deassert(ptr noundef %10) #8
  br label %12

12:                                               ; preds = %7, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rk3188_init_usb_uart(ptr noundef %0, ptr nocapture noundef readonly %1) #0 section ".init.text" {
  %3 = tail call fastcc i32 @rockchip_init_usb_uart_common(ptr noundef %0, ptr noundef %1) #10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 @regmap_write(ptr noundef %0, i32 noundef 268, i32 noundef 50332416) #8
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %3, %2 ], [ %6, %5 ]
  ret i32 %8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_init_usb_uart_common(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 section ".init.text" {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.rockchip_usb_phy_pdata, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr %struct.rockchip_usb_phys, ptr %3, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @regmap_write(ptr noundef %0, i32 noundef %7, i32 noundef 537993233) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = add i32 %7, 8
  %12 = tail call i32 @regmap_write(ptr noundef %0, i32 noundef %11, i32 noundef 262148) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = tail call i32 @regmap_write(ptr noundef %0, i32 noundef 12, i32 noundef 4128810) #8
  br label %16

16:                                               ; preds = %14, %10, %2
  %17 = phi i32 [ %8, %2 ], [ %12, %10 ], [ %15, %14 ]
  ret i32 %17
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rk3288_init_usb_uart(ptr noundef %0, ptr nocapture noundef readonly %1) #0 section ".init.text" {
  %3 = tail call fastcc i32 @rockchip_init_usb_uart_common(ptr noundef %0, ptr noundef %1) #10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 @regmap_write(ptr noundef %0, i32 noundef 812, i32 noundef 12583104) #8
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %3, %2 ], [ %6, %5 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { cold }

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
!9 = !{i8 0, i8 2}
