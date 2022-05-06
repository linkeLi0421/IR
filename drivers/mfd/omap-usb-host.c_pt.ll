; ModuleID = '/llk/IR/drivers/mfd/omap-usb-host.c_pt.bc'
source_filename = "../drivers/mfd/omap-usb-host.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.usbhs_omap_platform_data = type { i32, [3 x i32], [3 x i32], [3 x ptr], ptr, ptr, i8 }
%struct.usbhs_hcd_omap = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@__UNIQUE_ID_author223 = internal constant [63 x i8] c"omap_usb_host.author=Keshava Munegowda <keshava_mgowda@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author224 = internal constant [51 x i8] c"omap_usb_host.author=Roger Quadros <rogerq@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias225 = internal constant [40 x i8] c"omap_usb_host.alias=platform:usbhs_omap\00", section ".modinfo", align 1
@__UNIQUE_ID_file226 = internal constant [45 x i8] c"omap_usb_host.file=drivers/mfd/omap-usb-host\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [29 x i8] c"omap_usb_host.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [77 x i8] c"omap_usb_host.description=usb host common core driver for omap EHCI and OHCI\00", section ".modinfo", align 1
@__initcall__kmod_omap_usb_host__229_871_omap_usbhs_drvinit5s = internal global ptr @omap_usbhs_drvinit, section ".initcall5s.init", align 4
@__exitcall_omap_usbhs_drvexit = internal global ptr @omap_usbhs_drvexit, section ".exitcall.exit", align 4
@usbhs_omap_driver = internal global %struct.platform_driver { ptr @usbhs_omap_probe, ptr @usbhs_omap_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @usbhs_driver_name, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @usbhs_omap_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbhsomap_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@usbhs_driver_name = internal constant [11 x i8] c"usbhs_omap\00", align 1
@usbhs_omap_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,usbhs-host\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@usbhsomap_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbhs_runtime_suspend, ptr @usbhs_runtime_resume, ptr null }, align 4
@.str = private unnamed_addr constant [23 x i8] c"Missing platform data\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Too many num_ports <%d> in platform_data. Max %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Memory allocation failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"usbhost_120m_fck\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"usbhost_120m_fck failed:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"utmi_p1_gfclk\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"utmi_p1_gfclk failed error:%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"utmi_p2_gfclk\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"utmi_p2_gfclk failed error:%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"refclk_60m_ext_p1\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"refclk_60m_ext_p1 failed error:%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"refclk_60m_ext_p2\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"refclk_60m_ext_p2 failed error:%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"refclk_60m_int\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"refclk_60m_int failed error:%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"usb_host_hs_utmi_p%d_clk\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"Failed to get clock : %s : %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"usb_host_hs_hsic480m_p%d_clk\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"usb_host_hs_hsic60m_p%d_clk\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"xclk60mhsp1_ck set parent failed: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"P0 init_60m_fclk set parent failed: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"xclk60mhsp2_ck set parent failed: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"P1 init_60m_fclk set parent failed: %d\0A\00", align 1
@usbhs_child_match_table = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ehci-omap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ohci-omap3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.23 = private unnamed_addr constant [34 x i8] c"Failed to create DT children: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"omap_usbhs_alloc_children failed: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"num-ports\00", align 1
@.str.26 = private unnamed_addr constant [48 x i8] c"Too many num_ports <%d> in device tree. Max %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"port%d-mode\00", align 1
@port_modes = internal constant [14 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], align 4
@.str.28 = private unnamed_addr constant [41 x i8] c"Invalid port%d-mode \22%s\22 in device tree\0A\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"single-ulpi-bypass\00", align 1
@.str.30 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"ehci-phy\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"ehci-tll\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"ehci-hsic\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"ohci-phy-6pin-datse0\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"ohci-phy-6pin-dpdm\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"ohci-phy-3pin-datse0\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"ohci-phy-4pin-dpdm\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"ohci-tll-6pin-datse0\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"ohci-tll-6pin-dpdm\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"ohci-tll-3pin-datse0\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"ohci-tll-4pin-dpdm\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"ohci-tll-2pin-datse0\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"ohci-tll-2pin-dpdm\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"ehci\00", align 1
@.str.45 = private unnamed_addr constant [41 x i8] c"EHCI get resource IORESOURCE_MEM failed\0A\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"ehci-irq\00", align 1
@.str.47 = private unnamed_addr constant [42 x i8] c" EHCI get resource IORESOURCE_IRQ failed\0A\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"ehci-omap\00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"omap_usbhs_alloc_child failed\0A\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"ohci\00", align 1
@.str.51 = private unnamed_addr constant [41 x i8] c"OHCI get resource IORESOURCE_MEM failed\0A\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"ohci-irq\00", align 1
@.str.53 = private unnamed_addr constant [41 x i8] c"OHCI get resource IORESOURCE_IRQ failed\0A\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"ohci-omap3\00", align 1
@.str.55 = private unnamed_addr constant [33 x i8] c"platform_device_alloc %s failed\0A\00", align 1
@.str.56 = private unnamed_addr constant [38 x i8] c"platform_device_add_resources failed\0A\00", align 1
@.str.57 = private unnamed_addr constant [33 x i8] c"platform_device_add_data failed\0A\00", align 1
@usbhs_dmamask = internal global i64 4294967295, align 8
@.str.58 = private unnamed_addr constant [28 x i8] c"platform_device_add failed\0A\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"unregistering\0A\00", align 1
@.str.60 = private unnamed_addr constant [37 x i8] c"Can't enable port %d hsic60m clk:%d\0A\00", align 1
@.str.61 = private unnamed_addr constant [38 x i8] c"Can't enable port %d hsic480m clk:%d\0A\00", align 1
@.str.62 = private unnamed_addr constant [31 x i8] c"Can't enable port %d clk : %d\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias225, ptr @__UNIQUE_ID_author223, ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__exitcall_omap_usbhs_drvexit, ptr @__initcall__kmod_omap_usb_host__229_871_omap_usbhs_drvinit5s], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_usbhs_drvinit() #0 {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @usbhs_omap_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_usbhs_drvexit() #0 {
  tail call void @platform_driver_unregister(ptr noundef nonnull @usbhs_omap_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhs_omap_probe(ptr noundef %0) #0 {
  %2 = alloca [2 x %struct.resource], align 4
  %3 = alloca [11 x i8], align 1
  %4 = alloca ptr, align 4
  %5 = alloca [30 x i8], align 1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %64, label %10

10:                                               ; preds = %1
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 52, i32 noundef 3520) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %454, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %7, align 8
  %15 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %14, ptr noundef nonnull @.str.25, ptr noundef nonnull %11, i32 noundef 1, i32 noundef 0) #7
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store i32 0, ptr %11, align 4
  br label %21

18:                                               ; preds = %13
  %19 = load i32, ptr %11, align 4
  %20 = icmp sgt i32 %19, 3
  br i1 %20, label %26, label %21

21:                                               ; preds = %18, %17
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %3, i8 0, i32 11, i1 false) #7, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store ptr null, ptr %4, align 4, !annotation !8
  %22 = getelementptr %struct.usbhs_omap_platform_data, ptr %11, i32 0, i32 1, i32 0
  store i32 0, ptr %22, align 4
  %23 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 11, ptr noundef nonnull @.str.27, i32 noundef 1) #7
  %24 = call i32 @of_property_read_string(ptr noundef %14, ptr noundef nonnull %3, ptr noundef nonnull %4) #7
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %35, label %27

26:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.26, i32 noundef %19, i32 noundef 3) #8
  br label %454

27:                                               ; preds = %21
  %28 = load ptr, ptr %4, align 4
  %29 = call i32 @match_string(ptr noundef nonnull @port_modes, i32 noundef 14, ptr noundef %28) #7
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i32 %29, ptr %22, align 4
  br label %35

32:                                               ; preds = %50, %40, %27
  %33 = phi i32 [ 0, %27 ], [ 1, %40 ], [ 2, %50 ]
  %34 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.28, i32 noundef %33, ptr noundef %34) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %3) #7
  br label %454

35:                                               ; preds = %31, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %3, i8 0, i32 11, i1 false) #7, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store ptr null, ptr %4, align 4, !annotation !8
  %36 = getelementptr %struct.usbhs_omap_platform_data, ptr %11, i32 0, i32 1, i32 1
  store i32 0, ptr %36, align 4
  %37 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 11, ptr noundef nonnull @.str.27, i32 noundef 2) #7
  %38 = call i32 @of_property_read_string(ptr noundef %14, ptr noundef nonnull %3, ptr noundef nonnull %4) #7
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load ptr, ptr %4, align 4
  %42 = call i32 @match_string(ptr noundef nonnull @port_modes, i32 noundef 14, ptr noundef %41) #7
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %32, label %44

44:                                               ; preds = %40
  store i32 %42, ptr %36, align 4
  br label %45

45:                                               ; preds = %44, %35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %3, i8 0, i32 11, i1 false) #7, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store ptr null, ptr %4, align 4, !annotation !8
  %46 = getelementptr %struct.usbhs_omap_platform_data, ptr %11, i32 0, i32 1, i32 2
  store i32 0, ptr %46, align 4
  %47 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 11, ptr noundef nonnull @.str.27, i32 noundef 3) #7
  %48 = call i32 @of_property_read_string(ptr noundef %14, ptr noundef nonnull %3, ptr noundef nonnull %4) #7
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load ptr, ptr %4, align 4
  %52 = call i32 @match_string(ptr noundef nonnull @port_modes, i32 noundef 14, ptr noundef %51) #7
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %32, label %54

54:                                               ; preds = %50
  store i32 %52, ptr %46, align 4
  br label %55

55:                                               ; preds = %54, %45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %3) #7
  %56 = call ptr @of_find_property(ptr noundef %14, ptr noundef nonnull @.str.29, ptr noundef null) #7
  %57 = icmp ne ptr %56, null
  %58 = getelementptr inbounds %struct.usbhs_omap_platform_data, ptr %11, i32 0, i32 6
  %59 = zext i1 %57 to i8
  %60 = load i8, ptr %58, align 4
  %61 = and i8 %60, -2
  %62 = or i8 %61, %59
  store i8 %62, ptr %58, align 4
  %63 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  store ptr %11, ptr %63, align 4
  br label %69

64:                                               ; preds = %1
  %65 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str) #8
  br label %454

69:                                               ; preds = %64, %55
  %70 = phi ptr [ %11, %55 ], [ %66, %64 ]
  %71 = load i32, ptr %70, align 4
  %72 = icmp sgt i32 %71, 3
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.1, i32 noundef %71, i32 noundef 3) #8
  br label %454

74:                                               ; preds = %69
  %75 = call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 52, i32 noundef 3520) #7
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.2) #8
  br label %454

78:                                               ; preds = %74
  %79 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %80 = call ptr @devm_ioremap_resource(ptr noundef %6, ptr noundef %79) #7
  %81 = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %75, i32 0, i32 10
  store ptr %80, ptr %81, align 4
  %82 = icmp ugt ptr %80, inttoptr (i32 -4096 to ptr)
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = ptrtoint ptr %80 to i32
  br label %454

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %75, i32 0, i32 11
  store ptr %70, ptr %86, align 4
  %87 = call i32 @omap_tll_init(ptr noundef nonnull %70) #7
  call void @pm_runtime_enable(ptr noundef %6) #7
  %88 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %75, ptr %88, align 8
  %89 = call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #7
  %90 = load ptr, ptr %81, align 4
  %91 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #7, !srcloc !9
  %92 = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %75, i32 0, i32 12
  store i32 %91, ptr %92, align 4
  %93 = call i32 @__pm_runtime_idle(ptr noundef %6, i32 noundef 4) #7
  %94 = load i32, ptr %70, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %85
  store i32 %94, ptr %75, align 4
  br label %102

97:                                               ; preds = %85
  %98 = load i32, ptr %92, align 4
  %99 = icmp eq i32 %98, 1349517568
  %100 = select i1 %99, i32 2, i32 3
  store i32 %100, ptr %75, align 4
  store i32 %100, ptr %70, align 4
  %101 = load i32, ptr %75, align 4
  br label %102

102:                                              ; preds = %97, %96
  %103 = phi i32 [ %101, %97 ], [ %94, %96 ]
  %104 = shl i32 %103, 2
  %105 = call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef %104, i32 noundef 3520) #7
  %106 = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %75, i32 0, i32 1
  store ptr %105, ptr %106, align 4
  %107 = call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef %104, i32 noundef 3520) #7
  %108 = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %75, i32 0, i32 3
  store ptr %107, ptr %108, align 4
  %109 = call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef %104, i32 noundef 3520) #7
  %110 = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %75, i32 0, i32 2
  store ptr %109, ptr %110, align 4
  %111 = load ptr, ptr %106, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %118, label %113

113:                                              ; preds = %102
  %114 = load ptr, ptr %108, align 4
  %115 = icmp eq ptr %114, null
  %116 = icmp eq ptr %109, null
  %117 = select i1 %115, i1 true, i1 %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %113, %102
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.2) #8
  br label %452

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %75, i32 0, i32 9
  store ptr inttoptr (i32 -19 to ptr), ptr %120, align 4
  %121 = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %75, i32 0, i32 8
  store ptr inttoptr (i32 -19 to ptr), ptr %121, align 4
  %122 = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %75, i32 0, i32 6
  store ptr inttoptr (i32 -19 to ptr), ptr %122, align 4
  %123 = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %75, i32 0, i32 7
  store ptr inttoptr (i32 -19 to ptr), ptr %123, align 4
  %124 = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %75, i32 0, i32 4
  store ptr inttoptr (i32 -19 to ptr), ptr %124, align 4
  %125 = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %75, i32 0, i32 5
  store ptr inttoptr (i32 -19 to ptr), ptr %125, align 4
  %126 = load i32, ptr %75, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %144

128:                                              ; preds = %119
  store ptr inttoptr (i32 -19 to ptr), ptr %111, align 4
  %129 = load ptr, ptr %108, align 4
  store ptr inttoptr (i32 -19 to ptr), ptr %129, align 4
  %130 = load ptr, ptr %110, align 4
  store ptr inttoptr (i32 -19 to ptr), ptr %130, align 4
  %131 = load i32, ptr %75, align 4
  %132 = icmp sgt i32 %131, 1
  br i1 %132, label %133, label %144

133:                                              ; preds = %133, %128
  %134 = phi i32 [ %141, %133 ], [ 1, %128 ]
  %135 = load ptr, ptr %106, align 4
  %136 = getelementptr ptr, ptr %135, i32 %134
  store ptr inttoptr (i32 -19 to ptr), ptr %136, align 4
  %137 = load ptr, ptr %108, align 4
  %138 = getelementptr ptr, ptr %137, i32 %134
  store ptr inttoptr (i32 -19 to ptr), ptr %138, align 4
  %139 = load ptr, ptr %110, align 4
  %140 = getelementptr ptr, ptr %139, i32 %134
  store ptr inttoptr (i32 -19 to ptr), ptr %140, align 4
  %141 = add nuw nsw i32 %134, 1
  %142 = load i32, ptr %75, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %133, label %144

144:                                              ; preds = %133, %128, %119
  %145 = phi i32 [ %126, %119 ], [ %131, %128 ], [ %142, %133 ]
  %146 = load i32, ptr %92, align 4
  %147 = icmp eq i32 %146, 16
  br i1 %147, label %148, label %166

148:                                              ; preds = %144
  %149 = icmp sgt i32 %145, 0
  br i1 %149, label %150, label %259

150:                                              ; preds = %150, %148
  %151 = phi i1 [ %157, %150 ], [ false, %148 ]
  %152 = phi i32 [ %158, %150 ], [ 0, %148 ]
  %153 = getelementptr %struct.usbhs_omap_platform_data, ptr %70, i32 0, i32 1, i32 %152
  %154 = load i32, ptr %153, align 4
  %155 = add i32 %154, -1
  %156 = icmp ult i32 %155, 3
  %157 = select i1 %156, i1 true, i1 %151
  %158 = add nuw nsw i32 %152, 1
  %159 = icmp eq i32 %158, %145
  br i1 %159, label %160, label %150

160:                                              ; preds = %150
  br i1 %157, label %161, label %259

161:                                              ; preds = %160
  %162 = call ptr @devm_clk_get(ptr noundef %6, ptr noundef nonnull @.str.3) #7
  store ptr %162, ptr %120, align 4
  %163 = icmp ugt ptr %162, inttoptr (i32 -4096 to ptr)
  br i1 %163, label %164, label %259

164:                                              ; preds = %161
  %165 = ptrtoint ptr %162 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.4, i32 noundef %165) #8
  br label %452

166:                                              ; preds = %144
  %167 = call ptr @devm_clk_get(ptr noundef %6, ptr noundef nonnull @.str.5) #7
  store ptr %167, ptr %122, align 4
  %168 = icmp ugt ptr %167, inttoptr (i32 -4096 to ptr)
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = ptrtoint ptr %167 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.6, i32 noundef %170) #8
  br label %452

171:                                              ; preds = %166
  %172 = call ptr @devm_clk_get(ptr noundef %6, ptr noundef nonnull @.str.7) #7
  store ptr %172, ptr %123, align 4
  %173 = icmp ugt ptr %172, inttoptr (i32 -4096 to ptr)
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = ptrtoint ptr %172 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.8, i32 noundef %175) #8
  br label %452

176:                                              ; preds = %171
  %177 = call ptr @devm_clk_get(ptr noundef %6, ptr noundef nonnull @.str.9) #7
  store ptr %177, ptr %124, align 4
  %178 = icmp ugt ptr %177, inttoptr (i32 -4096 to ptr)
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = ptrtoint ptr %177 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.10, i32 noundef %180) #8
  br label %452

181:                                              ; preds = %176
  %182 = call ptr @devm_clk_get(ptr noundef %6, ptr noundef nonnull @.str.11) #7
  store ptr %182, ptr %125, align 4
  %183 = icmp ugt ptr %182, inttoptr (i32 -4096 to ptr)
  br i1 %183, label %184, label %186

184:                                              ; preds = %181
  %185 = ptrtoint ptr %182 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.12, i32 noundef %185) #8
  br label %452

186:                                              ; preds = %181
  %187 = call ptr @devm_clk_get(ptr noundef %6, ptr noundef nonnull @.str.13) #7
  store ptr %187, ptr %121, align 4
  %188 = icmp ugt ptr %187, inttoptr (i32 -4096 to ptr)
  br i1 %188, label %192, label %189

189:                                              ; preds = %186
  %190 = load i32, ptr %75, align 4
  %191 = icmp sgt i32 %190, 0
  br i1 %191, label %194, label %229

192:                                              ; preds = %186
  %193 = ptrtoint ptr %187 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.14, i32 noundef %193) #8
  br label %452

194:                                              ; preds = %226, %189
  %195 = phi i32 [ %196, %226 ], [ 0, %189 ]
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(30) %5, i8 0, i32 30, i1 false), !annotation !8
  %196 = add nuw nsw i32 %195, 1
  %197 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 30, ptr noundef nonnull @.str.15, i32 noundef %196)
  %198 = call ptr @devm_clk_get(ptr noundef %6, ptr noundef nonnull %5) #7
  %199 = load ptr, ptr %106, align 4
  %200 = getelementptr ptr, ptr %199, i32 %195
  store ptr %198, ptr %200, align 4
  %201 = load ptr, ptr %106, align 4
  %202 = getelementptr ptr, ptr %201, i32 %195
  %203 = load ptr, ptr %202, align 4
  %204 = icmp ugt ptr %203, inttoptr (i32 -4096 to ptr)
  br i1 %204, label %223, label %205

205:                                              ; preds = %194
  %206 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 30, ptr noundef nonnull @.str.17, i32 noundef %196)
  %207 = call ptr @devm_clk_get(ptr noundef %6, ptr noundef nonnull %5) #7
  %208 = load ptr, ptr %108, align 4
  %209 = getelementptr ptr, ptr %208, i32 %195
  store ptr %207, ptr %209, align 4
  %210 = load ptr, ptr %108, align 4
  %211 = getelementptr ptr, ptr %210, i32 %195
  %212 = load ptr, ptr %211, align 4
  %213 = icmp ugt ptr %212, inttoptr (i32 -4096 to ptr)
  br i1 %213, label %223, label %214

214:                                              ; preds = %205
  %215 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 30, ptr noundef nonnull @.str.18, i32 noundef %196)
  %216 = call ptr @devm_clk_get(ptr noundef %6, ptr noundef nonnull %5) #7
  %217 = load ptr, ptr %110, align 4
  %218 = getelementptr ptr, ptr %217, i32 %195
  store ptr %216, ptr %218, align 4
  %219 = load ptr, ptr %110, align 4
  %220 = getelementptr ptr, ptr %219, i32 %195
  %221 = load ptr, ptr %220, align 4
  %222 = icmp ugt ptr %221, inttoptr (i32 -4096 to ptr)
  br i1 %222, label %223, label %226

223:                                              ; preds = %214, %205, %194
  %224 = phi ptr [ %203, %194 ], [ %212, %205 ], [ %221, %214 ]
  %225 = ptrtoint ptr %224 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.16, ptr noundef nonnull %5, i32 noundef %225) #8
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %5) #7
  br label %452

226:                                              ; preds = %214
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %5) #7
  %227 = load i32, ptr %75, align 4
  %228 = icmp slt i32 %196, %227
  br i1 %228, label %194, label %229

229:                                              ; preds = %226, %189
  %230 = getelementptr inbounds %struct.usbhs_omap_platform_data, ptr %70, i32 0, i32 1
  %231 = load i32, ptr %230, align 4
  switch i32 %231, label %244 [
    i32 1, label %232
    i32 2, label %238
  ]

232:                                              ; preds = %229
  %233 = load ptr, ptr %122, align 4
  %234 = load ptr, ptr %124, align 4
  %235 = call i32 @clk_set_parent(ptr noundef %233, ptr noundef %234) #7
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %244, label %237

237:                                              ; preds = %232
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.19, i32 noundef %235) #8
  br label %452

238:                                              ; preds = %229
  %239 = load ptr, ptr %122, align 4
  %240 = load ptr, ptr %121, align 4
  %241 = call i32 @clk_set_parent(ptr noundef %239, ptr noundef %240) #7
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %244, label %243

243:                                              ; preds = %238
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.20, i32 noundef %241) #8
  br label %452

244:                                              ; preds = %238, %232, %229
  %245 = getelementptr %struct.usbhs_omap_platform_data, ptr %70, i32 0, i32 1, i32 1
  %246 = load i32, ptr %245, align 4
  switch i32 %246, label %259 [
    i32 1, label %247
    i32 2, label %253
  ]

247:                                              ; preds = %244
  %248 = load ptr, ptr %123, align 4
  %249 = load ptr, ptr %125, align 4
  %250 = call i32 @clk_set_parent(ptr noundef %248, ptr noundef %249) #7
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %259, label %252

252:                                              ; preds = %247
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.21, i32 noundef %250) #8
  br label %452

253:                                              ; preds = %244
  %254 = load ptr, ptr %123, align 4
  %255 = load ptr, ptr %121, align 4
  %256 = call i32 @clk_set_parent(ptr noundef %254, ptr noundef %255) #7
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %259, label %258

258:                                              ; preds = %253
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.22, i32 noundef %256) #8
  br label %452

259:                                              ; preds = %253, %247, %244, %161, %160, %148
  %260 = load ptr, ptr %88, align 8
  %261 = call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #7
  %262 = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %260, i32 0, i32 10
  %263 = load ptr, ptr %262, align 4
  %264 = getelementptr i8, ptr %263, i32 64
  %265 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %264) #7, !srcloc !9
  %266 = and i32 %265, 2147483587
  %267 = or i32 %266, -2147483620
  %268 = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %260, i32 0, i32 12
  %269 = load i32, ptr %268, align 4
  switch i32 %269, label %382 [
    i32 16, label %270
    i32 1349517568, label %353
  ]

270:                                              ; preds = %259
  %271 = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %260, i32 0, i32 11
  %272 = load ptr, ptr %271, align 4
  %273 = load i32, ptr %260, align 4
  %274 = icmp sgt i32 %273, 0
  %275 = getelementptr inbounds %struct.usbhs_omap_platform_data, ptr %272, i32 0, i32 6
  br i1 %274, label %276, label %334

276:                                              ; preds = %270
  %277 = getelementptr %struct.usbhs_omap_platform_data, ptr %272, i32 0, i32 1, i32 0
  %278 = load i32, ptr %277, align 4
  switch i32 %278, label %287 [
    i32 0, label %285
    i32 1, label %279
  ]

279:                                              ; preds = %276
  %280 = load i8, ptr %275, align 4
  %281 = and i8 %280, 1
  %282 = icmp eq i8 %281, 0
  %283 = and i32 %267, -34
  %284 = select i1 %282, i32 %283, i32 %267
  br label %293

285:                                              ; preds = %276
  %286 = and i32 %267, -289
  br label %293

287:                                              ; preds = %276
  %288 = load i8, ptr %275, align 4
  %289 = and i8 %288, 1
  %290 = xor i8 %289, 1
  %291 = zext i8 %290 to i32
  %292 = or i32 %267, %291
  br label %293

293:                                              ; preds = %287, %285, %279
  %294 = phi i32 [ %286, %285 ], [ %284, %279 ], [ %292, %287 ]
  %295 = icmp eq i32 %273, 1
  br i1 %295, label %330, label %296

296:                                              ; preds = %322, %293
  %297 = phi i32 [ %324, %322 ], [ 1, %293 ]
  %298 = phi i32 [ %323, %322 ], [ %294, %293 ]
  %299 = getelementptr %struct.usbhs_omap_platform_data, ptr %272, i32 0, i32 1, i32 %297
  %300 = load i32, ptr %299, align 4
  switch i32 %300, label %314 [
    i32 0, label %301
    i32 1, label %305
  ]

301:                                              ; preds = %296
  %302 = shl i32 256, %297
  %303 = xor i32 %302, -1
  %304 = and i32 %298, %303
  br label %322

305:                                              ; preds = %296
  %306 = load i8, ptr %275, align 4
  %307 = and i8 %306, 1
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %309, label %322

309:                                              ; preds = %305
  %310 = add nsw i32 %297, -1
  %311 = shl i32 2048, %310
  %312 = xor i32 %311, -1
  %313 = and i32 %298, %312
  br label %322

314:                                              ; preds = %296
  %315 = load i8, ptr %275, align 4
  %316 = and i8 %315, 1
  %317 = icmp eq i8 %316, 0
  br i1 %317, label %318, label %322

318:                                              ; preds = %314
  %319 = add nsw i32 %297, -1
  %320 = shl i32 2048, %319
  %321 = or i32 %320, %298
  br label %322

322:                                              ; preds = %318, %314, %309, %305, %301
  %323 = phi i32 [ %298, %314 ], [ %321, %318 ], [ %298, %305 ], [ %313, %309 ], [ %304, %301 ]
  %324 = add nuw nsw i32 %297, 1
  %325 = icmp eq i32 %324, %273
  br i1 %325, label %326, label %296, !llvm.loop !10

326:                                              ; preds = %322
  %327 = load i8, ptr %275, align 4
  %328 = and i8 %327, 1
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %411, label %339

330:                                              ; preds = %293
  %331 = load i8, ptr %275, align 4
  %332 = and i8 %331, 1
  %333 = icmp eq i8 %332, 0
  br i1 %333, label %411, label %339

334:                                              ; preds = %270
  %335 = load i8, ptr %275, align 4
  %336 = and i8 %335, 1
  %337 = zext i8 %336 to i32
  %338 = or i32 %267, %337
  br label %411

339:                                              ; preds = %330, %326
  %340 = phi i32 [ %294, %330 ], [ %323, %326 ]
  %341 = or i32 %340, 1
  %342 = icmp eq i32 %278, 1
  br i1 %342, label %351, label %343

343:                                              ; preds = %347, %339
  %344 = phi i32 [ %345, %347 ], [ 0, %339 ]
  %345 = add nuw nsw i32 %344, 1
  %346 = icmp eq i32 %345, %273
  br i1 %346, label %411, label %347

347:                                              ; preds = %343
  %348 = getelementptr %struct.usbhs_omap_platform_data, ptr %272, i32 0, i32 1, i32 %345
  %349 = load i32, ptr %348, align 4
  %350 = icmp eq i32 %349, 1
  br i1 %350, label %351, label %343

351:                                              ; preds = %347, %339
  %352 = and i32 %340, -2
  br label %411

353:                                              ; preds = %259
  %354 = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %260, i32 0, i32 11
  %355 = load ptr, ptr %354, align 4
  %356 = load i32, ptr %260, align 4
  %357 = icmp sgt i32 %356, 0
  br i1 %357, label %358, label %411

358:                                              ; preds = %378, %353
  %359 = phi i32 [ %380, %378 ], [ 0, %353 ]
  %360 = phi i32 [ %379, %378 ], [ %267, %353 ]
  %361 = shl nuw i32 %359, 1
  %362 = shl i32 196608, %361
  %363 = xor i32 %362, -1
  %364 = and i32 %360, %363
  %365 = getelementptr %struct.usbhs_omap_platform_data, ptr %355, i32 0, i32 1, i32 %359
  %366 = load i32, ptr %365, align 4
  %367 = icmp eq i32 %366, 2
  %368 = add i32 %366, -4
  %369 = icmp ult i32 %368, 10
  %370 = or i1 %367, %369
  br i1 %370, label %371, label %374

371:                                              ; preds = %358
  %372 = shl i32 65536, %361
  %373 = or i32 %364, %372
  br label %378

374:                                              ; preds = %358
  %375 = icmp eq i32 %366, 3
  %376 = or i32 %362, %360
  %377 = select i1 %375, i32 %376, i32 %364
  br label %378

378:                                              ; preds = %374, %371
  %379 = phi i32 [ %373, %371 ], [ %377, %374 ]
  %380 = add nuw nsw i32 %359, 1
  %381 = icmp eq i32 %380, %356
  br i1 %381, label %411, label %358

382:                                              ; preds = %259
  %383 = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %260, i32 0, i32 11
  %384 = load ptr, ptr %383, align 4
  %385 = load i32, ptr %260, align 4
  %386 = icmp sgt i32 %385, 0
  br i1 %386, label %387, label %411

387:                                              ; preds = %407, %382
  %388 = phi i32 [ %409, %407 ], [ 0, %382 ]
  %389 = phi i32 [ %408, %407 ], [ %267, %382 ]
  %390 = shl nuw i32 %388, 1
  %391 = shl i32 196608, %390
  %392 = xor i32 %391, -1
  %393 = and i32 %389, %392
  %394 = getelementptr %struct.usbhs_omap_platform_data, ptr %384, i32 0, i32 1, i32 %388
  %395 = load i32, ptr %394, align 4
  %396 = icmp eq i32 %395, 2
  %397 = add i32 %395, -4
  %398 = icmp ult i32 %397, 10
  %399 = or i1 %396, %398
  br i1 %399, label %400, label %403

400:                                              ; preds = %387
  %401 = shl i32 65536, %390
  %402 = or i32 %393, %401
  br label %407

403:                                              ; preds = %387
  %404 = icmp eq i32 %395, 3
  %405 = or i32 %391, %389
  %406 = select i1 %404, i32 %405, i32 %393
  br label %407

407:                                              ; preds = %403, %400
  %408 = phi i32 [ %402, %400 ], [ %406, %403 ]
  %409 = add nuw nsw i32 %388, 1
  %410 = icmp eq i32 %409, %385
  br i1 %410, label %411, label %387

411:                                              ; preds = %407, %382, %378, %353, %351, %343, %334, %330, %326
  %412 = phi i32 [ %352, %351 ], [ %323, %326 ], [ %294, %330 ], [ %338, %334 ], [ %267, %353 ], [ %267, %382 ], [ %408, %407 ], [ %341, %343 ], [ %379, %378 ]
  %413 = load ptr, ptr %262, align 4
  %414 = getelementptr i8, ptr %413, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %414, i32 %412) #7, !srcloc !12
  %415 = call i32 @__pm_runtime_idle(ptr noundef %6, i32 noundef 4) #7
  %416 = load ptr, ptr %7, align 8
  %417 = icmp eq ptr %416, null
  br i1 %417, label %422, label %418

418:                                              ; preds = %411
  %419 = call i32 @of_platform_populate(ptr noundef nonnull %416, ptr noundef nonnull @usbhs_child_match_table, ptr noundef null, ptr noundef %6) #7
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %454, label %421

421:                                              ; preds = %418
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.23, i32 noundef %419) #8
  br label %452

422:                                              ; preds = %411
  %423 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %424 = load ptr, ptr %423, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #7
  %425 = call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.44) #7
  %426 = icmp eq ptr %425, null
  br i1 %426, label %427, label %428

427:                                              ; preds = %422
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.45) #8
  br label %450

428:                                              ; preds = %422
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(32) %425, i32 32, i1 false) #7
  %429 = call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 1024, ptr noundef nonnull @.str.46) #7
  %430 = icmp eq ptr %429, null
  br i1 %430, label %431, label %432

431:                                              ; preds = %428
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.47) #8
  br label %450

432:                                              ; preds = %428
  %433 = getelementptr inbounds [2 x %struct.resource], ptr %2, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %433, ptr noundef nonnull align 4 dereferenceable(32) %429, i32 32, i1 false) #7
  %434 = call fastcc ptr @omap_usbhs_alloc_child(ptr noundef nonnull @.str.48, ptr noundef nonnull %2, ptr noundef %424, ptr noundef %6) #7
  %435 = icmp eq ptr %434, null
  br i1 %435, label %436, label %437

436:                                              ; preds = %432
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.49) #8
  br label %450

437:                                              ; preds = %432
  %438 = call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.50) #7
  %439 = icmp eq ptr %438, null
  br i1 %439, label %446, label %440

440:                                              ; preds = %437
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(32) %438, i32 32, i1 false) #7
  %441 = call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 1024, ptr noundef nonnull @.str.52) #7
  %442 = icmp eq ptr %441, null
  br i1 %442, label %446, label %443

443:                                              ; preds = %440
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %433, ptr noundef nonnull align 4 dereferenceable(32) %441, i32 32, i1 false) #7
  %444 = call fastcc ptr @omap_usbhs_alloc_child(ptr noundef nonnull @.str.54, ptr noundef nonnull %2, ptr noundef %424, ptr noundef %6) #7
  %445 = icmp eq ptr %444, null
  br i1 %445, label %446, label %449

446:                                              ; preds = %443, %440, %437
  %447 = phi ptr [ @.str.51, %437 ], [ @.str.53, %440 ], [ @.str.49, %443 ]
  %448 = phi i32 [ -19, %437 ], [ -19, %440 ], [ -12, %443 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull %447) #8
  call void @platform_device_unregister(ptr noundef nonnull %434) #7
  br label %450

449:                                              ; preds = %443
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #7
  br label %454

450:                                              ; preds = %446, %436, %431, %427
  %451 = phi i32 [ -19, %427 ], [ -19, %431 ], [ -12, %436 ], [ %448, %446 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.24, i32 noundef %451) #8
  br label %452

452:                                              ; preds = %450, %421, %258, %252, %243, %237, %223, %192, %184, %179, %174, %169, %164, %118
  %453 = phi i32 [ %165, %164 ], [ %419, %421 ], [ %451, %450 ], [ %170, %169 ], [ %175, %174 ], [ %180, %179 ], [ %185, %184 ], [ %193, %192 ], [ %235, %237 ], [ %250, %252 ], [ %256, %258 ], [ %241, %243 ], [ -12, %118 ], [ %225, %223 ]
  call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #7
  br label %454

454:                                              ; preds = %452, %449, %418, %83, %77, %73, %68, %32, %26, %10
  %455 = phi i32 [ -19, %73 ], [ %84, %83 ], [ %453, %452 ], [ -12, %77 ], [ -19, %68 ], [ -12, %10 ], [ 0, %449 ], [ 0, %418 ], [ -19, %26 ], [ -19, %32 ]
  ret i32 %455
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhs_omap_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #7
  %3 = tail call i32 @device_for_each_child(ptr noundef %2, ptr noundef null, ptr noundef nonnull @usbhs_omap_remove_child) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_tll_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @omap_usbhs_alloc_child(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @platform_device_alloc(ptr noundef %0, i32 noundef 0) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.55, ptr noundef %0) #8
  br label %23

8:                                                ; preds = %4
  %9 = tail call i32 @platform_device_add_resources(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 2) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = tail call i32 @platform_device_add_data(ptr noundef nonnull %5, ptr noundef %2, i32 noundef 52) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %16 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 16
  store ptr @usbhs_dmamask, ptr %16, align 4
  %17 = tail call i32 @dma_set_coherent_mask(ptr noundef %15, i64 noundef 4294967295) #7
  %18 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 1
  store ptr %3, ptr %18, align 4
  %19 = tail call i32 @platform_device_add(ptr noundef nonnull %5) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %14, %11, %8
  %22 = phi ptr [ @.str.56, %8 ], [ @.str.57, %11 ], [ @.str.58, %14 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull %22) #8
  tail call void @platform_device_put(ptr noundef nonnull %5) #7
  br label %23

23:                                               ; preds = %21, %14, %7
  %24 = phi ptr [ %5, %14 ], [ null, %21 ], [ null, %7 ]
  ret ptr %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhs_omap_remove_child(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.59) #8
  %3 = getelementptr i8, ptr %0, i32 -16
  tail call void @platform_device_unregister(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhs_runtime_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %38

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %3, i32 0, i32 2
  %10 = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %3, i32 0, i32 3
  %11 = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %3, i32 0, i32 1
  br label %12

12:                                               ; preds = %34, %8
  %13 = phi i32 [ 0, %8 ], [ %35, %34 ]
  %14 = getelementptr %struct.usbhs_omap_platform_data, ptr %5, i32 0, i32 1, i32 %13
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %34 [
    i32 3, label %16
    i32 2, label %28
  ]

16:                                               ; preds = %12
  %17 = load ptr, ptr %9, align 4
  %18 = getelementptr ptr, ptr %17, i32 %13
  %19 = load ptr, ptr %18, align 4
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  tail call void @clk_disable(ptr noundef %19) #7
  tail call void @clk_unprepare(ptr noundef %19) #7
  br label %22

22:                                               ; preds = %21, %16
  %23 = load ptr, ptr %10, align 4
  %24 = getelementptr ptr, ptr %23, i32 %13
  %25 = load ptr, ptr %24, align 4
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  tail call void @clk_disable(ptr noundef %25) #7
  tail call void @clk_unprepare(ptr noundef %25) #7
  br label %28

28:                                               ; preds = %27, %22, %12
  %29 = load ptr, ptr %11, align 4
  %30 = getelementptr ptr, ptr %29, i32 %13
  %31 = load ptr, ptr %30, align 4
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  tail call void @clk_disable(ptr noundef %31) #7
  tail call void @clk_unprepare(ptr noundef %31) #7
  br label %34

34:                                               ; preds = %33, %28, %12
  %35 = add nuw nsw i32 %13, 1
  %36 = load i32, ptr %3, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %12, label %38

38:                                               ; preds = %34, %1
  %39 = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %3, i32 0, i32 9
  %40 = load ptr, ptr %39, align 4
  %41 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void @clk_disable(ptr noundef %40) #7
  tail call void @clk_unprepare(ptr noundef %40) #7
  br label %43

43:                                               ; preds = %42, %38
  %44 = tail call i32 @omap_tll_disable(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhs_runtime_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @omap_tll_enable(ptr noundef %5) #7
  %7 = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %3, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = tail call i32 @clk_prepare(ptr noundef %8) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = tail call i32 @clk_enable(ptr noundef %8) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @clk_unprepare(ptr noundef %8) #7
  br label %17

17:                                               ; preds = %16, %13, %10, %1
  %18 = load i32, ptr %3, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %74

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %3, i32 0, i32 2
  %22 = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %3, i32 0, i32 3
  %23 = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %3, i32 0, i32 1
  br label %24

24:                                               ; preds = %70, %20
  %25 = phi i32 [ 0, %20 ], [ %71, %70 ]
  %26 = getelementptr %struct.usbhs_omap_platform_data, ptr %5, i32 0, i32 1, i32 %25
  %27 = load i32, ptr %26, align 4
  switch i32 %27, label %70 [
    i32 3, label %28
    i32 2, label %56
  ]

28:                                               ; preds = %24
  %29 = load ptr, ptr %21, align 4
  %30 = getelementptr ptr, ptr %29, i32 %25
  %31 = load ptr, ptr %30, align 4
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %42, label %33

33:                                               ; preds = %28
  %34 = tail call i32 @clk_prepare(ptr noundef %31) #7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = tail call i32 @clk_enable(ptr noundef %31) #7
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  tail call void @clk_unprepare(ptr noundef %31) #7
  br label %40

40:                                               ; preds = %39, %33
  %41 = phi i32 [ %37, %39 ], [ %34, %33 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.60, i32 noundef %25, i32 noundef %41) #8
  br label %42

42:                                               ; preds = %40, %36, %28
  %43 = load ptr, ptr %22, align 4
  %44 = getelementptr ptr, ptr %43, i32 %25
  %45 = load ptr, ptr %44, align 4
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %56, label %47

47:                                               ; preds = %42
  %48 = tail call i32 @clk_prepare(ptr noundef %45) #7
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = tail call i32 @clk_enable(ptr noundef %45) #7
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  tail call void @clk_unprepare(ptr noundef %45) #7
  br label %54

54:                                               ; preds = %53, %47
  %55 = phi i32 [ %51, %53 ], [ %48, %47 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.61, i32 noundef %25, i32 noundef %55) #8
  br label %56

56:                                               ; preds = %54, %50, %42, %24
  %57 = load ptr, ptr %23, align 4
  %58 = getelementptr ptr, ptr %57, i32 %25
  %59 = load ptr, ptr %58, align 4
  %60 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %70, label %61

61:                                               ; preds = %56
  %62 = tail call i32 @clk_prepare(ptr noundef %59) #7
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = tail call i32 @clk_enable(ptr noundef %59) #7
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  tail call void @clk_unprepare(ptr noundef %59) #7
  br label %68

68:                                               ; preds = %67, %61
  %69 = phi i32 [ %65, %67 ], [ %62, %61 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef %25, i32 noundef %69) #8
  br label %70

70:                                               ; preds = %68, %64, %56, %24
  %71 = add nuw nsw i32 %25, 1
  %72 = load i32, ptr %3, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %24, label %74

74:                                               ; preds = %70, %17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_tll_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_tll_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind }
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
!8 = !{!"auto-init"}
!9 = !{i64 5058951}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.peeled.count", i32 1}
!12 = !{i64 5058533}
