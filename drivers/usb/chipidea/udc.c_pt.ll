; ModuleID = '/llk/IR/drivers/usb/chipidea/udc.c_pt.bc'
source_filename = "../drivers/usb/chipidea/udc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.td_node = type { %struct.list_head, i32, ptr, i32 }
%struct.ci_role_driver = type { ptr, ptr, ptr, ptr }
%struct.ci_hdrc_platform_data = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, %struct.usb_otg_caps, i8, i32, i32, i32, i32, %struct.ci_hdrc_cable, %struct.ci_hdrc_cable, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.ci_hdrc_cable = type { i8, i8, i8, ptr, ptr, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ci_hw_td = type { i32, i32, [5 x i32] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ci_hw_qh = type { i32, i32, %struct.ci_hw_td, i32, %struct.usb_ctrlrequest }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.ci_hw_req = type { %struct.usb_request, %struct.list_head, %struct.list_head }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }

@.str = private unnamed_addr constant [7 x i8] c"gadget\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"error: %i\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"error: _ep_set_halt\0A\00", align 1
@__tracepoint_ci_complete_td = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@isr_setup_status_phase.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"drivers/usb/chipidea/udc.c\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"endpoint ctrl %X nuked\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"request length too big for isochronous\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"request already in queue\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"not supported operation for sg\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"not page aligned sg buffer\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__tracepoint_ci_prepare_td = external dso_local global %struct.tracepoint, align 4
@usb_gadget_ops = internal constant %struct.usb_gadget_ops { ptr null, ptr @ci_udc_wakeup, ptr @ci_udc_selfpowered, ptr @ci_udc_vbus_session, ptr @ci_udc_vbus_draw, ptr @ci_udc_pullup, ptr null, ptr null, ptr @ci_udc_start, ptr @ci_udc_stop, ptr null, ptr null, ptr null, ptr @ci_udc_match_ep, ptr null }, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"ci_hw_qh\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"ci_hw_td\00", align 1
@ctrl_endpt_out_desc = internal constant %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 0, i16 64, i8 0, i8 0, i8 0 }>, align 1
@ctrl_endpt_in_desc = internal constant %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 0, i16 64, i8 0, i8 0, i8 0 }>, align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"ep%i%s\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@usb_ep_ops = internal constant %struct.usb_ep_ops { ptr @ep_enable, ptr @ep_disable, ptr null, ptr @ep_alloc_request, ptr @ep_free_request, ptr @ep_queue, ptr @ep_dequeue, ptr @ep_set_halt, ptr @ep_set_wedge, ptr null, ptr @ep_fifo_flush }, align 4
@.str.16 = private unnamed_addr constant [32 x i8] c"enabling a non-empty endpoint!\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"Set control xfer at non-ep0\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"freeing queued request\0A\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"%02X: -EINVAL\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ci_hdrc_gadget_destroy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 4, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 18
  tail call void @usb_del_gadget_udc(ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 21
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %33, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 16
  br label %12

12:                                               ; preds = %24, %10
  %13 = phi i32 [ 0, %10 ], [ %30, %24 ]
  %14 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %13, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %12
  %18 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %13, i32 9
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.td_node, ptr %15, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.td_node, ptr %15, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  tail call void @dma_pool_free(ptr noundef %19, ptr noundef %21, i32 noundef %23) #9
  store ptr null, ptr %14, align 4
  tail call void @kfree(ptr noundef nonnull %15) #9
  br label %24

24:                                               ; preds = %17, %12
  %25 = load ptr, ptr %11, align 8
  %26 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %13, i32 5, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %13, i32 5, i32 2
  %29 = load i32, ptr %28, align 4
  tail call void @dma_pool_free(ptr noundef %25, ptr noundef %27, i32 noundef %29) #9
  %30 = add nuw i32 %13, 1
  %31 = load i32, ptr %7, align 8
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %12, label %33

33:                                               ; preds = %24, %5
  %34 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 17
  %35 = load ptr, ptr %34, align 4
  tail call void @dma_pool_destroy(ptr noundef %35) #9
  %36 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 16
  %37 = load ptr, ptr %36, align 8
  tail call void @dma_pool_destroy(ptr noundef %37) #9
  br label %38

38:                                               ; preds = %33, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ci_hdrc_gadget_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %5 = and i32 %4, 128
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %185, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 16, i32 noundef 3520) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %185, label %11

11:                                               ; preds = %7
  store ptr @udc_id_switch_for_device, ptr %9, align 4
  %12 = getelementptr inbounds %struct.ci_role_driver, ptr %9, i32 0, i32 1
  store ptr @udc_id_switch_for_host, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ci_role_driver, ptr %9, i32 0, i32 2
  store ptr @udc_irq, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ci_role_driver, ptr %9, i32 0, i32 3
  store ptr @.str, ptr %14, align 4
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 32
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %17, i32 0, i32 10
  %19 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 18
  %20 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 18, i32 2
  store ptr @usb_gadget_ops, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 18, i32 5
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 18, i32 6
  store i32 3, ptr %22, align 8
  %23 = load ptr, ptr %17, align 4
  %24 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 18, i32 10
  store ptr %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 18, i32 16
  store ptr %18, ptr %25, align 8
  %26 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 18, i32 17
  %27 = load i32, ptr %26, align 4
  %28 = or i32 %27, 1
  store i32 %28, ptr %26, align 4
  %29 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 3
  %30 = load i32, ptr %29, align 8
  %31 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 18, i32 18
  store i32 %30, ptr %31, align 8
  %32 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %17, i32 0, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 8192
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %11
  %37 = or i32 %27, 4097
  store i32 %37, ptr %26, align 4
  br label %38

38:                                               ; preds = %36, %11
  %39 = phi i32 [ %37, %36 ], [ %28, %11 ]
  %40 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 6
  %41 = load i8, ptr %40, align 8, !range !10
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %17, i32 0, i32 10, i32 1
  %45 = load i8, ptr %44, align 2, !range !10
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %17, i32 0, i32 10, i32 2
  %49 = load i8, ptr %48, align 1, !range !10
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %17, i32 0, i32 10, i32 3
  %53 = load i8, ptr %52, align 2, !range !10
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51, %47, %43
  %56 = or i32 %39, 2
  store i32 %56, ptr %26, align 4
  br label %57

57:                                               ; preds = %55, %51, %38
  %58 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 18, i32 4
  store volatile ptr %58, ptr %58, align 4
  %59 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 18, i32 4, i32 1
  store ptr %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.11, ptr noundef %61, i32 noundef 48, i32 noundef 64, i32 noundef 4096) #9
  %63 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 16
  store ptr %62, ptr %63, align 8
  %64 = icmp eq ptr %62, null
  br i1 %64, label %185, label %65

65:                                               ; preds = %57
  %66 = load ptr, ptr %60, align 4
  %67 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.12, ptr noundef %66, i32 noundef 28, i32 noundef 64, i32 noundef 4096) #9
  %68 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 17
  store ptr %67, ptr %68, align 4
  %69 = icmp eq ptr %67, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load ptr, ptr %63, align 8
  tail call void @dma_pool_destroy(ptr noundef %71) #9
  br label %185

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 21
  %74 = load i32, ptr %73, align 8
  %75 = icmp ult i32 %74, 2
  br i1 %75, label %148, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 1
  %78 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 25
  %79 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 24
  br label %80

80:                                               ; preds = %141, %76
  %81 = phi i32 [ 0, %76 ], [ %135, %141 ]
  %82 = phi i32 [ 0, %76 ], [ %142, %141 ]
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %83, i8 1, i8 14
  %85 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %82
  %86 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %82, i32 4
  %87 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %86, i32 noundef 16, ptr noundef nonnull @.str.13, i32 noundef %82, ptr noundef nonnull @.str.15) #9
  %88 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %82, i32 7
  store ptr %0, ptr %88, align 4
  %89 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %82, i32 8
  store ptr %77, ptr %89, align 4
  %90 = load ptr, ptr %68, align 4
  %91 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %82, i32 9
  store ptr %90, ptr %91, align 4
  %92 = getelementptr inbounds %struct.usb_ep, ptr %85, i32 0, i32 1
  store ptr %86, ptr %92, align 4
  %93 = getelementptr inbounds %struct.usb_ep, ptr %85, i32 0, i32 2
  store ptr @usb_ep_ops, ptr %93, align 4
  %94 = getelementptr inbounds %struct.usb_ep, ptr %85, i32 0, i32 4
  %95 = load i8, ptr %94, align 4
  %96 = or i8 %84, %95
  %97 = or i8 %96, 32
  store i8 %97, ptr %94, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %85, i32 noundef 65535) #9
  %98 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %82, i32 5
  store volatile ptr %98, ptr %98, align 4
  %99 = getelementptr inbounds %struct.list_head, ptr %98, i32 0, i32 1
  store ptr %98, ptr %99, align 4
  %100 = load ptr, ptr %63, align 8
  %101 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %82, i32 5, i32 2
  %102 = tail call ptr @dma_pool_alloc(ptr noundef %100, i32 noundef 3520, ptr noundef %101) #9
  %103 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %82, i32 5, i32 1
  store ptr %102, ptr %103, align 4
  %104 = icmp eq ptr %102, null
  br i1 %83, label %105, label %106

105:                                              ; preds = %80
  store ptr %85, ptr %79, align 8
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %85, i32 noundef 64) #9
  br label %110

106:                                              ; preds = %80
  %107 = getelementptr inbounds %struct.usb_ep, ptr %85, i32 0, i32 3
  %108 = load ptr, ptr %59, align 4
  store ptr %107, ptr %59, align 4
  store ptr %58, ptr %107, align 4
  %109 = getelementptr inbounds %struct.usb_ep, ptr %85, i32 0, i32 3, i32 1
  store ptr %108, ptr %109, align 4
  store volatile ptr %107, ptr %108, align 4
  br label %110

110:                                              ; preds = %106, %105
  %111 = load i32, ptr %73, align 8
  %112 = lshr i32 %111, 1
  %113 = add nuw i32 %112, %82
  %114 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %113
  %115 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %113, i32 4
  %116 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %115, i32 noundef 16, ptr noundef nonnull @.str.13, i32 noundef %82, ptr noundef nonnull @.str.14) #9
  %117 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %113, i32 7
  store ptr %0, ptr %117, align 4
  %118 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %113, i32 8
  store ptr %77, ptr %118, align 4
  %119 = load ptr, ptr %68, align 4
  %120 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %113, i32 9
  store ptr %119, ptr %120, align 4
  %121 = getelementptr inbounds %struct.usb_ep, ptr %114, i32 0, i32 1
  store ptr %115, ptr %121, align 4
  %122 = getelementptr inbounds %struct.usb_ep, ptr %114, i32 0, i32 2
  store ptr @usb_ep_ops, ptr %122, align 4
  %123 = getelementptr inbounds %struct.usb_ep, ptr %114, i32 0, i32 4
  %124 = load i8, ptr %123, align 4
  %125 = or i8 %84, %124
  %126 = or i8 %125, 16
  store i8 %126, ptr %123, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %114, i32 noundef 65535) #9
  %127 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %113, i32 5
  store volatile ptr %127, ptr %127, align 4
  %128 = getelementptr inbounds %struct.list_head, ptr %127, i32 0, i32 1
  store ptr %127, ptr %128, align 4
  %129 = load ptr, ptr %63, align 8
  %130 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %113, i32 5, i32 2
  %131 = tail call ptr @dma_pool_alloc(ptr noundef %129, i32 noundef 3520, ptr noundef %130) #9
  %132 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %113, i32 5, i32 1
  store ptr %131, ptr %132, align 4
  %133 = icmp eq ptr %131, null
  %134 = select i1 %133, i1 true, i1 %104
  %135 = select i1 %134, i32 -12, i32 %81
  br i1 %83, label %140, label %136

136:                                              ; preds = %110
  %137 = getelementptr inbounds %struct.usb_ep, ptr %114, i32 0, i32 3
  %138 = load ptr, ptr %59, align 4
  store ptr %137, ptr %59, align 4
  store ptr %58, ptr %137, align 4
  %139 = getelementptr inbounds %struct.usb_ep, ptr %114, i32 0, i32 3, i32 1
  store ptr %138, ptr %139, align 4
  store volatile ptr %137, ptr %138, align 4
  br label %141

140:                                              ; preds = %110
  store ptr %114, ptr %78, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %114, i32 noundef 64) #9
  br label %141

141:                                              ; preds = %140, %136
  %142 = add nuw nsw i32 %82, 1
  %143 = load i32, ptr %73, align 8
  %144 = lshr i32 %143, 1
  %145 = icmp ult i32 %142, %144
  br i1 %145, label %80, label %146

146:                                              ; preds = %141
  %147 = icmp eq i32 %135, 0
  br i1 %147, label %148, label %178

148:                                              ; preds = %146, %72
  %149 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 25
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 18, i32 3
  store ptr %150, ptr %151, align 8
  %152 = tail call i32 @usb_add_gadget_udc(ptr noundef %15, ptr noundef %19) #9
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %183, label %154

154:                                              ; preds = %148
  %155 = load i32, ptr %73, align 8
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %178, label %157

157:                                              ; preds = %169, %154
  %158 = phi i32 [ %175, %169 ], [ 0, %154 ]
  %159 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %158, i32 10
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %169, label %162

162:                                              ; preds = %157
  %163 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %158, i32 9
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr inbounds %struct.td_node, ptr %160, i32 0, i32 2
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr inbounds %struct.td_node, ptr %160, i32 0, i32 1
  %168 = load i32, ptr %167, align 4
  tail call void @dma_pool_free(ptr noundef %164, ptr noundef %166, i32 noundef %168) #9
  store ptr null, ptr %159, align 4
  tail call void @kfree(ptr noundef nonnull %160) #9
  br label %169

169:                                              ; preds = %162, %157
  %170 = load ptr, ptr %63, align 8
  %171 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %158, i32 5, i32 1
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %158, i32 5, i32 2
  %174 = load i32, ptr %173, align 4
  tail call void @dma_pool_free(ptr noundef %170, ptr noundef %172, i32 noundef %174) #9
  %175 = add nuw i32 %158, 1
  %176 = load i32, ptr %73, align 8
  %177 = icmp ult i32 %175, %176
  br i1 %177, label %157, label %178

178:                                              ; preds = %169, %154, %146
  %179 = phi i32 [ %135, %146 ], [ %152, %154 ], [ %152, %169 ]
  %180 = load ptr, ptr %68, align 4
  tail call void @dma_pool_destroy(ptr noundef %180) #9
  %181 = load ptr, ptr %63, align 8
  tail call void @dma_pool_destroy(ptr noundef %181) #9
  %182 = icmp eq i32 %179, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %178, %148
  %184 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 4, i32 1
  store ptr %9, ptr %184, align 4
  br label %185

185:                                              ; preds = %183, %178, %70, %57, %7, %1
  %186 = phi i32 [ -6, %1 ], [ -12, %7 ], [ 0, %183 ], [ %179, %178 ], [ -12, %70 ], [ -12, %57 ]
  ret i32 %186
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @udc_id_switch_for_device(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 32
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 19
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @pinctrl_select_state(ptr noundef %9, ptr noundef nonnull %5) #9
  br label %11

11:                                               ; preds = %7, %1
  %12 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 6
  %13 = load i8, ptr %12, align 8, !range !10
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @hw_write_otgsc(ptr noundef %0, i32 noundef 134742016, i32 noundef 134742016) #9
  br label %16

16:                                               ; preds = %15, %11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @udc_id_switch_for_host(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 6
  %3 = load i8, ptr %2, align 8, !range !10
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @hw_write_otgsc(ptr noundef %0, i32 noundef 134742016, i32 noundef 524288) #9
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 33
  store i32 0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 32
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %9, i32 0, i32 22
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %9, i32 0, i32 20
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %9, i32 0, i32 19
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @pinctrl_select_state(ptr noundef %19, ptr noundef nonnull %15) #9
  br label %21

21:                                               ; preds = %17, %13, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @udc_irq(ptr noundef %0) #0 {
  %2 = alloca %struct.usb_ctrlrequest, align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %719, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %5) #9
  %6 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 32
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %7, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %4
  %13 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 15
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %16 = and i32 %15, 3
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %19 = load i16, ptr %5, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %719

21:                                               ; preds = %12, %4
  %22 = tail call i32 @hw_read_intr_status(ptr noundef nonnull %0) #9
  %23 = tail call i32 @hw_read_intr_enable(ptr noundef nonnull %0) #9
  %24 = and i32 %23, %22
  %25 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 41
  %26 = load i8, ptr %25, align 2, !range !10
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 5
  %30 = load ptr, ptr %29, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %24) #9, !srcloc !16
  br label %31

31:                                               ; preds = %28, %21
  %32 = icmp eq i32 %24, 0
  br i1 %32, label %715, label %33

33:                                               ; preds = %31
  %34 = and i32 %24, 64
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %94, label %36

36:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %37 = load i16, ptr %5, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %39 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 18
  %40 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 18, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 19
  %45 = load ptr, ptr %44, align 8
  tail call void @usb_gadget_udc_reset(ptr noundef %39, ptr noundef %45) #9
  br label %46

46:                                               ; preds = %43, %36
  tail call fastcc void @_gadget_stop_activity(ptr noundef %39) #9
  %47 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 7
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %50 = load i8, ptr %25, align 2, !range !10
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = and i32 %49, 33554431
  %54 = load ptr, ptr %47, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %53) #9, !srcloc !16
  %55 = load i8, ptr %25, align 2
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 18
  %59 = load ptr, ptr %58, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 -1) #9, !srcloc !16
  br label %60

60:                                               ; preds = %57, %52, %46
  %61 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 16
  %62 = load ptr, ptr %61, align 4
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %64 = load i8, ptr %25, align 2, !range !10
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load ptr, ptr %61, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %63) #9, !srcloc !16
  br label %68

68:                                               ; preds = %66, %60
  %69 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 20
  %70 = load ptr, ptr %69, align 4
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %72 = load i8, ptr %25, align 2, !range !10
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load ptr, ptr %69, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %71) #9, !srcloc !16
  br label %76

76:                                               ; preds = %74, %68
  %77 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 17
  %78 = load ptr, ptr %77, align 4
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %81, %76
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 2147480) #9
  %83 = load ptr, ptr %77, align 4
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %81

86:                                               ; preds = %81, %76
  %87 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 25
  %88 = load ptr, ptr %87, align 4
  %89 = tail call ptr @usb_ep_alloc_request(ptr noundef %88, i32 noundef 2592) #9
  %90 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 26
  store ptr %89, ptr %90, align 8
  %91 = icmp eq ptr %89, null
  tail call void @_raw_spin_lock(ptr noundef %5) #9
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.1, i32 noundef -12) #10
  br label %94

94:                                               ; preds = %92, %86, %33
  %95 = and i32 %24, 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %135, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 2
  %99 = load i32, ptr %98, align 8
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  %102 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 13
  %103 = load ptr, ptr %102, align 4
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %105 = and i32 %104, 100663296
  br label %111

106:                                              ; preds = %97
  %107 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 12
  %108 = load ptr, ptr %107, align 4
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %110 = and i32 %109, 512
  br label %111

111:                                              ; preds = %106, %101
  %112 = phi i32 [ %105, %101 ], [ %110, %106 ]
  %113 = icmp eq i32 %112, 0
  %114 = select i1 %113, i32 2, i32 3
  %115 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 18
  %116 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 18, i32 5
  store i32 %114, ptr %116, align 4
  %117 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 30
  %118 = load i8, ptr %117, align 1
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %135, label %120

120:                                              ; preds = %111
  %121 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 19
  %122 = load ptr, ptr %121, align 8
  %123 = getelementptr inbounds %struct.usb_gadget_driver, ptr %122, i32 0, i32 7
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %132, label %126

126:                                              ; preds = %120
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %127 = load i16, ptr %5, align 4
  %128 = add i16 %127, 1
  store i16 %128, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %129 = load ptr, ptr %121, align 8
  %130 = getelementptr inbounds %struct.usb_gadget_driver, ptr %129, i32 0, i32 7
  %131 = load ptr, ptr %130, align 4
  tail call void %131(ptr noundef %115) #9
  tail call void @_raw_spin_lock(ptr noundef %5) #9
  br label %132

132:                                              ; preds = %126, %120
  store i8 0, ptr %117, align 1
  %133 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 20
  %134 = load i32, ptr %133, align 4
  tail call void @usb_gadget_set_state(ptr noundef %115, i32 noundef %134) #9
  br label %135

135:                                              ; preds = %132, %111, %94
  %136 = and i32 %24, 1
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %687, label %138

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 21
  %140 = load i32, ptr %139, align 8
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %687, label %142

142:                                              ; preds = %138
  %143 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 20
  %144 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 26
  %145 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 23
  %146 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 24
  %147 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 25
  %148 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 16
  %149 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 4
  %150 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 0, i32 5, i32 1
  %151 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 22
  %152 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 31
  %153 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 29
  %154 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 28
  %155 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 27
  %156 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %2, i32 0, i32 3
  %157 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 18, i32 17
  %158 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 19
  %159 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 18
  br label %160

160:                                              ; preds = %683, %142
  %161 = phi i32 [ %140, %142 ], [ %685, %683 ]
  %162 = phi i32 [ 0, %142 ], [ %684, %683 ]
  %163 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %162
  %164 = getelementptr inbounds %struct.usb_ep, ptr %163, i32 0, i32 9
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %683, label %167

167:                                              ; preds = %160
  %168 = lshr i32 %161, 1
  %169 = icmp ugt i32 %168, %162
  %170 = sub nsw i32 16, %168
  %171 = select i1 %169, i32 0, i32 %170
  %172 = add i32 %171, %162
  %173 = shl nuw i32 1, %172
  %174 = load ptr, ptr %143, align 4
  %175 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %174) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %176 = and i32 %175, %173
  %177 = load i8, ptr %25, align 2, !range !10
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %167
  %180 = load ptr, ptr %143, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %180, i32 %176) #9, !srcloc !16
  br label %181

181:                                              ; preds = %179, %167
  %182 = icmp eq i32 %176, 0
  br i1 %182, label %389, label %183

183:                                              ; preds = %181
  %184 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %162, i32 5
  %185 = load ptr, ptr %184, align 4
  %186 = icmp eq ptr %185, %184
  br i1 %186, label %352, label %187

187:                                              ; preds = %183
  %188 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %162, i32 7
  %189 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %162, i32 1
  %190 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %162, i32 10
  %191 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %162, i32 9
  %192 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %162, i32 8
  %193 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %162, i32 3
  br label %194

194:                                              ; preds = %346, %187
  %195 = phi ptr [ %185, %187 ], [ %198, %346 ]
  %196 = phi ptr [ %163, %187 ], [ %347, %346 ]
  %197 = getelementptr i8, ptr %195, i32 -56
  %198 = load ptr, ptr %195, align 4
  %199 = load ptr, ptr %188, align 4
  %200 = getelementptr i8, ptr %195, i32 -8
  %201 = load i32, ptr %200, align 4
  %202 = icmp eq i32 %201, -114
  br i1 %202, label %203, label %352

203:                                              ; preds = %194
  %204 = getelementptr i8, ptr %195, i32 -52
  %205 = load i32, ptr %204, align 4
  store i32 0, ptr %200, align 4
  %206 = getelementptr i8, ptr %195, i32 8
  %207 = load ptr, ptr %206, align 4
  %208 = icmp eq ptr %207, %206
  br i1 %208, label %307, label %209

209:                                              ; preds = %299, %203
  %210 = phi ptr [ %212, %299 ], [ %207, %203 ]
  %211 = phi i32 [ %275, %299 ], [ %205, %203 ]
  %212 = load ptr, ptr %210, align 4
  %213 = getelementptr inbounds %struct.td_node, ptr %210, i32 0, i32 2
  %214 = load ptr, ptr %213, align 4
  %215 = getelementptr inbounds %struct.ci_hw_td, ptr %214, i32 0, i32 1
  %216 = load i32, ptr %215, align 4
  %217 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ci_complete_td, i32 0, i32 1), align 4
  %218 = icmp sgt i32 %217, 0
  br i1 %218, label %219, label %232

219:                                              ; preds = %209
  %220 = tail call ptr @llvm.thread.pointer() #9
  %221 = getelementptr inbounds %struct.thread_info, ptr %220, i32 0, i32 2
  %222 = load i32, ptr %221, align 8
  %223 = lshr i32 %222, 5
  %224 = getelementptr i32, ptr @__cpu_online_mask, i32 %223
  %225 = load volatile i32, ptr %224, align 4
  %226 = and i32 %222, 31
  %227 = shl nuw i32 1, %226
  %228 = and i32 %227, %225
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %232, label %230

230:                                              ; preds = %219
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !17
  %231 = call i32 @__traceiter_ci_complete_td(ptr noundef null, ptr noundef %163, ptr noundef %197, ptr noundef %210) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  br label %232

232:                                              ; preds = %230, %219, %209
  %233 = and i32 %216, 128
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %272, label %235

235:                                              ; preds = %232
  %236 = getelementptr inbounds %struct.ci_hdrc, ptr %199, i32 0, i32 45
  %237 = load i32, ptr %236, align 4
  %238 = icmp eq i32 %237, 24
  br i1 %238, label %239, label %271

239:                                              ; preds = %235
  %240 = load i8, ptr %189, align 4
  %241 = icmp eq i8 %240, 1
  %242 = select i1 %241, i32 16, i32 0
  %243 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %162, i32 2
  %244 = load i8, ptr %243, align 1
  %245 = zext i8 %244 to i32
  %246 = add nuw nsw i32 %242, %245
  %247 = shl nuw i32 1, %246
  %248 = getelementptr %struct.ci_hdrc, ptr %199, i32 0, i32 2, i32 6, i32 19
  %249 = load ptr, ptr %248, align 4
  %250 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %249) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %251 = and i32 %247, %250
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %271

253:                                              ; preds = %239
  %254 = getelementptr inbounds %struct.td_node, ptr %210, i32 0, i32 1
  %255 = load i32, ptr %254, align 4
  %256 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %162, i32 5, i32 1
  %257 = load ptr, ptr %256, align 4
  %258 = getelementptr inbounds %struct.ci_hw_qh, ptr %257, i32 0, i32 2
  store i32 %255, ptr %258, align 4
  %259 = load ptr, ptr %256, align 4
  %260 = getelementptr inbounds %struct.ci_hw_qh, ptr %259, i32 0, i32 2, i32 1
  %261 = load i32, ptr %260, align 4
  %262 = and i32 %261, -193
  store i32 %262, ptr %260, align 4
  %263 = load i8, ptr %243, align 1
  %264 = zext i8 %263 to i32
  %265 = load i8, ptr %189, align 4
  %266 = zext i8 %265 to i32
  %267 = load i8, ptr %193, align 2
  %268 = icmp eq i8 %267, 0
  %269 = zext i1 %268 to i32
  %270 = call fastcc i32 @hw_ep_prime(ptr noundef %199, i32 noundef %264, i32 noundef %266, i32 noundef %269) #9
  br label %271

271:                                              ; preds = %253, %239, %235
  store i32 -114, ptr %200, align 4
  br label %351

272:                                              ; preds = %232
  %273 = lshr i32 %216, 16
  %274 = and i32 %273, 32767
  %275 = sub i32 %211, %274
  %276 = and i32 %216, 255
  store i32 %276, ptr %200, align 4
  %277 = and i32 %216, 64
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %305

279:                                              ; preds = %272
  %280 = and i32 %216, 32
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %305

282:                                              ; preds = %279
  %283 = and i32 %216, 8
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %305

285:                                              ; preds = %282
  %286 = icmp eq i32 %274, 0
  br i1 %286, label %290, label %287

287:                                              ; preds = %285
  %288 = load i8, ptr %189, align 4
  %289 = icmp eq i8 %288, 1
  br i1 %289, label %305, label %290

290:                                              ; preds = %287, %285
  %291 = load ptr, ptr %190, align 4
  %292 = icmp eq ptr %291, null
  br i1 %292, label %299, label %293

293:                                              ; preds = %290
  %294 = load ptr, ptr %191, align 4
  %295 = getelementptr inbounds %struct.td_node, ptr %291, i32 0, i32 2
  %296 = load ptr, ptr %295, align 4
  %297 = getelementptr inbounds %struct.td_node, ptr %291, i32 0, i32 1
  %298 = load i32, ptr %297, align 4
  call void @dma_pool_free(ptr noundef %294, ptr noundef %296, i32 noundef %298) #9
  store ptr null, ptr %190, align 4
  call void @kfree(ptr noundef nonnull %291) #9
  br label %299

299:                                              ; preds = %293, %290
  store ptr %210, ptr %190, align 4
  %300 = getelementptr inbounds %struct.list_head, ptr %210, i32 0, i32 1
  %301 = load ptr, ptr %300, align 4
  %302 = load ptr, ptr %210, align 4
  %303 = getelementptr inbounds %struct.list_head, ptr %302, i32 0, i32 1
  store ptr %301, ptr %303, align 4
  store volatile ptr %302, ptr %301, align 4
  store volatile ptr %210, ptr %210, align 4
  store ptr %210, ptr %300, align 4
  %304 = icmp eq ptr %212, %206
  br i1 %304, label %307, label %209

305:                                              ; preds = %287, %282, %279, %272
  %306 = phi i32 [ -32, %272 ], [ -71, %279 ], [ -84, %282 ], [ -71, %287 ]
  store i32 %306, ptr %200, align 4
  br label %307

307:                                              ; preds = %305, %299, %203
  %308 = phi i32 [ %205, %203 ], [ %275, %305 ], [ %275, %299 ]
  %309 = load ptr, ptr %188, align 4
  %310 = load ptr, ptr %309, align 8
  %311 = getelementptr inbounds %struct.device, ptr %310, i32 0, i32 1
  %312 = load ptr, ptr %311, align 4
  %313 = load i8, ptr %189, align 4
  %314 = zext i8 %313 to i32
  call void @usb_gadget_unmap_request_by_dev(ptr noundef %312, ptr noundef %197, i32 noundef %314) #9
  %315 = getelementptr i8, ptr %195, i32 -4
  %316 = load i32, ptr %315, align 4
  %317 = add i32 %316, %308
  store i32 %317, ptr %315, align 4
  %318 = load i32, ptr %200, align 4
  %319 = icmp eq i32 %318, 0
  %320 = select i1 %319, i32 %317, i32 %318
  %321 = icmp slt i32 %320, 0
  br i1 %321, label %349, label %322

322:                                              ; preds = %307
  %323 = getelementptr inbounds %struct.list_head, ptr %195, i32 0, i32 1
  %324 = load ptr, ptr %323, align 4
  %325 = load ptr, ptr %195, align 4
  %326 = getelementptr inbounds %struct.list_head, ptr %325, i32 0, i32 1
  store ptr %324, ptr %326, align 4
  store volatile ptr %325, ptr %324, align 4
  store volatile ptr %195, ptr %195, align 4
  store ptr %195, ptr %323, align 4
  %327 = getelementptr i8, ptr %195, i32 -28
  %328 = load ptr, ptr %327, align 4
  %329 = icmp eq ptr %328, null
  br i1 %329, label %346, label %330

330:                                              ; preds = %322
  %331 = load ptr, ptr %192, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %332 = load i16, ptr %331, align 4
  %333 = add i16 %332, 1
  store i16 %333, ptr %331, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %334 = load i8, ptr %193, align 2
  %335 = icmp eq i8 %334, 0
  br i1 %335, label %336, label %343

336:                                              ; preds = %330
  %337 = load i32, ptr %204, align 4
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %343, label %339

339:                                              ; preds = %336
  %340 = load ptr, ptr %188, align 4
  %341 = getelementptr inbounds %struct.ci_hdrc, ptr %340, i32 0, i32 25
  %342 = load ptr, ptr %341, align 4
  br label %343

343:                                              ; preds = %339, %336, %330
  %344 = phi ptr [ %342, %339 ], [ %196, %336 ], [ %196, %330 ]
  call void @usb_gadget_giveback_request(ptr noundef %344, ptr noundef %197) #9
  %345 = load ptr, ptr %192, align 4
  call void @_raw_spin_lock(ptr noundef %345) #9
  br label %346

346:                                              ; preds = %343, %322
  %347 = phi ptr [ %344, %343 ], [ %196, %322 ]
  %348 = icmp eq ptr %198, %184
  br i1 %348, label %352, label %194

349:                                              ; preds = %307
  %350 = icmp eq i32 %320, -16
  br i1 %350, label %351, label %352

351:                                              ; preds = %349, %271
  br label %352

352:                                              ; preds = %351, %349, %346, %194, %183
  %353 = phi i32 [ 0, %351 ], [ %320, %349 ], [ 0, %183 ], [ %320, %346 ], [ -22, %194 ]
  %354 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %162, i32 3
  %355 = load i8, ptr %354, align 2
  %356 = icmp eq i8 %355, 0
  br i1 %356, label %357, label %389

357:                                              ; preds = %352
  %358 = icmp sgt i32 %353, 0
  br i1 %358, label %359, label %378

359:                                              ; preds = %357
  %360 = load ptr, ptr %144, align 8
  %361 = icmp eq ptr %360, null
  %362 = load i1, ptr @isr_setup_status_phase.__already_done, align 1
  %363 = xor i1 %362, true
  %364 = select i1 %361, i1 %363, i1 false
  br i1 %364, label %365, label %366, !prof !19

365:                                              ; preds = %359
  store i1 true, ptr @isr_setup_status_phase.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1080, i32 noundef 9, ptr noundef null) #9
  br label %366

366:                                              ; preds = %365, %359
  br i1 %361, label %381, label %367

367:                                              ; preds = %366
  %368 = load i32, ptr %145, align 4
  %369 = icmp eq i32 %368, 1
  %370 = select i1 %369, ptr %146, ptr %147
  %371 = load ptr, ptr %370, align 4
  %372 = load ptr, ptr %144, align 8
  %373 = getelementptr inbounds %struct.usb_request, ptr %372, i32 0, i32 8
  store ptr %0, ptr %373, align 4
  %374 = load ptr, ptr %144, align 8
  %375 = getelementptr inbounds %struct.usb_request, ptr %374, i32 0, i32 7
  store ptr @isr_setup_status_complete, ptr %375, align 4
  %376 = load ptr, ptr %144, align 8
  %377 = call fastcc i32 @_ep_queue(ptr noundef %371, ptr noundef %376) #9
  br label %378

378:                                              ; preds = %367, %357
  %379 = phi i32 [ %353, %357 ], [ %377, %367 ]
  %380 = icmp slt i32 %379, 0
  br i1 %380, label %381, label %389

381:                                              ; preds = %378, %366
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %382 = load i16, ptr %5, align 4
  %383 = add i16 %382, 1
  store i16 %383, ptr %5, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %384 = call fastcc i32 @_ep_set_halt(ptr noundef %163, i32 noundef 1, i1 noundef zeroext false) #9
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %388, label %386

386:                                              ; preds = %381
  %387 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %387, ptr noundef nonnull @.str.2) #10
  br label %388

388:                                              ; preds = %386, %381
  call void @_raw_spin_lock(ptr noundef %5) #9
  br label %389

389:                                              ; preds = %388, %378, %352, %181
  %390 = icmp eq i32 %162, 0
  br i1 %390, label %391, label %683

391:                                              ; preds = %389
  %392 = load ptr, ptr %148, align 4
  %393 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %392) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %394 = and i32 %393, 1
  %395 = load i8, ptr %25, align 2, !range !10
  %396 = icmp eq i8 %395, 0
  br i1 %396, label %397, label %399

397:                                              ; preds = %391
  %398 = load ptr, ptr %148, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %398, i32 %394) #9, !srcloc !16
  br label %399

399:                                              ; preds = %397, %391
  %400 = icmp eq i32 %394, 0
  br i1 %400, label %683, label %401

401:                                              ; preds = %399
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  store i64 0, ptr %2, align 8, !annotation !20
  %402 = load ptr, ptr %146, align 8
  %403 = call fastcc i32 @_ep_nuke(ptr noundef %402) #9
  %404 = load ptr, ptr %147, align 4
  %405 = call fastcc i32 @_ep_nuke(ptr noundef %404) #9
  br label %406

406:                                              ; preds = %429, %401
  %407 = load ptr, ptr %149, align 4
  %408 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %407) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %409 = load ptr, ptr %149, align 4
  %410 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %409) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %411 = load i8, ptr %25, align 2, !range !10
  %412 = icmp eq i8 %411, 0
  br i1 %412, label %413, label %416

413:                                              ; preds = %406
  %414 = or i32 %410, 8192
  %415 = load ptr, ptr %149, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %415, i32 %414) #9, !srcloc !16
  br label %416

416:                                              ; preds = %413, %406
  %417 = load ptr, ptr %150, align 4
  %418 = getelementptr inbounds %struct.ci_hw_qh, ptr %417, i32 0, i32 4
  %419 = load i64, ptr %418, align 4
  %420 = load ptr, ptr %149, align 4
  %421 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %420) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %422 = load ptr, ptr %149, align 4
  %423 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %422) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %424 = load i8, ptr %25, align 2, !range !10
  %425 = icmp eq i8 %424, 0
  br i1 %425, label %426, label %429

426:                                              ; preds = %416
  %427 = and i32 %423, -8193
  %428 = load ptr, ptr %149, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %428, i32 %427) #9, !srcloc !16
  br label %429

429:                                              ; preds = %426, %416
  %430 = and i32 %421, 8192
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %406, label %432

432:                                              ; preds = %429
  store i64 %419, ptr %2, align 8
  %433 = trunc i64 %419 to i8
  %434 = lshr i8 %433, 7
  %435 = zext i8 %434 to i32
  store i32 %435, ptr %145, align 4
  %436 = lshr i64 %419, 8
  %437 = trunc i64 %436 to i8
  %438 = lshr i64 %419, 16
  %439 = trunc i64 %438 to i16
  %440 = lshr i64 %419, 48
  %441 = trunc i64 %440 to i16
  %442 = lshr i64 %419, 32
  %443 = trunc i64 %442 to i16
  switch i8 %437, label %661 [
    i8 1, label %444
    i8 0, label %514
    i8 5, label %580
    i8 3, label %606
  ]

444:                                              ; preds = %432
  %445 = icmp eq i8 %433, 2
  %446 = icmp eq i16 %439, 0
  %447 = select i1 %445, i1 %446, i1 false
  br i1 %447, label %448, label %489

448:                                              ; preds = %444
  %449 = icmp eq i16 %441, 0
  br i1 %449, label %450, label %674

450:                                              ; preds = %448
  %451 = trunc i64 %442 to i32
  %452 = and i32 %451, 128
  %453 = icmp eq i32 %452, 0
  %454 = and i32 %451, 15
  br i1 %453, label %459, label %455

455:                                              ; preds = %450
  %456 = load i32, ptr %139, align 8
  %457 = lshr i32 %456, 1
  %458 = add nuw i32 %457, %454
  br label %459

459:                                              ; preds = %455, %450
  %460 = phi i32 [ %458, %455 ], [ %454, %450 ]
  %461 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %460, i32 6
  %462 = load i32, ptr %461, align 4
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %464, label %470

464:                                              ; preds = %459
  %465 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %460
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %466 = load i16, ptr %5, align 4
  %467 = add i16 %466, 1
  store i16 %467, ptr %5, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %468 = call i32 @usb_ep_clear_halt(ptr noundef %465) #9
  call void @_raw_spin_lock(ptr noundef %5) #9
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %470, label %671

470:                                              ; preds = %464, %459
  %471 = load ptr, ptr %144, align 8
  %472 = icmp eq ptr %471, null
  %473 = load i1, ptr @isr_setup_status_phase.__already_done, align 1
  %474 = xor i1 %473, true
  %475 = select i1 %472, i1 %474, i1 false
  br i1 %475, label %476, label %477, !prof !19

476:                                              ; preds = %470
  store i1 true, ptr @isr_setup_status_phase.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1080, i32 noundef 9, ptr noundef null) #9
  br label %477

477:                                              ; preds = %476, %470
  br i1 %472, label %674, label %478

478:                                              ; preds = %477
  %479 = load i32, ptr %145, align 4
  %480 = icmp eq i32 %479, 1
  %481 = select i1 %480, ptr %146, ptr %147
  %482 = load ptr, ptr %481, align 4
  %483 = load ptr, ptr %144, align 8
  %484 = getelementptr inbounds %struct.usb_request, ptr %483, i32 0, i32 8
  store ptr %0, ptr %484, align 4
  %485 = load ptr, ptr %144, align 8
  %486 = getelementptr inbounds %struct.usb_request, ptr %485, i32 0, i32 7
  store ptr @isr_setup_status_complete, ptr %486, align 4
  %487 = load ptr, ptr %144, align 8
  %488 = call fastcc i32 @_ep_queue(ptr noundef %482, ptr noundef %487) #9
  br label %671

489:                                              ; preds = %444
  %490 = icmp eq i8 %433, 0
  %491 = icmp eq i16 %439, 1
  %492 = select i1 %490, i1 %491, i1 false
  br i1 %492, label %493, label %661

493:                                              ; preds = %489
  %494 = icmp eq i16 %441, 0
  br i1 %494, label %495, label %674

495:                                              ; preds = %493
  store i8 0, ptr %153, align 2
  %496 = load ptr, ptr %144, align 8
  %497 = icmp eq ptr %496, null
  %498 = load i1, ptr @isr_setup_status_phase.__already_done, align 1
  %499 = xor i1 %498, true
  %500 = select i1 %497, i1 %499, i1 false
  br i1 %500, label %501, label %502, !prof !19

501:                                              ; preds = %495
  store i1 true, ptr @isr_setup_status_phase.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1080, i32 noundef 9, ptr noundef null) #9
  br label %502

502:                                              ; preds = %501, %495
  br i1 %497, label %674, label %503

503:                                              ; preds = %502
  %504 = load i32, ptr %145, align 4
  %505 = icmp eq i32 %504, 1
  %506 = select i1 %505, ptr %146, ptr %147
  %507 = load ptr, ptr %506, align 4
  %508 = load ptr, ptr %144, align 8
  %509 = getelementptr inbounds %struct.usb_request, ptr %508, i32 0, i32 8
  store ptr %0, ptr %509, align 4
  %510 = load ptr, ptr %144, align 8
  %511 = getelementptr inbounds %struct.usb_request, ptr %510, i32 0, i32 7
  store ptr @isr_setup_status_complete, ptr %511, align 4
  %512 = load ptr, ptr %144, align 8
  %513 = call fastcc i32 @_ep_queue(ptr noundef %507, ptr noundef %512) #9
  br label %671

514:                                              ; preds = %432
  %515 = icmp ne i8 %433, -128
  %516 = icmp eq i16 %443, -4096
  %517 = select i1 %515, i1 true, i1 %516
  %518 = add i8 %433, 125
  %519 = icmp ult i8 %518, -2
  %520 = and i1 %519, %517
  br i1 %520, label %661, label %521

521:                                              ; preds = %514
  %522 = icmp ne i16 %441, 2
  %523 = icmp ne i16 %439, 0
  %524 = select i1 %522, i1 true, i1 %523
  br i1 %524, label %674, label %525

525:                                              ; preds = %521
  %526 = load ptr, ptr %147, align 4
  %527 = icmp eq ptr %526, null
  br i1 %527, label %674, label %528

528:                                              ; preds = %525
  %529 = getelementptr inbounds %struct.ci_hw_ep, ptr %526, i32 0, i32 8
  %530 = load ptr, ptr %529, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %531 = load i16, ptr %530, align 4
  %532 = add i16 %531, 1
  store i16 %532, ptr %530, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %533 = call ptr @usb_ep_alloc_request(ptr noundef nonnull %526, i32 noundef 2592) #9
  %534 = load ptr, ptr %529, align 4
  call void @_raw_spin_lock(ptr noundef %534) #9
  %535 = icmp eq ptr %533, null
  br i1 %535, label %674, label %536

536:                                              ; preds = %528
  %537 = getelementptr inbounds %struct.usb_request, ptr %533, i32 0, i32 7
  store ptr @isr_get_status_complete, ptr %537, align 4
  %538 = getelementptr inbounds %struct.usb_request, ptr %533, i32 0, i32 1
  store i32 2, ptr %538, align 4
  %539 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %540 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %539, i32 noundef 2848, i32 noundef 2) #11
  store ptr %540, ptr %533, align 4
  %541 = icmp eq ptr %540, null
  br i1 %541, label %574, label %542

542:                                              ; preds = %536
  %543 = load i8, ptr %2, align 8
  %544 = trunc i8 %543 to i5
  switch i5 %544, label %569 [
    i5 0, label %545
    i5 2, label %554
  ]

545:                                              ; preds = %542
  %546 = load i8, ptr %153, align 2
  %547 = zext i8 %546 to i32
  %548 = shl nuw nsw i32 %547, 1
  %549 = load i32, ptr %157, align 4
  %550 = lshr i32 %549, 13
  %551 = and i32 %550, 1
  %552 = or i32 %551, %548
  %553 = trunc i32 %552 to i16
  store i16 %553, ptr %540, align 8
  br label %569

554:                                              ; preds = %542
  %555 = load i16, ptr %156, align 4
  %556 = zext i16 %555 to i32
  %557 = and i32 %556, 15
  %558 = and i32 %556, 128
  %559 = icmp eq i32 %558, 0
  %560 = select i1 %559, i32 1, i32 65536
  %561 = add nuw nsw i32 %557, 21
  %562 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 %561
  %563 = load ptr, ptr %562, align 4
  %564 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %563) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %565 = and i32 %560, %564
  %566 = icmp ne i32 %565, 0
  %567 = zext i1 %566 to i16
  %568 = load ptr, ptr %533, align 4
  store i16 %567, ptr %568, align 2
  br label %569

569:                                              ; preds = %554, %545, %542
  %570 = call fastcc i32 @_ep_queue(ptr noundef nonnull %526, ptr noundef nonnull %533) #9
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %682, label %572

572:                                              ; preds = %569
  %573 = load ptr, ptr %533, align 4
  call void @kfree(ptr noundef %573) #9
  br label %574

574:                                              ; preds = %572, %536
  %575 = phi i32 [ %570, %572 ], [ -12, %536 ]
  %576 = load ptr, ptr %529, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %577 = load i16, ptr %576, align 4
  %578 = add i16 %577, 1
  store i16 %578, ptr %576, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  call void @usb_ep_free_request(ptr noundef nonnull %526, ptr noundef nonnull %533) #9
  %579 = load ptr, ptr %529, align 4
  call void @_raw_spin_lock(ptr noundef %579) #9
  br label %671

580:                                              ; preds = %432
  %581 = icmp eq i8 %433, 0
  br i1 %581, label %582, label %661

582:                                              ; preds = %580
  %583 = icmp ne i16 %441, 0
  %584 = icmp ne i16 %443, 0
  %585 = select i1 %583, i1 true, i1 %584
  br i1 %585, label %674, label %586

586:                                              ; preds = %582
  %587 = trunc i64 %438 to i8
  store i8 %587, ptr %154, align 1
  store i8 1, ptr %155, align 4
  %588 = load ptr, ptr %144, align 8
  %589 = icmp eq ptr %588, null
  %590 = load i1, ptr @isr_setup_status_phase.__already_done, align 1
  %591 = xor i1 %590, true
  %592 = select i1 %589, i1 %591, i1 false
  br i1 %592, label %593, label %594, !prof !19

593:                                              ; preds = %586
  store i1 true, ptr @isr_setup_status_phase.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1080, i32 noundef 9, ptr noundef null) #9
  br label %594

594:                                              ; preds = %593, %586
  br i1 %589, label %674, label %595

595:                                              ; preds = %594
  %596 = load i32, ptr %145, align 4
  %597 = icmp eq i32 %596, 1
  %598 = select i1 %597, ptr %146, ptr %147
  %599 = load ptr, ptr %598, align 4
  %600 = load ptr, ptr %144, align 8
  %601 = getelementptr inbounds %struct.usb_request, ptr %600, i32 0, i32 8
  store ptr %0, ptr %601, align 4
  %602 = load ptr, ptr %144, align 8
  %603 = getelementptr inbounds %struct.usb_request, ptr %602, i32 0, i32 7
  store ptr @isr_setup_status_complete, ptr %603, align 4
  %604 = load ptr, ptr %144, align 8
  %605 = call fastcc i32 @_ep_queue(ptr noundef %599, ptr noundef %604) #9
  br label %671

606:                                              ; preds = %432
  %607 = icmp eq i8 %433, 2
  %608 = icmp eq i16 %439, 0
  %609 = select i1 %607, i1 %608, i1 false
  br i1 %609, label %610, label %647

610:                                              ; preds = %606
  %611 = icmp eq i16 %441, 0
  br i1 %611, label %612, label %674

612:                                              ; preds = %610
  %613 = trunc i64 %442 to i32
  %614 = and i32 %613, 128
  %615 = icmp eq i32 %614, 0
  %616 = and i32 %613, 15
  br i1 %615, label %621, label %617

617:                                              ; preds = %612
  %618 = load i32, ptr %139, align 8
  %619 = lshr i32 %618, 1
  %620 = add nuw i32 %619, %616
  br label %621

621:                                              ; preds = %617, %612
  %622 = phi i32 [ %620, %617 ], [ %616, %612 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %623 = load i16, ptr %5, align 4
  %624 = add i16 %623, 1
  store i16 %624, ptr %5, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %625 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 22, i32 %622
  %626 = call fastcc i32 @_ep_set_halt(ptr noundef %625, i32 noundef 1, i1 noundef zeroext false) #9
  call void @_raw_spin_lock(ptr noundef %5) #9
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %628, label %671

628:                                              ; preds = %621
  %629 = load ptr, ptr %144, align 8
  %630 = icmp eq ptr %629, null
  %631 = load i1, ptr @isr_setup_status_phase.__already_done, align 1
  %632 = xor i1 %631, true
  %633 = select i1 %630, i1 %632, i1 false
  br i1 %633, label %634, label %635, !prof !19

634:                                              ; preds = %628
  store i1 true, ptr @isr_setup_status_phase.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1080, i32 noundef 9, ptr noundef null) #9
  br label %635

635:                                              ; preds = %634, %628
  br i1 %630, label %682, label %636

636:                                              ; preds = %635
  %637 = load i32, ptr %145, align 4
  %638 = icmp eq i32 %637, 1
  %639 = select i1 %638, ptr %146, ptr %147
  %640 = load ptr, ptr %639, align 4
  %641 = load ptr, ptr %144, align 8
  %642 = getelementptr inbounds %struct.usb_request, ptr %641, i32 0, i32 8
  store ptr %0, ptr %642, align 4
  %643 = load ptr, ptr %144, align 8
  %644 = getelementptr inbounds %struct.usb_request, ptr %643, i32 0, i32 7
  store ptr @isr_setup_status_complete, ptr %644, align 4
  %645 = load ptr, ptr %144, align 8
  %646 = call fastcc i32 @_ep_queue(ptr noundef %640, ptr noundef %645) #9
  br label %682

647:                                              ; preds = %606
  %648 = icmp eq i8 %433, 0
  br i1 %648, label %649, label %661

649:                                              ; preds = %647
  %650 = icmp eq i16 %441, 0
  br i1 %650, label %651, label %674

651:                                              ; preds = %649
  switch i16 %439, label %663 [
    i16 1, label %652
    i16 2, label %654
    i16 3, label %674
    i16 5, label %674
    i16 4, label %674
  ]

652:                                              ; preds = %651
  store i8 1, ptr %153, align 2
  %653 = call fastcc i32 @isr_setup_status_phase(ptr noundef %0) #9
  br label %671

654:                                              ; preds = %651
  %655 = lshr i64 %419, 40
  %656 = trunc i64 %655 to i8
  %657 = add i8 %656, -1
  %658 = icmp ult i8 %657, 5
  br i1 %658, label %659, label %674

659:                                              ; preds = %654
  store i8 %656, ptr %152, align 8
  %660 = call fastcc i32 @isr_setup_status_phase(ptr noundef %0) #9
  br label %671

661:                                              ; preds = %647, %580, %514, %489, %432
  %662 = icmp eq i16 %441, 0
  br i1 %662, label %663, label %664

663:                                              ; preds = %661, %651
  store i32 1, ptr %145, align 4
  br label %664

664:                                              ; preds = %663, %661
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %665 = load i16, ptr %5, align 4
  %666 = add i16 %665, 1
  store i16 %666, ptr %5, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %667 = load ptr, ptr %158, align 8
  %668 = getelementptr inbounds %struct.usb_gadget_driver, ptr %667, i32 0, i32 4
  %669 = load ptr, ptr %668, align 4
  %670 = call i32 %669(ptr noundef %159, ptr noundef nonnull %2) #9
  call void @_raw_spin_lock(ptr noundef %5) #9
  br label %671

671:                                              ; preds = %664, %659, %652, %621, %595, %574, %503, %478, %464
  %672 = phi i32 [ %670, %664 ], [ %626, %621 ], [ %660, %659 ], [ %653, %652 ], [ %468, %464 ], [ %488, %478 ], [ %575, %574 ], [ %605, %595 ], [ %513, %503 ]
  %673 = icmp slt i32 %672, 0
  br i1 %673, label %674, label %682

674:                                              ; preds = %671, %654, %651, %651, %651, %649, %610, %594, %582, %528, %525, %521, %502, %493, %477, %448
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %675 = load i16, ptr %5, align 4
  %676 = add i16 %675, 1
  store i16 %676, ptr %5, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %677 = call fastcc i32 @_ep_set_halt(ptr noundef %151, i32 noundef 1, i1 noundef zeroext false) #9
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %681, label %679

679:                                              ; preds = %674
  %680 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %680, ptr noundef nonnull @.str.2) #10
  br label %681

681:                                              ; preds = %679, %674
  call void @_raw_spin_lock(ptr noundef %5) #9
  br label %682

682:                                              ; preds = %681, %671, %636, %635, %569
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  br label %683

683:                                              ; preds = %682, %399, %389, %160
  %684 = add nuw i32 %162, 1
  %685 = load i32, ptr %139, align 8
  %686 = icmp ult i32 %684, %685
  br i1 %686, label %160, label %687

687:                                              ; preds = %683, %138, %135
  %688 = and i32 %24, 256
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %715, label %690

690:                                              ; preds = %687
  %691 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 30
  %692 = load i8, ptr %691, align 1
  %693 = icmp eq i8 %692, 0
  br i1 %693, label %694, label %715

694:                                              ; preds = %690
  store i8 1, ptr %691, align 1
  %695 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 18
  %696 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 18, i32 9
  %697 = load i32, ptr %696, align 4
  %698 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 20
  store i32 %697, ptr %698, align 4
  %699 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 18, i32 5
  %700 = load i32, ptr %699, align 4
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %714, label %702

702:                                              ; preds = %694
  %703 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 19
  %704 = load ptr, ptr %703, align 8
  %705 = getelementptr inbounds %struct.usb_gadget_driver, ptr %704, i32 0, i32 6
  %706 = load ptr, ptr %705, align 4
  %707 = icmp eq ptr %706, null
  br i1 %707, label %714, label %708

708:                                              ; preds = %702
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %709 = load i16, ptr %5, align 4
  %710 = add i16 %709, 1
  store i16 %710, ptr %5, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %711 = load ptr, ptr %703, align 8
  %712 = getelementptr inbounds %struct.usb_gadget_driver, ptr %711, i32 0, i32 6
  %713 = load ptr, ptr %712, align 4
  call void %713(ptr noundef %695) #9
  call void @_raw_spin_lock(ptr noundef %5) #9
  br label %714

714:                                              ; preds = %708, %702, %694
  call void @usb_gadget_set_state(ptr noundef %695, i32 noundef 8) #9
  br label %715

715:                                              ; preds = %714, %690, %687, %31
  %716 = phi i32 [ 1, %714 ], [ 1, %690 ], [ 1, %687 ], [ 0, %31 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %717 = load i16, ptr %5, align 4
  %718 = add i16 %717, 1
  store i16 %718, ptr %5, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %719

719:                                              ; preds = %715, %18, %1
  %720 = phi i32 [ 0, %18 ], [ %716, %715 ], [ 1, %1 ]
  ret i32 %720
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_write_otgsc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_set_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_read_intr_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_read_intr_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hw_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 {
  %5 = icmp eq i32 %2, -1
  br i1 %5, label %14, label %6

6:                                                ; preds = %4
  %7 = xor i32 %2, -1
  %8 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 %1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %11 = and i32 %10, %7
  %12 = and i32 %3, %2
  %13 = or i32 %11, %12
  br label %14

14:                                               ; preds = %6, %4
  %15 = phi i32 [ %13, %6 ], [ %3, %4 ]
  %16 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 41
  %17 = load i8, ptr %16, align 2, !range !10
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 %1
  %21 = load ptr, ptr %20, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %15) #9, !srcloc !16
  br label %22

22:                                               ; preds = %19, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_udc_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_gadget_stop_activity(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %10, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -12
  tail call void @usb_ep_fifo_flush(ptr noundef %7) #9
  %8 = load ptr, ptr %6, align 4
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %10, label %5

10:                                               ; preds = %5, %1
  %11 = getelementptr i8, ptr %0, i32 3784
  %12 = load ptr, ptr %11, align 8
  tail call void @usb_ep_fifo_flush(ptr noundef %12) #9
  %13 = getelementptr i8, ptr %0, i32 3788
  %14 = load ptr, ptr %13, align 4
  tail call void @usb_ep_fifo_flush(ptr noundef %14) #9
  %15 = load ptr, ptr %2, align 4
  %16 = icmp eq ptr %15, %2
  br i1 %16, label %23, label %17

17:                                               ; preds = %17, %10
  %18 = phi ptr [ %21, %17 ], [ %15, %10 ]
  %19 = getelementptr i8, ptr %18, i32 -12
  %20 = tail call i32 @usb_ep_disable(ptr noundef %19) #9
  %21 = load ptr, ptr %18, align 4
  %22 = icmp eq ptr %21, %2
  br i1 %22, label %23, label %17

23:                                               ; preds = %17, %10
  %24 = getelementptr i8, ptr %0, i32 3792
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %13, align 4
  tail call void @usb_ep_free_request(ptr noundef %28, ptr noundef nonnull %25) #9
  store ptr null, ptr %24, align 8
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr i8, ptr %0, i32 -676
  %31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %30) #9
  %32 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 5
  store i32 0, ptr %32, align 4
  %33 = getelementptr i8, ptr %0, i32 3798
  store i8 0, ptr %33, align 2
  %34 = getelementptr i8, ptr %0, i32 3799
  store i8 0, ptr %34, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %31) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_fifo_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @isr_setup_status_phase(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 26
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  %5 = load i1, ptr @isr_setup_status_phase.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !19

8:                                                ; preds = %1
  store i1 true, ptr @isr_setup_status_phase.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1080, i32 noundef 9, ptr noundef null) #9
  br label %9

9:                                                ; preds = %8, %1
  br i1 %4, label %24, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 23
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 1
  %14 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 24
  %15 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 25
  %16 = select i1 %13, ptr %14, ptr %15
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct.usb_request, ptr %18, i32 0, i32 8
  store ptr %0, ptr %19, align 4
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds %struct.usb_request, ptr %20, i32 0, i32 7
  store ptr @isr_setup_status_complete, ptr %21, align 4
  %22 = load ptr, ptr %2, align 8
  %23 = tail call fastcc i32 @_ep_queue(ptr noundef %17, ptr noundef %22)
  br label %24

24:                                               ; preds = %10, %9
  %25 = phi i32 [ %23, %10 ], [ -32, %9 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_ep_set_halt(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %93, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %93, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 3
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, 3
  %13 = icmp eq i8 %12, 1
  br i1 %13, label %93, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #9
  %18 = icmp eq i32 %1, 0
  %19 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 1
  %20 = load i8, ptr %19, align 4
  %21 = xor i1 %18, true
  %22 = icmp eq i8 %20, 1
  %23 = and i1 %22, %2
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %35

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 5
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %6, align 4
  %31 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %30, i32 0, i32 3
  %32 = load i8, ptr %31, align 1
  %33 = and i8 %32, 3
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %90

35:                                               ; preds = %29, %25, %14
  %36 = phi i8 [ 1, %29 ], [ 1, %25 ], [ %20, %14 ]
  %37 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 1
  %38 = icmp ugt i32 %1, 1
  %39 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 2
  %40 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 7
  %41 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 6
  %42 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 3
  br label %43

43:                                               ; preds = %87, %35
  %44 = phi i8 [ %36, %35 ], [ %88, %87 ]
  %45 = phi i32 [ 0, %35 ], [ %78, %87 ]
  br i1 %38, label %76, label %46

46:                                               ; preds = %43
  %47 = load i8, ptr %39, align 1
  %48 = zext i8 %47 to i32
  %49 = load ptr, ptr %40, align 4
  %50 = add nuw nsw i32 %48, 21
  %51 = icmp eq i8 %44, 1
  %52 = select i1 %51, i32 65536, i32 1
  %53 = getelementptr %struct.ci_hdrc, ptr %49, i32 0, i32 2, i32 6, i32 %50
  %54 = getelementptr inbounds %struct.ci_hdrc, ptr %49, i32 0, i32 41
  %55 = select i1 %51, i32 4259840, i32 65
  %56 = xor i32 %55, -1
  %57 = select i1 %51, i32 4194304, i32 64
  %58 = select i1 %18, i32 %57, i32 %52
  %59 = and i32 %58, %55
  br label %60

60:                                               ; preds = %69, %46
  %61 = load ptr, ptr %53, align 4
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %63 = load i8, ptr %54, align 2, !range !10
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = and i32 %62, %56
  %67 = or i32 %66, %59
  %68 = load ptr, ptr %53, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %67) #9, !srcloc !16
  br label %69

69:                                               ; preds = %65, %60
  %70 = load ptr, ptr %53, align 4
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %72 = and i32 %71, %52
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = icmp eq i32 %74, %1
  br i1 %75, label %76, label %60

76:                                               ; preds = %69, %43
  %77 = phi i32 [ -22, %43 ], [ 0, %69 ]
  %78 = or i32 %77, %45
  br i1 %18, label %79, label %80

79:                                               ; preds = %76
  store i32 0, ptr %41, align 4
  br label %80

80:                                               ; preds = %79, %76
  %81 = load i8, ptr %42, align 2
  %82 = icmp eq i8 %81, 0
  %83 = load i8, ptr %37, align 4
  br i1 %82, label %84, label %87

84:                                               ; preds = %80
  %85 = icmp ne i8 %83, 1
  %86 = zext i1 %85 to i8
  store i8 %86, ptr %37, align 4
  br label %87

87:                                               ; preds = %84, %80
  %88 = phi i8 [ %86, %84 ], [ %83, %80 ]
  %89 = icmp eq i8 %88, %36
  br i1 %89, label %90, label %43

90:                                               ; preds = %87, %29
  %91 = phi i32 [ -11, %29 ], [ %78, %87 ]
  %92 = load ptr, ptr %15, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %92, i32 noundef %17) #9
  br label %93

93:                                               ; preds = %90, %9, %5, %3
  %94 = phi i32 [ -22, %5 ], [ -22, %3 ], [ -95, %9 ], [ %91, %90 ]
  ret i32 %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_giveback_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @reprime_dtd(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.td_node, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ci_hw_ep, ptr %1, i32 0, i32 5, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ci_hw_qh, ptr %7, i32 0, i32 2
  store i32 %5, ptr %8, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.ci_hw_qh, ptr %9, i32 0, i32 2, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, -193
  store i32 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.ci_hw_ep, ptr %1, i32 0, i32 2
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds %struct.ci_hw_ep, ptr %1, i32 0, i32 1
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.ci_hw_ep, ptr %1, i32 0, i32 3
  %20 = load i8, ptr %19, align 2
  %21 = icmp eq i8 %20, 0
  %22 = zext i1 %21 to i32
  %23 = tail call fastcc i32 @hw_ep_prime(ptr noundef %0, i32 noundef %15, i32 noundef %18, i32 noundef %22)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_unmap_request_by_dev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ci_complete_td(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hw_ep_prime(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp eq i32 %2, 1
  %6 = select i1 %5, i32 16, i32 0
  %7 = add i32 %6, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !21
  tail call void @arm_heavy_mb() #9
  %8 = icmp ne i32 %3, 0
  %9 = icmp eq i32 %2, 0
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %18

11:                                               ; preds = %4
  %12 = shl nuw i32 1, %1
  %13 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 16
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %16 = and i32 %15, %12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %11, %4
  %19 = shl nuw i32 1, %7
  %20 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 41
  %21 = load i8, ptr %20, align 2, !range !10
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 17
  %25 = load ptr, ptr %24, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %19) #9, !srcloc !16
  br label %26

26:                                               ; preds = %23, %18
  %27 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 17
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %30 = and i32 %29, %19
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %32, %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !22
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !23
  %33 = load ptr, ptr %27, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %35 = and i32 %34, %19
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %32

37:                                               ; preds = %32, %26
  br i1 %10, label %38, label %45

38:                                               ; preds = %37
  %39 = shl nuw i32 1, %1
  %40 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 16
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %43 = and i32 %42, %39
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38, %37
  br label %46

46:                                               ; preds = %45, %38, %11
  %47 = phi i32 [ 0, %45 ], [ -11, %11 ], [ -11, %38 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @isr_setup_status_complete(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ci_hdrc, ptr %4, i32 0, i32 27
  %6 = load i8, ptr %5, align 4, !range !10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ci_hdrc, ptr %4, i32 0, i32 28
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr %struct.ci_hdrc, ptr %4, i32 0, i32 2, i32 6, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %14 = getelementptr inbounds %struct.ci_hdrc, ptr %4, i32 0, i32 41
  %15 = load i8, ptr %14, align 2, !range !10
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %8
  %18 = and i32 %13, 33554431
  %19 = zext i8 %10 to i32
  %20 = shl i32 %19, 25
  %21 = or i32 %18, %20
  %22 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %21) #9, !srcloc !16
  br label %23

23:                                               ; preds = %17, %8
  store i8 0, ptr %5, align 4
  %24 = load i8, ptr %9, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.ci_hdrc, ptr %4, i32 0, i32 18
  tail call void @usb_gadget_set_state(ptr noundef %27, i32 noundef 6) #9
  br label %28

28:                                               ; preds = %26, %23, %2
  %29 = getelementptr inbounds %struct.ci_hdrc, ptr %4, i32 0, i32 1
  %30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %29) #9
  %31 = getelementptr inbounds %struct.ci_hdrc, ptr %4, i32 0, i32 31
  %32 = load i8, ptr %31, align 8
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = tail call i32 @hw_port_test_set(ptr noundef %4, i8 noundef zeroext %32) #9
  br label %36

36:                                               ; preds = %34, %28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %30) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_ep_queue(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  br i1 %7, label %396, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %396, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 3
  %14 = load i8, ptr %13, align 2
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %46

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ci_hdrc, ptr %4, i32 0, i32 23
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.ci_hdrc, ptr %4, i32 0, i32 24
  %25 = getelementptr inbounds %struct.ci_hdrc, ptr %4, i32 0, i32 25
  %26 = select i1 %23, ptr %24, ptr %25
  %27 = load ptr, ptr %26, align 4
  br label %28

28:                                               ; preds = %20, %16
  %29 = phi ptr [ %27, %20 ], [ %0, %16 ]
  %30 = getelementptr inbounds %struct.ci_hw_ep, ptr %29, i32 0, i32 5
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %30
  br i1 %32, label %46, label %33

33:                                               ; preds = %28
  %34 = tail call fastcc i32 @_ep_nuke(ptr noundef %29)
  %35 = getelementptr inbounds %struct.ci_hw_ep, ptr %29, i32 0, i32 7
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.ci_hw_ep, ptr %29, i32 0, i32 1
  %39 = load i8, ptr %38, align 4
  %40 = icmp eq i8 %39, 1
  %41 = select i1 %40, i8 -128, i8 0
  %42 = getelementptr inbounds %struct.ci_hw_ep, ptr %29, i32 0, i32 2
  %43 = load i8, ptr %42, align 1
  %44 = or i8 %41, %43
  %45 = zext i8 %44 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef nonnull @.str.5, i32 noundef %45) #10
  br label %46

46:                                               ; preds = %33, %28, %12
  %47 = phi ptr [ %29, %28 ], [ %29, %33 ], [ %0, %12 ]
  %48 = getelementptr inbounds %struct.usb_ep, ptr %47, i32 0, i32 9
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %49, i32 0, i32 3
  %51 = load i8, ptr %50, align 1
  %52 = and i8 %51, 3
  %53 = icmp eq i8 %52, 1
  br i1 %53, label %54, label %70

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.usb_ep, ptr %47, i32 0, i32 7
  %58 = load i56, ptr %57, align 2
  %59 = lshr i56 %58, 48
  %60 = trunc i56 %59 to i32
  %61 = and i32 %60, 3
  %62 = trunc i56 %58 to i32
  %63 = and i32 %62, 65535
  %64 = mul nuw nsw i32 %61, %63
  %65 = icmp ugt i32 %56, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %54
  %67 = getelementptr inbounds %struct.ci_hw_ep, ptr %47, i32 0, i32 7
  %68 = load ptr, ptr %67, align 4
  %69 = load ptr, ptr %68, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.6) #10
  br label %396

70:                                               ; preds = %54, %46
  %71 = getelementptr inbounds %struct.ci_hw_req, ptr %1, i32 0, i32 1
  %72 = load volatile ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, %71
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.ci_hw_ep, ptr %47, i32 0, i32 7
  %76 = load ptr, ptr %75, align 4
  %77 = load ptr, ptr %76, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.7) #10
  br label %396

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  store i32 -115, ptr %79, align 4
  %80 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  store i32 0, ptr %80, align 4
  %81 = getelementptr inbounds %struct.ci_hw_ep, ptr %47, i32 0, i32 7
  %82 = load ptr, ptr %81, align 4
  store i32 -114, ptr %79, align 4
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds %struct.device, ptr %83, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.ci_hw_ep, ptr %47, i32 0, i32 1
  %87 = load i8, ptr %86, align 4
  %88 = zext i8 %87 to i32
  %89 = tail call i32 @usb_gadget_map_request_by_dev(ptr noundef %85, ptr noundef nonnull %1, i32 noundef %88) #9
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %389

91:                                               ; preds = %78
  %92 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 5
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %182, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 3
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %178, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 6
  %101 = load i32, ptr %100, align 4
  %102 = and i32 %101, 262144
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %178

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %178, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.ci_hw_req, ptr %1, i32 0, i32 2, i32 1
  br label %110

110:                                              ; preds = %172, %108
  %111 = phi i32 [ 1, %108 ], [ %175, %172 ]
  %112 = phi ptr [ null, %108 ], [ %173, %172 ]
  %113 = phi ptr [ %97, %108 ], [ %174, %172 ]
  %114 = getelementptr inbounds %struct.scatterlist, ptr %113, i32 0, i32 3
  %115 = load i32, ptr %114, align 4
  %116 = and i32 %115, 4095
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %178

118:                                              ; preds = %110
  %119 = icmp eq ptr %112, null
  br i1 %119, label %154, label %120

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.td_node, ptr %112, i32 0, i32 3
  %122 = load i32, ptr %121, align 4
  %123 = getelementptr inbounds %struct.scatterlist, ptr %113, i32 0, i32 4
  %124 = load i32, ptr %123, align 4
  %125 = icmp ult i32 %122, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  store i32 0, ptr %80, align 4
  br label %158

127:                                              ; preds = %120
  %128 = sub i32 20480, %122
  %129 = lshr i32 %128, 12
  %130 = getelementptr inbounds %struct.td_node, ptr %112, i32 0, i32 2
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.ci_hw_td, ptr %131, i32 0, i32 1
  %133 = load i32, ptr %132, align 4
  %134 = shl i32 %124, 16
  %135 = add i32 %133, %134
  store i32 %135, ptr %132, align 4
  %136 = icmp ult i32 %128, 20480
  br i1 %136, label %137, label %150

137:                                              ; preds = %127
  %138 = tail call i32 @llvm.umax.i32(i32 %129, i32 4) #9
  br label %139

139:                                              ; preds = %139, %137
  %140 = phi i32 [ %129, %137 ], [ %148, %139 ]
  %141 = load i32, ptr %114, align 4
  %142 = sub nuw nsw i32 %140, %129
  %143 = shl i32 %142, 12
  %144 = add i32 %143, %141
  %145 = and i32 %144, -4096
  %146 = load ptr, ptr %130, align 4
  %147 = getelementptr %struct.ci_hw_td, ptr %146, i32 0, i32 2, i32 %140
  store i32 %145, ptr %147, align 4
  %148 = add nuw nsw i32 %140, 1
  %149 = icmp eq i32 %140, %138
  br i1 %149, label %150, label %139

150:                                              ; preds = %139, %127
  %151 = load i32, ptr %123, align 4
  %152 = load i32, ptr %121, align 4
  %153 = sub i32 %152, %151
  store i32 %153, ptr %121, align 4
  br label %172

154:                                              ; preds = %118
  %155 = getelementptr inbounds %struct.scatterlist, ptr %113, i32 0, i32 4
  %156 = load i32, ptr %155, align 4
  store i32 0, ptr %80, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %170, label %158

158:                                              ; preds = %154, %126
  %159 = phi i32 [ %156, %154 ], [ %124, %126 ]
  br label %160

160:                                              ; preds = %160, %158
  %161 = phi i32 [ %165, %160 ], [ %159, %158 ]
  %162 = tail call i32 @llvm.umin.i32(i32 %161, i32 20480) #9
  %163 = tail call fastcc i32 @add_td_to_list(ptr noundef %47, ptr noundef %1, i32 noundef %162, ptr noundef %113) #9
  %164 = icmp slt i32 %163, 0
  %165 = sub i32 %161, %162
  %166 = icmp eq i32 %165, 0
  %167 = select i1 %164, i1 true, i1 %166
  br i1 %167, label %168, label %160

168:                                              ; preds = %160
  %169 = icmp eq i32 %163, 0
  br i1 %169, label %170, label %389

170:                                              ; preds = %168, %154
  %171 = load ptr, ptr %109, align 4
  br label %172

172:                                              ; preds = %170, %150
  %173 = phi ptr [ %112, %150 ], [ %171, %170 ]
  %174 = tail call ptr @sg_next(ptr noundef %113) #9
  %175 = add i32 %111, 1
  %176 = load i32, ptr %92, align 4
  %177 = icmp ult i32 %111, %176
  br i1 %177, label %110, label %238

178:                                              ; preds = %110, %104, %99, %95
  %179 = phi ptr [ @.str.8, %95 ], [ @.str.8, %99 ], [ @.str.8, %104 ], [ @.str.9, %110 ]
  %180 = load ptr, ptr %81, align 4
  %181 = load ptr, ptr %180, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %181, ptr noundef nonnull %179) #10
  br label %396

182:                                              ; preds = %91
  %183 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %184 = load i32, ptr %183, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %182
  %187 = tail call fastcc i32 @add_td_to_list(ptr noundef %47, ptr noundef nonnull %1, i32 noundef 0, ptr noundef null) #9
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %389, label %214

189:                                              ; preds = %182
  %190 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 2
  %191 = load i32, ptr %190, align 4
  %192 = and i32 %191, 4095
  %193 = icmp eq i32 %192, 0
  %194 = select i1 %193, i32 20480, i32 16384
  %195 = load i32, ptr %80, align 4
  %196 = sub i32 %184, %195
  %197 = tail call i32 @llvm.umin.i32(i32 %196, i32 %194) #9
  %198 = tail call fastcc i32 @add_td_to_list(ptr noundef %47, ptr noundef nonnull %1, i32 noundef %197, ptr noundef null) #9
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %389, label %200

200:                                              ; preds = %189
  %201 = sub i32 %184, %197
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %214, label %206

203:                                              ; preds = %206
  %204 = sub i32 %207, %211
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %214, label %206

206:                                              ; preds = %203, %200
  %207 = phi i32 [ %204, %203 ], [ %201, %200 ]
  %208 = load i32, ptr %183, align 4
  %209 = load i32, ptr %80, align 4
  %210 = sub i32 %208, %209
  %211 = tail call i32 @llvm.umin.i32(i32 %210, i32 %194) #9
  %212 = tail call fastcc i32 @add_td_to_list(ptr noundef %47, ptr noundef %1, i32 noundef %211, ptr noundef null) #9
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %389, label %203

214:                                              ; preds = %203, %200, %186
  %215 = phi i32 [ 0, %186 ], [ %198, %200 ], [ %212, %203 ]
  %216 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 6
  %217 = load i32, ptr %216, align 4
  %218 = and i32 %217, 262144
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %235, label %220

220:                                              ; preds = %214
  %221 = load i32, ptr %183, align 4
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %235, label %223

223:                                              ; preds = %220
  %224 = load i8, ptr %86, align 4
  %225 = icmp eq i8 %224, 1
  br i1 %225, label %226, label %235

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.usb_ep, ptr %47, i32 0, i32 7
  %228 = load i56, ptr %227, align 2
  %229 = trunc i56 %228 to i32
  %230 = and i32 %229, 65535
  %231 = urem i32 %221, %230
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %226
  %234 = tail call fastcc i32 @add_td_to_list(ptr noundef %47, ptr noundef %1, i32 noundef 0, ptr noundef null) #9
  br label %235

235:                                              ; preds = %233, %226, %223, %220, %214
  %236 = phi i32 [ %234, %233 ], [ %215, %226 ], [ %215, %223 ], [ %215, %220 ], [ %215, %214 ]
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %389

238:                                              ; preds = %235, %172
  %239 = getelementptr inbounds %struct.ci_hw_req, ptr %1, i32 0, i32 2
  %240 = getelementptr inbounds %struct.ci_hw_req, ptr %1, i32 0, i32 2, i32 1
  %241 = load ptr, ptr %240, align 4
  %242 = getelementptr inbounds %struct.td_node, ptr %241, i32 0, i32 2
  %243 = load ptr, ptr %242, align 4
  store i32 1, ptr %243, align 4
  %244 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 6
  %245 = load i32, ptr %244, align 4
  %246 = and i32 %245, 131072
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %238
  %249 = load ptr, ptr %242, align 4
  %250 = getelementptr inbounds %struct.ci_hw_td, ptr %249, i32 0, i32 1
  %251 = load i32, ptr %250, align 4
  %252 = or i32 %251, 32768
  store i32 %252, ptr %250, align 4
  br label %253

253:                                              ; preds = %248, %238
  %254 = load ptr, ptr %239, align 4
  %255 = icmp eq ptr %254, %239
  br i1 %255, label %278, label %256

256:                                              ; preds = %274, %253
  %257 = phi ptr [ %258, %274 ], [ %254, %253 ]
  %258 = load ptr, ptr %257, align 4
  %259 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ci_prepare_td, i32 0, i32 1), align 4
  %260 = icmp sgt i32 %259, 0
  br i1 %260, label %261, label %274

261:                                              ; preds = %256
  %262 = tail call ptr @llvm.thread.pointer() #9
  %263 = getelementptr inbounds %struct.thread_info, ptr %262, i32 0, i32 2
  %264 = load i32, ptr %263, align 8
  %265 = lshr i32 %264, 5
  %266 = getelementptr i32, ptr @__cpu_online_mask, i32 %265
  %267 = load volatile i32, ptr %266, align 4
  %268 = and i32 %264, 31
  %269 = shl nuw i32 1, %268
  %270 = and i32 %269, %267
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %274, label %272

272:                                              ; preds = %261
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !24
  %273 = tail call i32 @__traceiter_ci_prepare_td(ptr noundef null, ptr noundef %47, ptr noundef %1, ptr noundef %257) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  br label %274

274:                                              ; preds = %272, %261, %256
  %275 = icmp eq ptr %258, %239
  br i1 %275, label %276, label %256

276:                                              ; preds = %274
  %277 = load ptr, ptr %239, align 4
  br label %278

278:                                              ; preds = %276, %253
  %279 = phi ptr [ %277, %276 ], [ %239, %253 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !26
  tail call void @arm_heavy_mb() #9
  store i32 0, ptr %80, align 4
  %280 = getelementptr inbounds %struct.ci_hw_ep, ptr %47, i32 0, i32 5
  %281 = load volatile ptr, ptr %280, align 4
  %282 = icmp eq ptr %281, %280
  br i1 %282, label %339, label %283

283:                                              ; preds = %278
  %284 = getelementptr inbounds %struct.ci_hw_ep, ptr %47, i32 0, i32 2
  %285 = load i8, ptr %284, align 1
  %286 = zext i8 %285 to i32
  %287 = load i8, ptr %86, align 4
  %288 = icmp eq i8 %287, 1
  %289 = select i1 %288, i32 16, i32 0
  %290 = add nuw nsw i32 %289, %286
  %291 = getelementptr inbounds %struct.td_node, ptr %279, i32 0, i32 1
  %292 = load i32, ptr %291, align 4
  %293 = and i32 %292, -64
  %294 = getelementptr inbounds %struct.ci_hw_ep, ptr %47, i32 0, i32 5, i32 0, i32 1
  %295 = load ptr, ptr %294, align 4
  %296 = getelementptr i8, ptr %295, i32 12
  %297 = load ptr, ptr %296, align 4
  %298 = getelementptr inbounds %struct.td_node, ptr %297, i32 0, i32 2
  %299 = load ptr, ptr %298, align 4
  store i32 %293, ptr %299, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !27
  tail call void @arm_heavy_mb() #9
  %300 = getelementptr inbounds %struct.ci_hdrc, ptr %82, i32 0, i32 45
  %301 = load i32, ptr %300, align 4
  %302 = icmp eq i32 %301, 22
  %303 = shl nuw i32 1, %290
  br i1 %302, label %304, label %311

304:                                              ; preds = %283
  %305 = getelementptr %struct.ci_hdrc, ptr %82, i32 0, i32 2, i32 6, i32 19
  %306 = load ptr, ptr %305, align 4
  %307 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %306) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %308 = and i32 %307, %303
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %304
  tail call fastcc void @reprime_dtd(ptr noundef %82, ptr noundef %47, ptr noundef %297) #9
  br label %311

311:                                              ; preds = %310, %304, %283
  %312 = getelementptr %struct.ci_hdrc, ptr %82, i32 0, i32 2, i32 6, i32 17
  %313 = load ptr, ptr %312, align 4
  %314 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %313) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %315 = and i32 %314, %303
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %391

317:                                              ; preds = %311
  %318 = getelementptr %struct.ci_hdrc, ptr %82, i32 0, i32 2, i32 6, i32 4
  %319 = getelementptr inbounds %struct.ci_hdrc, ptr %82, i32 0, i32 41
  %320 = getelementptr %struct.ci_hdrc, ptr %82, i32 0, i32 2, i32 6, i32 19
  br label %321

321:                                              ; preds = %329, %317
  %322 = load ptr, ptr %318, align 4
  %323 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %322) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %324 = load i8, ptr %319, align 2, !range !10
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %326, label %329

326:                                              ; preds = %321
  %327 = or i32 %323, 16384
  %328 = load ptr, ptr %318, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %328, i32 %327) #9, !srcloc !16
  br label %329

329:                                              ; preds = %326, %321
  %330 = load ptr, ptr %320, align 4
  %331 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %330) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %332 = load ptr, ptr %318, align 4
  %333 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %332) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %334 = and i32 %333, 16384
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %321, label %336

336:                                              ; preds = %329
  %337 = and i32 %331, %303
  tail call fastcc void @hw_write(ptr noundef %82, i32 noundef 4, i32 noundef 16384, i32 noundef 0) #9
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %391

339:                                              ; preds = %336, %278
  %340 = getelementptr inbounds %struct.td_node, ptr %279, i32 0, i32 1
  %341 = load i32, ptr %340, align 4
  %342 = getelementptr inbounds %struct.ci_hw_ep, ptr %47, i32 0, i32 5, i32 1
  %343 = load ptr, ptr %342, align 4
  %344 = getelementptr inbounds %struct.ci_hw_qh, ptr %343, i32 0, i32 2
  store i32 %341, ptr %344, align 4
  %345 = load ptr, ptr %342, align 4
  %346 = getelementptr inbounds %struct.ci_hw_qh, ptr %345, i32 0, i32 2, i32 1
  %347 = load i32, ptr %346, align 4
  %348 = and i32 %347, -193
  store i32 %348, ptr %346, align 4
  %349 = getelementptr inbounds %struct.ci_hw_ep, ptr %47, i32 0, i32 3
  %350 = load i8, ptr %349, align 2
  %351 = icmp eq i8 %350, 1
  br i1 %351, label %352, label %379

352:                                              ; preds = %339
  %353 = load i8, ptr %86, align 4
  %354 = icmp eq i8 %353, 0
  br i1 %354, label %355, label %379

355:                                              ; preds = %352
  %356 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %357 = load i32, ptr %356, align 4
  %358 = getelementptr inbounds %struct.usb_ep, ptr %47, i32 0, i32 7
  %359 = load i56, ptr %358, align 2
  %360 = trunc i56 %359 to i32
  %361 = and i32 %360, 65535
  %362 = freeze i32 %357
  %363 = freeze i32 %361
  %364 = udiv i32 %362, %363
  %365 = icmp eq i32 %357, 0
  br i1 %365, label %370, label %366

366:                                              ; preds = %355
  %367 = mul i32 %364, %363
  %368 = sub i32 %362, %367
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %372, label %370

370:                                              ; preds = %366, %355
  %371 = add i32 %364, 1
  br label %372

372:                                              ; preds = %370, %366
  %373 = phi i32 [ %371, %370 ], [ %364, %366 ]
  %374 = shl i32 %373, 30
  %375 = load ptr, ptr %342, align 4
  %376 = load i32, ptr %375, align 4
  %377 = or i32 %376, %374
  store i32 %377, ptr %375, align 4
  %378 = load i8, ptr %349, align 2
  br label %379

379:                                              ; preds = %372, %352, %339
  %380 = phi i8 [ %378, %372 ], [ 1, %352 ], [ %350, %339 ]
  %381 = getelementptr inbounds %struct.ci_hw_ep, ptr %47, i32 0, i32 2
  %382 = load i8, ptr %381, align 1
  %383 = zext i8 %382 to i32
  %384 = load i8, ptr %86, align 4
  %385 = zext i8 %384 to i32
  %386 = icmp eq i8 %380, 0
  %387 = zext i1 %386 to i32
  %388 = tail call fastcc i32 @hw_ep_prime(ptr noundef %82, i32 noundef %383, i32 noundef %385, i32 noundef %387) #9
  br label %389

389:                                              ; preds = %379, %235, %206, %189, %186, %168, %78
  %390 = phi i32 [ %89, %78 ], [ %236, %235 ], [ %388, %379 ], [ %187, %186 ], [ %198, %189 ], [ %212, %206 ], [ %163, %168 ]
  switch i32 %390, label %396 [
    i32 -114, label %391
    i32 0, label %391
  ]

391:                                              ; preds = %389, %389, %336, %311
  %392 = getelementptr inbounds %struct.ci_hw_ep, ptr %47, i32 0, i32 5
  %393 = getelementptr inbounds %struct.ci_hw_ep, ptr %47, i32 0, i32 5, i32 0, i32 1
  %394 = load ptr, ptr %393, align 4
  store ptr %71, ptr %393, align 4
  store ptr %392, ptr %71, align 4
  %395 = getelementptr inbounds %struct.ci_hw_req, ptr %1, i32 0, i32 1, i32 1
  store ptr %394, ptr %395, align 4
  store volatile ptr %71, ptr %394, align 4
  br label %396

396:                                              ; preds = %391, %389, %178, %74, %66, %8, %2
  %397 = phi i32 [ -90, %66 ], [ -16, %74 ], [ -22, %8 ], [ -22, %2 ], [ 0, %391 ], [ -22, %178 ], [ %390, %389 ]
  ret i32 %397
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_port_test_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_ep_nuke(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %92, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 2
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 1
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 1
  %12 = select i1 %11, i32 16, i32 0
  %13 = add nuw nsw i32 %12, %8
  %14 = getelementptr %struct.ci_hdrc, ptr %5, i32 0, i32 2, i32 6, i32 19
  %15 = shl nuw i32 1, %13
  %16 = getelementptr inbounds %struct.ci_hdrc, ptr %5, i32 0, i32 41
  %17 = getelementptr %struct.ci_hdrc, ptr %5, i32 0, i32 2, i32 6, i32 18
  br label %18

18:                                               ; preds = %33, %3
  %19 = load i8, ptr %16, align 2, !range !10
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %15) #9, !srcloc !16
  br label %23

23:                                               ; preds = %21, %18
  %24 = load ptr, ptr %17, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %26 = and i32 %25, %15
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %28, %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !29
  %29 = load ptr, ptr %17, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %31 = and i32 %30, %15
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %28

33:                                               ; preds = %28, %23
  %34 = load ptr, ptr %14, align 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %36 = and i32 %35, %15
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %18

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 5
  %40 = load volatile ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %39
  br i1 %41, label %81, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 9
  %44 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 8
  br label %45

45:                                               ; preds = %78, %42
  %46 = phi ptr [ %40, %42 ], [ %79, %78 ]
  %47 = getelementptr i8, ptr %46, i32 -56
  %48 = getelementptr i8, ptr %46, i32 8
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %48
  br i1 %50, label %64, label %51

51:                                               ; preds = %51, %45
  %52 = phi ptr [ %53, %51 ], [ %49, %45 ]
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %43, align 4
  %55 = getelementptr inbounds %struct.td_node, ptr %52, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.td_node, ptr %52, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  tail call void @dma_pool_free(ptr noundef %54, ptr noundef %56, i32 noundef %58) #9
  %59 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = load ptr, ptr %52, align 4
  %62 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  store ptr %60, ptr %62, align 4
  store volatile ptr %61, ptr %60, align 4
  store volatile ptr %52, ptr %52, align 4
  store ptr %52, ptr %59, align 4
  store ptr null, ptr %55, align 4
  tail call void @kfree(ptr noundef %52) #9
  %63 = icmp eq ptr %53, %48
  br i1 %63, label %64, label %51

64:                                               ; preds = %51, %45
  %65 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = load ptr, ptr %46, align 4
  %68 = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  store ptr %66, ptr %68, align 4
  store volatile ptr %67, ptr %66, align 4
  store volatile ptr %46, ptr %46, align 4
  store ptr %46, ptr %65, align 4
  %69 = getelementptr i8, ptr %46, i32 -8
  store i32 -108, ptr %69, align 4
  %70 = getelementptr i8, ptr %46, i32 -28
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %64
  %74 = load ptr, ptr %44, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %75 = load i16, ptr %74, align 4
  %76 = add i16 %75, 1
  store i16 %76, ptr %74, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  tail call void @usb_gadget_giveback_request(ptr noundef nonnull %0, ptr noundef %47) #9
  %77 = load ptr, ptr %44, align 4
  tail call void @_raw_spin_lock(ptr noundef %77) #9
  br label %78

78:                                               ; preds = %73, %64
  %79 = load volatile ptr, ptr %39, align 4
  %80 = icmp eq ptr %79, %39
  br i1 %80, label %81, label %45

81:                                               ; preds = %78, %38
  %82 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 10
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 9
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.td_node, ptr %83, i32 0, i32 2
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.td_node, ptr %83, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  tail call void @dma_pool_free(ptr noundef %87, ptr noundef %89, i32 noundef %91) #9
  store ptr null, ptr %82, align 4
  tail call void @kfree(ptr noundef nonnull %83) #9
  br label %92

92:                                               ; preds = %85, %81, %1
  %93 = phi i32 [ -22, %1 ], [ 0, %85 ], [ 0, %81 ]
  ret i32 %93
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hw_ep_flush(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq i32 %2, 1
  %5 = select i1 %4, i32 16, i32 0
  %6 = add i32 %5, %1
  %7 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 19
  %8 = shl nuw i32 1, %6
  %9 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 41
  %10 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 18
  br label %11

11:                                               ; preds = %26, %3
  %12 = load i8, ptr %9, align 2, !range !10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %8) #9, !srcloc !16
  br label %16

16:                                               ; preds = %14, %11
  %17 = load ptr, ptr %10, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %19 = and i32 %18, %8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %21, %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !29
  %22 = load ptr, ptr %10, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %24 = and i32 %23, %8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %21

26:                                               ; preds = %21, %16
  %27 = load ptr, ptr %7, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %29 = and i32 %28, %8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %11

31:                                               ; preds = %26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_map_request_by_dev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @add_td_to_list(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef readonly %3) unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2848, i32 noundef 20) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %116, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.td_node, ptr %6, i32 0, i32 1
  %12 = tail call ptr @dma_pool_alloc(ptr noundef %10, i32 noundef 2848, ptr noundef %11) #9
  %13 = getelementptr inbounds %struct.td_node, ptr %6, i32 0, i32 2
  store ptr %12, ptr %13, align 4
  %14 = icmp eq ptr %12, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  tail call void @kfree(ptr noundef nonnull %6) #9
  br label %116

16:                                               ; preds = %8
  %17 = shl i32 %2, 16
  %18 = getelementptr inbounds %struct.ci_hw_td, ptr %12, i32 0, i32 1
  store i32 %17, ptr %18, align 4
  %19 = load ptr, ptr %13, align 4
  %20 = getelementptr inbounds %struct.ci_hw_td, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 2147418112
  store i32 %22, ptr %20, align 4
  %23 = load ptr, ptr %13, align 4
  %24 = getelementptr inbounds %struct.ci_hw_td, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %25, 128
  store i32 %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 3
  %28 = load i8, ptr %27, align 2
  %29 = icmp eq i8 %28, 1
  br i1 %29, label %30, label %58

30:                                               ; preds = %16
  %31 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 1
  %32 = load i8, ptr %31, align 4
  %33 = icmp eq i8 %32, 1
  br i1 %33, label %34, label %58

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 7
  %38 = load i56, ptr %37, align 2
  %39 = trunc i56 %38 to i32
  %40 = and i32 %39, 65535
  %41 = freeze i32 %36
  %42 = freeze i32 %40
  %43 = udiv i32 %41, %42
  %44 = icmp eq i32 %36, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %34
  %46 = mul i32 %43, %42
  %47 = sub i32 %41, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45, %34
  %50 = add i32 %43, 1
  br label %51

51:                                               ; preds = %49, %45
  %52 = phi i32 [ %50, %49 ], [ %43, %45 ]
  %53 = shl i32 %52, 10
  %54 = load ptr, ptr %13, align 4
  %55 = getelementptr inbounds %struct.ci_hw_td, ptr %54, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, ptr %55, align 4
  br label %58

58:                                               ; preds = %51, %30, %16
  %59 = icmp eq ptr %3, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.scatterlist, ptr %3, i32 0, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, %62
  %66 = sub i32 20480, %2
  %67 = getelementptr inbounds %struct.td_node, ptr %6, i32 0, i32 3
  store i32 %66, ptr %67, align 8
  br label %74

68:                                               ; preds = %58
  %69 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %72, %70
  br label %74

74:                                               ; preds = %68, %60
  %75 = phi i32 [ %64, %60 ], [ %72, %68 ]
  %76 = phi i32 [ %65, %60 ], [ %73, %68 ]
  %77 = icmp eq i32 %2, 0
  br i1 %77, label %99, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr %13, align 4
  %80 = getelementptr inbounds %struct.ci_hw_td, ptr %79, i32 0, i32 2
  store i32 %76, ptr %80, align 4
  %81 = add i32 %76, 4096
  %82 = and i32 %81, -4096
  %83 = load ptr, ptr %13, align 4
  %84 = getelementptr %struct.ci_hw_td, ptr %83, i32 0, i32 2, i32 1
  store i32 %82, ptr %84, align 4
  %85 = add i32 %76, 8192
  %86 = and i32 %85, -4096
  %87 = load ptr, ptr %13, align 4
  %88 = getelementptr %struct.ci_hw_td, ptr %87, i32 0, i32 2, i32 2
  store i32 %86, ptr %88, align 4
  %89 = add i32 %76, 12288
  %90 = and i32 %89, -4096
  %91 = load ptr, ptr %13, align 4
  %92 = getelementptr %struct.ci_hw_td, ptr %91, i32 0, i32 2, i32 3
  store i32 %90, ptr %92, align 4
  %93 = add i32 %76, 16384
  %94 = and i32 %93, -4096
  %95 = load ptr, ptr %13, align 4
  %96 = getelementptr %struct.ci_hw_td, ptr %95, i32 0, i32 2, i32 4
  store i32 %94, ptr %96, align 4
  %97 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %98 = load i32, ptr %97, align 4
  br label %99

99:                                               ; preds = %78, %74
  %100 = phi i32 [ %98, %78 ], [ %75, %74 ]
  %101 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %102 = add i32 %100, %2
  store i32 %102, ptr %101, align 4
  %103 = getelementptr inbounds %struct.ci_hw_req, ptr %1, i32 0, i32 2
  %104 = load volatile ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, %103
  br i1 %105, label %112, label %106

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.ci_hw_req, ptr %1, i32 0, i32 2, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = load i32, ptr %11, align 8
  %110 = getelementptr inbounds %struct.td_node, ptr %108, i32 0, i32 2
  %111 = load ptr, ptr %110, align 4
  store i32 %109, ptr %111, align 4
  br label %112

112:                                              ; preds = %106, %99
  store volatile ptr %6, ptr %6, align 8
  %113 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %114 = getelementptr inbounds %struct.ci_hw_req, ptr %1, i32 0, i32 2, i32 1
  %115 = load ptr, ptr %114, align 4
  store ptr %6, ptr %114, align 4
  store ptr %103, ptr %6, align 8
  store ptr %115, ptr %113, align 4
  store volatile ptr %6, ptr %115, align 4
  br label %116

116:                                              ; preds = %112, %15, %4
  %117 = phi i32 [ -12, %15 ], [ 0, %112 ], [ -12, %4 ]
  ret i32 %117
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ci_prepare_td(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_clear_halt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @isr_get_status_complete(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %7) #9
  tail call void @usb_ep_free_request(ptr noundef nonnull %0, ptr noundef nonnull %1) #9
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget_udc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_udc_wakeup(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -676
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #9
  %4 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 3798
  %9 = load i8, ptr %8, align 2
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %0, i32 -600
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %15 = and i32 %14, 128
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %12, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %20 = getelementptr i8, ptr %0, i32 3838
  %21 = load i8, ptr %20, align 2, !range !10
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = or i32 %19, 64
  %25 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %24) #9, !srcloc !16
  br label %26

26:                                               ; preds = %23, %17, %11, %7, %1
  %27 = phi i32 [ 0, %1 ], [ -95, %7 ], [ -22, %11 ], [ 0, %17 ], [ 0, %23 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #9
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_udc_selfpowered(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 3788
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ci_hw_ep, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #9
  %8 = icmp eq i32 %1, 0
  %9 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 17
  %10 = load i32, ptr %9, align 4
  %11 = select i1 %8, i32 0, i32 8192
  %12 = and i32 %10, -8193
  %13 = or i32 %12, %11
  store i32 %13, ptr %9, align 4
  %14 = load ptr, ptr %5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %7) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_udc_vbus_session(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -680
  %4 = getelementptr i8, ptr %0, i32 -676
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #9
  %6 = getelementptr i8, ptr %0, i32 3808
  store i32 %1, ptr %6, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #9
  %7 = getelementptr i8, ptr %0, i32 3828
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = icmp eq i32 %1, 0
  %12 = select i1 %11, i32 2, i32 1
  tail call void @usb_phy_set_charger_state(ptr noundef nonnull %8, i32 noundef %12) #9
  br label %13

13:                                               ; preds = %10, %2
  %14 = getelementptr i8, ptr %0, i32 3804
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %15, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = tail call i32 %17(ptr noundef %3, i32 noundef 4) #9
  br label %21

21:                                               ; preds = %19, %13
  %22 = phi i32 [ %20, %19 ], [ 0, %13 ]
  %23 = getelementptr i8, ptr %0, i32 568
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call fastcc void @ci_hdrc_gadget_connect(ptr noundef %0, i32 noundef %1)
  br label %27

27:                                               ; preds = %26, %21
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_udc_vbus_draw(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 3828
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  tail call void @usb_phy_set_charger_current(ptr noundef nonnull %4, i32 noundef %1) #9
  %7 = getelementptr inbounds %struct.usb_phy, ptr %4, i32 0, i32 25
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 %8(ptr noundef nonnull %4, i32 noundef %1) #9
  br label %12

12:                                               ; preds = %10, %6, %2
  %13 = phi i32 [ -524, %2 ], [ %11, %10 ], [ 0, %6 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_udc_pullup(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -680
  %4 = getelementptr i8, ptr %0, i32 -484
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #9
  %10 = icmp eq i32 %1, 0
  %11 = getelementptr i8, ptr %0, i32 -632
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9
  %14 = getelementptr i8, ptr %0, i32 3838
  %15 = load i8, ptr %14, align 2, !range !10
  %16 = icmp eq i8 %15, 0
  br i1 %10, label %21, label %17

17:                                               ; preds = %7
  br i1 %16, label %18, label %25

18:                                               ; preds = %17
  %19 = or i32 %13, 1
  %20 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %19) #9, !srcloc !16
  br label %25

21:                                               ; preds = %7
  br i1 %16, label %22, label %25

22:                                               ; preds = %21
  %23 = and i32 %13, -2
  %24 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %23) #9, !srcloc !16
  br label %25

25:                                               ; preds = %22, %21, %18, %17
  %26 = load ptr, ptr %3, align 8
  %27 = tail call i32 @__pm_runtime_idle(ptr noundef %26, i32 noundef 4) #9
  br label %28

28:                                               ; preds = %25, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_udc_start(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_gadget_driver, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 3784
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.usb_ep, ptr %8, i32 0, i32 9
  store ptr @ctrl_endpt_out_desc, ptr %9, align 4
  %10 = load ptr, ptr %7, align 8
  %11 = tail call i32 @usb_ep_enable(ptr noundef %10) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %6
  %14 = getelementptr i8, ptr %0, i32 3788
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.usb_ep, ptr %15, i32 0, i32 9
  store ptr @ctrl_endpt_in_desc, ptr %16, align 4
  %17 = load ptr, ptr %14, align 4
  %18 = tail call i32 @usb_ep_enable(ptr noundef %17) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = getelementptr i8, ptr %0, i32 568
  store ptr %1, ptr %21, align 8
  %22 = getelementptr i8, ptr %0, i32 3808
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  tail call fastcc void @ci_hdrc_gadget_connect(ptr noundef %0, i32 noundef 1)
  br label %27

26:                                               ; preds = %20
  tail call void @usb_udc_vbus_handler(ptr noundef %0, i1 noundef zeroext false) #9
  br label %27

27:                                               ; preds = %26, %25, %13, %6, %2
  %28 = phi i32 [ -22, %2 ], [ %11, %6 ], [ %18, %13 ], [ 0, %26 ], [ 0, %25 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_udc_stop(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -680
  %3 = getelementptr i8, ptr %0, i32 -676
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %5 = getelementptr i8, ptr %0, i32 568
  store ptr null, ptr %5, align 8
  %6 = getelementptr i8, ptr %0, i32 3808
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 3838
  %11 = load i8, ptr %10, align 2, !range !10
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %0, i32 -624
  %15 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #9, !srcloc !16
  br label %16

16:                                               ; preds = %13, %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #9
  %17 = getelementptr i8, ptr %0, i32 3804
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %18, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = tail call i32 %20(ptr noundef %2, i32 noundef 1) #9
  br label %24

24:                                               ; preds = %22, %16
  tail call fastcc void @_gadget_stop_activity(ptr noundef %0)
  %25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %26 = load ptr, ptr %2, align 8
  %27 = tail call i32 @__pm_runtime_idle(ptr noundef %26, i32 noundef 5) #9
  br label %28

28:                                               ; preds = %24, %1
  %29 = phi i32 [ %25, %24 ], [ %4, %1 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %29) #9
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal ptr @ci_udc_match_ep(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #7 {
  %4 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 3
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, 3
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %8, label %33

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 2
  %10 = load i8, ptr %9, align 1
  %11 = icmp sgt i8 %10, -1
  br i1 %11, label %33, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 4
  %14 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 4, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %13
  br i1 %16, label %33, label %17

17:                                               ; preds = %27, %12
  %18 = phi ptr [ %29, %27 ], [ %15, %12 ]
  %19 = getelementptr i8, ptr %18, i32 8
  %20 = load i8, ptr %19, align 4
  %21 = and i8 %20, 16
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = getelementptr i8, ptr %18, i32 12
  %25 = load i8, ptr %24, align 4, !range !10
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23, %17
  %28 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %13
  br i1 %30, label %33, label %17

31:                                               ; preds = %23
  %32 = getelementptr i8, ptr %18, i32 -12
  br label %33

33:                                               ; preds = %31, %27, %12, %8, %3
  %34 = phi ptr [ null, %8 ], [ null, %3 ], [ %32, %31 ], [ null, %12 ], [ null, %27 ]
  ret ptr %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_phy_set_charger_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ci_hdrc_gadget_connect(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 -680
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %41, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #9
  %8 = tail call i32 @hw_device_reset(ptr noundef %3) #9
  %9 = getelementptr i8, ptr %0, i32 -676
  tail call void @_raw_spin_lock_irq(ptr noundef %9) #9
  %10 = getelementptr i8, ptr %0, i32 568
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %38, label %13

13:                                               ; preds = %5
  %14 = getelementptr i8, ptr %0, i32 3784
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.ci_hw_ep, ptr %15, i32 0, i32 5, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr i8, ptr %0, i32 3838
  %20 = load i8, ptr %19, align 2, !range !10
  %21 = icmp eq i8 %20, 0
  br i1 %18, label %31, label %22

22:                                               ; preds = %13
  br i1 %21, label %23, label %35

23:                                               ; preds = %22
  %24 = getelementptr i8, ptr %0, i32 -616
  %25 = load ptr, ptr %24, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %17) #9, !srcloc !16
  %26 = load i8, ptr %19, align 2
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = getelementptr i8, ptr %0, i32 -624
  %30 = load ptr, ptr %29, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 327) #9, !srcloc !16
  br label %35

31:                                               ; preds = %13
  br i1 %21, label %32, label %35

32:                                               ; preds = %31
  %33 = getelementptr i8, ptr %0, i32 -624
  %34 = load ptr, ptr %33, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 0) #9, !srcloc !16
  br label %35

35:                                               ; preds = %32, %31, %28, %23, %22
  tail call void @usb_gadget_set_state(ptr noundef %0, i32 noundef 2) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %36 = load i16, ptr %9, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !30
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !31
  tail call void @usb_udc_vbus_handler(ptr noundef %0, i1 noundef zeroext true) #9
  br label %66

38:                                               ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %39 = load i16, ptr %9, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !30
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !31
  br label %66

41:                                               ; preds = %2
  tail call void @usb_udc_vbus_handler(ptr noundef %0, i1 noundef zeroext false) #9
  %42 = getelementptr i8, ptr %0, i32 568
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.usb_gadget_driver, ptr %43, i32 0, i32 5
  %47 = load ptr, ptr %46, align 4
  tail call void %47(ptr noundef %0) #9
  br label %48

48:                                               ; preds = %45, %41
  %49 = getelementptr i8, ptr %0, i32 3838
  %50 = load i8, ptr %49, align 2, !range !10
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = getelementptr i8, ptr %0, i32 -624
  %54 = load ptr, ptr %53, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 0) #9, !srcloc !16
  br label %55

55:                                               ; preds = %52, %48
  %56 = getelementptr i8, ptr %0, i32 3804
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %57, i32 0, i32 8
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %55
  %62 = tail call i32 %59(ptr noundef %3, i32 noundef 1) #9
  br label %63

63:                                               ; preds = %61, %55
  tail call fastcc void @_gadget_stop_activity(ptr noundef %0)
  %64 = load ptr, ptr %3, align 8
  %65 = tail call i32 @__pm_runtime_idle(ptr noundef %64, i32 noundef 4) #9
  tail call void @usb_gadget_set_state(ptr noundef %0, i32 noundef 0) #9
  br label %66

66:                                               ; preds = %63, %38, %35
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_device_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_udc_vbus_handler(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_phy_set_charger_current(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ep_enable(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %107, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #9
  %10 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 5
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %17, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %15, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.16) #10
  br label %104

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  store ptr %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 2
  %20 = load i8, ptr %19, align 1
  %21 = icmp slt i8 %20, 0
  %22 = lshr i8 %20, 7
  %23 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 1
  store i8 %22, ptr %23, align 4
  %24 = load i8, ptr %19, align 1
  %25 = and i8 %24, 15
  %26 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 2
  store i8 %25, ptr %26, align 1
  %27 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 3
  %28 = load i8, ptr %27, align 1
  %29 = and i8 %28, 3
  %30 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 3
  store i8 %29, ptr %30, align 2
  %31 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 4
  %32 = load i16, ptr %31, align 1
  %33 = and i16 %32, 2047
  %34 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 7
  %35 = load i56, ptr %34, align 2
  %36 = zext i16 %33 to i56
  %37 = and i56 %35, -65536
  %38 = or i56 %37, %36
  store i56 %38, ptr %34, align 2
  %39 = load i16, ptr %31, align 1
  %40 = lshr i16 %39, 11
  %41 = add nuw nsw i16 %40, 1
  %42 = and i16 %41, 3
  %43 = zext i16 %42 to i56
  %44 = shl nuw nsw i56 %43, 48
  %45 = and i56 %38, -844424930195457
  %46 = or i56 %44, %45
  store i56 %46, ptr %34, align 2
  %47 = icmp eq i8 %29, 0
  %48 = select i1 %47, i32 536903680, i32 536870912
  %49 = zext i16 %33 to i32
  %50 = shl nuw nsw i32 %49, 16
  %51 = or i32 %50, %48
  %52 = icmp eq i8 %29, 1
  %53 = or i32 %51, -1073741824
  %54 = select i1 %52, i1 %21, i1 false
  %55 = select i1 %54, i32 %53, i32 %51
  %56 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 5, i32 1
  %57 = load ptr, ptr %56, align 4
  store i32 %55, ptr %57, align 4
  %58 = load ptr, ptr %56, align 4
  %59 = getelementptr inbounds %struct.ci_hw_qh, ptr %58, i32 0, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = or i32 %60, 1
  store i32 %61, ptr %59, align 4
  %62 = load i8, ptr %26, align 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %104, label %64

64:                                               ; preds = %17
  %65 = load i8, ptr %30, align 2
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 7
  %69 = load ptr, ptr %68, align 4
  %70 = load ptr, ptr %69, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.17) #10
  %71 = load i8, ptr %26, align 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %104, label %73

73:                                               ; preds = %67
  %74 = load i8, ptr %30, align 2
  br label %75

75:                                               ; preds = %73, %64
  %76 = phi i8 [ %74, %73 ], [ %65, %64 ]
  %77 = phi i32 [ -22, %73 ], [ 0, %64 ]
  %78 = phi i8 [ %71, %73 ], [ %62, %64 ]
  %79 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 7
  %80 = load ptr, ptr %79, align 4
  %81 = zext i8 %78 to i32
  %82 = load i8, ptr %23, align 4
  %83 = add nuw nsw i32 %81, 21
  %84 = getelementptr %struct.ci_hdrc, ptr %80, i32 0, i32 2, i32 6, i32 %83
  %85 = load ptr, ptr %84, align 4
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %87 = getelementptr inbounds %struct.ci_hdrc, ptr %80, i32 0, i32 41
  %88 = load i8, ptr %87, align 2, !range !10
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %75
  %91 = zext i8 %76 to i32
  %92 = icmp eq i8 %82, 1
  %93 = select i1 %92, i32 13434880, i32 205
  %94 = xor i32 %93, -1
  %95 = and i32 %86, %94
  %96 = shl nuw nsw i32 %91, 18
  %97 = or i32 %96, 12582912
  %98 = shl nuw nsw i32 %91, 2
  %99 = or i32 %98, 192
  %100 = select i1 %92, i32 %97, i32 %99
  %101 = and i32 %100, %93
  %102 = or i32 %101, %95
  %103 = load ptr, ptr %84, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %102) #9, !srcloc !16
  br label %104

104:                                              ; preds = %90, %75, %67, %17, %13
  %105 = phi i32 [ -16, %13 ], [ -22, %67 ], [ %77, %75 ], [ %77, %90 ], [ 0, %17 ]
  %106 = load ptr, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %106, i32 noundef %9) #9
  br label %107

107:                                              ; preds = %104, %2
  %108 = phi i32 [ -22, %2 ], [ %105, %104 ]
  ret i32 %108
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ep_disable(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %55, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %55, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #9
  %11 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ci_hdrc, ptr %12, i32 0, i32 18, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %52, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 1
  %18 = load i8, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 2
  %20 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 3
  br label %21

21:                                               ; preds = %48, %16
  %22 = phi i32 [ 0, %16 ], [ %24, %48 ]
  %23 = tail call fastcc i32 @_ep_nuke(ptr noundef nonnull %0)
  %24 = or i32 %23, %22
  %25 = load ptr, ptr %11, align 4
  %26 = load i8, ptr %19, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, ptr %17, align 4
  %29 = add nuw nsw i32 %27, 21
  %30 = getelementptr %struct.ci_hdrc, ptr %25, i32 0, i32 2, i32 6, i32 %29
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %33 = getelementptr inbounds %struct.ci_hdrc, ptr %25, i32 0, i32 41
  %34 = load i8, ptr %33, align 2, !range !10
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = icmp eq i8 %28, 1
  %38 = select i1 %37, i32 -8388609, i32 -129
  %39 = and i32 %32, %38
  %40 = load ptr, ptr %30, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %39) #9, !srcloc !16
  br label %41

41:                                               ; preds = %36, %21
  %42 = load i8, ptr %20, align 2
  %43 = icmp eq i8 %42, 0
  %44 = load i8, ptr %17, align 4
  br i1 %43, label %45, label %48

45:                                               ; preds = %41
  %46 = icmp ne i8 %44, 1
  %47 = zext i1 %46 to i8
  store i8 %47, ptr %17, align 4
  br label %48

48:                                               ; preds = %45, %41
  %49 = phi i8 [ %47, %45 ], [ %44, %41 ]
  %50 = icmp eq i8 %49, %18
  br i1 %50, label %51, label %21

51:                                               ; preds = %48
  store ptr null, ptr %4, align 4
  br label %52

52:                                               ; preds = %51, %7
  %53 = phi i32 [ %24, %51 ], [ 0, %7 ]
  %54 = load ptr, ptr %8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %54, i32 noundef %10) #9
  br label %55

55:                                               ; preds = %52, %3, %1
  %56 = phi i32 [ -22, %1 ], [ -16, %3 ], [ %53, %52 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ep_alloc_request(ptr noundef readnone %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  %5 = or i32 %1, 256
  %6 = and i32 %1, 17
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8, !prof !32

8:                                                ; preds = %4
  %9 = and i32 %1, 1
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 1, i32 2
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i32 [ 0, %4 ], [ %11, %8 ]
  %14 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %13, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef %5, i32 noundef 72) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.ci_hw_req, ptr %16, i32 0, i32 1
  store volatile ptr %19, ptr %19, align 8
  %20 = getelementptr inbounds %struct.ci_hw_req, ptr %16, i32 0, i32 1, i32 1
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ci_hw_req, ptr %16, i32 0, i32 2
  store volatile ptr %21, ptr %21, align 8
  %22 = getelementptr inbounds %struct.ci_hw_req, ptr %16, i32 0, i32 2, i32 1
  store ptr %21, ptr %22, align 4
  br label %23

23:                                               ; preds = %18, %12, %2
  %24 = phi ptr [ null, %2 ], [ %16, %18 ], [ null, %12 ]
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ep_free_request(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %38, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ci_hw_req, ptr %1, i32 0, i32 1
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.18) #10
  br label %38

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #9
  %18 = getelementptr inbounds %struct.ci_hw_req, ptr %1, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %36, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 9
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi ptr [ %19, %21 ], [ %25, %23 ]
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %22, align 4
  %27 = getelementptr inbounds %struct.td_node, ptr %24, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.td_node, ptr %24, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  tail call void @dma_pool_free(ptr noundef %26, ptr noundef %28, i32 noundef %30) #9
  %31 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %24, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  store ptr %32, ptr %34, align 4
  store volatile ptr %33, ptr %32, align 4
  store volatile ptr %24, ptr %24, align 4
  store ptr %24, ptr %31, align 4
  store ptr null, ptr %27, align 4
  tail call void @kfree(ptr noundef %24) #9
  %35 = icmp eq ptr %25, %18
  br i1 %35, label %36, label %23

36:                                               ; preds = %23, %14
  tail call void @kfree(ptr noundef %1) #9
  %37 = load ptr, ptr %15, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %17) #9
  br label %38

38:                                               ; preds = %36, %10, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ep_queue(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  br i1 %6, label %25, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #9
  %15 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ci_hdrc, ptr %16, i32 0, i32 18, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %11
  %21 = tail call fastcc i32 @_ep_queue(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %22

22:                                               ; preds = %20, %11
  %23 = phi i32 [ %21, %20 ], [ 0, %11 ]
  %24 = load ptr, ptr %12, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %14) #9
  br label %25

25:                                               ; preds = %22, %7, %3
  %26 = phi i32 [ -22, %7 ], [ -22, %3 ], [ %23, %22 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ep_dequeue(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %77, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, -114
  br i1 %9, label %10, label %77

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %77, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ci_hw_req, ptr %1, i32 0, i32 1
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %77, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 5
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %77, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %24) #9
  %26 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 7
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ci_hdrc, ptr %27, i32 0, i32 18, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 2
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 1
  %36 = load i8, ptr %35, align 4
  %37 = zext i8 %36 to i32
  tail call fastcc void @hw_ep_flush(ptr noundef %27, i32 noundef %34, i32 noundef %37)
  br label %38

38:                                               ; preds = %31, %22
  %39 = getelementptr inbounds %struct.ci_hw_req, ptr %1, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %39
  br i1 %41, label %57, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 9
  br label %44

44:                                               ; preds = %44, %42
  %45 = phi ptr [ %40, %42 ], [ %46, %44 ]
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %43, align 4
  %48 = getelementptr inbounds %struct.td_node, ptr %45, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.td_node, ptr %45, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  tail call void @dma_pool_free(ptr noundef %47, ptr noundef %49, i32 noundef %51) #9
  %52 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %45, align 4
  %55 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  store ptr %53, ptr %55, align 4
  store volatile ptr %54, ptr %53, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %45, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %52, align 4
  tail call void @kfree(ptr noundef %45) #9
  %56 = icmp eq ptr %46, %39
  br i1 %56, label %57, label %44

57:                                               ; preds = %44, %38
  %58 = getelementptr inbounds %struct.ci_hw_req, ptr %1, i32 0, i32 1, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = load ptr, ptr %15, align 4
  %61 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  store ptr %59, ptr %61, align 4
  store volatile ptr %60, ptr %59, align 4
  store volatile ptr %15, ptr %15, align 4
  store ptr %15, ptr %58, align 4
  %62 = load ptr, ptr %26, align 4
  %63 = getelementptr inbounds %struct.ci_hdrc, ptr %62, i32 0, i32 18
  %64 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 1
  %65 = load i8, ptr %64, align 4
  %66 = zext i8 %65 to i32
  tail call void @usb_gadget_unmap_request(ptr noundef %63, ptr noundef %1, i32 noundef %66) #9
  store i32 -104, ptr %7, align 4
  %67 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 7
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %57
  %71 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %72 = load i16, ptr %71, align 4
  %73 = add i16 %72, 1
  store i16 %73, ptr %71, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  tail call void @usb_gadget_giveback_request(ptr noundef %0, ptr noundef %1) #9
  %74 = load ptr, ptr %23, align 4
  tail call void @_raw_spin_lock(ptr noundef %74) #9
  br label %75

75:                                               ; preds = %70, %57
  %76 = load ptr, ptr %23, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %76, i32 noundef %25) #9
  br label %77

77:                                               ; preds = %75, %18, %14, %10, %6, %2
  %78 = phi i32 [ 0, %75 ], [ -22, %18 ], [ -22, %14 ], [ -22, %10 ], [ -22, %6 ], [ -22, %2 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ep_set_halt(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call fastcc i32 @_ep_set_halt(ptr noundef %0, i32 noundef %1, i1 noundef zeroext true)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ep_set_wedge(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #9
  %11 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 6
  store i32 1, ptr %11, align 4
  %12 = load ptr, ptr %8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %10) #9
  %13 = tail call i32 @usb_ep_set_halt(ptr noundef nonnull %0) #9
  br label %14

14:                                               ; preds = %7, %3, %1
  %15 = phi i32 [ %13, %7 ], [ -22, %3 ], [ -22, %1 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ep_fifo_flush(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %12

3:                                                ; preds = %1
  %4 = load ptr, ptr inttoptr (i32 84 to ptr), align 4
  %5 = load ptr, ptr %4, align 8
  %6 = load i8, ptr inttoptr (i32 44 to ptr), align 4
  %7 = icmp eq i8 %6, 1
  %8 = select i1 %7, i8 -128, i8 0
  %9 = load i8, ptr inttoptr (i32 45 to ptr), align 1
  %10 = or i8 %8, %9
  %11 = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.19, i32 noundef %11) #10
  br label %58

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #9
  %16 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ci_hdrc, ptr %17, i32 0, i32 18, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = load ptr, ptr %13, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %15) #9
  br label %58

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 2
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds %struct.ci_hw_ep, ptr %0, i32 0, i32 1
  %28 = load i8, ptr %27, align 4
  %29 = icmp eq i8 %28, 1
  %30 = select i1 %29, i32 16, i32 0
  %31 = add nuw nsw i32 %30, %26
  %32 = getelementptr %struct.ci_hdrc, ptr %17, i32 0, i32 2, i32 6, i32 19
  %33 = shl nuw i32 1, %31
  %34 = getelementptr inbounds %struct.ci_hdrc, ptr %17, i32 0, i32 41
  %35 = getelementptr %struct.ci_hdrc, ptr %17, i32 0, i32 2, i32 6, i32 18
  br label %36

36:                                               ; preds = %51, %23
  %37 = load i8, ptr %34, align 2, !range !10
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load ptr, ptr %35, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %33) #9, !srcloc !16
  br label %41

41:                                               ; preds = %39, %36
  %42 = load ptr, ptr %35, align 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %44 = and i32 %43, %33
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %46, %41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !29
  %47 = load ptr, ptr %35, align 4
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %49 = and i32 %48, %33
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %46

51:                                               ; preds = %46, %41
  %52 = load ptr, ptr %32, align 4
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %54 = and i32 %53, %33
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %36

56:                                               ; preds = %51
  %57 = load ptr, ptr %13, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %57, i32 noundef %15) #9
  br label %58

58:                                               ; preds = %56, %21, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_unmap_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_set_halt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!8 = !{i64 4993575}
!9 = !{i64 2152533028}
!10 = !{i8 0, i8 2}
!11 = !{i64 2149219114}
!12 = !{i64 2149214938}
!13 = !{i64 2149215013, i64 2149215040, i64 2149215087, i64 2149215109, i64 2149215137, i64 2149215157}
!14 = !{i64 2149242117}
!15 = !{i64 2152534250}
!16 = !{i64 4993157}
!17 = !{i64 2153995184}
!18 = !{i64 2153995354}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{!"auto-init"}
!21 = !{i64 2154011664}
!22 = !{i64 2154012144}
!23 = !{i64 2154011986}
!24 = !{i64 2153978602}
!25 = !{i64 2153978770}
!26 = !{i64 2154031295}
!27 = !{i64 2154034228}
!28 = !{i64 2154010269}
!29 = !{i64 2154010111}
!30 = !{i64 336772}
!31 = !{i64 2149243258}
!32 = !{!"branch_weights", i32 2000, i32 1}
