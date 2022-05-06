; ModuleID = '/llk/IR/drivers/usb/chipidea/host.c_pt.bc'
source_filename = "../drivers/usb/chipidea/host.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ehci_driver_overrides = type { i32, ptr, ptr }
%struct.ci_hdrc = type { ptr, %struct.spinlock, %struct.hw_bank, i32, [2 x ptr], i32, i8, %struct.usb_otg, %struct.otg_fsm, %struct.hrtimer, [12 x i64], i32, i32, ptr, %struct.work_struct, ptr, ptr, ptr, %struct.usb_gadget, ptr, i32, i32, [32 x %struct.ci_hw_ep], i32, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, i32, ptr, %struct.ulpi_ops, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hw_bank = type { i32, i32, ptr, ptr, ptr, i32, [38 x ptr] }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.otg_fsm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.mutex, ptr, %struct.delayed_work, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ci_hw_ep = type { %struct.usb_ep, i8, i8, i8, [16 x i8], %struct.anon.65, i32, ptr, ptr, ptr, ptr }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.anon.65 = type { %struct.list_head, ptr, i32 }
%struct.ulpi_ops = type { ptr, ptr }
%struct.ci_hdrc_platform_data = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, %struct.usb_otg_caps, i8, i32, i32, i32, i32, %struct.ci_hdrc_cable, %struct.ci_hdrc_cable, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.ci_hdrc_cable = type { i8, i8, i8, ptr, ptr, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ci_role_driver = type { ptr, ptr, ptr, ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.66, i32 }
%union.anon.66 = type { ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.ci_hdrc_dma_aligned_buffer = type { ptr, ptr, [0 x i8] }
%struct.ehci_regs = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, [6 x i32], i32, %union.anon.73, %union.anon.75, [2 x i32], i32 }
%union.anon.73 = type { [15 x i32] }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { i32, [15 x i32] }

@.str = private unnamed_addr constant [5 x i8] c"host\00", align 1
@ci_ehci_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@ehci_ci_overrides = internal constant %struct.ehci_driver_overrides { i32 8, ptr @ehci_ci_reset, ptr @ehci_ci_portpower }, align 4
@orig_bus_suspend = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to enable vbus regulator, ret=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Not support multi-port regulator control\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to %s vbus regulator, ret=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"timeout waiting for SUSPEND\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"timeout waiting for resume\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ci_hdrc_host_destroy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 38
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @host_stop(ptr noundef %0)
  br label %10

10:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @host_stop(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 38
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 32
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = tail call i32 %9(ptr noundef %0, i32 noundef 1) #6
  br label %13

13:                                               ; preds = %11, %5
  tail call void @usb_remove_hcd(ptr noundef nonnull %3) #6
  %14 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 5
  store i32 2, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 3
  %16 = load i32, ptr %15, align 8
  tail call void @synchronize_irq(i32 noundef %16) #6
  tail call void @usb_put_hcd(ptr noundef nonnull %3) #6
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %17, i32 0, i32 9
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %17, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 128
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = tail call i32 @regulator_disable(ptr noundef nonnull %19) #6
  br label %28

28:                                               ; preds = %26, %21, %13, %1
  store ptr null, ptr %2, align 8
  %29 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 7, i32 3
  store ptr null, ptr %29, align 4
  %30 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 32
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %31, i32 0, i32 21
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %31, i32 0, i32 20
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %31, i32 0, i32 19
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 @pinctrl_select_state(ptr noundef %41, ptr noundef nonnull %37) #6
  br label %43

43:                                               ; preds = %39, %35, %28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ci_hdrc_host_init(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %5 = and i32 %4, 256
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 16, i32 noundef 3520) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  store ptr @host_start, ptr %9, align 4
  %12 = getelementptr inbounds %struct.ci_role_driver, ptr %9, i32 0, i32 1
  store ptr @host_stop, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ci_role_driver, ptr %9, i32 0, i32 2
  store ptr @host_irq, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ci_role_driver, ptr %9, i32 0, i32 3
  store ptr @.str, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 4
  store ptr %9, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 32
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %17, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 8192
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %11
  store ptr @ci_hdrc_map_urb_for_dma, ptr getelementptr inbounds (%struct.hc_driver, ptr @ci_ehci_hc_driver, i32 0, i32 14), align 4
  store ptr @ci_hdrc_unmap_urb_for_dma, ptr getelementptr inbounds (%struct.hc_driver, ptr @ci_ehci_hc_driver, i32 0, i32 15), align 4
  br label %23

23:                                               ; preds = %22, %11, %7, %1
  %24 = phi i32 [ -6, %1 ], [ -12, %7 ], [ 0, %22 ], [ 0, %11 ]
  ret i32 %24
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @host_start(ptr noundef %0) #0 {
  %2 = tail call i32 @usb_disabled() #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %139

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = load ptr, ptr %5, align 4
  br label %13

13:                                               ; preds = %11, %4
  %14 = phi ptr [ %12, %11 ], [ %9, %4 ]
  %15 = tail call ptr @__usb_create_hcd(ptr noundef nonnull @ci_ehci_hc_driver, ptr noundef %7, ptr noundef %5, ptr noundef %14, ptr noundef null) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %139, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 8
  store ptr %0, ptr %19, align 8
  %20 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 2
  %21 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 0, i32 17
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 0, i32 18
  store i32 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 0, i32 16
  store ptr %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 0, i32 14
  %31 = load i16, ptr %30, align 8
  %32 = or i16 %31, 128
  store i16 %32, ptr %30, align 8
  %33 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 32
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 0, i32 19
  store i32 %36, ptr %37, align 4
  %38 = load ptr, ptr %33, align 4
  %39 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %38, i32 0, i32 11
  %40 = load i8, ptr %39, align 2, !range !10
  %41 = zext i8 %40 to i16
  %42 = shl nuw nsw i16 %41, 10
  %43 = and i16 %32, -1025
  %44 = or i16 %42, %43
  store i16 %44, ptr %30, align 8
  %45 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 36
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %17
  %49 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 37
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %59, label %52

52:                                               ; preds = %48, %17
  %53 = or i16 %44, 16
  store i16 %53, ptr %30, align 8
  %54 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 37
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 0, i32 10
  store ptr %55, ptr %58, align 8
  br label %59

59:                                               ; preds = %57, %52, %48
  %60 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 1, i32 8
  store ptr %61, ptr %62, align 4
  %63 = load i32, ptr %20, align 8
  %64 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 2, i32 4, i32 16
  %65 = trunc i32 %63 to i8
  %66 = load i8, ptr %64, align 4
  %67 = and i8 %65, 1
  %68 = and i8 %66, -2
  %69 = or i8 %68, %67
  store i8 %69, ptr %64, align 4
  %70 = load i32, ptr %20, align 8
  %71 = trunc i32 %70 to i8
  %72 = shl i8 %71, 1
  %73 = and i8 %72, 2
  %74 = and i8 %69, -3
  %75 = or i8 %73, %74
  store i8 %75, ptr %64, align 4
  %76 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 41
  %77 = load i8, ptr %76, align 2, !range !10
  %78 = zext i8 %77 to i32
  %79 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 2, i32 4, i32 8
  %80 = load i32, ptr %79, align 4
  %81 = shl nuw nsw i32 %78, 14
  %82 = and i32 %80, -16385
  %83 = or i32 %82, %81
  store i32 %83, ptr %79, align 4
  %84 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 2, i32 20, i32 3, i32 4
  store ptr null, ptr %84, align 4
  %85 = load ptr, ptr %33, align 4
  %86 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %85, i32 0, i32 9
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %100, label %89

89:                                               ; preds = %59
  %90 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %85, i32 0, i32 6
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %91, 128
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = tail call i32 @regulator_enable(ptr noundef nonnull %87) #6
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.1, i32 noundef %95) #7
  br label %137

99:                                               ; preds = %89
  store ptr %87, ptr %84, align 4
  br label %100

100:                                              ; preds = %99, %94, %59
  %101 = load ptr, ptr %33, align 4
  %102 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %101, i32 0, i32 21
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %101, i32 0, i32 19
  %107 = load ptr, ptr %106, align 4
  %108 = tail call i32 @pinctrl_select_state(ptr noundef %107, ptr noundef nonnull %103) #6
  br label %109

109:                                              ; preds = %105, %100
  %110 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 38
  store ptr %15, ptr %110, align 8
  %111 = tail call i32 @usb_add_hcd(ptr noundef nonnull %15, i32 noundef 0, i32 noundef 0) #6
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %109
  store ptr null, ptr %110, align 8
  %114 = load ptr, ptr %33, align 4
  %115 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %114, i32 0, i32 9
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %137, label %130

118:                                              ; preds = %109
  %119 = load ptr, ptr %33, align 4
  %120 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %119, i32 0, i32 8
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %139, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %119, i32 0, i32 6
  %125 = load i32, ptr %124, align 4
  %126 = and i32 %125, 16384
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %139, label %128

128:                                              ; preds = %123
  %129 = tail call i32 %121(ptr noundef %0, i32 noundef 2) #6
  br label %139

130:                                              ; preds = %113
  %131 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %114, i32 0, i32 6
  %132 = load i32, ptr %131, align 4
  %133 = and i32 %132, 128
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %130
  %136 = tail call i32 @regulator_disable(ptr noundef nonnull %116) #6
  br label %137

137:                                              ; preds = %135, %130, %113, %97
  %138 = phi i32 [ %111, %135 ], [ %111, %130 ], [ %111, %113 ], [ %95, %97 ]
  tail call void @usb_put_hcd(ptr noundef nonnull %15) #6
  br label %139

139:                                              ; preds = %137, %128, %123, %118, %13, %1
  %140 = phi i32 [ %138, %137 ], [ -19, %1 ], [ -12, %13 ], [ 0, %128 ], [ 0, %123 ], [ 0, %118 ]
  ret i32 %140
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @host_irq(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 38
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @usb_hcd_irq(i32 noundef %3, ptr noundef %5) #6
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_hdrc_map_urb_for_dma(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 18
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %45

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 16
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %45

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %45, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %17 = load ptr, ptr %16, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = and i32 %18, 31
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %45, label %21

21:                                               ; preds = %15
  %22 = add i32 %13, 39
  %23 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %22, i32 noundef %2) #8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %75, label %25

25:                                               ; preds = %21
  %26 = getelementptr %struct.ci_hdrc_dma_aligned_buffer, ptr %23, i32 1
  %27 = ptrtoint ptr %26 to i32
  %28 = add nuw nsw i32 %27, 31
  %29 = and i32 %28, -32
  %30 = inttoptr i32 %29 to ptr
  %31 = getelementptr %struct.ci_hdrc_dma_aligned_buffer, ptr %30, i32 -1
  store ptr %23, ptr %31, align 8
  %32 = load ptr, ptr %16, align 4
  %33 = getelementptr %struct.ci_hdrc_dma_aligned_buffer, ptr %30, i32 -1, i32 1
  store ptr %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 13
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 512
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %25
  %39 = load ptr, ptr %16, align 4
  %40 = load i32, ptr %12, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 32 %30, ptr align 1 %39, i32 %40, i1 false) #6
  %41 = load i32, ptr %34, align 4
  br label %42

42:                                               ; preds = %38, %25
  %43 = phi i32 [ %41, %38 ], [ %35, %25 ]
  store ptr %30, ptr %16, align 4
  %44 = or i32 %43, 8388608
  store i32 %44, ptr %34, align 4
  br label %45

45:                                               ; preds = %42, %15, %11, %7, %3
  %46 = tail call i32 @usb_hcd_map_urb_for_dma(ptr noundef %0, ptr noundef %1, i32 noundef %2) #6
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %75, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 13
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 8388608
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %75, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 -8
  %57 = and i32 %50, 512
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %61 = load i32, ptr %60, align 4
  %62 = icmp ult i32 %61, 1073741824
  %63 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %64 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 20
  %65 = select i1 %62, ptr %63, ptr %64
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr i8, ptr %55, i32 -4
  %68 = load ptr, ptr %67, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %68, ptr align 4 %55, i32 %66, i1 false) #6
  br label %69

69:                                               ; preds = %59, %53
  %70 = getelementptr i8, ptr %55, i32 -4
  %71 = load ptr, ptr %70, align 4
  store ptr %71, ptr %54, align 4
  %72 = load ptr, ptr %56, align 4
  tail call void @kfree(ptr noundef %72) #6
  %73 = load i32, ptr %49, align 4
  %74 = and i32 %73, -8388609
  store i32 %74, ptr %49, align 4
  br label %75

75:                                               ; preds = %69, %48, %45, %21
  %76 = phi i32 [ 0, %45 ], [ -12, %21 ], [ %46, %48 ], [ %46, %69 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ci_hdrc_unmap_urb_for_dma(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @usb_hcd_unmap_urb_for_dma(ptr noundef %0, ptr noundef %1) #6
  %3 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 13
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 8388608
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %29, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 -8
  %11 = and i32 %4, 512
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %15, 1073741824
  %17 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %18 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 20
  %19 = select i1 %16, ptr %17, ptr %18
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i8, ptr %9, i32 -4
  %22 = load ptr, ptr %21, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %22, ptr align 4 %9, i32 %20, i1 false) #6
  br label %23

23:                                               ; preds = %13, %7
  %24 = getelementptr i8, ptr %9, i32 -4
  %25 = load ptr, ptr %24, align 4
  store ptr %25, ptr %8, align 4
  %26 = load ptr, ptr %10, align 4
  tail call void @kfree(ptr noundef %26) #6
  %27 = load i32, ptr %3, align 4
  %28 = and i32 %27, -8388609
  store i32 %28, ptr %3, align 4
  br label %29

29:                                               ; preds = %23, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ci_hdrc_host_driver_init() local_unnamed_addr #0 {
  tail call void @ehci_init_driver(ptr noundef nonnull @ci_ehci_hc_driver, ptr noundef nonnull @ehci_ci_overrides) #6
  %1 = load ptr, ptr getelementptr inbounds (%struct.hc_driver, ptr @ci_ehci_hc_driver, i32 0, i32 20), align 4
  store ptr %1, ptr @orig_bus_suspend, align 4
  store ptr @ci_ehci_bus_suspend, ptr getelementptr inbounds (%struct.hc_driver, ptr @ci_ehci_hc_driver, i32 0, i32 20), align 4
  store ptr @ci_ehci_hub_control, ptr getelementptr inbounds (%struct.hc_driver, ptr @ci_ehci_hc_driver, i32 0, i32 19), align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ehci_init_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_ehci_bus_suspend(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr @orig_bus_suspend, align 4
  %6 = tail call i32 %5(ptr noundef %0) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %48

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 15
  %12 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 1
  br label %13

13:                                               ; preds = %16, %8
  %14 = phi i32 [ %11, %8 ], [ %17, %16 ]
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %48, label %16

16:                                               ; preds = %13
  %17 = add nsw i32 %14, -1
  %18 = load ptr, ptr %12, align 8
  %19 = getelementptr inbounds %struct.ehci_regs, ptr %18, i32 0, i32 11
  %20 = getelementptr [15 x i32], ptr %19, i32 0, i32 %17
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %13, label %24

24:                                               ; preds = %16
  %25 = load ptr, ptr %12, align 8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %27 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 16384
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load ptr, ptr %12, align 8
  %33 = or i32 %26, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %33) #6, !srcloc !13
  br label %34

34:                                               ; preds = %31, %24
  tail call void @usleep_range_state(i32 noundef 150, i32 noundef 200, i32 noundef 2) #6
  %35 = getelementptr inbounds %struct.ci_hdrc, ptr %4, i32 0, i32 32
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %36, i32 0, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 16384
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %43 = load i32, ptr %27, align 4
  %44 = and i32 %43, 16384
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = and i32 %42, -3145729
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %47) #6, !srcloc !13
  br label %48

48:                                               ; preds = %46, %41, %34, %13, %1
  %49 = phi i32 [ %6, %1 ], [ 0, %34 ], [ 0, %41 ], [ 0, %46 ], [ 0, %13 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_ehci_hub_control(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, ptr noundef %4, i16 noundef zeroext %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %10 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #6
  store i8 0, ptr %8, align 1
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 8
  %15 = load ptr, ptr %14, align 8
  %16 = zext i16 %3 to i32
  %17 = and i32 %16, 255
  %18 = icmp ne i32 %17, 0
  %19 = sext i1 %18 to i32
  %20 = add nsw i32 %17, %19
  %21 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.ehci_regs, ptr %22, i32 0, i32 11
  %24 = getelementptr [15 x i32], ptr %23, i32 0, i32 %20
  %25 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 9
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %25) #6
  store i32 %26, ptr %7, align 4
  %27 = getelementptr inbounds %struct.ci_hdrc, ptr %15, i32 0, i32 32
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %28, i32 0, i32 23
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %6
  %33 = call i32 %30(ptr noundef %15, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, ptr noundef %4, i16 noundef zeroext %5, ptr noundef nonnull %8, ptr noundef nonnull %7) #6
  %34 = load i8, ptr %8, align 1, !range !10
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %95

36:                                               ; preds = %32, %6
  %37 = phi i32 [ %33, %32 ], [ 0, %6 ]
  %38 = icmp eq i16 %1, 8963
  %39 = icmp eq i16 %2, 2
  %40 = and i1 %38, %39
  br i1 %40, label %41, label %83

41:                                               ; preds = %36
  %42 = icmp eq i16 %3, 0
  %43 = icmp ult i32 %12, %16
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %95, label %45

45:                                               ; preds = %41
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %47 = and i32 %46, 260
  %48 = icmp eq i32 %47, 4
  br i1 %48, label %49, label %95

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 16384
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = and i32 %46, -7340203
  %56 = or i32 %55, 6291584
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %56) #6, !srcloc !13
  br label %57

57:                                               ; preds = %54, %49
  %58 = call i32 @ehci_handshake(ptr noundef %9, ptr noundef %24, i32 noundef 128, i32 noundef 128, i32 noundef 5000) #6
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.6) #7
  br label %62

62:                                               ; preds = %60, %57
  %63 = load ptr, ptr %27, align 4
  %64 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %63, i32 0, i32 6
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 16384
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %81, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %63, i32 0, i32 8
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = call i32 %70(ptr noundef %15, i32 noundef 3) #6
  br label %74

74:                                               ; preds = %72, %68
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %76 = load i32, ptr %50, align 4
  %77 = and i32 %76, 16384
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = and i32 %75, -3145729
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %80) #6, !srcloc !13
  br label %81

81:                                               ; preds = %79, %74, %62
  %82 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 0, i32 10, i32 0, i32 3
  call void @_set_bit(i32 noundef %20, ptr noundef %82) #6
  br label %95

83:                                               ; preds = %36
  %84 = icmp eq i16 %1, 8961
  %85 = icmp eq i16 %2, 18
  %86 = and i1 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = call i32 @ehci_handshake(ptr noundef %9, ptr noundef %24, i32 noundef 64, i32 noundef 0, i32 noundef 25000) #6
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %87
  %91 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.7) #7
  br label %92

92:                                               ; preds = %90, %87, %83
  %93 = load i32, ptr %7, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %93) #6
  %94 = call i32 @ehci_hub_control(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, ptr noundef %4, i16 noundef zeroext %5) #6
  br label %98

95:                                               ; preds = %81, %45, %41, %32
  %96 = phi i32 [ %33, %32 ], [ %37, %81 ], [ -32, %41 ], [ -32, %45 ]
  %97 = load i32, ptr %7, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %97) #6
  br label %98

98:                                               ; preds = %95, %92
  %99 = phi i32 [ %96, %95 ], [ %94, %92 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  ret i32 %99
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__usb_create_hcd(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_map_urb_for_dma(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_unmap_urb_for_dma(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ehci_ci_reset(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @ehci_setup(ptr noundef %0) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, -257
  store i32 %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.ci_hdrc, ptr %4, i32 0, i32 32
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %12, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %7
  %17 = tail call i32 %14(ptr noundef %4, i32 noundef 0) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %7
  tail call void @ci_platform_configure(ptr noundef %4) #6
  br label %20

20:                                               ; preds = %19, %16, %1
  %21 = phi i32 [ 0, %19 ], [ %5, %1 ], [ %17, %16 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ehci_ci_portpower(ptr nocapture noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = zext i1 %2 to i8
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 3, i32 4
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 14
  %12 = load ptr, ptr %5, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %32, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 3, i32 5
  %16 = load i8, ptr %15, align 4, !range !10
  %17 = icmp eq i8 %16, %4
  br i1 %17, label %32, label %18

18:                                               ; preds = %14
  %19 = icmp eq i32 %11, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.2) #7
  br label %42

21:                                               ; preds = %18
  br i1 %2, label %22, label %24

22:                                               ; preds = %21
  %23 = tail call i32 @regulator_enable(ptr noundef nonnull %12) #6
  br label %26

24:                                               ; preds = %21
  %25 = tail call i32 @regulator_disable(ptr noundef nonnull %12) #6
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = select i1 %2, ptr @.str.4, ptr @.str.5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef nonnull %30, i32 noundef %27) #7
  br label %42

31:                                               ; preds = %26
  store i8 %4, ptr %15, align 4
  br label %32

32:                                               ; preds = %31, %14, %3
  br i1 %2, label %33, label %42

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.ci_hdrc, ptr %8, i32 0, i32 32
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %35, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 5
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = tail call i32 @hw_port_test_set(ptr noundef %8, i8 noundef zeroext 5) #6
  %41 = tail call i32 @hw_port_test_set(ptr noundef %8, i8 noundef zeroext 0) #6
  br label %42

42:                                               ; preds = %39, %33, %32, %29, %20
  %43 = phi i32 [ 0, %20 ], [ %27, %29 ], [ 0, %39 ], [ 0, %33 ], [ 0, %32 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ci_platform_configure(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_port_test_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_handshake(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_hub_control(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(0) }

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
!8 = !{i64 955765}
!9 = !{i64 2148639133}
!10 = !{i8 0, i8 2}
!11 = !{i64 2153809608}
!12 = !{i64 2153810118}
!13 = !{i64 955347}
