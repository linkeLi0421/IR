; ModuleID = '/llk/IR/drivers/usb/host/r8a66597-hcd.c_pt.bc'
source_filename = "../drivers/usb/host/r8a66597-hcd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.65, i32 }
%union.anon.65 = type { ptr }
%struct.r8a66597_platdata = type { ptr, i16, i8 }
%struct.r8a66597 = type { %struct.spinlock, ptr, ptr, ptr, %struct.r8a66597_device, [2 x %struct.r8a66597_root_hub], [10 x %struct.list_head], %struct.timer_list, [10 x %struct.r8a66597_timers], i16, i16, i16, [10 x i8], i8, i32, %struct.list_head, [4 x i32], i8 }
%struct.r8a66597_device = type { i16, i16, i16, i16, i16, [10 x i8], i8, i32, ptr, i32, %struct.list_head }
%struct.r8a66597_root_hub = type { i32, i16, i32, ptr }
%struct.r8a66597_timers = type { %struct.timer_list, %struct.timer_list, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.r8a66597_pipe_info = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.r8a66597_pipe = type { %struct.r8a66597_pipe_info, i32, i32, i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.r8a66597_td = type { ptr, ptr, %struct.list_head, i16, i16, i32, i16, i16, i8 }
%struct.usb_hub_descriptor = type <{ i8, i8, i8, i16, i8, i8, %union.anon.66 }>
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { [4 x i8], [4 x i8] }
%struct.page = type { i32, %union.anon.1, %union.anon.58, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.58 = type { %struct.atomic_t }

@__UNIQUE_ID_description229 = internal constant [48 x i8] c"description=R8A66597 USB Host Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author231 = internal constant [25 x i8] c"author=Yoshihiro Shimoda\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [28 x i8] c"alias=platform:r8a66597_hcd\00", section ".modinfo", align 1
@r8a66597_driver = internal global %struct.platform_driver { ptr @r8a66597_probe, ptr @r8a66597_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @hcd_name, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @r8a66597_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@hcd_name = internal constant [13 x i8] c"r8a66597_hcd\00", align 1
@r8a66597_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @r8a66597_suspend, ptr @r8a66597_resume, ptr null, ptr null, ptr @r8a66597_suspend, ptr @r8a66597_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [30 x i8] c"platform_get_resource error.\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"platform_get_resource IORESOURCE_IRQ error.\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ioremap error.\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"no platform data\0A\00", align 1
@r8a66597_hc_driver = internal constant %struct.hc_driver { ptr @hcd_name, ptr null, i32 684, ptr @r8a66597_irq, i32 32, ptr null, ptr @r8a66597_start, ptr null, ptr null, ptr @r8a66597_stop, ptr null, ptr @r8a66597_get_frame, ptr @r8a66597_urb_enqueue, ptr @r8a66597_urb_dequeue, ptr null, ptr null, ptr @r8a66597_endpoint_disable, ptr null, ptr @r8a66597_hub_status_data, ptr @r8a66597_hub_control, ptr @r8a66597_bus_suspend, ptr @r8a66597_bus_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Failed to create hcd\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"usb%d\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"cannot get clock \22%s\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Failed to add hcd\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"\013r8a66597: invalid type.\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"External hub limit reached.\0A\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"cannot communicate with a USB device more than 10.(%x)\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.11 = private unnamed_addr constant [39 x i8] c"\013r8a66597: Illegal root port number.\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"\013r8a66597: unknown speed\0A\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"\013r8a66597: register%lx, loop %x is timeout\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.14 = private unnamed_addr constant [37 x i8] c"\013r8a66597: out fifo not ready (%d)\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"\013r8a66597: in fifo not ready (%d)\0A\00", align 1
@__const.set_pipe_reg_addr.fifoaddr = private unnamed_addr constant [3 x i32] [i32 24, i32 28, i32 20], align 4
@__const.set_pipe_reg_addr.fifosel = private unnamed_addr constant [3 x i32] [i32 40, i32 44, i32 32], align 4
@__const.set_pipe_reg_addr.fifoctr = private unnamed_addr constant [3 x i32] [i32 42, i32 46, i32 34], align 4
@.str.16 = private unnamed_addr constant [26 x i8] c"\013r8a66597: Illegal type\0A\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"\013r8a66597: Illegal pipenum (%d)\0A\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"address %d, EndpointAddress 0x%02x use DMA FIFO\0A\00", align 1
@usb_bus_idr_lock = external dso_local global %struct.mutex, align 4
@usb_bus_idr = external dso_local global %struct.idr, align 4
@.str.20 = private unnamed_addr constant [43 x i8] c"\013r8a66597: get_r8a66597_device fail.(%d)\0A\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"\013r8a66597: reg access fail.\0A\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"\013r8a66597: platdata clock is wrong.\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_license230], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @r8a66597_driver, ptr noundef nonnull @__this_module) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @r8a66597_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @r8a66597_probe(ptr noundef %0) #2 {
  %2 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store i64 0, ptr %2, align 8, !annotation !8
  %3 = tail call i32 @usb_disabled() #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %107

5:                                                ; preds = %1
  %6 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str) #13
  br label %107

10:                                               ; preds = %5
  %11 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 1024, i32 noundef 0) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.1) #13
  br label %107

15:                                               ; preds = %10
  %16 = load i32, ptr %11, align 4
  %17 = getelementptr inbounds %struct.resource, ptr %11, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 15
  %20 = load i32, ptr %6, align 4
  %21 = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 1, %20
  %24 = add i32 %23, %22
  %25 = tail call ptr @ioremap(i32 noundef %20, i32 noundef %24) #12
  %26 = icmp eq ptr %25, null
  %27 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  br i1 %26, label %28, label %29

28:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.2) #13
  br label %107

29:                                               ; preds = %15
  %30 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.3) #13
  br label %105

34:                                               ; preds = %29
  %35 = tail call ptr @usb_create_hcd(ptr noundef nonnull @r8a66597_hc_driver, ptr noundef %27, ptr noundef nonnull @hcd_name) #12
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.4) #13
  br label %105

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.usb_hcd, ptr %35, i32 0, i32 29
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(684) %39, i8 0, i32 684, i1 false)
  %40 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %39, ptr %40, align 8
  %41 = load ptr, ptr %30, align 4
  %42 = getelementptr inbounds %struct.usb_hcd, ptr %35, i32 1, i32 0, i32 3
  store ptr %41, ptr %42, align 4
  %43 = icmp eq i32 %19, 8
  %44 = getelementptr inbounds %struct.usb_hcd, ptr %35, i32 2, i32 26
  %45 = load i8, ptr %44, align 4
  %46 = select i1 %43, i8 2, i8 0
  %47 = and i8 %45, -3
  %48 = or i8 %47, %46
  store i8 %48, ptr %44, align 4
  %49 = getelementptr inbounds %struct.r8a66597_platdata, ptr %41, i32 0, i32 2
  %50 = load i8, ptr %49, align 2
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %38
  %54 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 8, ptr noundef nonnull @.str.5, i32 noundef %55)
  %57 = call ptr @clk_get(ptr noundef %27, ptr noundef nonnull %2) #12
  %58 = getelementptr inbounds %struct.usb_hcd, ptr %35, i32 1, i32 0, i32 2
  store ptr %57, ptr %58, align 4
  %59 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.6, ptr noundef nonnull %2) #13
  %61 = load ptr, ptr %58, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @usb_put_hcd(ptr noundef nonnull %35) #12
  br label %105

63:                                               ; preds = %53, %38
  %64 = phi i32 [ 1, %53 ], [ 2, %38 ]
  %65 = getelementptr inbounds %struct.usb_hcd, ptr %35, i32 2, i32 21, i32 3, i32 4
  store i32 %64, ptr %65, align 4
  store i32 0, ptr %39, align 4
  %66 = getelementptr inbounds %struct.usb_hcd, ptr %35, i32 1, i32 8, i32 1, i32 1
  call void @init_timer_key(ptr noundef %66, ptr noundef nonnull @r8a66597_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #12
  %67 = getelementptr inbounds %struct.usb_hcd, ptr %35, i32 1, i32 0, i32 1
  store ptr %25, ptr %67, align 4
  %68 = call fastcc i32 @r8a66597_clock_enable(ptr noundef %39)
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %94, label %70

70:                                               ; preds = %63
  call fastcc void @disable_controller(ptr noundef %39)
  br label %71

71:                                               ; preds = %71, %70
  %72 = phi i32 [ 0, %70 ], [ %78, %71 ]
  %73 = getelementptr %struct.r8a66597, ptr %39, i32 0, i32 6, i32 %72
  store volatile ptr %73, ptr %73, align 4
  %74 = getelementptr %struct.r8a66597, ptr %39, i32 0, i32 6, i32 %72, i32 1
  store ptr %73, ptr %74, align 4
  %75 = getelementptr %struct.r8a66597, ptr %39, i32 0, i32 8, i32 %72
  %76 = getelementptr %struct.r8a66597, ptr %39, i32 0, i32 8, i32 %72, i32 2
  store ptr %39, ptr %76, align 4
  call void @init_timer_key(ptr noundef %75, ptr noundef nonnull @r8a66597_td_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #12
  %77 = getelementptr %struct.r8a66597, ptr %39, i32 0, i32 8, i32 %72, i32 1
  call void @init_timer_key(ptr noundef %77, ptr noundef nonnull @r8a66597_interval_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #12
  %78 = add nuw nsw i32 %72, 1
  %79 = icmp eq i32 %78, 10
  br i1 %79, label %80, label %71

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.usb_hcd, ptr %35, i32 2, i32 21, i32 3, i32 5
  store volatile ptr %81, ptr %81, align 4
  %82 = getelementptr inbounds %struct.usb_hcd, ptr %35, i32 2, i32 21, i32 4
  store ptr %81, ptr %82, align 4
  %83 = load i32, ptr %6, align 4
  %84 = getelementptr inbounds %struct.usb_hcd, ptr %35, i32 0, i32 17
  store i32 %83, ptr %84, align 4
  %85 = getelementptr inbounds %struct.usb_hcd, ptr %35, i32 0, i32 14
  %86 = load i16, ptr %85, align 8
  %87 = or i16 %86, 128
  store i16 %87, ptr %85, align 8
  %88 = call i32 @usb_add_hcd(ptr noundef nonnull %35, i32 noundef %16, i32 noundef %19) #12
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %80
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.7) #13
  br label %94

91:                                               ; preds = %80
  %92 = load ptr, ptr %35, align 8
  %93 = call i32 @device_wakeup_enable(ptr noundef %92) #12
  br label %107

94:                                               ; preds = %90, %63
  %95 = phi i32 [ %68, %63 ], [ %88, %90 ]
  %96 = load ptr, ptr %42, align 4
  %97 = getelementptr inbounds %struct.r8a66597_platdata, ptr %96, i32 0, i32 2
  %98 = load i8, ptr %97, align 2
  %99 = and i8 %98, 1
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.usb_hcd, ptr %35, i32 1, i32 0, i32 2
  %103 = load ptr, ptr %102, align 4
  call void @clk_put(ptr noundef %103) #12
  br label %104

104:                                              ; preds = %101, %94
  call void @usb_put_hcd(ptr noundef nonnull %35) #12
  br label %105

105:                                              ; preds = %104, %60, %37, %33
  %106 = phi i32 [ %95, %104 ], [ %62, %60 ], [ -12, %37 ], [ -19, %33 ]
  call void @iounmap(ptr noundef nonnull %25) #12
  br label %107

107:                                              ; preds = %105, %91, %28, %13, %8, %1
  %108 = phi i32 [ 0, %91 ], [ -19, %1 ], [ %106, %105 ], [ -19, %8 ], [ -19, %13 ], [ -12, %28 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret i32 %108
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @r8a66597_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -352
  %5 = getelementptr inbounds %struct.r8a66597, ptr %3, i32 0, i32 7
  %6 = tail call i32 @del_timer_sync(ptr noundef %5) #12
  tail call void @usb_remove_hcd(ptr noundef %4) #12
  %7 = getelementptr inbounds %struct.r8a66597, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void @iounmap(ptr noundef %8) #12
  %9 = getelementptr inbounds %struct.r8a66597, ptr %3, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.r8a66597_platdata, ptr %10, i32 0, i32 2
  %12 = load i8, ptr %11, align 2
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.r8a66597, ptr %3, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  tail call void @clk_put(ptr noundef %17) #12
  br label %18

18:                                               ; preds = %15, %1
  tail call void @usb_put_hcd(ptr noundef %4) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @r8a66597_timer(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -172
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #12
  %4 = getelementptr i8, ptr %0, i32 480
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %142, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -168
  %9 = getelementptr i8, ptr %0, i32 508
  %10 = getelementptr i8, ptr %0, i32 -524
  br label %11

11:                                               ; preds = %138, %7
  %12 = phi i32 [ 0, %7 ], [ %139, %138 ]
  %13 = getelementptr %struct.r8a66597, ptr %2, i32 0, i32 5, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %49, label %17

17:                                               ; preds = %11
  %18 = icmp eq i32 %12, 0
  %19 = select i1 %18, i32 8, i32 10
  %20 = load ptr, ptr %8, align 4
  %21 = getelementptr i8, ptr %20, i32 %19
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %21) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %23 = and i16 %22, 64
  %24 = icmp eq i16 %23, 0
  %25 = load ptr, ptr %8, align 4
  %26 = getelementptr i8, ptr %25, i32 %19
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %26) #12
  tail call void asm sideeffect "dsb ", "~{memory}"() #12
  br i1 %24, label %37, label %28

28:                                               ; preds = %17
  %29 = and i16 %27, -81
  %30 = or i16 %29, 16
  %31 = load ptr, ptr %8, align 4
  %32 = getelementptr i8, ptr %31, i32 %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %32, i16 %30) #12, !srcloc !12
  %33 = load volatile i32, ptr @jiffies, align 64
  %34 = add i32 %33, 1
  %35 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %34) #12
  %36 = load i32, ptr %13, align 4
  br label %49

37:                                               ; preds = %17
  %38 = load i32, ptr %13, align 4
  %39 = and i32 %38, -1537
  %40 = trunc i16 %27 to i3
  switch i3 %40, label %45 [
    i3 3, label %41
    i3 1, label %43
  ]

41:                                               ; preds = %37
  %42 = or i32 %39, 1024
  br label %45

43:                                               ; preds = %37
  %44 = or i32 %39, 512
  br label %45

45:                                               ; preds = %43, %41, %37
  %46 = phi i32 [ %39, %37 ], [ %44, %43 ], [ %42, %41 ]
  %47 = and i32 %46, -19
  %48 = or i32 %47, 2
  store i32 %48, ptr %13, align 4
  br label %49

49:                                               ; preds = %45, %28, %11
  %50 = phi i32 [ %36, %28 ], [ %48, %45 ], [ %14, %11 ]
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = icmp eq i32 %12, 0
  %55 = select i1 %54, i32 66, i32 68
  %56 = load ptr, ptr %8, align 4
  %57 = getelementptr i8, ptr %56, i32 %55
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %57, i16 -2049) #12, !srcloc !12
  %58 = select i1 %54, i32 50, i32 52
  %59 = load ptr, ptr %8, align 4
  %60 = getelementptr i8, ptr %59, i32 %58
  %61 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %60) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %62 = or i16 %61, 2048
  %63 = load ptr, ptr %8, align 4
  %64 = getelementptr i8, ptr %63, i32 %58
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %64, i16 %62) #12, !srcloc !12
  br label %65

65:                                               ; preds = %53, %49
  %66 = getelementptr %struct.r8a66597, ptr %2, i32 0, i32 5, i32 %12, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %138

69:                                               ; preds = %65
  %70 = icmp eq i32 %12, 0
  %71 = select i1 %70, i32 4, i32 6
  %72 = load ptr, ptr %8, align 4
  %73 = getelementptr i8, ptr %72, i32 %71
  %74 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %73) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %75 = and i16 %74, 3
  %76 = getelementptr %struct.r8a66597, ptr %2, i32 0, i32 5, i32 %12, i32 1
  %77 = load i16, ptr %76, align 4
  %78 = icmp eq i16 %75, %77
  br i1 %78, label %79, label %134

79:                                               ; preds = %69
  %80 = load i32, ptr %66, align 4
  %81 = add i32 %80, -1
  store i32 %81, ptr %66, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %130

83:                                               ; preds = %79
  %84 = trunc i16 %74 to i2
  switch i2 %84, label %112 [
    i2 0, label %85
    i2 1, label %96
    i2 -2, label %104
  ]

85:                                               ; preds = %83
  %86 = select i1 %70, i32 66, i32 68
  %87 = load ptr, ptr %8, align 4
  %88 = getelementptr i8, ptr %87, i32 %86
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %88, i16 -2049) #12, !srcloc !12
  %89 = select i1 %70, i32 50, i32 52
  %90 = load ptr, ptr %8, align 4
  %91 = getelementptr i8, ptr %90, i32 %89
  %92 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %91) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %93 = or i16 %92, 2048
  %94 = load ptr, ptr %8, align 4
  %95 = getelementptr i8, ptr %94, i32 %89
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %95, i16 %93) #12, !srcloc !12
  br label %127

96:                                               ; preds = %83
  %97 = select i1 %70, i32 0, i32 2
  %98 = load ptr, ptr %8, align 4
  %99 = getelementptr i8, ptr %98, i32 %97
  %100 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %99) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %101 = or i16 %100, 128
  %102 = load ptr, ptr %8, align 4
  %103 = getelementptr i8, ptr %102, i32 %97
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %103, i16 %101) #12, !srcloc !12
  br label %112

104:                                              ; preds = %83
  %105 = select i1 %70, i32 0, i32 2
  %106 = load ptr, ptr %8, align 4
  %107 = getelementptr i8, ptr %106, i32 %105
  %108 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %107) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %109 = and i16 %108, -129
  %110 = load ptr, ptr %8, align 4
  %111 = getelementptr i8, ptr %110, i32 %105
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %111, i16 %109) #12, !srcloc !12
  br label %112

112:                                              ; preds = %104, %96, %83
  %113 = select i1 %70, i32 66, i32 68
  %114 = load ptr, ptr %8, align 4
  %115 = getelementptr i8, ptr %114, i32 %113
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %115, i16 -4097) #12, !srcloc !12
  %116 = select i1 %70, i32 50, i32 52
  %117 = load ptr, ptr %8, align 4
  %118 = getelementptr i8, ptr %117, i32 %116
  %119 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %118) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %120 = or i16 %119, 4096
  %121 = load ptr, ptr %8, align 4
  %122 = getelementptr i8, ptr %121, i32 %116
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %122, i16 %120) #12, !srcloc !12
  %123 = load i8, ptr %9, align 4
  %124 = and i8 %123, 1
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %112
  tail call void @usb_hcd_resume_root_hub(ptr noundef %10) #12
  br label %127

127:                                              ; preds = %126, %112, %85
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  %128 = load i16, ptr %2, align 4
  %129 = add i16 %128, 1
  store i16 %129, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  tail call void @usb_hcd_poll_rh_status(ptr noundef %10) #12
  tail call void @_raw_spin_lock(ptr noundef %2) #12
  br label %138

130:                                              ; preds = %79
  %131 = load volatile i32, ptr @jiffies, align 64
  %132 = add i32 %131, 1
  %133 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %132) #12
  br label %138

134:                                              ; preds = %69
  store i32 5, ptr %66, align 4
  store i16 %75, ptr %76, align 4
  %135 = load volatile i32, ptr @jiffies, align 64
  %136 = add i32 %135, 1
  %137 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %136) #12
  br label %138

138:                                              ; preds = %134, %130, %127, %65
  %139 = add nuw i32 %12, 1
  %140 = load i32, ptr %4, align 4
  %141 = icmp ult i32 %139, %140
  br i1 %141, label %11, label %142

142:                                              ; preds = %138, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @r8a66597_clock_enable(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.r8a66597_platdata, ptr %3, i32 0, i32 2
  %5 = load i8, ptr %4, align 2
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 1
  br label %36

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @clk_prepare(ptr noundef %12) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = tail call i32 @clk_enable(ptr noundef %12) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @clk_unprepare(ptr noundef %12) #12
  br label %19

19:                                               ; preds = %18, %15, %10
  %20 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 1
  br label %21

21:                                               ; preds = %29, %19
  %22 = phi i32 [ 0, %19 ], [ %30, %29 ]
  %23 = load ptr, ptr %20, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %23, i16 1024) #12, !srcloc !12
  %24 = load ptr, ptr %20, align 4
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %24) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %26 = icmp eq i32 %22, 1001
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #13
  br label %88

29:                                               ; preds = %21
  %30 = add nuw nsw i32 %22, 1
  %31 = and i16 %25, 1024
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %21, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %20, align 4
  %35 = getelementptr i8, ptr %34, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %35, i16 4) #12, !srcloc !12
  br label %88

36:                                               ; preds = %44, %8
  %37 = phi i32 [ %45, %44 ], [ 0, %8 ]
  %38 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %38, i16 1) #12, !srcloc !12
  %39 = load ptr, ptr %9, align 4
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %39) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %41 = icmp eq i32 %37, 1001
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #13
  br label %88

44:                                               ; preds = %36
  %45 = add nuw nsw i32 %37, 1
  %46 = and i16 %40, 1
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %36, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %9, align 4
  %50 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %49) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %51 = and i16 %50, -2
  %52 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %52, i16 %51) #12, !srcloc !12
  %53 = load ptr, ptr %2, align 4
  %54 = getelementptr inbounds %struct.r8a66597_platdata, ptr %53, i32 0, i32 2
  %55 = load i8, ptr %54, align 2
  %56 = lshr i8 %55, 1
  %57 = and i8 %56, 3
  %58 = zext i8 %57 to i32
  %59 = add nsw i32 %58, -1
  %60 = icmp ult i32 %59, 3
  br i1 %60, label %63, label %61

61:                                               ; preds = %48
  %62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #13
  br label %66

63:                                               ; preds = %48
  %64 = trunc i32 %59 to i16
  %65 = shl i16 %64, 14
  br label %66

66:                                               ; preds = %63, %61
  %67 = phi i16 [ 0, %61 ], [ %65, %63 ]
  %68 = load ptr, ptr %9, align 4
  %69 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %68) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %70 = and i16 %69, 16383
  %71 = or i16 %70, %67
  %72 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %72, i16 %71) #12, !srcloc !12
  %73 = load ptr, ptr %9, align 4
  %74 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %73) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %75 = or i16 %74, 8192
  %76 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %76, i16 %75) #12, !srcloc !12
  br label %77

77:                                               ; preds = %84, %66
  %78 = phi i32 [ 0, %66 ], [ %85, %84 ]
  tail call void @msleep(i32 noundef 1) #12
  %79 = load ptr, ptr %9, align 4
  %80 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %79) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %81 = icmp eq i32 %78, 501
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #13
  br label %88

84:                                               ; preds = %77
  %85 = add nuw nsw i32 %78, 1
  %86 = and i16 %80, 1024
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %77, label %88

88:                                               ; preds = %84, %82, %42, %33, %27
  %89 = phi i32 [ -6, %27 ], [ -6, %42 ], [ -6, %82 ], [ 0, %33 ], [ 0, %84 ]
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @disable_controller(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %4, i16 0) #12, !srcloc !12
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 50
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %6, i16 0) #12, !srcloc !12
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 54
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %8, i16 0) #12, !srcloc !12
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr i8, ptr %9, i32 58
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %10, i16 0) #12, !srcloc !12
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr i8, ptr %11, i32 56
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %12, i16 0) #12, !srcloc !12
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr i8, ptr %13, i32 70
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %14, i16 0) #12, !srcloc !12
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr i8, ptr %15, i32 72
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %16, i16 0) #12, !srcloc !12
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr i8, ptr %17, i32 74
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %18, i16 0) #12, !srcloc !12
  %19 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 14
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %71, label %22

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 3
  br label %24

24:                                               ; preds = %53, %22
  %25 = phi i32 [ 0, %22 ], [ %68, %53 ]
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 50, i32 52
  %28 = load ptr, ptr %2, align 4
  %29 = getelementptr i8, ptr %28, i32 %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %29, i16 0) #12, !srcloc !12
  %30 = select i1 %26, i32 66, i32 68
  %31 = load ptr, ptr %2, align 4
  %32 = getelementptr i8, ptr %31, i32 %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %32, i16 0) #12, !srcloc !12
  %33 = load ptr, ptr %23, align 4
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %24
  tail call void %34(i32 noundef %25, i32 noundef 0) #12
  br label %45

37:                                               ; preds = %24
  %38 = select i1 %26, i32 8, i32 10
  %39 = load ptr, ptr %2, align 4
  %40 = getelementptr i8, ptr %39, i32 %38
  %41 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %40) #12
  tail call void asm sideeffect "dsb ", "~{memory}"() #12
  %42 = and i16 %41, -513
  %43 = load ptr, ptr %2, align 4
  %44 = getelementptr i8, ptr %43, i32 %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %44, i16 %42) #12, !srcloc !12
  br label %45

45:                                               ; preds = %37, %36
  br label %46

46:                                               ; preds = %46, %45
  %47 = load ptr, ptr %2, align 4
  %48 = getelementptr i8, ptr %47, i32 60
  %49 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %48) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %50 = and i16 %49, 16
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 137438720) #12
  %52 = icmp eq i16 %50, 0
  br i1 %52, label %53, label %46

53:                                               ; preds = %46
  %54 = select i1 %26, i32 0, i32 2
  %55 = load ptr, ptr %2, align 4
  %56 = getelementptr i8, ptr %55, i32 %54
  %57 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %56) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %58 = select i1 %26, i16 -97, i16 -33
  %59 = and i16 %57, %58
  %60 = load ptr, ptr %2, align 4
  %61 = getelementptr i8, ptr %60, i32 %54
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %61, i16 %59) #12, !srcloc !12
  %62 = load ptr, ptr %2, align 4
  %63 = getelementptr i8, ptr %62, i32 %54
  %64 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %63) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %65 = and i16 %64, -129
  %66 = load ptr, ptr %2, align 4
  %67 = getelementptr i8, ptr %66, i32 %54
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %67, i16 %65) #12, !srcloc !12
  %68 = add nuw i32 %25, 1
  %69 = load i32, ptr %19, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %24, label %71

71:                                               ; preds = %53, %1
  %72 = load ptr, ptr %2, align 4
  %73 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %72) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %74 = and i16 %73, -1025
  %75 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %75, i16 %74) #12, !srcloc !12
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 214748) #12
  %77 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.r8a66597_platdata, ptr %78, i32 0, i32 2
  %80 = load i8, ptr %79, align 2
  %81 = and i8 %80, 1
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %71
  %84 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 2
  %85 = load ptr, ptr %84, align 4
  tail call void @clk_disable(ptr noundef %85) #12
  tail call void @clk_unprepare(ptr noundef %85) #12
  br label %99

86:                                               ; preds = %71
  %87 = load ptr, ptr %2, align 4
  %88 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %87) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %89 = and i16 %88, -2049
  %90 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %90, i16 %89) #12, !srcloc !12
  %91 = load ptr, ptr %2, align 4
  %92 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %91) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %93 = and i16 %92, -8193
  %94 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %94, i16 %93) #12, !srcloc !12
  %95 = load ptr, ptr %2, align 4
  %96 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %95) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %97 = and i16 %96, -2
  %98 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %98, i16 %97) #12, !srcloc !12
  br label %99

99:                                               ; preds = %86, %83
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @r8a66597_td_timer(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.r8a66597_timers, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #12
  %5 = getelementptr inbounds %struct.r8a66597, ptr %3, i32 0, i32 10
  %6 = load i16, ptr %5, align 2
  %7 = zext i16 %6 to i32
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %141, label %10

10:                                               ; preds = %1
  %11 = getelementptr %struct.r8a66597, ptr %3, i32 0, i32 8, i32 0, i32 0, i32 0, i32 1
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %141

14:                                               ; preds = %10
  %15 = getelementptr %struct.r8a66597, ptr %3, i32 0, i32 6, i32 0
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  %18 = getelementptr i8, ptr %16, i32 -8
  %19 = icmp eq ptr %18, null
  %20 = or i1 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = and i16 %6, -2
  store i16 %22, ptr %5, align 2
  %23 = zext i16 %22 to i32
  br label %141

24:                                               ; preds = %302, %283, %264, %245, %226, %207, %188, %169, %150, %14
  %25 = phi i32 [ 0, %14 ], [ 1, %150 ], [ 2, %169 ], [ 3, %188 ], [ 4, %207 ], [ 5, %226 ], [ 6, %245 ], [ 7, %264 ], [ 8, %283 ], [ 9, %302 ]
  %26 = phi i16 [ %6, %14 ], [ %143, %150 ], [ %162, %169 ], [ %181, %188 ], [ %200, %207 ], [ %219, %226 ], [ %238, %245 ], [ %257, %264 ], [ %276, %283 ], [ %295, %302 ]
  %27 = phi i16 [ -2, %14 ], [ -3, %150 ], [ -5, %169 ], [ -9, %188 ], [ -17, %207 ], [ -33, %226 ], [ -65, %245 ], [ -129, %264 ], [ -257, %283 ], [ -513, %302 ]
  %28 = phi ptr [ %15, %14 ], [ %151, %150 ], [ %170, %169 ], [ %189, %188 ], [ %208, %207 ], [ %227, %226 ], [ %246, %245 ], [ %265, %264 ], [ %284, %283 ], [ %303, %302 ]
  %29 = phi ptr [ %16, %14 ], [ %152, %150 ], [ %171, %169 ], [ %190, %188 ], [ %209, %207 ], [ %228, %226 ], [ %247, %245 ], [ %266, %264 ], [ %285, %283 ], [ %304, %302 ]
  %30 = phi ptr [ %18, %14 ], [ %154, %150 ], [ %173, %169 ], [ %192, %188 ], [ %211, %207 ], [ %230, %226 ], [ %249, %245 ], [ %268, %264 ], [ %287, %283 ], [ %306, %302 ]
  %31 = getelementptr i8, ptr %29, i32 -4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.urb, ptr %32, i32 0, i32 20
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %67, label %36

36:                                               ; preds = %24
  %37 = getelementptr i8, ptr %29, i32 10
  %38 = load i16, ptr %37, align 2
  %39 = zext i16 %38 to i32
  %40 = getelementptr %struct.r8a66597, ptr %3, i32 0, i32 6, i32 %39
  %41 = load volatile ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %40
  br i1 %42, label %311, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.urb, ptr %32, i32 0, i32 10
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, -1073741824
  %47 = icmp eq i32 %46, -2147483648
  %48 = and i32 %45, 128
  %49 = icmp eq i32 %48, 0
  %50 = or i1 %47, %49
  br i1 %50, label %311, label %51

51:                                               ; preds = %43
  %52 = shl nuw i32 1, %39
  %53 = trunc i32 %52 to i16
  %54 = or i16 %26, %53
  store i16 %54, ptr %5, align 2
  %55 = load ptr, ptr %31, align 4
  %56 = getelementptr inbounds %struct.urb, ptr %55, i32 0, i32 10
  %57 = load i32, ptr %56, align 4
  %58 = load i16, ptr %37, align 2
  %59 = zext i16 %58 to i32
  %60 = getelementptr %struct.r8a66597, ptr %3, i32 0, i32 8, i32 %59
  %61 = load volatile i32, ptr @jiffies, align 64
  %62 = icmp sgt i32 %57, -1
  %63 = select i1 %62, i32 30, i32 50
  %64 = tail call i32 @__msecs_to_jiffies(i32 noundef %63) #12
  %65 = add i32 %64, %61
  %66 = tail call i32 @mod_timer(ptr noundef %60, i32 noundef %65) #12
  br label %311

67:                                               ; preds = %24
  %68 = load ptr, ptr %30, align 4
  tail call fastcc void @pipe_stop(ptr noundef %3, ptr noundef %68)
  %69 = getelementptr %struct.r8a66597, ptr %3, i32 0, i32 6, i32 %25, i32 1
  %70 = getelementptr i8, ptr %29, i32 16
  br label %71

71:                                               ; preds = %92, %67
  %72 = phi ptr [ %29, %67 ], [ %78, %92 ]
  %73 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = load ptr, ptr %72, align 4
  %76 = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  store ptr %74, ptr %76, align 4
  store volatile ptr %75, ptr %74, align 4
  %77 = load ptr, ptr %69, align 4
  store ptr %72, ptr %69, align 4
  store ptr %28, ptr %72, align 4
  store ptr %77, ptr %73, align 4
  store volatile ptr %72, ptr %77, align 4
  %78 = load volatile ptr, ptr %28, align 4
  %79 = icmp eq ptr %78, %28
  %80 = getelementptr i8, ptr %78, i32 -8
  %81 = icmp eq ptr %80, null
  %82 = or i1 %79, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %71
  %84 = tail call fastcc i32 @start_transfer(ptr noundef %3, ptr noundef nonnull %30)
  br label %104

85:                                               ; preds = %71
  %86 = icmp eq ptr %29, %78
  br i1 %86, label %100, label %87

87:                                               ; preds = %85
  %88 = load i16, ptr %70, align 4
  %89 = getelementptr i8, ptr %78, i32 16
  %90 = load i16, ptr %89, align 4
  %91 = icmp eq i16 %88, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load ptr, ptr %30, align 4
  %94 = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %93, i32 0, i32 3
  %95 = load i16, ptr %94, align 4
  %96 = load ptr, ptr %80, align 4
  %97 = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %96, i32 0, i32 3
  %98 = load i16, ptr %97, align 4
  %99 = icmp eq i16 %95, %98
  br i1 %99, label %71, label %100

100:                                              ; preds = %92, %87, %85
  %101 = phi ptr [ %29, %85 ], [ %78, %87 ], [ %78, %92 ]
  %102 = tail call fastcc i32 @start_transfer(ptr noundef %3, ptr noundef nonnull %80)
  %103 = icmp eq ptr %29, %101
  br i1 %103, label %104, label %107

104:                                              ; preds = %100, %83
  %105 = load i16, ptr %5, align 2
  %106 = and i16 %105, %27
  store i16 %106, ptr %5, align 2
  br label %311

107:                                              ; preds = %100
  %108 = getelementptr i8, ptr %101, i32 10
  %109 = load i16, ptr %108, align 2
  %110 = zext i16 %109 to i32
  %111 = getelementptr %struct.r8a66597, ptr %3, i32 0, i32 6, i32 %110
  %112 = load volatile ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, %111
  br i1 %113, label %311, label %114

114:                                              ; preds = %107
  %115 = getelementptr i8, ptr %101, i32 -4
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.urb, ptr %116, i32 0, i32 10
  %118 = load i32, ptr %117, align 4
  %119 = and i32 %118, -1073741824
  %120 = icmp eq i32 %119, -2147483648
  %121 = and i32 %118, 128
  %122 = icmp eq i32 %121, 0
  %123 = or i1 %120, %122
  br i1 %123, label %311, label %124

124:                                              ; preds = %114
  %125 = shl nuw i32 1, %110
  %126 = load i16, ptr %5, align 2
  %127 = trunc i32 %125 to i16
  %128 = or i16 %126, %127
  store i16 %128, ptr %5, align 2
  %129 = load ptr, ptr %115, align 4
  %130 = getelementptr inbounds %struct.urb, ptr %129, i32 0, i32 10
  %131 = load i32, ptr %130, align 4
  %132 = load i16, ptr %108, align 2
  %133 = zext i16 %132 to i32
  %134 = getelementptr %struct.r8a66597, ptr %3, i32 0, i32 8, i32 %133
  %135 = load volatile i32, ptr @jiffies, align 64
  %136 = icmp sgt i32 %131, -1
  %137 = select i1 %136, i32 30, i32 50
  %138 = tail call i32 @__msecs_to_jiffies(i32 noundef %137) #12
  %139 = add i32 %138, %135
  %140 = tail call i32 @mod_timer(ptr noundef %134, i32 noundef %139) #12
  br label %311

141:                                              ; preds = %21, %10, %1
  %142 = phi i32 [ %7, %10 ], [ %7, %1 ], [ %23, %21 ]
  %143 = phi i16 [ %6, %10 ], [ %6, %1 ], [ %22, %21 ]
  %144 = and i32 %142, 2
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %160, label %146

146:                                              ; preds = %141
  %147 = getelementptr %struct.r8a66597, ptr %3, i32 0, i32 8, i32 1, i32 0, i32 0, i32 1
  %148 = load volatile ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %160

150:                                              ; preds = %146
  %151 = getelementptr %struct.r8a66597, ptr %3, i32 0, i32 6, i32 1
  %152 = load volatile ptr, ptr %151, align 4
  %153 = icmp eq ptr %152, %151
  %154 = getelementptr i8, ptr %152, i32 -8
  %155 = icmp eq ptr %154, null
  %156 = or i1 %153, %155
  br i1 %156, label %157, label %24

157:                                              ; preds = %150
  %158 = and i16 %143, -3
  store i16 %158, ptr %5, align 2
  %159 = zext i16 %158 to i32
  br label %160

160:                                              ; preds = %157, %146, %141
  %161 = phi i32 [ %159, %157 ], [ %142, %146 ], [ %142, %141 ]
  %162 = phi i16 [ %158, %157 ], [ %143, %146 ], [ %143, %141 ]
  %163 = and i32 %161, 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %179, label %165

165:                                              ; preds = %160
  %166 = getelementptr %struct.r8a66597, ptr %3, i32 0, i32 8, i32 2, i32 0, i32 0, i32 1
  %167 = load volatile ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %179

169:                                              ; preds = %165
  %170 = getelementptr %struct.r8a66597, ptr %3, i32 0, i32 6, i32 2
  %171 = load volatile ptr, ptr %170, align 4
  %172 = icmp eq ptr %171, %170
  %173 = getelementptr i8, ptr %171, i32 -8
  %174 = icmp eq ptr %173, null
  %175 = or i1 %172, %174
  br i1 %175, label %176, label %24

176:                                              ; preds = %169
  %177 = and i16 %162, -5
  store i16 %177, ptr %5, align 2
  %178 = zext i16 %177 to i32
  br label %179

179:                                              ; preds = %176, %165, %160
  %180 = phi i32 [ %178, %176 ], [ %161, %165 ], [ %161, %160 ]
  %181 = phi i16 [ %177, %176 ], [ %162, %165 ], [ %162, %160 ]
  %182 = and i32 %180, 8
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %198, label %184

184:                                              ; preds = %179
  %185 = getelementptr %struct.r8a66597, ptr %3, i32 0, i32 8, i32 3, i32 0, i32 0, i32 1
  %186 = load volatile ptr, ptr %185, align 4
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %198

188:                                              ; preds = %184
  %189 = getelementptr %struct.r8a66597, ptr %3, i32 0, i32 6, i32 3
  %190 = load volatile ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, %189
  %192 = getelementptr i8, ptr %190, i32 -8
  %193 = icmp eq ptr %192, null
  %194 = or i1 %191, %193
  br i1 %194, label %195, label %24

195:                                              ; preds = %188
  %196 = and i16 %181, -9
  store i16 %196, ptr %5, align 2
  %197 = zext i16 %196 to i32
  br label %198

198:                                              ; preds = %195, %184, %179
  %199 = phi i32 [ %197, %195 ], [ %180, %184 ], [ %180, %179 ]
  %200 = phi i16 [ %196, %195 ], [ %181, %184 ], [ %181, %179 ]
  %201 = and i32 %199, 16
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %217, label %203

203:                                              ; preds = %198
  %204 = getelementptr %struct.r8a66597, ptr %3, i32 0, i32 8, i32 4, i32 0, i32 0, i32 1
  %205 = load volatile ptr, ptr %204, align 4
  %206 = icmp eq ptr %205, null
  br i1 %206, label %207, label %217

207:                                              ; preds = %203
  %208 = getelementptr %struct.r8a66597, ptr %3, i32 0, i32 6, i32 4
  %209 = load volatile ptr, ptr %208, align 4
  %210 = icmp eq ptr %209, %208
  %211 = getelementptr i8, ptr %209, i32 -8
  %212 = icmp eq ptr %211, null
  %213 = or i1 %210, %212
  br i1 %213, label %214, label %24

214:                                              ; preds = %207
  %215 = and i16 %200, -17
  store i16 %215, ptr %5, align 2
  %216 = zext i16 %215 to i32
  br label %217

217:                                              ; preds = %214, %203, %198
  %218 = phi i32 [ %216, %214 ], [ %199, %203 ], [ %199, %198 ]
  %219 = phi i16 [ %215, %214 ], [ %200, %203 ], [ %200, %198 ]
  %220 = and i32 %218, 32
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %236, label %222

222:                                              ; preds = %217
  %223 = getelementptr %struct.r8a66597, ptr %3, i32 0, i32 8, i32 5, i32 0, i32 0, i32 1
  %224 = load volatile ptr, ptr %223, align 4
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %236

226:                                              ; preds = %222
  %227 = getelementptr %struct.r8a66597, ptr %3, i32 0, i32 6, i32 5
  %228 = load volatile ptr, ptr %227, align 4
  %229 = icmp eq ptr %228, %227
  %230 = getelementptr i8, ptr %228, i32 -8
  %231 = icmp eq ptr %230, null
  %232 = or i1 %229, %231
  br i1 %232, label %233, label %24

233:                                              ; preds = %226
  %234 = and i16 %219, -33
  store i16 %234, ptr %5, align 2
  %235 = zext i16 %234 to i32
  br label %236

236:                                              ; preds = %233, %222, %217
  %237 = phi i32 [ %235, %233 ], [ %218, %222 ], [ %218, %217 ]
  %238 = phi i16 [ %234, %233 ], [ %219, %222 ], [ %219, %217 ]
  %239 = and i32 %237, 64
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %255, label %241

241:                                              ; preds = %236
  %242 = getelementptr %struct.r8a66597, ptr %3, i32 0, i32 8, i32 6, i32 0, i32 0, i32 1
  %243 = load volatile ptr, ptr %242, align 4
  %244 = icmp eq ptr %243, null
  br i1 %244, label %245, label %255

245:                                              ; preds = %241
  %246 = getelementptr %struct.r8a66597, ptr %3, i32 0, i32 6, i32 6
  %247 = load volatile ptr, ptr %246, align 4
  %248 = icmp eq ptr %247, %246
  %249 = getelementptr i8, ptr %247, i32 -8
  %250 = icmp eq ptr %249, null
  %251 = or i1 %248, %250
  br i1 %251, label %252, label %24

252:                                              ; preds = %245
  %253 = and i16 %238, -65
  store i16 %253, ptr %5, align 2
  %254 = zext i16 %253 to i32
  br label %255

255:                                              ; preds = %252, %241, %236
  %256 = phi i32 [ %254, %252 ], [ %237, %241 ], [ %237, %236 ]
  %257 = phi i16 [ %253, %252 ], [ %238, %241 ], [ %238, %236 ]
  %258 = and i32 %256, 128
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %274, label %260

260:                                              ; preds = %255
  %261 = getelementptr %struct.r8a66597, ptr %3, i32 0, i32 8, i32 7, i32 0, i32 0, i32 1
  %262 = load volatile ptr, ptr %261, align 4
  %263 = icmp eq ptr %262, null
  br i1 %263, label %264, label %274

264:                                              ; preds = %260
  %265 = getelementptr %struct.r8a66597, ptr %3, i32 0, i32 6, i32 7
  %266 = load volatile ptr, ptr %265, align 4
  %267 = icmp eq ptr %266, %265
  %268 = getelementptr i8, ptr %266, i32 -8
  %269 = icmp eq ptr %268, null
  %270 = or i1 %267, %269
  br i1 %270, label %271, label %24

271:                                              ; preds = %264
  %272 = and i16 %257, -129
  store i16 %272, ptr %5, align 2
  %273 = zext i16 %272 to i32
  br label %274

274:                                              ; preds = %271, %260, %255
  %275 = phi i32 [ %273, %271 ], [ %256, %260 ], [ %256, %255 ]
  %276 = phi i16 [ %272, %271 ], [ %257, %260 ], [ %257, %255 ]
  %277 = and i32 %275, 256
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %293, label %279

279:                                              ; preds = %274
  %280 = getelementptr %struct.r8a66597, ptr %3, i32 0, i32 8, i32 8, i32 0, i32 0, i32 1
  %281 = load volatile ptr, ptr %280, align 4
  %282 = icmp eq ptr %281, null
  br i1 %282, label %283, label %293

283:                                              ; preds = %279
  %284 = getelementptr %struct.r8a66597, ptr %3, i32 0, i32 6, i32 8
  %285 = load volatile ptr, ptr %284, align 4
  %286 = icmp eq ptr %285, %284
  %287 = getelementptr i8, ptr %285, i32 -8
  %288 = icmp eq ptr %287, null
  %289 = or i1 %286, %288
  br i1 %289, label %290, label %24

290:                                              ; preds = %283
  %291 = and i16 %276, -257
  store i16 %291, ptr %5, align 2
  %292 = zext i16 %291 to i32
  br label %293

293:                                              ; preds = %290, %279, %274
  %294 = phi i32 [ %292, %290 ], [ %275, %279 ], [ %275, %274 ]
  %295 = phi i16 [ %291, %290 ], [ %276, %279 ], [ %276, %274 ]
  %296 = and i32 %294, 512
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %311, label %298

298:                                              ; preds = %293
  %299 = getelementptr %struct.r8a66597, ptr %3, i32 0, i32 8, i32 9, i32 0, i32 0, i32 1
  %300 = load volatile ptr, ptr %299, align 4
  %301 = icmp eq ptr %300, null
  br i1 %301, label %302, label %311

302:                                              ; preds = %298
  %303 = getelementptr %struct.r8a66597, ptr %3, i32 0, i32 6, i32 9
  %304 = load volatile ptr, ptr %303, align 4
  %305 = icmp eq ptr %304, %303
  %306 = getelementptr i8, ptr %304, i32 -8
  %307 = icmp eq ptr %306, null
  %308 = or i1 %305, %307
  br i1 %308, label %309, label %24

309:                                              ; preds = %302
  %310 = and i16 %295, -513
  store i16 %310, ptr %5, align 2
  br label %311

311:                                              ; preds = %309, %298, %293, %124, %114, %107, %104, %51, %43, %36
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @r8a66597_interval_timer(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 20
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #12
  %5 = getelementptr inbounds %struct.r8a66597, ptr %3, i32 0, i32 11
  br label %6

6:                                                ; preds = %26, %1
  %7 = phi i32 [ 0, %1 ], [ %27, %26 ]
  %8 = load i16, ptr %5, align 4
  %9 = zext i16 %8 to i32
  %10 = shl nuw i32 1, %7
  %11 = and i32 %10, %9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %6
  %14 = getelementptr %struct.r8a66597, ptr %3, i32 0, i32 8, i32 %7, i32 1, i32 0, i32 1
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = getelementptr %struct.r8a66597, ptr %3, i32 0, i32 6, i32 %7
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  %21 = getelementptr i8, ptr %19, i32 -8
  %22 = icmp eq ptr %21, null
  %23 = or i1 %20, %22
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = tail call fastcc i32 @start_transfer(ptr noundef %3, ptr noundef nonnull %21)
  br label %26

26:                                               ; preds = %24, %17, %13, %6
  %27 = add nuw nsw i32 %7, 1
  %28 = icmp eq i32 %27, 10
  br i1 %28, label %29, label %6

29:                                               ; preds = %26
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @r8a66597_irq(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  tail call void @_raw_spin_lock(ptr noundef %2) #12
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 64
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %5) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 66
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %8) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 68
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %11) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr i8, ptr %13, i32 48
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %14) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr i8, ptr %16, i32 50
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %17) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr i8, ptr %19, i32 52
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %20) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %22 = and i16 %21, %12
  %23 = and i16 %18, %9
  %24 = and i16 %6, 1792
  %25 = and i16 %24, %15
  %26 = icmp eq i16 %22, 0
  br i1 %26, label %77, label %27

27:                                               ; preds = %1
  %28 = zext i16 %22 to i32
  %29 = and i32 %28, 2048
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %53, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %3, align 4
  %33 = getelementptr i8, ptr %32, i32 68
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %33, i16 -2049) #12, !srcloc !12
  %34 = load ptr, ptr %3, align 4
  %35 = getelementptr i8, ptr %34, i32 52
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %35) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %37 = and i16 %36, -2049
  %38 = load ptr, ptr %3, align 4
  %39 = getelementptr i8, ptr %38, i32 52
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %39, i16 %37) #12, !srcloc !12
  %40 = getelementptr %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 14
  %41 = load ptr, ptr %3, align 4
  %42 = getelementptr i8, ptr %41, i32 6
  %43 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %42) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %44 = and i16 %43, 3
  %45 = getelementptr %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 15
  store i16 %44, ptr %45, align 4
  %46 = getelementptr %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 16
  store i32 5, ptr %46, align 4
  %47 = load i32, ptr %40, align 4
  %48 = or i32 %47, 65537
  store i32 %48, ptr %40, align 4
  %49 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 1, i32 1
  %50 = load volatile i32, ptr @jiffies, align 64
  %51 = add i32 %50, 1
  %52 = tail call i32 @mod_timer(ptr noundef %49, i32 noundef %51) #12
  br label %53

53:                                               ; preds = %31, %27
  %54 = and i32 %28, 4096
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr %3, align 4
  %58 = getelementptr i8, ptr %57, i32 68
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %58, i16 -4097) #12, !srcloc !12
  %59 = load ptr, ptr %3, align 4
  %60 = getelementptr i8, ptr %59, i32 52
  %61 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %60) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %62 = and i16 %61, -4097
  %63 = load ptr, ptr %3, align 4
  %64 = getelementptr i8, ptr %63, i32 52
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %64, i16 %62) #12, !srcloc !12
  tail call fastcc void @r8a66597_usb_disconnect(ptr noundef %2, i32 noundef 1)
  br label %65

65:                                               ; preds = %56, %53
  %66 = and i32 %28, 16384
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %3, align 4
  %70 = getelementptr i8, ptr %69, i32 68
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %70, i16 -16385) #12, !srcloc !12
  %71 = load ptr, ptr %3, align 4
  %72 = getelementptr i8, ptr %71, i32 52
  %73 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %72) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %74 = and i16 %73, -16385
  %75 = load ptr, ptr %3, align 4
  %76 = getelementptr i8, ptr %75, i32 52
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %76, i16 %74) #12, !srcloc !12
  tail call void @usb_hcd_resume_root_hub(ptr noundef %0) #12
  br label %77

77:                                               ; preds = %68, %65, %1
  %78 = icmp eq i16 %23, 0
  br i1 %78, label %159, label %79

79:                                               ; preds = %77
  %80 = zext i16 %23 to i32
  %81 = and i32 %80, 2048
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %105, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %3, align 4
  %85 = getelementptr i8, ptr %84, i32 66
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %85, i16 -2049) #12, !srcloc !12
  %86 = load ptr, ptr %3, align 4
  %87 = getelementptr i8, ptr %86, i32 50
  %88 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %87) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %89 = and i16 %88, -2049
  %90 = load ptr, ptr %3, align 4
  %91 = getelementptr i8, ptr %90, i32 50
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %91, i16 %89) #12, !srcloc !12
  %92 = getelementptr %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 10, i32 0, i32 3
  %93 = load ptr, ptr %3, align 4
  %94 = getelementptr i8, ptr %93, i32 4
  %95 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %94) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %96 = and i16 %95, 3
  %97 = getelementptr %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 11
  store i16 %96, ptr %97, align 4
  %98 = getelementptr %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 12
  store i32 5, ptr %98, align 4
  %99 = load i32, ptr %92, align 4
  %100 = or i32 %99, 65537
  store i32 %100, ptr %92, align 4
  %101 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 1, i32 1
  %102 = load volatile i32, ptr @jiffies, align 64
  %103 = add i32 %102, 1
  %104 = tail call i32 @mod_timer(ptr noundef %101, i32 noundef %103) #12
  br label %105

105:                                              ; preds = %83, %79
  %106 = and i32 %80, 4096
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %117, label %108

108:                                              ; preds = %105
  %109 = load ptr, ptr %3, align 4
  %110 = getelementptr i8, ptr %109, i32 66
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %110, i16 -4097) #12, !srcloc !12
  %111 = load ptr, ptr %3, align 4
  %112 = getelementptr i8, ptr %111, i32 50
  %113 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %112) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %114 = and i16 %113, -4097
  %115 = load ptr, ptr %3, align 4
  %116 = getelementptr i8, ptr %115, i32 50
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %116, i16 %114) #12, !srcloc !12
  tail call fastcc void @r8a66597_usb_disconnect(ptr noundef %2, i32 noundef 0)
  br label %117

117:                                              ; preds = %108, %105
  %118 = and i32 %80, 16384
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %117
  %121 = load ptr, ptr %3, align 4
  %122 = getelementptr i8, ptr %121, i32 66
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %122, i16 -16385) #12, !srcloc !12
  %123 = load ptr, ptr %3, align 4
  %124 = getelementptr i8, ptr %123, i32 50
  %125 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %124) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %126 = and i16 %125, -16385
  %127 = load ptr, ptr %3, align 4
  %128 = getelementptr i8, ptr %127, i32 50
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %128, i16 %126) #12, !srcloc !12
  tail call void @usb_hcd_resume_root_hub(ptr noundef %0) #12
  br label %129

129:                                              ; preds = %120, %117
  %130 = and i32 %80, 32
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %153, label %132

132:                                              ; preds = %129
  %133 = load ptr, ptr %3, align 4
  %134 = getelementptr i8, ptr %133, i32 66
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %134, i16 -33) #12, !srcloc !12
  %135 = getelementptr %struct.usb_hcd, ptr %0, i32 1, i32 2
  %136 = load volatile ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, %135
  %138 = getelementptr i8, ptr %136, i32 -8
  %139 = icmp eq ptr %138, null
  %140 = or i1 %137, %139
  br i1 %140, label %151, label %141

141:                                              ; preds = %132
  %142 = load ptr, ptr %138, align 4
  %143 = getelementptr inbounds %struct.r8a66597_pipe, ptr %142, i32 0, i32 4
  %144 = load i32, ptr %143, align 4
  %145 = load ptr, ptr %3, align 4
  %146 = getelementptr i8, ptr %145, i32 %144
  %147 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %146) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %148 = and i16 %147, 3
  %149 = icmp eq i16 %148, 0
  %150 = select i1 %149, i32 -104, i32 -32
  br label %151

151:                                              ; preds = %141, %132
  %152 = phi i32 [ %150, %141 ], [ 0, %132 ]
  tail call fastcc void @check_next_phase(ptr noundef %2, i32 noundef %152)
  br label %153

153:                                              ; preds = %151, %129
  %154 = and i32 %80, 16
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %153
  %157 = load ptr, ptr %3, align 4
  %158 = getelementptr i8, ptr %157, i32 66
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %158, i16 -17) #12, !srcloc !12
  tail call fastcc void @check_next_phase(ptr noundef %2, i32 noundef 0)
  br label %159

159:                                              ; preds = %156, %153, %77
  %160 = icmp eq i16 %25, 0
  br i1 %160, label %443, label %161

161:                                              ; preds = %159
  %162 = zext i16 %25 to i32
  %163 = and i32 %162, 256
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %216, label %165

165:                                              ; preds = %161
  %166 = load ptr, ptr %3, align 4
  %167 = getelementptr i8, ptr %166, i32 70
  %168 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %167) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %169 = load ptr, ptr %3, align 4
  %170 = getelementptr i8, ptr %169, i32 54
  %171 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %170) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %172 = and i16 %171, %168
  %173 = zext i16 %172 to i32
  %174 = xor i16 %172, -1
  %175 = load ptr, ptr %3, align 4
  %176 = getelementptr i8, ptr %175, i32 70
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %176, i16 %174) #12, !srcloc !12
  %177 = and i32 %173, 1
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %193, label %179

179:                                              ; preds = %165
  %180 = getelementptr %struct.usb_hcd, ptr %0, i32 1, i32 2
  %181 = load volatile ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, %180
  %183 = getelementptr i8, ptr %181, i32 -8
  %184 = icmp eq ptr %183, null
  %185 = or i1 %182, %184
  br i1 %185, label %191, label %186

186:                                              ; preds = %179
  %187 = getelementptr i8, ptr %181, i32 8
  %188 = load i16, ptr %187, align 4
  %189 = icmp eq i16 %188, 105
  br i1 %189, label %190, label %191

190:                                              ; preds = %186
  tail call fastcc void @packet_read(ptr noundef %2, i16 noundef zeroext 0) #12
  br label %192

191:                                              ; preds = %186, %179
  tail call fastcc void @pipe_irq_disable(ptr noundef %2, i16 noundef zeroext 0) #12
  br label %192

192:                                              ; preds = %191, %190
  tail call fastcc void @check_next_phase(ptr noundef %2, i32 noundef 0) #12
  br label %193

193:                                              ; preds = %192, %165
  br label %194

194:                                              ; preds = %213, %193
  %195 = phi i32 [ %214, %213 ], [ 1, %193 ]
  %196 = shl nuw nsw i32 1, %195
  %197 = and i32 %196, %173
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %213, label %199

199:                                              ; preds = %194
  %200 = getelementptr %struct.r8a66597, ptr %2, i32 0, i32 6, i32 %195
  %201 = load volatile ptr, ptr %200, align 4
  %202 = icmp eq ptr %201, %200
  %203 = getelementptr i8, ptr %201, i32 -8
  %204 = icmp eq ptr %203, null
  %205 = or i1 %202, %204
  br i1 %205, label %213, label %206, !prof !17

206:                                              ; preds = %199
  %207 = getelementptr i8, ptr %201, i32 8
  %208 = load i16, ptr %207, align 4
  switch i16 %208, label %213 [
    i16 105, label %209
    i16 225, label %211
  ]

209:                                              ; preds = %206
  %210 = trunc i32 %195 to i16
  tail call fastcc void @packet_read(ptr noundef %2, i16 noundef zeroext %210) #12
  br label %213

211:                                              ; preds = %206
  %212 = trunc i32 %195 to i16
  tail call fastcc void @packet_write(ptr noundef %2, i16 noundef zeroext %212) #12
  br label %213

213:                                              ; preds = %211, %209, %206, %199, %194
  %214 = add nuw nsw i32 %195, 1
  %215 = icmp eq i32 %214, 10
  br i1 %215, label %216, label %194

216:                                              ; preds = %213, %161
  %217 = and i32 %162, 1024
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %340, label %219

219:                                              ; preds = %216
  %220 = load ptr, ptr %3, align 4
  %221 = getelementptr i8, ptr %220, i32 74
  %222 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %221) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %223 = load ptr, ptr %3, align 4
  %224 = getelementptr i8, ptr %223, i32 58
  %225 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %224) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %226 = and i16 %225, %222
  %227 = zext i16 %226 to i32
  %228 = xor i16 %226, -1
  %229 = load ptr, ptr %3, align 4
  %230 = getelementptr i8, ptr %229, i32 74
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %230, i16 %228) #12, !srcloc !12
  %231 = and i32 %227, 1
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %292, label %233

233:                                              ; preds = %219
  %234 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 3
  %235 = load ptr, ptr %234, align 4
  %236 = getelementptr inbounds %struct.r8a66597_platdata, ptr %235, i32 0, i32 2
  %237 = load i8, ptr %236, align 2
  %238 = and i8 %237, 1
  %239 = icmp eq i8 %238, 0
  %240 = select i1 %239, i16 1024, i16 2048
  %241 = load ptr, ptr %3, align 4
  %242 = getelementptr i8, ptr %241, i32 32
  %243 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %242) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %244 = xor i16 %240, -16
  %245 = and i16 %244, %243
  %246 = or i16 %245, %240
  %247 = load ptr, ptr %3, align 4
  %248 = getelementptr i8, ptr %247, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %248, i16 %246) #12, !srcloc !12
  br label %249

249:                                              ; preds = %257, %233
  %250 = phi i32 [ 0, %233 ], [ %258, %257 ]
  %251 = load ptr, ptr %3, align 4
  %252 = getelementptr i8, ptr %251, i32 32
  %253 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %252) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %254 = icmp eq i32 %250, 1000001
  br i1 %254, label %255, label %257

255:                                              ; preds = %249
  %256 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 32, i32 noundef 0) #13
  br label %262

257:                                              ; preds = %249
  %258 = add nuw nsw i32 %250, 1
  %259 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %259(i32 noundef 214748) #12
  %260 = and i16 %253, 15
  %261 = icmp eq i16 %260, 0
  br i1 %261, label %262, label %249

262:                                              ; preds = %257, %255
  %263 = getelementptr %struct.usb_hcd, ptr %0, i32 1, i32 2
  %264 = load volatile ptr, ptr %263, align 4
  %265 = icmp eq ptr %264, %263
  %266 = getelementptr i8, ptr %264, i32 -8
  %267 = icmp eq ptr %266, null
  %268 = or i1 %265, %267
  br i1 %268, label %291, label %269

269:                                              ; preds = %262
  %270 = getelementptr i8, ptr %264, i32 8
  %271 = load i16, ptr %270, align 4
  %272 = icmp eq i16 %271, 225
  br i1 %272, label %291, label %273

273:                                              ; preds = %269
  %274 = load ptr, ptr %3, align 4
  %275 = getelementptr i8, ptr %274, i32 48
  %276 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %275) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %277 = load ptr, ptr %3, align 4
  %278 = getelementptr i8, ptr %277, i32 48
  %279 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %278) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %280 = and i16 %279, -1793
  %281 = load ptr, ptr %3, align 4
  %282 = getelementptr i8, ptr %281, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %282, i16 %280) #12, !srcloc !12
  %283 = load ptr, ptr %3, align 4
  %284 = getelementptr i8, ptr %283, i32 58
  %285 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %284) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %286 = and i16 %285, -2
  %287 = load ptr, ptr %3, align 4
  %288 = getelementptr i8, ptr %287, i32 58
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %288, i16 %286) #12, !srcloc !12
  %289 = load ptr, ptr %3, align 4
  %290 = getelementptr i8, ptr %289, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %290, i16 %276) #12, !srcloc !12
  br label %291

291:                                              ; preds = %273, %269, %262
  tail call fastcc void @check_next_phase(ptr noundef %2, i32 noundef 0) #12
  br label %292

292:                                              ; preds = %291, %219
  br label %293

293:                                              ; preds = %337, %292
  %294 = phi i32 [ %338, %337 ], [ 1, %292 ]
  %295 = shl nuw nsw i32 1, %294
  %296 = and i32 %295, %227
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %337, label %298

298:                                              ; preds = %293
  %299 = getelementptr %struct.r8a66597, ptr %2, i32 0, i32 6, i32 %294
  %300 = load volatile ptr, ptr %299, align 4
  %301 = icmp eq ptr %300, %299
  %302 = getelementptr i8, ptr %300, i32 -8
  %303 = icmp eq ptr %302, null
  %304 = or i1 %301, %303
  br i1 %304, label %337, label %305, !prof !17

305:                                              ; preds = %298
  %306 = load ptr, ptr %302, align 4
  %307 = getelementptr inbounds %struct.r8a66597_pipe, ptr %306, i32 0, i32 4
  %308 = load i32, ptr %307, align 4
  %309 = load ptr, ptr %3, align 4
  %310 = getelementptr i8, ptr %309, i32 %308
  %311 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %310) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %312 = and i16 %311, 16384
  %313 = icmp eq i16 %312, 0
  br i1 %313, label %314, label %337

314:                                              ; preds = %305
  %315 = load ptr, ptr %3, align 4
  %316 = getelementptr i8, ptr %315, i32 48
  %317 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %316) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %318 = load ptr, ptr %3, align 4
  %319 = getelementptr i8, ptr %318, i32 48
  %320 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %319) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %321 = and i16 %320, -1793
  %322 = load ptr, ptr %3, align 4
  %323 = getelementptr i8, ptr %322, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %323, i16 %321) #12, !srcloc !12
  %324 = trunc i32 %295 to i16
  %325 = load ptr, ptr %3, align 4
  %326 = getelementptr i8, ptr %325, i32 58
  %327 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %326) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %328 = xor i16 %324, -1
  %329 = and i16 %327, %328
  %330 = load ptr, ptr %3, align 4
  %331 = getelementptr i8, ptr %330, i32 58
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %331, i16 %329) #12, !srcloc !12
  %332 = load ptr, ptr %3, align 4
  %333 = getelementptr i8, ptr %332, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %333, i16 %317) #12, !srcloc !12
  %334 = trunc i32 %294 to i16
  tail call fastcc void @pipe_irq_disable(ptr noundef %2, i16 noundef zeroext %334) #12
  %335 = getelementptr i8, ptr %300, i32 -4
  %336 = load ptr, ptr %335, align 4
  tail call fastcc void @finish_request(ptr noundef %2, ptr noundef nonnull %302, i16 noundef zeroext %334, ptr noundef %336, i32 noundef 0) #12
  br label %337

337:                                              ; preds = %314, %305, %298, %293
  %338 = add nuw nsw i32 %294, 1
  %339 = icmp eq i32 %338, 10
  br i1 %339, label %340, label %293

340:                                              ; preds = %337, %216
  %341 = and i32 %162, 512
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %443, label %343

343:                                              ; preds = %340
  %344 = load ptr, ptr %3, align 4
  %345 = getelementptr i8, ptr %344, i32 72
  %346 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %345) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %347 = load ptr, ptr %3, align 4
  %348 = getelementptr i8, ptr %347, i32 56
  %349 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %348) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %350 = and i16 %349, %346
  %351 = zext i16 %350 to i32
  %352 = xor i16 %350, -1
  %353 = load ptr, ptr %3, align 4
  %354 = getelementptr i8, ptr %353, i32 72
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %354, i16 %352) #12, !srcloc !12
  %355 = and i32 %351, 1
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %405, label %357

357:                                              ; preds = %343
  %358 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 3
  %359 = load ptr, ptr %358, align 4
  %360 = getelementptr inbounds %struct.r8a66597_platdata, ptr %359, i32 0, i32 2
  %361 = load i8, ptr %360, align 2
  %362 = and i8 %361, 1
  %363 = icmp eq i8 %362, 0
  %364 = select i1 %363, i16 1024, i16 2048
  %365 = load ptr, ptr %3, align 4
  %366 = getelementptr i8, ptr %365, i32 32
  %367 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %366) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %368 = xor i16 %364, -16
  %369 = and i16 %368, %367
  %370 = or i16 %369, %364
  %371 = load ptr, ptr %3, align 4
  %372 = getelementptr i8, ptr %371, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %372, i16 %370) #12, !srcloc !12
  br label %373

373:                                              ; preds = %381, %357
  %374 = phi i32 [ 0, %357 ], [ %382, %381 ]
  %375 = load ptr, ptr %3, align 4
  %376 = getelementptr i8, ptr %375, i32 32
  %377 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %376) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %378 = icmp eq i32 %374, 1000001
  br i1 %378, label %379, label %381

379:                                              ; preds = %373
  %380 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 32, i32 noundef 0) #13
  br label %386

381:                                              ; preds = %373
  %382 = add nuw nsw i32 %374, 1
  %383 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %383(i32 noundef 214748) #12
  %384 = and i16 %377, 15
  %385 = icmp eq i16 %384, 0
  br i1 %385, label %386, label %373

386:                                              ; preds = %381, %379
  %387 = getelementptr %struct.usb_hcd, ptr %0, i32 1, i32 2
  %388 = load volatile ptr, ptr %387, align 4
  %389 = icmp eq ptr %388, %387
  %390 = getelementptr i8, ptr %388, i32 -8
  %391 = icmp eq ptr %390, null
  %392 = or i1 %389, %391
  br i1 %392, label %403, label %393

393:                                              ; preds = %386
  %394 = load ptr, ptr %390, align 4
  %395 = getelementptr inbounds %struct.r8a66597_pipe, ptr %394, i32 0, i32 4
  %396 = load i32, ptr %395, align 4
  %397 = load ptr, ptr %3, align 4
  %398 = getelementptr i8, ptr %397, i32 %396
  %399 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %398) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %400 = and i16 %399, 3
  %401 = icmp eq i16 %400, 0
  %402 = select i1 %401, i32 -104, i32 -32
  br label %403

403:                                              ; preds = %393, %386
  %404 = phi i32 [ %402, %393 ], [ 0, %386 ]
  tail call fastcc void @pipe_irq_disable(ptr noundef %2, i16 noundef zeroext 0) #12
  tail call fastcc void @check_next_phase(ptr noundef %2, i32 noundef %404) #12
  br label %405

405:                                              ; preds = %403, %343
  br label %406

406:                                              ; preds = %440, %405
  %407 = phi i32 [ %441, %440 ], [ 1, %405 ]
  %408 = shl nuw nsw i32 1, %407
  %409 = and i32 %408, %351
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %440, label %411

411:                                              ; preds = %406
  %412 = getelementptr %struct.r8a66597, ptr %2, i32 0, i32 6, i32 %407
  %413 = load volatile ptr, ptr %412, align 4
  %414 = icmp eq ptr %413, %412
  %415 = getelementptr i8, ptr %413, i32 -8
  %416 = icmp eq ptr %415, null
  %417 = or i1 %414, %416
  br i1 %417, label %440, label %418, !prof !17

418:                                              ; preds = %411
  %419 = load volatile ptr, ptr %412, align 4
  %420 = icmp eq ptr %419, %412
  %421 = getelementptr i8, ptr %419, i32 -8
  %422 = icmp eq ptr %421, null
  %423 = or i1 %420, %422
  br i1 %423, label %434, label %424

424:                                              ; preds = %418
  %425 = load ptr, ptr %421, align 4
  %426 = getelementptr inbounds %struct.r8a66597_pipe, ptr %425, i32 0, i32 4
  %427 = load i32, ptr %426, align 4
  %428 = load ptr, ptr %3, align 4
  %429 = getelementptr i8, ptr %428, i32 %427
  %430 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %429) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %431 = and i16 %430, 3
  %432 = icmp eq i16 %431, 0
  %433 = select i1 %432, i32 -104, i32 -32
  br label %434

434:                                              ; preds = %424, %418
  %435 = phi i32 [ %433, %424 ], [ 0, %418 ]
  %436 = trunc i32 %407 to i16
  tail call fastcc void @pipe_irq_disable(ptr noundef %2, i16 noundef zeroext %436) #12
  %437 = load ptr, ptr %415, align 4
  tail call fastcc void @pipe_stop(ptr noundef %2, ptr noundef %437) #12
  %438 = getelementptr i8, ptr %413, i32 -4
  %439 = load ptr, ptr %438, align 4
  tail call fastcc void @finish_request(ptr noundef %2, ptr noundef nonnull %415, i16 noundef zeroext %436, ptr noundef %439, i32 noundef %435) #12
  br label %440

440:                                              ; preds = %434, %411, %406
  %441 = add nuw nsw i32 %407, 1
  %442 = icmp eq i32 %441, 10
  br i1 %442, label %443, label %406

443:                                              ; preds = %440, %340, %159
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  %444 = load i16, ptr %2, align 4
  %445 = add i16 %444, 1
  store i16 %445, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @r8a66597_start(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 27
  store i32 1, ptr %3, align 8
  %4 = tail call fastcc i32 @enable_controller(ptr noundef %2)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @r8a66597_stop(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  tail call fastcc void @disable_controller(ptr noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @r8a66597_get_frame(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 76
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %4) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %6 = and i16 %5, 1023
  %7 = zext i16 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @r8a66597_urb_enqueue(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca [10 x i16], align 2
  %5 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #12
  %9 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 32512
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 4
  br label %20

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 15, i32 8
  %19 = load ptr, ptr %18, align 8
  br label %20

20:                                               ; preds = %15, %13
  %21 = phi ptr [ %14, %13 ], [ %19, %15 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %618, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @usb_hcd_link_urb_to_ep(ptr noundef %0, ptr noundef %1) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %618

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.usb_host_endpoint, ptr %6, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %405

30:                                               ; preds = %26
  %31 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %32 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 2848, i32 noundef 48) #14
  store ptr %32, ptr %27, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %616, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %32, i32 0, i32 1
  %36 = load i16, ptr %35, align 4
  %37 = getelementptr inbounds %struct.r8a66597_pipe, ptr %32, i32 0, i32 1
  store i32 20, ptr %37, align 8
  %38 = getelementptr inbounds %struct.r8a66597_pipe, ptr %32, i32 0, i32 2
  store i32 32, ptr %38, align 4
  %39 = getelementptr inbounds %struct.r8a66597_pipe, ptr %32, i32 0, i32 3
  store i32 34, ptr %39, align 8
  %40 = zext i16 %36 to i32
  %41 = icmp eq i16 %36, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.r8a66597_pipe, ptr %32, i32 0, i32 4
  store i32 96, ptr %43, align 4
  br label %55

44:                                               ; preds = %34
  %45 = shl nuw nsw i32 %40, 1
  %46 = add nuw nsw i32 %45, 110
  %47 = getelementptr inbounds %struct.r8a66597_pipe, ptr %32, i32 0, i32 4
  store i32 %46, ptr %47, align 4
  %48 = add i16 %36, -1
  %49 = icmp ult i16 %48, 5
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = shl nuw nsw i32 %40, 2
  %52 = add nuw nsw i32 %51, 140
  %53 = getelementptr inbounds %struct.r8a66597_pipe, ptr %32, i32 0, i32 5
  store i32 %52, ptr %53, align 8
  %54 = add nuw nsw i32 %51, 142
  br label %57

55:                                               ; preds = %44, %42
  %56 = getelementptr inbounds %struct.r8a66597_pipe, ptr %32, i32 0, i32 5
  store i32 0, ptr %56, align 8
  br label %57

57:                                               ; preds = %55, %50
  %58 = phi i32 [ 0, %55 ], [ %54, %50 ]
  %59 = getelementptr inbounds %struct.r8a66597_pipe, ptr %32, i32 0, i32 6
  store i32 %58, ptr %59, align 4
  %60 = load i32, ptr %9, align 4
  %61 = and i32 %60, 491520
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %405, label %63

63:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #12
  %64 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %6, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %4, i8 0, i64 20, i1 false) #12
  %65 = load i8, ptr %64, align 1
  %66 = and i8 %65, 3
  %67 = zext i8 %66 to i32
  switch i32 %67, label %84 [
    i32 2, label %68
    i32 3, label %73
    i32 1, label %79
  ]

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %6, i32 0, i32 2
  %70 = load i8, ptr %69, align 1
  %71 = icmp sgt i8 %70, -1
  br i1 %71, label %72, label %110

72:                                               ; preds = %68
  store i16 3, ptr %4, align 2
  br label %87

73:                                               ; preds = %63
  %74 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %6, i32 0, i32 2
  %75 = load i8, ptr %74, align 1
  %76 = icmp sgt i8 %75, -1
  br i1 %76, label %110, label %77

77:                                               ; preds = %73
  store i16 6, ptr %4, align 2
  %78 = getelementptr inbounds [10 x i16], ptr %4, i32 0, i32 1
  store i16 7, ptr %78, align 2
  br label %87

79:                                               ; preds = %63
  %80 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %6, i32 0, i32 2
  %81 = load i8, ptr %80, align 1
  %82 = icmp sgt i8 %81, -1
  %83 = select i1 %82, i16 1, i16 2
  br label %110

84:                                               ; preds = %63
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #13
  %86 = load i32, ptr %9, align 4
  br label %110

87:                                               ; preds = %77, %72
  %88 = phi i32 [ 1, %72 ], [ 2, %77 ]
  %89 = phi i16 [ 5, %72 ], [ 8, %77 ]
  %90 = phi i16 [ 5, %72 ], [ 7, %77 ]
  %91 = phi i16 [ 3, %72 ], [ 6, %77 ]
  %92 = getelementptr inbounds [10 x i16], ptr %4, i32 0, i32 %88
  store i16 %89, ptr %92, align 2
  br label %93

93:                                               ; preds = %93, %87
  %94 = phi i16 [ %90, %87 ], [ %108, %93 ]
  %95 = phi i16 [ %91, %87 ], [ %104, %93 ]
  %96 = phi i16 [ 1, %87 ], [ %105, %93 ]
  %97 = zext i16 %94 to i32
  %98 = zext i16 %95 to i32
  %99 = getelementptr %struct.r8a66597, ptr %7, i32 0, i32 12, i32 %98
  %100 = load i8, ptr %99, align 1
  %101 = getelementptr %struct.r8a66597, ptr %7, i32 0, i32 12, i32 %97
  %102 = load i8, ptr %101, align 1
  %103 = icmp ugt i8 %100, %102
  %104 = select i1 %103, i16 %94, i16 %95
  %105 = add i16 %96, 1
  %106 = zext i16 %105 to i32
  %107 = getelementptr [10 x i16], ptr %4, i32 0, i32 %106
  %108 = load i16, ptr %107, align 2
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %110, label %93

110:                                              ; preds = %93, %84, %79, %73, %68
  %111 = phi i32 [ %86, %84 ], [ %60, %68 ], [ %60, %73 ], [ %60, %79 ], [ %60, %93 ]
  %112 = phi i16 [ 0, %84 ], [ 4, %68 ], [ 9, %73 ], [ %83, %79 ], [ %104, %93 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #12
  %113 = and i32 %111, 32512
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.usb_device, ptr %117, i32 0, i32 15, i32 8
  %119 = load ptr, ptr %118, align 8
  %120 = load i16, ptr %119, align 4
  br label %121

121:                                              ; preds = %115, %110
  %122 = phi i16 [ %120, %115 ], [ 0, %110 ]
  %123 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %6, i32 0, i32 2
  %124 = load i8, ptr %123, align 1
  %125 = and i8 %124, 15
  %126 = zext i8 %125 to i16
  %127 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %6, i32 0, i32 4
  %128 = load i16, ptr %127, align 1
  %129 = and i16 %128, 2047
  %130 = load i8, ptr %64, align 1
  %131 = trunc i8 %130 to i2
  switch i2 %131, label %134 [
    i2 -2, label %136
    i2 -1, label %132
    i2 1, label %133
  ]

132:                                              ; preds = %121
  br label %136

133:                                              ; preds = %121
  br label %136

134:                                              ; preds = %121
  %135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #13
  br label %136

136:                                              ; preds = %134, %133, %132, %121
  %137 = phi i1 [ true, %121 ], [ false, %132 ], [ false, %133 ], [ false, %134 ]
  %138 = phi i16 [ 16384, %121 ], [ -32768, %132 ], [ -16384, %133 ], [ 0, %134 ]
  %139 = zext i16 %112 to i32
  %140 = icmp eq i16 %112, 0
  br i1 %140, label %153, label %141

141:                                              ; preds = %136
  %142 = icmp ult i16 %112, 6
  br i1 %142, label %147, label %143

143:                                              ; preds = %141
  %144 = icmp ult i16 %112, 10
  br i1 %144, label %145, label %150

145:                                              ; preds = %143
  %146 = add nsw i16 %112, -2
  br label %153

147:                                              ; preds = %141
  %148 = shl nuw nsw i16 %112, 4
  %149 = add nsw i16 %148, -8
  br label %153

150:                                              ; preds = %143
  %151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %139) #13
  %152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %139) #13
  br label %153

153:                                              ; preds = %150, %147, %145, %136
  %154 = phi i16 [ 0, %150 ], [ %149, %147 ], [ 0, %136 ], [ %146, %145 ]
  %155 = phi i16 [ 0, %150 ], [ 7, %147 ], [ 3, %136 ], [ 0, %145 ]
  br i1 %137, label %215, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %6, i32 0, i32 5
  %158 = load i8, ptr %157, align 1
  %159 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr inbounds %struct.usb_device, ptr %160, i32 0, i32 4
  %162 = load i32, ptr %161, align 4
  %163 = icmp eq i32 %162, 3
  br i1 %163, label %164, label %171

164:                                              ; preds = %156
  %165 = icmp ugt i8 %158, 7
  br i1 %165, label %192, label %166

166:                                              ; preds = %164
  %167 = zext i8 %158 to i16
  %168 = icmp eq i8 %158, 0
  %169 = add nsw i16 %167, -1
  %170 = select i1 %168, i16 0, i16 %169
  br label %192

171:                                              ; preds = %156
  %172 = icmp ugt i8 %158, -128
  br i1 %172, label %192, label %173

173:                                              ; preds = %171
  %174 = icmp eq i8 %158, 3
  %175 = select i1 %174, i16 2, i16 1
  %176 = add i8 %158, -5
  %177 = icmp ult i8 %176, 3
  %178 = select i1 %177, i16 4, i16 %175
  %179 = add i8 %158, -9
  %180 = icmp ult i8 %179, 7
  %181 = select i1 %180, i16 8, i16 %178
  %182 = add i8 %158, -17
  %183 = icmp ult i8 %182, 15
  %184 = select i1 %183, i16 16, i16 %181
  %185 = add i8 %158, -33
  %186 = icmp ult i8 %185, 31
  %187 = select i1 %186, i16 32, i16 %184
  %188 = icmp ugt i8 %158, 64
  %189 = icmp ne i8 %158, -128
  %190 = and i1 %188, %189
  %191 = select i1 %190, i16 64, i16 %187
  br label %192

192:                                              ; preds = %173, %171, %166, %164
  %193 = phi i16 [ %170, %166 ], [ 7, %164 ], [ 7, %171 ], [ %191, %173 ]
  %194 = load i32, ptr %9, align 4
  %195 = icmp ult i32 %194, 1073741824
  br i1 %195, label %215, label %196

196:                                              ; preds = %192
  switch i32 %162, label %202 [
    i32 1, label %213
    i32 2, label %213
    i32 3, label %197
  ]

197:                                              ; preds = %196
  %198 = icmp ugt i8 %158, 1
  br i1 %198, label %199, label %215

199:                                              ; preds = %197
  %200 = zext i8 %158 to i32
  %201 = add nsw i32 %200, -2
  br label %204

202:                                              ; preds = %196
  %203 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #13
  br label %213

204:                                              ; preds = %204, %199
  %205 = phi i32 [ 0, %199 ], [ %208, %204 ]
  %206 = phi i32 [ 1, %199 ], [ %207, %204 ]
  %207 = shl i32 %206, 1
  %208 = add nuw nsw i32 %205, 1
  %209 = icmp eq i32 %205, %201
  br i1 %209, label %210, label %204

210:                                              ; preds = %204
  %211 = mul i32 %206, 250
  %212 = udiv i32 %211, 1000
  br label %215

213:                                              ; preds = %202, %196, %196
  %214 = zext i8 %158 to i32
  br label %215

215:                                              ; preds = %213, %210, %197, %192, %153
  %216 = phi i16 [ 0, %153 ], [ %193, %192 ], [ %193, %197 ], [ %193, %210 ], [ %193, %213 ]
  %217 = phi i32 [ 0, %153 ], [ 0, %192 ], [ 0, %197 ], [ %212, %210 ], [ %214, %213 ]
  %218 = load i8, ptr %123, align 1
  %219 = lshr i8 %218, 7
  %220 = zext i8 %219 to i16
  %221 = load i32, ptr %9, align 4
  %222 = and i32 %221, 32512
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %215
  %225 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 4
  br label %231

226:                                              ; preds = %215
  %227 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %228 = load ptr, ptr %227, align 4
  %229 = getelementptr inbounds %struct.usb_device, ptr %228, i32 0, i32 15, i32 8
  %230 = load ptr, ptr %229, align 8
  br label %231

231:                                              ; preds = %226, %224
  %232 = phi ptr [ %225, %224 ], [ %230, %226 ]
  %233 = load ptr, ptr %27, align 4
  store i32 %217, ptr %233, align 4
  %234 = getelementptr inbounds i8, ptr %233, i32 4
  store i16 %112, ptr %234, align 4
  %235 = getelementptr inbounds i8, ptr %233, i32 6
  store i16 %122, ptr %235, align 2
  %236 = getelementptr inbounds i8, ptr %233, i32 8
  store i16 %126, ptr %236, align 4
  %237 = getelementptr inbounds i8, ptr %233, i32 10
  store i16 %129, ptr %237, align 2
  %238 = getelementptr inbounds i8, ptr %233, i32 12
  store i16 %138, ptr %238, align 4
  %239 = getelementptr inbounds i8, ptr %233, i32 14
  store i16 %154, ptr %239, align 2
  %240 = getelementptr inbounds i8, ptr %233, i32 16
  store i16 %155, ptr %240, align 4
  %241 = getelementptr inbounds i8, ptr %233, i32 18
  store i16 %216, ptr %241, align 2
  %242 = getelementptr inbounds i8, ptr %233, i32 20
  store i16 %220, ptr %242, align 4
  %243 = getelementptr inbounds i8, ptr %233, i32 22
  store i16 0, ptr %243, align 2
  %244 = getelementptr inbounds %struct.r8a66597_pipe, ptr %233, i32 0, i32 1
  store i32 20, ptr %244, align 4
  %245 = getelementptr inbounds %struct.r8a66597_pipe, ptr %233, i32 0, i32 2
  store i32 32, ptr %245, align 4
  %246 = getelementptr inbounds %struct.r8a66597_pipe, ptr %233, i32 0, i32 3
  store i32 34, ptr %246, align 4
  br i1 %140, label %247, label %249

247:                                              ; preds = %231
  %248 = getelementptr inbounds %struct.r8a66597_pipe, ptr %233, i32 0, i32 4
  store i32 96, ptr %248, align 4
  br label %260

249:                                              ; preds = %231
  %250 = shl nuw nsw i32 %139, 1
  %251 = add nuw nsw i32 %250, 110
  %252 = getelementptr inbounds %struct.r8a66597_pipe, ptr %233, i32 0, i32 4
  store i32 %251, ptr %252, align 4
  %253 = add i16 %112, -1
  %254 = icmp ult i16 %253, 5
  br i1 %254, label %255, label %260

255:                                              ; preds = %249
  %256 = shl nuw nsw i32 %139, 2
  %257 = add nuw nsw i32 %256, 140
  %258 = getelementptr inbounds %struct.r8a66597_pipe, ptr %233, i32 0, i32 5
  store i32 %257, ptr %258, align 4
  %259 = add nuw nsw i32 %256, 142
  br label %262

260:                                              ; preds = %249, %247
  %261 = getelementptr inbounds %struct.r8a66597_pipe, ptr %233, i32 0, i32 5
  store i32 0, ptr %261, align 4
  br label %262

262:                                              ; preds = %260, %255
  %263 = phi i32 [ 0, %260 ], [ %259, %255 ]
  %264 = getelementptr inbounds %struct.r8a66597_pipe, ptr %233, i32 0, i32 6
  store i32 %263, ptr %264, align 4
  %265 = getelementptr %struct.r8a66597, ptr %7, i32 0, i32 12, i32 %139
  %266 = load i8, ptr %265, align 1
  %267 = add i8 %266, 1
  store i8 %267, ptr %265, align 1
  %268 = load i16, ptr %234, align 4
  %269 = zext i16 %268 to i32
  %270 = getelementptr %struct.r8a66597_device, ptr %232, i32 0, i32 5, i32 %269
  %271 = load i8, ptr %270, align 1
  %272 = add i8 %271, 1
  store i8 %272, ptr %270, align 1
  %273 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 3
  %274 = load ptr, ptr %273, align 4
  %275 = getelementptr inbounds %struct.r8a66597_platdata, ptr %274, i32 0, i32 2
  %276 = load i8, ptr %275, align 2
  %277 = and i8 %276, 1
  %278 = icmp eq i8 %277, 0
  %279 = select i1 %278, i16 1024, i16 2048
  br i1 %278, label %280, label %405

280:                                              ; preds = %262
  %281 = load i16, ptr %234, align 4
  %282 = icmp eq i16 %281, 0
  br i1 %282, label %405, label %283

283:                                              ; preds = %280
  %284 = load i16, ptr %238, align 4
  %285 = icmp eq i16 %284, -32768
  br i1 %285, label %405, label %286

286:                                              ; preds = %283
  %287 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 21, i32 3, i32 3
  %288 = load i8, ptr %287, align 4
  %289 = zext i8 %288 to i32
  %290 = and i32 %289, 1
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %402

292:                                              ; preds = %402, %286
  %293 = phi i32 [ 0, %286 ], [ 1, %402 ]
  %294 = phi i8 [ 1, %286 ], [ 2, %402 ]
  %295 = getelementptr inbounds %struct.r8a66597_device, ptr %232, i32 0, i32 8
  %296 = load ptr, ptr %295, align 4
  %297 = getelementptr inbounds %struct.usb_device, ptr %296, i32 0, i32 15
  %298 = load i32, ptr %9, align 4
  %299 = lshr i32 %298, 8
  %300 = and i32 %299, 127
  %301 = load i16, ptr %242, align 4
  %302 = icmp eq i16 %301, 0
  %303 = load i16, ptr %236, align 4
  %304 = zext i16 %303 to i32
  %305 = add nuw nsw i32 %304, 128
  %306 = select i1 %302, i32 %304, i32 %305
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %297, ptr noundef nonnull @.str.18, i32 noundef %300, i32 noundef %306) #13
  %307 = load i8, ptr %287, align 4
  %308 = or i8 %307, %294
  store i8 %308, ptr %287, align 4
  %309 = getelementptr inbounds %struct.r8a66597_device, ptr %232, i32 0, i32 6
  %310 = load i8, ptr %309, align 4
  %311 = or i8 %310, %294
  store i8 %311, ptr %309, align 4
  %312 = load i16, ptr %234, align 4
  %313 = getelementptr [3 x i32], ptr @__const.set_pipe_reg_addr.fifoaddr, i32 0, i32 %293
  %314 = load i32, ptr %313, align 4
  store i32 %314, ptr %244, align 4
  %315 = getelementptr [3 x i32], ptr @__const.set_pipe_reg_addr.fifosel, i32 0, i32 %293
  %316 = load i32, ptr %315, align 4
  store i32 %316, ptr %245, align 4
  %317 = getelementptr [3 x i32], ptr @__const.set_pipe_reg_addr.fifoctr, i32 0, i32 %293
  %318 = load i32, ptr %317, align 4
  store i32 %318, ptr %246, align 4
  %319 = zext i16 %312 to i32
  %320 = icmp eq i16 %312, 0
  br i1 %320, label %321, label %323

321:                                              ; preds = %292
  %322 = getelementptr inbounds %struct.r8a66597_pipe, ptr %233, i32 0, i32 4
  store i32 96, ptr %322, align 4
  br label %334

323:                                              ; preds = %292
  %324 = shl nuw nsw i32 %319, 1
  %325 = add nuw nsw i32 %324, 110
  %326 = getelementptr inbounds %struct.r8a66597_pipe, ptr %233, i32 0, i32 4
  store i32 %325, ptr %326, align 4
  %327 = add i16 %312, -1
  %328 = icmp ult i16 %327, 5
  br i1 %328, label %329, label %334

329:                                              ; preds = %323
  %330 = shl nuw nsw i32 %319, 2
  %331 = add nuw nsw i32 %330, 140
  %332 = getelementptr inbounds %struct.r8a66597_pipe, ptr %233, i32 0, i32 5
  store i32 %331, ptr %332, align 4
  %333 = add nuw nsw i32 %330, 142
  br label %336

334:                                              ; preds = %323, %321
  %335 = getelementptr inbounds %struct.r8a66597_pipe, ptr %233, i32 0, i32 5
  store i32 0, ptr %335, align 4
  br label %336

336:                                              ; preds = %334, %329
  %337 = phi i32 [ 0, %334 ], [ %333, %329 ]
  store i32 %337, ptr %264, align 4
  %338 = load ptr, ptr %273, align 4
  %339 = getelementptr inbounds %struct.r8a66597_platdata, ptr %338, i32 0, i32 2
  %340 = load i8, ptr %339, align 2
  %341 = and i8 %340, 1
  %342 = icmp eq i8 %341, 0
  %343 = select i1 %342, i16 1024, i16 2048
  %344 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 1
  %345 = load ptr, ptr %344, align 4
  %346 = getelementptr i8, ptr %345, i32 32
  %347 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %346) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %348 = xor i16 %343, -16
  %349 = and i16 %348, %347
  %350 = or i16 %349, %343
  %351 = load ptr, ptr %344, align 4
  %352 = getelementptr i8, ptr %351, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %352, i16 %350) #12, !srcloc !12
  br label %353

353:                                              ; preds = %361, %336
  %354 = phi i32 [ 0, %336 ], [ %362, %361 ]
  %355 = load ptr, ptr %344, align 4
  %356 = getelementptr i8, ptr %355, i32 32
  %357 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %356) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %358 = icmp eq i32 %354, 1000001
  br i1 %358, label %359, label %361

359:                                              ; preds = %353
  %360 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 32, i32 noundef 0) #13
  br label %366

361:                                              ; preds = %353
  %362 = add nuw nsw i32 %354, 1
  %363 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %363(i32 noundef 214748) #12
  %364 = and i16 %357, 15
  %365 = icmp eq i16 %364, 0
  br i1 %365, label %366, label %353

366:                                              ; preds = %361, %359
  %367 = load i16, ptr %234, align 4
  %368 = or i16 %367, %279
  %369 = load i32, ptr %245, align 4
  %370 = load ptr, ptr %344, align 4
  %371 = getelementptr i8, ptr %370, i32 %369
  %372 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %371) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %373 = xor i16 %279, -16
  %374 = and i16 %372, %373
  %375 = or i16 %368, %374
  %376 = load ptr, ptr %344, align 4
  %377 = getelementptr i8, ptr %376, i32 %369
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %377, i16 %375) #12, !srcloc !12
  %378 = load i32, ptr %245, align 4
  %379 = load i16, ptr %234, align 4
  br label %380

380:                                              ; preds = %389, %366
  %381 = phi i32 [ 0, %366 ], [ %390, %389 ]
  %382 = load ptr, ptr %344, align 4
  %383 = getelementptr i8, ptr %382, i32 %378
  %384 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %383) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %385 = icmp eq i32 %381, 1000001
  br i1 %385, label %386, label %389

386:                                              ; preds = %380
  %387 = zext i16 %379 to i32
  %388 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %378, i32 noundef %387) #13
  br label %394

389:                                              ; preds = %380
  %390 = add nuw nsw i32 %381, 1
  %391 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %391(i32 noundef 214748) #12
  %392 = and i16 %384, 15
  %393 = icmp eq i16 %392, %379
  br i1 %393, label %394, label %380

394:                                              ; preds = %389, %386
  %395 = load i32, ptr %246, align 4
  %396 = load ptr, ptr %344, align 4
  %397 = getelementptr i8, ptr %396, i32 %395
  %398 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %397) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %399 = or i16 %398, 16384
  %400 = load ptr, ptr %344, align 4
  %401 = getelementptr i8, ptr %400, i32 %395
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %401, i16 %399) #12, !srcloc !12
  br label %405

402:                                              ; preds = %286
  %403 = and i32 %289, 2
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %292, label %405

405:                                              ; preds = %402, %394, %283, %280, %262, %57, %26
  %406 = load i32, ptr %9, align 4
  %407 = and i32 %406, 32512
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %409, label %411

409:                                              ; preds = %405
  %410 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 4
  br label %416

411:                                              ; preds = %405
  %412 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %413 = load ptr, ptr %412, align 4
  %414 = getelementptr inbounds %struct.usb_device, ptr %413, i32 0, i32 15, i32 8
  %415 = load ptr, ptr %414, align 8
  br label %416

416:                                              ; preds = %411, %409
  %417 = phi ptr [ %410, %409 ], [ %415, %411 ]
  %418 = icmp eq ptr %417, null
  br i1 %418, label %442, label %419

419:                                              ; preds = %416
  %420 = load i16, ptr %417, align 4
  %421 = icmp eq i16 %420, 0
  br i1 %421, label %442, label %422

422:                                              ; preds = %419
  %423 = getelementptr inbounds %struct.r8a66597_device, ptr %417, i32 0, i32 7
  %424 = load i32, ptr %423, align 4
  %425 = icmp eq i32 %424, 7
  br i1 %425, label %442, label %426

426:                                              ; preds = %422
  %427 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %428 = load ptr, ptr %427, align 4
  %429 = getelementptr inbounds %struct.usb_device, ptr %428, i32 0, i32 3
  %430 = load i32, ptr %429, align 8
  %431 = icmp eq i32 %430, 7
  br i1 %431, label %432, label %442

432:                                              ; preds = %426
  br i1 %408, label %433, label %435

433:                                              ; preds = %432
  %434 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 4
  br label %438

435:                                              ; preds = %432
  %436 = getelementptr inbounds %struct.usb_device, ptr %428, i32 0, i32 15, i32 8
  %437 = load ptr, ptr %436, align 8
  br label %438

438:                                              ; preds = %435, %433
  %439 = phi ptr [ %434, %433 ], [ %437, %435 ]
  %440 = getelementptr inbounds %struct.r8a66597_device, ptr %439, i32 0, i32 7
  store i32 7, ptr %440, align 4
  %441 = load i32, ptr %9, align 4
  br label %442

442:                                              ; preds = %438, %426, %422, %419, %416
  %443 = phi i32 [ %406, %426 ], [ %406, %422 ], [ %406, %419 ], [ %406, %416 ], [ %441, %438 ]
  %444 = and i32 %443, 32512
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %446, label %505

446:                                              ; preds = %442
  %447 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %448 = load ptr, ptr %447, align 4
  %449 = getelementptr inbounds %struct.usb_device, ptr %448, i32 0, i32 1
  %450 = load i8, ptr %449, align 1
  %451 = and i8 %450, 15
  %452 = zext i8 %451 to i32
  %453 = add nuw nsw i32 %452, 65535
  %454 = and i32 %453, 65535
  %455 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 21, i32 3, i32 4
  %456 = load i32, ptr %455, align 4
  %457 = icmp ugt i32 %456, %454
  br i1 %457, label %461, label %458

458:                                              ; preds = %446
  %459 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #13
  %460 = load ptr, ptr %447, align 4
  br label %461

461:                                              ; preds = %458, %446
  %462 = phi ptr [ %448, %446 ], [ %460, %458 ]
  %463 = getelementptr %struct.usb_device, ptr %448, i32 0, i32 1, i32 2
  %464 = load i8, ptr %463, align 1
  %465 = and i8 %464, 15
  %466 = getelementptr inbounds %struct.usb_device, ptr %462, i32 0, i32 4
  %467 = load i32, ptr %466, align 4
  switch i32 %467, label %470 [
    i32 1, label %473
    i32 2, label %468
    i32 3, label %469
  ]

468:                                              ; preds = %461
  br label %473

469:                                              ; preds = %461
  br label %473

470:                                              ; preds = %461
  %471 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #13
  %472 = load ptr, ptr %447, align 4
  br label %473

473:                                              ; preds = %470, %469, %468, %461
  %474 = phi ptr [ %472, %470 ], [ %462, %469 ], [ %462, %468 ], [ %462, %461 ]
  %475 = phi i32 [ 0, %470 ], [ 192, %469 ], [ 128, %468 ], [ 64, %461 ]
  %476 = getelementptr inbounds %struct.usb_device, ptr %474, i32 0, i32 11
  %477 = load ptr, ptr %476, align 4
  %478 = icmp eq ptr %477, null
  br i1 %478, label %483, label %479

479:                                              ; preds = %473
  %480 = load i32, ptr %477, align 8
  %481 = icmp eq i32 %480, 1
  %482 = select i1 %481, ptr %474, ptr %477
  br label %483

483:                                              ; preds = %479, %473
  %484 = phi ptr [ %474, %473 ], [ %482, %479 ]
  %485 = getelementptr inbounds %struct.usb_device, ptr %484, i32 0, i32 15, i32 8
  %486 = load ptr, ptr %485, align 8
  %487 = icmp eq ptr %486, null
  br i1 %487, label %493, label %488

488:                                              ; preds = %483
  %489 = load i16, ptr %486, align 4
  %490 = and i16 %489, 255
  %491 = zext i16 %490 to i32
  %492 = shl nuw nsw i32 %491, 11
  br label %493

493:                                              ; preds = %488, %483
  %494 = phi i32 [ %492, %488 ], [ 0, %483 ]
  %495 = zext i8 %465 to i32
  %496 = shl nuw nsw i32 %495, 8
  %497 = and i32 %453, 1
  %498 = or i32 %496, %497
  %499 = or i32 %475, %498
  %500 = or i32 %494, %499
  %501 = trunc i32 %500 to i16
  %502 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 1
  %503 = load ptr, ptr %502, align 4
  %504 = getelementptr i8, ptr %503, i32 208
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %504, i16 %501) #12, !srcloc !12
  br label %505

505:                                              ; preds = %493, %442
  %506 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %507 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %506, i32 noundef 2848, i32 noundef 32) #14
  %508 = icmp eq ptr %507, null
  br i1 %508, label %616, label %509

509:                                              ; preds = %505
  %510 = load i32, ptr %9, align 4
  %511 = and i32 %510, 491520
  %512 = icmp eq i32 %511, 0
  %513 = load ptr, ptr %27, align 4
  br i1 %512, label %517, label %514

514:                                              ; preds = %509
  %515 = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %513, i32 0, i32 1
  %516 = load i16, ptr %515, align 4
  br label %517

517:                                              ; preds = %514, %509
  %518 = phi i16 [ %516, %514 ], [ 0, %509 ]
  %519 = getelementptr inbounds %struct.r8a66597_td, ptr %507, i32 0, i32 4
  store i16 %518, ptr %519, align 2
  store ptr %513, ptr %507, align 8
  %520 = getelementptr inbounds %struct.r8a66597_td, ptr %507, i32 0, i32 1
  store ptr %1, ptr %520, align 4
  %521 = and i32 %510, 32512
  %522 = icmp eq i32 %521, 0
  %523 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %524 = load ptr, ptr %523, align 4
  br i1 %522, label %529, label %525

525:                                              ; preds = %517
  %526 = getelementptr inbounds %struct.usb_device, ptr %524, i32 0, i32 15, i32 8
  %527 = load ptr, ptr %526, align 8
  %528 = load i16, ptr %527, align 4
  br label %529

529:                                              ; preds = %525, %517
  %530 = phi i16 [ %528, %525 ], [ 0, %517 ]
  %531 = getelementptr inbounds %struct.r8a66597_td, ptr %507, i32 0, i32 6
  store i16 %530, ptr %531, align 8
  %532 = lshr i32 %510, 15
  %533 = and i32 %532, 15
  %534 = and i32 %510, 128
  %535 = icmp eq i32 %534, 0
  %536 = getelementptr %struct.usb_device, ptr %524, i32 0, i32 22, i32 %533
  %537 = getelementptr %struct.usb_device, ptr %524, i32 0, i32 21, i32 %533
  %538 = select i1 %535, ptr %536, ptr %537
  %539 = load ptr, ptr %538, align 4
  %540 = icmp eq ptr %539, null
  br i1 %540, label %545, label %541

541:                                              ; preds = %529
  %542 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %539, i32 0, i32 4
  %543 = load i16, ptr %542, align 1
  %544 = and i16 %543, 2047
  br label %545

545:                                              ; preds = %541, %529
  %546 = phi i16 [ %544, %541 ], [ 0, %529 ]
  %547 = getelementptr inbounds %struct.r8a66597_td, ptr %507, i32 0, i32 7
  store i16 %546, ptr %547, align 2
  %548 = and i32 %510, -1073741824
  %549 = icmp eq i32 %548, -2147483648
  %550 = getelementptr inbounds %struct.r8a66597_td, ptr %507, i32 0, i32 3
  %551 = select i1 %535, i16 225, i16 105
  %552 = select i1 %549, i16 45, i16 %551
  store i16 %552, ptr %550, align 8
  %553 = getelementptr inbounds %struct.r8a66597_td, ptr %507, i32 0, i32 2
  store volatile ptr %553, ptr %553, align 8
  %554 = getelementptr inbounds %struct.r8a66597_td, ptr %507, i32 0, i32 2, i32 1
  %555 = zext i16 %518 to i32
  %556 = getelementptr %struct.r8a66597, ptr %7, i32 0, i32 6, i32 %555
  %557 = load volatile ptr, ptr %556, align 4
  %558 = icmp eq ptr %557, %556
  %559 = getelementptr %struct.r8a66597, ptr %7, i32 0, i32 6, i32 %555, i32 1
  %560 = load ptr, ptr %559, align 4
  store ptr %553, ptr %559, align 4
  store ptr %556, ptr %553, align 8
  store ptr %560, ptr %554, align 4
  store volatile ptr %553, ptr %560, align 4
  %561 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 2
  store ptr %507, ptr %561, align 4
  br i1 %558, label %562, label %587

562:                                              ; preds = %545
  %563 = load ptr, ptr %507, align 8
  %564 = load i32, ptr %563, align 4
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %580, label %566

566:                                              ; preds = %562
  %567 = load i16, ptr %519, align 2
  %568 = zext i16 %567 to i32
  %569 = shl nuw i32 1, %568
  %570 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 21, i32 3
  %571 = load i16, ptr %570, align 4
  %572 = trunc i32 %569 to i16
  %573 = or i16 %571, %572
  store i16 %573, ptr %570, align 4
  %574 = getelementptr %struct.r8a66597, ptr %7, i32 0, i32 8, i32 %568, i32 1
  %575 = load volatile i32, ptr @jiffies, align 64
  %576 = load i32, ptr %563, align 4
  %577 = tail call i32 @__msecs_to_jiffies(i32 noundef %576) #12
  %578 = add i32 %577, %575
  %579 = tail call i32 @mod_timer(ptr noundef %574, i32 noundef %578) #12
  br label %618

580:                                              ; preds = %562
  %581 = tail call fastcc i32 @start_transfer(ptr noundef %7, ptr noundef nonnull %507)
  %582 = icmp slt i32 %581, 0
  br i1 %582, label %583, label %618

583:                                              ; preds = %580
  %584 = load ptr, ptr %554, align 4
  %585 = load ptr, ptr %553, align 8
  %586 = getelementptr inbounds %struct.list_head, ptr %585, i32 0, i32 1
  store ptr %584, ptr %586, align 4
  store volatile ptr %585, ptr %584, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %553, align 8
  store ptr inttoptr (i32 290 to ptr), ptr %554, align 4
  tail call void @kfree(ptr noundef nonnull %507) #12
  br label %616

587:                                              ; preds = %545
  %588 = load i16, ptr %519, align 2
  %589 = zext i16 %588 to i32
  %590 = getelementptr %struct.r8a66597, ptr %7, i32 0, i32 6, i32 %589
  %591 = load volatile ptr, ptr %590, align 4
  %592 = icmp eq ptr %591, %590
  br i1 %592, label %618, label %593

593:                                              ; preds = %587
  %594 = load ptr, ptr %520, align 4
  %595 = getelementptr inbounds %struct.urb, ptr %594, i32 0, i32 10
  %596 = load i32, ptr %595, align 4
  %597 = and i32 %596, -1073741824
  %598 = icmp eq i32 %597, -2147483648
  %599 = and i32 %596, 128
  %600 = icmp eq i32 %599, 0
  %601 = or i1 %598, %600
  br i1 %601, label %618, label %602

602:                                              ; preds = %593
  %603 = shl nuw i32 1, %589
  %604 = getelementptr inbounds %struct.r8a66597, ptr %7, i32 0, i32 10
  %605 = load i16, ptr %604, align 2
  %606 = trunc i32 %603 to i16
  %607 = or i16 %605, %606
  store i16 %607, ptr %604, align 2
  %608 = load i32, ptr %595, align 4
  %609 = getelementptr %struct.r8a66597, ptr %7, i32 0, i32 8, i32 %589
  %610 = load volatile i32, ptr @jiffies, align 64
  %611 = icmp sgt i32 %608, -1
  %612 = select i1 %611, i32 30, i32 50
  %613 = tail call i32 @__msecs_to_jiffies(i32 noundef %612) #12
  %614 = add i32 %613, %610
  %615 = tail call i32 @mod_timer(ptr noundef %609, i32 noundef %614) #12
  br label %618

616:                                              ; preds = %583, %505, %30
  %617 = phi i32 [ %581, %583 ], [ -12, %30 ], [ -12, %505 ]
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %0, ptr noundef %1) #12
  br label %618

618:                                              ; preds = %616, %602, %593, %587, %580, %566, %23, %20
  %619 = phi i32 [ %24, %23 ], [ %617, %616 ], [ -19, %20 ], [ 0, %566 ], [ 0, %580 ], [ 0, %587 ], [ 0, %593 ], [ 0, %602 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #12
  ret i32 %619
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @r8a66597_urb_dequeue(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #12
  %6 = tail call i32 @usb_hcd_check_unlink_urb(ptr noundef %0, ptr noundef %1, i32 noundef %2) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %40

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %40, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 4
  tail call fastcc void @pipe_stop(ptr noundef %4, ptr noundef %13)
  %14 = getelementptr inbounds %struct.r8a66597_td, ptr %10, i32 0, i32 4
  %15 = load i16, ptr %14, align 2
  tail call fastcc void @pipe_irq_disable(ptr noundef %4, i16 noundef zeroext %15)
  %16 = load i16, ptr %14, align 2
  %17 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 48
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %19) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %21 = load ptr, ptr %17, align 4
  %22 = getelementptr i8, ptr %21, i32 48
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %22) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %24 = and i16 %23, -1793
  %25 = load ptr, ptr %17, align 4
  %26 = getelementptr i8, ptr %25, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %26, i16 %24) #12, !srcloc !12
  %27 = zext i16 %16 to i32
  %28 = shl nuw i32 1, %27
  %29 = trunc i32 %28 to i16
  %30 = load ptr, ptr %17, align 4
  %31 = getelementptr i8, ptr %30, i32 58
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %31) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %33 = xor i16 %29, -1
  %34 = and i16 %32, %33
  %35 = load ptr, ptr %17, align 4
  %36 = getelementptr i8, ptr %35, i32 58
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %36, i16 %34) #12, !srcloc !12
  %37 = load ptr, ptr %17, align 4
  %38 = getelementptr i8, ptr %37, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %38, i16 %20) #12, !srcloc !12
  %39 = load i16, ptr %14, align 2
  tail call fastcc void @finish_request(ptr noundef %4, ptr noundef nonnull %10, i16 noundef zeroext %39, ptr noundef %1, i32 noundef %2)
  br label %40

40:                                               ; preds = %12, %8, %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #12
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @r8a66597_endpoint_disable(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %4 = getelementptr inbounds %struct.usb_host_endpoint, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %48, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %5, i32 0, i32 1
  %9 = load i16, ptr %8, align 4
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #12
  %11 = icmp eq i16 %9, 0
  br i1 %11, label %46, label %12

12:                                               ; preds = %7
  tail call fastcc void @pipe_stop(ptr noundef %3, ptr noundef nonnull %5)
  tail call fastcc void @pipe_irq_disable(ptr noundef %3, i16 noundef zeroext %9)
  %13 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 48
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %15) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %17 = load ptr, ptr %13, align 4
  %18 = getelementptr i8, ptr %17, i32 48
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %18) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %20 = and i16 %19, -1793
  %21 = load ptr, ptr %13, align 4
  %22 = getelementptr i8, ptr %21, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %22, i16 %20) #12, !srcloc !12
  %23 = zext i16 %9 to i32
  %24 = shl nuw i32 1, %23
  %25 = trunc i32 %24 to i16
  %26 = load ptr, ptr %13, align 4
  %27 = getelementptr i8, ptr %26, i32 58
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %27) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %29 = xor i16 %25, -1
  %30 = and i16 %28, %29
  %31 = load ptr, ptr %13, align 4
  %32 = getelementptr i8, ptr %31, i32 58
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %32, i16 %30) #12, !srcloc !12
  %33 = load ptr, ptr %13, align 4
  %34 = getelementptr i8, ptr %33, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %34, i16 %16) #12, !srcloc !12
  %35 = getelementptr %struct.r8a66597, ptr %3, i32 0, i32 6, i32 %23
  %36 = load volatile ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %35
  %38 = getelementptr i8, ptr %36, i32 -8
  %39 = select i1 %37, ptr null, ptr %38, !prof !17
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %12
  %42 = getelementptr inbounds %struct.r8a66597_td, ptr %39, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  br label %44

44:                                               ; preds = %41, %12
  %45 = phi ptr [ %43, %41 ], [ null, %12 ]
  tail call fastcc void @finish_request(ptr noundef %3, ptr noundef %39, i16 noundef zeroext %9, ptr noundef %45, i32 noundef -108)
  br label %46

46:                                               ; preds = %44, %7
  %47 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %47) #12
  store ptr null, ptr %4, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %10) #12
  br label %48

48:                                               ; preds = %46, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @r8a66597_hub_status_data(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca [4 x i32], align 4
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false) #12
  tail call void @mutex_lock(ptr noundef nonnull @usb_bus_idr_lock) #12
  %5 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = tail call ptr @idr_find(ptr noundef nonnull @usb_bus_idr, i32 noundef %6) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %96, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.usb_bus, ptr %7, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %96, label %13

13:                                               ; preds = %9
  call fastcc void @collect_usb_address_map(ptr noundef nonnull %11, ptr noundef nonnull %3) #12
  %14 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 21, i32 3, i32 5
  %15 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 21, i32 2, i32 1
  %16 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 21, i32 3, i32 4
  br label %17

17:                                               ; preds = %93, %13
  %18 = phi i32 [ 0, %13 ], [ %94, %93 ]
  %19 = getelementptr %struct.r8a66597, ptr %4, i32 0, i32 16, i32 %18
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i32, ptr %3, i32 %18
  %22 = load i32, ptr %21, align 4
  %23 = xor i32 %22, %20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %93, label %25

25:                                               ; preds = %17
  %26 = shl i32 %18, 5
  br label %27

27:                                               ; preds = %90, %25
  %28 = phi i32 [ 0, %25 ], [ %91, %90 ]
  %29 = shl nuw i32 1, %28
  %30 = and i32 %29, %23
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %90, label %32

32:                                               ; preds = %27
  %33 = add nuw nsw i32 %28, %26
  %34 = and i32 %29, %22
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %32
  %37 = lshr i32 %33, 5
  %38 = and i32 %33, 31
  %39 = shl nuw i32 1, %38
  %40 = getelementptr %struct.r8a66597, ptr %4, i32 0, i32 16, i32 %37
  %41 = load i32, ptr %40, align 4
  %42 = or i32 %41, %39
  store i32 %42, ptr %40, align 4
  br label %90

43:                                               ; preds = %32
  %44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #12
  br label %45

45:                                               ; preds = %49, %43
  %46 = phi ptr [ %14, %43 ], [ %47, %49 ]
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, %14
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = getelementptr i8, ptr %47, i32 -4
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, %33
  br i1 %52, label %55, label %45

53:                                               ; preds = %45
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %33) #13
  br label %82

55:                                               ; preds = %49
  %56 = getelementptr i8, ptr %47, i32 -36
  tail call fastcc void @disable_r8a66597_pipe_all(ptr noundef %4, ptr noundef %56) #12
  %57 = icmp eq ptr %56, null
  br i1 %57, label %82, label %58

58:                                               ; preds = %55
  %59 = getelementptr i8, ptr %47, i32 -12
  store i32 5, ptr %59, align 4
  %60 = load i16, ptr %56, align 4
  %61 = zext i16 %60 to i32
  %62 = shl nuw i32 1, %61
  %63 = load i16, ptr %15, align 4
  %64 = trunc i32 %62 to i16
  %65 = xor i16 %64, -1
  %66 = and i16 %63, %65
  store i16 %66, ptr %15, align 4
  store i16 0, ptr %56, align 4
  %67 = getelementptr i8, ptr %47, i32 4
  %68 = load ptr, ptr %67, align 4
  %69 = load ptr, ptr %47, align 4
  %70 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  store ptr %68, ptr %70, align 4
  store volatile ptr %69, ptr %68, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %47, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %67, align 4
  tail call void @kfree(ptr noundef nonnull %56) #12
  %71 = load i32, ptr %16, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %82, label %76

73:                                               ; preds = %76
  %74 = add nuw i32 %77, 1
  %75 = icmp eq i32 %74, %71
  br i1 %75, label %82, label %76

76:                                               ; preds = %73, %58
  %77 = phi i32 [ %74, %73 ], [ 0, %58 ]
  %78 = getelementptr %struct.r8a66597, ptr %4, i32 0, i32 5, i32 %77, i32 3
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, %56
  br i1 %80, label %81, label %73

81:                                               ; preds = %76
  store ptr null, ptr %78, align 4
  br label %82

82:                                               ; preds = %81, %73, %58, %55, %53
  %83 = lshr i32 %33, 5
  %84 = and i32 %33, 31
  %85 = shl nuw i32 1, %84
  %86 = xor i32 %85, -1
  %87 = getelementptr %struct.r8a66597, ptr %4, i32 0, i32 16, i32 %83
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, %86
  store i32 %89, ptr %87, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %44) #12
  br label %90

90:                                               ; preds = %82, %36, %27
  %91 = add nuw nsw i32 %28, 1
  %92 = icmp eq i32 %91, 32
  br i1 %92, label %93, label %27

93:                                               ; preds = %90, %17
  %94 = add nuw nsw i32 %18, 1
  %95 = icmp eq i32 %94, 4
  br i1 %95, label %96, label %17

96:                                               ; preds = %93, %9, %2
  tail call void @mutex_unlock(ptr noundef nonnull @usb_bus_idr_lock) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  %97 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #12
  store i8 0, ptr %1, align 1
  %98 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 21, i32 3, i32 4
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %118, label %101

101:                                              ; preds = %113, %96
  %102 = phi i32 [ %114, %113 ], [ %99, %96 ]
  %103 = phi i8 [ %115, %113 ], [ 0, %96 ]
  %104 = phi i32 [ %116, %113 ], [ 0, %96 ]
  %105 = getelementptr %struct.r8a66597, ptr %4, i32 0, i32 5, i32 %104
  %106 = load i32, ptr %105, align 4
  %107 = icmp ult i32 %106, 65536
  br i1 %107, label %113, label %108

108:                                              ; preds = %101
  %109 = shl i32 2, %104
  %110 = trunc i32 %109 to i8
  %111 = or i8 %103, %110
  store i8 %111, ptr %1, align 1
  %112 = load i32, ptr %98, align 4
  br label %113

113:                                              ; preds = %108, %101
  %114 = phi i32 [ %102, %101 ], [ %112, %108 ]
  %115 = phi i8 [ %103, %101 ], [ %111, %108 ]
  %116 = add nuw i32 %104, 1
  %117 = icmp ult i32 %116, %114
  br i1 %117, label %101, label %118

118:                                              ; preds = %113, %96
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %97) #12
  %119 = load i8, ptr %1, align 1
  %120 = icmp ne i8 %119, 0
  %121 = zext i1 %120 to i32
  ret i32 %121
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @r8a66597_hub_control(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, ptr nocapture noundef writeonly %4, i16 noundef zeroext %5) #2 {
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %8 = zext i16 %3 to i32
  %9 = and i32 %8, 255
  %10 = add nsw i32 %9, -1
  %11 = getelementptr %struct.r8a66597, ptr %7, i32 0, i32 5, i32 %10
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #12
  switch i16 %1, label %89 [
    i16 8193, label %13
    i16 8195, label %13
    i16 8961, label %15
    i16 -24570, label %32
    i16 -24576, label %48
    i16 -23808, label %49
    i16 8963, label %55
  ]

13:                                               ; preds = %6, %6
  %14 = icmp ult i16 %2, 2
  br i1 %14, label %90, label %89

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 21, i32 3, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %17, %8
  %19 = icmp ne i16 %5, 0
  %20 = or i1 %19, %18
  br i1 %20, label %89, label %21

21:                                               ; preds = %15
  %22 = zext i16 %2 to i32
  switch i16 %2, label %89 [
    i16 1, label %23
    i16 2, label %27
    i16 8, label %26
    i16 17, label %27
    i16 18, label %27
    i16 16, label %27
    i16 19, label %27
    i16 20, label %27
  ]

23:                                               ; preds = %21
  %24 = load i32, ptr %11, align 4
  %25 = and i32 %24, -257
  store i32 %25, ptr %11, align 4
  br label %27

26:                                               ; preds = %21
  tail call fastcc void @r8a66597_port_power(ptr noundef %7, i32 noundef %10, i32 noundef 0)
  br label %27

27:                                               ; preds = %26, %23, %21, %21, %21, %21, %21, %21
  %28 = shl nuw nsw i32 1, %22
  %29 = xor i32 %28, -1
  %30 = load i32, ptr %11, align 4
  %31 = and i32 %30, %29
  store i32 %31, ptr %11, align 4
  br label %90

32:                                               ; preds = %6
  %33 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 1
  store i8 41, ptr %33, align 1
  %34 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 5
  store i8 0, ptr %34, align 1
  %35 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 21, i32 3, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 2
  store i8 %37, ptr %38, align 1
  store i8 9, ptr %4, align 1
  %39 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 4
  store i8 0, ptr %39, align 1
  %40 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 3
  store i16 17, ptr %40, align 1
  %41 = load i32, ptr %35, align 4
  %42 = shl nsw i32 -1, %41
  %43 = trunc i32 %42 to i8
  %44 = xor i8 %43, -1
  %45 = shl i8 %44, 1
  %46 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 6
  store i8 %45, ptr %46, align 1
  %47 = getelementptr %struct.usb_hub_descriptor, ptr %4, i32 0, i32 6, i32 0, i32 0, i32 1
  store i8 -1, ptr %47, align 1
  br label %90

48:                                               ; preds = %6
  store i8 0, ptr %4, align 1
  br label %90

49:                                               ; preds = %6
  %50 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 21, i32 3, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = icmp ult i32 %51, %8
  br i1 %52, label %89, label %53

53:                                               ; preds = %49
  %54 = load i32, ptr %11, align 4
  store i32 %54, ptr %4, align 4
  br label %90

55:                                               ; preds = %6
  %56 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 21, i32 3, i32 4
  %57 = load i32, ptr %56, align 4
  %58 = icmp ult i32 %57, %8
  %59 = icmp ne i16 %5, 0
  %60 = or i1 %59, %58
  br i1 %60, label %89, label %61

61:                                               ; preds = %55
  %62 = zext i16 %2 to i32
  switch i16 %2, label %89 [
    i16 2, label %85
    i16 8, label %63
    i16 4, label %66
  ]

63:                                               ; preds = %61
  tail call fastcc void @r8a66597_port_power(ptr noundef %7, i32 noundef %10, i32 noundef 1)
  %64 = load i32, ptr %11, align 4
  %65 = or i32 %64, 256
  store i32 %65, ptr %11, align 4
  br label %85

66:                                               ; preds = %61
  %67 = getelementptr %struct.r8a66597, ptr %7, i32 0, i32 5, i32 %10, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = load i32, ptr %11, align 4
  %70 = or i32 %69, 16
  store i32 %70, ptr %11, align 4
  tail call fastcc void @disable_r8a66597_pipe_all(ptr noundef %7, ptr noundef %68)
  tail call fastcc void @free_usb_address(ptr noundef %7, ptr noundef %68, i32 noundef 1)
  %71 = icmp eq i32 %10, 0
  %72 = select i1 %71, i32 8, i32 10
  %73 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr i8, ptr %74, i32 %72
  %76 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %75) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %77 = and i16 %76, -81
  %78 = or i16 %77, 64
  %79 = load ptr, ptr %73, align 4
  %80 = getelementptr i8, ptr %79, i32 %72
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %80, i16 %78) #12, !srcloc !12
  %81 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 1, i32 1
  %82 = load volatile i32, ptr @jiffies, align 64
  %83 = add i32 %82, 5
  %84 = tail call i32 @mod_timer(ptr noundef %81, i32 noundef %83) #12
  br label %85

85:                                               ; preds = %66, %63, %61
  %86 = shl nuw nsw i32 1, %62
  %87 = load i32, ptr %11, align 4
  %88 = or i32 %87, %86
  store i32 %88, ptr %11, align 4
  br label %90

89:                                               ; preds = %61, %55, %49, %21, %15, %13, %6
  br label %90

90:                                               ; preds = %89, %85, %53, %48, %32, %27, %13
  %91 = phi i32 [ -32, %89 ], [ 0, %85 ], [ 0, %53 ], [ 0, %48 ], [ 0, %32 ], [ 0, %27 ], [ 0, %13 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %12) #12
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @r8a66597_bus_suspend(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 21, i32 3, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %54, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 1
  br label %8

8:                                                ; preds = %50, %6
  %9 = phi i32 [ 0, %6 ], [ %51, %50 ]
  %10 = getelementptr %struct.r8a66597, ptr %2, i32 0, i32 5, i32 %9
  %11 = icmp eq i32 %9, 0
  %12 = select i1 %11, i32 8, i32 10
  %13 = load i32, ptr %10, align 4
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %50, label %16

16:                                               ; preds = %8
  %17 = load ptr, ptr %7, align 4
  %18 = getelementptr i8, ptr %17, i32 %12
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %18) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %20 = and i16 %19, -17
  %21 = load ptr, ptr %7, align 4
  %22 = getelementptr i8, ptr %21, i32 %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %22, i16 %20) #12, !srcloc !12
  %23 = load i32, ptr %10, align 4
  %24 = or i32 %23, 4
  store i32 %24, ptr %10, align 4
  %25 = getelementptr %struct.r8a66597, ptr %2, i32 0, i32 5, i32 %9, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.r8a66597_device, ptr %26, i32 0, i32 8
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.usb_device, ptr %28, i32 0, i32 40
  %30 = load i8, ptr %29, align 8
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %16
  tail call void @msleep(i32 noundef 3) #12
  %34 = load ptr, ptr %7, align 4
  %35 = getelementptr i8, ptr %34, i32 %12
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %35) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %37 = or i16 %36, 128
  %38 = load ptr, ptr %7, align 4
  %39 = getelementptr i8, ptr %38, i32 %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %39, i16 %37) #12, !srcloc !12
  %40 = select i1 %11, i32 66, i32 68
  %41 = load ptr, ptr %7, align 4
  %42 = getelementptr i8, ptr %41, i32 %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %42, i16 -16385) #12, !srcloc !12
  %43 = select i1 %11, i32 50, i32 52
  %44 = load ptr, ptr %7, align 4
  %45 = getelementptr i8, ptr %44, i32 %43
  %46 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %45) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %47 = or i16 %46, 16384
  %48 = load ptr, ptr %7, align 4
  %49 = getelementptr i8, ptr %48, i32 %43
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %49, i16 %47) #12, !srcloc !12
  br label %50

50:                                               ; preds = %33, %16, %8
  %51 = add nuw i32 %9, 1
  %52 = load i32, ptr %3, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %8, label %54

54:                                               ; preds = %50, %1
  %55 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 26
  %56 = load i8, ptr %55, align 4
  %57 = or i8 %56, 1
  store i8 %57, ptr %55, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @r8a66597_bus_resume(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 21, i32 3, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %39, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 1
  br label %8

8:                                                ; preds = %35, %6
  %9 = phi i32 [ %4, %6 ], [ %36, %35 ]
  %10 = phi i32 [ 0, %6 ], [ %37, %35 ]
  %11 = getelementptr %struct.r8a66597, ptr %2, i32 0, i32 5, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %8
  %16 = icmp eq i32 %10, 0
  %17 = select i1 %16, i32 8, i32 10
  %18 = and i32 %12, -262149
  %19 = or i32 %18, 262144
  store i32 %19, ptr %11, align 4
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr i8, ptr %20, i32 %17
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %21) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %23 = and i16 %22, -49
  %24 = or i16 %23, 32
  %25 = load ptr, ptr %7, align 4
  %26 = getelementptr i8, ptr %25, i32 %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %26, i16 %24) #12, !srcloc !12
  tail call void @msleep(i32 noundef 40) #12
  %27 = load ptr, ptr %7, align 4
  %28 = getelementptr i8, ptr %27, i32 %17
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %28) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %30 = and i16 %29, -49
  %31 = or i16 %30, 16
  %32 = load ptr, ptr %7, align 4
  %33 = getelementptr i8, ptr %32, i32 %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %33, i16 %31) #12, !srcloc !12
  %34 = load i32, ptr %3, align 4
  br label %35

35:                                               ; preds = %15, %8
  %36 = phi i32 [ %9, %8 ], [ %34, %15 ]
  %37 = add nuw i32 %10, 1
  %38 = icmp ult i32 %37, %36
  br i1 %38, label %8, label %39

39:                                               ; preds = %35, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @r8a66597_usb_disconnect(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr %struct.r8a66597, ptr %0, i32 0, i32 5, i32 %1, i32 3
  %4 = load ptr, ptr %3, align 4
  tail call fastcc void @disable_r8a66597_pipe_all(ptr noundef %0, ptr noundef %4)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.r8a66597_device, ptr %4, i32 0, i32 7
  store i32 5, ptr %7, align 4
  %8 = load i16, ptr %4, align 4
  %9 = zext i16 %8 to i32
  %10 = shl nuw i32 1, %9
  %11 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 9
  %12 = load i16, ptr %11, align 4
  %13 = trunc i32 %10 to i16
  %14 = xor i16 %13, -1
  %15 = and i16 %12, %14
  store i16 %15, ptr %11, align 4
  store i16 0, ptr %4, align 4
  %16 = getelementptr inbounds %struct.r8a66597_device, ptr %4, i32 0, i32 10
  %17 = getelementptr inbounds %struct.r8a66597_device, ptr %4, i32 0, i32 10, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %16, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  store volatile ptr %19, ptr %18, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %17, align 4
  tail call void @kfree(ptr noundef nonnull %4) #12
  %21 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 14
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %33, label %27

24:                                               ; preds = %27
  %25 = add nuw i32 %28, 1
  %26 = icmp eq i32 %25, %22
  br i1 %26, label %33, label %27

27:                                               ; preds = %24, %6
  %28 = phi i32 [ %25, %24 ], [ 0, %6 ]
  %29 = getelementptr %struct.r8a66597, ptr %0, i32 0, i32 5, i32 %28, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %4
  br i1 %31, label %32, label %24

32:                                               ; preds = %27
  store ptr null, ptr %29, align 4
  br label %33

33:                                               ; preds = %32, %24, %6, %2
  %34 = getelementptr %struct.r8a66597, ptr %0, i32 0, i32 5, i32 %1
  %35 = icmp eq i32 %1, 0
  %36 = select i1 %35, i32 4, i32 6
  %37 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 %36
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %39) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %41 = and i16 %40, 3
  %42 = getelementptr %struct.r8a66597, ptr %0, i32 0, i32 5, i32 %1, i32 1
  store i16 %41, ptr %42, align 4
  %43 = getelementptr %struct.r8a66597, ptr %0, i32 0, i32 5, i32 %1, i32 2
  store i32 5, ptr %43, align 4
  %44 = load i32, ptr %34, align 4
  %45 = and i32 %44, -65538
  %46 = or i32 %45, 65536
  store i32 %46, ptr %34, align 4
  %47 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 7
  %48 = load volatile i32, ptr @jiffies, align 64
  %49 = add i32 %48, 1
  %50 = tail call i32 @mod_timer(ptr noundef %47, i32 noundef %49) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_resume_root_hub(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @check_next_phase(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr %struct.r8a66597, ptr %0, i32 0, i32 6, i32 0
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  %6 = getelementptr i8, ptr %4, i32 -8
  %7 = icmp eq ptr %6, null
  %8 = or i1 %5, %7
  br i1 %8, label %58, label %9, !prof !17

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %4, i32 -4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %4, i32 8
  %13 = load i16, ptr %12, align 4
  switch i16 %13, label %49 [
    i16 105, label %14
    i16 225, label %14
    i16 45, label %35
    i16 210, label %55
  ]

14:                                               ; preds = %9, %9
  %15 = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 10
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %16, 1073741824
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 24
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i8, ptr %4, i32 12
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %47, label %24

24:                                               ; preds = %18, %14
  %25 = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 19
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 20
  %28 = load i32, ptr %27, align 4
  %29 = icmp ugt i32 %26, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %24
  %31 = getelementptr i8, ptr %4, i32 20
  %32 = load i8, ptr %31, align 4
  %33 = and i8 %32, 3
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %49, label %47

35:                                               ; preds = %9
  %36 = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 19
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 20
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 10
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 128
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i16 225, i16 105
  br label %47

47:                                               ; preds = %41, %35, %30, %24, %18
  %48 = phi i16 [ 210, %24 ], [ 210, %18 ], [ 210, %30 ], [ 210, %35 ], [ %46, %41 ]
  store i16 %48, ptr %12, align 4
  br label %49

49:                                               ; preds = %47, %30, %9
  %50 = icmp eq i32 %1, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51, %49, %9
  tail call fastcc void @finish_request(ptr noundef %0, ptr noundef nonnull %6, i16 noundef zeroext 0, ptr noundef %11, i32 noundef %1)
  br label %58

56:                                               ; preds = %51
  %57 = tail call fastcc i32 @start_transfer(ptr noundef %0, ptr noundef nonnull %6)
  br label %58

58:                                               ; preds = %56, %55, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @disable_r8a66597_pipe_all(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %72, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.r8a66597, ptr %0, i32 0, i32 6, i32 0
  br label %6

6:                                                ; preds = %61, %4
  %7 = phi i32 [ 1, %4 ], [ %63, %61 ]
  %8 = phi i32 [ 0, %4 ], [ %62, %61 ]
  %9 = getelementptr %struct.r8a66597_device, ptr %1, i32 0, i32 5, i32 %7
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %61, label %12

12:                                               ; preds = %6
  %13 = icmp eq i32 %8, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %12
  %15 = load i16, ptr %1, align 4
  %16 = load volatile ptr, ptr %5, align 4
  %17 = icmp eq ptr %16, %5
  br i1 %17, label %35, label %18

18:                                               ; preds = %21, %14
  %19 = phi ptr [ %22, %21 ], [ %16, %14 ]
  %20 = icmp eq ptr %19, %5
  br i1 %20, label %35, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr i8, ptr %19, i32 16
  %24 = load i16, ptr %23, align 4
  %25 = icmp eq i16 %24, %15
  br i1 %25, label %26, label %18

26:                                               ; preds = %21
  %27 = getelementptr i8, ptr %19, i32 -8
  %28 = getelementptr i8, ptr %19, i32 -4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %31, ptr %32, align 4
  store volatile ptr %22, ptr %31, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %19, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %30, align 4
  tail call void @kfree(ptr noundef %27) #12
  %33 = icmp eq ptr %29, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  tail call fastcc void @r8a66597_urb_done(ptr noundef %0, ptr noundef nonnull %29, i32 noundef -19) #12
  br label %35

35:                                               ; preds = %34, %26, %18, %14, %12
  %36 = load i8, ptr %9, align 1
  %37 = getelementptr %struct.r8a66597, ptr %0, i32 0, i32 12, i32 %7
  %38 = load i8, ptr %37, align 1
  %39 = sub i8 %38, %36
  store i8 %39, ptr %37, align 1
  store i8 0, ptr %9, align 1
  %40 = load i16, ptr %1, align 4
  %41 = getelementptr %struct.r8a66597, ptr %0, i32 0, i32 6, i32 %7
  %42 = load volatile ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %41
  br i1 %43, label %61, label %44

44:                                               ; preds = %47, %35
  %45 = phi ptr [ %48, %47 ], [ %42, %35 ]
  %46 = icmp eq ptr %45, %41
  br i1 %46, label %61, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %45, align 4
  %49 = getelementptr i8, ptr %45, i32 16
  %50 = load i16, ptr %49, align 4
  %51 = icmp eq i16 %50, %40
  br i1 %51, label %52, label %44

52:                                               ; preds = %47
  %53 = getelementptr i8, ptr %45, i32 -8
  %54 = getelementptr i8, ptr %45, i32 -4
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  store ptr %57, ptr %58, align 4
  store volatile ptr %48, ptr %57, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %45, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %56, align 4
  tail call void @kfree(ptr noundef %53) #12
  %59 = icmp eq ptr %55, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %52
  tail call fastcc void @r8a66597_urb_done(ptr noundef %0, ptr noundef nonnull %55, i32 noundef -19) #12
  br label %61

61:                                               ; preds = %60, %52, %44, %35, %6
  %62 = phi i32 [ %8, %6 ], [ 1, %35 ], [ 1, %52 ], [ 1, %60 ], [ 1, %44 ]
  %63 = add nuw nsw i32 %7, 1
  %64 = icmp eq i32 %63, 10
  br i1 %64, label %65, label %6

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.r8a66597_device, ptr %1, i32 0, i32 6
  %67 = load i8, ptr %66, align 4
  %68 = xor i8 %67, -1
  %69 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 13
  %70 = load i8, ptr %69, align 4
  %71 = and i8 %70, %68
  store i8 %71, ptr %69, align 4
  store i8 0, ptr %66, align 4
  br label %72

72:                                               ; preds = %65, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @free_usb_address(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.r8a66597_device, ptr %1, i32 0, i32 7
  store i32 5, ptr %6, align 4
  %7 = load i16, ptr %1, align 4
  %8 = zext i16 %7 to i32
  %9 = shl nuw i32 1, %8
  %10 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 9
  %11 = load i16, ptr %10, align 4
  %12 = trunc i32 %9 to i16
  %13 = xor i16 %12, -1
  %14 = and i16 %11, %13
  store i16 %14, ptr %10, align 4
  store i16 0, ptr %1, align 4
  %15 = icmp eq i32 %2, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.r8a66597_device, ptr %1, i32 0, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 15, i32 8
  store ptr null, ptr %19, align 8
  br label %20

20:                                               ; preds = %16, %5
  %21 = getelementptr inbounds %struct.r8a66597_device, ptr %1, i32 0, i32 10
  %22 = getelementptr inbounds %struct.r8a66597_device, ptr %1, i32 0, i32 10, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %21, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %23, ptr %25, align 4
  store volatile ptr %24, ptr %23, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %21, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %22, align 4
  tail call void @kfree(ptr noundef nonnull %1) #12
  %26 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 14
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %38, label %32

29:                                               ; preds = %32
  %30 = add nuw i32 %33, 1
  %31 = icmp eq i32 %30, %27
  br i1 %31, label %38, label %32

32:                                               ; preds = %29, %20
  %33 = phi i32 [ %30, %29 ], [ 0, %20 ]
  %34 = getelementptr %struct.r8a66597, ptr %0, i32 0, i32 5, i32 %33, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %1
  br i1 %36, label %37, label %29

37:                                               ; preds = %32
  store ptr null, ptr %34, align 4
  br label %38

38:                                               ; preds = %37, %29, %20, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @r8a66597_urb_done(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 128
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %5, -1073741824
  %9 = icmp eq i32 %8, -2147483648
  %10 = or i1 %7, %9
  br i1 %10, label %30, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %13, i32 %15
  %17 = icmp ult ptr %13, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %18, %11
  %19 = phi ptr [ %25, %18 ], [ %13, %11 ]
  %20 = load ptr, ptr @mem_map, align 4
  %21 = ptrtoint ptr %19 to i32
  %22 = add i32 %21, 1073741824
  %23 = lshr i32 %22, 12
  %24 = getelementptr %struct.page, ptr %20, i32 %23
  tail call void @flush_dcache_page(ptr noundef %24) #12
  %25 = getelementptr i8, ptr %19, i32 4096
  %26 = load ptr, ptr %12, align 4
  %27 = load i32, ptr %14, align 4
  %28 = getelementptr i8, ptr %26, i32 %27
  %29 = icmp ult ptr %25, %28
  br i1 %29, label %18, label %30

30:                                               ; preds = %18, %11, %3
  %31 = getelementptr i8, ptr %0, i32 -352
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %31, ptr noundef %1) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  %32 = load i16, ptr %0, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  tail call void @usb_hcd_giveback_urb(ptr noundef %31, ptr noundef %1, i32 noundef %2) #12
  tail call void @_raw_spin_lock(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_unlink_urb_from_ep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_giveback_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @finish_request(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, ptr noundef %3, i32 noundef %4) unnamed_addr #2 {
  %6 = zext i16 %2 to i32
  %7 = shl nuw i32 1, %6
  %8 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 10
  %9 = load i16, ptr %8, align 2
  %10 = trunc i32 %7 to i16
  %11 = xor i16 %10, -1
  %12 = and i16 %9, %11
  store i16 %12, ptr %8, align 2
  %13 = icmp eq ptr %1, null
  br i1 %13, label %106, label %14, !prof !17

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.r8a66597_td, ptr %1, i32 0, i32 8
  %16 = load i8, ptr %15, align 4
  %17 = and i8 %16, 4
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %14
  %20 = icmp eq i32 %4, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %21, %19
  %26 = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 21
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 2
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = shl nuw i32 1, %30
  %32 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 9
  %33 = load i16, ptr %32, align 4
  %34 = trunc i32 %31 to i16
  %35 = xor i16 %34, -1
  %36 = and i16 %33, %35
  store i16 %36, ptr %32, align 4
  br label %37

37:                                               ; preds = %25, %21, %14
  %38 = load ptr, ptr %1, align 4
  %39 = getelementptr inbounds %struct.r8a66597_pipe, ptr %38, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %42, i32 %40
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %43) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %45 = and i16 %44, 64
  %46 = icmp eq i16 %45, 0
  %47 = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 10
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 32512
  %50 = icmp eq i32 %49, 0
  br i1 %46, label %75, label %51

51:                                               ; preds = %37
  br i1 %50, label %52, label %54

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 4
  br label %59

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 8
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.usb_device, ptr %56, i32 0, i32 15, i32 8
  %58 = load ptr, ptr %57, align 8
  br label %59

59:                                               ; preds = %54, %52
  %60 = phi ptr [ %53, %52 ], [ %58, %54 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %100, label %62

62:                                               ; preds = %59
  %63 = and i32 %48, 128
  %64 = icmp eq i32 %63, 0
  %65 = getelementptr inbounds %struct.r8a66597_device, ptr %60, i32 0, i32 4
  %66 = getelementptr inbounds %struct.r8a66597_device, ptr %60, i32 0, i32 3
  %67 = select i1 %64, ptr %65, ptr %66
  %68 = lshr i32 %48, 15
  %69 = trunc i32 %68 to i8
  %70 = and i8 %69, 15
  %71 = zext i8 %70 to i16
  %72 = shl nuw i16 1, %71
  %73 = load i16, ptr %67, align 2
  %74 = or i16 %73, %72
  store i16 %74, ptr %67, align 2
  br label %100

75:                                               ; preds = %37
  br i1 %50, label %76, label %78

76:                                               ; preds = %75
  %77 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 4
  br label %83

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 8
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.usb_device, ptr %80, i32 0, i32 15, i32 8
  %82 = load ptr, ptr %81, align 8
  br label %83

83:                                               ; preds = %78, %76
  %84 = phi ptr [ %77, %76 ], [ %82, %78 ]
  %85 = icmp eq ptr %84, null
  br i1 %85, label %100, label %86

86:                                               ; preds = %83
  %87 = and i32 %48, 128
  %88 = icmp eq i32 %87, 0
  %89 = getelementptr inbounds %struct.r8a66597_device, ptr %84, i32 0, i32 4
  %90 = getelementptr inbounds %struct.r8a66597_device, ptr %84, i32 0, i32 3
  %91 = select i1 %88, ptr %89, ptr %90
  %92 = lshr i32 %48, 15
  %93 = trunc i32 %92 to i8
  %94 = and i8 %93, 15
  %95 = zext i8 %94 to i16
  %96 = shl nuw i16 1, %95
  %97 = xor i16 %96, -1
  %98 = load i16, ptr %91, align 2
  %99 = and i16 %98, %97
  store i16 %99, ptr %91, align 2
  br label %100

100:                                              ; preds = %86, %83, %62, %59
  %101 = getelementptr inbounds %struct.r8a66597_td, ptr %1, i32 0, i32 2
  %102 = getelementptr inbounds %struct.r8a66597_td, ptr %1, i32 0, i32 2, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = load ptr, ptr %101, align 4
  %105 = getelementptr inbounds %struct.list_head, ptr %104, i32 0, i32 1
  store ptr %103, ptr %105, align 4
  store volatile ptr %104, ptr %103, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %101, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %102, align 4
  tail call void @kfree(ptr noundef nonnull %1) #12
  br label %106

106:                                              ; preds = %100, %5
  %107 = getelementptr %struct.r8a66597, ptr %0, i32 0, i32 6, i32 %6
  %108 = load volatile ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, %107
  %110 = icmp eq ptr %3, null
  br i1 %110, label %124, label %111, !prof !17

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 10
  %113 = load i32, ptr %112, align 4
  %114 = icmp ult i32 %113, 1073741824
  br i1 %114, label %115, label %123

115:                                              ; preds = %111
  %116 = getelementptr i8, ptr %0, i32 4
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr i8, ptr %117, i32 76
  %119 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %118) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %120 = and i16 %119, 1023
  %121 = zext i16 %120 to i32
  %122 = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 23
  store i32 %121, ptr %122, align 4
  br label %123

123:                                              ; preds = %115, %111
  tail call fastcc void @r8a66597_urb_done(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %4)
  br label %124

124:                                              ; preds = %123, %106
  br i1 %109, label %166, label %125

125:                                              ; preds = %124
  %126 = load volatile ptr, ptr %107, align 4
  %127 = icmp eq ptr %126, %107
  %128 = getelementptr i8, ptr %126, i32 -8
  %129 = icmp eq ptr %128, null
  %130 = or i1 %127, %129
  br i1 %130, label %166, label %131, !prof !17

131:                                              ; preds = %125
  %132 = tail call fastcc i32 @start_transfer(ptr noundef %0, ptr noundef nonnull %128)
  %133 = getelementptr i8, ptr %126, i32 10
  %134 = load i16, ptr %133, align 2
  %135 = zext i16 %134 to i32
  %136 = getelementptr %struct.r8a66597, ptr %0, i32 0, i32 6, i32 %135
  %137 = load volatile ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, %136
  br i1 %138, label %166, label %139

139:                                              ; preds = %131
  %140 = getelementptr i8, ptr %126, i32 -4
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.urb, ptr %141, i32 0, i32 10
  %143 = load i32, ptr %142, align 4
  %144 = and i32 %143, -1073741824
  %145 = icmp eq i32 %144, -2147483648
  %146 = and i32 %143, 128
  %147 = icmp eq i32 %146, 0
  %148 = or i1 %145, %147
  br i1 %148, label %166, label %149

149:                                              ; preds = %139
  %150 = shl nuw i32 1, %135
  %151 = load i16, ptr %8, align 2
  %152 = trunc i32 %150 to i16
  %153 = or i16 %151, %152
  store i16 %153, ptr %8, align 2
  %154 = load ptr, ptr %140, align 4
  %155 = getelementptr inbounds %struct.urb, ptr %154, i32 0, i32 10
  %156 = load i32, ptr %155, align 4
  %157 = load i16, ptr %133, align 2
  %158 = zext i16 %157 to i32
  %159 = getelementptr %struct.r8a66597, ptr %0, i32 0, i32 8, i32 %158
  %160 = load volatile i32, ptr @jiffies, align 64
  %161 = icmp sgt i32 %156, -1
  %162 = select i1 %161, i32 30, i32 50
  %163 = tail call i32 @__msecs_to_jiffies(i32 noundef %162) #12
  %164 = add i32 %163, %160
  %165 = tail call i32 @mod_timer(ptr noundef %159, i32 noundef %164) #12
  br label %166

166:                                              ; preds = %149, %139, %131, %125, %124
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @start_transfer(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5, !prof !17

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/host/r8a66597-hcd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1196, 0\0A.popsection", ""() #12, !srcloc !18
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.r8a66597_td, ptr %1, i32 0, i32 3
  %7 = load i16, ptr %6, align 4
  switch i16 %7, label %680 [
    i16 45, label %8
    i16 105, label %227
    i16 225, label %395
    i16 210, label %520
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.r8a66597_td, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 21
  %12 = load ptr, ptr %11, align 4
  %13 = load i8, ptr %12, align 1
  %14 = and i8 %13, 96
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %197

16:                                               ; preds = %8
  %17 = getelementptr i8, ptr %12, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 5
  br i1 %19, label %20, label %197

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.r8a66597_td, ptr %1, i32 0, i32 8
  %22 = load i8, ptr %21, align 4
  %23 = or i8 %22, 4
  store i8 %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 1
  %27 = tail call i32 @strlen(ptr noundef %26) #12
  %28 = icmp ult i32 %27, 4
  br i1 %28, label %31, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.9) #13
  br label %185

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 10
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 32512
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 4
  br label %41

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 15, i32 8
  %40 = load ptr, ptr %39, align 8
  br label %41

41:                                               ; preds = %38, %36
  %42 = phi ptr [ %37, %36 ], [ %40, %38 ]
  %43 = icmp eq ptr %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.r8a66597_device, ptr %42, i32 0, i32 7
  %46 = load i32, ptr %45, align 4
  %47 = icmp ugt i32 %46, 5
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i16, ptr %42, align 4
  %50 = trunc i16 %49 to i8
  br label %185

51:                                               ; preds = %44, %41
  %52 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 9
  %53 = load i16, ptr %52, align 4
  %54 = zext i16 %53 to i32
  %55 = and i32 %54, 2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %156

57:                                               ; preds = %180, %177, %174, %171, %168, %165, %162, %159, %156, %51
  %58 = phi i8 [ 1, %51 ], [ 2, %156 ], [ 3, %159 ], [ 4, %162 ], [ 5, %165 ], [ 6, %168 ], [ 7, %171 ], [ 8, %174 ], [ 9, %177 ], [ 10, %180 ]
  %59 = phi i16 [ 2, %51 ], [ 4, %156 ], [ 8, %159 ], [ 16, %162 ], [ 32, %165 ], [ 64, %168 ], [ 128, %171 ], [ 256, %174 ], [ 512, %177 ], [ 1024, %180 ]
  %60 = or i16 %59, %53
  store i16 %60, ptr %52, align 4
  %61 = load ptr, ptr %11, align 4
  %62 = getelementptr i8, ptr %61, i32 2
  %63 = load i8, ptr %62, align 1
  %64 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %65 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %64, i32 noundef 2848, i32 noundef 44) #14
  %66 = icmp eq ptr %65, null
  br i1 %66, label %185, label %67

67:                                               ; preds = %57
  %68 = zext i8 %63 to i32
  %69 = load ptr, ptr %24, align 4
  %70 = getelementptr inbounds %struct.usb_device, ptr %69, i32 0, i32 15, i32 8
  store ptr %65, ptr %70, align 8
  %71 = load ptr, ptr %24, align 4
  %72 = getelementptr inbounds %struct.r8a66597_device, ptr %65, i32 0, i32 8
  store ptr %71, ptr %72, align 4
  %73 = zext i8 %58 to i16
  store i16 %73, ptr %65, align 8
  %74 = getelementptr inbounds %struct.r8a66597_device, ptr %65, i32 0, i32 9
  store i32 %68, ptr %74, align 8
  %75 = getelementptr inbounds %struct.r8a66597_device, ptr %65, i32 0, i32 7
  store i32 6, ptr %75, align 8
  %76 = getelementptr inbounds %struct.r8a66597_device, ptr %65, i32 0, i32 3
  store i16 0, ptr %76, align 2
  %77 = getelementptr inbounds %struct.r8a66597_device, ptr %65, i32 0, i32 4
  store i16 0, ptr %77, align 8
  %78 = getelementptr inbounds %struct.r8a66597_device, ptr %65, i32 0, i32 10
  store volatile ptr %78, ptr %78, align 4
  %79 = getelementptr inbounds %struct.r8a66597_device, ptr %65, i32 0, i32 10, i32 1
  %80 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 15
  %81 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 15, i32 1
  %82 = load ptr, ptr %81, align 4
  store ptr %78, ptr %81, align 4
  store ptr %80, ptr %78, align 4
  store ptr %82, ptr %79, align 8
  store volatile ptr %78, ptr %82, align 4
  %83 = load ptr, ptr %24, align 4
  %84 = getelementptr inbounds %struct.r8a66597_device, ptr %65, i32 0, i32 2
  %85 = getelementptr inbounds %struct.r8a66597_device, ptr %65, i32 0, i32 1
  %86 = getelementptr inbounds %struct.usb_device, ptr %83, i32 0, i32 1
  %87 = load i8, ptr %86, align 1
  %88 = and i8 %87, 15
  %89 = zext i8 %88 to i16
  %90 = add nsw i16 %89, -1
  store i16 %90, ptr %84, align 4
  %91 = zext i16 %90 to i32
  %92 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 14
  %93 = load i32, ptr %92, align 4
  %94 = icmp ugt i32 %93, %91
  br i1 %94, label %98, label %95

95:                                               ; preds = %67
  %96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #13
  %97 = load ptr, ptr %24, align 4
  br label %98

98:                                               ; preds = %95, %67
  %99 = phi ptr [ %83, %67 ], [ %97, %95 ]
  %100 = getelementptr %struct.usb_device, ptr %83, i32 0, i32 1, i32 2
  %101 = load i8, ptr %100, align 1
  %102 = and i8 %101, 15
  %103 = zext i8 %102 to i16
  store i16 %103, ptr %85, align 2
  %104 = getelementptr %struct.usb_device, ptr %99, i32 0, i32 1, i32 2
  %105 = load i8, ptr %104, align 1
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %98
  %108 = load i16, ptr %84, align 4
  %109 = zext i16 %108 to i32
  %110 = getelementptr %struct.r8a66597, ptr %0, i32 0, i32 5, i32 %109, i32 3
  store ptr %65, ptr %110, align 4
  %111 = load ptr, ptr %24, align 4
  br label %112

112:                                              ; preds = %107, %98
  %113 = phi ptr [ %111, %107 ], [ %99, %98 ]
  %114 = load i16, ptr %65, align 8
  %115 = getelementptr inbounds %struct.usb_device, ptr %113, i32 0, i32 4
  %116 = load i32, ptr %115, align 4
  switch i32 %116, label %119 [
    i32 1, label %122
    i32 2, label %117
    i32 3, label %118
  ]

117:                                              ; preds = %112
  br label %122

118:                                              ; preds = %112
  br label %122

119:                                              ; preds = %112
  %120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #13
  %121 = load ptr, ptr %24, align 4
  br label %122

122:                                              ; preds = %119, %118, %117, %112
  %123 = phi ptr [ %121, %119 ], [ %113, %118 ], [ %113, %117 ], [ %113, %112 ]
  %124 = phi i16 [ 0, %119 ], [ 192, %118 ], [ 128, %117 ], [ 64, %112 ]
  %125 = getelementptr inbounds %struct.usb_device, ptr %123, i32 0, i32 11
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %132, label %128

128:                                              ; preds = %122
  %129 = load i32, ptr %126, align 8
  %130 = icmp eq i32 %129, 1
  %131 = select i1 %130, ptr %123, ptr %126
  br label %132

132:                                              ; preds = %128, %122
  %133 = phi ptr [ %123, %122 ], [ %131, %128 ]
  %134 = getelementptr inbounds %struct.usb_device, ptr %133, i32 0, i32 15, i32 8
  %135 = load ptr, ptr %134, align 8
  %136 = icmp eq ptr %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %132
  %138 = load i16, ptr %135, align 4
  %139 = shl i16 %138, 11
  br label %140

140:                                              ; preds = %137, %132
  %141 = phi i16 [ %139, %137 ], [ 0, %132 ]
  %142 = load i16, ptr %85, align 2
  %143 = load i16, ptr %84, align 4
  %144 = shl i16 %114, 1
  %145 = and i16 %144, 510
  %146 = add nuw nsw i16 %145, 208
  %147 = zext i16 %146 to i32
  %148 = shl i16 %142, 8
  %149 = and i16 %143, 1
  %150 = or i16 %141, %124
  %151 = or i16 %150, %148
  %152 = or i16 %151, %149
  %153 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 1
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr i8, ptr %154, i32 %147
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %155, i16 %152) #12, !srcloc !12
  br label %185

156:                                              ; preds = %51
  %157 = and i32 %54, 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %57, label %159

159:                                              ; preds = %156
  %160 = and i32 %54, 8
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %57, label %162

162:                                              ; preds = %159
  %163 = and i32 %54, 16
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %57, label %165

165:                                              ; preds = %162
  %166 = and i32 %54, 32
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %57, label %168

168:                                              ; preds = %165
  %169 = and i32 %54, 64
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %57, label %171

171:                                              ; preds = %168
  %172 = and i32 %54, 128
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %57, label %174

174:                                              ; preds = %171
  %175 = and i32 %54, 256
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %57, label %177

177:                                              ; preds = %174
  %178 = and i32 %54, 512
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %57, label %180

180:                                              ; preds = %177
  %181 = and i32 %54, 1024
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %57, label %183

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %184, ptr noundef nonnull @.str.10, i32 noundef %54) #13
  br label %185

185:                                              ; preds = %183, %140, %57, %48, %29
  %186 = phi i8 [ 0, %29 ], [ %50, %48 ], [ 0, %183 ], [ %58, %140 ], [ 0, %57 ]
  %187 = load ptr, ptr %9, align 4
  %188 = getelementptr inbounds %struct.urb, ptr %187, i32 0, i32 21
  %189 = load ptr, ptr %188, align 4
  %190 = getelementptr i8, ptr %189, i32 2
  store i8 %186, ptr %190, align 1
  %191 = load ptr, ptr %9, align 4
  %192 = getelementptr inbounds %struct.urb, ptr %191, i32 0, i32 21
  %193 = load ptr, ptr %192, align 4
  %194 = getelementptr i8, ptr %193, i32 2
  %195 = load i8, ptr %194, align 1
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %682, label %197

197:                                              ; preds = %185, %16, %8
  %198 = phi ptr [ %12, %16 ], [ %12, %8 ], [ %193, %185 ]
  %199 = getelementptr inbounds %struct.r8a66597_td, ptr %1, i32 0, i32 6
  %200 = load i16, ptr %199, align 4
  %201 = shl i16 %200, 12
  %202 = getelementptr inbounds %struct.r8a66597_td, ptr %1, i32 0, i32 7
  %203 = load i16, ptr %202, align 2
  %204 = or i16 %201, %203
  %205 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 1
  %206 = load ptr, ptr %205, align 4
  %207 = getelementptr i8, ptr %206, i32 94
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %207, i16 %204) #12, !srcloc !12
  %208 = load ptr, ptr %205, align 4
  %209 = getelementptr i8, ptr %208, i32 66
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %209, i16 -49) #12, !srcloc !12
  %210 = load i16, ptr %198, align 2
  %211 = load ptr, ptr %205, align 4
  %212 = getelementptr i8, ptr %211, i32 84
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %212, i16 %210) #12, !srcloc !12
  %213 = getelementptr i16, ptr %198, i32 1
  %214 = load i16, ptr %213, align 2
  %215 = load ptr, ptr %205, align 4
  %216 = getelementptr i8, ptr %215, i32 86
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %216, i16 %214) #12, !srcloc !12
  %217 = getelementptr i16, ptr %198, i32 2
  %218 = load i16, ptr %217, align 2
  %219 = load ptr, ptr %205, align 4
  %220 = getelementptr i8, ptr %219, i32 88
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %220, i16 %218) #12, !srcloc !12
  %221 = getelementptr i16, ptr %198, i32 3
  %222 = load i16, ptr %221, align 2
  %223 = load ptr, ptr %205, align 4
  %224 = getelementptr i8, ptr %223, i32 90
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %224, i16 %222) #12, !srcloc !12
  %225 = load ptr, ptr %205, align 4
  %226 = getelementptr i8, ptr %225, i32 96
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %226, i16 16384) #12, !srcloc !12
  br label %682

227:                                              ; preds = %5
  %228 = getelementptr inbounds %struct.r8a66597_td, ptr %1, i32 0, i32 1
  %229 = load ptr, ptr %228, align 4
  %230 = getelementptr inbounds %struct.urb, ptr %229, i32 0, i32 10
  %231 = load i32, ptr %230, align 4
  %232 = and i32 %231, -1073741824
  %233 = icmp eq i32 %232, -2147483648
  br i1 %233, label %234, label %312

234:                                              ; preds = %227
  %235 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 1
  %236 = load ptr, ptr %235, align 4
  %237 = getelementptr i8, ptr %236, i32 92
  %238 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %237) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %239 = and i16 %238, -17
  %240 = load ptr, ptr %235, align 4
  %241 = getelementptr i8, ptr %240, i32 92
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %241, i16 %239) #12, !srcloc !12
  %242 = load ptr, ptr %235, align 4
  %243 = getelementptr i8, ptr %242, i32 32
  %244 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %243) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %245 = and i16 %244, -48
  %246 = load ptr, ptr %235, align 4
  %247 = getelementptr i8, ptr %246, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %247, i16 %245) #12, !srcloc !12
  br label %248

248:                                              ; preds = %256, %234
  %249 = phi i32 [ 0, %234 ], [ %257, %256 ]
  %250 = load ptr, ptr %235, align 4
  %251 = getelementptr i8, ptr %250, i32 32
  %252 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %251) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %253 = icmp eq i32 %249, 1000001
  br i1 %253, label %254, label %256

254:                                              ; preds = %248
  %255 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 32, i32 noundef 0) #13
  br label %261

256:                                              ; preds = %248
  %257 = add nuw nsw i32 %249, 1
  %258 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %258(i32 noundef 214748) #12
  %259 = and i16 %252, 15
  %260 = icmp eq i16 %259, 0
  br i1 %260, label %261, label %248

261:                                              ; preds = %256, %254
  %262 = getelementptr inbounds %struct.urb, ptr %229, i32 0, i32 20
  %263 = load i32, ptr %262, align 4
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %277

265:                                              ; preds = %261
  %266 = load ptr, ptr %1, align 4
  %267 = getelementptr inbounds %struct.r8a66597_pipe, ptr %266, i32 0, i32 4
  %268 = load i32, ptr %267, align 4
  %269 = load ptr, ptr %235, align 4
  %270 = getelementptr i8, ptr %269, i32 %268
  %271 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %270) #12
  tail call void asm sideeffect "dsb ", "~{memory}"() #12
  %272 = or i16 %271, 128
  %273 = load ptr, ptr %235, align 4
  %274 = getelementptr i8, ptr %273, i32 %268
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %274, i16 %272) #12, !srcloc !12
  %275 = load ptr, ptr %235, align 4
  %276 = getelementptr i8, ptr %275, i32 34
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %276, i16 16384) #12, !srcloc !12
  br label %277

277:                                              ; preds = %265, %261
  %278 = getelementptr inbounds %struct.r8a66597_td, ptr %1, i32 0, i32 4
  %279 = load i16, ptr %278, align 2
  tail call fastcc void @pipe_irq_disable(ptr noundef %0, i16 noundef zeroext %279) #12
  %280 = load ptr, ptr %1, align 4
  %281 = getelementptr inbounds %struct.r8a66597_pipe, ptr %280, i32 0, i32 4
  %282 = load i32, ptr %281, align 4
  %283 = load ptr, ptr %235, align 4
  %284 = getelementptr i8, ptr %283, i32 %282
  %285 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %284) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %286 = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %280, i32 0, i32 1
  %287 = load i16, ptr %286, align 4
  %288 = icmp ne i16 %287, 0
  %289 = zext i1 %288 to i32
  %290 = lshr i16 %285, 1
  %291 = and i16 %290, 1
  %292 = zext i16 %291 to i32
  %293 = and i32 %289, %292
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %303, label %295

295:                                              ; preds = %277
  %296 = load i32, ptr %281, align 4
  %297 = load ptr, ptr %235, align 4
  %298 = getelementptr i8, ptr %297, i32 %296
  %299 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %298) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %300 = and i16 %299, -4
  %301 = load ptr, ptr %235, align 4
  %302 = getelementptr i8, ptr %301, i32 %296
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %302, i16 %300) #12, !srcloc !12
  br label %303

303:                                              ; preds = %295, %277
  %304 = load i32, ptr %281, align 4
  %305 = load ptr, ptr %235, align 4
  %306 = getelementptr i8, ptr %305, i32 %304
  %307 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %306) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %308 = and i16 %307, -4
  %309 = or i16 %308, 1
  %310 = load ptr, ptr %235, align 4
  %311 = getelementptr i8, ptr %310, i32 %304
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %311, i16 %309) #12, !srcloc !12
  br label %392

312:                                              ; preds = %227
  %313 = getelementptr inbounds %struct.urb, ptr %229, i32 0, i32 20
  %314 = load i32, ptr %313, align 4
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %682

316:                                              ; preds = %312
  %317 = getelementptr inbounds %struct.r8a66597_td, ptr %1, i32 0, i32 4
  %318 = load i16, ptr %317, align 2
  tail call fastcc void @pipe_irq_disable(ptr noundef %0, i16 noundef zeroext %318) #12
  tail call fastcc void @pipe_setting(ptr noundef %0, ptr noundef nonnull %1) #12
  %319 = load ptr, ptr %1, align 4
  tail call fastcc void @pipe_stop(ptr noundef %0, ptr noundef %319) #12
  %320 = load i16, ptr %317, align 2
  %321 = zext i16 %320 to i32
  %322 = shl nuw i32 1, %321
  %323 = trunc i32 %322 to i16
  %324 = xor i16 %323, -1
  %325 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 1
  %326 = load ptr, ptr %325, align 4
  %327 = getelementptr i8, ptr %326, i32 70
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %327, i16 %324) #12, !srcloc !12
  %328 = load ptr, ptr %1, align 4
  %329 = getelementptr inbounds %struct.r8a66597_pipe, ptr %328, i32 0, i32 5
  %330 = load i32, ptr %329, align 4
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %359, label %332

332:                                              ; preds = %316
  %333 = load ptr, ptr %325, align 4
  %334 = getelementptr i8, ptr %333, i32 %330
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %334, i16 256) #12, !srcloc !12
  %335 = getelementptr inbounds %struct.urb, ptr %229, i32 0, i32 19
  %336 = load i32, ptr %335, align 4
  %337 = getelementptr inbounds %struct.r8a66597_td, ptr %1, i32 0, i32 7
  %338 = load i16, ptr %337, align 2
  %339 = zext i16 %338 to i32
  %340 = add i32 %336, -1
  %341 = add i32 %340, %339
  %342 = udiv i32 %341, %339
  %343 = trunc i32 %342 to i16
  %344 = load ptr, ptr %1, align 4
  %345 = getelementptr inbounds %struct.r8a66597_pipe, ptr %344, i32 0, i32 6
  %346 = load i32, ptr %345, align 4
  %347 = load ptr, ptr %325, align 4
  %348 = getelementptr i8, ptr %347, i32 %346
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %348, i16 %343) #12, !srcloc !12
  %349 = load ptr, ptr %1, align 4
  %350 = getelementptr inbounds %struct.r8a66597_pipe, ptr %349, i32 0, i32 5
  %351 = load i32, ptr %350, align 4
  %352 = load ptr, ptr %325, align 4
  %353 = getelementptr i8, ptr %352, i32 %351
  %354 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %353) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %355 = or i16 %354, 512
  %356 = load ptr, ptr %325, align 4
  %357 = getelementptr i8, ptr %356, i32 %351
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %357, i16 %355) #12, !srcloc !12
  %358 = load ptr, ptr %1, align 4
  br label %359

359:                                              ; preds = %332, %316
  %360 = phi ptr [ %358, %332 ], [ %328, %316 ]
  %361 = getelementptr inbounds %struct.r8a66597_pipe, ptr %360, i32 0, i32 4
  %362 = load i32, ptr %361, align 4
  %363 = load ptr, ptr %325, align 4
  %364 = getelementptr i8, ptr %363, i32 %362
  %365 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %364) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %366 = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %360, i32 0, i32 1
  %367 = load i16, ptr %366, align 4
  %368 = icmp ne i16 %367, 0
  %369 = zext i1 %368 to i32
  %370 = lshr i16 %365, 1
  %371 = and i16 %370, 1
  %372 = zext i16 %371 to i32
  %373 = and i32 %369, %372
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %383, label %375

375:                                              ; preds = %359
  %376 = load i32, ptr %361, align 4
  %377 = load ptr, ptr %325, align 4
  %378 = getelementptr i8, ptr %377, i32 %376
  %379 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %378) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %380 = and i16 %379, -4
  %381 = load ptr, ptr %325, align 4
  %382 = getelementptr i8, ptr %381, i32 %376
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %382, i16 %380) #12, !srcloc !12
  br label %383

383:                                              ; preds = %375, %359
  %384 = load i32, ptr %361, align 4
  %385 = load ptr, ptr %325, align 4
  %386 = getelementptr i8, ptr %385, i32 %384
  %387 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %386) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %388 = and i16 %387, -4
  %389 = or i16 %388, 1
  %390 = load ptr, ptr %325, align 4
  %391 = getelementptr i8, ptr %390, i32 %384
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %391, i16 %389) #12, !srcloc !12
  br label %392

392:                                              ; preds = %383, %303
  %393 = phi ptr [ %317, %383 ], [ %278, %303 ]
  %394 = load i16, ptr %393, align 2
  tail call fastcc void @pipe_irq_enable(ptr noundef %0, ptr noundef %229, i16 noundef zeroext %394) #12
  br label %682

395:                                              ; preds = %5
  %396 = getelementptr inbounds %struct.r8a66597_td, ptr %1, i32 0, i32 1
  %397 = load ptr, ptr %396, align 4
  %398 = getelementptr inbounds %struct.urb, ptr %397, i32 0, i32 10
  %399 = load i32, ptr %398, align 4
  %400 = and i32 %399, -1073741824
  %401 = icmp eq i32 %400, -2147483648
  br i1 %401, label %402, label %447

402:                                              ; preds = %395
  %403 = load ptr, ptr %1, align 4
  tail call fastcc void @pipe_stop(ptr noundef %0, ptr noundef %403) #12
  %404 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 1
  %405 = load ptr, ptr %404, align 4
  %406 = getelementptr i8, ptr %405, i32 92
  %407 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %406) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %408 = or i16 %407, 16
  %409 = load ptr, ptr %404, align 4
  %410 = getelementptr i8, ptr %409, i32 92
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %410, i16 %408) #12, !srcloc !12
  %411 = load ptr, ptr %404, align 4
  %412 = getelementptr i8, ptr %411, i32 32
  %413 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %412) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %414 = and i16 %413, -48
  %415 = or i16 %414, 32
  %416 = load ptr, ptr %404, align 4
  %417 = getelementptr i8, ptr %416, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %417, i16 %415) #12, !srcloc !12
  br label %418

418:                                              ; preds = %426, %402
  %419 = phi i32 [ 0, %402 ], [ %427, %426 ]
  %420 = load ptr, ptr %404, align 4
  %421 = getelementptr i8, ptr %420, i32 32
  %422 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %421) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %423 = icmp eq i32 %419, 1000001
  br i1 %423, label %424, label %426

424:                                              ; preds = %418
  %425 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 32, i32 noundef 0) #13
  br label %431

426:                                              ; preds = %418
  %427 = add nuw nsw i32 %419, 1
  %428 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %428(i32 noundef 214748) #12
  %429 = and i16 %422, 15
  %430 = icmp eq i16 %429, 0
  br i1 %430, label %431, label %418

431:                                              ; preds = %426, %424
  %432 = getelementptr inbounds %struct.urb, ptr %397, i32 0, i32 20
  %433 = load i32, ptr %432, align 4
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %465

435:                                              ; preds = %431
  %436 = load ptr, ptr %1, align 4
  %437 = getelementptr inbounds %struct.r8a66597_pipe, ptr %436, i32 0, i32 4
  %438 = load i32, ptr %437, align 4
  %439 = load ptr, ptr %404, align 4
  %440 = getelementptr i8, ptr %439, i32 %438
  %441 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %440) #12
  tail call void asm sideeffect "dsb ", "~{memory}"() #12
  %442 = or i16 %441, 128
  %443 = load ptr, ptr %404, align 4
  %444 = getelementptr i8, ptr %443, i32 %438
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %444, i16 %442) #12, !srcloc !12
  %445 = load ptr, ptr %404, align 4
  %446 = getelementptr i8, ptr %445, i32 34
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %446, i16 16384) #12, !srcloc !12
  br label %465

447:                                              ; preds = %395
  %448 = getelementptr inbounds %struct.urb, ptr %397, i32 0, i32 20
  %449 = load i32, ptr %448, align 4
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %451, label %452

451:                                              ; preds = %447
  tail call fastcc void @pipe_setting(ptr noundef %0, ptr noundef nonnull %1) #12
  br label %452

452:                                              ; preds = %451, %447
  %453 = load ptr, ptr %1, align 4
  %454 = getelementptr inbounds %struct.r8a66597_pipe, ptr %453, i32 0, i32 5
  %455 = load i32, ptr %454, align 4
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %465, label %457

457:                                              ; preds = %452
  %458 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 1
  %459 = load ptr, ptr %458, align 4
  %460 = getelementptr i8, ptr %459, i32 %455
  %461 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %460) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %462 = and i16 %461, -513
  %463 = load ptr, ptr %458, align 4
  %464 = getelementptr i8, ptr %463, i32 %455
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %464, i16 %462) #12, !srcloc !12
  br label %465

465:                                              ; preds = %457, %452, %435, %431
  %466 = getelementptr inbounds %struct.r8a66597_td, ptr %1, i32 0, i32 4
  %467 = load i16, ptr %466, align 2
  %468 = zext i16 %467 to i32
  %469 = shl nuw i32 1, %468
  %470 = trunc i32 %469 to i16
  %471 = xor i16 %470, -1
  %472 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 1
  %473 = load ptr, ptr %472, align 4
  %474 = getelementptr i8, ptr %473, i32 70
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %474, i16 %471) #12, !srcloc !12
  %475 = load ptr, ptr %1, align 4
  tail call fastcc void @fifo_change_from_pipe(ptr noundef %0, ptr noundef %475) #12
  %476 = load ptr, ptr %1, align 4
  %477 = getelementptr inbounds %struct.r8a66597_pipe, ptr %476, i32 0, i32 3
  %478 = load i32, ptr %477, align 4
  %479 = load ptr, ptr %472, align 4
  %480 = getelementptr i8, ptr %479, i32 %478
  %481 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %480) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %482 = and i16 %481, 8192
  %483 = icmp eq i16 %482, 0
  %484 = load i16, ptr %466, align 2
  br i1 %483, label %485, label %486, !prof !17

485:                                              ; preds = %465
  tail call fastcc void @pipe_irq_enable(ptr noundef %0, ptr noundef %397, i16 noundef zeroext %484) #12
  br label %487

486:                                              ; preds = %465
  tail call fastcc void @packet_write(ptr noundef %0, i16 noundef zeroext %484) #12
  br label %487

487:                                              ; preds = %486, %485
  %488 = load ptr, ptr %1, align 4
  %489 = getelementptr inbounds %struct.r8a66597_pipe, ptr %488, i32 0, i32 4
  %490 = load i32, ptr %489, align 4
  %491 = load ptr, ptr %472, align 4
  %492 = getelementptr i8, ptr %491, i32 %490
  %493 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %492) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %494 = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %488, i32 0, i32 1
  %495 = load i16, ptr %494, align 4
  %496 = icmp ne i16 %495, 0
  %497 = zext i1 %496 to i32
  %498 = lshr i16 %493, 1
  %499 = and i16 %498, 1
  %500 = zext i16 %499 to i32
  %501 = and i32 %497, %500
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %511, label %503

503:                                              ; preds = %487
  %504 = load i32, ptr %489, align 4
  %505 = load ptr, ptr %472, align 4
  %506 = getelementptr i8, ptr %505, i32 %504
  %507 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %506) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %508 = and i16 %507, -4
  %509 = load ptr, ptr %472, align 4
  %510 = getelementptr i8, ptr %509, i32 %504
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %510, i16 %508) #12, !srcloc !12
  br label %511

511:                                              ; preds = %503, %487
  %512 = load i32, ptr %489, align 4
  %513 = load ptr, ptr %472, align 4
  %514 = getelementptr i8, ptr %513, i32 %512
  %515 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %514) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %516 = and i16 %515, -4
  %517 = or i16 %516, 1
  %518 = load ptr, ptr %472, align 4
  %519 = getelementptr i8, ptr %518, i32 %512
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %519, i16 %517) #12, !srcloc !12
  br label %682

520:                                              ; preds = %5
  %521 = getelementptr inbounds %struct.r8a66597_td, ptr %1, i32 0, i32 1
  %522 = load ptr, ptr %521, align 4
  %523 = load ptr, ptr %1, align 4
  %524 = getelementptr inbounds %struct.r8a66597_pipe, ptr %523, i32 0, i32 4
  %525 = load i32, ptr %524, align 4
  %526 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 1
  %527 = load ptr, ptr %526, align 4
  %528 = getelementptr i8, ptr %527, i32 %525
  %529 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %528) #12
  tail call void asm sideeffect "dsb ", "~{memory}"() #12
  %530 = or i16 %529, 128
  %531 = load ptr, ptr %526, align 4
  %532 = getelementptr i8, ptr %531, i32 %525
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %532, i16 %530) #12, !srcloc !12
  %533 = load ptr, ptr %1, align 4
  tail call fastcc void @pipe_stop(ptr noundef %0, ptr noundef %533) #12
  %534 = getelementptr inbounds %struct.urb, ptr %522, i32 0, i32 21
  %535 = load ptr, ptr %534, align 4
  %536 = load i8, ptr %535, align 1
  %537 = icmp sgt i8 %536, -1
  %538 = load ptr, ptr %526, align 4
  %539 = getelementptr i8, ptr %538, i32 92
  %540 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %539) #12
  tail call void asm sideeffect "dsb ", "~{memory}"() #12
  br i1 %537, label %587, label %541

541:                                              ; preds = %520
  %542 = or i16 %540, 16
  %543 = load ptr, ptr %526, align 4
  %544 = getelementptr i8, ptr %543, i32 92
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %544, i16 %542) #12, !srcloc !12
  %545 = load ptr, ptr %526, align 4
  %546 = getelementptr i8, ptr %545, i32 32
  %547 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %546) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %548 = and i16 %547, -48
  %549 = or i16 %548, 32
  %550 = load ptr, ptr %526, align 4
  %551 = getelementptr i8, ptr %550, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %551, i16 %549) #12, !srcloc !12
  br label %552

552:                                              ; preds = %560, %541
  %553 = phi i32 [ 0, %541 ], [ %561, %560 ]
  %554 = load ptr, ptr %526, align 4
  %555 = getelementptr i8, ptr %554, i32 32
  %556 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %555) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %557 = icmp eq i32 %553, 1000001
  br i1 %557, label %558, label %560

558:                                              ; preds = %552
  %559 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 32, i32 noundef 0) #13
  br label %565

560:                                              ; preds = %552
  %561 = add nuw nsw i32 %553, 1
  %562 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %562(i32 noundef 214748) #12
  %563 = and i16 %556, 15
  %564 = icmp eq i16 %563, 0
  br i1 %564, label %565, label %552

565:                                              ; preds = %560, %558
  %566 = load ptr, ptr %526, align 4
  %567 = getelementptr i8, ptr %566, i32 74
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %567, i16 -2) #12, !srcloc !12
  %568 = load ptr, ptr %526, align 4
  %569 = getelementptr i8, ptr %568, i32 34
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %569, i16 -16384) #12, !srcloc !12
  %570 = load ptr, ptr %526, align 4
  %571 = getelementptr i8, ptr %570, i32 48
  %572 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %571) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %573 = load ptr, ptr %526, align 4
  %574 = getelementptr i8, ptr %573, i32 48
  %575 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %574) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %576 = and i16 %575, -1793
  %577 = load ptr, ptr %526, align 4
  %578 = getelementptr i8, ptr %577, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %578, i16 %576) #12, !srcloc !12
  %579 = load ptr, ptr %526, align 4
  %580 = getelementptr i8, ptr %579, i32 58
  %581 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %580) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %582 = or i16 %581, 1
  %583 = load ptr, ptr %526, align 4
  %584 = getelementptr i8, ptr %583, i32 58
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %584, i16 %582) #12, !srcloc !12
  %585 = load ptr, ptr %526, align 4
  %586 = getelementptr i8, ptr %585, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %586, i16 %572) #12, !srcloc !12
  br label %630

587:                                              ; preds = %520
  %588 = and i16 %540, -17
  %589 = load ptr, ptr %526, align 4
  %590 = getelementptr i8, ptr %589, i32 92
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %590, i16 %588) #12, !srcloc !12
  %591 = load ptr, ptr %526, align 4
  %592 = getelementptr i8, ptr %591, i32 32
  %593 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %592) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %594 = and i16 %593, -48
  %595 = load ptr, ptr %526, align 4
  %596 = getelementptr i8, ptr %595, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %596, i16 %594) #12, !srcloc !12
  br label %597

597:                                              ; preds = %605, %587
  %598 = phi i32 [ 0, %587 ], [ %606, %605 ]
  %599 = load ptr, ptr %526, align 4
  %600 = getelementptr i8, ptr %599, i32 32
  %601 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %600) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %602 = icmp eq i32 %598, 1000001
  br i1 %602, label %603, label %605

603:                                              ; preds = %597
  %604 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 32, i32 noundef 0) #13
  br label %610

605:                                              ; preds = %597
  %606 = add nuw nsw i32 %598, 1
  %607 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %607(i32 noundef 214748) #12
  %608 = and i16 %601, 15
  %609 = icmp eq i16 %608, 0
  br i1 %609, label %610, label %597

610:                                              ; preds = %605, %603
  %611 = load ptr, ptr %526, align 4
  %612 = getelementptr i8, ptr %611, i32 34
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %612, i16 16384) #12, !srcloc !12
  %613 = load ptr, ptr %526, align 4
  %614 = getelementptr i8, ptr %613, i32 48
  %615 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %614) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %616 = load ptr, ptr %526, align 4
  %617 = getelementptr i8, ptr %616, i32 48
  %618 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %617) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %619 = and i16 %618, -1793
  %620 = load ptr, ptr %526, align 4
  %621 = getelementptr i8, ptr %620, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %621, i16 %619) #12, !srcloc !12
  %622 = load ptr, ptr %526, align 4
  %623 = getelementptr i8, ptr %622, i32 54
  %624 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %623) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %625 = or i16 %624, 1
  %626 = load ptr, ptr %526, align 4
  %627 = getelementptr i8, ptr %626, i32 54
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %627, i16 %625) #12, !srcloc !12
  %628 = load ptr, ptr %526, align 4
  %629 = getelementptr i8, ptr %628, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %629, i16 %615) #12, !srcloc !12
  br label %630

630:                                              ; preds = %610, %565
  %631 = load ptr, ptr %526, align 4
  %632 = getelementptr i8, ptr %631, i32 48
  %633 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %632) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %634 = load ptr, ptr %526, align 4
  %635 = getelementptr i8, ptr %634, i32 48
  %636 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %635) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %637 = and i16 %636, -1793
  %638 = load ptr, ptr %526, align 4
  %639 = getelementptr i8, ptr %638, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %639, i16 %637) #12, !srcloc !12
  %640 = load ptr, ptr %526, align 4
  %641 = getelementptr i8, ptr %640, i32 56
  %642 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %641) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %643 = or i16 %642, 1
  %644 = load ptr, ptr %526, align 4
  %645 = getelementptr i8, ptr %644, i32 56
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %645, i16 %643) #12, !srcloc !12
  %646 = load ptr, ptr %526, align 4
  %647 = getelementptr i8, ptr %646, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %647, i16 %633) #12, !srcloc !12
  %648 = load ptr, ptr %1, align 4
  %649 = getelementptr inbounds %struct.r8a66597_pipe, ptr %648, i32 0, i32 4
  %650 = load i32, ptr %649, align 4
  %651 = load ptr, ptr %526, align 4
  %652 = getelementptr i8, ptr %651, i32 %650
  %653 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %652) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %654 = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %648, i32 0, i32 1
  %655 = load i16, ptr %654, align 4
  %656 = icmp ne i16 %655, 0
  %657 = zext i1 %656 to i32
  %658 = lshr i16 %653, 1
  %659 = and i16 %658, 1
  %660 = zext i16 %659 to i32
  %661 = and i32 %657, %660
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %671, label %663

663:                                              ; preds = %630
  %664 = load i32, ptr %649, align 4
  %665 = load ptr, ptr %526, align 4
  %666 = getelementptr i8, ptr %665, i32 %664
  %667 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %666) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %668 = and i16 %667, -4
  %669 = load ptr, ptr %526, align 4
  %670 = getelementptr i8, ptr %669, i32 %664
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %670, i16 %668) #12, !srcloc !12
  br label %671

671:                                              ; preds = %663, %630
  %672 = load i32, ptr %649, align 4
  %673 = load ptr, ptr %526, align 4
  %674 = getelementptr i8, ptr %673, i32 %672
  %675 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %674) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %676 = and i16 %675, -4
  %677 = or i16 %676, 1
  %678 = load ptr, ptr %526, align 4
  %679 = getelementptr i8, ptr %678, i32 %672
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %679, i16 %677) #12, !srcloc !12
  br label %682

680:                                              ; preds = %5
  %681 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #13
  br label %682

682:                                              ; preds = %680, %671, %511, %392, %312, %197, %185
  %683 = phi i32 [ -32, %185 ], [ 0, %680 ], [ 0, %671 ], [ 0, %511 ], [ 0, %197 ], [ 0, %312 ], [ 0, %392 ]
  ret i32 %683
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pipe_irq_disable(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 48
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %5) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 48
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %8) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %10 = and i16 %9, -1793
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr i8, ptr %11, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %12, i16 %10) #12, !srcloc !12
  %13 = zext i16 %1 to i32
  %14 = shl nuw i32 1, %13
  %15 = trunc i32 %14 to i16
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr i8, ptr %16, i32 54
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %17) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %19 = xor i16 %15, -1
  %20 = and i16 %18, %19
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr i8, ptr %21, i32 54
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %22, i16 %20) #12, !srcloc !12
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr i8, ptr %23, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %24, i16 %6) #12, !srcloc !12
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr i8, ptr %25, i32 48
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %26) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %28 = load ptr, ptr %3, align 4
  %29 = getelementptr i8, ptr %28, i32 48
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %29) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %31 = and i16 %30, -1793
  %32 = load ptr, ptr %3, align 4
  %33 = getelementptr i8, ptr %32, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %33, i16 %31) #12, !srcloc !12
  %34 = load ptr, ptr %3, align 4
  %35 = getelementptr i8, ptr %34, i32 56
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %35) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %37 = and i16 %36, %19
  %38 = load ptr, ptr %3, align 4
  %39 = getelementptr i8, ptr %38, i32 56
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %39, i16 %37) #12, !srcloc !12
  %40 = load ptr, ptr %3, align 4
  %41 = getelementptr i8, ptr %40, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %41, i16 %27) #12, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pipe_irq_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2) unnamed_addr #2 {
  %4 = icmp eq i16 %2, 0
  br i1 %4, label %5, label %29

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 128
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 48
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %13) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %15 = load ptr, ptr %11, align 4
  %16 = getelementptr i8, ptr %15, i32 48
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %16) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %18 = and i16 %17, -1793
  %19 = load ptr, ptr %11, align 4
  %20 = getelementptr i8, ptr %19, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %20, i16 %18) #12, !srcloc !12
  %21 = load ptr, ptr %11, align 4
  %22 = getelementptr i8, ptr %21, i32 58
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %22) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %24 = or i16 %23, 1
  %25 = load ptr, ptr %11, align 4
  %26 = getelementptr i8, ptr %25, i32 58
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %26, i16 %24) #12, !srcloc !12
  %27 = load ptr, ptr %11, align 4
  %28 = getelementptr i8, ptr %27, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %28, i16 %14) #12, !srcloc !12
  br label %51

29:                                               ; preds = %5, %3
  %30 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 48
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %32) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %34 = load ptr, ptr %30, align 4
  %35 = getelementptr i8, ptr %34, i32 48
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %35) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %37 = and i16 %36, -1793
  %38 = load ptr, ptr %30, align 4
  %39 = getelementptr i8, ptr %38, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %39, i16 %37) #12, !srcloc !12
  %40 = zext i16 %2 to i32
  %41 = shl nuw i32 1, %40
  %42 = trunc i32 %41 to i16
  %43 = load ptr, ptr %30, align 4
  %44 = getelementptr i8, ptr %43, i32 54
  %45 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %44) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %46 = or i16 %45, %42
  %47 = load ptr, ptr %30, align 4
  %48 = getelementptr i8, ptr %47, i32 54
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %48, i16 %46) #12, !srcloc !12
  %49 = load ptr, ptr %30, align 4
  %50 = getelementptr i8, ptr %49, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %50, i16 %33) #12, !srcloc !12
  br label %51

51:                                               ; preds = %29, %10
  %52 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %53 = load i32, ptr %52, align 4
  %54 = icmp ult i32 %53, 1073741824
  br i1 %54, label %77, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr i8, ptr %57, i32 48
  %59 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %58) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %60 = load ptr, ptr %56, align 4
  %61 = getelementptr i8, ptr %60, i32 48
  %62 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %61) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %63 = and i16 %62, -1793
  %64 = load ptr, ptr %56, align 4
  %65 = getelementptr i8, ptr %64, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %65, i16 %63) #12, !srcloc !12
  %66 = zext i16 %2 to i32
  %67 = shl nuw i32 1, %66
  %68 = trunc i32 %67 to i16
  %69 = load ptr, ptr %56, align 4
  %70 = getelementptr i8, ptr %69, i32 56
  %71 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %70) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %72 = or i16 %71, %68
  %73 = load ptr, ptr %56, align 4
  %74 = getelementptr i8, ptr %73, i32 56
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %74, i16 %72) #12, !srcloc !12
  %75 = load ptr, ptr %56, align 4
  %76 = getelementptr i8, ptr %75, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %76, i16 %59) #12, !srcloc !12
  br label %77

77:                                               ; preds = %55, %51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pipe_setting(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.r8a66597_td, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.r8a66597_td, ptr %1, i32 0, i32 4
  %6 = load i16, ptr %5, align 2
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %243, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 4
  %10 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.r8a66597_platdata, ptr %11, i32 0, i32 2
  %13 = load i8, ptr %12, align 2
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, i16 1024, i16 2048
  %17 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 32
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %19) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %21 = xor i16 %16, -16
  %22 = and i16 %21, %20
  %23 = or i16 %22, %16
  %24 = load ptr, ptr %17, align 4
  %25 = getelementptr i8, ptr %24, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %25, i16 %23) #12, !srcloc !12
  br label %26

26:                                               ; preds = %34, %8
  %27 = phi i32 [ 0, %8 ], [ %35, %34 ]
  %28 = load ptr, ptr %17, align 4
  %29 = getelementptr i8, ptr %28, i32 32
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %29) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %31 = icmp eq i32 %27, 1000001
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 32, i32 noundef 0) #13
  br label %39

34:                                               ; preds = %26
  %35 = add nuw nsw i32 %27, 1
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #12
  %37 = and i16 %30, 15
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %26

39:                                               ; preds = %34, %32
  %40 = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %9, i32 0, i32 1
  %41 = load i16, ptr %40, align 4
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %101, label %43

43:                                               ; preds = %39
  %44 = zext i16 %41 to i32
  %45 = shl nuw nsw i32 %44, 1
  %46 = add nuw nsw i32 %45, 110
  %47 = load ptr, ptr %17, align 4
  %48 = getelementptr i8, ptr %47, i32 %46
  %49 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %48) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %50 = or i16 %49, 512
  %51 = load ptr, ptr %17, align 4
  %52 = getelementptr i8, ptr %51, i32 %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %52, i16 %50) #12, !srcloc !12
  %53 = load i16, ptr %40, align 4
  %54 = zext i16 %53 to i32
  %55 = shl nuw nsw i32 %54, 1
  %56 = add nuw nsw i32 %55, 110
  %57 = load ptr, ptr %17, align 4
  %58 = getelementptr i8, ptr %57, i32 %56
  %59 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %58) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %60 = and i16 %59, -513
  %61 = load ptr, ptr %17, align 4
  %62 = getelementptr i8, ptr %61, i32 %56
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %62, i16 %60) #12, !srcloc !12
  %63 = load i16, ptr %40, align 4
  %64 = load ptr, ptr %17, align 4
  %65 = getelementptr i8, ptr %64, i32 100
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %65, i16 %63) #12, !srcloc !12
  %66 = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %9, i32 0, i32 9
  %67 = load i16, ptr %66, align 4
  %68 = icmp eq i16 %67, 0
  %69 = select i1 %68, i16 16, i16 0
  %70 = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %9, i32 0, i32 5
  %71 = load i16, ptr %70, align 4
  %72 = icmp eq i16 %71, 16384
  %73 = select i1 %68, i16 16, i16 640
  %74 = select i1 %72, i16 %73, i16 %69
  %75 = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %9, i32 0, i32 3
  %76 = load i16, ptr %75, align 4
  %77 = or i16 %76, %71
  %78 = or i16 %77, %74
  %79 = load ptr, ptr %17, align 4
  %80 = getelementptr i8, ptr %79, i32 104
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %80, i16 %78) #12, !srcloc !12
  %81 = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %9, i32 0, i32 7
  %82 = load i16, ptr %81, align 4
  %83 = shl i16 %82, 10
  %84 = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %9, i32 0, i32 6
  %85 = load i16, ptr %84, align 2
  %86 = or i16 %83, %85
  %87 = load ptr, ptr %17, align 4
  %88 = getelementptr i8, ptr %87, i32 106
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %88, i16 %86) #12, !srcloc !12
  %89 = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %9, i32 0, i32 2
  %90 = load i16, ptr %89, align 2
  %91 = shl i16 %90, 12
  %92 = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %9, i32 0, i32 4
  %93 = load i16, ptr %92, align 2
  %94 = or i16 %91, %93
  %95 = load ptr, ptr %17, align 4
  %96 = getelementptr i8, ptr %95, i32 108
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %96, i16 %94) #12, !srcloc !12
  %97 = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %9, i32 0, i32 8
  %98 = load i16, ptr %97, align 2
  %99 = load ptr, ptr %17, align 4
  %100 = getelementptr i8, ptr %99, i32 110
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %100, i16 %98) #12, !srcloc !12
  br label %101

101:                                              ; preds = %43, %39
  %102 = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 8
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 10
  %105 = load i32, ptr %104, align 4
  %106 = lshr i32 %105, 7
  %107 = and i32 %106, 1
  %108 = xor i32 %107, 1
  %109 = getelementptr %struct.usb_device, ptr %103, i32 0, i32 10, i32 %108
  %110 = load i32, ptr %109, align 4
  %111 = lshr i32 %105, 15
  %112 = and i32 %111, 15
  %113 = shl nuw nsw i32 1, %112
  %114 = and i32 %113, %110
  %115 = icmp ne i32 %114, 0
  %116 = and i32 %105, -1073741824
  %117 = icmp eq i32 %116, -2147483648
  %118 = select i1 %115, i1 true, i1 %117
  br i1 %118, label %203, label %119

119:                                              ; preds = %101
  %120 = load ptr, ptr %1, align 4
  %121 = getelementptr inbounds %struct.r8a66597_pipe, ptr %120, i32 0, i32 4
  %122 = load i32, ptr %121, align 4
  %123 = load ptr, ptr %17, align 4
  %124 = getelementptr i8, ptr %123, i32 %122
  %125 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %124) #12
  tail call void asm sideeffect "dsb ", "~{memory}"() #12
  %126 = or i16 %125, 256
  %127 = load ptr, ptr %17, align 4
  %128 = getelementptr i8, ptr %127, i32 %122
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %128, i16 %126) #12, !srcloc !12
  %129 = load i32, ptr %104, align 4
  %130 = and i32 %129, 32512
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %119
  %133 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 4
  br label %138

134:                                              ; preds = %119
  %135 = load ptr, ptr %102, align 4
  %136 = getelementptr inbounds %struct.usb_device, ptr %135, i32 0, i32 15, i32 8
  %137 = load ptr, ptr %136, align 8
  br label %138

138:                                              ; preds = %134, %132
  %139 = phi ptr [ %133, %132 ], [ %137, %134 ]
  %140 = icmp eq ptr %139, null
  br i1 %140, label %155, label %141

141:                                              ; preds = %138
  %142 = and i32 %129, 128
  %143 = icmp eq i32 %142, 0
  %144 = getelementptr inbounds %struct.r8a66597_device, ptr %139, i32 0, i32 4
  %145 = getelementptr inbounds %struct.r8a66597_device, ptr %139, i32 0, i32 3
  %146 = select i1 %143, ptr %144, ptr %145
  %147 = lshr i32 %129, 15
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 15
  %150 = zext i8 %149 to i16
  %151 = shl nuw i16 1, %150
  %152 = xor i16 %151, -1
  %153 = load i16, ptr %146, align 2
  %154 = and i16 %153, %152
  store i16 %154, ptr %146, align 2
  br label %155

155:                                              ; preds = %141, %138
  %156 = load ptr, ptr %1, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %190, label %158

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %156, i32 0, i32 1
  %160 = load i16, ptr %159, align 4
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %190, label %162

162:                                              ; preds = %158
  tail call fastcc void @pipe_stop(ptr noundef %0, ptr noundef nonnull %156) #12
  %163 = getelementptr inbounds %struct.r8a66597_pipe, ptr %156, i32 0, i32 4
  %164 = load i32, ptr %163, align 4
  %165 = load ptr, ptr %17, align 4
  %166 = getelementptr i8, ptr %165, i32 %164
  %167 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %166) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %168 = or i16 %167, 512
  %169 = load ptr, ptr %17, align 4
  %170 = getelementptr i8, ptr %169, i32 %164
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %170, i16 %168) #12, !srcloc !12
  %171 = load i32, ptr %163, align 4
  %172 = load ptr, ptr %17, align 4
  %173 = getelementptr i8, ptr %172, i32 %171
  %174 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %173) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %175 = load i32, ptr %163, align 4
  %176 = load ptr, ptr %17, align 4
  %177 = getelementptr i8, ptr %176, i32 %175
  %178 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %177) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %179 = load i32, ptr %163, align 4
  %180 = load ptr, ptr %17, align 4
  %181 = getelementptr i8, ptr %180, i32 %179
  %182 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %181) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %183 = load i32, ptr %163, align 4
  %184 = load ptr, ptr %17, align 4
  %185 = getelementptr i8, ptr %184, i32 %183
  %186 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %185) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %187 = and i16 %186, -513
  %188 = load ptr, ptr %17, align 4
  %189 = getelementptr i8, ptr %188, i32 %183
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %189, i16 %187) #12, !srcloc !12
  br label %190

190:                                              ; preds = %162, %158, %155
  %191 = load ptr, ptr %102, align 4
  %192 = load i32, ptr %104, align 4
  %193 = lshr i32 %192, 7
  %194 = and i32 %193, 1
  %195 = xor i32 %194, 1
  %196 = getelementptr %struct.usb_device, ptr %191, i32 0, i32 10, i32 %195
  %197 = load i32, ptr %196, align 4
  %198 = lshr i32 %192, 15
  %199 = and i32 %198, 15
  %200 = shl nuw nsw i32 1, %199
  %201 = or i32 %200, %197
  store i32 %201, ptr %196, align 4
  %202 = load i32, ptr %104, align 4
  br label %203

203:                                              ; preds = %190, %101
  %204 = phi i32 [ %202, %190 ], [ %105, %101 ]
  %205 = load ptr, ptr %1, align 4
  %206 = and i32 %204, 32512
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %203
  %209 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 4
  br label %214

210:                                              ; preds = %203
  %211 = load ptr, ptr %102, align 4
  %212 = getelementptr inbounds %struct.usb_device, ptr %211, i32 0, i32 15, i32 8
  %213 = load ptr, ptr %212, align 8
  br label %214

214:                                              ; preds = %210, %208
  %215 = phi ptr [ %209, %208 ], [ %213, %210 ]
  %216 = icmp eq ptr %215, null
  br i1 %216, label %243, label %217

217:                                              ; preds = %214
  %218 = and i32 %204, 128
  %219 = icmp eq i32 %218, 0
  %220 = getelementptr inbounds %struct.r8a66597_device, ptr %215, i32 0, i32 4
  %221 = getelementptr inbounds %struct.r8a66597_device, ptr %215, i32 0, i32 3
  %222 = select i1 %219, ptr %220, ptr %221
  %223 = lshr i32 %204, 15
  %224 = and i32 %223, 15
  %225 = load i16, ptr %222, align 2
  %226 = zext i16 %225 to i32
  %227 = shl nuw nsw i32 1, %224
  %228 = and i32 %227, %226
  %229 = icmp eq i32 %228, 0
  %230 = getelementptr inbounds %struct.r8a66597_pipe, ptr %205, i32 0, i32 4
  %231 = load i32, ptr %230, align 4
  %232 = load ptr, ptr %17, align 4
  %233 = getelementptr i8, ptr %232, i32 %231
  %234 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %233) #12
  tail call void asm sideeffect "dsb ", "~{memory}"() #12
  br i1 %229, label %239, label %235

235:                                              ; preds = %217
  %236 = or i16 %234, 128
  %237 = load ptr, ptr %17, align 4
  %238 = getelementptr i8, ptr %237, i32 %231
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %238, i16 %236) #12, !srcloc !12
  br label %243

239:                                              ; preds = %217
  %240 = or i16 %234, 256
  %241 = load ptr, ptr %17, align 4
  %242 = getelementptr i8, ptr %241, i32 %231
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %242, i16 %240) #12, !srcloc !12
  br label %243

243:                                              ; preds = %239, %235, %214, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pipe_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.r8a66597_pipe, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 %4
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %7) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %9 = and i16 %8, 3
  %10 = icmp eq i16 %9, 3
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  %12 = load i32, ptr %3, align 4
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr i8, ptr %13, i32 %12
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %14) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %16 = and i16 %15, -4
  %17 = or i16 %16, 2
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr i8, ptr %18, i32 %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %19, i16 %17) #12, !srcloc !12
  br label %20

20:                                               ; preds = %11, %2
  %21 = load i32, ptr %3, align 4
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr i8, ptr %22, i32 %21
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %23) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %25 = and i16 %24, -4
  %26 = load ptr, ptr %5, align 4
  %27 = getelementptr i8, ptr %26, i32 %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %27, i16 %25) #12, !srcloc !12
  %28 = load i32, ptr %3, align 4
  br label %29

29:                                               ; preds = %37, %20
  %30 = phi i32 [ 0, %20 ], [ %38, %37 ]
  %31 = load ptr, ptr %5, align 4
  %32 = getelementptr i8, ptr %31, i32 %28
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %32) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %34 = icmp eq i32 %30, 1000001
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %28, i32 noundef 0) #13
  br label %42

37:                                               ; preds = %29
  %38 = add nuw nsw i32 %30, 1
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748) #12
  %40 = and i16 %33, 32
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %29

42:                                               ; preds = %37, %35
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fifo_change_from_pipe(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.r8a66597_platdata, ptr %4, i32 0, i32 2
  %6 = load i8, ptr %5, align 2
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, i16 1024, i16 2048
  %10 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 32
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %12) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %14 = xor i16 %9, -16
  %15 = and i16 %14, %13
  %16 = or i16 %15, %9
  %17 = load ptr, ptr %10, align 4
  %18 = getelementptr i8, ptr %17, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %18, i16 %16) #12, !srcloc !12
  br label %19

19:                                               ; preds = %27, %2
  %20 = phi i32 [ 0, %2 ], [ %28, %27 ]
  %21 = load ptr, ptr %10, align 4
  %22 = getelementptr i8, ptr %21, i32 32
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %22) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %24 = icmp eq i32 %20, 1000001
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 32, i32 noundef 0) #13
  br label %32

27:                                               ; preds = %19
  %28 = add nuw nsw i32 %20, 1
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #12
  %30 = and i16 %23, 15
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %19

32:                                               ; preds = %27, %25
  %33 = load ptr, ptr %10, align 4
  %34 = getelementptr i8, ptr %33, i32 40
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %34) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %36 = and i16 %35, %14
  %37 = or i16 %36, %9
  %38 = load ptr, ptr %10, align 4
  %39 = getelementptr i8, ptr %38, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %39, i16 %37) #12, !srcloc !12
  %40 = load ptr, ptr %10, align 4
  %41 = getelementptr i8, ptr %40, i32 44
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %41) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %43 = and i16 %42, %14
  %44 = or i16 %43, %9
  %45 = load ptr, ptr %10, align 4
  %46 = getelementptr i8, ptr %45, i32 44
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %46, i16 %44) #12, !srcloc !12
  %47 = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %1, i32 0, i32 1
  %48 = load i16, ptr %47, align 4
  %49 = or i16 %48, %9
  %50 = getelementptr inbounds %struct.r8a66597_pipe, ptr %1, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = load ptr, ptr %10, align 4
  %53 = getelementptr i8, ptr %52, i32 %51
  %54 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %53) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %55 = and i16 %54, %14
  %56 = or i16 %49, %55
  %57 = load ptr, ptr %10, align 4
  %58 = getelementptr i8, ptr %57, i32 %51
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %58, i16 %56) #12, !srcloc !12
  %59 = load i32, ptr %50, align 4
  %60 = load i16, ptr %47, align 4
  br label %61

61:                                               ; preds = %70, %32
  %62 = phi i32 [ 0, %32 ], [ %71, %70 ]
  %63 = load ptr, ptr %10, align 4
  %64 = getelementptr i8, ptr %63, i32 %59
  %65 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %64) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %66 = icmp eq i32 %62, 1000001
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = zext i16 %60 to i32
  %69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %59, i32 noundef %68) #13
  br label %75

70:                                               ; preds = %61
  %71 = add nuw nsw i32 %62, 1
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748) #12
  %73 = and i16 %65, 15
  %74 = icmp eq i16 %73, %60
  br i1 %74, label %75, label %61

75:                                               ; preds = %70, %67
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @packet_write(ptr noundef %0, i16 noundef zeroext %1) unnamed_addr #2 {
  %3 = zext i16 %1 to i32
  %4 = getelementptr %struct.r8a66597, ptr %0, i32 0, i32 6, i32 %3
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  %7 = getelementptr i8, ptr %5, i32 -8
  %8 = icmp eq ptr %7, null
  %9 = or i1 %6, %8
  br i1 %9, label %260, label %10, !prof !17

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %5, i32 -4
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %7, align 4
  tail call fastcc void @fifo_change_from_pipe(ptr noundef %0, ptr noundef %13)
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr inbounds %struct.r8a66597_pipe, ptr %14, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 %16
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %19) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %21 = and i16 %20, 8192
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %26, !prof !17

23:                                               ; preds = %10
  %24 = load ptr, ptr %7, align 4
  tail call fastcc void @pipe_stop(ptr noundef %0, ptr noundef %24)
  tail call fastcc void @pipe_irq_disable(ptr noundef %0, i16 noundef zeroext %1)
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %3) #13
  tail call fastcc void @finish_request(ptr noundef %0, ptr noundef nonnull %7, i16 noundef zeroext %1, ptr noundef %12, i32 noundef -32)
  br label %260

26:                                               ; preds = %10
  %27 = getelementptr i8, ptr %5, i32 18
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  %30 = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 10
  %31 = load i32, ptr %30, align 4
  %32 = icmp ult i32 %31, 1073741824
  %33 = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 14
  %34 = load ptr, ptr %33, align 4
  br i1 %32, label %35, label %43

35:                                               ; preds = %26
  %36 = getelementptr i8, ptr %5, i32 12
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr %struct.urb, ptr %12, i32 0, i32 29, i32 %37
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr %struct.urb, ptr %12, i32 0, i32 29, i32 %37, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = tail call i32 @llvm.smin.i32(i32 %41, i32 %29)
  br label %50

43:                                               ; preds = %26
  %44 = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 20
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 19
  %47 = load i32, ptr %46, align 4
  %48 = sub i32 %47, %45
  %49 = tail call i32 @llvm.umin.i32(i32 %48, i32 %29)
  br label %50

50:                                               ; preds = %43, %35
  %51 = phi i32 [ %39, %35 ], [ %45, %43 ]
  %52 = phi i32 [ %42, %35 ], [ %49, %43 ]
  %53 = getelementptr i8, ptr %34, i32 %51
  %54 = icmp eq i16 %1, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %50
  %56 = shl nuw i32 1, %3
  %57 = trunc i32 %56 to i16
  %58 = xor i16 %57, -1
  %59 = load ptr, ptr %17, align 4
  %60 = getelementptr i8, ptr %59, i32 74
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %60, i16 %58) #12, !srcloc !12
  %61 = load ptr, ptr %33, align 4
  br label %62

62:                                               ; preds = %55, %50
  %63 = phi ptr [ %61, %55 ], [ %34, %50 ]
  %64 = icmp eq ptr %63, null
  br i1 %64, label %171, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr %7, align 4
  %67 = load ptr, ptr %17, align 4
  %68 = getelementptr inbounds %struct.r8a66597_pipe, ptr %66, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr i8, ptr %67, i32 %69
  %71 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.r8a66597_platdata, ptr %72, i32 0, i32 2
  %74 = load i8, ptr %73, align 2
  %75 = and i8 %74, 1
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %121, label %77

77:                                               ; preds = %65
  %78 = sdiv i32 %52, 4
  tail call void @__raw_writesl(ptr noundef %70, ptr noundef %53, i32 noundef %78) #12
  %79 = and i32 %52, 3
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %158, label %81

81:                                               ; preds = %77
  %82 = shl nsw i32 %78, 2
  %83 = getelementptr i8, ptr %53, i32 %82
  %84 = getelementptr i8, ptr %70, i32 3
  %85 = load ptr, ptr %17, align 4
  %86 = getelementptr i8, ptr %85, i32 32
  %87 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %86) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %88 = and i16 %87, 256
  %89 = icmp eq i16 %88, 0
  %90 = load i8, ptr %83, align 1
  br i1 %89, label %92, label %91

91:                                               ; preds = %81
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !19
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %70, i8 %90) #12, !srcloc !20
  br label %93

92:                                               ; preds = %81
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !19
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %84, i8 %90) #12, !srcloc !20
  br label %93

93:                                               ; preds = %92, %91
  %94 = icmp eq i32 %79, 1
  br i1 %94, label %158, label %95

95:                                               ; preds = %93
  %96 = load ptr, ptr %17, align 4
  %97 = getelementptr i8, ptr %96, i32 32
  %98 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %97) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %99 = and i16 %98, 256
  %100 = icmp eq i16 %99, 0
  %101 = getelementptr i8, ptr %83, i32 1
  %102 = load i8, ptr %101, align 1
  br i1 %100, label %105, label %103

103:                                              ; preds = %95
  %104 = getelementptr i8, ptr %70, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !19
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %104, i8 %102) #12, !srcloc !20
  br label %107

105:                                              ; preds = %95
  %106 = getelementptr i8, ptr %84, i32 -1
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !19
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %106, i8 %102) #12, !srcloc !20
  br label %107

107:                                              ; preds = %105, %103
  %108 = icmp eq i32 %79, 2
  br i1 %108, label %158, label %109

109:                                              ; preds = %107
  %110 = load ptr, ptr %17, align 4
  %111 = getelementptr i8, ptr %110, i32 32
  %112 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %111) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %113 = and i16 %112, 256
  %114 = icmp eq i16 %113, 0
  %115 = getelementptr i8, ptr %83, i32 2
  %116 = load i8, ptr %115, align 1
  br i1 %114, label %119, label %117

117:                                              ; preds = %109
  %118 = getelementptr i8, ptr %70, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !19
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %118, i8 %116) #12, !srcloc !20
  br label %158

119:                                              ; preds = %109
  %120 = getelementptr i8, ptr %84, i32 -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !19
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %120, i8 %116) #12, !srcloc !20
  br label %158

121:                                              ; preds = %65
  %122 = and i32 %52, 1
  %123 = sdiv i32 %52, 2
  tail call void @__raw_writesw(ptr noundef %70, ptr noundef %53, i32 noundef %123) #12
  %124 = icmp eq i32 %122, 0
  br i1 %124, label %158, label %125, !prof !21

125:                                              ; preds = %121
  %126 = getelementptr i16, ptr %53, i32 %123
  %127 = load ptr, ptr %71, align 4
  %128 = getelementptr inbounds %struct.r8a66597_platdata, ptr %127, i32 0, i32 2
  %129 = load i8, ptr %128, align 2
  %130 = and i8 %129, 32
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %141, label %132

132:                                              ; preds = %125
  %133 = getelementptr inbounds %struct.r8a66597_pipe, ptr %66, i32 0, i32 2
  %134 = load i32, ptr %133, align 4
  %135 = load ptr, ptr %17, align 4
  %136 = getelementptr i8, ptr %135, i32 %134
  %137 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %136) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %138 = and i16 %137, -1025
  %139 = load ptr, ptr %17, align 4
  %140 = getelementptr i8, ptr %139, i32 %134
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %140, i16 %138) #12, !srcloc !12
  br label %141

141:                                              ; preds = %132, %125
  %142 = load i16, ptr %126, align 2
  %143 = trunc i16 %142 to i8
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !19
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %70, i8 %143) #12, !srcloc !20
  %144 = load ptr, ptr %71, align 4
  %145 = getelementptr inbounds %struct.r8a66597_platdata, ptr %144, i32 0, i32 2
  %146 = load i8, ptr %145, align 2
  %147 = and i8 %146, 32
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %158, label %149

149:                                              ; preds = %141
  %150 = getelementptr inbounds %struct.r8a66597_pipe, ptr %66, i32 0, i32 2
  %151 = load i32, ptr %150, align 4
  %152 = load ptr, ptr %17, align 4
  %153 = getelementptr i8, ptr %152, i32 %151
  %154 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %153) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %155 = or i16 %154, 1024
  %156 = load ptr, ptr %17, align 4
  %157 = getelementptr i8, ptr %156, i32 %151
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %157, i16 %155) #12, !srcloc !12
  br label %158

158:                                              ; preds = %149, %141, %121, %119, %117, %107, %93, %77
  %159 = load i32, ptr %30, align 4
  %160 = icmp ugt i32 %159, -1073741825
  br i1 %160, label %161, label %165

161:                                              ; preds = %158
  %162 = load i16, ptr %27, align 2
  %163 = zext i16 %162 to i32
  %164 = icmp eq i32 %52, %163
  br i1 %164, label %171, label %165

165:                                              ; preds = %161, %158
  %166 = load ptr, ptr %7, align 4
  %167 = getelementptr inbounds %struct.r8a66597_pipe, ptr %166, i32 0, i32 3
  %168 = load i32, ptr %167, align 4
  %169 = load ptr, ptr %17, align 4
  %170 = getelementptr i8, ptr %169, i32 %168
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %170, i16 -32768) #12, !srcloc !12
  br label %171

171:                                              ; preds = %165, %161, %62
  %172 = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 20
  %173 = load i32, ptr %172, align 4
  %174 = add i32 %173, %52
  store i32 %174, ptr %172, align 4
  %175 = load i32, ptr %30, align 4
  %176 = icmp ult i32 %175, 1073741824
  br i1 %176, label %177, label %191

177:                                              ; preds = %171
  %178 = getelementptr i8, ptr %5, i32 12
  %179 = load i32, ptr %178, align 4
  %180 = getelementptr %struct.urb, ptr %12, i32 0, i32 29, i32 %179, i32 2
  store i32 %52, ptr %180, align 4
  %181 = load i32, ptr %178, align 4
  %182 = getelementptr %struct.urb, ptr %12, i32 0, i32 29, i32 %181, i32 3
  store i32 0, ptr %182, align 4
  %183 = load i32, ptr %178, align 4
  %184 = add i32 %183, 1
  store i32 %184, ptr %178, align 4
  %185 = load i32, ptr %30, align 4
  %186 = icmp ult i32 %185, 1073741824
  br i1 %186, label %187, label %191

187:                                              ; preds = %177
  %188 = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 24
  %189 = load i32, ptr %188, align 4
  %190 = icmp eq i32 %189, %184
  br i1 %190, label %201, label %191

191:                                              ; preds = %187, %177, %171
  %192 = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 19
  %193 = load i32, ptr %192, align 4
  %194 = load i32, ptr %172, align 4
  %195 = icmp ugt i32 %193, %194
  br i1 %195, label %196, label %201

196:                                              ; preds = %191
  %197 = getelementptr i8, ptr %5, i32 20
  %198 = load i8, ptr %197, align 4
  %199 = and i8 %198, 3
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %259, label %201

201:                                              ; preds = %196, %191, %187
  %202 = load ptr, ptr %17, align 4
  %203 = getelementptr i8, ptr %202, i32 48
  %204 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %203) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %205 = load ptr, ptr %17, align 4
  %206 = getelementptr i8, ptr %205, i32 48
  %207 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %206) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %208 = and i16 %207, -1793
  %209 = load ptr, ptr %17, align 4
  %210 = getelementptr i8, ptr %209, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %210, i16 %208) #12, !srcloc !12
  %211 = shl nuw i32 1, %3
  %212 = trunc i32 %211 to i16
  %213 = load ptr, ptr %17, align 4
  %214 = getelementptr i8, ptr %213, i32 54
  %215 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %214) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %216 = xor i16 %212, -1
  %217 = and i16 %215, %216
  %218 = load ptr, ptr %17, align 4
  %219 = getelementptr i8, ptr %218, i32 54
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %219, i16 %217) #12, !srcloc !12
  %220 = load ptr, ptr %17, align 4
  %221 = getelementptr i8, ptr %220, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %221, i16 %204) #12, !srcloc !12
  %222 = load ptr, ptr %17, align 4
  %223 = getelementptr i8, ptr %222, i32 48
  %224 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %223) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %225 = load ptr, ptr %17, align 4
  %226 = getelementptr i8, ptr %225, i32 48
  %227 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %226) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %228 = and i16 %227, -1793
  %229 = load ptr, ptr %17, align 4
  %230 = getelementptr i8, ptr %229, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %230, i16 %228) #12, !srcloc !12
  %231 = load ptr, ptr %17, align 4
  %232 = getelementptr i8, ptr %231, i32 58
  %233 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %232) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %234 = or i16 %233, %212
  %235 = load ptr, ptr %17, align 4
  %236 = getelementptr i8, ptr %235, i32 58
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %236, i16 %234) #12, !srcloc !12
  %237 = load ptr, ptr %17, align 4
  %238 = getelementptr i8, ptr %237, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %238, i16 %224) #12, !srcloc !12
  %239 = load i32, ptr %30, align 4
  %240 = icmp ult i32 %239, 1073741824
  br i1 %240, label %260, label %241

241:                                              ; preds = %201
  %242 = load ptr, ptr %17, align 4
  %243 = getelementptr i8, ptr %242, i32 48
  %244 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %243) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %245 = load ptr, ptr %17, align 4
  %246 = getelementptr i8, ptr %245, i32 48
  %247 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %246) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %248 = and i16 %247, -1793
  %249 = load ptr, ptr %17, align 4
  %250 = getelementptr i8, ptr %249, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %250, i16 %248) #12, !srcloc !12
  %251 = load ptr, ptr %17, align 4
  %252 = getelementptr i8, ptr %251, i32 56
  %253 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %252) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %254 = or i16 %253, %212
  %255 = load ptr, ptr %17, align 4
  %256 = getelementptr i8, ptr %255, i32 56
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %256, i16 %254) #12, !srcloc !12
  %257 = load ptr, ptr %17, align 4
  %258 = getelementptr i8, ptr %257, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %258, i16 %244) #12, !srcloc !12
  br label %260

259:                                              ; preds = %196
  tail call fastcc void @pipe_irq_enable(ptr noundef %0, ptr noundef %12, i16 noundef zeroext %1)
  br label %260

260:                                              ; preds = %259, %241, %201, %23, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @packet_read(ptr noundef %0, i16 noundef zeroext %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = zext i16 %1 to i32
  %5 = getelementptr %struct.r8a66597, ptr %0, i32 0, i32 6, i32 %4
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  %8 = getelementptr i8, ptr %6, i32 -8
  %9 = icmp eq ptr %8, null
  %10 = or i1 %7, %9
  br i1 %10, label %145, label %11, !prof !17

11:                                               ; preds = %2
  %12 = getelementptr i8, ptr %6, i32 -4
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %8, align 4
  tail call fastcc void @fifo_change_from_pipe(ptr noundef %0, ptr noundef %14)
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr inbounds %struct.r8a66597_pipe, ptr %15, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 %17
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %20) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %22 = zext i16 %21 to i32
  %23 = and i32 %22, 8192
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29, !prof !17

25:                                               ; preds = %11
  %26 = load ptr, ptr %8, align 4
  tail call fastcc void @pipe_stop(ptr noundef %0, ptr noundef %26)
  tail call fastcc void @pipe_irq_disable(ptr noundef %0, i16 noundef zeroext %1)
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %4) #13
  %28 = load ptr, ptr %12, align 4
  tail call fastcc void @finish_request(ptr noundef %0, ptr noundef nonnull %8, i16 noundef zeroext %1, ptr noundef %28, i32 noundef -32)
  br label %145

29:                                               ; preds = %11
  %30 = and i32 %22, 4095
  %31 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 10
  %32 = load i32, ptr %31, align 4
  %33 = icmp ult i32 %32, 1073741824
  %34 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 14
  %35 = load ptr, ptr %34, align 4
  br i1 %33, label %36, label %45

36:                                               ; preds = %29
  %37 = getelementptr i8, ptr %6, i32 12
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr %struct.urb, ptr %13, i32 0, i32 29, i32 %38
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr %struct.urb, ptr %13, i32 0, i32 29, i32 %38, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 20
  %44 = load i32, ptr %43, align 4
  br label %51

45:                                               ; preds = %29
  %46 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 20
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 19
  %49 = load i32, ptr %48, align 4
  %50 = sub i32 %49, %47
  br label %51

51:                                               ; preds = %45, %36
  %52 = phi i32 [ %44, %36 ], [ %47, %45 ]
  %53 = phi i32 [ %40, %36 ], [ %47, %45 ]
  %54 = phi i32 [ %42, %36 ], [ %50, %45 ]
  %55 = getelementptr i8, ptr %35, i32 %53
  %56 = getelementptr i8, ptr %6, i32 18
  %57 = load i16, ptr %56, align 2
  %58 = zext i16 %57 to i32
  %59 = tail call i32 @llvm.smin.i32(i32 %54, i32 %58)
  %60 = icmp sgt i32 %30, %59
  %61 = tail call i32 @llvm.smin.i32(i32 %30, i32 %59)
  %62 = select i1 %60, i32 -75, i32 0
  %63 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 20
  %64 = add i32 %61, %52
  store i32 %64, ptr %63, align 4
  %65 = icmp eq i32 %30, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %51
  %67 = getelementptr i8, ptr %6, i32 20
  %68 = load i8, ptr %67, align 4
  %69 = or i8 %68, 1
  store i8 %69, ptr %67, align 4
  br label %70

70:                                               ; preds = %66, %51
  %71 = icmp slt i32 %30, %59
  br i1 %71, label %72, label %76

72:                                               ; preds = %70
  %73 = getelementptr i8, ptr %6, i32 20
  %74 = load i8, ptr %73, align 4
  %75 = or i8 %74, 2
  store i8 %75, ptr %73, align 4
  br label %76

76:                                               ; preds = %72, %70
  %77 = load i32, ptr %31, align 4
  %78 = icmp ult i32 %77, 1073741824
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  br i1 %60, label %104, label %94

80:                                               ; preds = %76
  %81 = getelementptr i8, ptr %6, i32 12
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr %struct.urb, ptr %13, i32 0, i32 29, i32 %82, i32 2
  store i32 %61, ptr %83, align 4
  %84 = load i32, ptr %81, align 4
  %85 = getelementptr %struct.urb, ptr %13, i32 0, i32 29, i32 %84, i32 3
  store i32 %62, ptr %85, align 4
  %86 = load i32, ptr %81, align 4
  %87 = add i32 %86, 1
  store i32 %87, ptr %81, align 4
  %88 = load i32, ptr %31, align 4
  %89 = icmp ult i32 %88, 1073741824
  br i1 %89, label %90, label %94

90:                                               ; preds = %80
  %91 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 24
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, %87
  br i1 %93, label %104, label %94

94:                                               ; preds = %90, %80, %79
  %95 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 19
  %96 = load i32, ptr %95, align 4
  %97 = load i32, ptr %63, align 4
  %98 = icmp ugt i32 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = getelementptr i8, ptr %6, i32 20
  %101 = load i8, ptr %100, align 4
  %102 = and i8 %101, 3
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %99, %94, %90, %79
  %105 = load ptr, ptr %8, align 4
  tail call fastcc void @pipe_stop(ptr noundef %0, ptr noundef %105)
  tail call fastcc void @pipe_irq_disable(ptr noundef %0, i16 noundef zeroext %1)
  br label %106

106:                                              ; preds = %104, %99
  %107 = phi i1 [ true, %104 ], [ false, %99 ]
  %108 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 14
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %141, label %111

111:                                              ; preds = %106
  %112 = icmp eq i32 %61, 0
  %113 = load ptr, ptr %8, align 4
  br i1 %112, label %114, label %119

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.r8a66597_pipe, ptr %113, i32 0, i32 3
  %116 = load i32, ptr %115, align 4
  %117 = load ptr, ptr %18, align 4
  %118 = getelementptr i8, ptr %117, i32 %116
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %118, i16 16384) #12, !srcloc !12
  br label %141

119:                                              ; preds = %111
  %120 = getelementptr inbounds %struct.r8a66597_pipe, ptr %113, i32 0, i32 1
  %121 = load i32, ptr %120, align 4
  %122 = load ptr, ptr %18, align 4
  %123 = getelementptr i8, ptr %122, i32 %121
  %124 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 3
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.r8a66597_platdata, ptr %125, i32 0, i32 2
  %127 = load i8, ptr %126, align 2
  %128 = and i8 %127, 1
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %138, label %130

130:                                              ; preds = %119
  %131 = sdiv i32 %61, 4
  tail call void @__raw_readsl(ptr noundef %123, ptr noundef %55, i32 noundef %131) #12
  %132 = and i32 %61, 3
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #12, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !23
  store i32 %135, ptr %3, align 4
  %136 = shl nsw i32 %131, 2
  %137 = getelementptr i8, ptr %55, i32 %136
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %137, ptr nonnull align 4 %3, i32 %132, i1 false) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br label %141

138:                                              ; preds = %119
  %139 = add nsw i32 %61, 1
  %140 = sdiv i32 %139, 2
  tail call void @__raw_readsw(ptr noundef %123, ptr noundef %55, i32 noundef %140) #12
  br label %141

141:                                              ; preds = %138, %134, %130, %114, %106
  %142 = icmp ne i16 %1, 0
  %143 = and i1 %142, %107
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  tail call fastcc void @finish_request(ptr noundef %0, ptr noundef nonnull %8, i16 noundef zeroext %1, ptr noundef %13, i32 noundef %62)
  br label %145

145:                                              ; preds = %144, %141, %25, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @enable_controller(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.r8a66597_platdata, ptr %3, i32 0, i32 2
  %5 = load i8, ptr %4, align 2
  %6 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 17
  %7 = load i8, ptr %6, align 4
  %8 = tail call fastcc i32 @r8a66597_clock_enable(ptr noundef %0)
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %123, label %10

10:                                               ; preds = %1
  %11 = zext i8 %5 to i16
  %12 = shl nuw nsw i16 %11, 4
  %13 = shl i8 %7, 4
  %14 = shl i16 %11, 12
  %15 = and i16 %14, -32768
  %16 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 14
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %18) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %20 = or i16 %19, %15
  %21 = load ptr, ptr %16, align 4
  %22 = getelementptr i8, ptr %21, i32 14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %22, i16 %20) #12, !srcloc !12
  %23 = load ptr, ptr %16, align 4
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %23) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %25 = or i16 %24, 1
  %26 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %26, i16 %25) #12, !srcloc !12
  %27 = load ptr, ptr %16, align 4
  %28 = getelementptr i8, ptr %27, i32 48
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %28) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %30 = or i16 %29, 1792
  %31 = load ptr, ptr %16, align 4
  %32 = getelementptr i8, ptr %31, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %32, i16 %30) #12, !srcloc !12
  %33 = and i8 %13, 32
  %34 = zext i8 %33 to i16
  %35 = load ptr, ptr %16, align 4
  %36 = getelementptr i8, ptr %35, i32 60
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %36) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %38 = or i16 %37, %34
  %39 = load ptr, ptr %16, align 4
  %40 = getelementptr i8, ptr %39, i32 60
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %40, i16 %38) #12, !srcloc !12
  %41 = load ptr, ptr %16, align 4
  %42 = getelementptr i8, ptr %41, i32 54
  %43 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %42) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %44 = or i16 %43, 1
  %45 = load ptr, ptr %16, align 4
  %46 = getelementptr i8, ptr %45, i32 54
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %46, i16 %44) #12, !srcloc !12
  %47 = load ptr, ptr %16, align 4
  %48 = getelementptr i8, ptr %47, i32 58
  %49 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %48) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %50 = or i16 %49, 1
  %51 = load ptr, ptr %16, align 4
  %52 = getelementptr i8, ptr %51, i32 58
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %52, i16 %50) #12, !srcloc !12
  %53 = and i16 %12, 256
  %54 = load ptr, ptr %16, align 4
  %55 = getelementptr i8, ptr %54, i32 32
  %56 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %55) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %57 = or i16 %56, %53
  %58 = load ptr, ptr %16, align 4
  %59 = getelementptr i8, ptr %58, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %59, i16 %57) #12, !srcloc !12
  %60 = load ptr, ptr %16, align 4
  %61 = getelementptr i8, ptr %60, i32 40
  %62 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %61) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %63 = or i16 %62, %53
  %64 = load ptr, ptr %16, align 4
  %65 = getelementptr i8, ptr %64, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %65, i16 %63) #12, !srcloc !12
  %66 = load ptr, ptr %16, align 4
  %67 = getelementptr i8, ptr %66, i32 44
  %68 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %67) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %69 = or i16 %68, %53
  %70 = load ptr, ptr %16, align 4
  %71 = getelementptr i8, ptr %70, i32 44
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %71, i16 %69) #12, !srcloc !12
  %72 = load ptr, ptr %16, align 4
  %73 = getelementptr i8, ptr %72, i32 60
  %74 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %73) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %75 = or i16 %74, 256
  %76 = load ptr, ptr %16, align 4
  %77 = getelementptr i8, ptr %76, i32 60
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %77, i16 %75) #12, !srcloc !12
  %78 = load ptr, ptr %16, align 4
  %79 = getelementptr i8, ptr %78, i32 50
  %80 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %79) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %81 = or i16 %80, 48
  %82 = load ptr, ptr %16, align 4
  %83 = getelementptr i8, ptr %82, i32 50
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %83, i16 %81) #12, !srcloc !12
  %84 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 14
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %123, label %87

87:                                               ; preds = %87, %10
  %88 = phi i32 [ %120, %87 ], [ 0, %10 ]
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %89, i16 96, i16 32
  %91 = select i1 %89, i32 0, i32 2
  %92 = load ptr, ptr %16, align 4
  %93 = getelementptr i8, ptr %92, i32 %91
  %94 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %93) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %95 = or i16 %94, %90
  %96 = load ptr, ptr %16, align 4
  %97 = getelementptr i8, ptr %96, i32 %91
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %97, i16 %95) #12, !srcloc !12
  %98 = load ptr, ptr %16, align 4
  %99 = getelementptr i8, ptr %98, i32 %91
  %100 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %99) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %101 = or i16 %100, 128
  %102 = load ptr, ptr %16, align 4
  %103 = getelementptr i8, ptr %102, i32 %91
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %103, i16 %101) #12, !srcloc !12
  %104 = select i1 %89, i32 16, i32 18
  %105 = load ptr, ptr %16, align 4
  %106 = getelementptr i8, ptr %105, i32 %104
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %106, i16 8192) #12, !srcloc !12
  %107 = select i1 %89, i32 50, i32 52
  %108 = load ptr, ptr %16, align 4
  %109 = getelementptr i8, ptr %108, i32 %107
  %110 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %109) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %111 = and i16 %110, -4097
  %112 = load ptr, ptr %16, align 4
  %113 = getelementptr i8, ptr %112, i32 %107
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %113, i16 %111) #12, !srcloc !12
  %114 = load ptr, ptr %16, align 4
  %115 = getelementptr i8, ptr %114, i32 %107
  %116 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %115) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %117 = or i16 %116, 2048
  %118 = load ptr, ptr %16, align 4
  %119 = getelementptr i8, ptr %118, i32 %107
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %119, i16 %117) #12, !srcloc !12
  %120 = add nuw i32 %88, 1
  %121 = load i32, ptr %84, align 4
  %122 = icmp ult i32 %120, %121
  br i1 %122, label %87, label %123

123:                                              ; preds = %87, %10, %1
  %124 = phi i32 [ %8, %1 ], [ 0, %10 ], [ 0, %87 ]
  ret i32 %124
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_link_urb_to_ep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_check_unlink_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @collect_usb_address_map(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 7
  br i1 %5, label %6, label %25

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %8, align 8
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 16, i32 3
  %15 = load i8, ptr %14, align 4
  %16 = icmp eq i8 %15, 9
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load i32, ptr %0, align 8
  %19 = and i32 %18, 31
  %20 = shl nuw i32 1, %19
  %21 = sdiv i32 %18, 32
  %22 = getelementptr i32, ptr %1, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = or i32 %20, %23
  store i32 %24, ptr %22, align 4
  br label %25

25:                                               ; preds = %17, %13, %10, %6, %2
  %26 = tail call ptr @usb_hub_find_child(ptr noundef %0, i32 noundef 1) #12
  %27 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 35
  %28 = load i32, ptr %27, align 4
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %40, label %30

30:                                               ; preds = %35, %25
  %31 = phi ptr [ %37, %35 ], [ %26, %25 ]
  %32 = phi i32 [ %36, %35 ], [ 1, %25 ]
  %33 = icmp eq ptr %31, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call fastcc void @collect_usb_address_map(ptr noundef nonnull %31, ptr noundef %1)
  br label %35

35:                                               ; preds = %34, %30
  %36 = add i32 %32, 1
  %37 = tail call ptr @usb_hub_find_child(ptr noundef %0, i32 noundef %36) #12
  %38 = load i32, ptr %27, align 4
  %39 = icmp sgt i32 %36, %38
  br i1 %39, label %40, label %30

40:                                               ; preds = %35, %25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_hub_find_child(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @r8a66597_port_power(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #10 {
  %4 = icmp eq i32 %1, 0
  %5 = select i1 %4, i32 8, i32 10
  %6 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void %8(i32 noundef %1, i32 noundef %2) #12
  br label %25

11:                                               ; preds = %3
  %12 = icmp eq i32 %2, 0
  %13 = getelementptr inbounds %struct.r8a66597, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 %5
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %15) #12
  tail call void asm sideeffect "dsb ", "~{memory}"() #12
  br i1 %12, label %21, label %17

17:                                               ; preds = %11
  %18 = or i16 %16, 512
  %19 = load ptr, ptr %13, align 4
  %20 = getelementptr i8, ptr %19, i32 %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %20, i16 %18) #12, !srcloc !12
  br label %25

21:                                               ; preds = %11
  %22 = and i16 %16, -513
  %23 = load ptr, ptr %13, align 4
  %24 = getelementptr i8, ptr %23, i32 %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %24, i16 %22) #12, !srcloc !12
  br label %25

25:                                               ; preds = %21, %17, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_poll_rh_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @r8a66597_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @disable_controller(ptr noundef %3)
  %4 = getelementptr inbounds %struct.r8a66597, ptr %3, i32 0, i32 14
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %7, %1
  %8 = phi i32 [ %10, %7 ], [ 0, %1 ]
  %9 = getelementptr %struct.r8a66597, ptr %3, i32 0, i32 5, i32 %8
  store i32 0, ptr %9, align 4
  %10 = add nuw i32 %8, 1
  %11 = load i32, ptr %4, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %7, label %13

13:                                               ; preds = %7, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @r8a66597_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @enable_controller(ptr noundef %3)
  %5 = getelementptr i8, ptr %3, i32 -288
  %6 = load ptr, ptr %5, align 8
  tail call void @usb_root_hub_lost_power(ptr noundef %6) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_root_hub_lost_power(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

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
!9 = !{i64 3527406}
!10 = !{i64 2151067224}
!11 = !{i64 2151068446}
!12 = !{i64 3527206}
!13 = !{i64 2148987838}
!14 = !{i64 2148983662}
!15 = !{i64 2148983737, i64 2148983764, i64 2148983811, i64 2148983833, i64 2148983861, i64 2148983881}
!16 = !{i64 2149010841}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2153182607, i64 2153183104, i64 2153182644, i64 2153182700, i64 2153182734, i64 2153182758, i64 2153182799, i64 2153182820, i64 2153182848, i64 2153182882}
!19 = !{i64 2151068049}
!20 = !{i64 3527629}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i64 3528244}
!23 = !{i64 2151067697}
