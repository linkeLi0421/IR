; ModuleID = '/llk/IR/drivers/usb/musb/musb_host.c_pt.bc'
source_filename = "../drivers/usb/musb/musb_host.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.usb_devmap = type { [4 x i32] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.68, i32 }
%union.anon.68 = type { ptr }
%struct.musb = type { %struct.spinlock, %struct.spinlock, %struct.musb_io, ptr, %struct.musb_context_registers, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i16, i16, i16, i32, i32, i8, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.timer_list, %struct.notifier_block, ptr, ptr, ptr, ptr, i8, i16, i16, ptr, ptr, i32, i8, [16 x %struct.musb_hw_ep], i16, i16, i8, ptr, i8, i32, i8, i32, i8, i32, i32, [3 x i8], i8, i8, i16, i8, %struct.usb_gadget, ptr, ptr, ptr, i32, ptr }
%struct.musb_io = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.musb_context_registers = type { i8, i8, i16, i8, i8, i8, i8, i8, i32, [16 x %struct.musb_csr_regs] }
%struct.musb_csr_regs = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.musb_hw_ep = type { ptr, ptr, ptr, i8, i8, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i8, i8, %struct.musb_ep, %struct.musb_ep }
%struct.musb_ep = type { %struct.usb_ep, [12 x i8], ptr, ptr, i8, i8, i8, i16, ptr, ptr, %struct.list_head, i8, i8, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
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
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.musb_qh = type { ptr, ptr, ptr, %struct.list_head, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, %struct.sg_mapping_iter, i8 }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.dma_controller = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dma_channel = type { ptr, i32, i32, i32, i8, i8 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.usb_tt = type { ptr, i32, i32, ptr, %struct.spinlock, %struct.list_head, %struct.work_struct }
%struct.musb_temp_buffer = type { ptr, ptr, [0 x i8] }
%struct.musb_hdrc_config = type { ptr, i32, i8, i8, i8, i32 }
%struct.musb_platform_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@musb_readw = external dso_local local_unnamed_addr global ptr, align 4
@musb_readb = external dso_local local_unnamed_addr global ptr, align 4
@.str = private unnamed_addr constant [49 x i8] c"<== csr0 %04x, qh %p, count %d, urb %p, stage %d\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"STALLING ENDPOINT\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"no response, csr0 %04x\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"control NAK timeout\00", align 1
@musb_writew = external dso_local local_unnamed_addr global ptr, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"aborting\00", align 1
@musb_writeb = external dso_local local_unnamed_addr global ptr, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"\013%s %d: no URB for end 0\0A\00", align 1
@__func__.musb_h_ep0_irq = private unnamed_addr constant [15 x i8] c"musb_h_ep0_irq\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"ep0 STATUS, csr %04x\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"extra TX%d ready, csr %04x\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"OUT/TX%d end, csr %04x%s\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c", dma\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"TX end %d stall\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"TX 3strikes on ep=%d\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"NAK timeout on TX%d ep\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"TX ep%d device not responding\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"DMA complete but FIFO not empty, CSR %04x\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"not complete, but DMA enabled?\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"error: sg list empty\0A\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"BOGUS RX%d ready, csr %04x, count %d\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"RX end %d STALL\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"ep%d RX three-strikes error\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"RX end %d NAK timeout\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"RX end %d ISO data error\00", align 1
@.str.23 = private unnamed_addr constant [47 x i8] c"end %d high bandwidth incomplete ISO packet RX\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"\013%s %d: RX%d dma busy, csr %04x\0A\00", align 1
@__func__.musb_host_rx = private unnamed_addr constant [13 x i8] c"musb_host_rx\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"RXCSR%d %04x, reqpkt, len %zu%s\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"ep %d dma %s, rxcsr %04x, rxcount %d\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.29 = private unnamed_addr constant [49 x i8] c"\013%s %d: Rx interrupt with no errors or packet!\0A\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"RX%d count %d, buffer 0x%llx len %d/%d\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"error: rx_dma failed\0A\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"read %spacket\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"last \00", align 1
@musb_hc_driver = internal constant %struct.hc_driver { ptr @.str.61, ptr @.str.62, i32 4, ptr null, i32 35, ptr null, ptr @musb_h_start, ptr null, ptr null, ptr @musb_h_stop, ptr null, ptr @musb_h_get_frame_number, ptr @musb_urb_enqueue, ptr @musb_urb_dequeue, ptr @musb_map_urb_for_dma, ptr @musb_unmap_urb_for_dma, ptr @musb_h_disable, ptr null, ptr @musb_hub_status_data, ptr @musb_hub_control, ptr @musb_bus_suspend, ptr @musb_bus_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.34 = private unnamed_addr constant [29 x i8] c"drivers/usb/musb/musb_host.c\00", align 1
@.str.35 = private unnamed_addr constant [43 x i8] c"Could not flush host TX%d fifo: csr: %04x\0A\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"start no-DATA\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"start IN-DATA\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"start OUT-DATA\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"Sending %d byte%s to ep0 fifo %p\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"\013%s %d: bogus ep0 stage %d\0A\00", align 1
@__func__.musb_h_ep0_continue = private unnamed_addr constant [20 x i8] c"musb_h_ep0_continue\00", align 1
@.str.42 = private unnamed_addr constant [25 x i8] c"... next ep%d %cX urb %p\00", align 1
@__tracepoint_musb_urb_gb = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.44 = private unnamed_addr constant [49 x i8] c"check whether there's still time for periodic Tx\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"Start TX%d %s\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"dma\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"pio\00", align 1
@__tracepoint_musb_urb_start = external dso_local global %struct.tracepoint, align 4
@.str.48 = private unnamed_addr constant [65 x i8] c"%s hw%d urb %p spd%d dev%d ep%d%s h_addr%02x h_port%02x bytes %d\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"-->\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"<--\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"error: sglist empty\0A\00", align 1
@.str.54 = private unnamed_addr constant [43 x i8] c"\013%s %d: broken !rx_reinit, ep%d csr %04x\0A\00", align 1
@__func__.musb_ep_program = private unnamed_addr constant [16 x i8] c"musb_ep_program\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"RXCSR%d := %04x\00", align 1
@.str.56 = private unnamed_addr constant [33 x i8] c"\014%s %d: rx%d, packet/%d ready?\0A\00", align 1
@__func__.musb_rx_reinit = private unnamed_addr constant [15 x i8] c"musb_rx_reinit\00", align 1
@__tracepoint_musb_urb_tx = external dso_local global %struct.tracepoint, align 4
@musb_h_tx_flush_fifo.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.57 = private unnamed_addr constant [50 x i8] c"%s %s: Could not flush host TX%d fifo: csr: %04x\0A\00", align 1
@__tracepoint_musb_urb_rx = external dso_local global %struct.tracepoint, align 4
@.str.58 = private unnamed_addr constant [23 x i8] c"** OVERFLOW %d into %d\00", align 1
@.str.59 = private unnamed_addr constant [35 x i8] c"RX%d count %d, buffer %p len %d/%d\00", align 1
@.str.60 = private unnamed_addr constant [20 x i8] c"OVERFLOW %d into %d\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"musb-hcd\00", align 1
@.str.62 = private unnamed_addr constant [22 x i8] c"MUSB HDRC host driver\00", align 1
@.str.63 = private unnamed_addr constant [41 x i8] c"high bandwidth %s (%dx%d) not supported\0A\00", align 1
@__tracepoint_musb_urb_enq = external dso_local global %struct.tracepoint, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.64 = private unnamed_addr constant [5 x i8] c"ctrl\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"iso\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"bulk\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.68 = private unnamed_addr constant [32 x i8] c"%s hwep alloc failed for %dx%d\0A\00", align 1
@.str.69 = private unnamed_addr constant [23 x i8] c"qh %p periodic slot %d\00", align 1
@__tracepoint_musb_urb_deq = external dso_local global %struct.tracepoint, align 4
@.str.70 = private unnamed_addr constant [34 x i8] c"abort %cX%d DMA for urb %p --> %d\00", align 1
@.str.71 = private unnamed_addr constant [47 x i8] c"\014%s %d: trying to suspend as %s while active\0A\00", align 1
@__func__.musb_bus_suspend = private unnamed_addr constant [17 x i8] c"musb_bus_suspend\00", align 1
@switch.table.musb_schedule = private unnamed_addr constant [4 x ptr] [ptr @.str.64, ptr @.str.65, ptr @.str.10, ptr @.str.67], align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @hcd_to_musb(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @musb_h_ep0_irq(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 35
  %5 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 35, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 35, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.usb_host_endpoint, ptr %11, i32 0, i32 4
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  %15 = getelementptr i8, ptr %13, i32 -20
  %16 = select i1 %14, ptr null, ptr %15
  br label %17

17:                                               ; preds = %10, %1
  %18 = phi ptr [ null, %1 ], [ %16, %10 ]
  %19 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 2, i32 1
  %20 = load ptr, ptr %19, align 4
  tail call void %20(ptr noundef %3, i8 noundef zeroext 0) #11
  %21 = load ptr, ptr @musb_readw, align 4
  %22 = tail call zeroext i16 %21(ptr noundef %6, i32 noundef 2) #11
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = load ptr, ptr @musb_readb, align 4
  %28 = tail call zeroext i8 %27(ptr noundef %6, i32 noundef 8) #11
  %29 = zext i8 %28 to i16
  br label %30

30:                                               ; preds = %26, %17
  %31 = phi i16 [ %29, %26 ], [ 0, %17 ]
  %32 = zext i16 %31 to i32
  %33 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 15
  %34 = load i8, ptr %33, align 8
  %35 = zext i8 %34 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %23, ptr noundef %8, i32 noundef %32, ptr noundef %18, i32 noundef %35) #11
  %36 = load i8, ptr %33, align 8
  %37 = icmp eq i8 %36, 4
  %38 = zext i1 %37 to i32
  %39 = and i32 %23, 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.1) #11
  br label %51

42:                                               ; preds = %30
  %43 = and i32 %23, 16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %23) #11
  br label %51

46:                                               ; preds = %42
  %47 = and i32 %23, 128
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %65, label %49

49:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.3) #11
  %50 = load ptr, ptr @musb_writew, align 4
  tail call void %50(ptr noundef %6, i32 noundef 2, i16 noundef zeroext 0) #11
  br label %65

51:                                               ; preds = %45, %41
  %52 = phi i32 [ -71, %45 ], [ -32, %41 ]
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.4) #11
  %53 = icmp eq ptr %18, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.urb, ptr %18, i32 0, i32 12
  store i32 %52, ptr %55, align 4
  br label %56

56:                                               ; preds = %54, %51
  %57 = and i32 %23, 32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %56
  %60 = and i16 %22, -33
  %61 = load ptr, ptr @musb_writew, align 4
  tail call void %61(ptr noundef %6, i32 noundef 2, i16 noundef zeroext %60) #11
  %62 = and i16 %22, -161
  %63 = load ptr, ptr @musb_writew, align 4
  tail call void %63(ptr noundef %6, i32 noundef 2, i16 noundef zeroext %62) #11
  br label %68

64:                                               ; preds = %56
  tail call fastcc void @musb_h_ep0_flush_fifo(ptr noundef %4)
  br label %68

65:                                               ; preds = %49, %46
  %66 = phi i32 [ %38, %46 ], [ 1, %49 ]
  %67 = icmp eq ptr %18, null
  br i1 %67, label %71, label %74, !prof !8

68:                                               ; preds = %64, %59
  %69 = load ptr, ptr @musb_writeb, align 4
  tail call void %69(ptr noundef %6, i32 noundef 11, i8 noundef zeroext 0) #11
  %70 = load ptr, ptr @musb_writew, align 4
  tail call void %70(ptr noundef %6, i32 noundef 2, i16 noundef zeroext 0) #11
  br i1 %53, label %71, label %158, !prof !8

71:                                               ; preds = %68, %65
  %72 = phi i32 [ 1, %68 ], [ %66, %65 ]
  %73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.musb_h_ep0_irq, i32 noundef 1128) #12
  tail call fastcc void @musb_h_ep0_flush_fifo(ptr noundef %4)
  br label %160

74:                                               ; preds = %65
  br i1 %37, label %158, label %75

75:                                               ; preds = %74
  %76 = load ptr, ptr %7, align 4
  %77 = load i8, ptr %33, align 8
  switch i8 %77, label %134 [
    i8 2, label %78
    i8 1, label %101
    i8 3, label %113
  ]

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.urb, ptr %18, i32 0, i32 14
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.urb, ptr %18, i32 0, i32 20
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr i8, ptr %80, i32 %82
  %84 = getelementptr inbounds %struct.urb, ptr %18, i32 0, i32 19
  %85 = load i32, ptr %84, align 4
  %86 = sub i32 %85, %82
  %87 = tail call i32 @llvm.umin.i32(i32 %86, i32 %32) #11
  %88 = trunc i32 %87 to i16
  %89 = icmp ult i32 %86, %32
  br i1 %89, label %90, label %92

90:                                               ; preds = %78
  %91 = getelementptr inbounds %struct.urb, ptr %18, i32 0, i32 12
  store i32 -75, ptr %91, align 4
  br label %92

92:                                               ; preds = %90, %78
  tail call void @musb_read_fifo(ptr noundef %4, i16 noundef zeroext %88, ptr noundef %83) #11
  %93 = load i32, ptr %81, align 4
  %94 = add i32 %93, %87
  store i32 %94, ptr %81, align 4
  %95 = getelementptr inbounds %struct.musb_qh, ptr %76, i32 0, i32 16
  %96 = load i16, ptr %95, align 2
  %97 = icmp ugt i16 %96, %31
  br i1 %97, label %142, label %98

98:                                               ; preds = %92
  %99 = load i32, ptr %84, align 4
  %100 = icmp ult i32 %94, %99
  br i1 %100, label %138, label %142

101:                                              ; preds = %75
  %102 = getelementptr inbounds %struct.urb, ptr %18, i32 0, i32 21
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %103, i32 0, i32 4
  %105 = load i16, ptr %104, align 1
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.36) #11
  br label %142

108:                                              ; preds = %101
  %109 = load i8, ptr %103, align 1
  %110 = icmp sgt i8 %109, -1
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.37) #11
  store i8 2, ptr %33, align 8
  br label %138

112:                                              ; preds = %108
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.38) #11
  store i8 3, ptr %33, align 8
  br label %113

113:                                              ; preds = %112, %75
  %114 = phi i1 [ false, %75 ], [ true, %112 ]
  %115 = getelementptr inbounds %struct.musb_qh, ptr %76, i32 0, i32 16
  %116 = load i16, ptr %115, align 2
  %117 = zext i16 %116 to i32
  %118 = getelementptr inbounds %struct.urb, ptr %18, i32 0, i32 19
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr inbounds %struct.urb, ptr %18, i32 0, i32 20
  %121 = load i32, ptr %120, align 4
  %122 = sub i32 %119, %121
  %123 = tail call i32 @llvm.umin.i32(i32 %122, i32 %117) #11
  %124 = trunc i32 %123 to i16
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %137, label %126

126:                                              ; preds = %113
  %127 = getelementptr inbounds %struct.urb, ptr %18, i32 0, i32 14
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr i8, ptr %128, i32 %121
  %130 = icmp eq i32 %123, 1
  %131 = select i1 %130, ptr @.str.10, ptr @.str.40
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %123, ptr noundef nonnull %131, ptr noundef %129) #11
  tail call void @musb_write_fifo(ptr noundef %4, i16 noundef zeroext %124, ptr noundef %129) #11
  %132 = load i32, ptr %120, align 4
  %133 = add i32 %132, %123
  store i32 %133, ptr %120, align 4
  br label %138

134:                                              ; preds = %75
  %135 = zext i8 %77 to i32
  %136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.musb_h_ep0_continue, i32 noundef 1035, i32 noundef %135) #12
  br label %142

137:                                              ; preds = %113
  br i1 %114, label %138, label %142

138:                                              ; preds = %137, %126, %111, %98
  %139 = load i8, ptr %33, align 8
  %140 = icmp eq i8 %139, 2
  %141 = select i1 %140, i16 32, i16 2
  br label %155

142:                                              ; preds = %137, %134, %107, %98, %92
  %143 = getelementptr inbounds %struct.urb, ptr %18, i32 0, i32 10
  %144 = load i32, ptr %143, align 4
  %145 = and i32 %144, 128
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.urb, ptr %18, i32 0, i32 19
  %149 = load i32, ptr %148, align 4
  %150 = icmp eq i32 %149, 0
  %151 = select i1 %150, i16 2144, i16 2114
  br label %152

152:                                              ; preds = %147, %142
  %153 = phi i16 [ 2144, %142 ], [ %151, %147 ]
  store i8 4, ptr %33, align 8
  %154 = zext i16 %153 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %154) #11
  br label %155

155:                                              ; preds = %152, %138
  %156 = phi i16 [ %141, %138 ], [ %153, %152 ]
  %157 = load ptr, ptr @musb_writew, align 4
  tail call void %157(ptr noundef %6, i32 noundef 2, i16 noundef zeroext %156) #11
  br label %160

158:                                              ; preds = %74, %68
  %159 = phi i32 [ %66, %74 ], [ 1, %68 ]
  store i8 0, ptr %33, align 8
  tail call fastcc void @musb_advance_schedule(ptr noundef %0, ptr noundef nonnull %18, ptr noundef %4, i32 noundef 1)
  br label %160

160:                                              ; preds = %158, %155, %71
  %161 = phi i32 [ %72, %71 ], [ %159, %158 ], [ 1, %155 ]
  ret i32 %161
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_dbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @musb_h_ep0_flush_fifo(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.musb_hw_ep, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr @musb_readw, align 4
  %5 = tail call zeroext i16 %4(ptr noundef %3, i32 noundef 2) #11
  %6 = and i16 %5, 3
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %53, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr @musb_writew, align 4
  tail call void %9(ptr noundef %3, i32 noundef 2, i16 noundef zeroext 256) #11
  %10 = load ptr, ptr @musb_readw, align 4
  %11 = tail call zeroext i16 %10(ptr noundef %3, i32 noundef 2) #11
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 2147480) #11
  %13 = load ptr, ptr @musb_readw, align 4
  %14 = tail call zeroext i16 %13(ptr noundef %3, i32 noundef 2) #11
  %15 = and i16 %14, 3
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %53, label %17

17:                                               ; preds = %8
  %18 = load ptr, ptr @musb_writew, align 4
  tail call void %18(ptr noundef %3, i32 noundef 2, i16 noundef zeroext 256) #11
  %19 = load ptr, ptr @musb_readw, align 4
  %20 = tail call zeroext i16 %19(ptr noundef %3, i32 noundef 2) #11
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 2147480) #11
  %22 = load ptr, ptr @musb_readw, align 4
  %23 = tail call zeroext i16 %22(ptr noundef %3, i32 noundef 2) #11
  %24 = and i16 %23, 3
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %53, label %26

26:                                               ; preds = %17
  %27 = load ptr, ptr @musb_writew, align 4
  tail call void %27(ptr noundef %3, i32 noundef 2, i16 noundef zeroext 256) #11
  %28 = load ptr, ptr @musb_readw, align 4
  %29 = tail call zeroext i16 %28(ptr noundef %3, i32 noundef 2) #11
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 2147480) #11
  %31 = load ptr, ptr @musb_readw, align 4
  %32 = tail call zeroext i16 %31(ptr noundef %3, i32 noundef 2) #11
  %33 = and i16 %32, 3
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %53, label %35

35:                                               ; preds = %26
  %36 = load ptr, ptr @musb_writew, align 4
  tail call void %36(ptr noundef %3, i32 noundef 2, i16 noundef zeroext 256) #11
  %37 = load ptr, ptr @musb_readw, align 4
  %38 = tail call zeroext i16 %37(ptr noundef %3, i32 noundef 2) #11
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 2147480) #11
  %40 = load ptr, ptr @musb_readw, align 4
  %41 = tail call zeroext i16 %40(ptr noundef %3, i32 noundef 2) #11
  %42 = and i16 %41, 3
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %35
  %45 = load ptr, ptr @musb_writew, align 4
  tail call void %45(ptr noundef %3, i32 noundef 2, i16 noundef zeroext 256) #11
  %46 = load ptr, ptr @musb_readw, align 4
  %47 = tail call zeroext i16 %46(ptr noundef %3, i32 noundef 2) #11
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 2147480) #11
  %49 = getelementptr inbounds %struct.musb_hw_ep, ptr %0, i32 0, i32 3
  %50 = load i8, ptr %49, align 4
  %51 = zext i8 %50 to i32
  %52 = zext i16 %47 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 138, i32 noundef 9, ptr noundef nonnull @.str.35, i32 noundef %51, i32 noundef %52) #11
  br label %53

53:                                               ; preds = %44, %35, %26, %17, %8, %1
  %54 = load ptr, ptr @musb_writew, align 4
  tail call void %54(ptr noundef %3, i32 noundef 2, i16 noundef zeroext 0) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @musb_advance_schedule(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #1 {
  %5 = icmp eq i32 %3, 0
  %6 = getelementptr inbounds %struct.musb_hw_ep, ptr %2, i32 0, i32 11
  %7 = getelementptr inbounds %struct.musb_hw_ep, ptr %2, i32 0, i32 12
  %8 = select i1 %5, ptr %7, ptr %6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.musb_qh, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.musb_qh, ptr %9, i32 0, i32 12
  %13 = load i8, ptr %12, align 1
  %14 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 12
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, -115
  %17 = select i1 %16, i32 0, i32 %15
  %18 = getelementptr inbounds %struct.musb_qh, ptr %9, i32 0, i32 13
  %19 = load i8, ptr %18, align 2
  switch i8 %19, label %46 [
    i8 2, label %20
    i8 3, label %20
    i8 1, label %39
  ]

20:                                               ; preds = %4, %4
  %21 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 2, i32 6
  %22 = load ptr, ptr %21, align 8
  %23 = zext i1 %5 to i32
  %24 = tail call zeroext i16 %22(ptr noundef %9, i32 noundef %23) #11
  %25 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr %struct.usb_device, ptr %26, i32 0, i32 10, i32 %23
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.musb_qh, ptr %9, i32 0, i32 14
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = shl nuw i32 1, %31
  %33 = xor i32 %32, -1
  %34 = and i32 %28, %33
  %35 = icmp ne i16 %24, 0
  %36 = zext i1 %35 to i32
  %37 = shl nuw i32 %36, %31
  %38 = or i32 %34, %37
  store i32 %38, ptr %27, align 4
  br label %46

39:                                               ; preds = %4
  %40 = icmp eq i32 %17, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 26
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, i32 0, i32 -18
  br label %46

46:                                               ; preds = %41, %39, %20, %4
  %47 = phi i32 [ %17, %4 ], [ %17, %39 ], [ %17, %20 ], [ %45, %41 ]
  store i8 0, ptr %12, align 1
  tail call fastcc void @musb_giveback(ptr noundef %0, ptr noundef %1, i32 noundef %47)
  store i8 %13, ptr %12, align 1
  %48 = load ptr, ptr %9, align 4
  %49 = getelementptr inbounds %struct.usb_host_endpoint, ptr %48, i32 0, i32 4
  %50 = load volatile ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %49
  br i1 %51, label %52, label %102

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 24
  %54 = load ptr, ptr %53, align 4
  br i1 %5, label %63, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.musb_hw_ep, ptr %11, i32 0, i32 13
  store i8 1, ptr %56, align 4
  %57 = getelementptr inbounds %struct.musb_hw_ep, ptr %11, i32 0, i32 10
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %77, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.dma_controller, ptr %54, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  tail call void %62(ptr noundef nonnull %58) #11
  store ptr null, ptr %57, align 4
  br label %77

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.musb_hw_ep, ptr %11, i32 0, i32 14
  store i8 1, ptr %64, align 1
  %65 = getelementptr inbounds %struct.musb_hw_ep, ptr %11, i32 0, i32 9
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.dma_controller, ptr %54, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  tail call void %70(ptr noundef nonnull %66) #11
  store ptr null, ptr %65, align 4
  br label %71

71:                                               ; preds = %68, %63
  %72 = getelementptr inbounds %struct.musb_hw_ep, ptr %11, i32 0, i32 4
  %73 = load i8, ptr %72, align 1, !range !9
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.musb_hw_ep, ptr %11, i32 0, i32 11
  store ptr null, ptr %76, align 4
  br label %82

77:                                               ; preds = %60, %55
  %78 = getelementptr inbounds %struct.musb_hw_ep, ptr %11, i32 0, i32 11
  store ptr null, ptr %78, align 4
  %79 = getelementptr inbounds %struct.musb_hw_ep, ptr %11, i32 0, i32 4
  %80 = load i8, ptr %79, align 1, !range !9
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %77, %75, %71
  %83 = getelementptr inbounds %struct.musb_hw_ep, ptr %11, i32 0, i32 12
  store ptr null, ptr %83, align 4
  br label %84

84:                                               ; preds = %82, %77
  %85 = load ptr, ptr %9, align 4
  %86 = getelementptr inbounds %struct.usb_host_endpoint, ptr %85, i32 0, i32 5
  store ptr null, ptr %86, align 4
  %87 = load i8, ptr %18, align 2
  switch i8 %87, label %102 [
    i8 0, label %88
    i8 2, label %88
    i8 1, label %101
    i8 3, label %101
  ]

88:                                               ; preds = %84, %84
  %89 = getelementptr inbounds %struct.musb_qh, ptr %9, i32 0, i32 4
  %90 = load i8, ptr %89, align 4
  %91 = icmp eq i8 %90, 1
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.musb_qh, ptr %9, i32 0, i32 3
  %94 = getelementptr inbounds %struct.musb_qh, ptr %9, i32 0, i32 3, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = load ptr, ptr %93, align 4
  %97 = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  store ptr %95, ptr %97, align 4
  store volatile ptr %96, ptr %95, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %93, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %94, align 4
  tail call void @kfree(ptr noundef %9) #11
  %98 = load volatile ptr, ptr %95, align 4
  %99 = icmp eq ptr %98, %95
  %100 = getelementptr i8, ptr %98, i32 -12
  br i1 %99, label %120, label %102

101:                                              ; preds = %88, %84, %84
  tail call void @kfree(ptr noundef %9) #11
  br label %120

102:                                              ; preds = %92, %84, %46
  %103 = phi ptr [ %9, %46 ], [ %9, %84 ], [ %100, %92 ]
  %104 = icmp eq ptr %103, null
  br i1 %104, label %120, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.musb_qh, ptr %103, i32 0, i32 12
  %107 = load i8, ptr %106, align 1
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %120, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.musb_hw_ep, ptr %2, i32 0, i32 3
  %111 = load i8, ptr %110, align 4
  %112 = zext i8 %111 to i32
  %113 = select i1 %5, i32 84, i32 82
  %114 = load ptr, ptr %103, align 4
  %115 = getelementptr inbounds %struct.usb_host_endpoint, ptr %114, i32 0, i32 4
  %116 = load volatile ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, %115
  %118 = getelementptr i8, ptr %116, i32 -20
  %119 = select i1 %117, ptr null, ptr %118
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef %112, i32 noundef %113, ptr noundef %119) #11
  tail call fastcc void @musb_start_urb(ptr noundef %0, i32 noundef %3, ptr noundef nonnull %103)
  br label %120

120:                                              ; preds = %109, %105, %102, %101, %92
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @musb_host_tx(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 35
  %4 = zext i8 %1 to i32
  %5 = getelementptr %struct.musb_hw_ep, ptr %3, i32 %4
  %6 = getelementptr %struct.musb_hw_ep, ptr %3, i32 %4, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.musb_hw_ep, ptr %3, i32 %4, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.usb_host_endpoint, ptr %12, i32 0, i32 4
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  %16 = getelementptr i8, ptr %14, i32 -20
  %17 = select i1 %15, ptr null, ptr %16
  br label %18

18:                                               ; preds = %11, %2
  %19 = phi ptr [ null, %2 ], [ %17, %11 ]
  %20 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 2, i32 1
  %23 = load ptr, ptr %22, align 4
  tail call void %23(ptr noundef %21, i8 noundef zeroext %1) #11
  %24 = load ptr, ptr @musb_readw, align 4
  %25 = tail call zeroext i16 %24(ptr noundef %7, i32 noundef 2) #11
  %26 = icmp eq ptr %19, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = zext i16 %25 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %4, i32 noundef %28) #11
  br label %281

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 10
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr %struct.musb_hw_ep, ptr %3, i32 %4, i32 9
  %33 = load ptr, ptr %32, align 4
  %34 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_urb_tx, i32 0, i32 1), align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %29
  %37 = tail call ptr @llvm.thread.pointer() #11
  %38 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %39 = load i32, ptr %38, align 8
  %40 = lshr i32 %39, 5
  %41 = getelementptr i32, ptr @__cpu_online_mask, i32 %40
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %39, 31
  %44 = shl nuw i32 1, %43
  %45 = and i32 %44, %42
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %36
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  %48 = tail call i32 @__traceiter_musb_urb_tx(ptr noundef null, ptr noundef %0, ptr noundef nonnull %19) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  br label %49

49:                                               ; preds = %47, %36, %29
  %50 = zext i16 %25 to i32
  %51 = icmp ne ptr %33, null
  %52 = select i1 %51, ptr @.str.9, ptr @.str.10
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %4, i32 noundef %50, ptr noundef nonnull %52) #11
  %53 = and i32 %50, 32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %81

55:                                               ; preds = %49
  %56 = and i32 %50, 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %81

58:                                               ; preds = %55
  %59 = and i32 %50, 128
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %84, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.musb_qh, ptr %9, i32 0, i32 13
  %63 = load i8, ptr %62, align 2
  %64 = icmp eq i8 %63, 2
  br i1 %64, label %65, label %78

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.musb_qh, ptr %9, i32 0, i32 4
  %67 = load i8, ptr %66, align 4
  %68 = icmp eq i8 %67, 1
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 19
  %71 = load volatile ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, %70
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 19, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %71, %75
  br i1 %76, label %78, label %77

77:                                               ; preds = %73, %69
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %4) #11
  tail call fastcc void @musb_bulk_nak_timeout(ptr noundef %0, ptr noundef %5, i32 noundef 0)
  br label %281

78:                                               ; preds = %73, %65, %61
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %4) #11
  %79 = load ptr, ptr %22, align 4
  tail call void %79(ptr noundef %21, i8 noundef zeroext %1) #11
  %80 = load ptr, ptr @musb_writew, align 4
  tail call void %80(ptr noundef %7, i32 noundef 2, i16 noundef zeroext 167) #11
  br label %281

81:                                               ; preds = %55, %49
  %82 = phi ptr [ @.str.11, %49 ], [ @.str.12, %55 ]
  %83 = phi i32 [ -32, %49 ], [ -110, %55 ]
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull %82, i32 noundef %4) #11
  br label %84

84:                                               ; preds = %81, %58
  %85 = phi i32 [ 0, %58 ], [ %83, %81 ]
  %86 = icmp eq ptr %33, null
  %87 = getelementptr inbounds %struct.dma_channel, ptr %33, i32 0, i32 3
  %88 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 24
  %89 = icmp ult i32 %31, 1073741824
  %90 = getelementptr inbounds %struct.dma_channel, ptr %33, i32 0, i32 2
  %91 = getelementptr inbounds %struct.musb_qh, ptr %9, i32 0, i32 6
  %92 = select i1 %51, ptr %90, ptr %91
  %93 = getelementptr inbounds %struct.musb_qh, ptr %9, i32 0, i32 5
  %94 = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 19
  %95 = getelementptr inbounds %struct.musb_qh, ptr %9, i32 0, i32 16
  %96 = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 13
  %97 = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 29
  %98 = getelementptr inbounds %struct.musb_qh, ptr %9, i32 0, i32 18
  %99 = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 24
  %100 = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 12
  %101 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 54
  %102 = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 14
  %103 = getelementptr inbounds %struct.musb_qh, ptr %9, i32 0, i32 19
  %104 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %105 = getelementptr %struct.urb, ptr %19, i32 1, i32 4
  br label %106

106:                                              ; preds = %260, %84
  %107 = phi i32 [ %85, %84 ], [ -22, %260 ]
  %108 = phi i16 [ %25, %84 ], [ %251, %260 ]
  %109 = icmp ne i32 %107, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %106
  br i1 %86, label %119, label %111

111:                                              ; preds = %110
  %112 = load i32, ptr %87, align 4
  %113 = icmp eq i32 %112, 2
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  store i32 4, ptr %87, align 4
  %115 = load ptr, ptr %88, align 4
  %116 = getelementptr inbounds %struct.dma_controller, ptr %115, i32 0, i32 4
  %117 = load ptr, ptr %116, align 4
  %118 = tail call i32 %117(ptr noundef nonnull %33) #11
  br label %119

119:                                              ; preds = %114, %111, %110
  tail call fastcc void @musb_h_tx_flush_fifo(ptr noundef %5)
  %120 = and i16 %108, 28507
  %121 = load ptr, ptr %22, align 4
  tail call void %121(ptr noundef %21, i8 noundef zeroext %1) #11
  %122 = load ptr, ptr @musb_writew, align 4
  tail call void %122(ptr noundef %7, i32 noundef 2, i16 noundef zeroext %120) #11
  %123 = load ptr, ptr @musb_writew, align 4
  tail call void %123(ptr noundef %7, i32 noundef 2, i16 noundef zeroext %120) #11
  %124 = load ptr, ptr @musb_writeb, align 4
  tail call void %124(ptr noundef %7, i32 noundef 11, i8 noundef zeroext 0) #11
  br label %125

125:                                              ; preds = %119, %106
  %126 = phi i16 [ %120, %119 ], [ %108, %106 ]
  br i1 %86, label %163, label %127

127:                                              ; preds = %125
  %128 = load i32, ptr %87, align 4
  %129 = icmp eq i32 %128, 2
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = zext i16 %126 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %4, i32 noundef %131) #11
  br label %281

132:                                              ; preds = %127
  br i1 %109, label %163, label %133

133:                                              ; preds = %132
  %134 = and i16 %126, 1024
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %153, label %136

136:                                              ; preds = %133
  %137 = load ptr, ptr @musb_readw, align 4
  %138 = tail call zeroext i16 %137(ptr noundef %7, i32 noundef 2) #11
  %139 = and i16 %138, %126
  %140 = and i16 %139, 1
  %141 = icmp eq i16 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %136
  %143 = and i16 %139, -4098
  %144 = load ptr, ptr @musb_writew, align 4
  %145 = or i16 %143, 166
  tail call void %144(ptr noundef %7, i32 noundef 2, i16 noundef zeroext %145) #11
  br label %146

146:                                              ; preds = %142, %136
  %147 = phi i16 [ %143, %142 ], [ %139, %136 ]
  %148 = and i16 %147, -1192
  %149 = load ptr, ptr @musb_writew, align 4
  %150 = or i16 %148, 166
  tail call void %149(ptr noundef %7, i32 noundef 2, i16 noundef zeroext %150) #11
  %151 = load ptr, ptr @musb_readw, align 4
  %152 = tail call zeroext i16 %151(ptr noundef %7, i32 noundef 2) #11
  br label %153

153:                                              ; preds = %146, %133
  %154 = phi i16 [ %152, %146 ], [ %126, %133 ]
  %155 = zext i16 %154 to i32
  %156 = and i32 %155, 3
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  %159 = load i32, ptr %92, align 4
  %160 = load i32, ptr %93, align 4
  %161 = add i32 %160, %159
  store i32 %161, ptr %93, align 4
  br i1 %89, label %171, label %182

162:                                              ; preds = %153
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %155) #11
  br label %281

163:                                              ; preds = %132, %125
  %164 = icmp eq i32 %107, 0
  %165 = select i1 %164, i1 true, i1 %51
  %166 = select i1 %165, i1 true, i1 %89
  br i1 %166, label %167, label %203

167:                                              ; preds = %163
  %168 = load i32, ptr %92, align 4
  %169 = load i32, ptr %93, align 4
  %170 = add i32 %169, %168
  store i32 %170, ptr %93, align 4
  br i1 %89, label %171, label %182

171:                                              ; preds = %167, %158
  %172 = phi i32 [ %159, %158 ], [ %168, %167 ]
  %173 = phi i16 [ %154, %158 ], [ %126, %167 ]
  %174 = phi i1 [ true, %158 ], [ %164, %167 ]
  %175 = load i32, ptr %98, align 4
  %176 = getelementptr %struct.usb_iso_packet_descriptor, ptr %97, i32 %175, i32 2
  store i32 %172, ptr %176, align 4
  %177 = getelementptr %struct.usb_iso_packet_descriptor, ptr %97, i32 %175, i32 3
  store i32 %107, ptr %177, align 4
  %178 = load i32, ptr %98, align 4
  %179 = add i32 %178, 1
  store i32 %179, ptr %98, align 4
  %180 = load i32, ptr %99, align 4
  %181 = icmp ult i32 %179, %180
  br i1 %181, label %207, label %203

182:                                              ; preds = %167, %158
  %183 = phi i32 [ %161, %158 ], [ %170, %167 ]
  %184 = phi i16 [ %154, %158 ], [ %126, %167 ]
  %185 = phi i1 [ true, %158 ], [ %164, %167 ]
  br i1 %51, label %186, label %189

186:                                              ; preds = %182
  %187 = load i32, ptr %94, align 4
  %188 = icmp eq i32 %187, %183
  br i1 %188, label %203, label %189

189:                                              ; preds = %186, %182
  %190 = load i32, ptr %91, align 4
  %191 = load i16, ptr %95, align 2
  %192 = zext i16 %191 to i32
  %193 = icmp ult i32 %190, %192
  br i1 %193, label %203, label %194

194:                                              ; preds = %189
  %195 = load i32, ptr %94, align 4
  %196 = icmp eq i32 %195, %183
  br i1 %196, label %197, label %202

197:                                              ; preds = %194
  %198 = load i32, ptr %96, align 4
  %199 = and i32 %198, 64
  %200 = icmp eq i32 %199, 0
  %201 = or i1 %109, %200
  br i1 %201, label %203, label %212

202:                                              ; preds = %194
  br i1 %109, label %203, label %212

203:                                              ; preds = %202, %197, %189, %186, %171, %163
  %204 = phi i1 [ %185, %189 ], [ %185, %197 ], [ %185, %186 ], [ %174, %171 ], [ false, %163 ], [ %185, %202 ]
  %205 = load i32, ptr %100, align 4
  %206 = icmp eq i32 %205, -115
  br label %215

207:                                              ; preds = %171
  %208 = load i32, ptr %100, align 4
  %209 = icmp eq i32 %208, -115
  %210 = xor i1 %209, true
  %211 = or i1 %109, %210
  br i1 %211, label %215, label %225

212:                                              ; preds = %202, %197
  %213 = load i32, ptr %100, align 4
  %214 = icmp eq i32 %213, -115
  br i1 %214, label %223, label %215

215:                                              ; preds = %212, %207, %203
  %216 = phi i1 [ %206, %203 ], [ %209, %207 ], [ %214, %212 ]
  %217 = phi i32 [ %205, %203 ], [ %208, %207 ], [ %213, %212 ]
  %218 = phi i1 [ %204, %203 ], [ %174, %207 ], [ %185, %212 ]
  %219 = select i1 %218, i32 %217, i32 %107
  %220 = select i1 %216, i32 %107, i32 %219
  store i32 %220, ptr %100, align 4
  %221 = load i32, ptr %93, align 4
  %222 = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 20
  store i32 %221, ptr %222, align 4
  tail call fastcc void @musb_advance_schedule(ptr noundef %0, ptr noundef nonnull %19, ptr noundef %5, i32 noundef 0)
  br label %281

223:                                              ; preds = %212
  %224 = sub i32 %195, %183
  br i1 %51, label %230, label %243

225:                                              ; preds = %207
  %226 = getelementptr %struct.usb_iso_packet_descriptor, ptr %105, i32 %175, i32 1
  %227 = load i32, ptr %226, align 4
  %228 = getelementptr %struct.usb_iso_packet_descriptor, ptr %105, i32 %175
  %229 = load i32, ptr %228, align 4
  br i1 %51, label %230, label %243

230:                                              ; preds = %225, %223
  %231 = phi i16 [ %184, %223 ], [ %173, %225 ]
  %232 = phi i32 [ %224, %223 ], [ %227, %225 ]
  %233 = phi i32 [ %183, %223 ], [ %229, %225 ]
  %234 = load ptr, ptr %88, align 4
  %235 = tail call fastcc zeroext i1 @musb_tx_dma_program(ptr noundef %234, ptr noundef %5, ptr noundef %9, ptr noundef nonnull %19, i32 noundef %233, i32 noundef %232)
  br i1 %235, label %236, label %250

236:                                              ; preds = %230
  %237 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 3
  %238 = load ptr, ptr %237, align 8
  %239 = load i32, ptr %238, align 4
  %240 = and i32 %239, 32
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %281, label %242

242:                                              ; preds = %236
  tail call fastcc void @musb_h_tx_dma_start(ptr noundef %5)
  br label %281

243:                                              ; preds = %225, %223
  %244 = phi i16 [ %173, %225 ], [ %184, %223 ]
  %245 = phi i32 [ %229, %225 ], [ %183, %223 ]
  %246 = phi i32 [ %227, %225 ], [ %224, %223 ]
  %247 = and i16 %244, 4096
  %248 = icmp eq i16 %247, 0
  br i1 %248, label %250, label %249

249:                                              ; preds = %243
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.16) #11
  br label %281

250:                                              ; preds = %243, %230
  %251 = phi i16 [ %231, %230 ], [ %244, %243 ]
  %252 = phi i32 [ %233, %230 ], [ %245, %243 ]
  %253 = phi i32 [ %232, %230 ], [ %246, %243 ]
  %254 = load i16, ptr %95, align 2
  %255 = load ptr, ptr %101, align 4
  tail call void @usb_hcd_unmap_urb_for_dma(ptr noundef %255, ptr noundef nonnull %19) #11
  %256 = load ptr, ptr %102, align 4
  %257 = icmp eq ptr %256, null
  br i1 %257, label %258, label %272

258:                                              ; preds = %250
  %259 = tail call zeroext i1 @sg_miter_next(ptr noundef %103) #11
  br i1 %259, label %262, label %260

260:                                              ; preds = %258
  %261 = load ptr, ptr %104, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %261, ptr noundef nonnull @.str.17) #12
  tail call void @sg_miter_stop(ptr noundef %103) #11
  br label %106

262:                                              ; preds = %258
  %263 = zext i16 %254 to i32
  %264 = tail call i32 @llvm.umin.i32(i32 %253, i32 %263)
  %265 = getelementptr inbounds %struct.musb_qh, ptr %9, i32 0, i32 19, i32 2
  %266 = load i32, ptr %265, align 4
  %267 = tail call i32 @llvm.umin.i32(i32 %264, i32 %266)
  %268 = trunc i32 %267 to i16
  %269 = getelementptr inbounds %struct.musb_qh, ptr %9, i32 0, i32 19, i32 1
  %270 = load ptr, ptr %269, align 4
  tail call void @musb_write_fifo(ptr noundef %5, i16 noundef zeroext %268, ptr noundef %270) #11
  %271 = getelementptr inbounds %struct.musb_qh, ptr %9, i32 0, i32 19, i32 3
  store i32 %267, ptr %271, align 4
  tail call void @sg_miter_stop(ptr noundef %103) #11
  br label %277

272:                                              ; preds = %250
  %273 = zext i16 %254 to i32
  %274 = tail call i32 @llvm.umin.i32(i32 %253, i32 %273)
  %275 = trunc i32 %274 to i16
  %276 = getelementptr i8, ptr %256, i32 %252
  tail call void @musb_write_fifo(ptr noundef %5, i16 noundef zeroext %275, ptr noundef %276) #11
  br label %277

277:                                              ; preds = %272, %262
  %278 = phi i32 [ %274, %272 ], [ %267, %262 ]
  store i32 %278, ptr %91, align 4
  %279 = load ptr, ptr %22, align 4
  tail call void %279(ptr noundef %21, i8 noundef zeroext %1) #11
  %280 = load ptr, ptr @musb_writew, align 4
  tail call void %280(ptr noundef %7, i32 noundef 2, i16 noundef zeroext 167) #11
  br label %281

281:                                              ; preds = %277, %249, %242, %236, %215, %162, %130, %78, %77, %27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @musb_bulk_nak_timeout(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.musb_hw_ep, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.musb_hw_ep, ptr %1, i32 0, i32 3
  %11 = load i8, ptr %10, align 4
  tail call void %9(ptr noundef %5, i8 noundef zeroext %11) #11
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.musb_hw_ep, ptr %1, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr @musb_readw, align 4
  %17 = tail call zeroext i16 %16(ptr noundef %7, i32 noundef 6) #11
  %18 = and i16 %17, -110
  %19 = or i16 %18, 77
  %20 = load ptr, ptr @musb_writew, align 4
  tail call void %20(ptr noundef %7, i32 noundef 6, i16 noundef zeroext %19) #11
  %21 = or i16 %18, 69
  %22 = load ptr, ptr @musb_writew, align 4
  tail call void %22(ptr noundef %7, i32 noundef 6, i16 noundef zeroext %21) #11
  %23 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 18
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %23
  br i1 %25, label %111, label %37

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.musb_hw_ep, ptr %1, i32 0, i32 9
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr @musb_readw, align 4
  %30 = tail call zeroext i16 %29(ptr noundef %7, i32 noundef 2) #11
  %31 = and i16 %30, -167
  %32 = or i16 %31, 38
  %33 = load ptr, ptr @musb_writew, align 4
  tail call void %33(ptr noundef %7, i32 noundef 2, i16 noundef zeroext %32) #11
  %34 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 19
  %35 = load volatile ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %34
  br i1 %36, label %111, label %37

37:                                               ; preds = %26, %13
  %38 = phi ptr [ %15, %13 ], [ %28, %26 ]
  %39 = phi ptr [ %24, %13 ], [ %35, %26 ]
  %40 = getelementptr i8, ptr %39, i32 -12
  %41 = icmp eq ptr %40, null
  br i1 %41, label %111, label %42

42:                                               ; preds = %37
  %43 = load ptr, ptr %40, align 4
  %44 = getelementptr inbounds %struct.usb_host_endpoint, ptr %43, i32 0, i32 4
  %45 = load volatile ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %44
  %47 = getelementptr i8, ptr %45, i32 -20
  %48 = select i1 %46, ptr null, ptr %47
  %49 = icmp eq ptr %38, null
  br i1 %49, label %65, label %50

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.dma_channel, ptr %38, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  store i32 4, ptr %51, align 4
  %55 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 24
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.dma_controller, ptr %56, i32 0, i32 4
  %58 = load ptr, ptr %57, align 4
  %59 = tail call i32 %58(ptr noundef nonnull %38) #11
  %60 = getelementptr inbounds %struct.dma_channel, ptr %38, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 20
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, %61
  store i32 %64, ptr %62, align 4
  store i32 0, ptr %60, align 4
  br label %65

65:                                               ; preds = %54, %50, %42
  %66 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 2, i32 6
  %67 = load ptr, ptr %66, align 8
  %68 = zext i1 %12 to i32
  %69 = tail call zeroext i16 %67(ptr noundef nonnull %40, i32 noundef %68) #11
  %70 = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 8
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr %struct.usb_device, ptr %71, i32 0, i32 10, i32 %68
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr i8, ptr %39, i32 27
  %75 = load i8, ptr %74, align 1
  %76 = zext i8 %75 to i32
  %77 = shl nuw i32 1, %76
  %78 = xor i32 %77, -1
  %79 = and i32 %73, %78
  %80 = icmp ne i16 %69, 0
  %81 = zext i1 %80 to i32
  %82 = shl nuw i32 %81, %76
  %83 = or i32 %79, %82
  store i32 %83, ptr %72, align 4
  br i1 %12, label %95, label %84

84:                                               ; preds = %65
  %85 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 18
  %86 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = load ptr, ptr %39, align 4
  %89 = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  store ptr %87, ptr %89, align 4
  store volatile ptr %88, ptr %87, align 4
  %90 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 18, i32 1
  %91 = load ptr, ptr %90, align 4
  store ptr %39, ptr %90, align 4
  store ptr %85, ptr %39, align 4
  store ptr %91, ptr %86, align 4
  store volatile ptr %39, ptr %91, align 4
  %92 = load volatile ptr, ptr %85, align 4
  %93 = icmp eq ptr %92, %85
  %94 = getelementptr inbounds %struct.musb_hw_ep, ptr %1, i32 0, i32 13
  store i8 1, ptr %94, align 4
  br i1 %93, label %111, label %106

95:                                               ; preds = %65
  %96 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 19
  %97 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = load ptr, ptr %39, align 4
  %100 = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  store ptr %98, ptr %100, align 4
  store volatile ptr %99, ptr %98, align 4
  %101 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 19, i32 1
  %102 = load ptr, ptr %101, align 4
  store ptr %39, ptr %101, align 4
  store ptr %96, ptr %39, align 4
  store ptr %102, ptr %97, align 4
  store volatile ptr %39, ptr %102, align 4
  %103 = load volatile ptr, ptr %96, align 4
  %104 = icmp eq ptr %103, %96
  %105 = getelementptr inbounds %struct.musb_hw_ep, ptr %1, i32 0, i32 14
  store i8 1, ptr %105, align 1
  br i1 %104, label %111, label %106

106:                                              ; preds = %95, %84
  %107 = phi ptr [ %92, %84 ], [ %103, %95 ]
  %108 = getelementptr i8, ptr %107, i32 -12
  %109 = icmp eq ptr %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  tail call fastcc void @musb_start_urb(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %108)
  br label %111

111:                                              ; preds = %110, %106, %95, %84, %37, %26, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @musb_h_tx_flush_fifo(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.musb_hw_ep, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr @musb_readw, align 4
  %6 = tail call zeroext i16 %5(ptr noundef %4, i32 noundef 2) #11
  %7 = and i16 %6, 2
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %43, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.musb, ptr %2, i32 0, i32 25
  %11 = getelementptr inbounds %struct.musb_hw_ep, ptr %0, i32 0, i32 3
  br label %12

12:                                               ; preds = %39, %9
  %13 = phi i32 [ 1000, %9 ], [ %19, %39 ]
  %14 = phi i16 [ %6, %9 ], [ %18, %39 ]
  %15 = or i16 %14, 9
  %16 = load ptr, ptr @musb_writew, align 4
  tail call void %16(ptr noundef %4, i32 noundef 2, i16 noundef zeroext %15) #11
  %17 = load ptr, ptr @musb_readw, align 4
  %18 = tail call zeroext i16 %17(ptr noundef %4, i32 noundef 2) #11
  %19 = add nsw i32 %13, -1
  %20 = icmp eq i32 %13, 0
  %21 = load i1, ptr @musb_h_tx_flush_fifo.__already_done, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %38, !prof !8

24:                                               ; preds = %12
  store i1 true, ptr @musb_h_tx_flush_fifo.__already_done, align 1
  %25 = load ptr, ptr %10, align 8
  %26 = tail call ptr @dev_driver_string(ptr noundef %25) #11
  %27 = load ptr, ptr %10, align 8
  %28 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load ptr, ptr %27, align 4
  br label %33

33:                                               ; preds = %31, %24
  %34 = phi ptr [ %32, %31 ], [ %29, %24 ]
  %35 = load i8, ptr %11, align 4
  %36 = zext i8 %35 to i32
  %37 = zext i16 %18 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 115, i32 noundef 9, ptr noundef nonnull @.str.57, ptr noundef %26, ptr noundef %34, i32 noundef %36, i32 noundef %37) #11
  br label %38

38:                                               ; preds = %33, %12
  br i1 %20, label %43, label %39

39:                                               ; preds = %38
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #11
  %41 = and i16 %18, 2
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %43, label %12

43:                                               ; preds = %39, %38, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @musb_tx_dma_program(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 {
  %7 = getelementptr inbounds %struct.musb_hw_ep, ptr %1, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.musb_qh, ptr %2, i32 0, i32 16
  %10 = load i16, ptr %9, align 2
  %11 = load ptr, ptr %1, align 4
  %12 = getelementptr inbounds %struct.musb, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 68
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %52, label %17

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.musb_hw_ep, ptr %1, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dma_channel, ptr %8, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 %5)
  %23 = load ptr, ptr @musb_readw, align 4
  %24 = tail call zeroext i16 %23(ptr noundef %19, i32 noundef 2) #11
  %25 = zext i16 %10 to i32
  %26 = icmp ugt i32 %22, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %17
  %28 = or i16 %24, 5120
  %29 = getelementptr inbounds %struct.musb_qh, ptr %2, i32 0, i32 15
  %30 = load i8, ptr %29, align 4
  switch i8 %30, label %31 [
    i8 1, label %41
    i8 0, label %46
  ]

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.musb_qh, ptr %2, i32 0, i32 13
  %33 = load i8, ptr %32, align 2
  %34 = icmp eq i8 %33, 2
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load ptr, ptr %1, align 4
  %37 = getelementptr inbounds %struct.musb, ptr %36, i32 0, i32 47
  %38 = load i24, ptr %37, align 4
  %39 = and i24 %38, 128
  %40 = icmp eq i24 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %35, %27
  %42 = or i16 %24, -27648
  br label %46

43:                                               ; preds = %17
  %44 = and i16 %24, 27647
  %45 = or i16 %44, 4096
  br label %46

46:                                               ; preds = %43, %41, %35, %31, %27
  %47 = phi i8 [ 1, %35 ], [ 1, %41 ], [ 1, %31 ], [ 1, %27 ], [ 0, %43 ]
  %48 = phi i16 [ %28, %35 ], [ %42, %41 ], [ %28, %31 ], [ %28, %27 ], [ %45, %43 ]
  %49 = getelementptr inbounds %struct.dma_channel, ptr %8, i32 0, i32 4
  %50 = zext i1 %26 to i8
  store i8 %50, ptr %49, align 4
  %51 = load ptr, ptr @musb_writew, align 4
  tail call void %51(ptr noundef %19, i32 noundef 2, i16 noundef zeroext %48) #11
  br label %62

52:                                               ; preds = %6
  %53 = and i32 %14, 32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %83, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.dma_channel, ptr %8, i32 0, i32 2
  store i32 0, ptr %56, align 4
  %57 = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 13
  %58 = load i32, ptr %57, align 4
  %59 = trunc i32 %58 to i8
  %60 = lshr i8 %59, 6
  %61 = and i8 %60, 1
  br label %62

62:                                               ; preds = %55, %46
  %63 = phi i32 [ %5, %55 ], [ %22, %46 ]
  %64 = phi i8 [ %61, %55 ], [ %47, %46 ]
  %65 = getelementptr inbounds %struct.musb_qh, ptr %2, i32 0, i32 6
  store i32 %63, ptr %65, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  %66 = getelementptr inbounds %struct.dma_controller, ptr %0, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 15
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %69, %4
  %71 = tail call i32 %67(ptr noundef %8, i16 noundef zeroext %10, i8 noundef zeroext %64, i32 noundef %70, i32 noundef %63) #11
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %62
  %74 = getelementptr inbounds %struct.musb_hw_ep, ptr %1, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.dma_controller, ptr %0, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  tail call void %77(ptr noundef %8) #11
  store ptr null, ptr %7, align 4
  %78 = load ptr, ptr @musb_readw, align 4
  %79 = tail call zeroext i16 %78(ptr noundef %75, i32 noundef 2) #11
  %80 = and i16 %79, 28505
  %81 = load ptr, ptr @musb_writew, align 4
  %82 = or i16 %80, 166
  tail call void %81(ptr noundef %75, i32 noundef 2, i16 noundef zeroext %82) #11
  br label %83

83:                                               ; preds = %73, %62, %52
  %84 = phi i1 [ false, %73 ], [ false, %52 ], [ true, %62 ]
  ret i1 %84
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @musb_h_tx_dma_start(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load ptr, ptr @musb_readw, align 4
  %3 = getelementptr inbounds %struct.musb_hw_ep, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call zeroext i16 %2(ptr noundef %4, i32 noundef 2) #11
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.musb, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 32
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i16 4262, i16 5286
  %13 = or i16 %12, %5
  %14 = load ptr, ptr @musb_writew, align 4
  %15 = load ptr, ptr %3, align 4
  tail call void %14(ptr noundef %15, i32 noundef 2, i16 noundef zeroext %13) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_unmap_urb_for_dma(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_write_fifo(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @musb_host_rx(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 35
  %4 = zext i8 %1 to i32
  %5 = getelementptr %struct.musb_hw_ep, ptr %3, i32 %4
  %6 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 24
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.musb_hw_ep, ptr %3, i32 %4, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.musb_hw_ep, ptr %3, i32 %4, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 2, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef %13, i8 noundef zeroext %1) #11
  %16 = icmp eq ptr %11, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr inbounds %struct.usb_host_endpoint, ptr %18, i32 0, i32 4
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  %22 = getelementptr i8, ptr %20, i32 -20
  %23 = select i1 %21, ptr null, ptr %22
  br label %24

24:                                               ; preds = %17, %2
  %25 = phi ptr [ null, %2 ], [ %23, %17 ]
  %26 = getelementptr %struct.musb_hw_ep, ptr %3, i32 %4, i32 10
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr @musb_readw, align 4
  %29 = tail call zeroext i16 %28(ptr noundef %9, i32 noundef 6) #11
  %30 = icmp eq ptr %25, null
  br i1 %30, label %31, label %36, !prof !8

31:                                               ; preds = %24
  %32 = zext i16 %29 to i32
  %33 = load ptr, ptr @musb_readw, align 4
  %34 = tail call zeroext i16 %33(ptr noundef %9, i32 noundef 8) #11
  %35 = zext i16 %34 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %4, i32 noundef %32, i32 noundef %35) #11
  tail call fastcc void @musb_h_flush_rxfifo(ptr noundef %5, i16 noundef zeroext 128)
  br label %467

36:                                               ; preds = %24
  %37 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_urb_rx, i32 0, i32 1), align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = tail call ptr @llvm.thread.pointer() #11
  %41 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %42 = load i32, ptr %41, align 8
  %43 = lshr i32 %42, 5
  %44 = getelementptr i32, ptr @__cpu_online_mask, i32 %43
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %42, 31
  %47 = shl nuw i32 1, %46
  %48 = and i32 %47, %45
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %39
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  %51 = tail call i32 @__traceiter_musb_urb_rx(ptr noundef null, ptr noundef %0, ptr noundef nonnull %25) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  br label %52

52:                                               ; preds = %50, %39, %36
  %53 = zext i16 %29 to i32
  %54 = and i32 %53, 64
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %4) #11
  br label %100

57:                                               ; preds = %52
  %58 = and i32 %53, 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %62 = load ptr, ptr %61, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.20, i32 noundef %4) #12
  %63 = load ptr, ptr @musb_writeb, align 4
  tail call void %63(ptr noundef %9, i32 noundef 13, i8 noundef zeroext 0) #11
  %64 = and i16 %29, -5
  %65 = load ptr, ptr @musb_writew, align 4
  tail call void %65(ptr noundef %9, i32 noundef 6, i16 noundef zeroext %64) #11
  br label %100

66:                                               ; preds = %57
  %67 = and i32 %53, 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %96, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.musb_qh, ptr %11, i32 0, i32 13
  %71 = load i8, ptr %70, align 2
  %72 = icmp eq i8 %71, 1
  br i1 %72, label %95, label %73

73:                                               ; preds = %69
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %4) #11
  %74 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 10
  %75 = load i32, ptr %74, align 4
  %76 = icmp ugt i32 %75, -1073741825
  br i1 %76, label %77, label %90

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.musb_qh, ptr %11, i32 0, i32 4
  %79 = load i8, ptr %78, align 4
  %80 = icmp eq i8 %79, 1
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 18
  %83 = load volatile ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, %82
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 18, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %83, %87
  br i1 %88, label %90, label %89

89:                                               ; preds = %85, %81
  tail call fastcc void @musb_bulk_nak_timeout(ptr noundef %0, ptr noundef %5, i32 noundef 1)
  br label %467

90:                                               ; preds = %85, %77, %73
  %91 = load ptr, ptr %14, align 4
  tail call void %91(ptr noundef %13, i8 noundef zeroext %1) #11
  %92 = and i16 %29, -78
  %93 = or i16 %92, 69
  %94 = load ptr, ptr @musb_writew, align 4
  tail call void %94(ptr noundef %9, i32 noundef 6, i16 noundef zeroext %93) #11
  br label %467

95:                                               ; preds = %69
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %4) #11
  br label %124

96:                                               ; preds = %66
  %97 = and i32 %53, 256
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %124, label %99

99:                                               ; preds = %96
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %4) #11
  br label %100

100:                                              ; preds = %99, %60, %56
  %101 = phi i32 [ -71, %99 ], [ -108, %60 ], [ -32, %56 ]
  %102 = icmp eq ptr %27, null
  br i1 %102, label %114, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.dma_channel, ptr %27, i32 0, i32 3
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, 2
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  store i32 4, ptr %104, align 4
  %108 = load ptr, ptr %6, align 4
  %109 = getelementptr inbounds %struct.dma_controller, ptr %108, i32 0, i32 4
  %110 = load ptr, ptr %109, align 4
  %111 = tail call i32 %110(ptr noundef nonnull %27) #11
  %112 = getelementptr inbounds %struct.dma_channel, ptr %27, i32 0, i32 2
  %113 = load i32, ptr %112, align 4
  br label %114

114:                                              ; preds = %107, %103, %100
  %115 = phi i32 [ %113, %107 ], [ 0, %103 ], [ 0, %100 ]
  %116 = load ptr, ptr @musb_writew, align 4
  %117 = load ptr, ptr %8, align 4
  tail call void %116(ptr noundef %117, i32 noundef 6, i16 noundef zeroext 145) #11
  %118 = load ptr, ptr @musb_writew, align 4
  %119 = load ptr, ptr %8, align 4
  tail call void %118(ptr noundef %119, i32 noundef 6, i16 noundef zeroext 145) #11
  %120 = load ptr, ptr @musb_readw, align 4
  %121 = load ptr, ptr %8, align 4
  %122 = tail call zeroext i16 %120(ptr noundef %121, i32 noundef 6) #11
  %123 = load ptr, ptr @musb_writeb, align 4
  tail call void %123(ptr noundef %9, i32 noundef 13, i8 noundef zeroext 0) #11
  br label %438

124:                                              ; preds = %96, %95
  %125 = xor i1 %68, true
  %126 = icmp eq ptr %27, null
  br i1 %126, label %133, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.dma_channel, ptr %27, i32 0, i32 3
  %129 = load i32, ptr %128, align 4
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %131, label %133, !prof !8

131:                                              ; preds = %127
  %132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.musb_host_rx, i32 noundef 1837, i32 noundef %4, i32 noundef %53) #12
  br label %467

133:                                              ; preds = %127, %124
  %134 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 3
  %135 = load ptr, ptr %134, align 8
  %136 = load i32, ptr %135, align 4
  %137 = and i32 %136, 68
  %138 = icmp ne i32 %137, 0
  %139 = and i32 %53, 32
  %140 = icmp eq i32 %139, 0
  %141 = select i1 %138, i1 true, i1 %140
  br i1 %141, label %162, label %142

142:                                              ; preds = %133
  br i1 %126, label %154, label %143

143:                                              ; preds = %142
  %144 = getelementptr inbounds %struct.dma_channel, ptr %27, i32 0, i32 3
  %145 = load i32, ptr %144, align 4
  %146 = icmp eq i32 %145, 2
  br i1 %146, label %147, label %154

147:                                              ; preds = %143
  store i32 4, ptr %144, align 4
  %148 = load ptr, ptr %6, align 4
  %149 = getelementptr inbounds %struct.dma_controller, ptr %148, i32 0, i32 4
  %150 = load ptr, ptr %149, align 4
  %151 = tail call i32 %150(ptr noundef nonnull %27) #11
  %152 = getelementptr inbounds %struct.dma_channel, ptr %27, i32 0, i32 2
  %153 = load i32, ptr %152, align 4
  br label %154

154:                                              ; preds = %147, %143, %142
  %155 = phi ptr [ @.str.10, %142 ], [ @.str.9, %147 ], [ @.str.9, %143 ]
  %156 = phi i1 [ false, %142 ], [ true, %147 ], [ false, %143 ]
  %157 = phi i32 [ 0, %142 ], [ %153, %147 ], [ 0, %143 ]
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.25, i32 noundef %4, i32 noundef %53, i32 noundef %157, ptr noundef nonnull %155) #11
  %158 = and i16 %29, -33
  %159 = load ptr, ptr %14, align 4
  tail call void %159(ptr noundef %13, i8 noundef zeroext %1) #11
  %160 = load ptr, ptr @musb_writew, align 4
  %161 = or i16 %158, 77
  tail call void %160(ptr noundef %9, i32 noundef 6, i16 noundef zeroext %161) #11
  br label %162

162:                                              ; preds = %154, %133
  %163 = phi i32 [ 0, %133 ], [ %157, %154 ]
  %164 = phi i16 [ %29, %133 ], [ %158, %154 ]
  %165 = phi i1 [ false, %133 ], [ %156, %154 ]
  %166 = icmp ne ptr %27, null
  %167 = xor i1 %166, true
  %168 = and i16 %164, 8192
  %169 = icmp eq i16 %168, 0
  %170 = select i1 %167, i1 true, i1 %169
  br i1 %170, label %269, label %171

171:                                              ; preds = %162
  %172 = getelementptr inbounds %struct.dma_channel, ptr %27, i32 0, i32 2
  %173 = load i32, ptr %172, align 4
  %174 = and i16 %29, 8190
  %175 = load ptr, ptr @musb_writew, align 4
  %176 = load ptr, ptr %8, align 4
  tail call void %175(ptr noundef %176, i32 noundef 6, i16 noundef zeroext %174) #11
  %177 = load ptr, ptr %134, align 8
  %178 = load i32, ptr %177, align 4
  %179 = and i32 %178, 100
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %438, label %181

181:                                              ; preds = %171
  %182 = load ptr, ptr %26, align 4
  %183 = load ptr, ptr %8, align 4
  %184 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 10
  %185 = load i32, ptr %184, align 4
  %186 = icmp ult i32 %185, 1073741824
  br i1 %186, label %187, label %230

187:                                              ; preds = %181
  %188 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 29
  %189 = getelementptr inbounds %struct.musb_qh, ptr %11, i32 0, i32 18
  %190 = load i32, ptr %189, align 4
  %191 = getelementptr %struct.usb_iso_packet_descriptor, ptr %188, i32 %190, i32 2
  store i32 %173, ptr %191, align 4
  %192 = getelementptr %struct.usb_iso_packet_descriptor, ptr %188, i32 %190, i32 3
  %193 = load i32, ptr %192, align 4
  switch i32 %193, label %194 [
    i32 -84, label %195
    i32 -75, label %195
  ]

194:                                              ; preds = %187
  store i32 0, ptr %192, align 4
  br label %195

195:                                              ; preds = %194, %187, %187
  %196 = load i32, ptr %189, align 4
  %197 = add i32 %196, 1
  store i32 %197, ptr %189, align 4
  %198 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 24
  %199 = load i32, ptr %198, align 4
  %200 = icmp ult i32 %197, %199
  br i1 %200, label %201, label %253

201:                                              ; preds = %195
  %202 = load ptr, ptr %5, align 4
  %203 = getelementptr inbounds %struct.musb, ptr %202, i32 0, i32 3
  %204 = load ptr, ptr %203, align 8
  %205 = load i32, ptr %204, align 4
  %206 = and i32 %205, 32
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %248, label %208

208:                                              ; preds = %201
  %209 = load ptr, ptr %26, align 4
  %210 = load ptr, ptr %8, align 4
  %211 = getelementptr %struct.urb, ptr %25, i32 0, i32 29, i32 %197
  %212 = load i32, ptr %211, align 4
  %213 = inttoptr i32 %212 to ptr
  %214 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 15
  %215 = load i32, ptr %214, align 4
  %216 = getelementptr i8, ptr %213, i32 %215
  %217 = getelementptr %struct.urb, ptr %25, i32 0, i32 29, i32 %197, i32 1
  %218 = load i32, ptr %217, align 4
  %219 = load ptr, ptr @musb_readw, align 4
  %220 = tail call zeroext i16 %219(ptr noundef %210, i32 noundef 6) #11
  %221 = or i16 %220, 8192
  %222 = load ptr, ptr @musb_writew, align 4
  %223 = load ptr, ptr %8, align 4
  tail call void %222(ptr noundef %223, i32 noundef 6, i16 noundef zeroext %221) #11
  %224 = getelementptr inbounds %struct.dma_controller, ptr %7, i32 0, i32 3
  %225 = load ptr, ptr %224, align 4
  %226 = getelementptr inbounds %struct.musb_qh, ptr %11, i32 0, i32 16
  %227 = load i16, ptr %226, align 2
  %228 = ptrtoint ptr %216 to i32
  %229 = tail call i32 %225(ptr noundef %209, i16 noundef zeroext %227, i8 noundef zeroext 0, i32 noundef %228, i32 noundef %218) #11
  br label %248

230:                                              ; preds = %181
  %231 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 20
  %232 = load i32, ptr %231, align 4
  %233 = add i32 %232, %173
  %234 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 19
  %235 = load i32, ptr %234, align 4
  %236 = icmp ult i32 %233, %235
  br i1 %236, label %237, label %253

237:                                              ; preds = %230
  %238 = getelementptr inbounds %struct.dma_channel, ptr %182, i32 0, i32 2
  %239 = load i32, ptr %238, align 4
  %240 = getelementptr inbounds %struct.musb_qh, ptr %11, i32 0, i32 16
  %241 = load i16, ptr %240, align 2
  %242 = zext i16 %241 to i32
  %243 = icmp ult i32 %239, %242
  br i1 %243, label %253, label %244

244:                                              ; preds = %237
  %245 = getelementptr inbounds %struct.dma_channel, ptr %182, i32 0, i32 5
  %246 = load i8, ptr %245, align 1, !range !9
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %244, %208, %201
  %249 = load ptr, ptr @musb_readw, align 4
  %250 = tail call zeroext i16 %249(ptr noundef %183, i32 noundef 6) #11
  %251 = load ptr, ptr @musb_writew, align 4
  %252 = or i16 %250, 109
  tail call void %251(ptr noundef %183, i32 noundef 6, i16 noundef zeroext %252) #11
  br label %253

253:                                              ; preds = %248, %244, %237, %230, %195
  %254 = phi i1 [ true, %248 ], [ false, %195 ], [ false, %230 ], [ false, %237 ], [ false, %244 ]
  %255 = phi ptr [ @.str.28, %248 ], [ @.str.27, %195 ], [ @.str.27, %230 ], [ @.str.27, %237 ], [ @.str.27, %244 ]
  %256 = load ptr, ptr %5, align 4
  %257 = load ptr, ptr @musb_readw, align 4
  %258 = tail call zeroext i16 %257(ptr noundef %9, i32 noundef 6) #11
  %259 = zext i16 %258 to i32
  %260 = load ptr, ptr @musb_readw, align 4
  %261 = tail call zeroext i16 %260(ptr noundef %9, i32 noundef 8) #11
  %262 = zext i16 %261 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %256, ptr noundef nonnull @.str.26, i32 noundef %4, ptr noundef nonnull %255, i32 noundef %259, i32 noundef %262) #11
  %263 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 20
  %264 = load i32, ptr %263, align 4
  %265 = add i32 %264, %173
  store i32 %265, ptr %263, align 4
  %266 = getelementptr inbounds %struct.musb_qh, ptr %11, i32 0, i32 5
  %267 = load i32, ptr %266, align 4
  %268 = add i32 %267, %173
  store i32 %268, ptr %266, align 4
  br i1 %254, label %467, label %454

269:                                              ; preds = %162
  %270 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 12
  %271 = load i32, ptr %270, align 4
  %272 = icmp eq i32 %271, -115
  br i1 %272, label %273, label %447

273:                                              ; preds = %269
  %274 = and i16 %164, 1
  %275 = icmp eq i16 %274, 0
  br i1 %275, label %276, label %287, !prof !8

276:                                              ; preds = %273
  %277 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.musb_host_rx, i32 noundef 1895) #12
  %278 = load ptr, ptr %14, align 4
  tail call void %278(ptr noundef %13, i8 noundef zeroext %1) #11
  %279 = and i16 %29, -33
  %280 = load ptr, ptr @musb_writew, align 4
  tail call void %280(ptr noundef %9, i32 noundef 6, i16 noundef zeroext %279) #11
  %281 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 20
  %282 = load i32, ptr %281, align 4
  %283 = add i32 %282, %163
  store i32 %283, ptr %281, align 4
  %284 = getelementptr inbounds %struct.musb_qh, ptr %11, i32 0, i32 5
  %285 = load i32, ptr %284, align 4
  %286 = add i32 %285, %163
  store i32 %286, ptr %284, align 4
  br i1 %165, label %454, label %467

287:                                              ; preds = %273
  %288 = load ptr, ptr %134, align 8
  %289 = load i32, ptr %288, align 4
  %290 = and i32 %289, 68
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %296

292:                                              ; preds = %287
  %293 = and i32 %289, 32
  %294 = icmp ne i32 %293, 0
  %295 = select i1 %294, i1 %166, i1 false
  br i1 %295, label %297, label %393

296:                                              ; preds = %287
  br i1 %166, label %297, label %394

297:                                              ; preds = %296, %292
  %298 = load ptr, ptr %5, align 4
  %299 = load ptr, ptr @musb_readw, align 4
  %300 = tail call zeroext i16 %299(ptr noundef %9, i32 noundef 8) #11
  %301 = zext i16 %300 to i32
  %302 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 15
  %303 = load i32, ptr %302, align 4
  %304 = zext i32 %303 to i64
  %305 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 20
  %306 = load i32, ptr %305, align 4
  %307 = zext i32 %306 to i64
  %308 = add nuw nsw i64 %307, %304
  %309 = getelementptr inbounds %struct.musb_qh, ptr %11, i32 0, i32 5
  %310 = load i32, ptr %309, align 4
  %311 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 19
  %312 = load i32, ptr %311, align 4
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %298, ptr noundef nonnull @.str.30, i32 noundef %4, i32 noundef %301, i64 noundef %308, i32 noundef %310, i32 noundef %312) #11
  %313 = load ptr, ptr %5, align 4
  %314 = load ptr, ptr %8, align 4
  %315 = load ptr, ptr %26, align 4
  %316 = load ptr, ptr @musb_readw, align 4
  %317 = tail call zeroext i16 %316(ptr noundef %314, i32 noundef 8) #11
  %318 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 10
  %319 = load i32, ptr %318, align 4
  %320 = icmp ult i32 %319, 1073741824
  br i1 %320, label %321, label %354

321:                                              ; preds = %297
  %322 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 29
  %323 = getelementptr inbounds %struct.musb_qh, ptr %11, i32 0, i32 18
  %324 = load i32, ptr %323, align 4
  %325 = getelementptr %struct.usb_iso_packet_descriptor, ptr %322, i32 %324
  br i1 %68, label %326, label %331

326:                                              ; preds = %321
  %327 = zext i16 %317 to i32
  %328 = getelementptr %struct.usb_iso_packet_descriptor, ptr %322, i32 %324, i32 1
  %329 = load i32, ptr %328, align 4
  %330 = icmp ult i32 %329, %327
  br i1 %330, label %339, label %350

331:                                              ; preds = %321
  %332 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 26
  %333 = load i32, ptr %332, align 4
  %334 = add i32 %333, 1
  store i32 %334, ptr %332, align 4
  %335 = zext i16 %317 to i32
  %336 = getelementptr %struct.usb_iso_packet_descriptor, ptr %322, i32 %324, i32 1
  %337 = load i32, ptr %336, align 4
  %338 = icmp ult i32 %337, %335
  br i1 %338, label %344, label %350

339:                                              ; preds = %326
  %340 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 26
  %341 = load i32, ptr %340, align 4
  %342 = add i32 %341, 1
  store i32 %342, ptr %340, align 4
  %343 = load i32, ptr %328, align 4
  br label %344

344:                                              ; preds = %339, %331
  %345 = phi i32 [ %343, %339 ], [ %337, %331 ]
  %346 = phi i32 [ %327, %339 ], [ %335, %331 ]
  %347 = phi ptr [ %328, %339 ], [ %336, %331 ]
  %348 = phi i32 [ -75, %339 ], [ -84, %331 ]
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %313, ptr noundef nonnull @.str.58, i32 noundef %346, i32 noundef %345) #11
  %349 = load i32, ptr %347, align 4
  br label %350

350:                                              ; preds = %344, %331, %326
  %351 = phi i32 [ %349, %344 ], [ %327, %326 ], [ %335, %331 ]
  %352 = phi i32 [ %348, %344 ], [ 0, %326 ], [ -84, %331 ]
  %353 = getelementptr %struct.usb_iso_packet_descriptor, ptr %322, i32 %324, i32 3
  store i32 %352, ptr %353, align 4
  br label %356

354:                                              ; preds = %297
  %355 = zext i16 %317 to i32
  br label %356

356:                                              ; preds = %354, %350
  %357 = phi ptr [ %305, %354 ], [ %325, %350 ]
  %358 = phi i32 [ %355, %354 ], [ %351, %350 ]
  %359 = load i32, ptr %302, align 4
  %360 = load i32, ptr %357, align 4
  %361 = add i32 %360, %359
  %362 = getelementptr inbounds %struct.dma_channel, ptr %315, i32 0, i32 4
  store i8 0, ptr %362, align 4
  %363 = load ptr, ptr @musb_readw, align 4
  %364 = tail call zeroext i16 %363(ptr noundef %314, i32 noundef 6) #11
  %365 = load i8, ptr %362, align 4, !range !9
  %366 = icmp eq i8 %365, 0
  %367 = and i16 %364, -16417
  %368 = or i16 %367, 16384
  %369 = select i1 %366, i16 %367, i16 %368
  %370 = getelementptr inbounds %struct.musb_qh, ptr %11, i32 0, i32 15
  %371 = load i8, ptr %370, align 4
  %372 = icmp eq i8 %371, 1
  %373 = select i1 %372, i16 -24576, i16 8192
  %374 = load ptr, ptr @musb_writew, align 4
  %375 = or i16 %369, %373
  %376 = or i16 %375, 77
  tail call void %374(ptr noundef %314, i32 noundef 6, i16 noundef zeroext %376) #11
  %377 = getelementptr inbounds %struct.dma_controller, ptr %7, i32 0, i32 3
  %378 = load ptr, ptr %377, align 4
  %379 = getelementptr inbounds %struct.musb_qh, ptr %11, i32 0, i32 16
  %380 = load i16, ptr %379, align 2
  %381 = load i8, ptr %362, align 4, !range !9
  %382 = tail call i32 %378(ptr noundef %315, i16 noundef zeroext %380, i8 noundef zeroext %381, i32 noundef %361, i32 noundef %358) #11
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %447

384:                                              ; preds = %356
  %385 = getelementptr inbounds %struct.dma_controller, ptr %7, i32 0, i32 2
  %386 = load ptr, ptr %385, align 4
  tail call void %386(ptr noundef %315) #11
  store ptr null, ptr %26, align 4
  %387 = load ptr, ptr @musb_readw, align 4
  %388 = tail call zeroext i16 %387(ptr noundef %314, i32 noundef 6) #11
  %389 = and i16 %388, 8191
  %390 = load ptr, ptr @musb_writew, align 4
  tail call void %390(ptr noundef %314, i32 noundef 6, i16 noundef zeroext %389) #11
  %391 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %392 = load ptr, ptr %391, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %392, ptr noundef nonnull @.str.31) #12
  br label %393

393:                                              ; preds = %384, %292
  br i1 %166, label %447, label %394

394:                                              ; preds = %393, %296
  %395 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 54
  %396 = load ptr, ptr %395, align 4
  tail call void @usb_hcd_unmap_urb_for_dma(ptr noundef %396, ptr noundef nonnull %25) #11
  %397 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 14
  %398 = load ptr, ptr %397, align 4
  %399 = icmp eq ptr %398, null
  br i1 %399, label %400, label %405

400:                                              ; preds = %394
  %401 = getelementptr inbounds %struct.musb_qh, ptr %11, i32 0, i32 20
  store i8 1, ptr %401, align 4
  %402 = getelementptr inbounds %struct.musb_qh, ptr %11, i32 0, i32 19
  %403 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 16
  %404 = load ptr, ptr %403, align 4
  tail call void @sg_miter_start(ptr noundef %402, ptr noundef %404, i32 noundef 1, i32 noundef 3) #11
  br label %405

405:                                              ; preds = %400, %394
  %406 = getelementptr inbounds %struct.musb_qh, ptr %11, i32 0, i32 20
  %407 = load i8, ptr %406, align 4, !range !9
  %408 = icmp eq i8 %407, 0
  br i1 %408, label %426, label %409

409:                                              ; preds = %405
  %410 = getelementptr inbounds %struct.musb_qh, ptr %11, i32 0, i32 19
  %411 = tail call zeroext i1 @sg_miter_next(ptr noundef %410) #11
  br i1 %411, label %415, label %412

412:                                              ; preds = %409
  %413 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %414 = load ptr, ptr %413, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %414, ptr noundef nonnull @.str.17) #12
  tail call void @sg_miter_stop(ptr noundef %410) #11
  br label %438

415:                                              ; preds = %409
  %416 = getelementptr inbounds %struct.musb_qh, ptr %11, i32 0, i32 19, i32 1
  %417 = load ptr, ptr %416, align 4
  store ptr %417, ptr %397, align 4
  %418 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 20
  %419 = load i32, ptr %418, align 4
  %420 = getelementptr inbounds %struct.musb_qh, ptr %11, i32 0, i32 5
  store i32 0, ptr %420, align 4
  %421 = zext i1 %125 to i8
  %422 = tail call fastcc zeroext i1 @musb_host_packet_rx(ptr noundef %0, ptr noundef nonnull %25, i8 noundef zeroext %1, i8 noundef zeroext %421)
  %423 = load i32, ptr %418, align 4
  %424 = sub i32 %423, %419
  %425 = getelementptr inbounds %struct.musb_qh, ptr %11, i32 0, i32 19, i32 3
  store i32 %424, ptr %425, align 4
  tail call void @sg_miter_stop(ptr noundef %410) #11
  br label %429

426:                                              ; preds = %405
  %427 = zext i1 %125 to i8
  %428 = tail call fastcc zeroext i1 @musb_host_packet_rx(ptr noundef %0, ptr noundef nonnull %25, i8 noundef zeroext %1, i8 noundef zeroext %427)
  br label %429

429:                                              ; preds = %426, %415
  %430 = phi i1 [ %422, %415 ], [ %428, %426 ]
  %431 = select i1 %430, ptr @.str.33, ptr @.str.10
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef nonnull %431) #11
  %432 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 20
  %433 = load i32, ptr %432, align 4
  %434 = add i32 %433, %163
  store i32 %434, ptr %432, align 4
  %435 = getelementptr inbounds %struct.musb_qh, ptr %11, i32 0, i32 5
  %436 = load i32, ptr %435, align 4
  %437 = add i32 %436, %163
  store i32 %437, ptr %435, align 4
  br i1 %430, label %454, label %467

438:                                              ; preds = %412, %171, %114
  %439 = phi i32 [ %163, %412 ], [ %173, %171 ], [ %115, %114 ]
  %440 = phi i32 [ -22, %412 ], [ 0, %171 ], [ %101, %114 ]
  %441 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 20
  %442 = load i32, ptr %441, align 4
  %443 = add i32 %442, %439
  store i32 %443, ptr %441, align 4
  %444 = getelementptr inbounds %struct.musb_qh, ptr %11, i32 0, i32 5
  %445 = load i32, ptr %444, align 4
  %446 = add i32 %445, %439
  store i32 %446, ptr %444, align 4
  br label %454

447:                                              ; preds = %393, %356, %269
  %448 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 20
  %449 = load i32, ptr %448, align 4
  %450 = add i32 %449, %163
  store i32 %450, ptr %448, align 4
  %451 = getelementptr inbounds %struct.musb_qh, ptr %11, i32 0, i32 5
  %452 = load i32, ptr %451, align 4
  %453 = add i32 %452, %163
  store i32 %453, ptr %451, align 4
  br i1 %165, label %454, label %467

454:                                              ; preds = %447, %438, %429, %276, %253
  %455 = phi i32 [ %440, %438 ], [ 0, %447 ], [ 0, %253 ], [ -71, %276 ], [ 0, %429 ]
  %456 = getelementptr inbounds %struct.musb_qh, ptr %11, i32 0, i32 20
  %457 = load i8, ptr %456, align 4, !range !9
  %458 = icmp eq i8 %457, 0
  br i1 %458, label %461, label %459

459:                                              ; preds = %454
  store i8 0, ptr %456, align 4
  %460 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 14
  store ptr null, ptr %460, align 4
  br label %461

461:                                              ; preds = %459, %454
  %462 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 12
  %463 = load i32, ptr %462, align 4
  %464 = icmp eq i32 %463, -115
  br i1 %464, label %465, label %466

465:                                              ; preds = %461
  store i32 %455, ptr %462, align 4
  br label %466

466:                                              ; preds = %465, %461
  tail call fastcc void @musb_advance_schedule(ptr noundef %0, ptr noundef nonnull %25, ptr noundef %5, i32 noundef 128)
  br label %467

467:                                              ; preds = %466, %447, %429, %276, %253, %131, %90, %89, %31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @musb_h_flush_rxfifo(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) unnamed_addr #1 {
  %3 = and i16 %1, 16334
  %4 = or i16 %3, 17
  %5 = load ptr, ptr @musb_writew, align 4
  %6 = getelementptr inbounds %struct.musb_hw_ep, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void %5(ptr noundef %7, i32 noundef 6, i16 noundef zeroext %4) #11
  %8 = load ptr, ptr @musb_writew, align 4
  %9 = load ptr, ptr %6, align 4
  tail call void %8(ptr noundef %9, i32 noundef 6, i16 noundef zeroext %4) #11
  %10 = load ptr, ptr @musb_readw, align 4
  %11 = load ptr, ptr %6, align 4
  %12 = tail call zeroext i16 %10(ptr noundef %11, i32 noundef 6) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @musb_host_packet_rx(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 35
  %6 = zext i8 %2 to i32
  %7 = getelementptr %struct.musb_hw_ep, ptr %5, i32 %6
  %8 = getelementptr %struct.musb_hw_ep, ptr %5, i32 %6, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.musb_hw_ep, ptr %5, i32 %6, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr @musb_readw, align 4
  %17 = tail call zeroext i16 %16(ptr noundef %9, i32 noundef 8) #11
  %18 = zext i16 %17 to i32
  %19 = load ptr, ptr %14, align 4
  %20 = getelementptr inbounds %struct.musb_qh, ptr %11, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %23 = load i32, ptr %22, align 4
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.59, i32 noundef %6, i32 noundef %18, ptr noundef %19, i32 noundef %21, i32 noundef %23) #11
  %24 = icmp ult i32 %13, 1073741824
  br i1 %24, label %25, label %63

25:                                               ; preds = %4
  %26 = icmp eq i8 %3, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 26
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 4
  br label %31

31:                                               ; preds = %27, %25
  %32 = phi i32 [ -84, %27 ], [ 0, %25 ]
  %33 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 29
  %34 = getelementptr inbounds %struct.musb_qh, ptr %11, i32 0, i32 18
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr %struct.usb_iso_packet_descriptor, ptr %33, i32 %35
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr i8, ptr %15, i32 %37
  %39 = getelementptr %struct.usb_iso_packet_descriptor, ptr %33, i32 %35, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp ult i32 %40, %18
  br i1 %41, label %42, label %49

42:                                               ; preds = %31
  br i1 %26, label %43, label %47

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 26
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %44, align 4
  br label %47

47:                                               ; preds = %43, %42
  %48 = phi i32 [ -75, %43 ], [ %32, %42 ]
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.60, i32 noundef %18, i32 noundef %40) #11
  br label %49

49:                                               ; preds = %47, %31
  %50 = phi i32 [ %40, %47 ], [ %18, %31 ]
  %51 = phi i32 [ 1, %47 ], [ 0, %31 ]
  %52 = phi i32 [ %48, %47 ], [ %32, %31 ]
  %53 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 20
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, %50
  store i32 %55, ptr %53, align 4
  %56 = getelementptr %struct.usb_iso_packet_descriptor, ptr %33, i32 %35, i32 2
  store i32 %50, ptr %56, align 4
  %57 = getelementptr %struct.usb_iso_packet_descriptor, ptr %33, i32 %35, i32 3
  store i32 %52, ptr %57, align 4
  %58 = load i32, ptr %34, align 4
  %59 = add i32 %58, 1
  store i32 %59, ptr %34, align 4
  %60 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 24
  %61 = load i32, ptr %60, align 4
  %62 = icmp uge i32 %59, %61
  br label %106

63:                                               ; preds = %4
  %64 = load i32, ptr %20, align 4
  %65 = getelementptr i8, ptr %15, i32 %64
  %66 = load i32, ptr %22, align 4
  %67 = sub i32 %66, %64
  %68 = icmp ult i32 %67, %18
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 12
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, -115
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 -75, ptr %70, align 4
  br label %74

74:                                               ; preds = %73, %69
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.60, i32 noundef %18, i32 noundef %67) #11
  br label %75

75:                                               ; preds = %74, %63
  %76 = phi i32 [ %67, %74 ], [ %18, %63 ]
  %77 = phi i32 [ 1, %74 ], [ 0, %63 ]
  %78 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 20
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, %76
  store i32 %80, ptr %78, align 4
  %81 = load i32, ptr %20, align 4
  %82 = add i32 %81, %76
  store i32 %82, ptr %20, align 4
  %83 = load i32, ptr %78, align 4
  %84 = load i32, ptr %22, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %94, label %86

86:                                               ; preds = %75
  %87 = getelementptr inbounds %struct.musb_qh, ptr %11, i32 0, i32 16
  %88 = load i16, ptr %87, align 2
  %89 = icmp ult i16 %17, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 12
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, -115
  br i1 %93, label %106, label %94

94:                                               ; preds = %90, %86, %75
  %95 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 12
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %96, -115
  br i1 %97, label %98, label %106

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 13
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, 1
  %102 = icmp ne i32 %101, 0
  %103 = icmp ult i32 %83, %84
  %104 = select i1 %102, i1 %103, i1 false
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  store i32 -121, ptr %95, align 4
  br label %106

106:                                              ; preds = %105, %98, %94, %90, %49
  %107 = phi ptr [ %38, %49 ], [ %65, %105 ], [ %65, %98 ], [ %65, %94 ], [ %65, %90 ]
  %108 = phi i1 [ %62, %49 ], [ true, %105 ], [ true, %98 ], [ true, %94 ], [ false, %90 ]
  %109 = phi i32 [ %50, %49 ], [ %76, %105 ], [ %76, %98 ], [ %76, %94 ], [ %76, %90 ]
  %110 = phi i32 [ %51, %49 ], [ %77, %105 ], [ %77, %98 ], [ %77, %94 ], [ %77, %90 ]
  %111 = trunc i32 %109 to i16
  tail call void @musb_read_fifo(ptr noundef %7, i16 noundef zeroext %111, ptr noundef %107) #11
  %112 = load ptr, ptr @musb_readw, align 4
  %113 = tail call zeroext i16 %112(ptr noundef %9, i32 noundef 6) #11
  %114 = or i16 %113, 77
  %115 = icmp eq i32 %110, 0
  br i1 %115, label %117, label %116, !prof !15

116:                                              ; preds = %106
  tail call fastcc void @musb_h_flush_rxfifo(ptr noundef %7, i16 noundef zeroext %114)
  br label %122

117:                                              ; preds = %106
  %118 = and i16 %114, -34
  %119 = or i16 %118, 32
  %120 = select i1 %108, i16 %118, i16 %119
  %121 = load ptr, ptr @musb_writew, align 4
  tail call void %121(ptr noundef %9, i32 noundef 6, i16 noundef zeroext %120) #11
  br label %122

122:                                              ; preds = %117, %116
  ret i1 %108
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @musb_host_alloc(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 4
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi ptr [ %8, %7 ], [ %5, %1 ]
  %11 = tail call ptr @usb_create_hcd(ptr noundef nonnull @musb_hc_driver, ptr noundef %3, ptr noundef %10) #11
  %12 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 54
  store ptr %11, ptr %12, align 4
  %13 = icmp eq ptr %11, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %9
  %15 = ptrtoint ptr %0 to i32
  %16 = getelementptr inbounds %struct.usb_hcd, ptr %11, i32 0, i32 29
  store i32 %15, ptr %16, align 8
  %17 = load ptr, ptr %12, align 4
  %18 = getelementptr inbounds %struct.usb_bus, ptr %17, i32 0, i32 4
  store i8 1, ptr %18, align 8
  %19 = load ptr, ptr %12, align 4
  %20 = getelementptr inbounds %struct.usb_hcd, ptr %19, i32 0, i32 14
  %21 = load i16, ptr %20, align 8
  %22 = or i16 %21, 32
  store i16 %22, ptr %20, align 8
  %23 = load ptr, ptr %12, align 4
  %24 = getelementptr inbounds %struct.usb_hcd, ptr %23, i32 0, i32 14
  %25 = load i16, ptr %24, align 8
  %26 = or i16 %25, 128
  store i16 %26, ptr %24, align 8
  br label %27

27:                                               ; preds = %14, %9
  %28 = phi i32 [ 0, %14 ], [ -22, %9 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @musb_host_cleanup(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 41
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 54
  %7 = load ptr, ptr %6, align 4
  tail call void @usb_remove_hcd(ptr noundef %7) #11
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @musb_host_free(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 54
  %3 = load ptr, ptr %2, align 4
  tail call void @usb_put_hcd(ptr noundef %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @musb_host_setup(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 54
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 41
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 44
  store i8 1, ptr %9, align 8
  %10 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 31
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.usb_phy, ptr %11, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.usb_otg, ptr %13, i32 0, i32 5
  store i32 6, ptr %14, align 4
  br label %15

15:                                               ; preds = %8, %2
  %16 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 31
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.usb_phy, ptr %17, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.usb_otg, ptr %19, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = tail call i32 %23(ptr noundef nonnull %19, ptr noundef %4) #11
  br label %27

27:                                               ; preds = %25, %21, %15
  %28 = getelementptr inbounds %struct.usb_bus, ptr %4, i32 0, i32 5
  store i8 0, ptr %28, align 1
  %29 = load ptr, ptr %16, align 4
  %30 = getelementptr inbounds %struct.usb_phy, ptr %29, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.usb_otg, ptr %31, i32 0, i32 3
  store ptr %4, ptr %32, align 4
  %33 = icmp eq i32 %1, 0
  %34 = shl i32 %1, 1
  %35 = select i1 %33, i32 500, i32 %34
  %36 = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 0, i32 19
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 0, i32 14
  %38 = load i16, ptr %37, align 8
  %39 = or i16 %38, 16
  store i16 %39, ptr %37, align 8
  %40 = tail call i32 @usb_add_hcd(ptr noundef %4, i32 noundef 0, i32 noundef 0) #11
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %27
  %43 = load ptr, ptr %4, align 8
  %44 = tail call i32 @device_wakeup_enable(ptr noundef %43) #11
  br label %45

45:                                               ; preds = %42, %27
  %46 = phi i32 [ 0, %42 ], [ %40, %27 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @musb_host_resume_root_hub(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 54
  %3 = load ptr, ptr %2, align 4
  tail call void @usb_hcd_resume_root_hub(ptr noundef %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_resume_root_hub(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @musb_host_poke_root_hub(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 44
  store i8 1, ptr %2, align 8
  %3 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 54
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @usb_hcd_poll_rh_status(ptr noundef %4) #11
  br label %10

9:                                                ; preds = %1
  tail call void @usb_hcd_resume_root_hub(ptr noundef %4) #11
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_poll_rh_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_read_fifo(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @musb_giveback(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_urb_gb, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.thread.pointer() #11
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 5
  %11 = getelementptr i32, ptr @__cpu_online_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  %18 = tail call i32 @__traceiter_musb_urb_gb(ptr noundef null, ptr noundef %0, ptr noundef %1) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  br label %19

19:                                               ; preds = %17, %6, %3
  %20 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 54
  %21 = load ptr, ptr %20, align 4
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %21, ptr noundef %1) #11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  %22 = load i16, ptr %0, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  %24 = load ptr, ptr %20, align 4
  tail call void @usb_hcd_giveback_urb(ptr noundef %24, ptr noundef %1, i32 noundef %2) #11
  tail call void @_raw_spin_lock(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @musb_start_urb(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds %struct.usb_host_endpoint, ptr %6, i32 0, i32 4
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  %10 = getelementptr i8, ptr %8, i32 -20
  %11 = select i1 %9, ptr null, ptr %10
  br label %12

12:                                               ; preds = %5, %3
  %13 = phi ptr [ null, %3 ], [ %11, %5 ]
  %14 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 14
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.musb_qh, ptr %2, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.musb_hw_ep, ptr %17, i32 0, i32 3
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds %struct.musb_qh, ptr %2, i32 0, i32 5
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.musb_qh, ptr %2, i32 0, i32 6
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.musb_qh, ptr %2, i32 0, i32 13
  %24 = load i8, ptr %23, align 2
  switch i8 %24, label %36 [
    i8 0, label %25
    i8 1, label %29
  ]

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 15
  store i8 1, ptr %26, align 8
  %27 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 21
  %28 = load ptr, ptr %27, align 4
  br label %44

29:                                               ; preds = %12
  %30 = getelementptr inbounds %struct.musb_qh, ptr %2, i32 0, i32 18
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.musb_qh, ptr %2, i32 0, i32 17
  store i16 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 29
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.urb, ptr %13, i32 1, i32 1
  %35 = load i32, ptr %34, align 4
  br label %44

36:                                               ; preds = %12
  %37 = load ptr, ptr %14, align 4
  %38 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 20
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr i8, ptr %37, i32 %39
  %41 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 19
  %42 = load i32, ptr %41, align 4
  %43 = sub i32 %42, %39
  br label %44

44:                                               ; preds = %36, %29, %25
  %45 = phi i32 [ %43, %36 ], [ %35, %29 ], [ 8, %25 ]
  %46 = phi i32 [ %1, %36 ], [ %1, %29 ], [ 0, %25 ]
  %47 = phi ptr [ %40, %36 ], [ %15, %29 ], [ %28, %25 ]
  %48 = phi i32 [ 0, %36 ], [ %33, %29 ], [ 0, %25 ]
  %49 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_urb_start, i32 0, i32 1), align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %44
  %52 = tail call ptr @llvm.thread.pointer() #11
  %53 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %54 = load i32, ptr %53, align 8
  %55 = lshr i32 %54, 5
  %56 = getelementptr i32, ptr @__cpu_online_mask, i32 %55
  %57 = load volatile i32, ptr %56, align 4
  %58 = and i32 %54, 31
  %59 = shl nuw i32 1, %58
  %60 = and i32 %59, %57
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %51
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  %63 = tail call i32 @__traceiter_musb_urb_start(ptr noundef null, ptr noundef %0, ptr noundef %13) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !23
  br label %64

64:                                               ; preds = %62, %51, %44
  %65 = icmp eq i32 %46, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.musb_hw_ep, ptr %17, i32 0, i32 4
  %68 = load i8, ptr %67, align 1, !range !9
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.musb_hw_ep, ptr %17, i32 0, i32 11
  store ptr %2, ptr %71, align 4
  br label %77

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.musb_hw_ep, ptr %17, i32 0, i32 11
  store ptr %2, ptr %73, align 4
  %74 = getelementptr inbounds %struct.musb_hw_ep, ptr %17, i32 0, i32 4
  %75 = load i8, ptr %74, align 1, !range !9
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %72, %70, %66
  %78 = getelementptr inbounds %struct.musb_hw_ep, ptr %17, i32 0, i32 12
  store ptr %2, ptr %78, align 4
  br label %79

79:                                               ; preds = %77, %72
  %80 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 35
  %83 = getelementptr %struct.musb_hw_ep, ptr %82, i32 %20
  %84 = getelementptr %struct.musb_hw_ep, ptr %82, i32 %20, i32 2
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr %struct.musb_hw_ep, ptr %82, i32 %20, i32 11
  %87 = getelementptr %struct.musb_hw_ep, ptr %82, i32 %20, i32 12
  %88 = select i1 %65, ptr %87, ptr %86
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.musb_qh, ptr %89, i32 0, i32 16
  %91 = load i16, ptr %90, align 2
  %92 = select i1 %65, ptr @.str.49, ptr @.str.50
  %93 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 8
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.usb_device, ptr %94, i32 0, i32 4
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr inbounds %struct.musb_qh, ptr %89, i32 0, i32 9
  %98 = load i8, ptr %97, align 2
  %99 = zext i8 %98 to i32
  %100 = getelementptr inbounds %struct.musb_qh, ptr %89, i32 0, i32 14
  %101 = load i8, ptr %100, align 1
  %102 = zext i8 %101 to i32
  %103 = select i1 %65, ptr @.str.51, ptr @.str.52
  %104 = getelementptr inbounds %struct.musb_qh, ptr %89, i32 0, i32 10
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i32
  %107 = getelementptr inbounds %struct.musb_qh, ptr %89, i32 0, i32 11
  %108 = load i8, ptr %107, align 4
  %109 = zext i8 %108 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.48, ptr noundef nonnull %92, i32 noundef %20, ptr noundef %13, i32 noundef %96, i32 noundef %99, i32 noundef %102, ptr noundef nonnull %103, i32 noundef %106, i32 noundef %109, i32 noundef %45) #11
  %110 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 2, i32 1
  %111 = load ptr, ptr %110, align 4
  tail call void %111(ptr noundef %81, i8 noundef zeroext %19) #11
  %112 = or i32 %46, %45
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %79
  %115 = load ptr, ptr @musb_readw, align 4
  %116 = tail call zeroext i16 %115(ptr noundef %85, i32 noundef 2) #11
  %117 = and i16 %116, -4097
  %118 = load ptr, ptr @musb_writew, align 4
  tail call void %118(ptr noundef %85, i32 noundef 2, i16 noundef zeroext %117) #11
  %119 = getelementptr %struct.musb_hw_ep, ptr %82, i32 %20, i32 9
  store ptr null, ptr %119, align 4
  %120 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 24
  %121 = load ptr, ptr %120, align 4
  br label %141

122:                                              ; preds = %79
  %123 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 24
  %124 = load ptr, ptr %123, align 4
  %125 = icmp ne i8 %19, 0
  %126 = icmp ne ptr %124, null
  %127 = select i1 %125, i1 %126, i1 false
  br i1 %127, label %128, label %141

128:                                              ; preds = %122
  %129 = getelementptr %struct.musb_hw_ep, ptr %82, i32 %20, i32 9
  %130 = getelementptr %struct.musb_hw_ep, ptr %82, i32 %20, i32 10
  %131 = select i1 %65, ptr %129, ptr %130
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %141

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.dma_controller, ptr %124, i32 0, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = zext i1 %65 to i8
  %138 = tail call ptr %136(ptr noundef nonnull %124, ptr noundef %83, i8 noundef zeroext %137) #11
  br i1 %65, label %139, label %140

139:                                              ; preds = %134
  store ptr %138, ptr %129, align 4
  br label %144

140:                                              ; preds = %134
  store ptr %138, ptr %130, align 4
  br label %300

141:                                              ; preds = %128, %122, %114
  %142 = phi ptr [ %124, %128 ], [ %124, %122 ], [ %121, %114 ]
  %143 = phi ptr [ %132, %128 ], [ null, %122 ], [ null, %114 ]
  br i1 %65, label %144, label %300

144:                                              ; preds = %141, %139
  %145 = phi ptr [ %138, %139 ], [ %143, %141 ]
  %146 = phi ptr [ %124, %139 ], [ %142, %141 ]
  %147 = load ptr, ptr @musb_readw, align 4
  %148 = tail call zeroext i16 %147(ptr noundef %85, i32 noundef 2) #11
  %149 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 12
  %150 = load i16, ptr %149, align 4
  %151 = load ptr, ptr @musb_writew, align 4
  %152 = shl nuw i32 1, %20
  %153 = trunc i32 %152 to i16
  %154 = xor i16 %153, -1
  %155 = and i16 %150, %154
  tail call void %151(ptr noundef %81, i32 noundef 6, i16 noundef zeroext %155) #11
  %156 = icmp eq i8 %19, 0
  br i1 %156, label %181, label %157

157:                                              ; preds = %144
  %158 = getelementptr %struct.musb_hw_ep, ptr %82, i32 %20, i32 5
  %159 = load i8, ptr %158, align 2, !range !9
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %157
  %162 = and i16 %148, 18266
  %163 = or i16 %162, 8192
  br label %174

164:                                              ; preds = %157
  tail call fastcc void @musb_h_tx_flush_fifo(ptr noundef %83) #11
  %165 = load i8, ptr %158, align 2
  %166 = and i16 %148, 18266
  %167 = or i16 %166, 8192
  %168 = icmp eq i8 %165, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 2, i32 7
  %171 = load ptr, ptr %170, align 4
  %172 = tail call zeroext i16 %171(ptr noundef %89, i32 noundef 1, ptr noundef %13) #11
  %173 = or i16 %172, %167
  br label %174

174:                                              ; preds = %169, %164, %161
  %175 = phi i16 [ %167, %164 ], [ %173, %169 ], [ %163, %161 ]
  %176 = load ptr, ptr @musb_writew, align 4
  tail call void %176(ptr noundef %85, i32 noundef 2, i16 noundef zeroext %175) #11
  %177 = and i16 %175, -1025
  %178 = load ptr, ptr @musb_writew, align 4
  tail call void %178(ptr noundef %85, i32 noundef 2, i16 noundef zeroext %177) #11
  %179 = load ptr, ptr @musb_readw, align 4
  %180 = tail call zeroext i16 %179(ptr noundef %85, i32 noundef 2) #11
  br label %182

181:                                              ; preds = %144
  tail call fastcc void @musb_h_ep0_flush_fifo(ptr noundef %83) #11
  br label %182

182:                                              ; preds = %181, %174
  %183 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 47
  %184 = load i24, ptr %183, align 4
  %185 = and i24 %184, 8
  %186 = icmp eq i24 %185, 0
  br i1 %186, label %204, label %187

187:                                              ; preds = %182
  %188 = load i8, ptr %97, align 2
  %189 = load ptr, ptr @musb_writeb, align 4
  %190 = load ptr, ptr %80, align 8
  %191 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 2, i32 5
  %192 = load ptr, ptr %191, align 4
  %193 = tail call i32 %192(i8 noundef zeroext %19, i16 noundef zeroext 0) #11
  tail call void %189(ptr noundef %190, i32 noundef %193, i8 noundef zeroext %188) #11
  %194 = load i8, ptr %104, align 1
  %195 = load ptr, ptr @musb_writeb, align 4
  %196 = load ptr, ptr %80, align 8
  %197 = load ptr, ptr %191, align 4
  %198 = tail call i32 %197(i8 noundef zeroext %19, i16 noundef zeroext 2) #11
  tail call void %195(ptr noundef %196, i32 noundef %198, i8 noundef zeroext %194) #11
  %199 = load i8, ptr %107, align 4
  %200 = load ptr, ptr @musb_writeb, align 4
  %201 = load ptr, ptr %80, align 8
  %202 = load ptr, ptr %191, align 4
  %203 = tail call i32 %202(i8 noundef zeroext %19, i16 noundef zeroext 3) #11
  tail call void %200(ptr noundef %201, i32 noundef %203, i8 noundef zeroext %199) #11
  br label %207

204:                                              ; preds = %182
  %205 = load ptr, ptr @musb_writeb, align 4
  %206 = load i8, ptr %97, align 2
  tail call void %205(ptr noundef %81, i32 noundef 0, i8 noundef zeroext %206) #11
  br label %207

207:                                              ; preds = %204, %187
  %208 = load ptr, ptr @musb_writeb, align 4
  br i1 %156, label %240, label %209

209:                                              ; preds = %207
  %210 = getelementptr inbounds %struct.musb_qh, ptr %89, i32 0, i32 7
  %211 = load i8, ptr %210, align 4
  tail call void %208(ptr noundef %85, i32 noundef 10, i8 noundef zeroext %211) #11
  %212 = getelementptr inbounds %struct.musb_qh, ptr %89, i32 0, i32 13
  %213 = load i8, ptr %212, align 2
  %214 = icmp eq i8 %213, 2
  br i1 %214, label %215, label %225

215:                                              ; preds = %209
  %216 = load i24, ptr %183, align 4
  %217 = and i24 %216, 128
  %218 = icmp eq i24 %217, 0
  br i1 %218, label %225, label %219

219:                                              ; preds = %215
  %220 = getelementptr %struct.musb_hw_ep, ptr %82, i32 %20, i32 7
  %221 = load i16, ptr %220, align 4
  %222 = udiv i16 %221, %91
  %223 = trunc i16 %222 to i8
  %224 = getelementptr inbounds %struct.musb_qh, ptr %89, i32 0, i32 15
  store i8 %223, ptr %224, align 4
  br label %230

225:                                              ; preds = %215, %209
  %226 = load i16, ptr %90, align 2
  %227 = getelementptr inbounds %struct.musb_qh, ptr %89, i32 0, i32 15
  %228 = load i8, ptr %227, align 4
  %229 = zext i8 %228 to i16
  br label %230

230:                                              ; preds = %225, %219
  %231 = phi i16 [ %229, %225 ], [ %222, %219 ]
  %232 = phi i16 [ %226, %225 ], [ %91, %219 ]
  %233 = load ptr, ptr @musb_writew, align 4
  %234 = shl i16 %231, 11
  %235 = add i16 %234, -2048
  %236 = or i16 %235, %232
  tail call void %233(ptr noundef %85, i32 noundef 0, i16 noundef zeroext %236) #11
  %237 = load ptr, ptr @musb_writeb, align 4
  %238 = getelementptr inbounds %struct.musb_qh, ptr %89, i32 0, i32 8
  %239 = load i8, ptr %238, align 1
  tail call void %237(ptr noundef %85, i32 noundef 11, i8 noundef zeroext %239) #11
  br label %250

240:                                              ; preds = %207
  %241 = getelementptr inbounds %struct.musb_qh, ptr %89, i32 0, i32 8
  %242 = load i8, ptr %241, align 1
  tail call void %208(ptr noundef %85, i32 noundef 11, i8 noundef zeroext %242) #11
  %243 = load i24, ptr %183, align 4
  %244 = and i24 %243, 8
  %245 = icmp eq i24 %244, 0
  br i1 %245, label %250, label %246

246:                                              ; preds = %240
  %247 = load ptr, ptr @musb_writeb, align 4
  %248 = getelementptr inbounds %struct.musb_qh, ptr %89, i32 0, i32 7
  %249 = load i8, ptr %248, align 4
  tail call void %247(ptr noundef %85, i32 noundef 10, i8 noundef zeroext %249) #11
  br label %250

250:                                              ; preds = %246, %240, %230
  %251 = getelementptr inbounds %struct.musb_qh, ptr %89, i32 0, i32 13
  %252 = load i8, ptr %251, align 2
  %253 = icmp eq i8 %252, 2
  br i1 %253, label %254, label %261

254:                                              ; preds = %250
  %255 = load i24, ptr %183, align 4
  %256 = and i24 %255, 128
  %257 = icmp eq i24 %256, 0
  br i1 %257, label %261, label %258

258:                                              ; preds = %254
  %259 = getelementptr %struct.musb_hw_ep, ptr %82, i32 %20, i32 7
  %260 = load i16, ptr %259, align 4
  br label %261

261:                                              ; preds = %258, %254, %250
  %262 = phi i16 [ %260, %258 ], [ %91, %254 ], [ %91, %250 ]
  %263 = zext i16 %262 to i32
  %264 = tail call i32 @llvm.umin.i32(i32 %263, i32 %45) #11
  %265 = trunc i32 %264 to i16
  %266 = icmp eq ptr %145, null
  br i1 %266, label %271, label %267

267:                                              ; preds = %261
  %268 = tail call fastcc zeroext i1 @musb_tx_dma_program(ptr noundef %146, ptr noundef %83, ptr noundef %89, ptr noundef %13, i32 noundef %48, i32 noundef %45) #11
  %269 = icmp eq i16 %265, 0
  %270 = select i1 %268, i1 true, i1 %269
  br i1 %270, label %467, label %273

271:                                              ; preds = %261
  %272 = icmp eq i16 %265, 0
  br i1 %272, label %467, label %273

273:                                              ; preds = %271, %267
  %274 = getelementptr inbounds %struct.musb_qh, ptr %89, i32 0, i32 6
  store i32 %264, ptr %274, align 4
  %275 = icmp eq ptr %47, null
  br i1 %275, label %276, label %299

276:                                              ; preds = %273
  %277 = getelementptr inbounds %struct.musb_qh, ptr %89, i32 0, i32 19
  %278 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 16
  %279 = load ptr, ptr %278, align 4
  tail call void @sg_miter_start(ptr noundef %277, ptr noundef %279, i32 noundef 1, i32 noundef 5) #11
  %280 = tail call zeroext i1 @sg_miter_next(ptr noundef %277) #11
  br i1 %280, label %284, label %281

281:                                              ; preds = %276
  %282 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %283 = load ptr, ptr %282, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %283, ptr noundef nonnull @.str.53) #12
  tail call void @sg_miter_stop(ptr noundef %277) #11
  br label %467

284:                                              ; preds = %276
  %285 = getelementptr inbounds %struct.musb_qh, ptr %89, i32 0, i32 19, i32 1
  %286 = load ptr, ptr %285, align 4
  %287 = load ptr, ptr %278, align 4
  %288 = getelementptr inbounds %struct.scatterlist, ptr %287, i32 0, i32 1
  %289 = load i32, ptr %288, align 4
  %290 = getelementptr i8, ptr %286, i32 %289
  %291 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 20
  %292 = load i32, ptr %291, align 4
  %293 = getelementptr i8, ptr %290, i32 %292
  %294 = getelementptr inbounds %struct.musb_qh, ptr %89, i32 0, i32 19, i32 2
  %295 = load i32, ptr %294, align 4
  %296 = tail call i32 @llvm.umin.i32(i32 %295, i32 %264) #11
  %297 = trunc i32 %296 to i16
  tail call void @musb_write_fifo(ptr noundef %83, i16 noundef zeroext %297, ptr noundef %293) #11
  %298 = getelementptr inbounds %struct.musb_qh, ptr %89, i32 0, i32 19, i32 3
  store i32 %296, ptr %298, align 4
  tail call void @sg_miter_stop(ptr noundef %277) #11
  br label %467

299:                                              ; preds = %273
  tail call void @musb_write_fifo(ptr noundef %83, i16 noundef zeroext %265, ptr noundef nonnull %47) #11
  br label %467

300:                                              ; preds = %141, %140
  %301 = phi ptr [ %138, %140 ], [ %143, %141 ]
  %302 = phi ptr [ %124, %140 ], [ %142, %141 ]
  %303 = getelementptr %struct.musb_hw_ep, ptr %82, i32 %20, i32 13
  %304 = load i8, ptr %303, align 4
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %407, label %306

306:                                              ; preds = %300
  %307 = getelementptr %struct.musb_hw_ep, ptr %82, i32 %20, i32 4
  %308 = load i8, ptr %307, align 1, !range !9
  %309 = icmp eq i8 %308, 0
  br i1 %309, label %333, label %310

310:                                              ; preds = %306
  %311 = load ptr, ptr @musb_readw, align 4
  %312 = load ptr, ptr %84, align 4
  %313 = tail call zeroext i16 %311(ptr noundef %312, i32 noundef 2) #11
  %314 = and i16 %313, 8192
  %315 = icmp eq i16 %314, 0
  br i1 %315, label %323, label %316

316:                                              ; preds = %310
  tail call fastcc void @musb_h_tx_flush_fifo(ptr noundef %83) #11
  %317 = load ptr, ptr @musb_readw, align 4
  %318 = load ptr, ptr %84, align 4
  %319 = tail call zeroext i16 %317(ptr noundef %318, i32 noundef 2) #11
  %320 = load ptr, ptr @musb_writew, align 4
  %321 = load ptr, ptr %84, align 4
  %322 = or i16 %319, 2048
  tail call void %320(ptr noundef %321, i32 noundef 2, i16 noundef zeroext %322) #11
  br label %323

323:                                              ; preds = %316, %310
  %324 = phi i16 [ %319, %316 ], [ %313, %310 ]
  %325 = and i16 %324, 1024
  %326 = icmp eq i16 %325, 0
  br i1 %326, label %330, label %327

327:                                              ; preds = %323
  %328 = load ptr, ptr @musb_writew, align 4
  %329 = load ptr, ptr %84, align 4
  tail call void %328(ptr noundef %329, i32 noundef 2, i16 noundef zeroext 1024) #11
  br label %330

330:                                              ; preds = %327, %323
  %331 = load ptr, ptr @musb_writew, align 4
  %332 = load ptr, ptr %84, align 4
  tail call void %331(ptr noundef %332, i32 noundef 2, i16 noundef zeroext 0) #11
  br label %333

333:                                              ; preds = %330, %306
  %334 = load ptr, ptr @musb_readw, align 4
  %335 = load ptr, ptr %84, align 4
  %336 = tail call zeroext i16 %334(ptr noundef %335, i32 noundef 6) #11
  %337 = and i16 %336, 1
  %338 = icmp eq i16 %337, 0
  br i1 %338, label %348, label %339

339:                                              ; preds = %333
  %340 = getelementptr %struct.musb_hw_ep, ptr %82, i32 %20, i32 3
  %341 = load i8, ptr %340, align 4
  %342 = zext i8 %341 to i32
  %343 = load ptr, ptr @musb_readw, align 4
  %344 = load ptr, ptr %84, align 4
  %345 = tail call zeroext i16 %343(ptr noundef %344, i32 noundef 8) #11
  %346 = zext i16 %345 to i32
  %347 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.musb_rx_reinit, i32 noundef 541, i32 noundef %342, i32 noundef %346) #12
  br label %348

348:                                              ; preds = %339, %333
  %349 = load ptr, ptr @musb_writew, align 4
  %350 = load ptr, ptr %84, align 4
  tail call void %349(ptr noundef %350, i32 noundef 6, i16 noundef zeroext 145) #11
  %351 = load ptr, ptr @musb_writew, align 4
  %352 = load ptr, ptr %84, align 4
  tail call void %351(ptr noundef %352, i32 noundef 6, i16 noundef zeroext 145) #11
  %353 = load ptr, ptr @musb_readw, align 4
  %354 = load ptr, ptr %84, align 4
  %355 = tail call zeroext i16 %353(ptr noundef %354, i32 noundef 6) #11
  %356 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 47
  %357 = load i24, ptr %356, align 4
  %358 = and i24 %357, 8
  %359 = icmp eq i24 %358, 0
  br i1 %359, label %377, label %360

360:                                              ; preds = %348
  %361 = load i8, ptr %97, align 2
  %362 = load ptr, ptr @musb_writeb, align 4
  %363 = load ptr, ptr %80, align 8
  %364 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 2, i32 5
  %365 = load ptr, ptr %364, align 4
  %366 = tail call i32 %365(i8 noundef zeroext %19, i16 noundef zeroext 4) #11
  tail call void %362(ptr noundef %363, i32 noundef %366, i8 noundef zeroext %361) #11
  %367 = load i8, ptr %104, align 1
  %368 = load ptr, ptr @musb_writeb, align 4
  %369 = load ptr, ptr %80, align 8
  %370 = load ptr, ptr %364, align 4
  %371 = tail call i32 %370(i8 noundef zeroext %19, i16 noundef zeroext 6) #11
  tail call void %368(ptr noundef %369, i32 noundef %371, i8 noundef zeroext %367) #11
  %372 = load i8, ptr %107, align 4
  %373 = load ptr, ptr @musb_writeb, align 4
  %374 = load ptr, ptr %80, align 8
  %375 = load ptr, ptr %364, align 4
  %376 = tail call i32 %375(i8 noundef zeroext %19, i16 noundef zeroext 7) #11
  tail call void %373(ptr noundef %374, i32 noundef %376, i8 noundef zeroext %372) #11
  br label %381

377:                                              ; preds = %348
  %378 = load ptr, ptr @musb_writeb, align 4
  %379 = load ptr, ptr %80, align 8
  %380 = load i8, ptr %97, align 2
  tail call void %378(ptr noundef %379, i32 noundef 0, i8 noundef zeroext %380) #11
  br label %381

381:                                              ; preds = %377, %360
  %382 = load ptr, ptr @musb_writeb, align 4
  %383 = load ptr, ptr %84, align 4
  %384 = getelementptr inbounds %struct.musb_qh, ptr %89, i32 0, i32 7
  %385 = load i8, ptr %384, align 4
  tail call void %382(ptr noundef %383, i32 noundef 12, i8 noundef zeroext %385) #11
  %386 = load ptr, ptr @musb_writeb, align 4
  %387 = load ptr, ptr %84, align 4
  %388 = getelementptr inbounds %struct.musb_qh, ptr %89, i32 0, i32 8
  %389 = load i8, ptr %388, align 1
  tail call void %386(ptr noundef %387, i32 noundef 13, i8 noundef zeroext %389) #11
  %390 = load ptr, ptr @musb_writew, align 4
  %391 = load ptr, ptr %84, align 4
  %392 = load i16, ptr %90, align 2
  %393 = getelementptr inbounds %struct.musb_qh, ptr %89, i32 0, i32 15
  %394 = load i8, ptr %393, align 4
  %395 = zext i8 %394 to i16
  %396 = shl i16 %395, 11
  %397 = add i16 %396, -2048
  %398 = or i16 %397, %392
  tail call void %390(ptr noundef %391, i32 noundef 4, i16 noundef zeroext %398) #11
  store i8 0, ptr %303, align 4
  %399 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 2, i32 7
  %400 = load ptr, ptr %399, align 4
  %401 = tail call zeroext i16 %400(ptr noundef %89, i32 noundef 0, ptr noundef %13) #11
  %402 = getelementptr inbounds %struct.musb_qh, ptr %89, i32 0, i32 13
  %403 = load i8, ptr %402, align 2
  %404 = icmp eq i8 %403, 3
  %405 = or i16 %401, 4096
  %406 = select i1 %404, i16 %405, i16 %401
  br label %421

407:                                              ; preds = %300
  %408 = load ptr, ptr @musb_readw, align 4
  %409 = load ptr, ptr %84, align 4
  %410 = tail call zeroext i16 %408(ptr noundef %409, i32 noundef 6) #11
  %411 = zext i16 %410 to i32
  %412 = and i32 %411, 8225
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %419, label %414

414:                                              ; preds = %407
  %415 = getelementptr %struct.musb_hw_ep, ptr %82, i32 %20, i32 3
  %416 = load i8, ptr %415, align 4
  %417 = zext i8 %416 to i32
  %418 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.musb_ep_program, i32 noundef 850, i32 noundef %417, i32 noundef %411) #12
  br label %419

419:                                              ; preds = %414, %407
  %420 = and i16 %410, 4096
  br label %421

421:                                              ; preds = %419, %381
  %422 = phi i16 [ %420, %419 ], [ %406, %381 ]
  %423 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 3
  %424 = load ptr, ptr %423, align 8
  %425 = load i32, ptr %424, align 4
  %426 = and i32 %425, 32
  %427 = icmp ne i32 %426, 0
  %428 = icmp ne ptr %301, null
  %429 = select i1 %427, i1 %428, i1 false
  br i1 %429, label %430, label %458

430:                                              ; preds = %421
  %431 = getelementptr inbounds %struct.dma_channel, ptr %301, i32 0, i32 2
  store i32 0, ptr %431, align 4
  %432 = getelementptr inbounds %struct.musb_qh, ptr %89, i32 0, i32 6
  store i32 %45, ptr %432, align 4
  %433 = load ptr, ptr @musb_writew, align 4
  %434 = load ptr, ptr %84, align 4
  tail call void %433(ptr noundef %434, i32 noundef 6, i16 noundef zeroext %422) #11
  %435 = load ptr, ptr @musb_readw, align 4
  %436 = load ptr, ptr %84, align 4
  %437 = tail call zeroext i16 %435(ptr noundef %436, i32 noundef 6) #11
  %438 = getelementptr inbounds %struct.dma_controller, ptr %302, i32 0, i32 3
  %439 = load ptr, ptr %438, align 4
  %440 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 13
  %441 = load i32, ptr %440, align 4
  %442 = trunc i32 %441 to i8
  %443 = and i8 %442, 1
  %444 = xor i8 %443, 1
  %445 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 15
  %446 = load i32, ptr %445, align 4
  %447 = add i32 %446, %48
  %448 = load i32, ptr %432, align 4
  %449 = tail call i32 %439(ptr noundef nonnull %301, i16 noundef zeroext %91, i8 noundef zeroext %444, i32 noundef %447, i32 noundef %448) #11
  %450 = trunc i32 %449 to i8
  %451 = icmp eq i8 %450, 0
  br i1 %451, label %452, label %456

452:                                              ; preds = %430
  %453 = getelementptr inbounds %struct.dma_controller, ptr %302, i32 0, i32 2
  %454 = load ptr, ptr %453, align 4
  tail call void %454(ptr noundef nonnull %301) #11
  %455 = getelementptr %struct.musb_hw_ep, ptr %82, i32 %20, i32 10
  store ptr null, ptr %455, align 4
  br label %458

456:                                              ; preds = %430
  %457 = or i16 %437, 8192
  br label %458

458:                                              ; preds = %456, %452, %421
  %459 = phi i16 [ %457, %456 ], [ %437, %452 ], [ %422, %421 ]
  %460 = or i16 %459, 32
  %461 = zext i16 %460 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.55, i32 noundef %20, i32 noundef %461) #11
  %462 = load ptr, ptr @musb_writew, align 4
  %463 = load ptr, ptr %84, align 4
  tail call void %462(ptr noundef %463, i32 noundef 6, i16 noundef zeroext %460) #11
  %464 = load ptr, ptr @musb_readw, align 4
  %465 = load ptr, ptr %84, align 4
  %466 = tail call zeroext i16 %464(ptr noundef %465, i32 noundef 6) #11
  br label %515

467:                                              ; preds = %299, %284, %281, %271, %267
  %468 = load ptr, ptr @musb_writew, align 4
  tail call void %468(ptr noundef %81, i32 noundef 6, i16 noundef zeroext %150) #11
  %469 = load i8, ptr %23, align 2
  switch i8 %469, label %472 [
    i8 1, label %470
    i8 3, label %470
  ]

470:                                              ; preds = %467, %467
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.44) #11
  %471 = getelementptr inbounds %struct.musb_qh, ptr %2, i32 0, i32 17
  store i16 0, ptr %471, align 4
  br label %472

472:                                              ; preds = %470, %467
  %473 = getelementptr inbounds %struct.musb_hw_ep, ptr %17, i32 0, i32 9
  %474 = load ptr, ptr %473, align 4
  %475 = icmp eq ptr %474, null
  %476 = select i1 %475, ptr @.str.47, ptr @.str.46
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.45, i32 noundef %20, ptr noundef nonnull %476) #11
  %477 = load ptr, ptr %473, align 4
  %478 = icmp eq ptr %477, null
  br i1 %478, label %479, label %494

479:                                              ; preds = %472
  %480 = load i8, ptr %18, align 4
  %481 = icmp eq i8 %480, 0
  br i1 %481, label %490, label %482

482:                                              ; preds = %479
  %483 = load ptr, ptr @musb_readw, align 4
  %484 = getelementptr inbounds %struct.musb_hw_ep, ptr %17, i32 0, i32 2
  %485 = load ptr, ptr %484, align 4
  %486 = tail call zeroext i16 %483(ptr noundef %485, i32 noundef 2) #11
  %487 = or i16 %486, 167
  %488 = load ptr, ptr @musb_writew, align 4
  %489 = load ptr, ptr %484, align 4
  tail call void %488(ptr noundef %489, i32 noundef 2, i16 noundef zeroext %487) #11
  br label %515

490:                                              ; preds = %479
  %491 = load ptr, ptr @musb_writew, align 4
  %492 = getelementptr inbounds %struct.musb_hw_ep, ptr %17, i32 0, i32 2
  %493 = load ptr, ptr %492, align 4
  tail call void %491(ptr noundef %493, i32 noundef 2, i16 noundef zeroext 10) #11
  br label %515

494:                                              ; preds = %472
  %495 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 3
  %496 = load ptr, ptr %495, align 8
  %497 = load i32, ptr %496, align 4
  %498 = and i32 %497, 32
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %515, label %500

500:                                              ; preds = %494
  %501 = load ptr, ptr @musb_readw, align 4
  %502 = getelementptr inbounds %struct.musb_hw_ep, ptr %17, i32 0, i32 2
  %503 = load ptr, ptr %502, align 4
  %504 = tail call zeroext i16 %501(ptr noundef %503, i32 noundef 2) #11
  %505 = load ptr, ptr %17, align 4
  %506 = getelementptr inbounds %struct.musb, ptr %505, i32 0, i32 3
  %507 = load ptr, ptr %506, align 8
  %508 = load i32, ptr %507, align 4
  %509 = and i32 %508, 32
  %510 = icmp eq i32 %509, 0
  %511 = select i1 %510, i16 4262, i16 5286
  %512 = or i16 %511, %504
  %513 = load ptr, ptr @musb_writew, align 4
  %514 = load ptr, ptr %502, align 4
  tail call void %513(ptr noundef %514, i32 noundef 2, i16 noundef zeroext %512) #11
  br label %515

515:                                              ; preds = %500, %494, %490, %482, %458
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_unlink_urb_from_ep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_giveback_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_urb_gb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_urb_start(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_urb_tx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_urb_rx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @musb_h_start(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 27
  store i32 1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 13
  store i32 0, ptr %5, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @musb_h_stop(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 8
  tail call void @musb_stop(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 27
  store i32 0, ptr %4, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_h_get_frame_number(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr @musb_readw, align 4
  %5 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 27
  %6 = load ptr, ptr %5, align 8
  %7 = tail call zeroext i16 %4(ptr noundef %6, i32 noundef 12) #11
  %8 = zext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_urb_enqueue(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 44
  %9 = load i8, ptr %8, align 8, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %212, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 47
  %13 = load i24, ptr %12, align 4
  %14 = and i24 %13, 4
  %15 = icmp eq i24 %14, 0
  br i1 %15, label %212, label %16

16:                                               ; preds = %11
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_urb_enq, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = tail call ptr @llvm.thread.pointer() #11
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 5
  %24 = getelementptr i32, ptr @__cpu_online_mask, i32 %23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %22, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !24
  %31 = tail call i32 @__traceiter_musb_urb_enq(ptr noundef null, ptr noundef %5, ptr noundef %1) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !25
  br label %32

32:                                               ; preds = %30, %19, %16
  %33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #11
  %34 = tail call i32 @usb_hcd_link_urb_to_ep(ptr noundef %0, ptr noundef %1) #11
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %33) #11
  br label %212

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.usb_host_endpoint, ptr %7, i32 0, i32 5
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 2
  store ptr %39, ptr %42, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %33) #11
  br label %212

43:                                               ; preds = %37
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %33) #11
  %44 = and i32 %2, 17
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46, !prof !15

46:                                               ; preds = %43
  %47 = and i32 %2, 1
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i32 1, i32 2
  br label %50

50:                                               ; preds = %46, %43
  %51 = phi i32 [ 0, %43 ], [ %49, %46 ]
  %52 = or i32 %2, 256
  %53 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %51, i32 7
  %54 = load ptr, ptr %53, align 4
  %55 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %54, i32 noundef %52, i32 noundef 100) #13
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #11
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %0, ptr noundef %1) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %58) #11
  br label %212

59:                                               ; preds = %50
  store ptr %7, ptr %55, align 8
  %60 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.musb_qh, ptr %55, i32 0, i32 1
  store ptr %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.musb_qh, ptr %55, i32 0, i32 3
  store volatile ptr %63, ptr %63, align 4
  %64 = getelementptr inbounds %struct.musb_qh, ptr %55, i32 0, i32 3, i32 1
  store ptr %63, ptr %64, align 8
  %65 = getelementptr inbounds %struct.musb_qh, ptr %55, i32 0, i32 12
  store i8 1, ptr %65, align 1
  %66 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 4
  %67 = load i16, ptr %66, align 1
  %68 = and i16 %67, 2047
  %69 = zext i16 %68 to i32
  %70 = getelementptr inbounds %struct.musb_qh, ptr %55, i32 0, i32 16
  store i16 %68, ptr %70, align 2
  %71 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 3
  %72 = load i8, ptr %71, align 1
  %73 = and i8 %72, 3
  %74 = getelementptr inbounds %struct.musb_qh, ptr %55, i32 0, i32 13
  store i8 %73, ptr %74, align 2
  %75 = load i16, ptr %66, align 1
  %76 = lshr i16 %75, 11
  %77 = and i16 %76, 3
  %78 = add nuw nsw i16 %77, 1
  %79 = trunc i16 %78 to i8
  %80 = getelementptr inbounds %struct.musb_qh, ptr %55, i32 0, i32 15
  store i8 %79, ptr %80, align 8
  %81 = and i16 %78, 6
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %59
  %84 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %85 = load i32, ptr %84, align 4
  br label %115

86:                                               ; preds = %59
  %87 = icmp eq i8 %73, 1
  br i1 %87, label %88, label %103

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %90, 128
  %92 = icmp eq i32 %91, 0
  %93 = load i24, ptr %12, align 4
  br i1 %92, label %97, label %94

94:                                               ; preds = %88
  %95 = and i24 %93, 16
  %96 = icmp eq i24 %95, 0
  br i1 %96, label %100, label %110

97:                                               ; preds = %88
  %98 = and i24 %93, 32
  %99 = icmp eq i24 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %97, %94
  %101 = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 25
  %102 = load ptr, ptr %101, align 8
  br label %111

103:                                              ; preds = %86
  %104 = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 25
  %105 = load ptr, ptr %104, align 8
  %106 = trunc i8 %72 to i2
  switch i2 %106, label %109 [
    i2 0, label %111
    i2 -1, label %108
    i2 -2, label %107
  ]

107:                                              ; preds = %103
  br label %111

108:                                              ; preds = %103
  br label %111

109:                                              ; preds = %103
  br label %111

110:                                              ; preds = %97, %94
  store i16 %68, ptr %70, align 2
  br label %115

111:                                              ; preds = %109, %108, %107, %103, %100
  %112 = phi ptr [ %105, %109 ], [ %105, %108 ], [ %105, %107 ], [ %102, %100 ], [ %105, %103 ]
  %113 = phi ptr [ @.str.10, %109 ], [ @.str.67, %108 ], [ @.str.66, %107 ], [ @.str.65, %100 ], [ @.str.64, %103 ]
  %114 = zext i16 %78 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.63, ptr noundef nonnull %113, i32 noundef %114, i32 noundef %69) #12
  br label %209

115:                                              ; preds = %110, %83
  %116 = phi i32 [ %85, %83 ], [ %90, %110 ]
  %117 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 2
  %118 = load i8, ptr %117, align 1
  %119 = and i8 %118, 15
  %120 = getelementptr inbounds %struct.musb_qh, ptr %55, i32 0, i32 14
  store i8 %119, ptr %120, align 1
  %121 = lshr i32 %116, 8
  %122 = trunc i32 %121 to i8
  %123 = and i8 %122, 127
  %124 = getelementptr inbounds %struct.musb_qh, ptr %55, i32 0, i32 9
  store i8 %123, ptr %124, align 2
  %125 = shl nuw nsw i8 %73, 4
  %126 = or i8 %125, %119
  %127 = getelementptr inbounds %struct.usb_device, ptr %61, i32 0, i32 4
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, 2
  %130 = select i1 %129, i8 -128, i8 64
  %131 = icmp eq i32 %128, 1
  %132 = select i1 %131, i8 -64, i8 %130
  %133 = or i8 %126, %132
  %134 = getelementptr inbounds %struct.musb_qh, ptr %55, i32 0, i32 7
  store i8 %133, ptr %134, align 8
  %135 = trunc i8 %72 to i2
  switch i2 %135, label %147 [
    i2 -1, label %136
    i2 1, label %143
  ]

136:                                              ; preds = %115
  %137 = load i32, ptr %127, align 4
  %138 = icmp ult i32 %137, 3
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 5
  %141 = load i8, ptr %140, align 1
  %142 = tail call i8 @llvm.umax.i8(i8 %141, i8 1)
  br label %147

143:                                              ; preds = %136, %115
  %144 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 5
  %145 = load i8, ptr %144, align 1
  %146 = tail call i8 @llvm.umin.i8(i8 %145, i8 16)
  br label %147

147:                                              ; preds = %143, %139, %115
  %148 = phi i8 [ %146, %143 ], [ %142, %139 ], [ 0, %115 ]
  %149 = getelementptr inbounds %struct.musb_qh, ptr %55, i32 0, i32 8
  store i8 %148, ptr %149, align 1
  %150 = load i24, ptr %12, align 4
  %151 = and i24 %150, 8
  %152 = icmp eq i24 %151, 0
  br i1 %152, label %186, label %153

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.usb_device, ptr %61, i32 0, i32 11
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 11
  %157 = load ptr, ptr %156, align 8
  %158 = icmp eq ptr %155, %157
  br i1 %158, label %186, label %159

159:                                              ; preds = %153
  %160 = load i32, ptr %155, align 8
  %161 = trunc i32 %160 to i8
  %162 = getelementptr inbounds %struct.musb_qh, ptr %55, i32 0, i32 10
  store i8 %161, ptr %162, align 1
  %163 = getelementptr inbounds %struct.usb_device, ptr %61, i32 0, i32 8
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %186, label %166

166:                                              ; preds = %159
  %167 = getelementptr inbounds %struct.usb_device, ptr %61, i32 0, i32 9
  %168 = load i32, ptr %167, align 8
  %169 = trunc i32 %168 to i8
  %170 = getelementptr inbounds %struct.musb_qh, ptr %55, i32 0, i32 11
  store i8 %169, ptr %170, align 4
  %171 = load ptr, ptr %163, align 4
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %178, label %174

174:                                              ; preds = %166
  %175 = load i32, ptr %172, align 8
  %176 = trunc i32 %175 to i8
  store i8 %176, ptr %162, align 1
  %177 = load ptr, ptr %163, align 4
  br label %178

178:                                              ; preds = %174, %166
  %179 = phi i8 [ %176, %174 ], [ %161, %166 ]
  %180 = phi ptr [ %177, %174 ], [ %171, %166 ]
  %181 = getelementptr inbounds %struct.usb_tt, ptr %180, i32 0, i32 1
  %182 = load i32, ptr %181, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %186, label %184

184:                                              ; preds = %178
  %185 = or i8 %179, -128
  store i8 %185, ptr %162, align 1
  br label %186

186:                                              ; preds = %184, %178, %159, %153, %147
  %187 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #11
  %188 = load ptr, ptr %38, align 4
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %198

190:                                              ; preds = %186
  %191 = load ptr, ptr %55, align 8
  %192 = getelementptr inbounds %struct.usb_host_endpoint, ptr %191, i32 0, i32 4
  %193 = load volatile ptr, ptr %192, align 4
  %194 = icmp eq ptr %193, %192
  %195 = getelementptr i8, ptr %193, i32 -20
  %196 = icmp eq ptr %195, null
  %197 = or i1 %194, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %190, %186
  tail call void @kfree(ptr noundef nonnull %55) #11
  br label %205

199:                                              ; preds = %190
  %200 = load i8, ptr %117, align 1
  %201 = and i8 %200, -128
  %202 = zext i8 %201 to i32
  %203 = tail call fastcc i32 @musb_schedule(ptr noundef %5, ptr noundef nonnull %55, i32 noundef %202)
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %199, %198
  %206 = phi ptr [ null, %198 ], [ %55, %199 ]
  %207 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 2
  store ptr %206, ptr %207, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %187) #11
  br label %212

208:                                              ; preds = %199
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %187) #11
  br label %209

209:                                              ; preds = %208, %111
  %210 = phi i32 [ -90, %111 ], [ %203, %208 ]
  %211 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #11
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %0, ptr noundef %1) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %211) #11
  tail call void @kfree(ptr noundef nonnull %55) #11
  br label %212

212:                                              ; preds = %209, %205, %57, %41, %36, %11, %3
  %213 = phi i32 [ -12, %57 ], [ -19, %11 ], [ -19, %3 ], [ 0, %41 ], [ %210, %209 ], [ %34, %36 ], [ 0, %205 ]
  ret i32 %213
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_urb_dequeue(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 128
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_urb_deq, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %3
  %12 = tail call ptr @llvm.thread.pointer() #11
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 5
  %16 = getelementptr i32, ptr @__cpu_online_mask, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %14, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !26
  %23 = tail call i32 @__traceiter_musb_urb_deq(ptr noundef null, ptr noundef %5, ptr noundef %1) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !27
  br label %24

24:                                               ; preds = %22, %11, %3
  %25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #11
  %26 = tail call i32 @usb_hcd_check_unlink_urb(ptr noundef %0, ptr noundef %1, i32 noundef %2) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %66

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %66, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.musb_qh, ptr %30, i32 0, i32 12
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 5, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %30, align 4
  %40 = getelementptr inbounds %struct.usb_host_endpoint, ptr %39, i32 0, i32 4
  %41 = icmp eq ptr %38, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.musb_qh, ptr %30, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq i32 %8, 0
  %46 = getelementptr inbounds %struct.musb_hw_ep, ptr %44, i32 0, i32 11
  %47 = getelementptr inbounds %struct.musb_hw_ep, ptr %44, i32 0, i32 12
  %48 = select i1 %45, ptr %47, ptr %46
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %30
  br i1 %50, label %64, label %52

51:                                               ; preds = %32
  store i8 0, ptr %33, align 1
  tail call fastcc void @musb_giveback(ptr noundef %5, ptr noundef %1, i32 noundef 0)
  store i8 0, ptr %33, align 1
  br label %66

52:                                               ; preds = %42, %36
  store i8 0, ptr %33, align 1
  tail call fastcc void @musb_giveback(ptr noundef %5, ptr noundef %1, i32 noundef 0)
  store i8 %34, ptr %33, align 1
  %53 = load ptr, ptr %30, align 4
  %54 = getelementptr inbounds %struct.usb_host_endpoint, ptr %53, i32 0, i32 4
  %55 = load volatile ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %54
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.usb_host_endpoint, ptr %53, i32 0, i32 5
  store ptr null, ptr %58, align 4
  %59 = getelementptr inbounds %struct.musb_qh, ptr %30, i32 0, i32 3
  %60 = getelementptr inbounds %struct.musb_qh, ptr %30, i32 0, i32 3, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = load ptr, ptr %59, align 4
  %63 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  store ptr %61, ptr %63, align 4
  store volatile ptr %62, ptr %61, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %59, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %60, align 4
  tail call void @kfree(ptr noundef nonnull %30) #11
  br label %66

64:                                               ; preds = %42
  %65 = tail call fastcc i32 @musb_cleanup_urb(ptr noundef %1, ptr noundef nonnull %30)
  br label %66

66:                                               ; preds = %64, %57, %52, %51, %28, %24
  %67 = phi i32 [ %26, %24 ], [ %65, %64 ], [ 0, %28 ], [ 0, %57 ], [ 0, %52 ], [ 0, %51 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %25) #11
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_map_urb_for_dma(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 10
  %7 = load i16, ptr %6, align 8
  %8 = icmp ult i16 %7, 1824
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = tail call i32 @usb_hcd_map_urb_for_dma(ptr noundef %0, ptr noundef %1, i32 noundef %2) #11
  br label %78

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 18
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 16
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %48

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %48, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %25 = load ptr, ptr %24, align 4
  %26 = ptrtoint ptr %25 to i32
  %27 = and i32 %26, 3
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %48, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 13
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %21, 11
  %33 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %32, i32 noundef %2) #14
  %34 = icmp eq ptr %33, null
  br i1 %34, label %78, label %35

35:                                               ; preds = %29
  %36 = and i32 %31, 512
  %37 = icmp eq i32 %36, 0
  store ptr %33, ptr %33, align 64
  %38 = load ptr, ptr %24, align 4
  %39 = getelementptr inbounds %struct.musb_temp_buffer, ptr %33, i32 0, i32 1
  store ptr %38, ptr %39, align 4
  br i1 %37, label %40, label %44

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.musb_temp_buffer, ptr %33, i32 0, i32 2
  %42 = load ptr, ptr %24, align 4
  %43 = load i32, ptr %20, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %41, ptr align 1 %42, i32 %43, i1 false) #11
  br label %44

44:                                               ; preds = %40, %35
  %45 = getelementptr inbounds %struct.musb_temp_buffer, ptr %33, i32 0, i32 2
  store ptr %45, ptr %24, align 4
  %46 = load i32, ptr %30, align 4
  %47 = or i32 %46, 8388608
  store i32 %47, ptr %30, align 4
  br label %48

48:                                               ; preds = %44, %23, %19, %15, %11
  %49 = tail call i32 @usb_hcd_map_urb_for_dma(ptr noundef %0, ptr noundef %1, i32 noundef %2) #11
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %78, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 13
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 8388608
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %78, label %56

56:                                               ; preds = %51
  %57 = and i32 %53, 512
  %58 = icmp eq i32 %57, 0
  %59 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i8, ptr %60, i32 -8
  br i1 %58, label %72, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %64 = load i32, ptr %63, align 4
  %65 = icmp ult i32 %64, 1073741824
  %66 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %67 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 20
  %68 = select i1 %65, ptr %66, ptr %67
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr i8, ptr %60, i32 -4
  %71 = load ptr, ptr %70, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %71, ptr align 4 %60, i32 %69, i1 false) #11
  br label %72

72:                                               ; preds = %62, %56
  %73 = getelementptr i8, ptr %60, i32 -4
  %74 = load ptr, ptr %73, align 4
  store ptr %74, ptr %59, align 4
  %75 = load ptr, ptr %61, align 4
  tail call void @kfree(ptr noundef %75) #11
  %76 = load i32, ptr %52, align 4
  %77 = and i32 %76, -8388609
  store i32 %77, ptr %52, align 4
  br label %78

78:                                               ; preds = %72, %51, %48, %29, %9
  %79 = phi i32 [ %10, %9 ], [ 0, %48 ], [ -12, %29 ], [ %49, %51 ], [ %49, %72 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @musb_unmap_urb_for_dma(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %4 = load ptr, ptr %3, align 8
  tail call void @usb_hcd_unmap_urb_for_dma(ptr noundef %0, ptr noundef %1) #11
  %5 = getelementptr inbounds %struct.musb, ptr %4, i32 0, i32 10
  %6 = load i16, ptr %5, align 8
  %7 = icmp ult i16 %6, 1824
  br i1 %7, label %35, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 13
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 8388608
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %35, label %13

13:                                               ; preds = %8
  %14 = and i32 %10, 512
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 -8
  br i1 %15, label %29, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %21, 1073741824
  %23 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %24 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 20
  %25 = select i1 %22, ptr %23, ptr %24
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr i8, ptr %17, i32 -4
  %28 = load ptr, ptr %27, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %28, ptr align 4 %17, i32 %26, i1 false) #11
  br label %29

29:                                               ; preds = %19, %13
  %30 = getelementptr i8, ptr %17, i32 -4
  %31 = load ptr, ptr %30, align 4
  store ptr %31, ptr %16, align 4
  %32 = load ptr, ptr %18, align 4
  tail call void @kfree(ptr noundef %32) #11
  %33 = load i32, ptr %9, align 4
  %34 = and i32 %33, -8388609
  store i32 %34, ptr %9, align 4
  br label %35

35:                                               ; preds = %29, %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @musb_h_disable(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 2
  %4 = load i8, ptr %3, align 2
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #11
  %8 = getelementptr inbounds %struct.usb_host_endpoint, ptr %1, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %70, label %11

11:                                               ; preds = %2
  %12 = and i8 %4, -128
  %13 = getelementptr inbounds %struct.musb_qh, ptr %9, i32 0, i32 12
  store i8 0, ptr %13, align 1
  %14 = getelementptr inbounds %struct.musb_qh, ptr %9, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = zext i8 %12 to i32
  %17 = icmp eq i8 %12, 0
  %18 = getelementptr inbounds %struct.musb_hw_ep, ptr %15, i32 0, i32 11
  %19 = getelementptr inbounds %struct.musb_hw_ep, ptr %15, i32 0, i32 12
  %20 = select i1 %17, ptr %19, ptr %18
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %9
  br i1 %22, label %27, label %23

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.usb_host_endpoint, ptr %1, i32 0, i32 4
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %64, label %55

27:                                               ; preds = %11
  %28 = load ptr, ptr %9, align 4
  %29 = getelementptr inbounds %struct.usb_host_endpoint, ptr %28, i32 0, i32 4
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  %32 = getelementptr i8, ptr %30, i32 -20
  %33 = select i1 %31, ptr null, ptr %32
  %34 = getelementptr inbounds %struct.urb, ptr %33, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.urb, ptr %33, i32 0, i32 12
  store i32 -108, ptr %38, align 4
  br label %39

39:                                               ; preds = %37, %27
  %40 = tail call fastcc i32 @musb_cleanup_urb(ptr noundef %33, ptr noundef nonnull %9)
  %41 = getelementptr inbounds %struct.usb_host_endpoint, ptr %1, i32 0, i32 4
  %42 = load volatile ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %41
  br i1 %43, label %70, label %44

44:                                               ; preds = %44, %39
  %45 = load ptr, ptr %9, align 4
  %46 = getelementptr inbounds %struct.usb_host_endpoint, ptr %45, i32 0, i32 4
  %47 = load volatile ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, %46
  %49 = getelementptr i8, ptr %47, i32 -20
  %50 = select i1 %48, ptr null, ptr %49
  %51 = getelementptr inbounds %struct.urb, ptr %50, i32 0, i32 12
  store i32 -108, ptr %51, align 4
  %52 = load ptr, ptr %14, align 4
  tail call fastcc void @musb_advance_schedule(ptr noundef %6, ptr noundef %50, ptr noundef %52, i32 noundef %16)
  %53 = load volatile ptr, ptr %41, align 4
  %54 = icmp eq ptr %53, %41
  br i1 %54, label %70, label %44

55:                                               ; preds = %55, %23
  %56 = load ptr, ptr %9, align 4
  %57 = getelementptr inbounds %struct.usb_host_endpoint, ptr %56, i32 0, i32 4
  %58 = load volatile ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, %57
  %60 = getelementptr i8, ptr %58, i32 -20
  %61 = select i1 %59, ptr null, ptr %60
  tail call fastcc void @musb_giveback(ptr noundef %6, ptr noundef %61, i32 noundef -108)
  %62 = load volatile ptr, ptr %24, align 4
  %63 = icmp eq ptr %62, %24
  br i1 %63, label %64, label %55

64:                                               ; preds = %55, %23
  store ptr null, ptr %8, align 4
  %65 = getelementptr inbounds %struct.musb_qh, ptr %9, i32 0, i32 3
  %66 = getelementptr inbounds %struct.musb_qh, ptr %9, i32 0, i32 3, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = load ptr, ptr %65, align 4
  %69 = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  store ptr %67, ptr %69, align 4
  store volatile ptr %68, ptr %67, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %65, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %66, align 4
  tail call void @kfree(ptr noundef nonnull %9) #11
  br label %70

70:                                               ; preds = %64, %44, %39, %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_hub_status_data(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_hub_control(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_bus_suspend(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @musb_port_suspend(ptr noundef %3, i1 noundef zeroext true) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %42

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 44
  %8 = load i8, ptr %7, align 8, !range !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %42, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 31
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.usb_phy, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.usb_otg, ptr %14, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  switch i32 %16, label %29 [
    i32 10, label %42
    i32 7, label %17
  ]

17:                                               ; preds = %10
  %18 = load ptr, ptr @musb_readb, align 4
  %19 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 27
  %20 = load ptr, ptr %19, align 8
  %21 = tail call zeroext i8 %18(ptr noundef %20, i32 noundef 96) #11
  %22 = and i8 %21, 24
  %23 = icmp eq i8 %22, 24
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load ptr, ptr %11, align 4
  %26 = getelementptr inbounds %struct.usb_phy, ptr %25, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.usb_otg, ptr %27, i32 0, i32 5
  store i32 8, ptr %28, align 4
  br label %29

29:                                               ; preds = %24, %17, %10
  %30 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 47
  %31 = load i24, ptr %30, align 4
  %32 = and i24 %31, 4
  %33 = icmp eq i24 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr %11, align 4
  %36 = getelementptr inbounds %struct.usb_phy, ptr %35, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.usb_otg, ptr %37, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = tail call ptr @usb_otg_state_string(i32 noundef %39) #11
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @__func__.musb_bus_suspend, i32 noundef 2522, ptr noundef %40) #12
  br label %42

42:                                               ; preds = %34, %29, %10, %6, %1
  %43 = phi i32 [ -16, %34 ], [ %4, %1 ], [ 0, %6 ], [ 0, %10 ], [ 0, %29 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_bus_resume(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 55
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.musb_hdrc_config, ptr %5, i32 0, i32 2
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void @musb_port_reset(ptr noundef %3, i1 noundef zeroext false) #11
  br label %13

13:                                               ; preds = %12, %7, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_link_urb_to_ep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @musb_schedule(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %1, align 4
  %7 = getelementptr inbounds %struct.usb_host_endpoint, ptr %6, i32 0, i32 4
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  %10 = getelementptr i8, ptr %8, i32 -20
  %11 = select i1 %9, ptr null, ptr %10
  br label %12

12:                                               ; preds = %5, %3
  %13 = phi ptr [ null, %3 ], [ %11, %5 ]
  %14 = getelementptr inbounds %struct.musb_qh, ptr %1, i32 0, i32 13
  %15 = load i8, ptr %14, align 2
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 17
  %19 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 35
  br label %139

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 35
  %22 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 38
  %23 = load i8, ptr %22, align 8
  %24 = icmp ugt i8 %23, 1
  br i1 %24, label %25, label %98

25:                                               ; preds = %20
  %26 = getelementptr %struct.musb, ptr %0, i32 0, i32 35, i32 1
  %27 = icmp eq i32 %2, 0
  %28 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 16
  %29 = getelementptr inbounds %struct.musb_qh, ptr %1, i32 0, i32 16
  %30 = getelementptr inbounds %struct.musb_qh, ptr %1, i32 0, i32 15
  %31 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 8
  %32 = zext i1 %27 to i32
  %33 = getelementptr inbounds %struct.musb_qh, ptr %1, i32 0, i32 14
  br label %34

34:                                               ; preds = %87, %25
  %35 = phi ptr [ %26, %25 ], [ %92, %87 ]
  %36 = phi i32 [ 1, %25 ], [ %91, %87 ]
  %37 = phi i32 [ -1, %25 ], [ %89, %87 ]
  %38 = phi i32 [ 4096, %25 ], [ %88, %87 ]
  %39 = getelementptr inbounds %struct.musb_hw_ep, ptr %35, i32 0, i32 11
  %40 = getelementptr inbounds %struct.musb_hw_ep, ptr %35, i32 0, i32 12
  %41 = select i1 %27, ptr %40, ptr %39
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %87

44:                                               ; preds = %34
  %45 = load ptr, ptr %28, align 4
  %46 = icmp eq ptr %35, %45
  br i1 %46, label %87, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.musb_hw_ep, ptr %35, i32 0, i32 8
  %49 = getelementptr inbounds %struct.musb_hw_ep, ptr %35, i32 0, i32 7
  %50 = select i1 %27, ptr %49, ptr %48
  %51 = load i16, ptr %50, align 2
  %52 = zext i16 %51 to i32
  %53 = load i16, ptr %29, align 2
  %54 = zext i16 %53 to i32
  %55 = load i8, ptr %30, align 4
  %56 = zext i8 %55 to i32
  %57 = mul nuw nsw i32 %56, %54
  %58 = sub nsw i32 %52, %57
  %59 = icmp sgt i32 %58, -1
  %60 = icmp sgt i32 %38, %58
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %62, label %83

62:                                               ; preds = %47
  %63 = getelementptr %struct.musb_hw_ep, ptr %21, i32 %36
  %64 = load ptr, ptr %31, align 4
  %65 = getelementptr %struct.usb_device, ptr %64, i32 0, i32 10, i32 %32
  %66 = load i32, ptr %65, align 4
  %67 = load i8, ptr %33, align 1
  %68 = load ptr, ptr @musb_readb, align 4
  %69 = getelementptr %struct.musb_hw_ep, ptr %21, i32 %36, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = tail call zeroext i8 %68(ptr noundef %70, i32 noundef 10) #11
  br i1 %27, label %72, label %83

72:                                               ; preds = %62
  %73 = zext i8 %67 to i32
  %74 = load i8, ptr %14, align 2
  %75 = icmp eq i8 %74, 2
  %76 = shl nuw i32 1, %73
  %77 = and i32 %76, %66
  %78 = icmp ne i32 %77, 0
  %79 = select i1 %75, i1 %78, i1 false
  %80 = and i8 %71, 48
  %81 = icmp eq i8 %80, 16
  %82 = select i1 %79, i1 %81, i1 false
  br i1 %82, label %87, label %83

83:                                               ; preds = %72, %62, %47
  %84 = phi i32 [ %38, %47 ], [ %58, %72 ], [ %58, %62 ]
  %85 = phi i32 [ %37, %47 ], [ %36, %72 ], [ %36, %62 ]
  %86 = phi ptr [ %35, %47 ], [ %63, %72 ], [ %63, %62 ]
  br label %87

87:                                               ; preds = %83, %72, %44, %34
  %88 = phi i32 [ %84, %83 ], [ %38, %34 ], [ %38, %44 ], [ %38, %72 ]
  %89 = phi i32 [ %85, %83 ], [ %37, %34 ], [ %37, %44 ], [ %37, %72 ]
  %90 = phi ptr [ %86, %83 ], [ %35, %34 ], [ %35, %44 ], [ %63, %72 ]
  %91 = add nuw nsw i32 %36, 1
  %92 = getelementptr %struct.musb_hw_ep, ptr %90, i32 1
  %93 = load i8, ptr %22, align 8
  %94 = zext i8 %93 to i32
  %95 = icmp ult i32 %91, %94
  br i1 %95, label %34, label %96

96:                                               ; preds = %87
  %97 = icmp slt i32 %89, 0
  br i1 %97, label %98, label %133

98:                                               ; preds = %96, %20
  %99 = load i8, ptr %14, align 2
  %100 = icmp eq i8 %99, 2
  br i1 %100, label %101, label %117

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 16
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq i32 %2, 0
  %105 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 18
  %106 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 19
  %107 = select i1 %104, ptr %106, ptr %105
  %108 = getelementptr inbounds %struct.musb_qh, ptr %1, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %139, label %111

111:                                              ; preds = %101
  %112 = getelementptr inbounds %struct.usb_device, ptr %109, i32 0, i32 4
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, 3
  %115 = select i1 %114, i8 8, i8 4
  %116 = getelementptr inbounds %struct.musb_qh, ptr %1, i32 0, i32 8
  store i8 %115, ptr %116, align 1
  br label %139

117:                                              ; preds = %98
  %118 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %119 = load ptr, ptr %118, align 8
  %120 = icmp ult i8 %99, 4
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = sext i8 %99 to i32
  %123 = getelementptr inbounds [4 x ptr], ptr @switch.table.musb_schedule, i32 0, i32 %122
  %124 = load ptr, ptr %123, align 4
  br label %125

125:                                              ; preds = %121, %117
  %126 = phi ptr [ %124, %121 ], [ @.str.10, %117 ]
  %127 = getelementptr inbounds %struct.musb_qh, ptr %1, i32 0, i32 15
  %128 = load i8, ptr %127, align 4
  %129 = zext i8 %128 to i32
  %130 = getelementptr inbounds %struct.musb_qh, ptr %1, i32 0, i32 16
  %131 = load i16, ptr %130, align 2
  %132 = zext i16 %131 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %119, ptr noundef nonnull @.str.68, ptr noundef nonnull %126, i32 noundef %129, i32 noundef %132) #12
  br label %159

133:                                              ; preds = %96
  %134 = getelementptr inbounds %struct.musb_qh, ptr %1, i32 0, i32 4
  store i8 0, ptr %134, align 4
  %135 = getelementptr %struct.musb_hw_ep, ptr %21, i32 %89
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.69, ptr noundef %1, i32 noundef %89) #11
  %136 = getelementptr inbounds %struct.musb_qh, ptr %1, i32 0, i32 2
  store ptr %135, ptr %136, align 4
  %137 = load ptr, ptr %1, align 4
  %138 = getelementptr inbounds %struct.usb_host_endpoint, ptr %137, i32 0, i32 5
  store ptr %1, ptr %138, align 4
  br label %158

139:                                              ; preds = %111, %101, %17
  %140 = phi ptr [ %19, %17 ], [ %103, %111 ], [ %103, %101 ]
  %141 = phi ptr [ %18, %17 ], [ %107, %111 ], [ %107, %101 ]
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.musb_qh, ptr %1, i32 0, i32 2
  store ptr %140, ptr %144, align 4
  %145 = load ptr, ptr %1, align 4
  %146 = getelementptr inbounds %struct.usb_host_endpoint, ptr %145, i32 0, i32 5
  store ptr %1, ptr %146, align 4
  br label %159

147:                                              ; preds = %139
  %148 = load volatile ptr, ptr %141, align 4
  %149 = icmp eq ptr %148, %141
  %150 = getelementptr inbounds %struct.musb_qh, ptr %1, i32 0, i32 3
  %151 = getelementptr inbounds %struct.list_head, ptr %141, i32 0, i32 1
  %152 = load ptr, ptr %151, align 4
  store ptr %150, ptr %151, align 4
  store ptr %141, ptr %150, align 4
  %153 = getelementptr inbounds %struct.musb_qh, ptr %1, i32 0, i32 3, i32 1
  store ptr %152, ptr %153, align 4
  store volatile ptr %150, ptr %152, align 4
  %154 = getelementptr inbounds %struct.musb_qh, ptr %1, i32 0, i32 4
  store i8 1, ptr %154, align 4
  %155 = getelementptr inbounds %struct.musb_qh, ptr %1, i32 0, i32 2
  store ptr %140, ptr %155, align 4
  %156 = load ptr, ptr %1, align 4
  %157 = getelementptr inbounds %struct.usb_host_endpoint, ptr %156, i32 0, i32 5
  store ptr %1, ptr %157, align 4
  br i1 %149, label %158, label %159

158:                                              ; preds = %147, %133
  tail call fastcc void @musb_start_urb(ptr noundef %0, i32 noundef %2, ptr noundef %1)
  br label %159

159:                                              ; preds = %158, %147, %143, %125
  %160 = phi i32 [ -28, %125 ], [ 0, %158 ], [ 0, %147 ], [ 0, %143 ]
  ret i32 %160
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_urb_enq(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_check_unlink_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @musb_cleanup_urb(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.musb_qh, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.musb_hw_ep, ptr %4, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.musb_hw_ep, ptr %4, i32 0, i32 3
  %9 = load i8, ptr %8, align 4
  %10 = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 27
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 10
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 128
  %15 = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 2, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void %16(ptr noundef %11, i8 noundef zeroext %9) #11
  %17 = icmp ne i32 %14, 0
  %18 = getelementptr inbounds %struct.musb_hw_ep, ptr %4, i32 0, i32 10
  %19 = getelementptr inbounds %struct.musb_hw_ep, ptr %4, i32 0, i32 9
  %20 = select i1 %17, ptr %18, ptr %19
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %2
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr inbounds %struct.musb, ptr %24, i32 0, i32 24
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.dma_controller, ptr %26, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %28(ptr noundef nonnull %21) #11
  %30 = select i1 %17, i32 82, i32 84
  %31 = load i8, ptr %8, align 4
  %32 = zext i8 %31 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %5, ptr noundef nonnull @.str.70, i32 noundef %30, i32 noundef %32, ptr noundef %0, i32 noundef %29) #11
  %33 = getelementptr inbounds %struct.dma_channel, ptr %21, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 20
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, %34
  store i32 %37, ptr %35, align 4
  br label %38

38:                                               ; preds = %23, %2
  %39 = phi i32 [ %29, %23 ], [ 0, %2 ]
  %40 = load i8, ptr %8, align 4
  %41 = icmp ne i8 %40, 0
  %42 = select i1 %41, i1 %17, i1 false
  br i1 %42, label %43, label %60

43:                                               ; preds = %38
  %44 = load ptr, ptr @musb_writew, align 4
  %45 = load ptr, ptr %6, align 4
  tail call void %44(ptr noundef %45, i32 noundef 6, i16 noundef zeroext 17) #11
  %46 = load ptr, ptr @musb_writew, align 4
  %47 = load ptr, ptr %6, align 4
  tail call void %46(ptr noundef %47, i32 noundef 6, i16 noundef zeroext 17) #11
  %48 = load ptr, ptr @musb_readw, align 4
  %49 = load ptr, ptr %6, align 4
  %50 = tail call zeroext i16 %48(ptr noundef %49, i32 noundef 6) #11
  br i1 %22, label %71, label %51

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 3
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.musb_platform_ops, ptr %53, i32 0, i32 30
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %71, label %57

57:                                               ; preds = %51
  %58 = load i8, ptr %8, align 4
  %59 = zext i8 %58 to i32
  tail call void %55(ptr noundef %5, i32 noundef %59) #11
  br label %71

60:                                               ; preds = %38
  %61 = icmp eq i8 %40, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %60
  tail call fastcc void @musb_h_tx_flush_fifo(ptr noundef %4)
  %63 = load ptr, ptr @musb_readw, align 4
  %64 = tail call zeroext i16 %63(ptr noundef %7, i32 noundef 2) #11
  %65 = and i16 %64, 28506
  %66 = load ptr, ptr @musb_writew, align 4
  tail call void %66(ptr noundef %7, i32 noundef 2, i16 noundef zeroext %65) #11
  %67 = load ptr, ptr @musb_writew, align 4
  tail call void %67(ptr noundef %7, i32 noundef 2, i16 noundef zeroext %65) #11
  %68 = load ptr, ptr @musb_readw, align 4
  %69 = tail call zeroext i16 %68(ptr noundef %7, i32 noundef 2) #11
  br label %71

70:                                               ; preds = %60
  tail call fastcc void @musb_h_ep0_flush_fifo(ptr noundef %4)
  br label %71

71:                                               ; preds = %70, %62, %57, %51, %43
  %72 = icmp eq i32 %39, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %71
  %74 = load ptr, ptr %4, align 4
  tail call fastcc void @musb_advance_schedule(ptr noundef %74, ptr noundef %0, ptr noundef %4, i32 noundef %14)
  br label %75

75:                                               ; preds = %73, %71
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_urb_deq(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_map_urb_for_dma(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_port_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_otg_state_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_port_reset(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #10

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i8 0, i8 2}
!10 = !{i64 2154314740}
!11 = !{i64 2154314892}
!12 = !{i64 2154563188}
!13 = !{i64 2154302216}
!14 = !{i64 2154302368}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2154289692}
!17 = !{i64 2154289844}
!18 = !{i64 2148999323}
!19 = !{i64 2148995147}
!20 = !{i64 2148995222, i64 2148995249, i64 2148995296, i64 2148995318, i64 2148995346, i64 2148995366}
!21 = !{i64 2149022326}
!22 = !{i64 2154272969}
!23 = !{i64 2154273127}
!24 = !{i64 2154327302}
!25 = !{i64 2154327456}
!26 = !{i64 2154339910}
!27 = !{i64 2154340064}
