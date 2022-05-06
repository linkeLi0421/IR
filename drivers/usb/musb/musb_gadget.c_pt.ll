; ModuleID = '/llk/IR/drivers/usb/musb/musb_gadget.c_pt.bc'
source_filename = "../drivers/usb/musb/musb_gadget.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.musb_ep = type { %struct.usb_ep, [12 x i8], ptr, ptr, i8, i8, i8, i16, ptr, ptr, %struct.list_head, i8, i8, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.musb_request = type { %struct.usb_request, %struct.list_head, ptr, ptr, i8, i8, i32 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.musb = type { %struct.spinlock, %struct.spinlock, %struct.musb_io, ptr, %struct.musb_context_registers, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i16, i16, i16, i32, i32, i8, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.timer_list, %struct.notifier_block, ptr, ptr, ptr, ptr, i8, i16, i16, ptr, ptr, i32, i8, [16 x %struct.musb_hw_ep], i16, i16, i8, ptr, i8, i32, i8, i32, i8, i32, i32, [3 x i8], i8, i8, i16, i8, %struct.usb_gadget, ptr, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.musb_io = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.musb_context_registers = type { i8, i8, i16, i8, i8, i8, i8, i8, i32, [16 x %struct.musb_csr_regs] }
%struct.musb_csr_regs = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.musb_hw_ep = type { ptr, ptr, ptr, i8, i8, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i8, i8, %struct.musb_ep, %struct.musb_ep }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dma_channel = type { ptr, i32, i32, i32, i8, i8 }
%struct.dma_controller = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.musb_platform_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.page = type { i32, %union.anon.1, %union.anon.66, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }

@musb_readw = external dso_local local_unnamed_addr global ptr, align 4
@.str = private unnamed_addr constant [19 x i8] c"<== %s, txcsr %04x\00", align 1
@musb_writew = external dso_local local_unnamed_addr global ptr, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%s dma still busy?\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"TXCSR%d %04x, DMA off, len %zu, req %p\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%s idle now\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"<== %s, rxcsr %04x%s %p\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" (dma)\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"%s iso overrun on %p\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"%s, incomprx\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"%s busy, csr %04x\00", align 1
@musb_gadget_operations = internal constant %struct.usb_gadget_ops { ptr @musb_gadget_get_frame, ptr @musb_gadget_wakeup, ptr @musb_gadget_set_self_powered, ptr null, ptr @musb_gadget_vbus_draw, ptr @musb_gadget_pullup, ptr null, ptr null, ptr @musb_gadget_start, ptr @musb_gadget_stop, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@musb_driver_name = external dso_local constant [0 x i8], align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"\014%s %d: unhandled RESUME transition (%s)\0A\00", align 1
@__func__.musb_g_resume = private unnamed_addr constant [14 x i8] c"musb_g_resume\00", align 1
@musb_readb = external dso_local local_unnamed_addr global ptr, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"musb_g_suspend: devctl %02x\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"\014%s %d: unhandled SUSPEND transition (%s)\00", align 1
@__func__.musb_g_suspend = private unnamed_addr constant [15 x i8] c"musb_g_suspend\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"musb_g_disconnect: devctl %02x\00", align 1
@musb_writeb = external dso_local local_unnamed_addr global ptr, align 4
@.str.14 = private unnamed_addr constant [40 x i8] c"Unhandled disconnect %s, setting a_idle\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"<== %s driver '%s'\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"B-Device\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"A-Device\00", align 1
@__tracepoint_musb_req_gb = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_musb_req_tx = external dso_local global %struct.tracepoint, align 4
@.str.19 = private unnamed_addr constant [32 x i8] c"ep:%s disabled - ignore request\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"dma pending...\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"%s old packet still ready , txcsr %03x\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"%s stalling, txcsr %03x\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"hw_ep%d, maxpacket %d, fifo count %d, txcsr %03x\00", align 1
@.str.24 = private unnamed_addr constant [46 x i8] c"%s TX/IN %s len %d/%d, txcsr %04x, fifo %d/%d\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"dma\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"pio\00", align 1
@__tracepoint_musb_req_rx = external dso_local global %struct.tracepoint, align 4
@.str.27 = private unnamed_addr constant [15 x i8] c"DMA pending...\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"%s stalling, RXCSR %04x\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"%s OUT/RX pio fifo %d/%d, maxpacket %d\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__tracepoint_musb_req_alloc = external dso_local global %struct.tracepoint, align 4
@__tracepoint_musb_req_free = external dso_local global %struct.tracepoint, align 4
@__tracepoint_musb_req_start = external dso_local global %struct.tracepoint, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.30 = private unnamed_addr constant [20 x i8] c"gadget D+ pullup %s\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"ep%d%s\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@musb_g_ep0_ops = external dso_local constant %struct.usb_ep_ops, align 4
@musb_ep_ops = internal constant %struct.usb_ep_ops { ptr @musb_gadget_enable, ptr @musb_gadget_disable, ptr null, ptr @musb_alloc_request, ptr @musb_free_request, ptr @musb_gadget_queue, ptr @musb_gadget_dequeue, ptr @musb_gadget_set_halt, ptr @musb_gadget_set_wedge, ptr @musb_gadget_fifo_status, ptr @musb_gadget_fifo_flush }, align 4
@.str.36 = private unnamed_addr constant [34 x i8] c"no support for high bandwidth ISO\00", align 1
@.str.37 = private unnamed_addr constant [38 x i8] c"packet size beyond hardware FIFO size\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"%s: abort DMA --> %d\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"pm runtime get failed in %s\0A\00", align 1
@__func__.musb_gadget_queue = private unnamed_addr constant [18 x i8] c"musb_gadget_queue\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"req %p queued to %s while ep %s\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"%s resume work: %i\0A\00", align 1
@__tracepoint_musb_req_enq = external dso_local global %struct.tracepoint, align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.44 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.45 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.46 = private unnamed_addr constant [29 x i8] c"request %p not queued to %s\0A\00", align 1
@__tracepoint_musb_req_deq = external dso_local global %struct.tracepoint, align 4
@.str.47 = private unnamed_addr constant [36 x i8] c"request in progress, cannot halt %s\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"FIFO busy, cannot halt %s\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"%s: %s stall\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"restarting the request\00", align 1
@.str.53 = private unnamed_addr constant [26 x i8] c"Sending SRP: devctl: %02x\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.54 = private unnamed_addr constant [19 x i8] c"Unhandled wake: %s\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"issue wakeup\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @musb_g_giveback(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 12
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr inbounds %struct.musb_request, ptr %1, i32 0, i32 1
  %7 = getelementptr inbounds %struct.musb_request, ptr %1, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  %11 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, -115
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 %2, ptr %11, align 4
  br label %15

15:                                               ; preds = %14, %3
  %16 = getelementptr inbounds %struct.musb_request, ptr %1, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  store i8 1, ptr %4, align 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %18 = load i16, ptr %17, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %20 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %46, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.musb_request, ptr %1, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %46, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.musb_request, ptr %1, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.musb_ep, ptr %29, i32 0, i32 9
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %46, label %33

33:                                               ; preds = %27
  %34 = icmp eq i32 %25, 2
  %35 = getelementptr inbounds %struct.musb, ptr %17, i32 0, i32 25
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.musb_request, ptr %1, i32 0, i32 4
  %40 = load i8, ptr %39, align 4
  %41 = icmp eq i8 %40, 0
  %42 = select i1 %41, i32 2, i32 1
  br i1 %34, label %43, label %44

43:                                               ; preds = %33
  tail call void @dma_unmap_page_attrs(ptr noundef %36, i32 noundef %21, i32 noundef %38, i32 noundef %42, i32 noundef 0) #10
  store i32 -1, ptr %20, align 4
  br label %45

44:                                               ; preds = %33
  tail call void @dma_sync_single_for_cpu(ptr noundef %36, i32 noundef %21, i32 noundef %38, i32 noundef %42) #10
  br label %45

45:                                               ; preds = %44, %43
  store i32 0, ptr %24, align 4
  br label %46

46:                                               ; preds = %45, %27, %23, %15
  %47 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_gb, i32 0, i32 1), align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = tail call ptr @llvm.thread.pointer() #10
  %51 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %52 = load i32, ptr %51, align 8
  %53 = lshr i32 %52, 5
  %54 = getelementptr i32, ptr @__cpu_online_mask, i32 %53
  %55 = load volatile i32, ptr %54, align 4
  %56 = and i32 %52, 31
  %57 = shl nuw i32 1, %56
  %58 = and i32 %57, %55
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %49
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %61 = tail call i32 @__traceiter_musb_req_gb(ptr noundef null, ptr noundef %1) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  br label %62

62:                                               ; preds = %60, %49, %46
  %63 = getelementptr inbounds %struct.musb_request, ptr %1, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  tail call void @usb_gadget_giveback_request(ptr noundef %64, ptr noundef %1) #10
  tail call void @_raw_spin_lock(ptr noundef %17) #10
  store i8 %5, ptr %4, align 1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @unmap_dma_buffer(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.musb_request, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.musb_request, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.musb_ep, ptr %8, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.usb_request, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %29, label %16

16:                                               ; preds = %12
  %17 = icmp eq i32 %4, 2
  %18 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 25
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.usb_request, ptr %0, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.musb_request, ptr %0, i32 0, i32 4
  %23 = load i8, ptr %22, align 4
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %24, i32 2, i32 1
  br i1 %17, label %26, label %27

26:                                               ; preds = %16
  tail call void @dma_unmap_page_attrs(ptr noundef %19, i32 noundef %14, i32 noundef %21, i32 noundef %25, i32 noundef 0) #10
  store i32 -1, ptr %13, align 4
  br label %28

27:                                               ; preds = %16
  tail call void @dma_sync_single_for_cpu(ptr noundef %19, i32 noundef %14, i32 noundef %21, i32 noundef %25) #10
  br label %28

28:                                               ; preds = %27, %26
  store i32 0, ptr %3, align 4
  br label %29

29:                                               ; preds = %28, %12, %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_giveback_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @musb_g_tx(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %4 = load ptr, ptr %3, align 8
  %5 = zext i8 %1 to i32
  %6 = getelementptr %struct.musb, ptr %0, i32 0, i32 35, i32 %5, i32 15
  %7 = getelementptr %struct.musb, ptr %0, i32 0, i32 35, i32 %5, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 2, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %10(ptr noundef %4, i8 noundef zeroext %1) #10
  %11 = getelementptr %struct.musb, ptr %0, i32 0, i32 35, i32 %5, i32 15, i32 10
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  %14 = getelementptr i8, ptr %12, i32 -56
  %15 = select i1 %13, ptr null, ptr %14
  %16 = load ptr, ptr @musb_readw, align 4
  %17 = tail call zeroext i16 %16(ptr noundef %8, i32 noundef 2) #10
  %18 = getelementptr inbounds %struct.usb_ep, ptr %6, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = zext i16 %17 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %19, i32 noundef %20) #10
  %21 = getelementptr %struct.musb, ptr %0, i32 0, i32 35, i32 %5, i32 15, i32 9
  %22 = load ptr, ptr %21, align 4
  %23 = and i32 %20, 32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %2
  %26 = and i16 %17, -167
  %27 = or i16 %26, 134
  %28 = load ptr, ptr @musb_writew, align 4
  tail call void %28(ptr noundef %8, i32 noundef 2, i16 noundef zeroext %27) #10
  br label %131

29:                                               ; preds = %2
  %30 = and i32 %20, 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = and i16 %17, -168
  %34 = or i16 %33, 162
  %35 = load ptr, ptr @musb_writew, align 4
  tail call void %35(ptr noundef %8, i32 noundef 2, i16 noundef zeroext %34) #10
  br label %36

36:                                               ; preds = %32, %29
  %37 = phi i16 [ %34, %32 ], [ %17, %29 ]
  %38 = icmp eq ptr %22, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.dma_channel, ptr %22, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %44) #10
  br label %131

45:                                               ; preds = %39, %36
  %46 = icmp eq ptr %15, null
  br i1 %46, label %131, label %47

47:                                               ; preds = %45
  %48 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_tx, i32 0, i32 1), align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %47
  %51 = tail call ptr @llvm.thread.pointer() #10
  %52 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %53 = load i32, ptr %52, align 8
  %54 = lshr i32 %53, 5
  %55 = getelementptr i32, ptr @__cpu_online_mask, i32 %54
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %53, 31
  %58 = shl nuw i32 1, %57
  %59 = and i32 %58, %56
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %50
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %62 = tail call i32 @__traceiter_musb_req_tx(ptr noundef null, ptr noundef nonnull %15) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  br label %63

63:                                               ; preds = %61, %50, %47
  %64 = and i16 %37, 4096
  %65 = icmp eq i16 %64, 0
  %66 = select i1 %38, i1 true, i1 %65
  br i1 %66, label %83, label %67

67:                                               ; preds = %63
  %68 = and i16 %37, 28504
  %69 = or i16 %68, 162
  %70 = load ptr, ptr @musb_writew, align 4
  tail call void %70(ptr noundef %8, i32 noundef 2, i16 noundef zeroext %69) #10
  %71 = load ptr, ptr @musb_readw, align 4
  %72 = tail call zeroext i16 %71(ptr noundef %8, i32 noundef 2) #10
  %73 = load ptr, ptr %21, align 4
  %74 = getelementptr inbounds %struct.dma_channel, ptr %73, i32 0, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.usb_request, ptr %15, i32 0, i32 12
  %77 = load i32, ptr %76, align 4
  %78 = add i32 %77, %75
  store i32 %78, ptr %76, align 4
  %79 = zext i16 %72 to i32
  %80 = load ptr, ptr %21, align 4
  %81 = getelementptr inbounds %struct.dma_channel, ptr %80, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %5, i32 noundef %79, i32 noundef %82, ptr noundef nonnull %15) #10
  br label %83

83:                                               ; preds = %67, %63
  %84 = phi i16 [ %72, %67 ], [ %37, %63 ]
  %85 = getelementptr inbounds %struct.usb_request, ptr %15, i32 0, i32 6
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, 262144
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %110, label %89

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.usb_request, ptr %15, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %110, label %93

93:                                               ; preds = %89
  %94 = getelementptr %struct.musb, ptr %0, i32 0, i32 35, i32 %5, i32 15, i32 7
  %95 = load i16, ptr %94, align 4
  %96 = zext i16 %95 to i32
  %97 = urem i32 %91, %96
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.usb_request, ptr %15, i32 0, i32 12
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, %91
  br i1 %102, label %103, label %110

103:                                              ; preds = %99
  %104 = and i16 %84, 1
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %106, label %131

106:                                              ; preds = %103
  %107 = load ptr, ptr @musb_writew, align 4
  tail call void %107(ptr noundef %8, i32 noundef 2, i16 noundef zeroext 8193) #10
  %108 = load i32, ptr %85, align 4
  %109 = and i32 %108, -262145
  store i32 %109, ptr %85, align 4
  br label %110

110:                                              ; preds = %106, %99, %93, %89, %83
  %111 = getelementptr inbounds %struct.usb_request, ptr %15, i32 0, i32 12
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr inbounds %struct.usb_request, ptr %15, i32 0, i32 1
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %129

116:                                              ; preds = %110
  tail call void @musb_g_giveback(ptr noundef %6, ptr noundef nonnull %15, i32 noundef 0)
  %117 = load ptr, ptr %9, align 4
  tail call void %117(ptr noundef %4, i8 noundef zeroext %1) #10
  %118 = getelementptr %struct.musb, ptr %0, i32 0, i32 35, i32 %5, i32 15, i32 8
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %127, label %121

121:                                              ; preds = %116
  %122 = load volatile ptr, ptr %11, align 4
  %123 = icmp eq ptr %122, %11
  %124 = getelementptr i8, ptr %122, i32 -56
  %125 = icmp eq ptr %124, null
  %126 = or i1 %123, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %121, %116
  %128 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %128) #10
  br label %131

129:                                              ; preds = %121, %110
  %130 = phi ptr [ %14, %110 ], [ %124, %121 ]
  tail call fastcc void @txstate(ptr noundef %0, ptr noundef %130)
  br label %131

131:                                              ; preds = %129, %127, %103, %45, %43, %25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_dbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @txstate(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.musb_request, ptr %1, i32 0, i32 5
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr %struct.musb, ptr %0, i32 0, i32 35, i32 %5, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.musb_request, ptr %1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.musb_ep, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.usb_ep, ptr %9, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef %15) #10
  br label %224

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.musb_ep, ptr %9, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.dma_channel, ptr %18, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.20) #10
  br label %224

25:                                               ; preds = %20, %16
  %26 = load ptr, ptr @musb_readw, align 4
  %27 = tail call zeroext i16 %26(ptr noundef %7, i32 noundef 2) #10
  %28 = getelementptr inbounds %struct.musb_ep, ptr %9, i32 0, i32 5
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 2
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 47
  %33 = load i24, ptr %32, align 4
  %34 = and i24 %33, 128
  %35 = icmp eq i24 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.musb_ep, ptr %9, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.musb_hw_ep, ptr %38, i32 0, i32 7
  br label %42

40:                                               ; preds = %31, %25
  %41 = getelementptr inbounds %struct.musb_ep, ptr %9, i32 0, i32 7
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi ptr [ %39, %36 ], [ %41, %40 ]
  %44 = load i16, ptr %43, align 4
  %45 = zext i16 %44 to i32
  %46 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %49 = load i32, ptr %48, align 4
  %50 = sub i32 %47, %49
  %51 = tail call i32 @llvm.smin.i32(i32 %45, i32 %50)
  %52 = trunc i32 %51 to i16
  %53 = zext i16 %27 to i32
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %42
  %57 = getelementptr inbounds %struct.usb_ep, ptr %9, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %58, i32 noundef %53) #10
  br label %224

59:                                               ; preds = %42
  %60 = and i32 %53, 16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.usb_ep, ptr %9, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef %64, i32 noundef %53) #10
  br label %224

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.musb_ep, ptr %9, i32 0, i32 7
  %67 = load i16, ptr %66, align 4
  %68 = zext i16 %67 to i32
  %69 = and i32 %51, 65535
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %5, i32 noundef %68, i32 noundef %69, i32 noundef %53) #10
  %70 = getelementptr inbounds %struct.musb_request, ptr %1, i32 0, i32 6
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %200, label %73

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 24
  %75 = load ptr, ptr %74, align 4
  %76 = load i32, ptr %46, align 4
  %77 = load i32, ptr %48, align 4
  %78 = sub i32 %76, %77
  %79 = load ptr, ptr %17, align 4
  %80 = getelementptr inbounds %struct.dma_channel, ptr %79, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = tail call i32 @llvm.umin.i32(i32 %78, i32 %81)
  %83 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 2
  %84 = load i32, ptr %83, align 4
  %85 = icmp ne i32 %84, -1
  %86 = icmp ne i32 %82, 0
  %87 = select i1 %85, i1 %86, i1 false
  %88 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 3
  %89 = load ptr, ptr %88, align 8
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %90, 68
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %137, label %93

93:                                               ; preds = %73
  %94 = load i16, ptr %66, align 4
  %95 = zext i16 %94 to i32
  %96 = icmp uge i32 %82, %95
  %97 = zext i1 %96 to i8
  %98 = getelementptr inbounds %struct.dma_channel, ptr %79, i32 0, i32 4
  store i8 %97, ptr %98, align 4
  br i1 %87, label %99, label %137

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.dma_controller, ptr %75, i32 0, i32 3
  %101 = load ptr, ptr %100, align 4
  %102 = load ptr, ptr %17, align 4
  %103 = load i16, ptr %66, align 4
  %104 = getelementptr inbounds %struct.dma_channel, ptr %102, i32 0, i32 4
  %105 = load i8, ptr %104, align 4, !range !16
  %106 = load i32, ptr %83, align 4
  %107 = load i32, ptr %48, align 4
  %108 = add i32 %107, %106
  %109 = tail call i32 %101(ptr noundef %102, i16 noundef zeroext %103, i8 noundef zeroext %105, i32 noundef %108, i32 noundef %82) #10
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %137, label %111

111:                                              ; preds = %99
  %112 = load ptr, ptr %17, align 4
  %113 = getelementptr inbounds %struct.dma_channel, ptr %112, i32 0, i32 4
  %114 = load i8, ptr %113, align 4, !range !16
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = and i16 %27, 28505
  %118 = load ptr, ptr @musb_writew, align 4
  %119 = or i16 %117, 166
  tail call void %118(ptr noundef %7, i32 noundef 2, i16 noundef zeroext %119) #10
  %120 = and i16 %27, 19455
  %121 = or i16 %120, 12288
  br label %143

122:                                              ; preds = %111
  %123 = or i16 %27, 13312
  %124 = getelementptr inbounds %struct.musb_ep, ptr %9, i32 0, i32 13
  %125 = load i8, ptr %124, align 2
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %122
  %128 = load i8, ptr %28, align 1
  %129 = icmp eq i8 %128, 2
  br i1 %129, label %130, label %143

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 47
  %132 = load i24, ptr %131, align 4
  %133 = and i24 %132, 128
  %134 = icmp eq i24 %133, 0
  br i1 %134, label %143, label %135

135:                                              ; preds = %130, %122
  %136 = or i16 %27, -19456
  br label %143

137:                                              ; preds = %99, %93, %73
  %138 = phi i1 [ false, %99 ], [ %87, %73 ], [ false, %93 ]
  %139 = load ptr, ptr %88, align 8
  %140 = load i32, ptr %139, align 4
  %141 = and i32 %140, 32
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %175, label %151

143:                                              ; preds = %135, %130, %127, %116
  %144 = phi i16 [ %121, %116 ], [ %136, %135 ], [ %123, %130 ], [ %123, %127 ]
  %145 = and i16 %144, -5
  %146 = load ptr, ptr @musb_writew, align 4
  tail call void %146(ptr noundef %7, i32 noundef 2, i16 noundef zeroext %145) #10
  %147 = load ptr, ptr %88, align 8
  %148 = load i32, ptr %147, align 4
  %149 = and i32 %148, 32
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %212, label %151

151:                                              ; preds = %143, %137
  %152 = phi i16 [ %145, %143 ], [ %27, %137 ]
  %153 = phi i1 [ true, %143 ], [ %138, %137 ]
  %154 = and i16 %152, -13480
  %155 = load ptr, ptr @musb_writew, align 4
  %156 = or i16 %154, 13474
  tail call void %155(ptr noundef %7, i32 noundef 2, i16 noundef zeroext %156) #10
  %157 = load ptr, ptr @musb_readw, align 4
  %158 = tail call zeroext i16 %157(ptr noundef %7, i32 noundef 2) #10
  br i1 %153, label %159, label %169

159:                                              ; preds = %151
  %160 = getelementptr inbounds %struct.dma_controller, ptr %75, i32 0, i32 3
  %161 = load ptr, ptr %160, align 4
  %162 = load ptr, ptr %17, align 4
  %163 = load i16, ptr %66, align 4
  %164 = load i32, ptr %83, align 4
  %165 = load i32, ptr %48, align 4
  %166 = add i32 %165, %164
  %167 = tail call i32 %161(ptr noundef %162, i16 noundef zeroext %163, i8 noundef zeroext 0, i32 noundef %166, i32 noundef %82) #10
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %212

169:                                              ; preds = %159, %151
  %170 = getelementptr inbounds %struct.dma_controller, ptr %75, i32 0, i32 2
  %171 = load ptr, ptr %170, align 4
  %172 = load ptr, ptr %17, align 4
  tail call void %171(ptr noundef %172) #10
  store ptr null, ptr %17, align 4
  %173 = and i16 %158, -4097
  %174 = load ptr, ptr @musb_writew, align 4
  tail call void %174(ptr noundef %7, i32 noundef 2, i16 noundef zeroext %173) #10
  br label %176

175:                                              ; preds = %137
  br i1 %138, label %212, label %176

176:                                              ; preds = %175, %169
  %177 = phi i16 [ %173, %169 ], [ %27, %175 ]
  %178 = load i32, ptr %70, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %200, label %180

180:                                              ; preds = %176
  %181 = load ptr, ptr %8, align 4
  %182 = getelementptr inbounds %struct.musb_ep, ptr %181, i32 0, i32 9
  %183 = load ptr, ptr %182, align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %200, label %185

185:                                              ; preds = %180
  %186 = load i32, ptr %83, align 4
  %187 = icmp eq i32 %186, -1
  br i1 %187, label %200, label %188

188:                                              ; preds = %185
  %189 = icmp eq i32 %178, 2
  %190 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %191 = load ptr, ptr %190, align 8
  %192 = load i32, ptr %46, align 4
  %193 = getelementptr inbounds %struct.musb_request, ptr %1, i32 0, i32 4
  %194 = load i8, ptr %193, align 4
  %195 = icmp eq i8 %194, 0
  %196 = select i1 %195, i32 2, i32 1
  br i1 %189, label %197, label %198

197:                                              ; preds = %188
  tail call void @dma_unmap_page_attrs(ptr noundef %191, i32 noundef %186, i32 noundef %192, i32 noundef %196, i32 noundef 0) #10
  store i32 -1, ptr %83, align 4
  br label %199

198:                                              ; preds = %188
  tail call void @dma_sync_single_for_cpu(ptr noundef %191, i32 noundef %186, i32 noundef %192, i32 noundef %196) #10
  br label %199

199:                                              ; preds = %198, %197
  store i32 0, ptr %70, align 4
  br label %200

200:                                              ; preds = %199, %185, %180, %176, %65
  %201 = phi i16 [ %177, %176 ], [ %177, %180 ], [ %177, %185 ], [ %177, %199 ], [ %27, %65 ]
  %202 = getelementptr inbounds %struct.musb_ep, ptr %9, i32 0, i32 2
  %203 = load ptr, ptr %202, align 4
  %204 = load ptr, ptr %1, align 4
  %205 = load i32, ptr %48, align 4
  %206 = getelementptr i8, ptr %204, i32 %205
  tail call void @musb_write_fifo(ptr noundef %203, i16 noundef zeroext %52, ptr noundef %206) #10
  %207 = load i32, ptr %48, align 4
  %208 = add i32 %207, %69
  store i32 %208, ptr %48, align 4
  %209 = and i16 %201, -6
  %210 = or i16 %209, 1
  %211 = load ptr, ptr @musb_writew, align 4
  tail call void %211(ptr noundef %7, i32 noundef 2, i16 noundef zeroext %210) #10
  br label %212

212:                                              ; preds = %200, %175, %159, %143
  %213 = phi ptr [ @.str.26, %200 ], [ @.str.25, %175 ], [ @.str.25, %159 ], [ @.str.25, %143 ]
  %214 = getelementptr inbounds %struct.usb_ep, ptr %9, i32 0, i32 1
  %215 = load ptr, ptr %214, align 4
  %216 = load i32, ptr %48, align 4
  %217 = load i32, ptr %46, align 4
  %218 = load ptr, ptr @musb_readw, align 4
  %219 = tail call zeroext i16 %218(ptr noundef %7, i32 noundef 2) #10
  %220 = zext i16 %219 to i32
  %221 = load ptr, ptr @musb_readw, align 4
  %222 = tail call zeroext i16 %221(ptr noundef %7, i32 noundef 0) #10
  %223 = zext i16 %222 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef %215, ptr noundef nonnull %213, i32 noundef %216, i32 noundef %217, i32 noundef %220, i32 noundef %69, i32 noundef %223) #10
  br label %224

224:                                              ; preds = %212, %62, %56, %24, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @musb_g_rx(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %4 = load ptr, ptr %3, align 8
  %5 = zext i8 %1 to i32
  %6 = getelementptr %struct.musb, ptr %0, i32 0, i32 35, i32 %5, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.musb, ptr %0, i32 0, i32 35, i32 %5, i32 4
  %9 = load i8, ptr %8, align 1, !range !16
  %10 = icmp eq i8 %9, 0
  %11 = getelementptr %struct.musb, ptr %0, i32 0, i32 35, i32 %5, i32 15
  %12 = getelementptr %struct.musb, ptr %0, i32 0, i32 35, i32 %5, i32 16
  %13 = select i1 %10, ptr %12, ptr %11
  %14 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 2, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef %4, i8 noundef zeroext %1) #10
  %16 = getelementptr inbounds %struct.musb_ep, ptr %13, i32 0, i32 10
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  %19 = getelementptr i8, ptr %17, i32 -56
  %20 = icmp eq ptr %19, null
  %21 = or i1 %18, %20
  br i1 %21, label %143, label %22

22:                                               ; preds = %2
  %23 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_rx, i32 0, i32 1), align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = tail call ptr @llvm.thread.pointer() #10
  %27 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 8
  %29 = lshr i32 %28, 5
  %30 = getelementptr i32, ptr @__cpu_online_mask, i32 %29
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %28, 31
  %33 = shl nuw i32 1, %32
  %34 = and i32 %33, %31
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %25
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %37 = tail call i32 @__traceiter_musb_req_rx(ptr noundef null, ptr noundef nonnull %19) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !18
  br label %38

38:                                               ; preds = %36, %25, %22
  %39 = load ptr, ptr @musb_readw, align 4
  %40 = tail call zeroext i16 %39(ptr noundef %7, i32 noundef 6) #10
  %41 = getelementptr inbounds %struct.musb_ep, ptr %13, i32 0, i32 9
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.usb_ep, ptr %13, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = zext i16 %40 to i32
  %46 = icmp eq ptr %42, null
  %47 = select i1 %46, ptr @.str.6, ptr @.str.5
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %44, i32 noundef %45, ptr noundef nonnull %47, ptr noundef nonnull %19) #10
  %48 = and i32 %45, 64
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %38
  %51 = and i16 %40, -70
  %52 = or i16 %51, 5
  %53 = load ptr, ptr @musb_writew, align 4
  tail call void %53(ptr noundef %7, i32 noundef 6, i16 noundef zeroext %52) #10
  br label %143

54:                                               ; preds = %38
  %55 = and i32 %45, 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %54
  %58 = and i16 %40, -5
  %59 = load ptr, ptr @musb_writew, align 4
  tail call void %59(ptr noundef %7, i32 noundef 6, i16 noundef zeroext %58) #10
  %60 = getelementptr inbounds %struct.musb_ep, ptr %13, i32 0, i32 1
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef %60, ptr noundef nonnull %19) #10
  %61 = getelementptr i8, ptr %17, i32 -8
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, -115
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 -75, ptr %61, align 4
  br label %65

65:                                               ; preds = %64, %57, %54
  %66 = phi i16 [ %58, %64 ], [ %58, %57 ], [ %40, %54 ]
  %67 = zext i16 %66 to i32
  %68 = and i32 %67, 256
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = load ptr, ptr %43, align 4
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef %71) #10
  br label %72

72:                                               ; preds = %70, %65
  br i1 %46, label %141, label %73

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.dma_channel, ptr %42, i32 0, i32 3
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load ptr, ptr %43, align 4
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef %78, i32 noundef %67) #10
  br label %143

79:                                               ; preds = %73
  %80 = and i32 %67, 8192
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %141, label %82

82:                                               ; preds = %79
  %83 = and i16 %66, 22458
  %84 = load ptr, ptr @musb_writew, align 4
  %85 = or i16 %83, 69
  tail call void %84(ptr noundef %7, i32 noundef 6, i16 noundef zeroext %85) #10
  %86 = load ptr, ptr %41, align 4
  %87 = getelementptr inbounds %struct.dma_channel, ptr %86, i32 0, i32 2
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr i8, ptr %17, i32 -4
  %90 = load i32, ptr %89, align 4
  %91 = add i32 %90, %88
  store i32 %91, ptr %89, align 4
  %92 = getelementptr inbounds %struct.dma_channel, ptr %42, i32 0, i32 4
  %93 = load i8, ptr %92, align 4, !range !16
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %82
  %96 = getelementptr %struct.musb, ptr %0, i32 0, i32 35, i32 %5, i32 6
  %97 = load i8, ptr %96, align 1, !range !16
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %95, %82
  %100 = getelementptr inbounds %struct.dma_channel, ptr %42, i32 0, i32 2
  %101 = load i32, ptr %100, align 4
  %102 = getelementptr inbounds %struct.musb_ep, ptr %13, i32 0, i32 7
  %103 = load i16, ptr %102, align 4
  %104 = zext i16 %103 to i32
  %105 = add nsw i32 %104, -1
  %106 = and i32 %105, %101
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %99, %95
  %109 = and i16 %66, 22526
  %110 = load ptr, ptr @musb_writew, align 4
  tail call void %110(ptr noundef %7, i32 noundef 6, i16 noundef zeroext %109) #10
  %111 = load i32, ptr %89, align 4
  br label %112

112:                                              ; preds = %108, %99
  %113 = phi i32 [ %111, %108 ], [ %91, %99 ]
  %114 = getelementptr i8, ptr %17, i32 -52
  %115 = load i32, ptr %114, align 4
  %116 = icmp ult i32 %113, %115
  br i1 %116, label %117, label %134

117:                                              ; preds = %112
  %118 = load ptr, ptr %41, align 4
  %119 = getelementptr inbounds %struct.dma_channel, ptr %118, i32 0, i32 2
  %120 = load i32, ptr %119, align 4
  %121 = getelementptr inbounds %struct.musb_ep, ptr %13, i32 0, i32 7
  %122 = load i16, ptr %121, align 4
  %123 = zext i16 %122 to i32
  %124 = icmp eq i32 %120, %123
  br i1 %124, label %125, label %134

125:                                              ; preds = %117
  %126 = load ptr, ptr @musb_readw, align 4
  %127 = tail call zeroext i16 %126(ptr noundef %7, i32 noundef 6) #10
  %128 = and i16 %127, 1
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %143, label %130

130:                                              ; preds = %125
  %131 = getelementptr %struct.musb, ptr %0, i32 0, i32 35, i32 %5, i32 6
  %132 = load i8, ptr %131, align 1, !range !16
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %143, label %141

134:                                              ; preds = %117, %112
  tail call void @musb_g_giveback(ptr noundef %13, ptr noundef nonnull %19, i32 noundef 0)
  %135 = load ptr, ptr %14, align 4
  tail call void %135(ptr noundef %4, i8 noundef zeroext %1) #10
  %136 = load volatile ptr, ptr %16, align 4
  %137 = icmp eq ptr %136, %16
  %138 = getelementptr i8, ptr %136, i32 -56
  %139 = icmp eq ptr %138, null
  %140 = or i1 %137, %139
  br i1 %140, label %143, label %141

141:                                              ; preds = %134, %130, %79, %72
  %142 = phi ptr [ %19, %130 ], [ %138, %134 ], [ %19, %79 ], [ %19, %72 ]
  tail call fastcc void @rxstate(ptr noundef %0, ptr noundef nonnull %142)
  br label %143

143:                                              ; preds = %141, %134, %130, %125, %77, %50, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rxstate(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.musb_request, ptr %1, i32 0, i32 5
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr %struct.musb, ptr %0, i32 0, i32 35, i32 %5, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr @musb_readw, align 4
  %9 = tail call zeroext i16 %8(ptr noundef %7, i32 noundef 6) #10
  %10 = getelementptr %struct.musb, ptr %0, i32 0, i32 35, i32 %5, i32 4
  %11 = load i8, ptr %10, align 1, !range !16
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr %struct.musb, ptr %0, i32 0, i32 35, i32 %5, i32 15
  %14 = getelementptr %struct.musb, ptr %0, i32 0, i32 35, i32 %5, i32 16
  %15 = select i1 %12, ptr %14, ptr %13
  %16 = getelementptr inbounds %struct.musb_ep, ptr %15, i32 0, i32 7
  %17 = load i16, ptr %16, align 4
  %18 = getelementptr inbounds %struct.musb_ep, ptr %15, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.usb_ep, ptr %15, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef %23) #10
  br label %258

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.musb_ep, ptr %15, i32 0, i32 9
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.dma_channel, ptr %26, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.27) #10
  br label %258

33:                                               ; preds = %28, %24
  %34 = zext i16 %9 to i32
  %35 = and i32 %34, 32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.usb_ep, ptr %15, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.28, ptr noundef %39, i32 noundef %34) #10
  br label %258

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 3
  %42 = load ptr, ptr %41, align 8
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %75, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.musb_request, ptr %1, i32 0, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %75, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 24
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.dma_controller, ptr %52, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = lshr i32 %56, 19
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  %60 = xor i8 %59, 1
  %61 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, %62
  %66 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = sub i32 %67, %64
  %69 = tail call i32 %54(ptr noundef %26, i16 noundef zeroext %17, i8 noundef zeroext %60, i32 noundef %65, i32 noundef %68) #10
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %50
  %72 = and i16 %9, 22458
  %73 = or i16 %72, 8261
  %74 = load ptr, ptr @musb_writew, align 4
  tail call void %74(ptr noundef %7, i32 noundef 6, i16 noundef zeroext %73) #10
  br label %258

75:                                               ; preds = %50, %46, %40
  %76 = and i16 %9, 1
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %247, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr @musb_readw, align 4
  %80 = tail call zeroext i16 %79(ptr noundef %7, i32 noundef 8) #10
  %81 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 6
  %82 = load i32, ptr %81, align 4
  %83 = and i32 %82, 524288
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %78
  %86 = load i16, ptr %16, align 4
  %87 = icmp eq i16 %80, %86
  br i1 %87, label %89, label %88

88:                                               ; preds = %85, %78
  br label %89

89:                                               ; preds = %88, %85
  %90 = phi i1 [ true, %88 ], [ false, %85 ]
  %91 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = icmp ult i32 %92, %94
  br i1 %95, label %96, label %247

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.musb_request, ptr %1, i32 0, i32 6
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %233, label %100

100:                                              ; preds = %96
  %101 = load ptr, ptr %41, align 8
  %102 = load i32, ptr %101, align 4
  %103 = and i32 %102, 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %164, label %105

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 24
  %107 = load ptr, ptr %106, align 4
  %108 = load ptr, ptr %25, align 4
  br i1 %90, label %123, label %109

109:                                              ; preds = %105
  %110 = or i16 %9, -32768
  %111 = load ptr, ptr @musb_writew, align 4
  tail call void %111(ptr noundef %7, i32 noundef 6, i16 noundef zeroext %110) #10
  %112 = or i16 %9, -24576
  %113 = load ptr, ptr @musb_writew, align 4
  tail call void %113(ptr noundef %7, i32 noundef 6, i16 noundef zeroext %112) #10
  %114 = load ptr, ptr @musb_writew, align 4
  %115 = or i16 %9, -22528
  tail call void %114(ptr noundef %7, i32 noundef 6, i16 noundef zeroext %115) #10
  %116 = load ptr, ptr @musb_writew, align 4
  tail call void %116(ptr noundef %7, i32 noundef 6, i16 noundef zeroext %112) #10
  %117 = load i32, ptr %93, align 4
  %118 = load i32, ptr %91, align 4
  %119 = sub i32 %117, %118
  %120 = getelementptr inbounds %struct.dma_channel, ptr %108, i32 0, i32 1
  %121 = load i32, ptr %120, align 4
  %122 = tail call i32 @llvm.umin.i32(i32 %119, i32 %121)
  br label %144

123:                                              ; preds = %105
  %124 = getelementptr inbounds %struct.musb_ep, ptr %15, i32 0, i32 13
  %125 = load i8, ptr %124, align 2
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.musb_ep, ptr %15, i32 0, i32 2
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.musb_hw_ep, ptr %129, i32 0, i32 6
  %131 = load i8, ptr %130, align 1, !range !16
  %132 = icmp eq i8 %131, 0
  %133 = or i16 %9, -32768
  %134 = select i1 %132, i16 %9, i16 %133
  br label %135

135:                                              ; preds = %127, %123
  %136 = phi i16 [ %9, %123 ], [ %134, %127 ]
  %137 = or i16 %136, 8192
  %138 = load ptr, ptr @musb_writew, align 4
  tail call void %138(ptr noundef %7, i32 noundef 6, i16 noundef zeroext %137) #10
  %139 = load i32, ptr %93, align 4
  %140 = load i32, ptr %91, align 4
  %141 = sub i32 %139, %140
  %142 = zext i16 %80 to i32
  %143 = tail call i32 @llvm.umin.i32(i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %135, %109
  %145 = phi i8 [ 0, %135 ], [ 1, %109 ]
  %146 = phi i32 [ %143, %135 ], [ %122, %109 ]
  %147 = phi i16 [ %137, %135 ], [ %112, %109 ]
  %148 = load ptr, ptr %25, align 4
  %149 = getelementptr inbounds %struct.dma_channel, ptr %148, i32 0, i32 4
  store i8 %145, ptr %149, align 4
  %150 = getelementptr inbounds %struct.dma_controller, ptr %107, i32 0, i32 3
  %151 = load ptr, ptr %150, align 4
  %152 = load i16, ptr %16, align 4
  %153 = getelementptr inbounds %struct.dma_channel, ptr %108, i32 0, i32 4
  %154 = load i8, ptr %153, align 4, !range !16
  %155 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 2
  %156 = load i32, ptr %155, align 4
  %157 = load i32, ptr %91, align 4
  %158 = add i32 %157, %156
  %159 = tail call i32 %151(ptr noundef %108, i16 noundef zeroext %152, i8 noundef zeroext %154, i32 noundef %158, i32 noundef %146) #10
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %258

161:                                              ; preds = %144
  %162 = load ptr, ptr %41, align 8
  %163 = load i32, ptr %162, align 4
  br label %164

164:                                              ; preds = %161, %100
  %165 = phi i32 [ %163, %161 ], [ %102, %100 ]
  %166 = phi i16 [ %147, %161 ], [ %9, %100 ]
  %167 = and i32 %165, 64
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %218, label %169

169:                                              ; preds = %164
  %170 = load i32, ptr %91, align 4
  %171 = load i32, ptr %93, align 4
  %172 = icmp ugt i32 %171, %170
  br i1 %172, label %173, label %218

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 24
  %175 = load ptr, ptr %174, align 4
  %176 = load ptr, ptr %25, align 4
  %177 = zext i16 %80 to i32
  %178 = load i16, ptr %16, align 4
  %179 = icmp ult i16 %80, %178
  br i1 %179, label %191, label %180

180:                                              ; preds = %173
  %181 = load i32, ptr %81, align 4
  %182 = and i32 %181, 524288
  %183 = icmp eq i32 %182, 0
  %184 = sub i32 %171, %170
  br i1 %183, label %189, label %185

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.dma_channel, ptr %176, i32 0, i32 1
  %187 = load i32, ptr %186, align 4
  %188 = tail call i32 @llvm.umin.i32(i32 %184, i32 %187)
  br label %191

189:                                              ; preds = %180
  %190 = tail call i32 @llvm.umin.i32(i32 %184, i32 %177)
  br label %191

191:                                              ; preds = %189, %185, %173
  %192 = phi i32 [ %188, %185 ], [ %190, %189 ], [ %177, %173 ]
  %193 = and i16 %166, 22527
  %194 = or i16 %193, -24576
  %195 = load ptr, ptr @musb_writew, align 4
  tail call void %195(ptr noundef %7, i32 noundef 6, i16 noundef zeroext %194) #10
  %196 = load i16, ptr %16, align 4
  %197 = zext i16 %196 to i32
  %198 = icmp ugt i32 %192, %197
  %199 = load ptr, ptr %25, align 4
  %200 = getelementptr inbounds %struct.dma_channel, ptr %199, i32 0, i32 4
  br i1 %198, label %202, label %201

201:                                              ; preds = %191
  store i8 0, ptr %200, align 4
  br label %205

202:                                              ; preds = %191
  store i8 1, ptr %200, align 4
  %203 = or i16 %166, -22528
  %204 = load ptr, ptr @musb_writew, align 4
  tail call void %204(ptr noundef %7, i32 noundef 6, i16 noundef zeroext %203) #10
  br label %205

205:                                              ; preds = %202, %201
  %206 = phi i16 [ %194, %201 ], [ %203, %202 ]
  %207 = getelementptr inbounds %struct.dma_controller, ptr %175, i32 0, i32 3
  %208 = load ptr, ptr %207, align 4
  %209 = load i16, ptr %16, align 4
  %210 = getelementptr inbounds %struct.dma_channel, ptr %176, i32 0, i32 4
  %211 = load i8, ptr %210, align 4, !range !16
  %212 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 2
  %213 = load i32, ptr %212, align 4
  %214 = load i32, ptr %91, align 4
  %215 = add i32 %214, %213
  %216 = tail call i32 %208(ptr noundef %176, i16 noundef zeroext %209, i8 noundef zeroext %211, i32 noundef %215, i32 noundef %192) #10
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %258

218:                                              ; preds = %205, %169, %164
  %219 = phi i16 [ %206, %205 ], [ %166, %169 ], [ %166, %164 ]
  %220 = load i32, ptr %93, align 4
  %221 = load i32, ptr %91, align 4
  %222 = sub i32 %220, %221
  %223 = getelementptr inbounds %struct.usb_ep, ptr %15, i32 0, i32 1
  %224 = load ptr, ptr %223, align 4
  %225 = zext i16 %80 to i32
  %226 = load i16, ptr %16, align 4
  %227 = zext i16 %226 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef %224, i32 noundef %225, i32 noundef %222, i32 noundef %227) #10
  %228 = tail call i32 @llvm.umin.i32(i32 %222, i32 %225)
  %229 = trunc i32 %228 to i16
  tail call fastcc void @unmap_dma_buffer(ptr noundef %1, ptr noundef %0)
  %230 = and i16 %219, 24575
  %231 = load ptr, ptr @musb_writew, align 4
  tail call void %231(ptr noundef %7, i32 noundef 6, i16 noundef zeroext %230) #10
  %232 = load i32, ptr %91, align 4
  br label %233

233:                                              ; preds = %218, %96
  %234 = phi i32 [ %232, %218 ], [ %92, %96 ]
  %235 = phi i16 [ %230, %218 ], [ %9, %96 ]
  %236 = phi i16 [ %229, %218 ], [ %80, %96 ]
  %237 = getelementptr inbounds %struct.musb_ep, ptr %15, i32 0, i32 2
  %238 = load ptr, ptr %237, align 4
  %239 = load ptr, ptr %1, align 4
  %240 = getelementptr i8, ptr %239, i32 %234
  tail call void @musb_read_fifo(ptr noundef %238, i16 noundef zeroext %236, ptr noundef %240) #10
  %241 = zext i16 %236 to i32
  %242 = load i32, ptr %91, align 4
  %243 = add i32 %242, %241
  store i32 %243, ptr %91, align 4
  %244 = and i16 %235, -70
  %245 = or i16 %244, 68
  %246 = load ptr, ptr @musb_writew, align 4
  tail call void %246(ptr noundef %7, i32 noundef 6, i16 noundef zeroext %245) #10
  br label %247

247:                                              ; preds = %233, %89, %75
  %248 = phi i16 [ %236, %233 ], [ %80, %89 ], [ %17, %75 ]
  %249 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %250 = load i32, ptr %249, align 4
  %251 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %252 = load i32, ptr %251, align 4
  %253 = icmp eq i32 %250, %252
  br i1 %253, label %257, label %254

254:                                              ; preds = %247
  %255 = load i16, ptr %16, align 4
  %256 = icmp ult i16 %248, %255
  br i1 %256, label %257, label %258

257:                                              ; preds = %254, %247
  tail call void @musb_g_giveback(ptr noundef %15, ptr noundef %1, i32 noundef 0)
  br label %258

258:                                              ; preds = %257, %254, %205, %144, %71, %37, %32, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @musb_alloc_request(ptr noundef %0, i32 noundef %1) #0 {
  %3 = and i32 %1, 17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5, !prof !19

5:                                                ; preds = %2
  %6 = and i32 %1, 1
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 1, i32 2
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i32 [ 0, %2 ], [ %8, %5 ]
  %11 = or i32 %1, 256
  %12 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %10, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef %11, i32 noundef 80) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %37, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.usb_request, ptr %14, i32 0, i32 2
  store i32 -1, ptr %17, align 8
  %18 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 4
  %19 = load i8, ptr %18, align 4
  %20 = getelementptr inbounds %struct.musb_request, ptr %14, i32 0, i32 5
  store i8 %19, ptr %20, align 1
  %21 = getelementptr inbounds %struct.musb_request, ptr %14, i32 0, i32 2
  store ptr %0, ptr %21, align 8
  %22 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_alloc, i32 0, i32 1), align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %16
  %25 = tail call ptr @llvm.thread.pointer() #10
  %26 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = lshr i32 %27, 5
  %29 = getelementptr i32, ptr @__cpu_online_mask, i32 %28
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %27, 31
  %32 = shl nuw i32 1, %31
  %33 = and i32 %32, %30
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %24
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !20
  %36 = tail call i32 @__traceiter_musb_req_alloc(ptr noundef null, ptr noundef nonnull %14) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !21
  br label %37

37:                                               ; preds = %35, %24, %16, %9
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @musb_free_request(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_free, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = tail call ptr @llvm.thread.pointer() #10
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 5
  %10 = getelementptr i32, ptr @__cpu_online_mask, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %8, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !22
  %17 = tail call i32 @__traceiter_musb_req_free(ptr noundef null, ptr noundef %1) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  br label %18

18:                                               ; preds = %16, %5, %2
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @musb_ep_restart(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_start, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = tail call ptr @llvm.thread.pointer() #10
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 5
  %10 = getelementptr i32, ptr @__cpu_online_mask, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %8, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !24
  %17 = tail call i32 @__traceiter_musb_req_start(ptr noundef null, ptr noundef %1) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !25
  br label %18

18:                                               ; preds = %16, %5, %2
  %19 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 2, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.musb_request, ptr %1, i32 0, i32 5
  %24 = load i8, ptr %23, align 1
  tail call void %20(ptr noundef %22, i8 noundef zeroext %24) #10
  %25 = getelementptr inbounds %struct.musb_request, ptr %1, i32 0, i32 4
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  tail call fastcc void @txstate(ptr noundef %0, ptr noundef %1)
  br label %30

29:                                               ; preds = %18
  tail call fastcc void @rxstate(ptr noundef %0, ptr noundef %1)
  br label %30

30:                                               ; preds = %29, %28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @musb_gadget_setup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 52
  %3 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 52, i32 2
  store ptr @musb_gadget_operations, ptr %3, align 4
  %4 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 52, i32 6
  store i32 3, ptr %4, align 8
  %5 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 52, i32 5
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 44
  store i8 0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 31
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_phy, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.usb_otg, ptr %10, i32 0, i32 5
  store i32 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 52, i32 10
  store ptr @musb_driver_name, ptr %12, align 8
  %13 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 52, i32 17
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, -3
  store i32 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 9
  store i32 -32, ptr %16, align 4
  %17 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 9, i32 0, i32 1
  store volatile ptr %17, ptr %17, align 4
  %18 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 9, i32 0, i32 1, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 9, i32 0, i32 2
  store ptr @musb_gadget_work, ptr %19, align 4
  %20 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 9, i32 1
  tail call void @init_timer_key(ptr noundef %20, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #10
  %21 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 52, i32 4
  store volatile ptr %21, ptr %21, align 4
  %22 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 52, i32 4, i32 1
  store ptr %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 38
  %24 = load i8, ptr %23, align 8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %55, label %26

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 35
  br label %28

28:                                               ; preds = %50, %26
  %29 = phi ptr [ %52, %50 ], [ %27, %26 ]
  %30 = phi i8 [ %51, %50 ], [ 0, %26 ]
  %31 = getelementptr inbounds %struct.musb_hw_ep, ptr %29, i32 0, i32 4
  %32 = load i8, ptr %31, align 1, !range !16
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.musb_hw_ep, ptr %29, i32 0, i32 15
  br label %48

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.musb_hw_ep, ptr %29, i32 0, i32 7
  %38 = load i16, ptr %37, align 4
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.musb_hw_ep, ptr %29, i32 0, i32 15
  tail call fastcc void @init_peripheral_ep(ptr noundef %0, ptr noundef %41, i8 noundef zeroext %30, i32 noundef 1) #10
  br label %42

42:                                               ; preds = %40, %36
  %43 = getelementptr inbounds %struct.musb_hw_ep, ptr %29, i32 0, i32 8
  %44 = load i16, ptr %43, align 2
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.musb_hw_ep, ptr %29, i32 0, i32 16
  br label %48

48:                                               ; preds = %46, %34
  %49 = phi ptr [ %35, %34 ], [ %47, %46 ]
  tail call fastcc void @init_peripheral_ep(ptr noundef %0, ptr noundef %49, i8 noundef zeroext %30, i32 noundef 0) #10
  br label %50

50:                                               ; preds = %48, %42
  %51 = add nuw i8 %30, 1
  %52 = getelementptr %struct.musb_hw_ep, ptr %29, i32 1
  %53 = load i8, ptr %23, align 8
  %54 = icmp ult i8 %51, %53
  br i1 %54, label %28, label %55

55:                                               ; preds = %50, %1
  %56 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 47
  %57 = load i24, ptr %56, align 4
  %58 = and i24 %57, -5
  store i24 %58, ptr %56, align 4
  %59 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 3
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.musb_platform_ops, ptr %60, i32 0, i32 23
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %55
  tail call void %62(ptr noundef %0, i32 noundef 0) #10
  br label %65

65:                                               ; preds = %64, %55
  %66 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %67 = load ptr, ptr %66, align 8
  %68 = tail call i32 @usb_add_gadget_udc(ptr noundef %67, ptr noundef %2) #10
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 52, i32 11
  %72 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 52, i32 11, i32 1
  store ptr null, ptr %72, align 4
  tail call void @device_unregister(ptr noundef %71) #10
  br label %73

73:                                               ; preds = %70, %65
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @musb_gadget_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -580
  %3 = getelementptr i8, ptr %0, i32 156
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #10
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #10
  %7 = getelementptr i8, ptr %0, i32 3816
  %8 = load i24, ptr %7, align 4
  %9 = load ptr, ptr @musb_readb, align 4
  %10 = getelementptr i8, ptr %0, i32 164
  %11 = load ptr, ptr %10, align 8
  %12 = tail call zeroext i8 %9(ptr noundef %11, i32 noundef 1) #10
  %13 = and i24 %8, 32768
  %14 = icmp eq i24 %13, 0
  %15 = and i8 %12, -65
  %16 = select i1 %14, ptr @.str.32, ptr @.str.31
  %17 = lshr exact i24 %13, 9
  %18 = trunc i24 %17 to i8
  %19 = or i8 %15, %18
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %2, ptr noundef nonnull @.str.30, ptr noundef nonnull %16) #10
  %20 = load ptr, ptr @musb_writeb, align 4
  %21 = load ptr, ptr %10, align 8
  tail call void %20(ptr noundef %21, i32 noundef 1, i8 noundef zeroext %19) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %6) #10
  %22 = load ptr, ptr %3, align 8
  %23 = tail call i64 @ktime_get_mono_fast_ns() #10
  %24 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 11, i32 22
  store volatile i64 %23, ptr %24, align 8
  %25 = load ptr, ptr %3, align 8
  %26 = tail call i32 @__pm_runtime_suspend(ptr noundef %25, i32 noundef 13) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget_udc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @musb_gadget_cleanup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 41
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 9
  %7 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %6) #10
  %8 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 52
  tail call void @usb_del_gadget_udc(ptr noundef %8) #10
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @musb_g_resume(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 47
  %3 = load i24, ptr %2, align 4
  %4 = and i24 %3, -513
  store i24 %4, ptr %2, align 4
  %5 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 31
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_phy, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_otg, ptr %8, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %27 [
    i32 1, label %30
    i32 4, label %11
    i32 3, label %11
  ]

11:                                               ; preds = %1, %1
  %12 = or i24 %4, 4
  store i24 %12, ptr %2, align 4
  %13 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 53
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.usb_gadget_driver, ptr %14, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %21 = load i16, ptr %0, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %23 = load ptr, ptr %13, align 8
  %24 = getelementptr inbounds %struct.usb_gadget_driver, ptr %23, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 52
  tail call void %25(ptr noundef %26) #10
  tail call void @_raw_spin_lock(ptr noundef %0) #10
  br label %30

27:                                               ; preds = %1
  %28 = tail call ptr @usb_otg_state_string(i32 noundef %10) #10
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.musb_g_resume, i32 noundef 1942, ptr noundef %28) #12
  br label %30

30:                                               ; preds = %27, %20, %16, %11, %1
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_otg_state_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @musb_g_suspend(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @musb_readb, align 4
  %3 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %4 = load ptr, ptr %3, align 8
  %5 = tail call zeroext i8 %2(ptr noundef %4, i32 noundef 96) #10
  %6 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %6) #10
  %7 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 31
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_phy, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.usb_otg, ptr %10, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %35 [
    i32 1, label %13
    i32 3, label %17
  ]

13:                                               ; preds = %1
  %14 = and i32 %6, 24
  %15 = icmp eq i32 %14, 24
  br i1 %15, label %16, label %38

16:                                               ; preds = %13
  store i32 3, ptr %11, align 4
  br label %38

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 47
  %19 = load i24, ptr %18, align 4
  %20 = or i24 %19, 512
  store i24 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 53
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.usb_gadget_driver, ptr %22, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %29 = load i16, ptr %0, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %31 = load ptr, ptr %21, align 8
  %32 = getelementptr inbounds %struct.usb_gadget_driver, ptr %31, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 52
  tail call void %33(ptr noundef %34) #10
  tail call void @_raw_spin_lock(ptr noundef %0) #10
  br label %38

35:                                               ; preds = %1
  %36 = tail call ptr @usb_otg_state_string(i32 noundef %12) #10
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.musb_g_suspend, i32 noundef 1972, ptr noundef %36) #12
  br label %38

38:                                               ; preds = %35, %28, %24, %17, %16, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @musb_g_wakeup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 52
  %3 = tail call i32 @musb_gadget_wakeup(ptr noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_gadget_wakeup(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4408
  %3 = getelementptr i8, ptr %0, i32 -3664
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #10
  %6 = getelementptr i8, ptr %0, i32 -3652
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_phy, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usb_otg, ptr %9, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %68 [
    i32 3, label %12
    i32 1, label %17
  ]

12:                                               ; preds = %1
  %13 = getelementptr i8, ptr %0, i32 -12
  %14 = load i24, ptr %13, align 4
  %15 = and i24 %14, 1536
  %16 = icmp eq i24 %15, 1536
  br i1 %16, label %70, label %80

17:                                               ; preds = %1
  %18 = load ptr, ptr @musb_readb, align 4
  %19 = tail call zeroext i8 %18(ptr noundef %4, i32 noundef 96) #10
  %20 = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %2, ptr noundef nonnull @.str.53, i32 noundef %20) #10
  %21 = or i8 %19, 1
  %22 = load ptr, ptr @musb_writeb, align 4
  tail call void %22(ptr noundef %4, i32 noundef 96, i8 noundef zeroext %21) #10
  %23 = load ptr, ptr @musb_readb, align 4
  %24 = tail call zeroext i8 %23(ptr noundef %4, i32 noundef 96) #10
  br label %25

25:                                               ; preds = %30, %17
  %26 = phi i8 [ %24, %17 ], [ %32, %30 ]
  %27 = phi i32 [ 100, %17 ], [ %33, %30 ]
  %28 = and i8 %26, 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load ptr, ptr @musb_readb, align 4
  %32 = tail call zeroext i8 %31(ptr noundef %4, i32 noundef 96) #10
  %33 = add nsw i32 %27, -1
  %34 = icmp eq i32 %27, 0
  br i1 %34, label %35, label %25

35:                                               ; preds = %30, %25
  %36 = phi i8 [ %26, %25 ], [ %32, %30 ]
  br label %37

37:                                               ; preds = %42, %35
  %38 = phi i8 [ %44, %42 ], [ %36, %35 ]
  %39 = phi i32 [ %45, %42 ], [ 10000, %35 ]
  %40 = and i8 %38, 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load ptr, ptr @musb_readb, align 4
  %44 = tail call zeroext i8 %43(ptr noundef %4, i32 noundef 96) #10
  %45 = add nsw i32 %39, -1
  %46 = icmp eq i32 %39, 0
  br i1 %46, label %47, label %37

47:                                               ; preds = %42, %37
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %5) #10
  %48 = load ptr, ptr %6, align 4
  %49 = getelementptr inbounds %struct.usb_phy, ptr %48, i32 0, i32 5
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.usb_otg, ptr %50, i32 0, i32 9
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = tail call i32 %54(ptr noundef nonnull %50) #10
  br label %58

58:                                               ; preds = %56, %52, %47
  %59 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #10
  %60 = load volatile i32, ptr @jiffies, align 64
  %61 = getelementptr i8, ptr %0, i32 -4368
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.musb_platform_ops, ptr %62, i32 0, i32 23
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %80, label %66

66:                                               ; preds = %58
  %67 = add i32 %60, 10
  tail call void %64(ptr noundef %2, i32 noundef %67) #10
  br label %80

68:                                               ; preds = %1
  %69 = tail call ptr @usb_otg_state_string(i32 noundef %11) #10
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %2, ptr noundef nonnull @.str.54, ptr noundef %69) #10
  br label %80

70:                                               ; preds = %12
  %71 = load ptr, ptr @musb_readb, align 4
  %72 = tail call zeroext i8 %71(ptr noundef %4, i32 noundef 1) #10
  %73 = or i8 %72, 4
  %74 = load ptr, ptr @musb_writeb, align 4
  tail call void %74(ptr noundef %4, i32 noundef 1, i8 noundef zeroext %73) #10
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %2, ptr noundef nonnull @.str.55) #10
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 429496000) #10
  %76 = load ptr, ptr @musb_readb, align 4
  %77 = tail call zeroext i8 %76(ptr noundef %4, i32 noundef 1) #10
  %78 = and i8 %77, -5
  %79 = load ptr, ptr @musb_writeb, align 4
  tail call void %79(ptr noundef %4, i32 noundef 1, i8 noundef zeroext %78) #10
  br label %80

80:                                               ; preds = %70, %68, %66, %58, %12
  %81 = phi i32 [ %5, %68 ], [ %5, %70 ], [ %5, %12 ], [ %59, %58 ], [ %59, %66 ]
  %82 = phi i32 [ -22, %68 ], [ 0, %70 ], [ -22, %12 ], [ 0, %58 ], [ 0, %66 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %81) #10
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @musb_g_disconnect(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr @musb_readb, align 4
  %5 = tail call zeroext i8 %4(ptr noundef %3, i32 noundef 96) #10
  %6 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %6) #10
  %7 = load ptr, ptr @musb_writeb, align 4
  %8 = and i8 %5, 1
  tail call void %7(ptr noundef %3, i32 noundef 96, i8 noundef zeroext %8) #10
  %9 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 52
  %10 = getelementptr %struct.musb, ptr %0, i32 0, i32 31
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.usb_phy, ptr %11, i32 0, i32 25
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  %15 = icmp eq ptr %11, null
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  tail call void @usb_phy_set_charger_current(ptr noundef nonnull %11, i32 noundef 0) #10
  %18 = load ptr, ptr %12, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = tail call i32 %18(ptr noundef nonnull %11, i32 noundef 0) #10
  br label %22

22:                                               ; preds = %20, %17, %1
  %23 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 52, i32 5
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 53
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.usb_gadget_driver, ptr %25, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %32 = load i16, ptr %0, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %34 = load ptr, ptr %24, align 8
  %35 = getelementptr inbounds %struct.usb_gadget_driver, ptr %34, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  tail call void %36(ptr noundef %9) #10
  tail call void @_raw_spin_lock(ptr noundef %0) #10
  br label %37

37:                                               ; preds = %31, %27, %22
  %38 = load ptr, ptr %10, align 4
  %39 = getelementptr inbounds %struct.usb_phy, ptr %38, i32 0, i32 5
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.usb_otg, ptr %40, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  switch i32 %42, label %43 [
    i32 11, label %50
    i32 4, label %52
    i32 5, label %52
    i32 3, label %52
    i32 1, label %52
    i32 2, label %53
  ]

43:                                               ; preds = %37
  %44 = tail call ptr @usb_otg_state_string(i32 noundef %42) #10
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef %44) #10
  %45 = load ptr, ptr %10, align 4
  %46 = getelementptr inbounds %struct.usb_phy, ptr %45, i32 0, i32 5
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.usb_otg, ptr %47, i32 0, i32 5
  store i32 6, ptr %48, align 4
  %49 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 44
  store i8 1, ptr %49, align 8
  br label %53

50:                                               ; preds = %37
  store i32 8, ptr %41, align 4
  %51 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 44
  store i8 1, ptr %51, align 8
  br label %53

52:                                               ; preds = %37, %37, %37, %37
  store i32 1, ptr %41, align 4
  br label %53

53:                                               ; preds = %52, %50, %43, %37
  %54 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 47
  %55 = load i24, ptr %54, align 4
  %56 = and i24 %55, -5
  store i24 %56, ptr %54, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_gadget_vbus_draw(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -3652
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_phy, ptr %4, i32 0, i32 25
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = icmp eq ptr %4, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  tail call void @usb_phy_set_charger_current(ptr noundef nonnull %4, i32 noundef %1) #10
  %11 = load ptr, ptr %5, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call i32 %11(ptr noundef nonnull %4, i32 noundef %1) #10
  br label %15

15:                                               ; preds = %13, %10, %8, %2
  %16 = phi i32 [ -95, %2 ], [ %14, %13 ], [ 0, %8 ], [ 0, %10 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @musb_g_reset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr @musb_readb, align 4
  %5 = tail call zeroext i8 %4(ptr noundef %3, i32 noundef 96) #10
  %6 = zext i8 %5 to i32
  %7 = and i32 %6, 128
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, ptr @.str.17, ptr @.str.16
  %10 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 53
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.usb_gadget_driver, ptr %11, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %1
  %17 = phi ptr [ %15, %13 ], [ null, %1 ]
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull %9, ptr noundef %17) #10
  %18 = load ptr, ptr %10, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 52, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 52
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %26 = load i16, ptr %0, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %28 = load ptr, ptr %10, align 8
  tail call void @usb_gadget_udc_reset(ptr noundef %25, ptr noundef %28) #10
  tail call void @_raw_spin_lock(ptr noundef %0) #10
  br label %34

29:                                               ; preds = %20, %16
  %30 = and i32 %6, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr @musb_writeb, align 4
  tail call void %33(ptr noundef %3, i32 noundef 96, i8 noundef zeroext 1) #10
  br label %34

34:                                               ; preds = %32, %29, %24
  %35 = load ptr, ptr @musb_readb, align 4
  %36 = tail call zeroext i8 %35(ptr noundef %3, i32 noundef 1) #10
  %37 = and i8 %36, 16
  %38 = icmp eq i8 %37, 0
  %39 = select i1 %38, i32 2, i32 3
  %40 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 52, i32 5
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 47
  %42 = load i24, ptr %41, align 4
  %43 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 44
  store i8 0, ptr %43, align 8
  %44 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 48
  store i8 0, ptr %44, align 1
  %45 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 51
  store i8 1, ptr %45, align 4
  %46 = and i24 %42, -1541
  %47 = or i24 %46, 4
  store i24 %47, ptr %41, align 4
  %48 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 52, i32 17
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, -2105
  %51 = or i32 %50, 2048
  store i32 %51, ptr %48, align 4
  %52 = and i32 %49, 2
  %53 = icmp eq i32 %52, 0
  %54 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 31
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.usb_phy, ptr %55, i32 0, i32 5
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.usb_otg, ptr %57, i32 0, i32 5
  br i1 %53, label %59, label %62

59:                                               ; preds = %34
  store i32 3, ptr %58, align 4
  %60 = load i32, ptr %48, align 4
  %61 = and i32 %60, -5
  br label %69

62:                                               ; preds = %34
  br i1 %8, label %66, label %63

63:                                               ; preds = %62
  store i32 3, ptr %58, align 4
  %64 = load i32, ptr %48, align 4
  %65 = and i32 %64, -5
  br label %69

66:                                               ; preds = %62
  store i32 11, ptr %58, align 4
  %67 = load i32, ptr %48, align 4
  %68 = or i32 %67, 4
  br label %69

69:                                               ; preds = %66, %63, %59
  %70 = phi i32 [ %65, %63 ], [ %68, %66 ], [ %61, %59 ]
  store i32 %70, ptr %48, align 4
  %71 = getelementptr %struct.musb, ptr %0, i32 0, i32 31
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.usb_phy, ptr %72, i32 0, i32 25
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  %76 = icmp eq ptr %72, null
  %77 = select i1 %75, i1 true, i1 %76
  br i1 %77, label %83, label %78

78:                                               ; preds = %69
  tail call void @usb_phy_set_charger_current(ptr noundef nonnull %72, i32 noundef 8) #10
  %79 = load ptr, ptr %73, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = tail call i32 %79(ptr noundef nonnull %72, i32 noundef 8) #10
  br label %83

83:                                               ; preds = %81, %78, %69
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_udc_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_req_gb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_req_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_write_fifo(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_req_rx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_read_fifo(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_req_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_req_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_req_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_gadget_get_frame(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr @musb_readw, align 4
  %3 = getelementptr i8, ptr %0, i32 -3664
  %4 = load ptr, ptr %3, align 8
  %5 = tail call zeroext i16 %2(ptr noundef %4, i32 noundef 12) #10
  %6 = zext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @musb_gadget_set_self_powered(ptr nocapture noundef %0, i32 noundef %1) #6 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 17
  %5 = load i32, ptr %4, align 4
  %6 = select i1 %3, i32 0, i32 8192
  %7 = and i32 %5, -8193
  %8 = or i32 %7, %6
  store i32 %8, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_gadget_pullup(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -4408
  %4 = icmp ne i32 %1, 0
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %6 = getelementptr i8, ptr %0, i32 -12
  %7 = load i24, ptr %6, align 4
  %8 = and i24 %7, 32768
  %9 = icmp eq i24 %8, 0
  %10 = xor i1 %4, %9
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = select i1 %4, i24 32768, i24 0
  %13 = and i24 %7, -32769
  %14 = or i24 %13, %12
  store i24 %14, ptr %6, align 4
  %15 = getelementptr i8, ptr %0, i32 -3828
  %16 = load ptr, ptr @system_wq, align 4
  %17 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %16, ptr noundef %15, i32 noundef 0) #10
  br label %18

18:                                               ; preds = %11, %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %5) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_gadget_start(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -4408
  %4 = getelementptr inbounds %struct.usb_gadget_driver, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %51, label %7

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 -3652
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usb_phy, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %0, i32 -3672
  %13 = load ptr, ptr %12, align 8
  %14 = tail call i32 @__pm_runtime_resume(ptr noundef %13, i32 noundef 4) #10
  %15 = getelementptr i8, ptr %0, i32 -12
  %16 = load i24, ptr %15, align 4
  %17 = and i24 %16, -32769
  store i24 %17, ptr %15, align 4
  %18 = getelementptr i8, ptr %0, i32 568
  store ptr %1, ptr %18, align 8
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %20 = load i24, ptr %15, align 4
  %21 = or i24 %20, 4
  store i24 %21, ptr %15, align 4
  %22 = icmp eq ptr %11, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %7
  %24 = getelementptr inbounds %struct.usb_otg, ptr %11, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call i32 %25(ptr noundef nonnull %11, ptr noundef %0) #10
  br label %29

29:                                               ; preds = %27, %23, %7
  %30 = load ptr, ptr %8, align 4
  %31 = getelementptr inbounds %struct.usb_phy, ptr %30, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.usb_otg, ptr %32, i32 0, i32 5
  store i32 1, ptr %33, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %19) #10
  tail call void @musb_start(ptr noundef %3) #10
  %34 = load ptr, ptr %8, align 4
  %35 = getelementptr inbounds %struct.usb_phy, ptr %34, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %45

38:                                               ; preds = %29
  %39 = getelementptr i8, ptr %0, i32 -4368
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.musb_platform_ops, ptr %40, i32 0, i32 26
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  tail call void %42(ptr noundef %3, i32 noundef 1) #10
  br label %45

45:                                               ; preds = %44, %38, %29
  %46 = load ptr, ptr %12, align 8
  %47 = tail call i64 @ktime_get_mono_fast_ns() #10
  %48 = getelementptr inbounds %struct.device, ptr %46, i32 0, i32 11, i32 22
  store volatile i64 %47, ptr %48, align 8
  %49 = load ptr, ptr %12, align 8
  %50 = tail call i32 @__pm_runtime_suspend(ptr noundef %49, i32 noundef 13) #10
  br label %51

51:                                               ; preds = %45, %2
  %52 = phi i32 [ 0, %45 ], [ -22, %2 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_gadget_stop(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4408
  %3 = getelementptr i8, ptr %0, i32 -3672
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #10
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #10
  tail call void @musb_hnp_stop(ptr noundef %2) #10
  %7 = getelementptr i8, ptr %0, i32 -3652
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_phy, ptr %8, i32 0, i32 25
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = icmp eq ptr %8, null
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  tail call void @usb_phy_set_charger_current(ptr noundef nonnull %8, i32 noundef 0) #10
  %15 = load ptr, ptr %9, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = tail call i32 %15(ptr noundef nonnull %8, i32 noundef 0) #10
  br label %19

19:                                               ; preds = %17, %14, %1
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr inbounds %struct.usb_phy, ptr %20, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.usb_otg, ptr %22, i32 0, i32 5
  store i32 0, ptr %23, align 4
  tail call void @musb_stop(ptr noundef %2) #10
  %24 = load ptr, ptr %7, align 4
  %25 = getelementptr inbounds %struct.usb_phy, ptr %24, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.usb_otg, ptr %26, i32 0, i32 7
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = tail call i32 %30(ptr noundef nonnull %26, ptr noundef null) #10
  br label %34

34:                                               ; preds = %32, %28, %19
  %35 = getelementptr i8, ptr %0, i32 -12
  %36 = load i24, ptr %35, align 4
  %37 = and i24 %36, -5
  store i24 %37, ptr %35, align 4
  %38 = getelementptr i8, ptr %0, i32 568
  store ptr null, ptr %38, align 8
  %39 = getelementptr i8, ptr %0, i32 -4368
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.musb_platform_ops, ptr %40, i32 0, i32 23
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %34
  tail call void %42(ptr noundef %2, i32 noundef 0) #10
  br label %45

45:                                               ; preds = %44, %34
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %6) #10
  %46 = getelementptr i8, ptr %0, i32 -3960
  %47 = load ptr, ptr @system_wq, align 4
  %48 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %47, ptr noundef %46, i32 noundef 0) #10
  %49 = load ptr, ptr %3, align 8
  %50 = tail call i64 @ktime_get_mono_fast_ns() #10
  %51 = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 11, i32 22
  store volatile i64 %50, ptr %51, align 8
  %52 = load ptr, ptr %3, align 8
  %53 = tail call i32 @__pm_runtime_suspend(ptr noundef %52, i32 noundef 13) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_hnp_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @init_peripheral_ep(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 35
  %6 = zext i8 %2 to i32
  %7 = getelementptr %struct.musb_hw_ep, ptr %5, i32 %6
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(92) %1, i8 0, i32 92, i1 false)
  %8 = getelementptr inbounds %struct.musb_ep, ptr %1, i32 0, i32 4
  store i8 %2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.musb_ep, ptr %1, i32 0, i32 3
  store ptr %0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.musb_ep, ptr %1, i32 0, i32 2
  store ptr %7, ptr %10, align 4
  %11 = trunc i32 %3 to i8
  %12 = getelementptr inbounds %struct.musb_ep, ptr %1, i32 0, i32 6
  store i8 %11, ptr %12, align 2
  %13 = getelementptr inbounds %struct.musb_ep, ptr %1, i32 0, i32 10
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.musb_ep, ptr %1, i32 0, i32 10, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.musb_ep, ptr %1, i32 0, i32 1
  %16 = icmp eq i8 %2, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %4
  %18 = getelementptr %struct.musb_hw_ep, ptr %5, i32 %6, i32 4
  %19 = load i8, ptr %18, align 1, !range !16
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = icmp eq i32 %3, 0
  %23 = select i1 %22, ptr @.str.35, ptr @.str.34
  br label %24

24:                                               ; preds = %21, %17, %4
  %25 = phi ptr [ %23, %21 ], [ @.str.6, %17 ], [ @.str.6, %4 ]
  %26 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %15, ptr noundef nonnull @.str.33, i32 noundef %6, ptr noundef nonnull %25)
  %27 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 1
  store ptr %15, ptr %27, align 4
  %28 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 3
  store volatile ptr %28, ptr %28, align 4
  %29 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 3, i32 1
  store ptr %28, ptr %29, align 4
  br i1 %16, label %30, label %36

30:                                               ; preds = %24
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %1, i32 noundef 64) #10
  %31 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 4
  %32 = load i8, ptr %31, align 4
  %33 = or i8 %32, 1
  store i8 %33, ptr %31, align 4
  %34 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 2
  store ptr @musb_g_ep0_ops, ptr %34, align 4
  %35 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 52, i32 3
  store ptr %1, ptr %35, align 8
  br label %53

36:                                               ; preds = %24
  %37 = icmp eq i32 %3, 0
  %38 = getelementptr %struct.musb_hw_ep, ptr %5, i32 %6, i32 8
  %39 = getelementptr %struct.musb_hw_ep, ptr %5, i32 %6, i32 7
  %40 = select i1 %37, ptr %38, ptr %39
  %41 = load i16, ptr %40, align 2
  %42 = zext i16 %41 to i32
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %1, i32 noundef %42) #10
  %43 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 4
  %44 = load i8, ptr %43, align 4
  %45 = or i8 %44, 14
  store i8 %45, ptr %43, align 4
  %46 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 2
  store ptr @musb_ep_ops, ptr %46, align 4
  %47 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 52, i32 4
  %48 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 52, i32 4, i32 1
  %49 = load ptr, ptr %48, align 4
  store ptr %28, ptr %48, align 4
  store ptr %47, ptr %28, align 4
  store ptr %49, ptr %29, align 4
  store volatile ptr %28, ptr %49, align 4
  %50 = getelementptr %struct.musb_hw_ep, ptr %5, i32 %6, i32 4
  %51 = load i8, ptr %50, align 1, !range !16
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %36, %30
  %54 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 4
  %55 = load i8, ptr %54, align 4
  %56 = or i8 %55, 48
  store i8 %56, ptr %54, align 4
  br label %63

57:                                               ; preds = %36
  %58 = load i8, ptr %43, align 4
  br i1 %37, label %61, label %59

59:                                               ; preds = %57
  %60 = or i8 %58, 16
  store i8 %60, ptr %43, align 4
  br label %63

61:                                               ; preds = %57
  %62 = or i8 %58, 32
  store i8 %62, ptr %43, align 4
  br label %63

63:                                               ; preds = %61, %59, %53
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_gadget_enable(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %176

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.musb_hw_ep, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.musb, ptr %12, i32 0, i32 27
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 4
  %16 = load i8, ptr %15, align 4
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #10
  %18 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %174

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 3
  %23 = load i8, ptr %22, align 1
  %24 = and i8 %23, 3
  %25 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 5
  store i8 %24, ptr %25, align 1
  %26 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 2
  %27 = load i8, ptr %26, align 1
  %28 = and i8 %27, 15
  %29 = zext i8 %16 to i32
  %30 = icmp eq i8 %28, %16
  br i1 %30, label %31, label %174

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 4
  %33 = load i16, ptr %32, align 1
  %34 = lshr i16 %33, 11
  %35 = and i16 %34, 3
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %31
  %38 = icmp sgt i8 %27, -1
  %39 = getelementptr inbounds %struct.musb, ptr %12, i32 0, i32 47
  %40 = load i24, ptr %39, align 4
  %41 = select i1 %38, i24 16, i24 32
  %42 = and i24 %40, %41
  %43 = icmp eq i24 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = trunc i16 %35 to i8
  %46 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 13
  store i8 %45, ptr %46, align 2
  %47 = add nuw nsw i16 %35, 1
  %48 = zext i16 %47 to i32
  br label %52

49:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %12, ptr noundef nonnull @.str.36) #10
  br label %174

50:                                               ; preds = %31
  %51 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 13
  store i8 0, ptr %51, align 2
  br label %52

52:                                               ; preds = %50, %44
  %53 = phi i32 [ %48, %44 ], [ 1, %50 ]
  %54 = load i16, ptr %32, align 1
  %55 = and i16 %54, 2047
  %56 = zext i16 %55 to i32
  %57 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 7
  store i16 %55, ptr %57, align 4
  %58 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 13
  %59 = mul nuw nsw i32 %53, %56
  %60 = getelementptr inbounds %struct.musb, ptr %12, i32 0, i32 2, i32 1
  %61 = load ptr, ptr %60, align 4
  tail call void %61(ptr noundef %14, i8 noundef zeroext %16) #10
  %62 = load i8, ptr %26, align 1
  %63 = icmp sgt i8 %62, -1
  %64 = getelementptr inbounds %struct.musb_hw_ep, ptr %8, i32 0, i32 4
  %65 = load i8, ptr %64, align 1, !range !16
  %66 = icmp eq i8 %65, 0
  %67 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 6
  br i1 %63, label %117, label %68

68:                                               ; preds = %52
  br i1 %66, label %70, label %69

69:                                               ; preds = %68
  store i8 1, ptr %67, align 2
  br label %73

70:                                               ; preds = %68
  %71 = load i8, ptr %67, align 2
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %174, label %73

73:                                               ; preds = %70, %69
  %74 = getelementptr inbounds %struct.musb_hw_ep, ptr %8, i32 0, i32 7
  %75 = load i16, ptr %74, align 4
  %76 = zext i16 %75 to i32
  %77 = icmp ugt i32 %59, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %12, ptr noundef nonnull @.str.37) #10
  br label %174

79:                                               ; preds = %73
  %80 = shl nuw i32 1, %29
  %81 = getelementptr inbounds %struct.musb, ptr %12, i32 0, i32 12
  %82 = load i16, ptr %81, align 4
  %83 = trunc i32 %80 to i16
  %84 = or i16 %82, %83
  store i16 %84, ptr %81, align 4
  %85 = load ptr, ptr @musb_writew, align 4
  tail call void %85(ptr noundef %14, i32 noundef 6, i16 noundef zeroext %84) #10
  %86 = load i8, ptr %25, align 1
  %87 = icmp eq i8 %86, 2
  br i1 %87, label %88, label %99

88:                                               ; preds = %79
  %89 = getelementptr inbounds %struct.musb, ptr %12, i32 0, i32 47
  %90 = load i24, ptr %89, align 4
  %91 = and i24 %90, 128
  %92 = icmp eq i24 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %88
  %94 = load i16, ptr %74, align 4
  %95 = load i16, ptr %57, align 4
  %96 = udiv i16 %94, %95
  %97 = trunc i16 %96 to i8
  %98 = add i8 %97, -1
  store i8 %98, ptr %58, align 2
  br label %99

99:                                               ; preds = %93, %88, %79
  %100 = load ptr, ptr @musb_writew, align 4
  %101 = load i16, ptr %57, align 4
  %102 = load i8, ptr %58, align 2
  %103 = zext i8 %102 to i16
  %104 = shl i16 %103, 11
  %105 = or i16 %104, %101
  tail call void %100(ptr noundef %10, i32 noundef 0, i16 noundef zeroext %105) #10
  %106 = load ptr, ptr @musb_readw, align 4
  %107 = tail call zeroext i16 %106(ptr noundef %10, i32 noundef 2) #10
  %108 = and i16 %107, 2
  %109 = icmp eq i16 %108, 0
  %110 = select i1 %109, i16 8256, i16 8264
  %111 = load i8, ptr %25, align 1
  %112 = icmp eq i8 %111, 1
  %113 = or i16 %110, 16384
  %114 = select i1 %112, i16 %113, i16 %110
  %115 = load ptr, ptr @musb_writew, align 4
  tail call void %115(ptr noundef %10, i32 noundef 2, i16 noundef zeroext %114) #10
  %116 = load ptr, ptr @musb_writew, align 4
  tail call void %116(ptr noundef %10, i32 noundef 2, i16 noundef zeroext %114) #10
  br label %156

117:                                              ; preds = %52
  br i1 %66, label %119, label %118

118:                                              ; preds = %117
  store i8 0, ptr %67, align 2
  br label %122

119:                                              ; preds = %117
  %120 = load i8, ptr %67, align 2
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %174

122:                                              ; preds = %119, %118
  %123 = getelementptr inbounds %struct.musb_hw_ep, ptr %8, i32 0, i32 8
  %124 = load i16, ptr %123, align 2
  %125 = zext i16 %124 to i32
  %126 = icmp ugt i32 %59, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %12, ptr noundef nonnull @.str.37) #10
  br label %174

128:                                              ; preds = %122
  %129 = shl nuw i32 1, %29
  %130 = getelementptr inbounds %struct.musb, ptr %12, i32 0, i32 11
  %131 = load i16, ptr %130, align 2
  %132 = trunc i32 %129 to i16
  %133 = or i16 %131, %132
  store i16 %133, ptr %130, align 2
  %134 = load ptr, ptr @musb_writew, align 4
  tail call void %134(ptr noundef %14, i32 noundef 8, i16 noundef zeroext %133) #10
  %135 = load ptr, ptr @musb_writew, align 4
  %136 = load i16, ptr %57, align 4
  %137 = load i8, ptr %58, align 2
  %138 = zext i8 %137 to i16
  %139 = shl i16 %138, 11
  %140 = or i16 %139, %136
  tail call void %135(ptr noundef %10, i32 noundef 4, i16 noundef zeroext %140) #10
  %141 = load i8, ptr %64, align 1, !range !16
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %128
  %144 = load ptr, ptr @musb_readw, align 4
  %145 = tail call zeroext i16 %144(ptr noundef %10, i32 noundef 2) #10
  %146 = and i16 %145, -8194
  %147 = load ptr, ptr @musb_writew, align 4
  tail call void %147(ptr noundef %10, i32 noundef 2, i16 noundef zeroext %146) #10
  br label %148

148:                                              ; preds = %143, %128
  %149 = load i8, ptr %25, align 1
  %150 = icmp eq i8 %149, 3
  %151 = select i1 %150, i16 4240, i16 144
  %152 = icmp eq i8 %149, 1
  %153 = select i1 %152, i16 16528, i16 %151
  %154 = load ptr, ptr @musb_writew, align 4
  tail call void %154(ptr noundef %10, i32 noundef 6, i16 noundef zeroext %153) #10
  %155 = load ptr, ptr @musb_writew, align 4
  tail call void %155(ptr noundef %10, i32 noundef 6, i16 noundef zeroext %153) #10
  br label %156

156:                                              ; preds = %148, %99
  %157 = getelementptr inbounds %struct.musb, ptr %12, i32 0, i32 24
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %166, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.dma_controller, ptr %158, i32 0, i32 1
  %162 = load ptr, ptr %161, align 4
  %163 = load i8, ptr %26, align 1
  %164 = and i8 %163, -128
  %165 = tail call ptr %162(ptr noundef nonnull %158, ptr noundef %8, i8 noundef zeroext %164) #10
  br label %166

166:                                              ; preds = %160, %156
  %167 = phi ptr [ %165, %160 ], [ null, %156 ]
  %168 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 9
  store ptr %167, ptr %168, align 4
  store ptr %1, ptr %18, align 4
  %169 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 12
  store i8 0, ptr %169, align 1
  %170 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 11
  store i8 0, ptr %170, align 4
  %171 = getelementptr inbounds %struct.musb, ptr %12, i32 0, i32 6
  %172 = load ptr, ptr @system_wq, align 4
  %173 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %172, ptr noundef %171, i32 noundef 0) #10
  br label %174

174:                                              ; preds = %166, %127, %119, %78, %70, %49, %21, %6
  %175 = phi i32 [ -22, %21 ], [ -22, %49 ], [ -22, %78 ], [ 0, %166 ], [ -22, %70 ], [ -22, %119 ], [ -22, %127 ], [ -16, %6 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %17) #10
  br label %176

176:                                              ; preds = %174, %2
  %177 = phi i32 [ %175, %174 ], [ -22, %2 ]
  ret i32 %177
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_gadget_disable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 4
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = getelementptr %struct.musb, ptr %3, i32 0, i32 35, i32 %6, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %10 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 2, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 27
  %13 = load ptr, ptr %12, align 8
  tail call void %11(ptr noundef %13, i8 noundef zeroext %5) #10
  %14 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 6
  %15 = load i8, ptr %14, align 2
  %16 = icmp eq i8 %15, 0
  %17 = shl nuw i32 1, %6
  br i1 %16, label %26, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 12
  %20 = load i16, ptr %19, align 4
  %21 = trunc i32 %17 to i16
  %22 = xor i16 %21, -1
  %23 = and i16 %20, %22
  store i16 %23, ptr %19, align 4
  %24 = load ptr, ptr @musb_writew, align 4
  %25 = load ptr, ptr %12, align 8
  tail call void %24(ptr noundef %25, i32 noundef 6, i16 noundef zeroext %23) #10
  br label %34

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 11
  %28 = load i16, ptr %27, align 2
  %29 = trunc i32 %17 to i16
  %30 = xor i16 %29, -1
  %31 = and i16 %28, %30
  store i16 %31, ptr %27, align 2
  %32 = load ptr, ptr @musb_writew, align 4
  %33 = load ptr, ptr %12, align 8
  tail call void %32(ptr noundef %33, i32 noundef 8, i16 noundef zeroext %31) #10
  br label %34

34:                                               ; preds = %26, %18
  %35 = phi i32 [ 4, %26 ], [ 0, %18 ]
  %36 = load ptr, ptr @musb_writew, align 4
  tail call void %36(ptr noundef %8, i32 noundef %35, i16 noundef zeroext 0) #10
  %37 = load ptr, ptr %2, align 4
  %38 = load i8, ptr %4, align 4
  %39 = zext i8 %38 to i32
  %40 = getelementptr %struct.musb, ptr %37, i32 0, i32 35, i32 %39, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 12
  store i8 1, ptr %42, align 1
  %43 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 9
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %65, label %46

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.musb, ptr %37, i32 0, i32 24
  %48 = load ptr, ptr %47, align 4
  %49 = load i8, ptr %14, align 2
  %50 = icmp eq i8 %49, 0
  %51 = load ptr, ptr @musb_writew, align 4
  br i1 %50, label %54, label %52

52:                                               ; preds = %46
  tail call void %51(ptr noundef %41, i32 noundef 2, i16 noundef zeroext 1032) #10
  %53 = load ptr, ptr @musb_writew, align 4
  tail call void %53(ptr noundef %41, i32 noundef 2, i16 noundef zeroext 8) #10
  br label %56

54:                                               ; preds = %46
  tail call void %51(ptr noundef %41, i32 noundef 6, i16 noundef zeroext 16) #10
  %55 = load ptr, ptr @musb_writew, align 4
  tail call void %55(ptr noundef %41, i32 noundef 6, i16 noundef zeroext 16) #10
  br label %56

56:                                               ; preds = %54, %52
  %57 = getelementptr inbounds %struct.dma_controller, ptr %48, i32 0, i32 4
  %58 = load ptr, ptr %57, align 4
  %59 = load ptr, ptr %43, align 4
  %60 = tail call i32 %58(ptr noundef %59) #10
  %61 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 1
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %37, ptr noundef nonnull @.str.39, ptr noundef %61, i32 noundef %60) #10
  %62 = getelementptr inbounds %struct.dma_controller, ptr %48, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = load ptr, ptr %43, align 4
  tail call void %63(ptr noundef %64) #10
  store ptr null, ptr %43, align 4
  br label %65

65:                                               ; preds = %56, %34
  %66 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 10
  %67 = load volatile ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, %66
  br i1 %68, label %74, label %69

69:                                               ; preds = %69, %65
  %70 = phi ptr [ %72, %69 ], [ %67, %65 ]
  %71 = getelementptr i8, ptr %70, i32 -56
  tail call void @musb_g_giveback(ptr noundef %0, ptr noundef %71, i32 noundef -108) #10
  %72 = load volatile ptr, ptr %66, align 4
  %73 = icmp eq ptr %72, %66
  br i1 %73, label %74, label %69

74:                                               ; preds = %69, %65
  %75 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 8
  store ptr null, ptr %75, align 4
  %76 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  store ptr null, ptr %76, align 4
  %77 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 6
  %78 = load ptr, ptr @system_wq, align 4
  %79 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %78, ptr noundef %77, i32 noundef 0) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %9) #10
  %80 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %3, ptr noundef nonnull @.str.38, ptr noundef %81) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_gadget_queue(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %176

7:                                                ; preds = %3
  %8 = load ptr, ptr %1, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %176, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.musb_request, ptr %1, i32 0, i32 3
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.musb_request, ptr %1, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %176

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.musb, ptr %12, i32 0, i32 25
  %19 = load ptr, ptr %18, align 8
  %20 = tail call i32 @__pm_runtime_resume(ptr noundef %19, i32 noundef 5) #10
  %21 = icmp ne i32 %20, -115
  %22 = icmp slt i32 %20, 0
  %23 = and i1 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load ptr, ptr %18, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.musb_gadget_queue) #12
  %26 = load ptr, ptr %18, align 8
  %27 = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #10, !srcloc !27
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 0, i32 -1, ptr elementtype(i32) %27) #10, !srcloc !28
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %176, label %31

31:                                               ; preds = %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !29
  br label %176

32:                                               ; preds = %17
  %33 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_enq, i32 0, i32 1), align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = tail call ptr @llvm.thread.pointer() #10
  %37 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = lshr i32 %38, 5
  %40 = getelementptr i32, ptr @__cpu_online_mask, i32 %39
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %38, 31
  %43 = shl nuw i32 1, %42
  %44 = and i32 %43, %41
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %35
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !30
  %47 = tail call i32 @__traceiter_musb_req_enq(ptr noundef null, ptr noundef nonnull %1) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !31
  br label %48

48:                                               ; preds = %46, %35, %32
  %49 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  store i32 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  store i32 -115, ptr %50, align 4
  %51 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 4
  %52 = load i8, ptr %51, align 4
  %53 = getelementptr inbounds %struct.musb_request, ptr %1, i32 0, i32 5
  store i8 %52, ptr %53, align 1
  %54 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 6
  %55 = load i8, ptr %54, align 2
  %56 = getelementptr inbounds %struct.musb_request, ptr %1, i32 0, i32 4
  store i8 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.musb, ptr %12, i32 0, i32 24
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.musb_request, ptr %1, i32 0, i32 6
  store i32 0, ptr %59, align 4
  %60 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 9
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %119, label %63

63:                                               ; preds = %48
  %64 = getelementptr inbounds %struct.dma_controller, ptr %58, i32 0, i32 5
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 7
  %69 = load i16, ptr %68, align 4
  %70 = load ptr, ptr %1, align 4
  %71 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = tail call i32 %65(ptr noundef nonnull %61, i16 noundef zeroext %69, ptr noundef %70, i32 noundef %72) #10
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %119, label %75

75:                                               ; preds = %67, %63
  %76 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, -1
  %79 = load ptr, ptr %18, align 8
  br i1 %78, label %80, label %111

80:                                               ; preds = %75
  %81 = load ptr, ptr %1, align 4
  %82 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = load i8, ptr %56, align 4
  %85 = icmp eq i8 %84, 0
  %86 = select i1 %85, i32 2, i32 1
  %87 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %81) #10
  %88 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %89 = xor i1 %88, true
  %90 = select i1 %87, i1 %89, i1 false
  br i1 %90, label %91, label %100, !prof !32

91:                                               ; preds = %80
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %92 = tail call ptr @dev_driver_string(ptr noundef %79) #10
  %93 = getelementptr inbounds %struct.device, ptr %79, i32 0, i32 3
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load ptr, ptr %79, align 4
  br label %98

98:                                               ; preds = %96, %91
  %99 = phi ptr [ %97, %96 ], [ %94, %91 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.45, ptr noundef %92, ptr noundef %99) #10
  br label %100

100:                                              ; preds = %98, %80
  br i1 %87, label %119, label %101

101:                                              ; preds = %100
  %102 = load ptr, ptr @mem_map, align 4
  %103 = ptrtoint ptr %81 to i32
  %104 = add i32 %103, 1073741824
  %105 = lshr i32 %104, 12
  %106 = getelementptr %struct.page, ptr %102, i32 %105
  %107 = and i32 %103, 4095
  %108 = tail call i32 @dma_map_page_attrs(ptr noundef %79, ptr noundef %106, i32 noundef %107, i32 noundef %83, i32 noundef %86, i32 noundef 0) #10
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %119, label %110

110:                                              ; preds = %101
  store i32 %108, ptr %76, align 4
  br label %117

111:                                              ; preds = %75
  %112 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = load i8, ptr %56, align 4
  %115 = icmp eq i8 %114, 0
  %116 = select i1 %115, i32 2, i32 1
  tail call void @dma_sync_single_for_device(ptr noundef %79, i32 noundef %77, i32 noundef %113, i32 noundef %116) #10
  br label %117

117:                                              ; preds = %111, %110
  %118 = phi i32 [ 1, %111 ], [ 2, %110 ]
  store i32 %118, ptr %59, align 4
  br label %119

119:                                              ; preds = %117, %101, %100, %67, %48
  %120 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #10
  %121 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 8
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %149

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %12, ptr noundef nonnull @.str.41, ptr noundef nonnull %1, ptr noundef %126, ptr noundef nonnull @.str.42) #10
  %127 = load i32, ptr %59, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %169, label %129

129:                                              ; preds = %124
  %130 = load ptr, ptr %14, align 4
  %131 = getelementptr inbounds %struct.musb_ep, ptr %130, i32 0, i32 9
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %169, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 2
  %136 = load i32, ptr %135, align 4
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %169, label %138

138:                                              ; preds = %134
  %139 = icmp eq i32 %127, 2
  %140 = load ptr, ptr %18, align 8
  %141 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %142 = load i32, ptr %141, align 4
  %143 = load i8, ptr %56, align 4
  %144 = icmp eq i8 %143, 0
  %145 = select i1 %144, i32 2, i32 1
  br i1 %139, label %146, label %147

146:                                              ; preds = %138
  tail call void @dma_unmap_page_attrs(ptr noundef %140, i32 noundef %136, i32 noundef %142, i32 noundef %145, i32 noundef 0) #10
  store i32 -1, ptr %135, align 4
  br label %148

147:                                              ; preds = %138
  tail call void @dma_sync_single_for_cpu(ptr noundef %140, i32 noundef %136, i32 noundef %142, i32 noundef %145) #10
  br label %148

148:                                              ; preds = %147, %146
  store i32 0, ptr %59, align 4
  br label %169

149:                                              ; preds = %119
  %150 = getelementptr inbounds %struct.musb_request, ptr %1, i32 0, i32 1
  %151 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 10
  %152 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 10, i32 1
  %153 = load ptr, ptr %152, align 4
  store ptr %150, ptr %152, align 4
  store ptr %151, ptr %150, align 4
  %154 = getelementptr inbounds %struct.musb_request, ptr %1, i32 0, i32 1, i32 1
  store ptr %153, ptr %154, align 4
  store volatile ptr %150, ptr %153, align 4
  %155 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 12
  %156 = load i8, ptr %155, align 1
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %149
  %159 = load ptr, ptr %151, align 4
  %160 = icmp eq ptr %150, %159
  br i1 %160, label %161, label %169

161:                                              ; preds = %158
  %162 = tail call i32 @musb_queue_resume_work(ptr noundef %12, ptr noundef nonnull @musb_ep_restart_resume_work, ptr noundef nonnull %1) #10
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  %165 = load ptr, ptr %18, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %165, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.musb_gadget_queue, i32 noundef %162) #12
  %166 = load ptr, ptr %154, align 4
  %167 = load ptr, ptr %150, align 4
  %168 = getelementptr inbounds %struct.list_head, ptr %167, i32 0, i32 1
  store ptr %166, ptr %168, align 4
  store volatile ptr %167, ptr %166, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %150, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %154, align 4
  br label %169

169:                                              ; preds = %164, %161, %158, %149, %148, %134, %129, %124
  %170 = phi i32 [ 0, %149 ], [ %162, %164 ], [ %162, %161 ], [ 0, %158 ], [ -108, %124 ], [ -108, %129 ], [ -108, %134 ], [ -108, %148 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %120) #10
  %171 = load ptr, ptr %18, align 8
  %172 = tail call i64 @ktime_get_mono_fast_ns() #10
  %173 = getelementptr inbounds %struct.device, ptr %171, i32 0, i32 11, i32 22
  store volatile i64 %172, ptr %173, align 8
  %174 = load ptr, ptr %18, align 8
  %175 = tail call i32 @__pm_runtime_suspend(ptr noundef %174, i32 noundef 13) #10
  br label %176

176:                                              ; preds = %169, %31, %24, %10, %7, %3
  %177 = phi i32 [ %170, %169 ], [ -22, %3 ], [ -61, %7 ], [ -22, %10 ], [ %20, %24 ], [ %20, %31 ]
  ret i32 %177
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_gadget_dequeue(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %77

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.musb_request, ptr %1, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %77

12:                                               ; preds = %8
  %13 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_deq, i32 0, i32 1), align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = tail call ptr @llvm.thread.pointer() #10
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = lshr i32 %18, 5
  %20 = getelementptr i32, ptr @__cpu_online_mask, i32 %19
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %18, 31
  %23 = shl nuw i32 1, %22
  %24 = and i32 %23, %21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  %27 = tail call i32 @__traceiter_musb_req_deq(ptr noundef null, ptr noundef nonnull %1) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  br label %28

28:                                               ; preds = %26, %15, %12
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #10
  %30 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 10
  br label %31

31:                                               ; preds = %31, %28
  %32 = phi ptr [ %30, %28 ], [ %33, %31 ]
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 -56
  %35 = icmp eq ptr %33, %30
  %36 = icmp eq ptr %34, %1
  %37 = or i1 %35, %36
  br i1 %37, label %38, label %31

38:                                               ; preds = %31
  br i1 %36, label %44, label %39

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.musb, ptr %4, i32 0, i32 25
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.46, ptr noundef nonnull %1, ptr noundef %43) #12
  br label %75

44:                                               ; preds = %38
  %45 = load ptr, ptr %30, align 4
  %46 = getelementptr inbounds %struct.musb_request, ptr %1, i32 0, i32 1
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 12
  %50 = load i8, ptr %49, align 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48, %44
  tail call void @musb_g_giveback(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef -104)
  br label %75

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 9
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %74, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.musb, ptr %4, i32 0, i32 24
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.musb, ptr %4, i32 0, i32 2, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.musb, ptr %4, i32 0, i32 27
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 4
  %65 = load i8, ptr %64, align 4
  tail call void %61(ptr noundef %63, i8 noundef zeroext %65) #10
  %66 = getelementptr inbounds %struct.dma_controller, ptr %59, i32 0, i32 4
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %57
  %70 = load ptr, ptr %54, align 4
  %71 = tail call i32 %67(ptr noundef %70) #10
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  tail call void @musb_g_giveback(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef -104)
  br label %75

74:                                               ; preds = %53
  tail call void @musb_g_giveback(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef -104)
  br label %75

75:                                               ; preds = %74, %73, %69, %57, %52, %39
  %76 = phi i32 [ -22, %39 ], [ 0, %52 ], [ 0, %74 ], [ 0, %73 ], [ %71, %69 ], [ -16, %57 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %29) #10
  br label %77

77:                                               ; preds = %75, %8, %2
  %78 = phi i32 [ %76, %75 ], [ -22, %8 ], [ -22, %2 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_gadget_set_halt(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 4
  %4 = load i8, ptr %3, align 4
  %5 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = zext i8 %4 to i32
  %8 = getelementptr %struct.musb, ptr %6, i32 0, i32 35, i32 %7, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %0, null
  br i1 %10, label %105, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.musb, ptr %6, i32 0, i32 27
  %13 = load ptr, ptr %12, align 8
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #10
  %15 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 5
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 1
  br i1 %17, label %103, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.musb, ptr %6, i32 0, i32 2, i32 1
  %20 = load ptr, ptr %19, align 4
  tail call void %20(ptr noundef %13, i8 noundef zeroext %4) #10
  %21 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 10
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  %24 = getelementptr i8, ptr %22, i32 -56
  %25 = select i1 %23, ptr null, ptr %24
  %26 = icmp ne i32 %1, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %18
  %28 = icmp eq ptr %25, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %6, ptr noundef nonnull @.str.47, ptr noundef %31) #10
  br label %103

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 6
  %34 = load i8, ptr %33, align 2
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr @musb_readw, align 4
  %38 = tail call zeroext i16 %37(ptr noundef %9, i32 noundef 2) #10
  %39 = and i16 %38, 2
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %6, ptr noundef nonnull @.str.48, ptr noundef %43) #10
  br label %103

44:                                               ; preds = %18
  %45 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 11
  store i8 0, ptr %45, align 4
  br label %46

46:                                               ; preds = %44, %36, %32
  %47 = phi ptr [ @.str.50, %32 ], [ @.str.50, %36 ], [ @.str.51, %44 ]
  %48 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %6, ptr noundef nonnull @.str.49, ptr noundef %49, ptr noundef nonnull %47) #10
  %50 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 6
  %51 = load i8, ptr %50, align 2
  %52 = icmp eq i8 %51, 0
  %53 = load ptr, ptr @musb_readw, align 4
  br i1 %52, label %62, label %54

54:                                               ; preds = %46
  %55 = tail call zeroext i16 %53(ptr noundef %9, i32 noundef 2) #10
  %56 = or i16 %55, 246
  %57 = and i16 %55, -248
  %58 = or i16 %57, 198
  %59 = select i1 %26, i16 %56, i16 %58
  %60 = and i16 %59, -2
  %61 = load ptr, ptr @musb_writew, align 4
  tail call void %61(ptr noundef %9, i32 noundef 2, i16 noundef zeroext %60) #10
  br label %69

62:                                               ; preds = %46
  %63 = tail call zeroext i16 %53(ptr noundef %9, i32 noundef 6) #10
  %64 = or i16 %63, 245
  %65 = and i16 %63, -246
  %66 = or i16 %65, 149
  %67 = select i1 %26, i16 %64, i16 %66
  %68 = load ptr, ptr @musb_writew, align 4
  tail call void %68(ptr noundef %9, i32 noundef 6, i16 noundef zeroext %67) #10
  br label %69

69:                                               ; preds = %62, %54
  %70 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 12
  %71 = load i8, ptr %70, align 1
  %72 = icmp ne i8 %71, 0
  %73 = or i1 %26, %72
  %74 = xor i1 %73, true
  %75 = icmp ne ptr %25, null
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %77, label %103

77:                                               ; preds = %69
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %6, ptr noundef nonnull @.str.52) #10
  %78 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_start, i32 0, i32 1), align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %77
  %81 = tail call ptr @llvm.thread.pointer() #10
  %82 = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 2
  %83 = load i32, ptr %82, align 8
  %84 = lshr i32 %83, 5
  %85 = getelementptr i32, ptr @__cpu_online_mask, i32 %84
  %86 = load volatile i32, ptr %85, align 4
  %87 = and i32 %83, 31
  %88 = shl nuw i32 1, %87
  %89 = and i32 %88, %86
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %80
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !24
  %92 = tail call i32 @__traceiter_musb_req_start(ptr noundef null, ptr noundef nonnull %25) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !25
  br label %93

93:                                               ; preds = %91, %80, %77
  %94 = load ptr, ptr %19, align 4
  %95 = load ptr, ptr %12, align 8
  %96 = getelementptr inbounds %struct.musb_request, ptr %25, i32 0, i32 5
  %97 = load i8, ptr %96, align 1
  tail call void %94(ptr noundef %95, i8 noundef zeroext %97) #10
  %98 = getelementptr inbounds %struct.musb_request, ptr %25, i32 0, i32 4
  %99 = load i8, ptr %98, align 4
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %93
  tail call fastcc void @txstate(ptr noundef %6, ptr noundef nonnull %25) #10
  br label %103

102:                                              ; preds = %93
  tail call fastcc void @rxstate(ptr noundef %6, ptr noundef nonnull %25) #10
  br label %103

103:                                              ; preds = %102, %101, %69, %41, %29, %11
  %104 = phi i32 [ -11, %29 ], [ -11, %41 ], [ 0, %69 ], [ -22, %11 ], [ 0, %101 ], [ 0, %102 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %14) #10
  br label %105

105:                                              ; preds = %103, %2
  %106 = phi i32 [ %104, %103 ], [ -22, %2 ]
  ret i32 %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_gadget_set_wedge(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 11
  store i8 1, ptr %4, align 4
  %5 = tail call i32 @usb_ep_set_halt(ptr noundef nonnull %0) #10
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ %5, %3 ], [ -22, %1 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_gadget_fifo_status(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.musb_hw_ep, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 6
  %11 = load i8, ptr %10, align 2
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 4
  %17 = load i8, ptr %16, align 4
  %18 = getelementptr inbounds %struct.musb, ptr %15, i32 0, i32 27
  %19 = load ptr, ptr %18, align 8
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #10
  %21 = getelementptr inbounds %struct.musb, ptr %15, i32 0, i32 2, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void %22(ptr noundef %19, i8 noundef zeroext %17) #10
  %23 = load ptr, ptr @musb_readw, align 4
  %24 = tail call zeroext i16 %23(ptr noundef %5, i32 noundef 8) #10
  %25 = zext i16 %24 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %20) #10
  br label %26

26:                                               ; preds = %13, %9, %1
  %27 = phi i32 [ -22, %9 ], [ %25, %13 ], [ -22, %1 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @musb_gadget_fifo_flush(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 4
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = getelementptr %struct.musb, ptr %3, i32 0, i32 35, i32 %6, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 27
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %12 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 2, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %13(ptr noundef %10, i8 noundef zeroext %5) #10
  %14 = load ptr, ptr @musb_writew, align 4
  %15 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 12
  %16 = load i16, ptr %15, align 4
  %17 = shl nuw i32 1, %6
  %18 = trunc i32 %17 to i16
  %19 = xor i16 %18, -1
  %20 = and i16 %16, %19
  tail call void %14(ptr noundef %10, i32 noundef 6, i16 noundef zeroext %20) #10
  %21 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 6
  %22 = load i8, ptr %21, align 2
  %23 = icmp eq i8 %22, 0
  %24 = load ptr, ptr @musb_readw, align 4
  br i1 %23, label %34, label %25

25:                                               ; preds = %1
  %26 = tail call zeroext i16 %24(ptr noundef %8, i32 noundef 2) #10
  %27 = and i16 %26, 2
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %25
  %30 = and i16 %26, -176
  %31 = or i16 %30, 174
  %32 = load ptr, ptr @musb_writew, align 4
  tail call void %32(ptr noundef %8, i32 noundef 2, i16 noundef zeroext %31) #10
  %33 = load ptr, ptr @musb_writew, align 4
  tail call void %33(ptr noundef %8, i32 noundef 2, i16 noundef zeroext %31) #10
  br label %39

34:                                               ; preds = %1
  %35 = tail call zeroext i16 %24(ptr noundef %8, i32 noundef 6) #10
  %36 = or i16 %35, 85
  %37 = load ptr, ptr @musb_writew, align 4
  tail call void %37(ptr noundef %8, i32 noundef 6, i16 noundef zeroext %36) #10
  %38 = load ptr, ptr @musb_writew, align 4
  tail call void %38(ptr noundef %8, i32 noundef 6, i16 noundef zeroext %36) #10
  br label %39

39:                                               ; preds = %34, %29, %25
  %40 = load ptr, ptr @musb_writew, align 4
  %41 = load i16, ptr %15, align 4
  tail call void %40(ptr noundef %10, i32 noundef 6, i16 noundef zeroext %41) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %11) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_queue_resume_work(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_ep_restart_resume_work(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_start, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = tail call ptr @llvm.thread.pointer() #10
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 5
  %10 = getelementptr i32, ptr @__cpu_online_mask, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %8, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !24
  %17 = tail call i32 @__traceiter_musb_req_start(ptr noundef null, ptr noundef %1) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !25
  br label %18

18:                                               ; preds = %16, %5, %2
  %19 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 2, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.musb_request, ptr %1, i32 0, i32 5
  %24 = load i8, ptr %23, align 1
  tail call void %20(ptr noundef %22, i8 noundef zeroext %24) #10
  %25 = getelementptr inbounds %struct.musb_request, ptr %1, i32 0, i32 4
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  tail call fastcc void @txstate(ptr noundef %0, ptr noundef %1) #10
  br label %30

29:                                               ; preds = %18
  tail call fastcc void @rxstate(ptr noundef %0, ptr noundef %1) #10
  br label %30

30:                                               ; preds = %29, %28
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_req_enq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_req_deq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_set_halt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_phy_set_charger_current(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

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
!8 = !{i64 2148957554}
!9 = !{i64 2148953378}
!10 = !{i64 2148953453, i64 2148953480, i64 2148953527, i64 2148953549, i64 2148953577, i64 2148953597}
!11 = !{i64 2148980557}
!12 = !{i64 2154335186}
!13 = !{i64 2154335326}
!14 = !{i64 2154347504}
!15 = !{i64 2154347644}
!16 = !{i8 0, i8 2}
!17 = !{i64 2154359822}
!18 = !{i64 2154359962}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2154372254}
!21 = !{i64 2154372400}
!22 = !{i64 2154384786}
!23 = !{i64 2154384930}
!24 = !{i64 2154401371}
!25 = !{i64 2154401517}
!26 = !{i64 2147964318}
!27 = !{i64 462628, i64 2147952599, i64 2147952625, i64 2147952672, i64 2147952694, i64 2147952722, i64 2147952742}
!28 = !{i64 449197, i64 449222, i64 449244, i64 449260, i64 449272, i64 449292, i64 449316, i64 449332, i64 449344}
!29 = !{i64 2147964444}
!30 = !{i64 2154413865}
!31 = !{i64 2154414007}
!32 = !{!"branch_weights", i32 1, i32 2000}
!33 = !{i64 2154426267}
!34 = !{i64 2154426409}
