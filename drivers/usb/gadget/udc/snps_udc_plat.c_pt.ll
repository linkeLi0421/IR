; ModuleID = '/llk/IR/drivers/usb/gadget/udc/snps_udc_plat.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/snps_udc_plat.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.udc = type { %struct.usb_gadget, %struct.spinlock, [32 x %struct.udc_ep], ptr, i8, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i16, i16, i16, ptr, ptr, ptr, %struct.extcon_specific_cable_nb, %struct.notifier_block, %struct.delayed_work, i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.udc_ep = type { %struct.usb_ep, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, %struct.list_head, i32, i32, i24 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.extcon_specific_cable_nb = type { ptr, i32, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.udc_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }

@__param_str_use_dma = internal constant [22 x i8] c"snps_udc_plat.use_dma\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@use_dma = internal global i8 1, align 1
@__param_use_dma = internal constant %struct.kernel_param { ptr @__param_str_use_dma, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @use_dma } }, section "__param", align 4
@__UNIQUE_ID_use_dmatype248 = internal constant [36 x i8] c"snps_udc_plat.parmtype=use_dma:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_dma249 = internal constant [40 x i8] c"snps_udc_plat.parm=use_dma:true for DMA\00", section ".modinfo", align 1
@__param_str_use_dma_ppb = internal constant [26 x i8] c"snps_udc_plat.use_dma_ppb\00", align 1
@use_dma_ppb = internal global i8 1, align 1
@__param_use_dma_ppb = internal constant %struct.kernel_param { ptr @__param_str_use_dma_ppb, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @use_dma_ppb } }, section "__param", align 4
@__UNIQUE_ID_use_dma_ppbtype250 = internal constant [40 x i8] c"snps_udc_plat.parmtype=use_dma_ppb:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_dma_ppb251 = internal constant [70 x i8] c"snps_udc_plat.parm=use_dma_ppb:true for DMA in packet per buffer mode\00", section ".modinfo", align 1
@__param_str_use_dma_ppb_du = internal constant [29 x i8] c"snps_udc_plat.use_dma_ppb_du\00", align 1
@use_dma_ppb_du = internal global i8 0, align 1
@__param_use_dma_ppb_du = internal constant %struct.kernel_param { ptr @__param_str_use_dma_ppb_du, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @use_dma_ppb_du } }, section "__param", align 4
@__UNIQUE_ID_use_dma_ppb_dutype252 = internal constant [43 x i8] c"snps_udc_plat.parmtype=use_dma_ppb_du:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_dma_ppb_du253 = internal constant [96 x i8] c"snps_udc_plat.parm=use_dma_ppb_du:true for DMA in packet per buffer mode with descriptor update\00", section ".modinfo", align 1
@__param_str_use_fullspeed = internal constant [28 x i8] c"snps_udc_plat.use_fullspeed\00", align 1
@use_fullspeed = internal global i8 0, align 1
@__param_use_fullspeed = internal constant %struct.kernel_param { ptr @__param_str_use_fullspeed, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @use_fullspeed } }, section "__param", align 4
@__UNIQUE_ID_use_fullspeedtype254 = internal constant [42 x i8] c"snps_udc_plat.parmtype=use_fullspeed:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_fullspeed255 = internal constant [57 x i8] c"snps_udc_plat.parm=use_fullspeed:true for fullspeed only\00", section ".modinfo", align 1
@__initcall__kmod_snps_udc_plat__256_327_udc_plat_driver_init6 = internal global ptr @udc_plat_driver_init, section ".initcall6.init", align 4
@udc_plat_driver = internal global %struct.platform_driver { ptr @udc_plat_probe, ptr @udc_plat_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_udc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @udc_plat_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_udc_plat_driver_exit = internal global ptr @udc_plat_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description257 = internal constant [55 x i8] c"snps_udc_plat.description=Synopsys UDC platform driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author258 = internal constant [30 x i8] c"snps_udc_plat.author=Broadcom\00", section ".modinfo", align 1
@__UNIQUE_ID_file259 = internal constant [56 x i8] c"snps_udc_plat.file=drivers/usb/gadget/udc/snps_udc_plat\00", section ".modinfo", align 1
@__UNIQUE_ID_license260 = internal constant [29 x i8] c"snps_udc_plat.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"snps-udc-plat\00", align 1
@of_udc_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,ns2-udc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,cygnus-udc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,iproc-udc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@udc_plat_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @udc_plat_suspend, ptr @udc_plat_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Can't parse and map interrupt\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to obtain phy from device tree\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"UDC phy init failed\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"UDC phy power on failed\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"extcon\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Invalid or missing extcon\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Can't register extcon device\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Can't get cable state\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"snps-udc\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Request irq %d failed for UDC\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"Synopsys UDC platform driver probe successful\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"Connecting...\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Device disconnected\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"drivers/usb/gadget/udc/snps_udc_plat.c\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"Synopsys UDC platform driver removed\0A\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"UDC phy init failure\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"UDC phy power on failure\00", align 1
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author258, ptr @__UNIQUE_ID_description257, ptr @__UNIQUE_ID_file259, ptr @__UNIQUE_ID_license260, ptr @__UNIQUE_ID_use_dma249, ptr @__UNIQUE_ID_use_dma_ppb251, ptr @__UNIQUE_ID_use_dma_ppb_du253, ptr @__UNIQUE_ID_use_dma_ppb_dutype252, ptr @__UNIQUE_ID_use_dma_ppbtype250, ptr @__UNIQUE_ID_use_dmatype248, ptr @__UNIQUE_ID_use_fullspeed255, ptr @__UNIQUE_ID_use_fullspeedtype254, ptr @__exitcall_udc_plat_driver_exit, ptr @__initcall__kmod_snps_udc_plat__256_327_udc_plat_driver_init6, ptr @__param_use_dma, ptr @__param_use_dma_ppb, ptr @__param_use_dma_ppb_du, ptr @__param_use_fullspeed, ptr @udc_plat_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @udc_plat_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @udc_plat_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @udc_plat_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @udc_plat_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @udc_plat_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 4568, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %123, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.udc, ptr %3, i32 0, i32 1
  store i32 0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.udc, ptr %3, i32 0, i32 21
  store ptr %2, ptr %7, align 8
  %8 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #4
  %9 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %8) #4
  %10 = getelementptr inbounds %struct.udc, ptr %3, i32 0, i32 16
  store ptr %9, ptr %10, align 8
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = ptrtoint ptr %9 to i32
  br label %123

14:                                               ; preds = %5
  %15 = getelementptr i8, ptr %9, i32 1280
  %16 = getelementptr inbounds %struct.udc, ptr %3, i32 0, i32 8
  store ptr %15, ptr %16, align 8
  %17 = getelementptr i8, ptr %9, i32 1024
  %18 = getelementptr inbounds %struct.udc, ptr %3, i32 0, i32 9
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.udc, ptr %3, i32 0, i32 10
  store ptr %9, ptr %19, align 8
  %20 = getelementptr i8, ptr %9, i32 2048
  %21 = getelementptr inbounds %struct.udc, ptr %3, i32 0, i32 11
  store ptr %20, ptr %21, align 4
  %22 = getelementptr i8, ptr %9, i32 3072
  %23 = getelementptr inbounds %struct.udc, ptr %3, i32 0, i32 12
  store ptr %22, ptr %23, align 8
  %24 = load i32, ptr %8, align 4
  %25 = getelementptr inbounds %struct.udc, ptr %3, i32 0, i32 15
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %27 = load ptr, ptr %26, align 8
  %28 = tail call i32 @irq_of_parse_and_map(ptr noundef %27, i32 noundef 0) #4
  %29 = getelementptr inbounds %struct.udc, ptr %3, i32 0, i32 17
  store i32 %28, ptr %29, align 4
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #5
  br label %123

32:                                               ; preds = %14
  %33 = load ptr, ptr %26, align 8
  %34 = tail call ptr @devm_of_phy_get_by_index(ptr noundef %2, ptr noundef %33, i32 noundef 0) #4
  %35 = getelementptr inbounds %struct.udc, ptr %3, i32 0, i32 22
  store ptr %34, ptr %35, align 4
  %36 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #5
  %38 = load ptr, ptr %35, align 4
  %39 = ptrtoint ptr %38 to i32
  br label %123

40:                                               ; preds = %32
  %41 = tail call i32 @phy_init(ptr noundef %34) #4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #5
  br label %123

44:                                               ; preds = %40
  %45 = load ptr, ptr %35, align 4
  %46 = tail call i32 @phy_power_on(ptr noundef %45) #4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #5
  %49 = load ptr, ptr %35, align 4
  %50 = tail call i32 @phy_exit(ptr noundef %49) #4
  br label %123

51:                                               ; preds = %44
  %52 = load ptr, ptr %26, align 8
  %53 = tail call ptr @of_get_property(ptr noundef %52, ptr noundef nonnull @.str.5, ptr noundef null) #4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %84, label %55

55:                                               ; preds = %51
  %56 = tail call ptr @extcon_get_edev_by_phandle(ptr noundef %2, i32 noundef 0) #4
  %57 = getelementptr inbounds %struct.udc, ptr %3, i32 0, i32 23
  store ptr %56, ptr %57, align 8
  %58 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = icmp eq ptr %56, inttoptr (i32 -517 to ptr)
  br i1 %60, label %123, label %61

61:                                               ; preds = %59
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #5
  %62 = load ptr, ptr %57, align 8
  %63 = ptrtoint ptr %62 to i32
  br label %115

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.udc, ptr %3, i32 0, i32 25
  store ptr @usbd_connect_notify, ptr %65, align 4
  %66 = tail call i32 @extcon_register_notifier(ptr noundef %56, i32 noundef 1, ptr noundef %65) #4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7) #5
  br label %115

69:                                               ; preds = %64
  %70 = load ptr, ptr %57, align 8
  %71 = tail call i32 @extcon_get_state(ptr noundef %70, i32 noundef 1) #4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8) #5
  br label %107

74:                                               ; preds = %69
  %75 = icmp eq i32 %71, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.udc, ptr %3, i32 0, i32 27
  store i32 %71, ptr %77, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = getelementptr inbounds %struct.udc, ptr %3, i32 0, i32 26
  store i32 -32, ptr %79, align 8
  %80 = getelementptr inbounds %struct.udc, ptr %3, i32 0, i32 26, i32 0, i32 1
  store volatile ptr %80, ptr %80, align 4
  %81 = getelementptr inbounds %struct.udc, ptr %3, i32 0, i32 26, i32 0, i32 1, i32 1
  store ptr %80, ptr %81, align 4
  %82 = getelementptr inbounds %struct.udc, ptr %3, i32 0, i32 26, i32 0, i32 2
  store ptr @udc_drd_work, ptr %82, align 4
  %83 = getelementptr inbounds %struct.udc, ptr %3, i32 0, i32 26, i32 1
  tail call void @init_timer_key(ptr noundef %83, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #4
  br label %84

84:                                               ; preds = %78, %51
  %85 = load i8, ptr @use_dma, align 1, !range !8
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = tail call i32 @init_dma_pools(ptr noundef nonnull %3) #4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %87, %84
  %91 = load i32, ptr %29, align 4
  %92 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %91, ptr noundef nonnull @udc_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.9, ptr noundef nonnull %3) #4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i32, ptr %29, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %95) #5
  br label %102

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %97, align 8
  %98 = getelementptr inbounds %struct.udc, ptr %3, i32 0, i32 6
  store i16 10, ptr %98, align 8
  %99 = tail call i32 @udc_probe(ptr noundef nonnull %3) #4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.11) #5
  br label %123

102:                                              ; preds = %96, %94
  %103 = phi i32 [ %92, %94 ], [ -19, %96 ]
  %104 = load i8, ptr @use_dma, align 1, !range !8
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %102
  tail call void @free_dma_pools(ptr noundef nonnull %3) #4
  br label %107

107:                                              ; preds = %106, %102, %87, %73
  %108 = phi i32 [ %71, %73 ], [ %88, %87 ], [ %103, %106 ], [ %103, %102 ]
  %109 = getelementptr inbounds %struct.udc, ptr %3, i32 0, i32 23
  %110 = load ptr, ptr %109, align 8
  %111 = icmp eq ptr %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.udc, ptr %3, i32 0, i32 25
  %114 = tail call i32 @extcon_unregister_notifier(ptr noundef nonnull %110, i32 noundef 1, ptr noundef %113) #4
  br label %115

115:                                              ; preds = %112, %107, %68, %61
  %116 = phi i32 [ %63, %61 ], [ %66, %68 ], [ %108, %112 ], [ %108, %107 ]
  %117 = load ptr, ptr %35, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = tail call i32 @phy_power_off(ptr noundef nonnull %117) #4
  %121 = load ptr, ptr %35, align 4
  %122 = tail call i32 @phy_exit(ptr noundef %121) #4
  br label %123

123:                                              ; preds = %119, %115, %101, %59, %48, %43, %37, %31, %12, %1
  %124 = phi i32 [ %13, %12 ], [ -22, %31 ], [ %39, %37 ], [ %41, %43 ], [ %46, %48 ], [ 0, %101 ], [ -12, %1 ], [ -517, %59 ], [ %116, %119 ], [ %116, %115 ]
  ret i32 %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @udc_plat_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @usb_del_gadget_udc(ptr noundef %3) #4
  %4 = getelementptr inbounds %struct.udc, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !9

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 236, i32 noundef 9, ptr noundef null) #4
  br label %19

8:                                                ; preds = %1
  tail call void @free_dma_pools(ptr noundef %3) #4
  tail call void @udc_remove(ptr noundef %3) #4
  store ptr null, ptr %2, align 8
  %9 = getelementptr inbounds %struct.udc, ptr %3, i32 0, i32 22
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @phy_power_off(ptr noundef %10) #4
  %12 = load ptr, ptr %9, align 4
  %13 = tail call i32 @phy_exit(ptr noundef %12) #4
  %14 = getelementptr inbounds %struct.udc, ptr %3, i32 0, i32 23
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.udc, ptr %3, i32 0, i32 25
  %17 = tail call i32 @extcon_unregister_notifier(ptr noundef %15, i32 noundef 1, ptr noundef %16) #4
  %18 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.15) #5
  br label %19

19:                                               ; preds = %8, %7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_phy_get_by_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @extcon_get_edev_by_phandle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbd_connect_notify(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 56
  store i32 %1, ptr %4, align 4
  %5 = getelementptr i8, ptr %0, i32 12
  %6 = load ptr, ptr @system_wq, align 4
  %7 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %6, ptr noundef %5, i32 noundef 0) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_register_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_get_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @udc_drd_work(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -4520
  %3 = getelementptr i8, ptr %0, i32 44
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -108
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %0, i32 -40
  %12 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.12) #5
  %13 = tail call i32 @udc_enable_dev_setup_interrupts(ptr noundef %2) #4
  tail call void @udc_basic_init(ptr noundef %2) #4
  %14 = getelementptr i8, ptr %0, i32 -100
  store i32 1, ptr %14, align 4
  br label %16

15:                                               ; preds = %1
  tail call fastcc void @stop_udc(ptr noundef %2)
  br label %16

16:                                               ; preds = %15, %10, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_dma_pools(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udc_irq(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udc_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_dma_pools(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_unregister_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stop_udc(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %2) #4
  %3 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.udc_regs, ptr %4, i32 0, i32 1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  %7 = or i32 %6, 16384
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.udc_regs, ptr %8, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #4, !srcloc !13
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.udc_regs, ptr %10, i32 0, i32 1
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !14
  %13 = and i32 %12, -16385
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr inbounds %struct.udc_regs, ptr %14, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #4, !srcloc !13
  %16 = tail call i32 @udc_mask_unused_interrupts(ptr noundef %0) #4
  %17 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %58, label %20

20:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !16
  %21 = load i16, ptr %2, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !19
  %23 = load ptr, ptr %17, align 4
  %24 = getelementptr inbounds %struct.usb_gadget_driver, ptr %23, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  tail call void %25(ptr noundef %0) #4
  tail call void @_raw_spin_lock(ptr noundef %2) #4
  %26 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 0
  tail call void @empty_req_queue(ptr noundef %26) #4
  %27 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 1
  tail call void @empty_req_queue(ptr noundef %27) #4
  %28 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 2
  tail call void @empty_req_queue(ptr noundef %28) #4
  %29 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 3
  tail call void @empty_req_queue(ptr noundef %29) #4
  %30 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 4
  tail call void @empty_req_queue(ptr noundef %30) #4
  %31 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 5
  tail call void @empty_req_queue(ptr noundef %31) #4
  %32 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 6
  tail call void @empty_req_queue(ptr noundef %32) #4
  %33 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 7
  tail call void @empty_req_queue(ptr noundef %33) #4
  %34 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 8
  tail call void @empty_req_queue(ptr noundef %34) #4
  %35 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 9
  tail call void @empty_req_queue(ptr noundef %35) #4
  %36 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 10
  tail call void @empty_req_queue(ptr noundef %36) #4
  %37 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 11
  tail call void @empty_req_queue(ptr noundef %37) #4
  %38 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 12
  tail call void @empty_req_queue(ptr noundef %38) #4
  %39 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 13
  tail call void @empty_req_queue(ptr noundef %39) #4
  %40 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 14
  tail call void @empty_req_queue(ptr noundef %40) #4
  %41 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 15
  tail call void @empty_req_queue(ptr noundef %41) #4
  %42 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 16
  tail call void @empty_req_queue(ptr noundef %42) #4
  %43 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 17
  tail call void @empty_req_queue(ptr noundef %43) #4
  %44 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 18
  tail call void @empty_req_queue(ptr noundef %44) #4
  %45 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 19
  tail call void @empty_req_queue(ptr noundef %45) #4
  %46 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 20
  tail call void @empty_req_queue(ptr noundef %46) #4
  %47 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 21
  tail call void @empty_req_queue(ptr noundef %47) #4
  %48 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 22
  tail call void @empty_req_queue(ptr noundef %48) #4
  %49 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 23
  tail call void @empty_req_queue(ptr noundef %49) #4
  %50 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 24
  tail call void @empty_req_queue(ptr noundef %50) #4
  %51 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 25
  tail call void @empty_req_queue(ptr noundef %51) #4
  %52 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 26
  tail call void @empty_req_queue(ptr noundef %52) #4
  %53 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 27
  tail call void @empty_req_queue(ptr noundef %53) #4
  %54 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 28
  tail call void @empty_req_queue(ptr noundef %54) #4
  %55 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 29
  tail call void @empty_req_queue(ptr noundef %55) #4
  %56 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 30
  tail call void @empty_req_queue(ptr noundef %56) #4
  %57 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 31
  tail call void @empty_req_queue(ptr noundef %57) #4
  br label %58

58:                                               ; preds = %20, %1
  %59 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 5
  store i32 0, ptr %59, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !16
  %60 = load i16, ptr %2, align 4
  %61 = add i16 %60, 1
  store i16 %61, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !19
  %62 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 21
  %63 = load ptr, ptr %62, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %63, ptr noundef nonnull @.str.13) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udc_enable_dev_setup_interrupts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @udc_basic_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udc_mask_unused_interrupts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @empty_req_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @udc_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @udc_plat_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @stop_udc(ptr noundef %3)
  %4 = getelementptr inbounds %struct.udc, ptr %3, i32 0, i32 23
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @extcon_get_state(ptr noundef %5, i32 noundef 1) #4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call fastcc void @stop_udc(ptr noundef %3)
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.udc, ptr %3, i32 0, i32 22
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @phy_power_off(ptr noundef %11) #4
  %13 = load ptr, ptr %10, align 4
  %14 = tail call i32 @phy_exit(ptr noundef %13) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @udc_plat_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.udc, ptr %3, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @phy_init(ptr noundef %5) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.udc, ptr %3, i32 0, i32 21
  %10 = load ptr, ptr %9, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.16) #5
  br label %34

11:                                               ; preds = %1
  %12 = load ptr, ptr %4, align 4
  %13 = tail call i32 @phy_power_on(ptr noundef %12) #4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.udc, ptr %3, i32 0, i32 21
  %17 = load ptr, ptr %16, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.17) #5
  %18 = load ptr, ptr %4, align 4
  %19 = tail call i32 @phy_exit(ptr noundef %18) #4
  br label %34

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.udc, ptr %3, i32 0, i32 23
  %22 = load ptr, ptr %21, align 8
  %23 = tail call i32 @extcon_get_state(ptr noundef %22, i32 noundef 1) #4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.udc, ptr %3, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.udc, ptr %3, i32 0, i32 21
  %31 = load ptr, ptr %30, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.12) #5
  %32 = tail call i32 @udc_enable_dev_setup_interrupts(ptr noundef %3) #4
  tail call void @udc_basic_init(ptr noundef %3) #4
  %33 = getelementptr inbounds %struct.udc, ptr %3, i32 0, i32 5
  store i32 1, ptr %33, align 4
  br label %34

34:                                               ; preds = %29, %25, %20, %15, %8
  %35 = phi i32 [ %6, %8 ], [ %13, %15 ], [ 0, %20 ], [ 0, %25 ], [ 0, %29 ]
  ret i32 %35
}

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
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 3741828}
!11 = !{i64 2153844938}
!12 = !{i64 2153845148}
!13 = !{i64 3741410}
!14 = !{i64 2153845603}
!15 = !{i64 2153845813}
!16 = !{i64 2149225459}
!17 = !{i64 2149221283}
!18 = !{i64 2149221358, i64 2149221385, i64 2149221432, i64 2149221454, i64 2149221482, i64 2149221502}
!19 = !{i64 2149248462}
