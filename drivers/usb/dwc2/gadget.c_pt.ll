; ModuleID = '/llk/IR/drivers/usb/dwc2/gadget.c_pt.bc'
source_filename = "../drivers/usb/dwc2/gadget.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dwc2_hsotg = type { ptr, ptr, %struct.dwc2_hw_params, %struct.dwc2_core_params, i32, i32, ptr, i32, i8, i8, i8, i16, ptr, ptr, ptr, [2 x %struct.regulator_bulk_data], ptr, ptr, %struct.spinlock, ptr, i32, ptr, ptr, ptr, i8, ptr, %struct.work_struct, %struct.timer_list, i32, %struct.dwc2_gregs_backup, %struct.dwc2_dregs_backup, %struct.dwc2_hregs_backup, ptr, ptr, i8, %union.dwc2_hcd_internal_flags, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i16, [25 x i32], i16, i8, i16, %struct.list_head, i32, i32, i32, [16 x ptr], ptr, i32, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, i8, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i8, i8, i32, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i32], [2 x ptr], i32, ptr, i32, ptr, %struct.usb_gadget, i8, [16 x ptr], [16 x ptr] }
%struct.dwc2_hw_params = type <{ i24, i64, i32, i32, i32, i32, i32, [16 x i32] }>
%struct.dwc2_core_params = type { %struct.usb_otg_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i8, i8, i32, i32, [16 x i32], i8 }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.dwc2_gregs_backup = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.dwc2_dregs_backup = type { i32, i32, i32, i32, i32, [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], i8 }
%struct.dwc2_hregs_backup = type { i32, i32, [16 x i32], i32, i32, i32, i8 }
%union.dwc2_hcd_internal_flags = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
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
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dwc2_hsotg_ep = type { %struct.usb_ep, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i8, i32, i8, i32, ptr, i8, i32, i32, [10 x i8] }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.dwc2_hsotg_req = type { %struct.usb_request, %struct.list_head, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dwc2_dma_desc = type { i32, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dwc2_hsotg_gadget_ops = internal constant %struct.usb_gadget_ops { ptr @dwc2_hsotg_gadget_getframe, ptr null, ptr @dwc2_hsotg_set_selfpowered, ptr @dwc2_hsotg_vbus_session, ptr @dwc2_hsotg_vbus_draw, ptr @dwc2_hsotg_pullup, ptr null, ptr null, ptr @dwc2_hsotg_udc_start, ptr @dwc2_hsotg_udc_stop, ptr @dwc2_gadget_set_speed, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [35 x i8] c"Hardware configuration failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"cannot claim IRQ for gadget\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"wrong number of EPs (zero)\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to allocate ctrl req\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"suspending usb gadget %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"resuming usb gadget %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"%s: no device registers to restore\0A\00", align 1
@__func__.dwc2_restore_device_registers = private unnamed_addr constant [30 x i8] c"dwc2_restore_device_registers\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"%s: failed to backup global registers\0A\00", align 1
@__func__.dwc2_gadget_enter_hibernation = private unnamed_addr constant [30 x i8] c"dwc2_gadget_enter_hibernation\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"%s: failed to restore registers\0A\00", align 1
@__func__.dwc2_gadget_exit_hibernation = private unnamed_addr constant [29 x i8] c"dwc2_gadget_exit_hibernation\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"%s: failed to restore device registers\0A\00", align 1
@__func__.dwc2_gadget_enter_partial_power_down = private unnamed_addr constant [37 x i8] c"dwc2_gadget_enter_partial_power_down\00", align 1
@__func__.dwc2_gadget_exit_partial_power_down = private unnamed_addr constant [36 x i8] c"dwc2_gadget_exit_partial_power_down\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"%s: active request\0A\00", align 1
@__func__.dwc2_hsotg_start_req = private unnamed_addr constant [21 x i8] c"dwc2_hsotg_start_req\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"drivers/usb/dwc2/gadget.c\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"%s: continue different req\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"%s: ep%d is stalled\0A\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"%s: timeout flushing fifo GRSTCTL_TXFFLSH\0A\00", align 1
@__func__.dwc2_hsotg_txfifo_flush = private unnamed_addr constant [24 x i8] c"dwc2_hsotg_txfifo_flush\00", align 1
@dwc2_hsotg_init_fifo.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"insufficient fifo memory\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"%s: timeout flushing fifos (GRSTCTL=%08x)\0A\00", align 1
@__func__.dwc2_hsotg_init_fifo = private unnamed_addr constant [21 x i8] c"dwc2_hsotg_init_fifo\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"%s: failed queue (%d)\0A\00", align 1
@__func__.dwc2_hsotg_enqueue_setup = private unnamed_addr constant [25 x i8] c"dwc2_hsotg_enqueue_setup\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"new address %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"%s: cannot alloc req\0A\00", align 1
@__func__.dwc2_hsotg_send_reply = private unnamed_addr constant [22 x i8] c"dwc2_hsotg_send_reply\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"%s: cannot queue req\0A\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"%s: direction out?\0A\00", align 1
@__func__.dwc2_hsotg_process_req_status = private unnamed_addr constant [30 x i8] c"dwc2_hsotg_process_req_status\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"%s: failed to send reply\0A\00", align 1
@__func__.dwc2_hsotg_process_req_feature = private unnamed_addr constant [31 x i8] c"dwc2_hsotg_process_req_feature\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"%s(ep %p %s, %d)\0A\00", align 1
@__func__.dwc2_hsotg_ep_sethalt = private unnamed_addr constant [22 x i8] c"dwc2_hsotg_ep_sethalt\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"%s: can't clear halt on ep0\0A\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"%s is Isochronous Endpoint\0A\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"req length > maxpacket*mc\0A\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"wrong length %d (maxsize=%d)\0A\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"ISOC OUT: wrong length %d (mps=%d)\0A\00", align 1
@.str.30 = private unnamed_addr constant [49 x i8] c"%s: unable to allocate memory for bounce buffer\0A\00", align 1
@__func__.dwc2_hsotg_handle_unaligned_buf_start = private unnamed_addr constant [38 x i8] c"dwc2_hsotg_handle_unaligned_buf_start\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.31 = private unnamed_addr constant [39 x i8] c"%s: failed to map buffer %p, %d bytes\0A\00", align 1
@__func__.dwc2_hsotg_map_dma = private unnamed_addr constant [19 x i8] c"dwc2_hsotg_map_dma\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"invalid EP 0 state in queue %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"%s: called for ep0\0A\00", align 1
@__func__.dwc2_hsotg_ep_disable = private unnamed_addr constant [22 x i8] c"dwc2_hsotg_ep_disable\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"%s: called in host mode?\0A\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"%s: timeout DIEPINT.NAKEFF\0A\00", align 1
@__func__.dwc2_hsotg_ep_stop_xfr = private unnamed_addr constant [23 x i8] c"dwc2_hsotg_ep_stop_xfr\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"%s: timeout GINTSTS.GINNAKEFF\0A\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"%s: timeout GINTSTS.RXFLVL\0A\00", align 1
@.str.38 = private unnamed_addr constant [32 x i8] c"%s: timeout GINTSTS.GOUTNAKEFF\0A\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"%s: timeout DOEPCTL.EPDisable\0A\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"\013%s: called with no device\0A\00", align 1
@__func__.dwc2_hsotg_udc_start = private unnamed_addr constant [21 x i8] c"dwc2_hsotg_udc_start\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"%s: no driver\0A\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"%s: bad speed\0A\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"%s: missing entry points\0A\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"bound driver %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"invalid speed (%d)\0A\00", align 1
@.str.46 = private unnamed_addr constant [40 x i8] c"EPs: %d, %s fifos, %d entries in SPRAM\0A\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"dedicated\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"GINNakEff triggered\0A\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"new device is %s\0A\00", align 1
@.str.51 = private unnamed_addr constant [21 x i8] c"ep%d: bad mps of %d\0A\00", align 1
@.str.52 = private unnamed_addr constant [40 x i8] c"%s:Interrupt for unconfigured ep%d(%s)\0A\00", align 1
@__func__.dwc2_hsotg_epint = private unnamed_addr constant [17 x i8] c"dwc2_hsotg_epint\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@dwc2_hsotg_epint.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"%s: ep%d: INTknEP\0A\00", align 1
@.str.56 = private unnamed_addr constant [25 x i8] c"%s: ISOC EP queue empty\0A\00", align 1
@__func__.dwc2_gadget_complete_isoc_request_ddma = private unnamed_addr constant [39 x i8] c"dwc2_gadget_complete_isoc_request_ddma\00", align 1
@.str.57 = private unnamed_addr constant [31 x i8] c"error parsing DDMA results %d\0A\00", align 1
@.str.58 = private unnamed_addr constant [30 x i8] c"descriptor %d closed with %x\0A\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"%s: unknown status %08x\0A\00", align 1
@__func__.dwc2_hsotg_handle_rx = private unnamed_addr constant [21 x i8] c"dwc2_hsotg_handle_rx\00", align 1
@dwc2_hsotg_rx_data.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.60 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"ep%d%s\00", align 1
@dwc2_hsotg_ep_ops = internal constant %struct.usb_ep_ops { ptr @dwc2_hsotg_ep_enable, ptr @dwc2_hsotg_ep_disable_lock, ptr null, ptr @dwc2_hsotg_ep_alloc_request, ptr @dwc2_hsotg_ep_free_request, ptr @dwc2_hsotg_ep_queue_lock, ptr @dwc2_hsotg_ep_dequeue, ptr @dwc2_hsotg_ep_sethalt_lock, ptr @dwc2_gadget_ep_set_wedge, ptr null, ptr null }, align 4
@.str.62 = private unnamed_addr constant [21 x i8] c"%s: called for EP 0\0A\00", align 1
@__func__.dwc2_hsotg_ep_enable = private unnamed_addr constant [21 x i8] c"dwc2_hsotg_ep_enable\00", align 1
@.str.63 = private unnamed_addr constant [25 x i8] c"%s: direction mismatch!\0A\00", align 1
@.str.64 = private unnamed_addr constant [48 x i8] c"%s: ISOC IN, DDMA: bInterval>10 not supported!\0A\00", align 1
@.str.65 = private unnamed_addr constant [39 x i8] c"%s: ISOC OUT, DDMA: HB not supported!\0A\00", align 1
@.str.66 = private unnamed_addr constant [28 x i8] c"%s: No suitable fifo found\0A\00", align 1
@switch.table.dwc2_hsotg_core_init_disconnected = private unnamed_addr constant [8 x i32] [i32 -2080342013, i32 -2080342014, i32 -2080342016, i32 -2080342015, i32 -2080342016, i32 -2080342016, i32 -2080342016, i32 -2080342016], align 4
@switch.table.dwc2_hsotg_core_init_disconnected.67 = private unnamed_addr constant [8 x i32] [i32 32771, i32 32770, i32 32768, i32 32769, i32 32768, i32 32768, i32 32768, i32 32768], align 4
@switch.table.dwc2_hsotg_irq = private unnamed_addr constant [4 x i32] [i32 3, i32 2, i32 1, i32 2], align 4
@switch.table.dwc2_hsotg_irq.68 = private unnamed_addr constant [4 x i32] [i32 64, i32 64, i32 8, i32 64], align 4
@switch.table.dwc2_hsotg_irq.69 = private unnamed_addr constant [4 x i32] [i32 1024, i32 1023, i32 8, i32 1023], align 4
@switch.table.dwc2_hsotg_set_ep_maxpacket = private unnamed_addr constant [8 x i32] [i32 3, i32 2, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0], align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @dwc2_hsotg_tx_fifo_count(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 128
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 26
  br label %13

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 4
  %12 = load i32, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi i32 [ %9, %6 ], [ %12, %10 ]
  %15 = and i32 %14, 15
  ret i32 %15
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @dwc2_hsotg_tx_fifo_total_depth(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 1
  %3 = load i64, ptr %2, align 4
  %4 = trunc i64 %3 to i32
  %5 = lshr i32 %4, 16
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 44
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 @llvm.umin.i32(i32 %5, i32 %7)
  %9 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %10, 4
  %12 = and i32 %11, 65535
  %13 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 43
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %8
  %16 = icmp sgt i32 %12, %15
  %17 = sub i32 %12, %15
  %18 = select i1 %16, i32 %17, i32 0
  ret i32 %18
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @dwc2_hsotg_tx_fifo_average_depth(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 1
  %3 = load i64, ptr %2, align 4
  %4 = trunc i64 %3 to i32
  %5 = lshr i32 %4, 16
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 44
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 @llvm.umin.i32(i32 %5, i32 %7) #14
  %9 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %10, 4
  %12 = and i32 %11, 65535
  %13 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 43
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %8
  %16 = icmp sgt i32 %12, %15
  %17 = sub i32 %12, %15
  %18 = select i1 %16, i32 %17, i32 0
  %19 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 128
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 3
  %25 = load i32, ptr %24, align 8
  %26 = lshr i32 %25, 26
  br label %27

27:                                               ; preds = %23, %1
  %28 = phi i32 [ %26, %23 ], [ %10, %1 ]
  %29 = and i32 %28, 15
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = sdiv i32 %18, %29
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi i32 [ %32, %31 ], [ %18, %27 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_hsotg_set_test_mode(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 2052
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %7 = add i32 %1, -1
  %8 = icmp ult i32 %7, 5
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %11 = load i8, ptr %10, align 8, !range !10
  %12 = icmp eq i8 %11, 0
  %13 = tail call i32 @llvm.bswap.i32(i32 %6) #14
  %14 = select i1 %12, i32 %6, i32 %13
  %15 = and i32 %14, -113
  %16 = shl nuw nsw i32 %1, 4
  %17 = or i32 %15, %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %12, label %22, label %18

18:                                               ; preds = %9
  %19 = tail call i32 @llvm.bswap.i32(i32 %17) #14
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr i8, ptr %20, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #14, !srcloc !11
  br label %25

22:                                               ; preds = %9
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr i8, ptr %23, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %17) #14, !srcloc !11
  br label %25

25:                                               ; preds = %22, %18, %2
  %26 = phi i32 [ -22, %2 ], [ 0, %18 ], [ 0, %22 ]
  ret i32 %26
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_writel(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %5 = load i8, ptr %4, align 8, !range !10
  %6 = icmp eq i8 %5, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @llvm.bswap.i32(i32 %1)
  %9 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %8) #14, !srcloc !11
  br label %16

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %1) #14, !srcloc !11
  br label %16

16:                                               ; preds = %12, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_hsotg_disconnect(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 86
  %3 = load i8, ptr %2, align 8
  %4 = and i8 %3, 2
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %50, label %6

6:                                                ; preds = %1
  %7 = and i8 %3, -3
  store i8 %7, ptr %2, align 8
  %8 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 78
  store i8 0, ptr %8, align 1
  %9 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 70
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %23, %6
  %13 = phi i32 [ %24, %23 ], [ 0, %6 ]
  %14 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 87, i32 %13
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call fastcc void @kill_all_requests(ptr noundef %0, ptr noundef nonnull %15, i32 noundef -108)
  br label %18

18:                                               ; preds = %17, %12
  %19 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 88, i32 %13
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call fastcc void @kill_all_requests(ptr noundef %0, ptr noundef nonnull %20, i32 noundef -108)
  br label %23

23:                                               ; preds = %22, %18
  %24 = add nuw nsw i32 %13, 1
  %25 = load i8, ptr %9, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %12, label %28

28:                                               ; preds = %23, %6
  %29 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 85
  %30 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 85, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 67
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.usb_gadget_driver, ptr %35, i32 0, i32 5
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  %43 = load i16, ptr %42, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %42, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  %45 = load ptr, ptr %34, align 4
  %46 = getelementptr inbounds %struct.usb_gadget_driver, ptr %45, i32 0, i32 5
  %47 = load ptr, ptr %46, align 4
  tail call void %47(ptr noundef %29) #14
  tail call void @_raw_spin_lock(ptr noundef %42) #14
  br label %48

48:                                               ; preds = %41, %37, %33, %28
  %49 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 28
  store i32 3, ptr %49, align 8
  tail call void @usb_gadget_set_state(ptr noundef %29, i32 noundef 0) #14
  br label %50

50:                                               ; preds = %48, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @kill_all_requests(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 3
  store ptr null, ptr %4, align 4
  %5 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 1
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %15, label %8

8:                                                ; preds = %8, %3
  %9 = load volatile ptr, ptr %5, align 4
  %10 = icmp eq ptr %9, %5
  %11 = getelementptr i8, ptr %9, i32 -56
  %12 = select i1 %10, ptr null, ptr %11
  tail call fastcc void @dwc2_hsotg_complete_request(ptr noundef %0, ptr noundef %1, ptr noundef %12, i32 noundef %2)
  %13 = load volatile ptr, ptr %5, align 4
  %14 = icmp eq ptr %13, %5
  br i1 %14, label %15, label %8

15:                                               ; preds = %8, %3
  %16 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 69
  %17 = load i8, ptr %16, align 4
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %58, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 10
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = shl nuw nsw i32 %23, 5
  %25 = add nuw nsw i32 %24, 2328
  %26 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 %25
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %30 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %31 = load i8, ptr %30, align 8, !range !10
  %32 = icmp eq i8 %31, 0
  %33 = tail call i32 @llvm.bswap.i32(i32 %29) #14
  %34 = select i1 %32, i32 %29, i32 %33
  %35 = shl i32 %34, 2
  %36 = and i32 %35, 262140
  %37 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 9
  %38 = load i16, ptr %37, align 4
  %39 = zext i16 %38 to i32
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %20
  %42 = load i16, ptr %21, align 2
  %43 = zext i16 %42 to i32
  %44 = shl nuw nsw i32 %43, 6
  %45 = or i32 %44, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %32, label %50, label %46

46:                                               ; preds = %41
  %47 = tail call i32 @llvm.bswap.i32(i32 %45) #14
  %48 = load ptr, ptr %26, align 4
  %49 = getelementptr i8, ptr %48, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #14, !srcloc !11
  br label %53

50:                                               ; preds = %41
  %51 = load ptr, ptr %26, align 4
  %52 = getelementptr i8, ptr %51, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %45) #14, !srcloc !11
  br label %53

53:                                               ; preds = %50, %46
  %54 = tail call i32 @dwc2_hsotg_wait_bit_clear(ptr noundef %0, i32 noundef 16, i32 noundef 32, i32 noundef 100) #14
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %57, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.dwc2_hsotg_txfifo_flush) #15
  br label %58

58:                                               ; preds = %56, %53, %20, %15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_set_state(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_hsotg_core_init_disconnected(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 88
  %4 = load ptr, ptr %3, align 4
  tail call fastcc void @kill_all_requests(ptr noundef %0, ptr noundef %4, i32 noundef -104)
  br i1 %1, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 70
  %7 = load i8, ptr %6, align 1
  %8 = icmp ugt i8 %7, 1
  br i1 %8, label %12, label %30

9:                                                ; preds = %2
  %10 = tail call i32 @dwc2_core_reset(ptr noundef %0, i1 noundef zeroext true) #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %51, label %544

12:                                               ; preds = %25, %5
  %13 = phi i32 [ %26, %25 ], [ 1, %5 ]
  %14 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 87, i32 %13
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = tail call fastcc i32 @dwc2_hsotg_ep_disable(ptr noundef nonnull %15)
  br label %19

19:                                               ; preds = %17, %12
  %20 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 88, i32 %13
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call fastcc i32 @dwc2_hsotg_ep_disable(ptr noundef nonnull %21)
  br label %25

25:                                               ; preds = %23, %19
  %26 = add nuw nsw i32 %13, 1
  %27 = load i8, ptr %6, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp ult i32 %26, %28
  br i1 %29, label %12, label %30

30:                                               ; preds = %25, %5
  %31 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 12
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %35 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %36 = load i8, ptr %35, align 8, !range !10
  %37 = icmp eq i8 %36, 0
  %38 = tail call i32 @llvm.bswap.i32(i32 %34) #14
  %39 = select i1 %37, i32 %34, i32 %38
  %40 = and i32 %39, -776
  %41 = or i32 %40, 7
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %37, label %46, label %42

42:                                               ; preds = %30
  %43 = tail call i32 @llvm.bswap.i32(i32 %41) #14
  %44 = load ptr, ptr %31, align 4
  %45 = getelementptr i8, ptr %44, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #14, !srcloc !11
  br label %49

46:                                               ; preds = %30
  %47 = load ptr, ptr %31, align 4
  %48 = getelementptr i8, ptr %47, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %41) #14, !srcloc !11
  br label %49

49:                                               ; preds = %46, %42
  %50 = tail call i32 @dwc2_phy_init(ptr noundef %0, i1 noundef zeroext true) #14
  tail call fastcc void @dwc2_hsotg_init_fifo(ptr noundef %0)
  br label %89

51:                                               ; preds = %9
  %52 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 12
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %56 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %57 = load i8, ptr %56, align 8, !range !10
  %58 = icmp eq i8 %57, 0
  %59 = tail call i32 @llvm.bswap.i32(i32 %55) #14
  %60 = select i1 %58, i32 %55, i32 %59
  %61 = and i32 %60, -776
  %62 = or i32 %61, 7
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %58, label %67, label %63

63:                                               ; preds = %51
  %64 = tail call i32 @llvm.bswap.i32(i32 %62) #14
  %65 = load ptr, ptr %52, align 4
  %66 = getelementptr i8, ptr %65, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #14, !srcloc !11
  br label %70

67:                                               ; preds = %51
  %68 = load ptr, ptr %52, align 4
  %69 = getelementptr i8, ptr %68, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %62) #14, !srcloc !11
  br label %70

70:                                               ; preds = %67, %63
  %71 = tail call i32 @dwc2_phy_init(ptr noundef %0, i1 noundef zeroext true) #14
  tail call fastcc void @dwc2_hsotg_init_fifo(ptr noundef %0)
  %72 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr i8, ptr %73, i32 2052
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %76 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %77 = load i8, ptr %76, align 8, !range !10
  %78 = icmp eq i8 %77, 0
  %79 = tail call i32 @llvm.bswap.i32(i32 %75) #14
  %80 = select i1 %78, i32 %75, i32 %79
  %81 = or i32 %80, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %78, label %86, label %82

82:                                               ; preds = %70
  %83 = tail call i32 @llvm.bswap.i32(i32 %81) #14
  %84 = load ptr, ptr %72, align 4
  %85 = getelementptr i8, ptr %84, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %83) #14, !srcloc !11
  br label %89

86:                                               ; preds = %70
  %87 = load ptr, ptr %72, align 4
  %88 = getelementptr i8, ptr %87, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %81) #14, !srcloc !11
  br label %89

89:                                               ; preds = %86, %82, %49
  %90 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 2
  %91 = load i8, ptr %90, align 1
  switch i8 %91, label %97 [
    i8 2, label %98
    i8 1, label %92
  ]

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 1
  %94 = load i8, ptr %93, align 2
  %95 = icmp eq i8 %94, 0
  %96 = select i1 %95, i32 262147, i32 262145
  br label %98

97:                                               ; preds = %89
  br label %98

98:                                               ; preds = %97, %92, %89
  %99 = phi i32 [ 262144, %97 ], [ 262146, %89 ], [ %96, %92 ]
  %100 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 25
  %101 = load i8, ptr %100, align 1, !range !10
  %102 = icmp eq i8 %101, 0
  %103 = or i32 %99, 131072
  %104 = select i1 %102, i32 %99, i32 %103
  %105 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %106 = load i8, ptr %105, align 8, !range !10
  %107 = icmp eq i8 %106, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %107, label %113, label %108

108:                                              ; preds = %98
  %109 = tail call i32 @llvm.bswap.i32(i32 %104) #14
  %110 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr i8, ptr %111, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %109) #14, !srcloc !11
  br label %117

113:                                              ; preds = %98
  %114 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr i8, ptr %115, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %104) #14, !srcloc !11
  br label %117

117:                                              ; preds = %113, %108
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  %118 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr i8, ptr %119, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 -1) #14
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  %121 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr i8, ptr %122, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 -1) #14
  %124 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 42
  %125 = load i8, ptr %124, align 1, !range !10
  %126 = icmp eq i8 %125, 0
  %127 = select i1 %126, i32 -927974204, i32 -931119932
  %128 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 14
  %129 = load i8, ptr %128, align 1, !range !10
  %130 = icmp eq i8 %129, 0
  %131 = or i32 %127, 268435456
  %132 = select i1 %130, i32 %131, i32 %127
  %133 = load i8, ptr %105, align 8, !range !10
  %134 = icmp eq i8 %133, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %134, label %140, label %135

135:                                              ; preds = %117
  %136 = tail call i32 @llvm.bswap.i32(i32 %132) #14
  %137 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr i8, ptr %138, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %136) #14, !srcloc !11
  br label %144

140:                                              ; preds = %117
  %141 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr i8, ptr %142, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %132) #14, !srcloc !11
  br label %144

144:                                              ; preds = %140, %135
  %145 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 41
  %146 = load i8, ptr %145, align 8, !range !10
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %183, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 28
  %150 = load i32, ptr %149, align 8
  %151 = or i32 %150, 33
  %152 = load i8, ptr %105, align 8, !range !10
  %153 = icmp eq i8 %152, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %153, label %159, label %154

154:                                              ; preds = %148
  %155 = tail call i32 @llvm.bswap.i32(i32 %151) #14
  %156 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr i8, ptr %157, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 %155) #14, !srcloc !11
  br label %163

159:                                              ; preds = %148
  %160 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr i8, ptr %161, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %151) #14, !srcloc !11
  br label %163

163:                                              ; preds = %159, %154
  %164 = load i8, ptr %124, align 1, !range !10
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %200, label %166

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr i8, ptr %168, i32 2048
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %169) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %171 = load i8, ptr %105, align 8, !range !10
  %172 = icmp eq i8 %171, 0
  %173 = tail call i32 @llvm.bswap.i32(i32 %170) #14
  %174 = select i1 %172, i32 %170, i32 %173
  %175 = or i32 %174, 8388608
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %172, label %180, label %176

176:                                              ; preds = %166
  %177 = tail call i32 @llvm.bswap.i32(i32 %175) #14
  %178 = load ptr, ptr %167, align 4
  %179 = getelementptr i8, ptr %178, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %179, i32 %177) #14, !srcloc !11
  br label %200

180:                                              ; preds = %166
  %181 = load ptr, ptr %167, align 4
  %182 = getelementptr i8, ptr %181, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %182, i32 %175) #14, !srcloc !11
  br label %200

183:                                              ; preds = %144
  %184 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 69
  %185 = load i8, ptr %184, align 4
  %186 = and i8 %185, 1
  %187 = icmp eq i8 %186, 0
  %188 = select i1 %187, i32 1, i32 385
  %189 = load i8, ptr %105, align 8, !range !10
  %190 = icmp eq i8 %189, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %190, label %196, label %191

191:                                              ; preds = %183
  %192 = tail call i32 @llvm.bswap.i32(i32 %188) #14
  %193 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %194 = load ptr, ptr %193, align 4
  %195 = getelementptr i8, ptr %194, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %195, i32 %192) #14, !srcloc !11
  br label %200

196:                                              ; preds = %183
  %197 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %198 = load ptr, ptr %197, align 4
  %199 = getelementptr i8, ptr %198, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %199, i32 %188) #14, !srcloc !11
  br label %200

200:                                              ; preds = %196, %191, %180, %176, %163
  %201 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 69
  %202 = load i8, ptr %201, align 4
  %203 = and i8 %202, 1
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %209, label %205

205:                                              ; preds = %200
  %206 = load i8, ptr %145, align 8, !range !10
  %207 = icmp eq i8 %206, 0
  %208 = select i1 %207, i32 159, i32 15
  br label %209

209:                                              ; preds = %205, %200
  %210 = phi i32 [ 15, %200 ], [ %208, %205 ]
  %211 = load i8, ptr %105, align 8, !range !10
  %212 = icmp eq i8 %211, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %212, label %218, label %213

213:                                              ; preds = %209
  %214 = shl nuw i32 %210, 24
  %215 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %216 = load ptr, ptr %215, align 4
  %217 = getelementptr i8, ptr %216, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %217, i32 %214) #14, !srcloc !11
  br label %222

218:                                              ; preds = %209
  %219 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %220 = load ptr, ptr %219, align 4
  %221 = getelementptr i8, ptr %220, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %221, i32 %210) #14, !srcloc !11
  br label %222

222:                                              ; preds = %218, %213
  %223 = load i8, ptr %145, align 8, !range !10
  %224 = icmp eq i8 %223, 0
  %225 = select i1 %224, i32 14, i32 47
  %226 = load i8, ptr %105, align 8, !range !10
  %227 = icmp eq i8 %226, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %227, label %233, label %228

228:                                              ; preds = %222
  %229 = shl nuw nsw i32 %225, 24
  %230 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %231 = load ptr, ptr %230, align 4
  %232 = getelementptr i8, ptr %231, i32 2068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %232, i32 %229) #14, !srcloc !11
  br label %237

233:                                              ; preds = %222
  %234 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %235 = load ptr, ptr %234, align 4
  %236 = getelementptr i8, ptr %235, i32 2068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %236, i32 %225) #14, !srcloc !11
  br label %237

237:                                              ; preds = %233, %228
  %238 = load i8, ptr %124, align 1, !range !10
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %296, label %240

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %242 = load ptr, ptr %241, align 4
  %243 = getelementptr i8, ptr %242, i32 2068
  %244 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %243) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %245 = load i8, ptr %105, align 8, !range !10
  %246 = icmp eq i8 %245, 0
  %247 = tail call i32 @llvm.bswap.i32(i32 %244) #14
  %248 = select i1 %246, i32 %244, i32 %247
  %249 = or i32 %248, 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %246, label %254, label %250

250:                                              ; preds = %240
  %251 = tail call i32 @llvm.bswap.i32(i32 %249) #14
  %252 = load ptr, ptr %241, align 4
  %253 = getelementptr i8, ptr %252, i32 2068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %253, i32 %251) #14, !srcloc !11
  br label %257

254:                                              ; preds = %240
  %255 = load ptr, ptr %241, align 4
  %256 = getelementptr i8, ptr %255, i32 2068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %256, i32 %249) #14, !srcloc !11
  br label %257

257:                                              ; preds = %254, %250
  %258 = load ptr, ptr %241, align 4
  %259 = getelementptr i8, ptr %258, i32 2064
  %260 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %259) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %261 = load i8, ptr %105, align 8, !range !10
  %262 = icmp eq i8 %261, 0
  %263 = tail call i32 @llvm.bswap.i32(i32 %260) #14
  %264 = select i1 %262, i32 %260, i32 %263
  %265 = or i32 %264, 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %262, label %270, label %266

266:                                              ; preds = %257
  %267 = tail call i32 @llvm.bswap.i32(i32 %265) #14
  %268 = load ptr, ptr %241, align 4
  %269 = getelementptr i8, ptr %268, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %269, i32 %267) #14, !srcloc !11
  br label %273

270:                                              ; preds = %257
  %271 = load ptr, ptr %241, align 4
  %272 = getelementptr i8, ptr %271, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %272, i32 %265) #14, !srcloc !11
  br label %273

273:                                              ; preds = %270, %266
  %274 = load i8, ptr %124, align 1
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %296, label %276

276:                                              ; preds = %273
  %277 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 21
  %278 = load i8, ptr %277, align 1, !range !10
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %296, label %280

280:                                              ; preds = %276
  %281 = load ptr, ptr %241, align 4
  %282 = getelementptr i8, ptr %281, i32 2052
  %283 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %282) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %284 = load i8, ptr %105, align 8, !range !10
  %285 = icmp eq i8 %284, 0
  %286 = tail call i32 @llvm.bswap.i32(i32 %283) #14
  %287 = select i1 %285, i32 %283, i32 %286
  %288 = or i32 %287, 524288
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %285, label %293, label %289

289:                                              ; preds = %280
  %290 = tail call i32 @llvm.bswap.i32(i32 %288) #14
  %291 = load ptr, ptr %241, align 4
  %292 = getelementptr i8, ptr %291, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %292, i32 %290) #14, !srcloc !11
  br label %296

293:                                              ; preds = %280
  %294 = load ptr, ptr %241, align 4
  %295 = getelementptr i8, ptr %294, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %295, i32 %288) #14, !srcloc !11
  br label %296

296:                                              ; preds = %293, %289, %276, %273, %237
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  %297 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %298 = load ptr, ptr %297, align 4
  %299 = getelementptr i8, ptr %298, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %299, i32 0) #14
  %300 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %301 = load ptr, ptr %300, align 4
  %302 = getelementptr i8, ptr %301, i32 24
  %303 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %302) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %304 = load i8, ptr %105, align 8, !range !10
  %305 = icmp eq i8 %304, 0
  %306 = tail call i32 @llvm.bswap.i32(i32 %303) #14
  %307 = select i1 %305, i32 %303, i32 %306
  %308 = or i32 %307, 786432
  %309 = icmp eq i32 %308, %307
  br i1 %309, label %318, label %310

310:                                              ; preds = %296
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %305, label %315, label %311

311:                                              ; preds = %310
  %312 = tail call i32 @llvm.bswap.i32(i32 %308) #14
  %313 = load ptr, ptr %300, align 4
  %314 = getelementptr i8, ptr %313, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %314, i32 %312) #14, !srcloc !11
  br label %318

315:                                              ; preds = %310
  %316 = load ptr, ptr %300, align 4
  %317 = getelementptr i8, ptr %316, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %317, i32 %308) #14, !srcloc !11
  br label %318

318:                                              ; preds = %315, %311, %296
  %319 = load i8, ptr %145, align 8, !range !10
  %320 = icmp eq i8 %319, 0
  br i1 %320, label %321, label %339

321:                                              ; preds = %318
  %322 = load ptr, ptr %300, align 4
  %323 = getelementptr i8, ptr %322, i32 24
  %324 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %323) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %325 = load i8, ptr %105, align 8, !range !10
  %326 = icmp eq i8 %325, 0
  %327 = tail call i32 @llvm.bswap.i32(i32 %324) #14
  %328 = select i1 %326, i32 %324, i32 %327
  %329 = or i32 %328, 16
  %330 = icmp eq i32 %329, %328
  br i1 %330, label %339, label %331

331:                                              ; preds = %321
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %326, label %336, label %332

332:                                              ; preds = %331
  %333 = tail call i32 @llvm.bswap.i32(i32 %329) #14
  %334 = load ptr, ptr %300, align 4
  %335 = getelementptr i8, ptr %334, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %335, i32 %333) #14, !srcloc !11
  br label %339

336:                                              ; preds = %331
  %337 = load ptr, ptr %300, align 4
  %338 = getelementptr i8, ptr %337, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %338, i32 %329) #14, !srcloc !11
  br label %339

339:                                              ; preds = %336, %332, %321, %318
  %340 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !16
  %341 = load ptr, ptr %300, align 4
  %342 = getelementptr i8, ptr %341, i32 2076
  %343 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %342) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %344 = load i8, ptr %105, align 8, !range !10
  %345 = icmp eq i8 %344, 0
  %346 = tail call i32 @llvm.bswap.i32(i32 %343) #14
  %347 = select i1 %345, i32 %343, i32 %346
  %348 = or i32 %347, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %345, label %353, label %349

349:                                              ; preds = %339
  %350 = tail call i32 @llvm.bswap.i32(i32 %348) #14
  %351 = load ptr, ptr %300, align 4
  %352 = getelementptr i8, ptr %351, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %352, i32 %350) #14, !srcloc !11
  br label %356

353:                                              ; preds = %339
  %354 = load ptr, ptr %300, align 4
  %355 = getelementptr i8, ptr %354, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %355, i32 %348) #14, !srcloc !11
  br label %356

356:                                              ; preds = %353, %349
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %340) #14, !srcloc !17
  %357 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !16
  %358 = load ptr, ptr %300, align 4
  %359 = getelementptr i8, ptr %358, i32 2076
  %360 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %359) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %361 = load i8, ptr %105, align 8, !range !10
  %362 = icmp eq i8 %361, 0
  %363 = tail call i32 @llvm.bswap.i32(i32 %360) #14
  %364 = select i1 %362, i32 %360, i32 %363
  %365 = or i32 %364, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %362, label %370, label %366

366:                                              ; preds = %356
  %367 = tail call i32 @llvm.bswap.i32(i32 %365) #14
  %368 = load ptr, ptr %300, align 4
  %369 = getelementptr i8, ptr %368, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %369, i32 %367) #14, !srcloc !11
  br label %373

370:                                              ; preds = %356
  %371 = load ptr, ptr %300, align 4
  %372 = getelementptr i8, ptr %371, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %372, i32 %365) #14, !srcloc !11
  br label %373

373:                                              ; preds = %370, %366
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %357) #14, !srcloc !17
  br i1 %1, label %407, label %374

374:                                              ; preds = %373
  %375 = load ptr, ptr %300, align 4
  %376 = getelementptr i8, ptr %375, i32 2052
  %377 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %376) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %378 = load i8, ptr %105, align 8, !range !10
  %379 = icmp eq i8 %378, 0
  %380 = tail call i32 @llvm.bswap.i32(i32 %377) #14
  %381 = select i1 %379, i32 %377, i32 %380
  %382 = or i32 %381, 2048
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %379, label %387, label %383

383:                                              ; preds = %374
  %384 = tail call i32 @llvm.bswap.i32(i32 %382) #14
  %385 = load ptr, ptr %300, align 4
  %386 = getelementptr i8, ptr %385, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %386, i32 %384) #14, !srcloc !11
  br label %390

387:                                              ; preds = %374
  %388 = load ptr, ptr %300, align 4
  %389 = getelementptr i8, ptr %388, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %389, i32 %382) #14, !srcloc !11
  br label %390

390:                                              ; preds = %387, %383
  %391 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %391(i32 noundef 2147480) #14
  %392 = load ptr, ptr %300, align 4
  %393 = getelementptr i8, ptr %392, i32 2052
  %394 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %393) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %395 = load i8, ptr %105, align 8, !range !10
  %396 = icmp eq i8 %395, 0
  %397 = tail call i32 @llvm.bswap.i32(i32 %394) #14
  %398 = select i1 %396, i32 %394, i32 %397
  %399 = and i32 %398, -2049
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %396, label %404, label %400

400:                                              ; preds = %390
  %401 = tail call i32 @llvm.bswap.i32(i32 %399) #14
  %402 = load ptr, ptr %300, align 4
  %403 = getelementptr i8, ptr %402, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %403, i32 %401) #14, !srcloc !11
  br label %407

404:                                              ; preds = %390
  %405 = load ptr, ptr %300, align 4
  %406 = getelementptr i8, ptr %405, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %406, i32 %399) #14, !srcloc !11
  br label %407

407:                                              ; preds = %404, %400, %373
  %408 = load i8, ptr %105, align 8, !range !10
  %409 = icmp eq i8 %408, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  %410 = load ptr, ptr %300, align 4
  %411 = getelementptr i8, ptr %410, i32 2832
  br i1 %409, label %413, label %412

412:                                              ; preds = %407
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %411, i32 134219808) #14, !srcloc !11
  br label %414

413:                                              ; preds = %407
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %411, i32 537395208) #14, !srcloc !11
  br label %414

414:                                              ; preds = %413, %412
  %415 = load ptr, ptr %3, align 4
  %416 = getelementptr inbounds %struct.usb_ep, ptr %415, i32 0, i32 7
  %417 = load i56, ptr %416, align 2
  %418 = trunc i56 %417 to i32
  %419 = and i32 %418, 65535
  %420 = add nsw i32 %419, -8
  %421 = tail call i32 @llvm.fshl.i32(i32 %420, i32 %420, i32 29) #14
  %422 = icmp ult i32 %421, 8
  br i1 %422, label %424, label %423

423:                                              ; preds = %424, %414
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 2563, i32 noundef 9, ptr noundef null) #14
  br label %432

424:                                              ; preds = %414
  %425 = trunc i32 %421 to i8
  %426 = lshr i8 -117, %425
  %427 = and i8 %426, 1
  %428 = icmp eq i8 %427, 0
  br i1 %428, label %423, label %429

429:                                              ; preds = %424
  %430 = getelementptr inbounds [8 x i32], ptr @switch.table.dwc2_hsotg_core_init_disconnected, i32 0, i32 %421
  %431 = load i32, ptr %430, align 4
  br label %432

432:                                              ; preds = %429, %423
  %433 = phi i32 [ -1, %423 ], [ %431, %429 ]
  %434 = load i8, ptr %105, align 8, !range !10
  %435 = icmp eq i8 %434, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %435, label %440, label %436

436:                                              ; preds = %432
  %437 = tail call i32 @llvm.bswap.i32(i32 %433) #14
  %438 = load ptr, ptr %300, align 4
  %439 = getelementptr i8, ptr %438, i32 2816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %439, i32 %437) #14, !srcloc !11
  br label %443

440:                                              ; preds = %432
  %441 = load ptr, ptr %300, align 4
  %442 = getelementptr i8, ptr %441, i32 2816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %442, i32 %433) #14, !srcloc !11
  br label %443

443:                                              ; preds = %440, %436
  %444 = load ptr, ptr %3, align 4
  %445 = getelementptr inbounds %struct.usb_ep, ptr %444, i32 0, i32 7
  %446 = load i56, ptr %445, align 2
  %447 = trunc i56 %446 to i32
  %448 = and i32 %447, 65535
  %449 = add nsw i32 %448, -8
  %450 = tail call i32 @llvm.fshl.i32(i32 %449, i32 %449, i32 29) #14
  %451 = icmp ult i32 %450, 8
  br i1 %451, label %453, label %452

452:                                              ; preds = %453, %443
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 2563, i32 noundef 9, ptr noundef null) #14
  br label %461

453:                                              ; preds = %443
  %454 = trunc i32 %450 to i8
  %455 = lshr i8 -117, %454
  %456 = and i8 %455, 1
  %457 = icmp eq i8 %456, 0
  br i1 %457, label %452, label %458

458:                                              ; preds = %453
  %459 = getelementptr inbounds [8 x i32], ptr @switch.table.dwc2_hsotg_core_init_disconnected.67, i32 0, i32 %450
  %460 = load i32, ptr %459, align 4
  br label %461

461:                                              ; preds = %458, %452
  %462 = phi i32 [ -1, %452 ], [ %460, %458 ]
  %463 = load i8, ptr %105, align 8, !range !10
  %464 = icmp eq i8 %463, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %464, label %469, label %465

465:                                              ; preds = %461
  %466 = tail call i32 @llvm.bswap.i32(i32 %462) #14
  %467 = load ptr, ptr %300, align 4
  %468 = getelementptr i8, ptr %467, i32 2304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %468, i32 %466) #14, !srcloc !11
  br label %472

469:                                              ; preds = %461
  %470 = load ptr, ptr %300, align 4
  %471 = getelementptr i8, ptr %470, i32 2304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %471, i32 %462) #14, !srcloc !11
  br label %472

472:                                              ; preds = %469, %465
  %473 = select i1 %1, i32 1280, i32 1282
  %474 = load ptr, ptr %300, align 4
  %475 = getelementptr i8, ptr %474, i32 2052
  %476 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %475) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %477 = load i8, ptr %105, align 8, !range !10
  %478 = icmp eq i8 %477, 0
  %479 = tail call i32 @llvm.bswap.i32(i32 %476) #14
  %480 = select i1 %478, i32 %476, i32 %479
  %481 = or i32 %480, %473
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %478, label %486, label %482

482:                                              ; preds = %472
  %483 = tail call i32 @llvm.bswap.i32(i32 %481) #14
  %484 = load ptr, ptr %300, align 4
  %485 = getelementptr i8, ptr %484, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %485, i32 %483) #14, !srcloc !11
  br label %489

486:                                              ; preds = %472
  %487 = load ptr, ptr %300, align 4
  %488 = getelementptr i8, ptr %487, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %488, i32 %481) #14, !srcloc !11
  br label %489

489:                                              ; preds = %486, %482
  tail call void @dwc2_gadget_init_lpm(ptr noundef %0)
  %490 = load i8, ptr %124, align 1, !range !10
  %491 = icmp eq i8 %490, 0
  br i1 %491, label %514, label %492

492:                                              ; preds = %489
  %493 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 21
  %494 = load i8, ptr %493, align 1, !range !10
  %495 = icmp eq i8 %494, 0
  br i1 %495, label %514, label %496

496:                                              ; preds = %492
  %497 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 29
  %498 = load i32, ptr %497, align 4
  %499 = shl i32 %498, 15
  %500 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 30
  %501 = load i16, ptr %500, align 8
  %502 = zext i16 %501 to i32
  %503 = or i32 %499, %502
  %504 = or i32 %503, 16384
  %505 = load i8, ptr %105, align 8, !range !10
  %506 = icmp eq i8 %505, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %506, label %511, label %507

507:                                              ; preds = %496
  %508 = tail call i32 @llvm.bswap.i32(i32 %504) #14
  %509 = load ptr, ptr %300, align 4
  %510 = getelementptr i8, ptr %509, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %510, i32 %508) #14, !srcloc !11
  br label %514

511:                                              ; preds = %496
  %512 = load ptr, ptr %300, align 4
  %513 = getelementptr i8, ptr %512, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %513, i32 %504) #14, !srcloc !11
  br label %514

514:                                              ; preds = %511, %507, %492, %489
  %515 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %515(i32 noundef 214748000) #14
  %516 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %516(i32 noundef 214748000) #14
  %517 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %517(i32 noundef 214748000) #14
  %518 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 28
  store i32 0, ptr %518, align 8
  %519 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 73
  %520 = load ptr, ptr %519, align 8
  %521 = getelementptr inbounds %struct.usb_request, ptr %520, i32 0, i32 6
  %522 = load i32, ptr %521, align 4
  %523 = and i32 %522, -262145
  store i32 %523, ptr %521, align 4
  %524 = getelementptr inbounds %struct.usb_request, ptr %520, i32 0, i32 1
  store i32 8, ptr %524, align 4
  %525 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 75
  %526 = load ptr, ptr %525, align 8
  store ptr %526, ptr %520, align 4
  %527 = getelementptr inbounds %struct.usb_request, ptr %520, i32 0, i32 7
  store ptr @dwc2_hsotg_complete_setup, ptr %527, align 4
  %528 = getelementptr inbounds %struct.dwc2_hsotg_req, ptr %520, i32 0, i32 1
  %529 = load volatile ptr, ptr %528, align 4
  %530 = icmp eq ptr %529, %528
  br i1 %530, label %531, label %544

531:                                              ; preds = %514
  %532 = load ptr, ptr %3, align 4
  %533 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %532, i32 0, i32 11
  store i8 0, ptr %533, align 4
  %534 = load ptr, ptr %3, align 4
  %535 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %534, i32 0, i32 16
  %536 = load i8, ptr %535, align 2
  %537 = and i8 %536, -9
  store i8 %537, ptr %535, align 2
  %538 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 76
  store i32 0, ptr %538, align 4
  %539 = load ptr, ptr %3, align 4
  %540 = tail call fastcc i32 @dwc2_hsotg_ep_queue(ptr noundef %539, ptr noundef %520) #14
  %541 = icmp slt i32 %540, 0
  br i1 %541, label %542, label %544

542:                                              ; preds = %531
  %543 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %543, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.dwc2_hsotg_enqueue_setup, i32 noundef %540) #15
  br label %544

544:                                              ; preds = %542, %531, %514, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_core_reset(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwc2_hsotg_ep_disable(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 11
  %5 = load i8, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 13
  %7 = load i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 88
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.dwc2_hsotg_ep_disable) #15
  br label %84

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.dwc2_hsotg_ep_disable) #15
  br label %84

20:                                               ; preds = %14
  %21 = icmp eq i8 %5, 0
  %22 = shl nuw nsw i32 %8, 5
  %23 = select i1 %21, i32 2816, i32 2304
  %24 = add nuw nsw i32 %22, %23
  %25 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 %24
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %29 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 34
  %30 = load i8, ptr %29, align 8, !range !10
  %31 = icmp eq i8 %30, 0
  %32 = tail call i32 @llvm.bswap.i32(i32 %28) #14
  %33 = select i1 %31, i32 %28, i32 %32
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %37, label %35

35:                                               ; preds = %20
  tail call fastcc void @dwc2_hsotg_ep_stop_xfr(ptr noundef %3, ptr noundef %0)
  %36 = load i8, ptr %29, align 8
  br label %37

37:                                               ; preds = %35, %20
  %38 = phi i8 [ %36, %35 ], [ %30, %20 ]
  %39 = and i32 %33, 2013233151
  %40 = or i32 %39, 134217728
  %41 = icmp eq i8 %38, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = tail call i32 @llvm.bswap.i32(i32 %40) #14
  %44 = load ptr, ptr %25, align 4
  %45 = getelementptr i8, ptr %44, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #14, !srcloc !11
  br label %49

46:                                               ; preds = %37
  %47 = load ptr, ptr %25, align 4
  %48 = getelementptr i8, ptr %47, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %40) #14, !srcloc !11
  br label %49

49:                                               ; preds = %46, %42
  %50 = load i8, ptr %6, align 2
  %51 = zext i8 %50 to i32
  %52 = load i8, ptr %4, align 4
  %53 = shl nuw i32 1, %51
  %54 = icmp eq i8 %52, 0
  %55 = shl i32 %53, 16
  %56 = select i1 %54, i32 %55, i32 %53
  %57 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !16
  %58 = load ptr, ptr %25, align 4
  %59 = getelementptr i8, ptr %58, i32 2076
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %61 = load i8, ptr %29, align 8, !range !10
  %62 = icmp eq i8 %61, 0
  %63 = tail call i32 @llvm.bswap.i32(i32 %60) #14
  %64 = select i1 %62, i32 %60, i32 %63
  %65 = xor i32 %56, -1
  %66 = and i32 %64, %65
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %62, label %71, label %67

67:                                               ; preds = %49
  %68 = tail call i32 @llvm.bswap.i32(i32 %66) #14
  %69 = load ptr, ptr %25, align 4
  %70 = getelementptr i8, ptr %69, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #14, !srcloc !11
  br label %74

71:                                               ; preds = %49
  %72 = load ptr, ptr %25, align 4
  %73 = getelementptr i8, ptr %72, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %66) #14, !srcloc !11
  br label %74

74:                                               ; preds = %71, %67
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %57) #14, !srcloc !17
  tail call fastcc void @kill_all_requests(ptr noundef %3, ptr noundef %0, i32 noundef -108)
  %75 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 10
  %76 = load i16, ptr %75, align 2
  %77 = zext i16 %76 to i32
  %78 = shl nuw i32 1, %77
  %79 = xor i32 %78, -1
  %80 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 71
  %81 = load i32, ptr %80, align 8
  %82 = and i32 %81, %79
  store i32 %82, ptr %80, align 8
  store i16 0, ptr %75, align 2
  %83 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 9
  store i16 0, ptr %83, align 4
  br label %84

84:                                               ; preds = %74, %18, %12
  %85 = phi i32 [ -22, %12 ], [ -22, %18 ], [ 0, %74 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_phy_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_hsotg_init_fifo(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 45
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 71
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !18

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 319, i32 noundef 9, ptr noundef null) #14
  br label %7

7:                                                ; preds = %6, %1
  store i32 0, ptr %3, align 8
  %8 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 43
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %11 = load i8, ptr %10, align 8, !range !10
  %12 = icmp eq i8 %11, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = tail call i32 @llvm.bswap.i32(i32 %9) #14
  %15 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %14) #14, !srcloc !11
  br label %22

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %9) #14, !srcloc !11
  br label %22

22:                                               ; preds = %18, %13
  %23 = load i32, ptr %8, align 4
  %24 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 44
  %25 = load i32, ptr %24, align 8
  %26 = shl i32 %25, 16
  %27 = or i32 %26, %23
  %28 = load i8, ptr %10, align 8, !range !10
  %29 = icmp eq i8 %28, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %29, label %35, label %30

30:                                               ; preds = %22
  %31 = tail call i32 @llvm.bswap.i32(i32 %27) #14
  %32 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %31) #14, !srcloc !11
  br label %39

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %37, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %27) #14, !srcloc !11
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, ptr %8, align 4
  %41 = load i32, ptr %24, align 8
  %42 = add i32 %41, %40
  %43 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 68
  %44 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  br label %45

45:                                               ; preds = %80, %39
  %46 = phi i32 [ 1, %39 ], [ %82, %80 ]
  %47 = phi i32 [ %42, %39 ], [ %81, %80 ]
  %48 = getelementptr i32, ptr %2, i32 %46
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %80, label %51

51:                                               ; preds = %45
  %52 = shl i32 %49, 16
  %53 = or i32 %52, %47
  %54 = add i32 %49, %47
  %55 = load i32, ptr %43, align 8
  %56 = icmp ugt i32 %54, %55
  %57 = load i1, ptr @dwc2_hsotg_init_fifo.__already_done, align 1
  %58 = xor i1 %57, true
  %59 = select i1 %56, i1 %58, i1 false
  br i1 %59, label %60, label %63, !prof !19

60:                                               ; preds = %51
  store i1 true, ptr @dwc2_hsotg_init_fifo.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 350, i32 noundef 9, ptr noundef nonnull @.str.16) #14
  %61 = load i32, ptr %48, align 4
  %62 = add i32 %61, %47
  br label %63

63:                                               ; preds = %60, %51
  %64 = phi i32 [ %62, %60 ], [ %54, %51 ]
  %65 = shl nuw nsw i32 %46, 2
  %66 = add nuw nsw i32 %65, 256
  %67 = load i8, ptr %10, align 8, !range !10
  %68 = icmp eq i8 %67, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %68, label %73, label %69

69:                                               ; preds = %63
  %70 = tail call i32 @llvm.bswap.i32(i32 %53) #14
  %71 = load ptr, ptr %44, align 4
  %72 = getelementptr i8, ptr %71, i32 %66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %70) #14, !srcloc !11
  br label %76

73:                                               ; preds = %63
  %74 = load ptr, ptr %44, align 4
  %75 = getelementptr i8, ptr %74, i32 %66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %53) #14, !srcloc !11
  br label %76

76:                                               ; preds = %73, %69
  %77 = load ptr, ptr %44, align 4
  %78 = getelementptr i8, ptr %77, i32 %66
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %80

80:                                               ; preds = %76, %45
  %81 = phi i32 [ %64, %76 ], [ %47, %45 ]
  %82 = add nuw nsw i32 %46, 1
  %83 = icmp eq i32 %82, 16
  br i1 %83, label %84, label %45

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 4
  %86 = load i32, ptr %85, align 4
  %87 = lshr i32 %86, 4
  %88 = and i32 %87, 65535
  %89 = shl i32 %81, 16
  %90 = or i32 %88, %89
  %91 = load i8, ptr %10, align 8, !range !10
  %92 = icmp eq i8 %91, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %92, label %97, label %93

93:                                               ; preds = %84
  %94 = tail call i32 @llvm.bswap.i32(i32 %90) #14
  %95 = load ptr, ptr %44, align 4
  %96 = getelementptr i8, ptr %95, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %94) #14, !srcloc !11
  br label %100

97:                                               ; preds = %84
  %98 = load ptr, ptr %44, align 4
  %99 = getelementptr i8, ptr %98, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %90) #14, !srcloc !11
  br label %100

100:                                              ; preds = %97, %93
  %101 = load i8, ptr %10, align 8, !range !10
  %102 = icmp eq i8 %101, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  %103 = load ptr, ptr %44, align 4
  %104 = getelementptr i8, ptr %103, i32 16
  br i1 %102, label %106, label %105

105:                                              ; preds = %100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 805568512) #14, !srcloc !11
  br label %107

106:                                              ; preds = %100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 1072) #14, !srcloc !11
  br label %107

107:                                              ; preds = %106, %105
  %108 = load ptr, ptr %44, align 4
  %109 = getelementptr i8, ptr %108, i32 16
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %111 = load i8, ptr %10, align 8, !range !10
  %112 = icmp eq i8 %111, 0
  %113 = lshr i32 %110, 24
  %114 = select i1 %112, i32 %110, i32 %113
  %115 = and i32 %114, 48
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %134, label %122

117:                                              ; preds = %122
  %118 = add nsw i32 %123, -1
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.dwc2_hsotg_init_fifo, i32 noundef %131) #15
  br label %134

122:                                              ; preds = %117, %107
  %123 = phi i32 [ %118, %117 ], [ 99, %107 ]
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %124(i32 noundef 214748) #14
  %125 = load ptr, ptr %44, align 4
  %126 = getelementptr i8, ptr %125, i32 16
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %128 = load i8, ptr %10, align 8, !range !10
  %129 = icmp eq i8 %128, 0
  %130 = tail call i32 @llvm.bswap.i32(i32 %127) #14
  %131 = select i1 %129, i32 %127, i32 %130
  %132 = and i32 %131, 48
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %117

134:                                              ; preds = %122, %120, %107
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_gadget_init_lpm(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 17
  %3 = load i8, ptr %2, align 1, !range !10
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %58, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 20
  %7 = load i8, ptr %6, align 4, !range !10
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 18
  %10 = load i8, ptr %9, align 2, !range !10
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, i32 0, i32 128
  %13 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 22
  %14 = load i8, ptr %13, align 2
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 8
  %17 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 19
  %18 = load i8, ptr %17, align 1, !range !10
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %19, i32 0, i32 268435456
  %21 = select i1 %8, i32 6291459, i32 6295555
  %22 = or i32 %21, %12
  %23 = or i32 %22, %16
  %24 = or i32 %23, %20
  %25 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %26 = load i8, ptr %25, align 8, !range !10
  %27 = icmp eq i8 %26, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %27, label %33, label %28

28:                                               ; preds = %5
  %29 = tail call i32 @llvm.bswap.i32(i32 %24) #14
  %30 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %29) #14, !srcloc !11
  br label %37

33:                                               ; preds = %5
  %34 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %24) #14, !srcloc !11
  br label %37

37:                                               ; preds = %33, %28
  %38 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 21
  %39 = load i8, ptr %38, align 1, !range !10
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %58, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 104
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %46 = load i8, ptr %25, align 8, !range !10
  %47 = icmp eq i8 %46, 0
  %48 = tail call i32 @llvm.bswap.i32(i32 %45) #14
  %49 = select i1 %47, i32 %45, i32 %48
  %50 = or i32 %49, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %47, label %55, label %51

51:                                               ; preds = %41
  %52 = tail call i32 @llvm.bswap.i32(i32 %50) #14
  %53 = load ptr, ptr %42, align 4
  %54 = getelementptr i8, ptr %53, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #14, !srcloc !11
  br label %58

55:                                               ; preds = %41
  %56 = load ptr, ptr %42, align 4
  %57 = getelementptr i8, ptr %56, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %50) #14, !srcloc !11
  br label %58

58:                                               ; preds = %55, %51, %37, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_gadget_program_ref_clk(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 29
  %3 = load i32, ptr %2, align 4
  %4 = shl i32 %3, 15
  %5 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 30
  %6 = load i16, ptr %5, align 8
  %7 = zext i16 %6 to i32
  %8 = or i32 %4, %7
  %9 = or i32 %8, 16384
  %10 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %11 = load i8, ptr %10, align 8, !range !10
  %12 = icmp eq i8 %11, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = tail call i32 @llvm.bswap.i32(i32 %9) #14
  %15 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %14) #14, !srcloc !11
  br label %22

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %9) #14, !srcloc !11
  br label %22

22:                                               ; preds = %18, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_hsotg_core_disconnect(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 2052
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %7 = load i8, ptr %6, align 8, !range !10
  %8 = icmp eq i8 %7, 0
  %9 = tail call i32 @llvm.bswap.i32(i32 %5) #14
  %10 = select i1 %8, i32 %5, i32 %9
  %11 = or i32 %10, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %8, label %16, label %12

12:                                               ; preds = %1
  %13 = tail call i32 @llvm.bswap.i32(i32 %11) #14
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr i8, ptr %14, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #14, !srcloc !11
  br label %19

16:                                               ; preds = %1
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr i8, ptr %17, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %11) #14, !srcloc !11
  br label %19

19:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_hsotg_core_connect(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 2052
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %7 = load i8, ptr %6, align 8, !range !10
  %8 = icmp eq i8 %7, 0
  %9 = tail call i32 @llvm.bswap.i32(i32 %5) #14
  %10 = select i1 %8, i32 %5, i32 %9
  %11 = and i32 %10, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %8, label %16, label %12

12:                                               ; preds = %1
  %13 = tail call i32 @llvm.bswap.i32(i32 %11) #14
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr i8, ptr %14, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #14, !srcloc !11
  br label %19

16:                                               ; preds = %1
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr i8, ptr %17, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %11) #14, !srcloc !11
  br label %19

19:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_gadget_init(ptr noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 2
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 1
  %7 = select i1 %6, i32 2, i32 3
  %8 = icmp eq i8 %5, 2
  %9 = select i1 %8, i32 1, i32 %7
  %10 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 85, i32 6
  store i32 %9, ptr %10, align 8
  %11 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 85, i32 2
  store ptr @dwc2_hsotg_gadget_ops, ptr %11, align 4
  %12 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load ptr, ptr %2, align 4
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %13, %1 ]
  %19 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 85, i32 10
  store ptr %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 85, i32 16
  store ptr %3, ptr %20, align 8
  %21 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 86
  %22 = load i8, ptr %21, align 8
  %23 = and i8 %22, -5
  store i8 %23, ptr %21, align 8
  %24 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 17
  %25 = load i8, ptr %24, align 1, !range !10
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 85, i32 17
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, 65536
  store i32 %30, ptr %28, align 4
  br label %31

31:                                               ; preds = %27, %17
  %32 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  switch i32 %33, label %40 [
    i32 3, label %34
    i32 2, label %38
  ]

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 85, i32 17
  %36 = load i32, ptr %35, align 4
  %37 = or i32 %36, 2
  store i32 %37, ptr %35, align 4
  br label %40

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 4
  store i32 3, ptr %39, align 8
  br label %40

40:                                               ; preds = %38, %34, %31
  %41 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2
  %42 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 3
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 22
  %45 = trunc i32 %44 to i8
  %46 = and i8 %45, 15
  %47 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 70
  %48 = add nuw nsw i8 %46, 1
  store i8 %48, ptr %47, align 1
  %49 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 132, i32 noundef 3520) #14
  %50 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 87
  store ptr %49, ptr %50, align 4
  %51 = icmp eq ptr %49, null
  br i1 %51, label %83, label %52

52:                                               ; preds = %40
  %53 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 88
  store ptr %49, ptr %53, align 4
  %54 = load i8, ptr %47, align 1
  %55 = icmp ugt i8 %54, 1
  br i1 %55, label %56, label %85

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 6
  %58 = load i32, ptr %57, align 4
  br label %59

59:                                               ; preds = %78, %56
  %60 = phi i32 [ %79, %78 ], [ 1, %56 ]
  %61 = phi i32 [ %62, %78 ], [ %58, %56 ]
  %62 = lshr i32 %61, 2
  %63 = and i32 %61, 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load ptr, ptr %0, align 8
  %67 = tail call noalias ptr @devm_kmalloc(ptr noundef %66, i32 noundef 132, i32 noundef 3520) #14
  %68 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 87, i32 %60
  store ptr %67, ptr %68, align 4
  %69 = icmp eq ptr %67, null
  br i1 %69, label %83, label %70

70:                                               ; preds = %65, %59
  %71 = and i32 %61, 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load ptr, ptr %0, align 8
  %75 = tail call noalias ptr @devm_kmalloc(ptr noundef %74, i32 noundef 132, i32 noundef 3520) #14
  %76 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 88, i32 %60
  store ptr %75, ptr %76, align 4
  %77 = icmp eq ptr %75, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %73, %70
  %79 = add nuw nsw i32 %60, 1
  %80 = load i8, ptr %47, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp ult i32 %79, %81
  br i1 %82, label %59, label %85

83:                                               ; preds = %73, %65, %40
  %84 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str, i32 noundef -12) #15
  br label %190

85:                                               ; preds = %78, %52
  %86 = phi i8 [ %54, %52 ], [ %80, %78 ]
  %87 = zext i8 %86 to i32
  %88 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 4
  %89 = load i32, ptr %88, align 4
  %90 = lshr i32 %89, 4
  %91 = and i32 %90, 65535
  %92 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 68
  store i32 %91, ptr %92, align 8
  %93 = load i32, ptr %41, align 8
  %94 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 69
  %95 = trunc i32 %93 to i8
  %96 = lshr i8 %95, 7
  %97 = load i8, ptr %94, align 4
  %98 = and i8 %97, -2
  %99 = or i8 %98, %96
  store i8 %99, ptr %94, align 4
  %100 = load ptr, ptr %0, align 8
  %101 = icmp sgt i8 %95, -1
  %102 = select i1 %101, ptr @.str.48, ptr @.str.47
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %100, ptr noundef nonnull @.str.46, i32 noundef %87, ptr noundef nonnull %102, i32 noundef %91) #15
  %103 = load ptr, ptr %0, align 8
  %104 = tail call noalias ptr @devm_kmalloc(ptr noundef %103, i32 noundef 8, i32 noundef 3520) #14
  %105 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 75
  store ptr %104, ptr %105, align 8
  %106 = icmp eq ptr %104, null
  br i1 %106, label %190, label %107

107:                                              ; preds = %85
  %108 = load ptr, ptr %0, align 8
  %109 = tail call noalias ptr @devm_kmalloc(ptr noundef %108, i32 noundef 8, i32 noundef 3520) #14
  %110 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 74
  store ptr %109, ptr %110, align 4
  %111 = icmp eq ptr %109, null
  br i1 %111, label %190, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 42
  %114 = load i8, ptr %113, align 1, !range !10
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %140, label %116

116:                                              ; preds = %112
  %117 = load ptr, ptr %0, align 8
  %118 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 79
  %119 = tail call ptr @dmam_alloc_attrs(ptr noundef %117, i32 noundef 8, ptr noundef %118, i32 noundef 3264, i32 noundef 0) #14
  %120 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 80
  store ptr %119, ptr %120, align 4
  %121 = icmp eq ptr %119, null
  br i1 %121, label %190, label %122

122:                                              ; preds = %116
  %123 = load ptr, ptr %0, align 8
  %124 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 79, i32 1
  %125 = tail call ptr @dmam_alloc_attrs(ptr noundef %123, i32 noundef 8, ptr noundef %124, i32 noundef 3264, i32 noundef 0) #14
  %126 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 80, i32 1
  store ptr %125, ptr %126, align 4
  %127 = icmp eq ptr %125, null
  br i1 %127, label %190, label %128

128:                                              ; preds = %122
  %129 = load ptr, ptr %0, align 8
  %130 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 81
  %131 = tail call ptr @dmam_alloc_attrs(ptr noundef %129, i32 noundef 8, ptr noundef %130, i32 noundef 3264, i32 noundef 0) #14
  %132 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 82
  store ptr %131, ptr %132, align 8
  %133 = icmp eq ptr %131, null
  br i1 %133, label %190, label %134

134:                                              ; preds = %128
  %135 = load ptr, ptr %0, align 8
  %136 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 83
  %137 = tail call ptr @dmam_alloc_attrs(ptr noundef %135, i32 noundef 8, ptr noundef %136, i32 noundef 3264, i32 noundef 0) #14
  %138 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 84
  store ptr %137, ptr %138, align 8
  %139 = icmp eq ptr %137, null
  br i1 %139, label %190, label %140

140:                                              ; preds = %134, %112
  %141 = load ptr, ptr %0, align 8
  %142 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 20
  %143 = load i32, ptr %142, align 4
  %144 = getelementptr inbounds %struct.device, ptr %141, i32 0, i32 3
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %149

147:                                              ; preds = %140
  %148 = load ptr, ptr %141, align 4
  br label %149

149:                                              ; preds = %147, %140
  %150 = phi ptr [ %148, %147 ], [ %145, %140 ]
  %151 = tail call i32 @devm_request_threaded_irq(ptr noundef %141, i32 noundef %143, ptr noundef nonnull @dwc2_hsotg_irq, ptr noundef null, i32 noundef 128, ptr noundef %150, ptr noundef %0) #14
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #15
  br label %190

154:                                              ; preds = %149
  %155 = load i8, ptr %47, align 1
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #15
  br label %190

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 85, i32 4
  store volatile ptr %159, ptr %159, align 4
  %160 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 85, i32 4, i32 1
  store ptr %159, ptr %160, align 4
  %161 = load ptr, ptr %53, align 4
  %162 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 85, i32 3
  store ptr %161, ptr %162, align 8
  %163 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %164 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %163, i32 noundef 3520, i32 noundef 68) #16
  %165 = icmp eq ptr %164, null
  br i1 %165, label %172, label %166

166:                                              ; preds = %158
  %167 = getelementptr inbounds %struct.dwc2_hsotg_req, ptr %164, i32 0, i32 1
  store volatile ptr %167, ptr %167, align 8
  %168 = getelementptr inbounds %struct.dwc2_hsotg_req, ptr %164, i32 0, i32 1, i32 1
  store ptr %167, ptr %168, align 4
  %169 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 73
  store ptr %164, ptr %169, align 8
  %170 = load i8, ptr %47, align 1
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %190, label %174

172:                                              ; preds = %158
  %173 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 73
  store ptr null, ptr %173, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #15
  br label %190

174:                                              ; preds = %185, %166
  %175 = phi i32 [ %186, %185 ], [ 0, %166 ]
  %176 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 87, i32 %175
  %177 = load ptr, ptr %176, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %174
  tail call fastcc void @dwc2_hsotg_initep(ptr noundef %0, ptr noundef nonnull %177, i32 noundef %175, i1 noundef zeroext true)
  br label %180

180:                                              ; preds = %179, %174
  %181 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 88, i32 %175
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %185, label %184

184:                                              ; preds = %180
  tail call fastcc void @dwc2_hsotg_initep(ptr noundef %0, ptr noundef nonnull %182, i32 noundef %175, i1 noundef zeroext false)
  br label %185

185:                                              ; preds = %184, %180
  %186 = add nuw nsw i32 %175, 1
  %187 = load i8, ptr %47, align 1
  %188 = zext i8 %187 to i32
  %189 = icmp ult i32 %186, %188
  br i1 %189, label %174, label %190

190:                                              ; preds = %185, %172, %166, %157, %153, %134, %128, %122, %116, %107, %85, %83
  %191 = phi i32 [ -12, %83 ], [ %151, %153 ], [ -22, %157 ], [ -12, %172 ], [ -12, %85 ], [ -12, %107 ], [ -12, %116 ], [ -12, %122 ], [ -12, %128 ], [ -12, %134 ], [ 0, %166 ], [ 0, %185 ]
  ret i32 %191
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc2_hsotg_irq(i32 noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %7 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 34
  %8 = load i8, ptr %7, align 8, !range !10
  %9 = icmp eq i8 %8, 0
  %10 = lshr i32 %6, 24
  %11 = select i1 %9, i32 %6, i32 %10
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %734

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %15) #14
  %16 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 8
  %17 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 28
  %18 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 86
  %19 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 85, i32 5
  %20 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 70
  %21 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 73
  %22 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 75
  %23 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 88
  %24 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 76
  %25 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 3, i32 41
  br label %26

26:                                               ; preds = %671, %14
  %27 = phi i32 [ 8, %14 ], [ %674, %671 ]
  %28 = load ptr, ptr %3, align 4
  %29 = getelementptr i8, ptr %28, i32 20
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %31 = load i8, ptr %7, align 8, !range !10
  %32 = icmp eq i8 %31, 0
  %33 = tail call i32 @llvm.bswap.i32(i32 %30) #14
  %34 = select i1 %32, i32 %30, i32 %33
  %35 = load ptr, ptr %3, align 4
  %36 = getelementptr i8, ptr %35, i32 24
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %38 = load i8, ptr %7, align 8, !range !10
  %39 = icmp eq i8 %38, 0
  %40 = tail call i32 @llvm.bswap.i32(i32 %37) #14
  %41 = select i1 %39, i32 %37, i32 %40
  %42 = and i32 %41, %34
  %43 = and i32 %42, 8388608
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %60, label %45

45:                                               ; preds = %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  %46 = load ptr, ptr %3, align 4
  %47 = getelementptr i8, ptr %46, i32 20
  br i1 %39, label %49, label %48

48:                                               ; preds = %45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 32768) #14, !srcloc !11
  br label %50

49:                                               ; preds = %45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 8388608) #14, !srcloc !11
  br label %50

50:                                               ; preds = %49, %48
  %51 = load i8, ptr %16, align 8
  %52 = and i8 %51, 16
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = load i32, ptr %17, align 8
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = tail call i32 @dwc2_exit_partial_power_down(ptr noundef %1, i32 noundef 0, i1 noundef zeroext true) #14
  br label %59

59:                                               ; preds = %57, %54, %50
  store i32 0, ptr %17, align 8
  br label %60

60:                                               ; preds = %59, %26
  %61 = and i32 %42, 8392704
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %98, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %3, align 4
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %66 = load i8, ptr %7, align 8, !range !10
  %67 = icmp eq i8 %66, 0
  %68 = shl i32 %65, 8
  %69 = select i1 %67, i32 %65, i32 %68
  %70 = load i8, ptr %18, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  %71 = load ptr, ptr %3, align 4
  %72 = getelementptr i8, ptr %71, i32 20
  br i1 %67, label %74, label %73

73:                                               ; preds = %63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 1048576) #14, !srcloc !11
  br label %75

74:                                               ; preds = %63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 4096) #14, !srcloc !11
  br label %75

75:                                               ; preds = %74, %73
  tail call void @dwc2_hsotg_disconnect(ptr noundef %1)
  %76 = load ptr, ptr %3, align 4
  %77 = getelementptr i8, ptr %76, i32 2048
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %79 = load i8, ptr %7, align 8, !range !10
  %80 = icmp eq i8 %79, 0
  %81 = tail call i32 @llvm.bswap.i32(i32 %78) #14
  %82 = select i1 %80, i32 %78, i32 %81
  %83 = and i32 %82, -2033
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %80, label %88, label %84

84:                                               ; preds = %75
  %85 = tail call i32 @llvm.bswap.i32(i32 %83) #14
  %86 = load ptr, ptr %3, align 4
  %87 = getelementptr i8, ptr %86, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %85) #14, !srcloc !11
  br label %91

88:                                               ; preds = %75
  %89 = load ptr, ptr %3, align 4
  %90 = getelementptr i8, ptr %89, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %83) #14, !srcloc !11
  br label %91

91:                                               ; preds = %88, %84
  %92 = and i32 %69, 524288
  %93 = icmp ne i32 %92, 0
  %94 = and i8 %70, 2
  %95 = icmp ne i8 %94, 0
  %96 = select i1 %93, i1 %95, i1 false
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  tail call void @dwc2_hsotg_core_init_disconnected(ptr noundef %1, i1 noundef zeroext true)
  br label %98

98:                                               ; preds = %97, %91, %60
  %99 = and i32 %42, 8192
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %167, label %101

101:                                              ; preds = %98
  %102 = load i8, ptr %7, align 8, !range !10
  %103 = icmp eq i8 %102, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  %104 = load ptr, ptr %3, align 4
  %105 = getelementptr i8, ptr %104, i32 20
  br i1 %103, label %107, label %106

106:                                              ; preds = %101
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 2097152) #14, !srcloc !11
  br label %108

107:                                              ; preds = %101
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 8192) #14, !srcloc !11
  br label %108

108:                                              ; preds = %107, %106
  %109 = load ptr, ptr %3, align 4
  %110 = getelementptr i8, ptr %109, i32 2056
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %112 = load i8, ptr %7, align 8, !range !10
  %113 = icmp eq i8 %112, 0
  %114 = lshr i32 %111, 24
  %115 = select i1 %113, i32 %111, i32 %114
  %116 = lshr i32 %115, 1
  %117 = and i32 %116, 3
  %118 = getelementptr inbounds [4 x i32], ptr @switch.table.dwc2_hsotg_irq, i32 0, i32 %117
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr inbounds [4 x i32], ptr @switch.table.dwc2_hsotg_irq.68, i32 0, i32 %117
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr inbounds [4 x i32], ptr @switch.table.dwc2_hsotg_irq.69, i32 0, i32 %117
  %123 = load i32, ptr %122, align 4
  store i32 %119, ptr %19, align 4
  %124 = load ptr, ptr %1, align 8
  %125 = tail call ptr @usb_speed_string(i32 noundef %119) #14
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %124, ptr noundef nonnull @.str.50, ptr noundef %125) #15
  tail call fastcc void @dwc2_hsotg_set_ep_maxpacket(ptr noundef %1, i32 noundef 0, i32 noundef %121, i32 noundef 0, i32 noundef 1) #14
  tail call fastcc void @dwc2_hsotg_set_ep_maxpacket(ptr noundef %1, i32 noundef 0, i32 noundef %121, i32 noundef 0, i32 noundef 0) #14
  %126 = load i8, ptr %20, align 1
  %127 = icmp ugt i8 %126, 1
  br i1 %127, label %128, label %144

128:                                              ; preds = %139, %108
  %129 = phi i32 [ %140, %139 ], [ 1, %108 ]
  %130 = getelementptr %struct.dwc2_hsotg, ptr %1, i32 0, i32 87, i32 %129
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %128
  tail call fastcc void @dwc2_hsotg_set_ep_maxpacket(ptr noundef %1, i32 noundef %129, i32 noundef %123, i32 noundef 0, i32 noundef 1) #14
  br label %134

134:                                              ; preds = %133, %128
  %135 = getelementptr %struct.dwc2_hsotg, ptr %1, i32 0, i32 88, i32 %129
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %134
  tail call fastcc void @dwc2_hsotg_set_ep_maxpacket(ptr noundef %1, i32 noundef %129, i32 noundef %123, i32 noundef 0, i32 noundef 0) #14
  br label %139

139:                                              ; preds = %138, %134
  %140 = add nuw nsw i32 %129, 1
  %141 = load i8, ptr %20, align 1
  %142 = zext i8 %141 to i32
  %143 = icmp ult i32 %140, %142
  br i1 %143, label %128, label %144

144:                                              ; preds = %139, %108
  %145 = load ptr, ptr %21, align 8
  %146 = getelementptr inbounds %struct.usb_request, ptr %145, i32 0, i32 6
  %147 = load i32, ptr %146, align 4
  %148 = and i32 %147, -262145
  store i32 %148, ptr %146, align 4
  %149 = getelementptr inbounds %struct.usb_request, ptr %145, i32 0, i32 1
  store i32 8, ptr %149, align 4
  %150 = load ptr, ptr %22, align 8
  store ptr %150, ptr %145, align 4
  %151 = getelementptr inbounds %struct.usb_request, ptr %145, i32 0, i32 7
  store ptr @dwc2_hsotg_complete_setup, ptr %151, align 4
  %152 = getelementptr inbounds %struct.dwc2_hsotg_req, ptr %145, i32 0, i32 1
  %153 = load volatile ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, %152
  br i1 %154, label %155, label %167

155:                                              ; preds = %144
  %156 = load ptr, ptr %23, align 4
  %157 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %156, i32 0, i32 11
  store i8 0, ptr %157, align 4
  %158 = load ptr, ptr %23, align 4
  %159 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %158, i32 0, i32 16
  %160 = load i8, ptr %159, align 2
  %161 = and i8 %160, -9
  store i8 %161, ptr %159, align 2
  store i32 0, ptr %24, align 4
  %162 = load ptr, ptr %23, align 4
  %163 = tail call fastcc i32 @dwc2_hsotg_ep_queue(ptr noundef %162, ptr noundef %145) #14
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %155
  %166 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %166, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.dwc2_hsotg_enqueue_setup, i32 noundef %163) #15
  br label %167

167:                                              ; preds = %165, %155, %144, %98
  %168 = and i32 %42, 786432
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %230, label %170

170:                                              ; preds = %167
  %171 = load ptr, ptr %3, align 4
  %172 = getelementptr i8, ptr %171, i32 2072
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %172) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %174 = load i8, ptr %7, align 8, !range !10
  %175 = icmp eq i8 %174, 0
  %176 = tail call i32 @llvm.bswap.i32(i32 %173) #14
  %177 = select i1 %175, i32 %173, i32 %176
  %178 = load ptr, ptr %3, align 4
  %179 = getelementptr i8, ptr %178, i32 2076
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %179) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %181 = load i8, ptr %7, align 8, !range !10
  %182 = icmp eq i8 %181, 0
  %183 = tail call i32 @llvm.bswap.i32(i32 %180) #14
  %184 = select i1 %182, i32 %180, i32 %183
  %185 = and i32 %184, %177
  %186 = and i32 %185, 65535
  %187 = load i8, ptr %20, align 1
  %188 = icmp ne i8 %187, 0
  %189 = icmp ugt i32 %185, 65535
  %190 = select i1 %188, i1 %189, i1 false
  br i1 %190, label %191, label %193

191:                                              ; preds = %170
  %192 = lshr i32 %185, 16
  br label %198

193:                                              ; preds = %206, %170
  %194 = phi i8 [ %187, %170 ], [ %207, %206 ]
  %195 = icmp ne i8 %194, 0
  %196 = icmp ne i32 %186, 0
  %197 = select i1 %195, i1 %196, i1 false
  br i1 %197, label %214, label %230

198:                                              ; preds = %206, %191
  %199 = phi i8 [ %207, %206 ], [ %187, %191 ]
  %200 = phi i32 [ %208, %206 ], [ 0, %191 ]
  %201 = phi i32 [ %209, %206 ], [ %192, %191 ]
  %202 = and i32 %201, 1
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %206, label %204

204:                                              ; preds = %198
  tail call fastcc void @dwc2_hsotg_epint(ptr noundef %1, i32 noundef %200, i32 noundef 0)
  %205 = load i8, ptr %20, align 1
  br label %206

206:                                              ; preds = %204, %198
  %207 = phi i8 [ %199, %198 ], [ %205, %204 ]
  %208 = add nuw nsw i32 %200, 1
  %209 = lshr i32 %201, 1
  %210 = zext i8 %207 to i32
  %211 = icmp ult i32 %208, %210
  %212 = icmp ugt i32 %201, 1
  %213 = select i1 %211, i1 %212, i1 false
  br i1 %213, label %198, label %193

214:                                              ; preds = %222, %193
  %215 = phi i8 [ %223, %222 ], [ %194, %193 ]
  %216 = phi i32 [ %224, %222 ], [ 0, %193 ]
  %217 = phi i32 [ %225, %222 ], [ %186, %193 ]
  %218 = and i32 %217, 1
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %222, label %220

220:                                              ; preds = %214
  tail call fastcc void @dwc2_hsotg_epint(ptr noundef %1, i32 noundef %216, i32 noundef 1)
  %221 = load i8, ptr %20, align 1
  br label %222

222:                                              ; preds = %220, %214
  %223 = phi i8 [ %215, %214 ], [ %221, %220 ]
  %224 = add nuw nsw i32 %216, 1
  %225 = lshr i32 %217, 1
  %226 = zext i8 %223 to i32
  %227 = icmp ult i32 %224, %226
  %228 = icmp ugt i32 %217, 1
  %229 = select i1 %227, i1 %228, i1 false
  br i1 %229, label %214, label %230

230:                                              ; preds = %222, %193, %167
  %231 = and i32 %42, 32
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %279, label %233

233:                                              ; preds = %230
  %234 = load ptr, ptr %3, align 4
  %235 = getelementptr i8, ptr %234, i32 24
  %236 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %235) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %237 = load i8, ptr %7, align 8, !range !10
  %238 = icmp eq i8 %237, 0
  %239 = tail call i32 @llvm.bswap.i32(i32 %236) #14
  %240 = select i1 %238, i32 %236, i32 %239
  %241 = and i32 %240, -33
  %242 = icmp eq i32 %241, %240
  br i1 %242, label %251, label %243

243:                                              ; preds = %233
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %238, label %248, label %244

244:                                              ; preds = %243
  %245 = tail call i32 @llvm.bswap.i32(i32 %241) #14
  %246 = load ptr, ptr %3, align 4
  %247 = getelementptr i8, ptr %246, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %247, i32 %245) #14, !srcloc !11
  br label %251

248:                                              ; preds = %243
  %249 = load ptr, ptr %3, align 4
  %250 = getelementptr i8, ptr %249, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %250, i32 %241) #14, !srcloc !11
  br label %251

251:                                              ; preds = %248, %244, %233
  %252 = load i8, ptr %20, align 1
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %279, label %254

254:                                              ; preds = %274, %251
  %255 = phi i8 [ %275, %274 ], [ %252, %251 ]
  %256 = phi i32 [ %276, %274 ], [ 0, %251 ]
  %257 = getelementptr %struct.dwc2_hsotg, ptr %1, i32 0, i32 87, i32 %256
  %258 = load ptr, ptr %257, align 4
  %259 = icmp eq ptr %258, null
  br i1 %259, label %274, label %260

260:                                              ; preds = %254
  %261 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %258, i32 0, i32 11
  %262 = load i8, ptr %261, align 4
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %274, label %264

264:                                              ; preds = %260
  %265 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %258, i32 0, i32 16
  %266 = load i8, ptr %265, align 2
  %267 = and i8 %266, 2
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %269, label %274

269:                                              ; preds = %264
  %270 = tail call fastcc i32 @dwc2_hsotg_trytx(ptr noundef %1, ptr noundef nonnull %258) #14
  %271 = icmp slt i32 %270, 0
  br i1 %271, label %279, label %272

272:                                              ; preds = %269
  %273 = load i8, ptr %20, align 1
  br label %274

274:                                              ; preds = %272, %264, %260, %254
  %275 = phi i8 [ %273, %272 ], [ %255, %264 ], [ %255, %260 ], [ %255, %254 ]
  %276 = add nuw nsw i32 %256, 1
  %277 = zext i8 %275 to i32
  %278 = icmp ult i32 %276, %277
  br i1 %278, label %254, label %279

279:                                              ; preds = %274, %269, %251, %230
  %280 = and i32 %42, 67108864
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %328, label %282

282:                                              ; preds = %279
  %283 = load ptr, ptr %3, align 4
  %284 = getelementptr i8, ptr %283, i32 24
  %285 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %284) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %286 = load i8, ptr %7, align 8, !range !10
  %287 = icmp eq i8 %286, 0
  %288 = tail call i32 @llvm.bswap.i32(i32 %285) #14
  %289 = select i1 %287, i32 %285, i32 %288
  %290 = and i32 %289, -67108865
  %291 = icmp eq i32 %290, %289
  br i1 %291, label %300, label %292

292:                                              ; preds = %282
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %287, label %297, label %293

293:                                              ; preds = %292
  %294 = tail call i32 @llvm.bswap.i32(i32 %290) #14
  %295 = load ptr, ptr %3, align 4
  %296 = getelementptr i8, ptr %295, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %296, i32 %294) #14, !srcloc !11
  br label %300

297:                                              ; preds = %292
  %298 = load ptr, ptr %3, align 4
  %299 = getelementptr i8, ptr %298, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %299, i32 %290) #14, !srcloc !11
  br label %300

300:                                              ; preds = %297, %293, %282
  %301 = load i8, ptr %20, align 1
  %302 = icmp eq i8 %301, 0
  br i1 %302, label %328, label %303

303:                                              ; preds = %323, %300
  %304 = phi i8 [ %324, %323 ], [ %301, %300 ]
  %305 = phi i32 [ %325, %323 ], [ 0, %300 ]
  %306 = getelementptr %struct.dwc2_hsotg, ptr %1, i32 0, i32 87, i32 %305
  %307 = load ptr, ptr %306, align 4
  %308 = icmp eq ptr %307, null
  br i1 %308, label %323, label %309

309:                                              ; preds = %303
  %310 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %307, i32 0, i32 11
  %311 = load i8, ptr %310, align 4
  %312 = icmp eq i8 %311, 0
  br i1 %312, label %323, label %313

313:                                              ; preds = %309
  %314 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %307, i32 0, i32 16
  %315 = load i8, ptr %314, align 2
  %316 = and i8 %315, 2
  %317 = icmp eq i8 %316, 0
  br i1 %317, label %323, label %318

318:                                              ; preds = %313
  %319 = tail call fastcc i32 @dwc2_hsotg_trytx(ptr noundef %1, ptr noundef nonnull %307) #14
  %320 = icmp slt i32 %319, 0
  br i1 %320, label %328, label %321

321:                                              ; preds = %318
  %322 = load i8, ptr %20, align 1
  br label %323

323:                                              ; preds = %321, %313, %309, %303
  %324 = phi i8 [ %322, %321 ], [ %304, %313 ], [ %304, %309 ], [ %304, %303 ]
  %325 = add nuw nsw i32 %305, 1
  %326 = zext i8 %324 to i32
  %327 = icmp ult i32 %325, %326
  br i1 %327, label %303, label %328

328:                                              ; preds = %323, %318, %300, %279
  %329 = and i32 %42, 16
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %364, label %331

331:                                              ; preds = %328
  %332 = load ptr, ptr %3, align 4
  %333 = getelementptr i8, ptr %332, i32 32
  %334 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %333) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %335 = load i8, ptr %7, align 8, !range !10
  %336 = icmp eq i8 %335, 0
  %337 = tail call i32 @llvm.bswap.i32(i32 %334) #14
  %338 = select i1 %336, i32 %334, i32 %337
  %339 = load i8, ptr %25, align 8, !range !10
  %340 = icmp eq i8 %339, 0
  br i1 %340, label %342, label %341, !prof !18

341:                                              ; preds = %331
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 2483, i32 noundef 9, ptr noundef null) #14
  br label %342

342:                                              ; preds = %341, %331
  %343 = and i32 %338, 15
  %344 = lshr i32 %338, 4
  %345 = and i32 %344, 2047
  %346 = lshr i32 %338, 17
  %347 = and i32 %346, 15
  switch i32 %347, label %362 [
    i32 1, label %364
    i32 3, label %348
    i32 4, label %352
    i32 2, label %356
    i32 6, label %357
  ]

348:                                              ; preds = %342
  %349 = load i8, ptr %25, align 8, !range !10
  %350 = icmp eq i8 %349, 0
  br i1 %350, label %351, label %364

351:                                              ; preds = %348
  tail call fastcc void @dwc2_hsotg_handle_outdone(ptr noundef %1, i32 noundef %343) #14
  br label %364

352:                                              ; preds = %342
  %353 = load i32, ptr %24, align 4
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %364

355:                                              ; preds = %352
  tail call fastcc void @dwc2_hsotg_handle_outdone(ptr noundef %1, i32 noundef %343) #14
  br label %364

356:                                              ; preds = %342
  tail call fastcc void @dwc2_hsotg_rx_data(ptr noundef %1, i32 noundef %343, i32 noundef %345) #14
  br label %364

357:                                              ; preds = %342
  %358 = load i32, ptr %24, align 4
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %361, label %360, !prof !18

360:                                              ; preds = %357
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 2531, i32 noundef 9, ptr noundef null) #14
  br label %361

361:                                              ; preds = %360, %357
  tail call fastcc void @dwc2_hsotg_rx_data(ptr noundef %1, i32 noundef %343, i32 noundef %345) #14
  br label %364

362:                                              ; preds = %342
  %363 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %363, ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.dwc2_hsotg_handle_rx, i32 noundef %338) #15
  br label %364

364:                                              ; preds = %362, %361, %356, %355, %352, %351, %348, %342, %328
  %365 = and i32 %42, 1024
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %374, label %367

367:                                              ; preds = %364
  %368 = load i8, ptr %7, align 8, !range !10
  %369 = icmp eq i8 %368, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  %370 = load ptr, ptr %3, align 4
  %371 = getelementptr i8, ptr %370, i32 20
  br i1 %369, label %373, label %372

372:                                              ; preds = %367
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %371, i32 262144) #14, !srcloc !11
  br label %374

373:                                              ; preds = %367
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %371, i32 1024) #14, !srcloc !11
  br label %374

374:                                              ; preds = %373, %372, %364
  %375 = and i32 %42, 128
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %453, label %377

377:                                              ; preds = %374
  %378 = load ptr, ptr %3, align 4
  %379 = getelementptr i8, ptr %378, i32 2076
  %380 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %379) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %381 = load i8, ptr %7, align 8, !range !10
  %382 = icmp eq i8 %381, 0
  %383 = tail call i32 @llvm.bswap.i32(i32 %380) #14
  %384 = select i1 %382, i32 %380, i32 %383
  %385 = lshr i32 %384, 16
  %386 = load ptr, ptr %3, align 4
  %387 = getelementptr i8, ptr %386, i32 24
  %388 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %387) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %389 = load i8, ptr %7, align 8, !range !10
  %390 = icmp eq i8 %389, 0
  %391 = tail call i32 @llvm.bswap.i32(i32 %388) #14
  %392 = select i1 %390, i32 %388, i32 %391
  %393 = and i32 %392, -129
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %390, label %398, label %394

394:                                              ; preds = %377
  %395 = tail call i32 @llvm.bswap.i32(i32 %393) #14
  %396 = load ptr, ptr %3, align 4
  %397 = getelementptr i8, ptr %396, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %397, i32 %395) #14, !srcloc !11
  br label %401

398:                                              ; preds = %377
  %399 = load ptr, ptr %3, align 4
  %400 = getelementptr i8, ptr %399, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %400, i32 %393) #14, !srcloc !11
  br label %401

401:                                              ; preds = %398, %394
  %402 = load i8, ptr %20, align 1
  %403 = icmp ugt i8 %402, 1
  br i1 %403, label %404, label %453

404:                                              ; preds = %448, %401
  %405 = phi i32 [ %449, %448 ], [ 1, %401 ]
  %406 = shl nuw i32 1, %405
  %407 = and i32 %406, %385
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %448, label %409

409:                                              ; preds = %404
  %410 = getelementptr %struct.dwc2_hsotg, ptr %1, i32 0, i32 88, i32 %405
  %411 = load ptr, ptr %410, align 4
  %412 = shl nuw nsw i32 %405, 5
  %413 = add nuw nsw i32 %412, 2816
  %414 = load ptr, ptr %3, align 4
  %415 = getelementptr i8, ptr %414, i32 %413
  %416 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %415) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %417 = load i8, ptr %7, align 8, !range !10
  %418 = icmp eq i8 %417, 0
  %419 = tail call i32 @llvm.bswap.i32(i32 %416) #14
  %420 = select i1 %418, i32 %416, i32 %419
  %421 = icmp sgt i32 %420, -1
  %422 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %411, i32 0, i32 16
  %423 = load i8, ptr %422, align 2
  %424 = and i8 %423, 4
  %425 = icmp eq i8 %424, 0
  %426 = select i1 %421, i1 true, i1 %425
  br i1 %426, label %436, label %427

427:                                              ; preds = %409
  %428 = or i32 %420, 1207959552
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %418, label %433, label %429

429:                                              ; preds = %427
  %430 = tail call i32 @llvm.bswap.i32(i32 %428) #14
  %431 = load ptr, ptr %3, align 4
  %432 = getelementptr i8, ptr %431, i32 %413
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %432, i32 %430) #14, !srcloc !11
  br label %448

433:                                              ; preds = %427
  %434 = load ptr, ptr %3, align 4
  %435 = getelementptr i8, ptr %434, i32 %413
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %435, i32 %428) #14, !srcloc !11
  br label %448

436:                                              ; preds = %409
  %437 = and i8 %423, 1
  %438 = icmp eq i8 %437, 0
  br i1 %438, label %448, label %439

439:                                              ; preds = %436
  %440 = or i32 %420, -1071644672
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %418, label %445, label %441

441:                                              ; preds = %439
  %442 = tail call i32 @llvm.bswap.i32(i32 %440) #14
  %443 = load ptr, ptr %3, align 4
  %444 = getelementptr i8, ptr %443, i32 %413
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %444, i32 %442) #14, !srcloc !11
  br label %448

445:                                              ; preds = %439
  %446 = load ptr, ptr %3, align 4
  %447 = getelementptr i8, ptr %446, i32 %413
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %447, i32 %440) #14, !srcloc !11
  br label %448

448:                                              ; preds = %445, %441, %436, %433, %429, %404
  %449 = add nuw nsw i32 %405, 1
  %450 = load i8, ptr %20, align 1
  %451 = zext i8 %450 to i32
  %452 = icmp ult i32 %449, %451
  br i1 %452, label %404, label %453

453:                                              ; preds = %448, %401, %374
  %454 = and i32 %42, 64
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %473, label %456

456:                                              ; preds = %453
  %457 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %457, ptr noundef nonnull @.str.49) #15
  %458 = load ptr, ptr %3, align 4
  %459 = getelementptr i8, ptr %458, i32 2052
  %460 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %459) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %461 = load i8, ptr %7, align 8, !range !10
  %462 = icmp eq i8 %461, 0
  %463 = tail call i32 @llvm.bswap.i32(i32 %460) #14
  %464 = select i1 %462, i32 %460, i32 %463
  %465 = or i32 %464, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %462, label %470, label %466

466:                                              ; preds = %456
  %467 = tail call i32 @llvm.bswap.i32(i32 %465) #14
  %468 = load ptr, ptr %3, align 4
  %469 = getelementptr i8, ptr %468, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %469, i32 %467) #14, !srcloc !11
  br label %473

470:                                              ; preds = %456
  %471 = load ptr, ptr %3, align 4
  %472 = getelementptr i8, ptr %471, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %472, i32 %465) #14, !srcloc !11
  br label %473

473:                                              ; preds = %470, %466, %453
  %474 = and i32 %42, 1048576
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %556, label %476

476:                                              ; preds = %473
  %477 = load ptr, ptr %3, align 4
  %478 = getelementptr i8, ptr %477, i32 2076
  %479 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %478) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %480 = load i8, ptr %7, align 8, !range !10
  %481 = icmp eq i8 %480, 0
  %482 = tail call i32 @llvm.bswap.i32(i32 %479) #14
  %483 = select i1 %481, i32 %479, i32 %482
  %484 = load i8, ptr %20, align 1
  %485 = icmp ugt i8 %484, 1
  br i1 %485, label %486, label %549

486:                                              ; preds = %542, %476
  %487 = phi i32 [ %543, %542 ], [ 1, %476 ]
  %488 = getelementptr %struct.dwc2_hsotg, ptr %1, i32 0, i32 87, i32 %487
  %489 = load ptr, ptr %488, align 4
  %490 = shl nuw i32 1, %487
  %491 = and i32 %490, %483
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %542, label %493

493:                                              ; preds = %486
  %494 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %489, i32 0, i32 16
  %495 = load i8, ptr %494, align 2
  %496 = and i8 %495, 4
  %497 = icmp eq i8 %496, 0
  br i1 %497, label %542, label %498

498:                                              ; preds = %493
  %499 = shl i32 %487, 5
  %500 = add nuw nsw i32 %499, 2304
  %501 = load ptr, ptr %3, align 4
  %502 = getelementptr i8, ptr %501, i32 %500
  %503 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %502) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %504 = load i8, ptr %7, align 8, !range !10
  %505 = icmp eq i8 %504, 0
  %506 = tail call i32 @llvm.bswap.i32(i32 %503) #14
  %507 = select i1 %505, i32 %503, i32 %506
  %508 = icmp sgt i32 %507, -1
  br i1 %508, label %542, label %509

509:                                              ; preds = %498
  %510 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %489, i32 0, i32 2
  %511 = load ptr, ptr %510, align 4
  %512 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %489, i32 0, i32 17
  %513 = load i32, ptr %512, align 4
  %514 = getelementptr inbounds %struct.dwc2_hsotg, ptr %511, i32 0, i32 11
  %515 = load i16, ptr %514, align 4
  %516 = zext i16 %515 to i32
  %517 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %489, i32 0, i32 18
  %518 = load i8, ptr %517, align 4, !range !10
  %519 = icmp eq i8 %518, 0
  %520 = xor i1 %519, true
  %521 = icmp ugt i32 %513, %516
  %522 = select i1 %520, i1 true, i1 %521
  br i1 %522, label %523, label %533

523:                                              ; preds = %509
  %524 = getelementptr inbounds %struct.dwc2_hsotg, ptr %511, i32 0, i32 85, i32 5
  %525 = load i32, ptr %524, align 4
  %526 = icmp eq i32 %525, 3
  %527 = select i1 %526, i32 8191, i32 1023
  %528 = select i1 %519, i1 true, i1 %521
  %529 = xor i1 %528, true
  %530 = sub i32 %516, %513
  %531 = icmp ult i32 %530, %527
  %532 = select i1 %529, i1 %531, i1 false
  br i1 %532, label %533, label %542

533:                                              ; preds = %523, %509
  %534 = or i32 %507, 1207959552
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %505, label %539, label %535

535:                                              ; preds = %533
  %536 = tail call i32 @llvm.bswap.i32(i32 %534) #14
  %537 = load ptr, ptr %3, align 4
  %538 = getelementptr i8, ptr %537, i32 %500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %538, i32 %536) #14, !srcloc !11
  br label %542

539:                                              ; preds = %533
  %540 = load ptr, ptr %3, align 4
  %541 = getelementptr i8, ptr %540, i32 %500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %541, i32 %534) #14, !srcloc !11
  br label %542

542:                                              ; preds = %539, %535, %523, %498, %493, %486
  %543 = add nuw nsw i32 %487, 1
  %544 = load i8, ptr %20, align 1
  %545 = zext i8 %544 to i32
  %546 = icmp ult i32 %543, %545
  br i1 %546, label %486, label %547

547:                                              ; preds = %542
  %548 = load i8, ptr %7, align 8, !range !10
  br label %549

549:                                              ; preds = %547, %476
  %550 = phi i8 [ %548, %547 ], [ %480, %476 ]
  %551 = icmp eq i8 %550, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  %552 = load ptr, ptr %3, align 4
  %553 = getelementptr i8, ptr %552, i32 20
  br i1 %551, label %555, label %554

554:                                              ; preds = %549
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %553, i32 4096) #14, !srcloc !11
  br label %556

555:                                              ; preds = %549
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %553, i32 1048576) #14, !srcloc !11
  br label %556

556:                                              ; preds = %555, %554, %473
  %557 = and i32 %42, 2097152
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %671, label %559

559:                                              ; preds = %556
  %560 = load ptr, ptr %3, align 4
  %561 = getelementptr i8, ptr %560, i32 2076
  %562 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %561) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %563 = load i8, ptr %7, align 8, !range !10
  %564 = icmp eq i8 %563, 0
  %565 = tail call i32 @llvm.bswap.i32(i32 %562) #14
  %566 = select i1 %564, i32 %562, i32 %565
  %567 = lshr i32 %566, 16
  %568 = load i8, ptr %20, align 1
  %569 = icmp ugt i8 %568, 1
  br i1 %569, label %570, label %664

570:                                              ; preds = %659, %559
  %571 = phi i32 [ %660, %659 ], [ 1, %559 ]
  %572 = getelementptr %struct.dwc2_hsotg, ptr %1, i32 0, i32 88, i32 %571
  %573 = load ptr, ptr %572, align 4
  %574 = shl nuw i32 1, %571
  %575 = and i32 %574, %567
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %659, label %577

577:                                              ; preds = %570
  %578 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %573, i32 0, i32 16
  %579 = load i8, ptr %578, align 2
  %580 = and i8 %579, 4
  %581 = icmp eq i8 %580, 0
  br i1 %581, label %659, label %582

582:                                              ; preds = %577
  %583 = shl i32 %571, 5
  %584 = add nuw nsw i32 %583, 2816
  %585 = load ptr, ptr %3, align 4
  %586 = getelementptr i8, ptr %585, i32 %584
  %587 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %586) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %588 = load i8, ptr %7, align 8, !range !10
  %589 = icmp eq i8 %588, 0
  %590 = shl i32 %587, 24
  %591 = select i1 %589, i32 %587, i32 %590
  %592 = icmp sgt i32 %591, -1
  br i1 %592, label %659, label %593

593:                                              ; preds = %582
  %594 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %573, i32 0, i32 2
  %595 = load ptr, ptr %594, align 4
  %596 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %573, i32 0, i32 17
  %597 = load i32, ptr %596, align 4
  %598 = getelementptr inbounds %struct.dwc2_hsotg, ptr %595, i32 0, i32 11
  %599 = load i16, ptr %598, align 4
  %600 = zext i16 %599 to i32
  %601 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %573, i32 0, i32 18
  %602 = load i8, ptr %601, align 4, !range !10
  %603 = icmp eq i8 %602, 0
  %604 = xor i1 %603, true
  %605 = icmp ugt i32 %597, %600
  %606 = select i1 %604, i1 true, i1 %605
  br i1 %606, label %607, label %617

607:                                              ; preds = %593
  %608 = getelementptr inbounds %struct.dwc2_hsotg, ptr %595, i32 0, i32 85, i32 5
  %609 = load i32, ptr %608, align 4
  %610 = icmp eq i32 %609, 3
  %611 = select i1 %610, i32 8191, i32 1023
  %612 = select i1 %603, i1 true, i1 %605
  %613 = xor i1 %612, true
  %614 = sub i32 %600, %597
  %615 = icmp ult i32 %614, %611
  %616 = select i1 %613, i1 %615, i1 false
  br i1 %616, label %617, label %659

617:                                              ; preds = %607, %593
  %618 = load ptr, ptr %3, align 4
  %619 = getelementptr i8, ptr %618, i32 24
  %620 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %619) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %621 = load i8, ptr %7, align 8, !range !10
  %622 = icmp eq i8 %621, 0
  %623 = tail call i32 @llvm.bswap.i32(i32 %620) #14
  %624 = select i1 %622, i32 %620, i32 %623
  %625 = or i32 %624, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %622, label %630, label %626

626:                                              ; preds = %617
  %627 = tail call i32 @llvm.bswap.i32(i32 %625) #14
  %628 = load ptr, ptr %3, align 4
  %629 = getelementptr i8, ptr %628, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %629, i32 %627) #14, !srcloc !11
  br label %633

630:                                              ; preds = %617
  %631 = load ptr, ptr %3, align 4
  %632 = getelementptr i8, ptr %631, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %632, i32 %625) #14, !srcloc !11
  br label %633

633:                                              ; preds = %630, %626
  %634 = load ptr, ptr %3, align 4
  %635 = getelementptr i8, ptr %634, i32 20
  %636 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %635) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %637 = load i8, ptr %7, align 8, !range !10
  %638 = icmp eq i8 %637, 0
  %639 = lshr i32 %636, 24
  %640 = select i1 %638, i32 %636, i32 %639
  %641 = and i32 %640, 128
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %643, label %659

643:                                              ; preds = %633
  %644 = load ptr, ptr %3, align 4
  %645 = getelementptr i8, ptr %644, i32 2052
  %646 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %645) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %647 = load i8, ptr %7, align 8, !range !10
  %648 = icmp eq i8 %647, 0
  %649 = tail call i32 @llvm.bswap.i32(i32 %646) #14
  %650 = select i1 %648, i32 %646, i32 %649
  %651 = or i32 %650, 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %648, label %656, label %652

652:                                              ; preds = %643
  %653 = tail call i32 @llvm.bswap.i32(i32 %651) #14
  %654 = load ptr, ptr %3, align 4
  %655 = getelementptr i8, ptr %654, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %655, i32 %653) #14, !srcloc !11
  br label %664

656:                                              ; preds = %643
  %657 = load ptr, ptr %3, align 4
  %658 = getelementptr i8, ptr %657, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %658, i32 %651) #14, !srcloc !11
  br label %664

659:                                              ; preds = %633, %607, %582, %577, %570
  %660 = add nuw nsw i32 %571, 1
  %661 = load i8, ptr %20, align 1
  %662 = zext i8 %661 to i32
  %663 = icmp ult i32 %660, %662
  br i1 %663, label %570, label %664

664:                                              ; preds = %659, %656, %652, %559
  %665 = load i8, ptr %7, align 8, !range !10
  %666 = icmp eq i8 %665, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  %667 = load ptr, ptr %3, align 4
  %668 = getelementptr i8, ptr %667, i32 20
  br i1 %666, label %670, label %669

669:                                              ; preds = %664
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %668, i32 8192) #14, !srcloc !11
  br label %671

670:                                              ; preds = %664
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %668, i32 2097152) #14, !srcloc !11
  br label %671

671:                                              ; preds = %670, %669, %556
  %672 = and i32 %42, 67108912
  %673 = icmp ne i32 %672, 0
  %674 = add nsw i32 %27, -1
  %675 = icmp ne i32 %674, 0
  %676 = select i1 %673, i1 %675, i1 false
  br i1 %676, label %26, label %677

677:                                              ; preds = %671
  %678 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 3, i32 21
  %679 = load i8, ptr %678, align 1, !range !10
  %680 = icmp eq i8 %679, 0
  br i1 %680, label %731, label %681

681:                                              ; preds = %677
  %682 = load ptr, ptr %3, align 4
  %683 = getelementptr i8, ptr %682, i32 108
  %684 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %683) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %685 = load i8, ptr %7, align 8, !range !10
  %686 = icmp eq i8 %685, 0
  %687 = lshr i32 %684, 24
  %688 = select i1 %686, i32 %684, i32 %687
  %689 = load ptr, ptr %3, align 4
  %690 = getelementptr i8, ptr %689, i32 104
  %691 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %690) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %692 = load i8, ptr %7, align 8, !range !10
  %693 = icmp eq i8 %692, 0
  %694 = lshr i32 %691, 24
  %695 = select i1 %693, i32 %691, i32 %694
  %696 = and i32 %688, 1
  %697 = and i32 %696, %695
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %731, label %699

699:                                              ; preds = %681
  %700 = load ptr, ptr %3, align 4
  %701 = getelementptr i8, ptr %700, i32 108
  %702 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %701) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %703 = load i8, ptr %7, align 8, !range !10
  %704 = icmp eq i8 %703, 0
  %705 = tail call i32 @llvm.bswap.i32(i32 %702) #14
  %706 = select i1 %704, i32 %702, i32 %705
  %707 = or i32 %706, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %704, label %712, label %708

708:                                              ; preds = %699
  %709 = tail call i32 @llvm.bswap.i32(i32 %707) #14
  %710 = load ptr, ptr %3, align 4
  %711 = getelementptr i8, ptr %710, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %711, i32 %709) #14, !srcloc !11
  br label %715

712:                                              ; preds = %699
  %713 = load ptr, ptr %3, align 4
  %714 = getelementptr i8, ptr %713, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %714, i32 %707) #14, !srcloc !11
  br label %715

715:                                              ; preds = %712, %708
  %716 = load ptr, ptr %3, align 4
  %717 = getelementptr i8, ptr %716, i32 2052
  %718 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %717) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %719 = load i8, ptr %7, align 8, !range !10
  %720 = icmp eq i8 %719, 0
  %721 = tail call i32 @llvm.bswap.i32(i32 %718) #14
  %722 = select i1 %720, i32 %718, i32 %721
  %723 = or i32 %722, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %720, label %728, label %724

724:                                              ; preds = %715
  %725 = tail call i32 @llvm.bswap.i32(i32 %723) #14
  %726 = load ptr, ptr %3, align 4
  %727 = getelementptr i8, ptr %726, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %727, i32 %725) #14, !srcloc !11
  br label %731

728:                                              ; preds = %715
  %729 = load ptr, ptr %3, align 4
  %730 = getelementptr i8, ptr %729, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %730, i32 %723) #14, !srcloc !11
  br label %731

731:                                              ; preds = %728, %724, %681, %677
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  %732 = load i16, ptr %15, align 4
  %733 = add i16 %732, 1
  store i16 %733, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %734

734:                                              ; preds = %731, %2
  %735 = phi i32 [ 1, %731 ], [ 0, %2 ]
  ret i32 %735
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @dwc2_hsotg_ep_alloc_request(ptr nocapture noundef readnone %0, i32 noundef %1) #3 {
  %3 = and i32 %1, 17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5, !prof !18

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
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef %11, i32 noundef 68) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.dwc2_hsotg_req, ptr %14, i32 0, i32 1
  store volatile ptr %17, ptr %17, align 8
  %18 = getelementptr inbounds %struct.dwc2_hsotg_req, ptr %14, i32 0, i32 1, i32 1
  store ptr %17, ptr %18, align 4
  br label %19

19:                                               ; preds = %16, %9
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_hsotg_initep(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #3 {
  %5 = zext i1 %3 to i8
  %6 = icmp eq i32 %2, 0
  %7 = select i1 %3, ptr @.str.53, ptr @.str.54
  %8 = select i1 %6, ptr @.str.60, ptr %7
  %9 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 11
  store i8 %5, ptr %9, align 4
  %10 = trunc i32 %2 to i8
  %11 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 13
  store i8 %10, ptr %11, align 2
  %12 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 24
  %13 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %12, i32 noundef 10, ptr noundef nonnull @.str.61, i32 noundef %2, ptr noundef nonnull %8)
  %14 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 1
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 1, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 3
  store volatile ptr %16, ptr %16, align 4
  %17 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 3, i32 1
  store ptr %16, ptr %17, align 4
  br i1 %6, label %22, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 85, i32 4
  %20 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 85, i32 4, i32 1
  %21 = load ptr, ptr %20, align 4
  store ptr %16, ptr %20, align 4
  store ptr %19, ptr %16, align 4
  store ptr %21, ptr %17, align 4
  store volatile ptr %16, ptr %21, align 4
  br label %22

22:                                               ; preds = %18, %4
  %23 = phi i32 [ 1024, %18 ], [ 64, %4 ]
  %24 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 2
  store ptr %0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 1
  store ptr %12, ptr %25, align 4
  %26 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 2
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 2
  %29 = select i1 %28, i32 8, i32 %23
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %1, i32 noundef %29) #14
  %30 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 2
  store ptr @dwc2_hsotg_ep_ops, ptr %30, align 4
  br i1 %6, label %31, label %35

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 4
  %33 = load i8, ptr %32, align 4
  %34 = or i8 %33, 1
  br label %43

35:                                               ; preds = %22
  %36 = load i8, ptr %26, align 1
  %37 = icmp eq i8 %36, 2
  %38 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 4
  %39 = load i8, ptr %38, align 4
  %40 = or i8 %39, 6
  %41 = select i1 %37, i8 %39, i8 %40
  %42 = or i8 %41, 8
  br label %43

43:                                               ; preds = %35, %31
  %44 = phi i8 [ %42, %35 ], [ %34, %31 ]
  %45 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 4
  br i1 %3, label %46, label %51

46:                                               ; preds = %43
  %47 = or i8 %44, 16
  store i8 %47, ptr %45, align 4
  %48 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 41
  %49 = load i8, ptr %48, align 8, !range !10
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %92, label %56

51:                                               ; preds = %43
  %52 = or i8 %44, 32
  store i8 %52, ptr %45, align 4
  %53 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 41
  %54 = load i8, ptr %53, align 8, !range !10
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %92, label %74

56:                                               ; preds = %46
  %57 = add i32 %2, 1
  %58 = srem i32 %57, 15
  %59 = shl nsw i32 %58, 11
  %60 = shl i32 %2, 5
  %61 = add i32 %60, 2304
  %62 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %63 = load i8, ptr %62, align 8, !range !10
  %64 = icmp eq i8 %63, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %64, label %70, label %65

65:                                               ; preds = %56
  %66 = tail call i32 @llvm.bswap.i32(i32 %59) #14
  %67 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 %61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %66) #14, !srcloc !11
  br label %92

70:                                               ; preds = %56
  %71 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr i8, ptr %72, i32 %61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %59) #14, !srcloc !11
  br label %92

74:                                               ; preds = %51
  %75 = add i32 %2, 1
  %76 = srem i32 %75, 15
  %77 = shl nsw i32 %76, 11
  %78 = shl i32 %2, 5
  %79 = add i32 %78, 2816
  %80 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %81 = load i8, ptr %80, align 8, !range !10
  %82 = icmp eq i8 %81, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %82, label %88, label %83

83:                                               ; preds = %74
  %84 = tail call i32 @llvm.bswap.i32(i32 %77) #14
  %85 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr i8, ptr %86, i32 %79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %84) #14, !srcloc !11
  br label %92

88:                                               ; preds = %74
  %89 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr i8, ptr %90, i32 %79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %77) #14, !srcloc !11
  br label %92

92:                                               ; preds = %88, %83, %70, %65, %51, %46
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_hsotg_remove(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 85
  tail call void @usb_del_gadget_udc(ptr noundef %2) #14
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 73
  %4 = load ptr, ptr %3, align 8
  tail call void @kfree(ptr noundef %4) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwc2_hsotg_ep_free_request(ptr nocapture noundef readnone %0, ptr noundef %1) #3 {
  tail call void @kfree(ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_hsotg_suspend(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 28
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %51

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 67
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %51, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds %struct.usb_gadget_driver, ptr %7, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.4, ptr noundef %12) #15
  %13 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 18
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #14
  %15 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 86
  %16 = load i8, ptr %15, align 8
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %9
  tail call void @dwc2_hsotg_core_disconnect(ptr noundef %0)
  br label %20

20:                                               ; preds = %19, %9
  tail call void @dwc2_hsotg_disconnect(ptr noundef %0)
  %21 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 85, i32 5
  store i32 0, ptr %21, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %14) #14
  %22 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 70
  %23 = load i8, ptr %22, align 1
  %24 = icmp ugt i8 %23, 1
  br i1 %24, label %25, label %51

25:                                               ; preds = %46, %20
  %26 = phi i32 [ %47, %46 ], [ 1, %20 ]
  %27 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 87, i32 %26
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %28, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.dwc2_hsotg, ptr %32, i32 0, i32 18
  %34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %33) #14
  %35 = tail call fastcc i32 @dwc2_hsotg_ep_disable(ptr noundef nonnull %28) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %34) #14
  br label %36

36:                                               ; preds = %30, %25
  %37 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 88, i32 %26
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %38, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.dwc2_hsotg, ptr %42, i32 0, i32 18
  %44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %43) #14
  %45 = tail call fastcc i32 @dwc2_hsotg_ep_disable(ptr noundef nonnull %38) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %43, i32 noundef %44) #14
  br label %46

46:                                               ; preds = %40, %36
  %47 = add nuw nsw i32 %26, 1
  %48 = load i8, ptr %22, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp ult i32 %47, %49
  br i1 %50, label %25, label %51

51:                                               ; preds = %46, %20, %5, %1
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc2_hsotg_ep_disable_lock(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 18
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #14
  %6 = tail call fastcc i32 @dwc2_hsotg_ep_disable(ptr noundef %0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #14
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_hsotg_resume(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 28
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 67
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds %struct.usb_gadget_driver, ptr %7, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.5, ptr noundef %12) #15
  %13 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 18
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #14
  tail call void @dwc2_hsotg_core_init_disconnected(ptr noundef %0, i1 noundef zeroext false)
  %15 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 86
  %16 = load i8, ptr %15, align 8
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %9
  tail call void @dwc2_enable_acg(ptr noundef %0) #14
  tail call void @dwc2_hsotg_core_connect(ptr noundef %0)
  br label %20

20:                                               ; preds = %19, %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %14) #14
  br label %21

21:                                               ; preds = %20, %5, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_enable_acg(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_backup_device_registers(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 30
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 2048
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %7 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %8 = load i8, ptr %7, align 8, !range !10
  %9 = icmp eq i8 %8, 0
  %10 = tail call i32 @llvm.bswap.i32(i32 %6) #14
  %11 = select i1 %9, i32 %6, i32 %10
  store i32 %11, ptr %2, align 4
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i8, ptr %12, i32 2052
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %15 = load i8, ptr %7, align 8, !range !10
  %16 = icmp eq i8 %15, 0
  %17 = tail call i32 @llvm.bswap.i32(i32 %14) #14
  %18 = select i1 %16, i32 %14, i32 %17
  %19 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 30, i32 1
  store i32 %18, ptr %19, align 4
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr i8, ptr %20, i32 2076
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %23 = load i8, ptr %7, align 8, !range !10
  %24 = icmp eq i8 %23, 0
  %25 = tail call i32 @llvm.bswap.i32(i32 %22) #14
  %26 = select i1 %24, i32 %22, i32 %25
  %27 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 30, i32 2
  store i32 %26, ptr %27, align 4
  %28 = load ptr, ptr %3, align 4
  %29 = getelementptr i8, ptr %28, i32 2064
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %31 = load i8, ptr %7, align 8, !range !10
  %32 = icmp eq i8 %31, 0
  %33 = tail call i32 @llvm.bswap.i32(i32 %30) #14
  %34 = select i1 %32, i32 %30, i32 %33
  %35 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 30, i32 3
  store i32 %34, ptr %35, align 4
  %36 = load ptr, ptr %3, align 4
  %37 = getelementptr i8, ptr %36, i32 2068
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %39 = load i8, ptr %7, align 8, !range !10
  %40 = icmp eq i8 %39, 0
  %41 = tail call i32 @llvm.bswap.i32(i32 %38) #14
  %42 = select i1 %40, i32 %38, i32 %41
  %43 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 30, i32 4
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 70
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %126, label %47

47:                                               ; preds = %47, %1
  %48 = phi i32 [ %122, %47 ], [ 0, %1 ]
  %49 = shl i32 %48, 5
  %50 = add nuw nsw i32 %49, 2304
  %51 = load ptr, ptr %3, align 4
  %52 = getelementptr i8, ptr %51, i32 %50
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %54 = load i8, ptr %7, align 8, !range !10
  %55 = icmp eq i8 %54, 0
  %56 = tail call i32 @llvm.bswap.i32(i32 %53) #14
  %57 = select i1 %55, i32 %53, i32 %56
  %58 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 30, i32 5, i32 %48
  %59 = and i32 %57, 65536
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, i32 268435456, i32 536870912
  %62 = or i32 %61, %57
  store i32 %62, ptr %58, align 4
  %63 = add nuw nsw i32 %49, 2320
  %64 = load ptr, ptr %3, align 4
  %65 = getelementptr i8, ptr %64, i32 %63
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %67 = load i8, ptr %7, align 8, !range !10
  %68 = icmp eq i8 %67, 0
  %69 = tail call i32 @llvm.bswap.i32(i32 %66) #14
  %70 = select i1 %68, i32 %66, i32 %69
  %71 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 30, i32 6, i32 %48
  store i32 %70, ptr %71, align 4
  %72 = add nuw nsw i32 %49, 2324
  %73 = load ptr, ptr %3, align 4
  %74 = getelementptr i8, ptr %73, i32 %72
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %76 = load i8, ptr %7, align 8, !range !10
  %77 = icmp eq i8 %76, 0
  %78 = tail call i32 @llvm.bswap.i32(i32 %75) #14
  %79 = select i1 %77, i32 %75, i32 %78
  %80 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 30, i32 7, i32 %48
  store i32 %79, ptr %80, align 4
  %81 = add nuw nsw i32 %49, 2816
  %82 = load ptr, ptr %3, align 4
  %83 = getelementptr i8, ptr %82, i32 %81
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %85 = load i8, ptr %7, align 8, !range !10
  %86 = icmp eq i8 %85, 0
  %87 = tail call i32 @llvm.bswap.i32(i32 %84) #14
  %88 = select i1 %86, i32 %84, i32 %87
  %89 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 30, i32 8, i32 %48
  %90 = and i32 %88, 65536
  %91 = icmp eq i32 %90, 0
  %92 = select i1 %91, i32 268435456, i32 536870912
  %93 = or i32 %92, %88
  store i32 %93, ptr %89, align 4
  %94 = add nuw nsw i32 %49, 2832
  %95 = load ptr, ptr %3, align 4
  %96 = getelementptr i8, ptr %95, i32 %94
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %98 = load i8, ptr %7, align 8, !range !10
  %99 = icmp eq i8 %98, 0
  %100 = tail call i32 @llvm.bswap.i32(i32 %97) #14
  %101 = select i1 %99, i32 %97, i32 %100
  %102 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 30, i32 9, i32 %48
  store i32 %101, ptr %102, align 4
  %103 = add nuw nsw i32 %49, 2836
  %104 = load ptr, ptr %3, align 4
  %105 = getelementptr i8, ptr %104, i32 %103
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %107 = load i8, ptr %7, align 8, !range !10
  %108 = icmp eq i8 %107, 0
  %109 = tail call i32 @llvm.bswap.i32(i32 %106) #14
  %110 = select i1 %108, i32 %106, i32 %109
  %111 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 30, i32 10, i32 %48
  store i32 %110, ptr %111, align 4
  %112 = shl i32 %48, 2
  %113 = add nuw nsw i32 %112, 256
  %114 = load ptr, ptr %3, align 4
  %115 = getelementptr i8, ptr %114, i32 %113
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %117 = load i8, ptr %7, align 8, !range !10
  %118 = icmp eq i8 %117, 0
  %119 = tail call i32 @llvm.bswap.i32(i32 %116) #14
  %120 = select i1 %118, i32 %116, i32 %119
  %121 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 30, i32 11, i32 %48
  store i32 %120, ptr %121, align 4
  %122 = add nuw nsw i32 %48, 1
  %123 = load i8, ptr %44, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp ult i32 %122, %124
  br i1 %125, label %47, label %126

126:                                              ; preds = %47, %1
  %127 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 30, i32 12
  store i8 1, ptr %127, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_restore_device_registers(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 30, i32 12
  %4 = load i8, ptr %3, align 4, !range !10
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dwc2_restore_device_registers) #15
  br label %210

8:                                                ; preds = %2
  store i8 0, ptr %3, align 4
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 30, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %14 = load i8, ptr %13, align 8, !range !10
  %15 = icmp eq i8 %14, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %15, label %21, label %16

16:                                               ; preds = %10
  %17 = tail call i32 @llvm.bswap.i32(i32 %12) #14
  %18 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %17) #14, !srcloc !11
  br label %25

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %12) #14, !srcloc !11
  br label %25

25:                                               ; preds = %21, %16, %8
  %26 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 30, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %29 = load i8, ptr %28, align 8, !range !10
  %30 = icmp eq i8 %29, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = tail call i32 @llvm.bswap.i32(i32 %27) #14
  %33 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %32) #14, !srcloc !11
  br label %40

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %27) #14, !srcloc !11
  br label %40

40:                                               ; preds = %36, %31
  %41 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 30, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = load i8, ptr %28, align 8, !range !10
  %44 = icmp eq i8 %43, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = tail call i32 @llvm.bswap.i32(i32 %42) #14
  %47 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i8, ptr %48, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %46) #14, !srcloc !11
  br label %54

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i8, ptr %52, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %42) #14, !srcloc !11
  br label %54

54:                                               ; preds = %50, %45
  %55 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 30, i32 4
  %56 = load i32, ptr %55, align 4
  %57 = load i8, ptr %28, align 8, !range !10
  %58 = icmp eq i8 %57, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = tail call i32 @llvm.bswap.i32(i32 %56) #14
  %61 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr i8, ptr %62, i32 2068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %60) #14, !srcloc !11
  br label %68

64:                                               ; preds = %54
  %65 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr i8, ptr %66, i32 2068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %56) #14, !srcloc !11
  br label %68

68:                                               ; preds = %64, %59
  %69 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 70
  %70 = load i8, ptr %69, align 1
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %210, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %74 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 42
  br label %75

75:                                               ; preds = %205, %72
  %76 = phi i32 [ 0, %72 ], [ %206, %205 ]
  %77 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 30, i32 6, i32 %76
  %78 = load i32, ptr %77, align 4
  %79 = shl i32 %76, 5
  %80 = add nuw nsw i32 %79, 2320
  %81 = load i8, ptr %28, align 8, !range !10
  %82 = icmp eq i8 %81, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %82, label %87, label %83

83:                                               ; preds = %75
  %84 = tail call i32 @llvm.bswap.i32(i32 %78) #14
  %85 = load ptr, ptr %73, align 4
  %86 = getelementptr i8, ptr %85, i32 %80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %84) #14, !srcloc !11
  br label %90

87:                                               ; preds = %75
  %88 = load ptr, ptr %73, align 4
  %89 = getelementptr i8, ptr %88, i32 %80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %78) #14, !srcloc !11
  br label %90

90:                                               ; preds = %87, %83
  %91 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 30, i32 7, i32 %76
  %92 = load i32, ptr %91, align 4
  %93 = add nuw nsw i32 %79, 2324
  %94 = load i8, ptr %28, align 8, !range !10
  %95 = icmp eq i8 %94, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %95, label %100, label %96

96:                                               ; preds = %90
  %97 = tail call i32 @llvm.bswap.i32(i32 %92) #14
  %98 = load ptr, ptr %73, align 4
  %99 = getelementptr i8, ptr %98, i32 %93
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %97) #14, !srcloc !11
  br label %103

100:                                              ; preds = %90
  %101 = load ptr, ptr %73, align 4
  %102 = getelementptr i8, ptr %101, i32 %93
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %92) #14, !srcloc !11
  br label %103

103:                                              ; preds = %100, %96
  %104 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 30, i32 9, i32 %76
  %105 = load i32, ptr %104, align 4
  %106 = add nuw nsw i32 %79, 2832
  %107 = load i8, ptr %28, align 8, !range !10
  %108 = icmp eq i8 %107, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %108, label %113, label %109

109:                                              ; preds = %103
  %110 = tail call i32 @llvm.bswap.i32(i32 %105) #14
  %111 = load ptr, ptr %73, align 4
  %112 = getelementptr i8, ptr %111, i32 %106
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %110) #14, !srcloc !11
  br label %116

113:                                              ; preds = %103
  %114 = load ptr, ptr %73, align 4
  %115 = getelementptr i8, ptr %114, i32 %106
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %105) #14, !srcloc !11
  br label %116

116:                                              ; preds = %113, %109
  %117 = load i8, ptr %74, align 1, !range !10
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %128, label %119

119:                                              ; preds = %116
  %120 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 30, i32 5, i32 %76
  %121 = load i32, ptr %120, align 4
  %122 = icmp sgt i32 %121, -1
  br i1 %122, label %128, label %123

123:                                              ; preds = %119
  %124 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 87, i32 %76
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %125, i32 0, i32 19
  %127 = load i32, ptr %126, align 4
  store i32 %127, ptr %91, align 4
  br label %128

128:                                              ; preds = %123, %119, %116
  %129 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 30, i32 11, i32 %76
  %130 = load i32, ptr %129, align 4
  %131 = shl i32 %76, 2
  %132 = add nuw nsw i32 %131, 256
  %133 = load i8, ptr %28, align 8, !range !10
  %134 = icmp eq i8 %133, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %134, label %139, label %135

135:                                              ; preds = %128
  %136 = tail call i32 @llvm.bswap.i32(i32 %130) #14
  %137 = load ptr, ptr %73, align 4
  %138 = getelementptr i8, ptr %137, i32 %132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %136) #14, !srcloc !11
  br label %142

139:                                              ; preds = %128
  %140 = load ptr, ptr %73, align 4
  %141 = getelementptr i8, ptr %140, i32 %132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 %130) #14, !srcloc !11
  br label %142

142:                                              ; preds = %139, %135
  %143 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 30, i32 5, i32 %76
  %144 = load i32, ptr %143, align 4
  %145 = add nuw nsw i32 %79, 2304
  %146 = load i8, ptr %28, align 8, !range !10
  %147 = icmp eq i8 %146, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %147, label %152, label %148

148:                                              ; preds = %142
  %149 = tail call i32 @llvm.bswap.i32(i32 %144) #14
  %150 = load ptr, ptr %73, align 4
  %151 = getelementptr i8, ptr %150, i32 %145
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 %149) #14, !srcloc !11
  br label %155

152:                                              ; preds = %142
  %153 = load ptr, ptr %73, align 4
  %154 = getelementptr i8, ptr %153, i32 %145
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 %144) #14, !srcloc !11
  br label %155

155:                                              ; preds = %152, %148
  %156 = load i32, ptr %104, align 4
  %157 = load i8, ptr %28, align 8, !range !10
  %158 = icmp eq i8 %157, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %158, label %163, label %159

159:                                              ; preds = %155
  %160 = tail call i32 @llvm.bswap.i32(i32 %156) #14
  %161 = load ptr, ptr %73, align 4
  %162 = getelementptr i8, ptr %161, i32 %106
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %160) #14, !srcloc !11
  br label %166

163:                                              ; preds = %155
  %164 = load ptr, ptr %73, align 4
  %165 = getelementptr i8, ptr %164, i32 %106
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %165, i32 %156) #14, !srcloc !11
  br label %166

166:                                              ; preds = %163, %159
  %167 = load i8, ptr %74, align 1, !range !10
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %179, label %169

169:                                              ; preds = %166
  %170 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 30, i32 8, i32 %76
  %171 = load i32, ptr %170, align 4
  %172 = icmp sgt i32 %171, -1
  br i1 %172, label %179, label %173

173:                                              ; preds = %169
  %174 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 88, i32 %76
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %175, i32 0, i32 19
  %177 = load i32, ptr %176, align 4
  %178 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 30, i32 10, i32 %76
  store i32 %177, ptr %178, align 4
  br label %179

179:                                              ; preds = %173, %169, %166
  %180 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 30, i32 10, i32 %76
  %181 = load i32, ptr %180, align 4
  %182 = add nuw nsw i32 %79, 2836
  %183 = load i8, ptr %28, align 8, !range !10
  %184 = icmp eq i8 %183, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %184, label %189, label %185

185:                                              ; preds = %179
  %186 = tail call i32 @llvm.bswap.i32(i32 %181) #14
  %187 = load ptr, ptr %73, align 4
  %188 = getelementptr i8, ptr %187, i32 %182
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %188, i32 %186) #14, !srcloc !11
  br label %192

189:                                              ; preds = %179
  %190 = load ptr, ptr %73, align 4
  %191 = getelementptr i8, ptr %190, i32 %182
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %191, i32 %181) #14, !srcloc !11
  br label %192

192:                                              ; preds = %189, %185
  %193 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 30, i32 8, i32 %76
  %194 = load i32, ptr %193, align 4
  %195 = add nuw nsw i32 %79, 2816
  %196 = load i8, ptr %28, align 8, !range !10
  %197 = icmp eq i8 %196, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %197, label %202, label %198

198:                                              ; preds = %192
  %199 = tail call i32 @llvm.bswap.i32(i32 %194) #14
  %200 = load ptr, ptr %73, align 4
  %201 = getelementptr i8, ptr %200, i32 %195
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %201, i32 %199) #14, !srcloc !11
  br label %205

202:                                              ; preds = %192
  %203 = load ptr, ptr %73, align 4
  %204 = getelementptr i8, ptr %203, i32 %195
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %204, i32 %194) #14, !srcloc !11
  br label %205

205:                                              ; preds = %202, %198
  %206 = add nuw nsw i32 %76, 1
  %207 = load i8, ptr %69, align 1
  %208 = zext i8 %207 to i32
  %209 = icmp ult i32 %206, %208
  br i1 %209, label %75, label %210

210:                                              ; preds = %205, %68, %6
  %211 = phi i32 [ -22, %6 ], [ 0, %68 ], [ 0, %205 ]
  ret i32 %211
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_gadget_enter_hibernation(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 28
  store i32 2, ptr %2, align 8
  %3 = tail call i32 @dwc2_backup_global_registers(ptr noundef %0) #14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.dwc2_gadget_enter_hibernation) #15
  br label %99

7:                                                ; preds = %1
  %8 = tail call i32 @dwc2_backup_device_registers(ptr noundef %0)
  %9 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %10 = load i8, ptr %9, align 8, !range !10
  %11 = icmp eq i8 %10, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  %12 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 88
  br i1 %11, label %16, label %15

15:                                               ; preds = %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 301989888) #14, !srcloc !11
  br label %17

16:                                               ; preds = %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 18) #14, !srcloc !11
  br label %17

17:                                               ; preds = %16, %15
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #14
  %19 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 8
  %20 = load i8, ptr %19, align 8
  %21 = or i8 %20, 8
  store i8 %21, ptr %19, align 8
  %22 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 88
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %26 = load i8, ptr %9, align 8, !range !10
  %27 = icmp eq i8 %26, 0
  %28 = tail call i32 @llvm.bswap.i32(i32 %25) #14
  %29 = select i1 %27, i32 %25, i32 %28
  %30 = or i32 %29, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %27, label %35, label %31

31:                                               ; preds = %17
  %32 = tail call i32 @llvm.bswap.i32(i32 %30) #14
  %33 = load ptr, ptr %22, align 4
  %34 = getelementptr i8, ptr %33, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #14, !srcloc !11
  br label %38

35:                                               ; preds = %17
  %36 = load ptr, ptr %22, align 4
  %37 = getelementptr i8, ptr %36, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %30) #14, !srcloc !11
  br label %38

38:                                               ; preds = %35, %31
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 2147480) #14
  %40 = load ptr, ptr %22, align 4
  %41 = getelementptr i8, ptr %40, i32 88
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %43 = load i8, ptr %9, align 8, !range !10
  %44 = icmp eq i8 %43, 0
  %45 = tail call i32 @llvm.bswap.i32(i32 %42) #14
  %46 = select i1 %44, i32 %42, i32 %45
  %47 = or i32 %46, 263424
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %44, label %52, label %48

48:                                               ; preds = %38
  %49 = tail call i32 @llvm.bswap.i32(i32 %47) #14
  %50 = load ptr, ptr %22, align 4
  %51 = getelementptr i8, ptr %50, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #14, !srcloc !11
  br label %55

52:                                               ; preds = %38
  %53 = load ptr, ptr %22, align 4
  %54 = getelementptr i8, ptr %53, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %47) #14, !srcloc !11
  br label %55

55:                                               ; preds = %52, %48
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 2147480) #14
  %57 = load ptr, ptr %22, align 4
  %58 = getelementptr i8, ptr %57, i32 88
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %60 = load i8, ptr %9, align 8, !range !10
  %61 = icmp eq i8 %60, 0
  %62 = tail call i32 @llvm.bswap.i32(i32 %59) #14
  %63 = select i1 %61, i32 %59, i32 %62
  %64 = or i32 %63, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %61, label %69, label %65

65:                                               ; preds = %55
  %66 = tail call i32 @llvm.bswap.i32(i32 %64) #14
  %67 = load ptr, ptr %22, align 4
  %68 = getelementptr i8, ptr %67, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #14, !srcloc !11
  br label %72

69:                                               ; preds = %55
  %70 = load ptr, ptr %22, align 4
  %71 = getelementptr i8, ptr %70, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %64) #14, !srcloc !11
  br label %72

72:                                               ; preds = %69, %65
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 2147480) #14
  %74 = load ptr, ptr %22, align 4
  %75 = getelementptr i8, ptr %74, i32 88
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %77 = load i8, ptr %9, align 8, !range !10
  %78 = icmp eq i8 %77, 0
  %79 = tail call i32 @llvm.bswap.i32(i32 %76) #14
  %80 = select i1 %78, i32 %76, i32 %79
  %81 = or i32 %80, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %78, label %86, label %82

82:                                               ; preds = %72
  %83 = tail call i32 @llvm.bswap.i32(i32 %81) #14
  %84 = load ptr, ptr %22, align 4
  %85 = getelementptr i8, ptr %84, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %83) #14, !srcloc !11
  br label %89

86:                                               ; preds = %72
  %87 = load ptr, ptr %22, align 4
  %88 = getelementptr i8, ptr %87, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %81) #14, !srcloc !11
  br label %89

89:                                               ; preds = %86, %82
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %90(i32 noundef 2147480) #14
  %91 = load ptr, ptr %22, align 4
  %92 = getelementptr i8, ptr %91, i32 88
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %94 = load i8, ptr %9, align 8, !range !10
  %95 = icmp eq i8 %94, 0
  %96 = tail call i32 @llvm.bswap.i32(i32 %93) #14
  %97 = select i1 %95, i32 %93, i32 %96
  %98 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 29, i32 11
  store i32 %97, ptr %98, align 4
  br label %99

99:                                               ; preds = %89, %5
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_backup_global_registers(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_gadget_exit_hibernation(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 30
  %5 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 8
  %6 = load i8, ptr %5, align 8
  %7 = and i8 %6, 8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %194, label %9

9:                                                ; preds = %3
  tail call void @dwc2_hib_restore_common(ptr noundef %0, i32 noundef %1, i32 noundef 0) #14
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  %12 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 -1) #14
  br label %15

15:                                               ; preds = %11, %9
  %16 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 88
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %20 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %21 = load i8, ptr %20, align 8, !range !10
  %22 = icmp eq i8 %21, 0
  %23 = tail call i32 @llvm.bswap.i32(i32 %19) #14
  %24 = select i1 %22, i32 %19, i32 %23
  %25 = and i32 %24, -5
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %22, label %30, label %26

26:                                               ; preds = %15
  %27 = tail call i32 @llvm.bswap.i32(i32 %25) #14
  %28 = load ptr, ptr %16, align 4
  %29 = getelementptr i8, ptr %28, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #14, !srcloc !11
  br label %33

30:                                               ; preds = %15
  %31 = load ptr, ptr %16, align 4
  %32 = getelementptr i8, ptr %31, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %25) #14, !srcloc !11
  br label %33

33:                                               ; preds = %30, %26
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 2147480) #14
  %35 = icmp eq i32 %1, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = load ptr, ptr %16, align 4
  %38 = getelementptr i8, ptr %37, i32 3584
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %40 = load i8, ptr %20, align 8, !range !10
  %41 = icmp eq i8 %40, 0
  %42 = tail call i32 @llvm.bswap.i32(i32 %39) #14
  %43 = select i1 %41, i32 %39, i32 %42
  %44 = and i32 %43, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %41, label %49, label %45

45:                                               ; preds = %36
  %46 = tail call i32 @llvm.bswap.i32(i32 %44) #14
  %47 = load ptr, ptr %16, align 4
  %48 = getelementptr i8, ptr %47, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #14, !srcloc !11
  br label %52

49:                                               ; preds = %36
  %50 = load ptr, ptr %16, align 4
  %51 = getelementptr i8, ptr %50, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %44) #14, !srcloc !11
  br label %52

52:                                               ; preds = %49, %45, %33
  %53 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 29, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = load i8, ptr %20, align 8, !range !10
  %56 = icmp eq i8 %55, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = tail call i32 @llvm.bswap.i32(i32 %54) #14
  %59 = load ptr, ptr %16, align 4
  %60 = getelementptr i8, ptr %59, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #14, !srcloc !11
  br label %64

61:                                               ; preds = %52
  %62 = load ptr, ptr %16, align 4
  %63 = getelementptr i8, ptr %62, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %54) #14, !srcloc !11
  br label %64

64:                                               ; preds = %61, %57
  %65 = load i32, ptr %4, align 4
  %66 = load i8, ptr %20, align 8, !range !10
  %67 = icmp eq i8 %66, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = tail call i32 @llvm.bswap.i32(i32 %65) #14
  %70 = load ptr, ptr %16, align 4
  %71 = getelementptr i8, ptr %70, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %69) #14, !srcloc !11
  br label %75

72:                                               ; preds = %64
  %73 = load ptr, ptr %16, align 4
  %74 = getelementptr i8, ptr %73, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %65) #14, !srcloc !11
  br label %75

75:                                               ; preds = %72, %68
  %76 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 30, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = load i8, ptr %20, align 8, !range !10
  %79 = icmp eq i8 %78, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %79, label %84, label %80

80:                                               ; preds = %75
  %81 = tail call i32 @llvm.bswap.i32(i32 %77) #14
  %82 = load ptr, ptr %16, align 4
  %83 = getelementptr i8, ptr %82, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %81) #14, !srcloc !11
  br label %87

84:                                               ; preds = %75
  %85 = load ptr, ptr %16, align 4
  %86 = getelementptr i8, ptr %85, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %77) #14, !srcloc !11
  br label %87

87:                                               ; preds = %84, %80
  br i1 %10, label %104, label %88

88:                                               ; preds = %87
  %89 = load ptr, ptr %16, align 4
  %90 = getelementptr i8, ptr %89, i32 2048
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %92 = load i8, ptr %20, align 8, !range !10
  %93 = icmp eq i8 %92, 0
  %94 = tail call i32 @llvm.bswap.i32(i32 %91) #14
  %95 = select i1 %93, i32 %91, i32 %94
  %96 = and i32 %95, -2033
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %93, label %101, label %97

97:                                               ; preds = %88
  %98 = tail call i32 @llvm.bswap.i32(i32 %96) #14
  %99 = load ptr, ptr %16, align 4
  %100 = getelementptr i8, ptr %99, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %98) #14, !srcloc !11
  br label %104

101:                                              ; preds = %88
  %102 = load ptr, ptr %16, align 4
  %103 = getelementptr i8, ptr %102, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %96) #14, !srcloc !11
  br label %104

104:                                              ; preds = %101, %97, %87
  %105 = load ptr, ptr %16, align 4
  %106 = getelementptr i8, ptr %105, i32 88
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %108 = load i8, ptr %20, align 8, !range !10
  %109 = icmp eq i8 %108, 0
  %110 = tail call i32 @llvm.bswap.i32(i32 %107) #14
  %111 = select i1 %109, i32 %107, i32 %110
  %112 = and i32 %111, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %109, label %117, label %113

113:                                              ; preds = %104
  %114 = tail call i32 @llvm.bswap.i32(i32 %112) #14
  %115 = load ptr, ptr %16, align 4
  %116 = getelementptr i8, ptr %115, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %114) #14, !srcloc !11
  br label %120

117:                                              ; preds = %104
  %118 = load ptr, ptr %16, align 4
  %119 = getelementptr i8, ptr %118, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 %112) #14, !srcloc !11
  br label %120

120:                                              ; preds = %117, %113
  %121 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  br i1 %35, label %134, label %122

122:                                              ; preds = %120
  tail call void %121(i32 noundef 2147480) #14
  %123 = load i32, ptr %76, align 4
  %124 = or i32 %123, 1
  %125 = load i8, ptr %20, align 8, !range !10
  %126 = icmp eq i8 %125, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %126, label %131, label %127

127:                                              ; preds = %122
  %128 = tail call i32 @llvm.bswap.i32(i32 %124) #14
  %129 = load ptr, ptr %16, align 4
  %130 = getelementptr i8, ptr %129, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %128) #14, !srcloc !11
  br label %150

131:                                              ; preds = %122
  %132 = load ptr, ptr %16, align 4
  %133 = getelementptr i8, ptr %132, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %124) #14, !srcloc !11
  br label %150

134:                                              ; preds = %120
  tail call void %121(i32 noundef 10737400) #14
  %135 = load ptr, ptr %16, align 4
  %136 = getelementptr i8, ptr %135, i32 2052
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %136) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %138 = load i8, ptr %20, align 8, !range !10
  %139 = icmp eq i8 %138, 0
  %140 = tail call i32 @llvm.bswap.i32(i32 %137) #14
  %141 = select i1 %139, i32 %137, i32 %140
  %142 = or i32 %141, 2048
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %139, label %147, label %143

143:                                              ; preds = %134
  %144 = tail call i32 @llvm.bswap.i32(i32 %142) #14
  %145 = load ptr, ptr %16, align 4
  %146 = getelementptr i8, ptr %145, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %144) #14, !srcloc !11
  br label %150

147:                                              ; preds = %134
  %148 = load ptr, ptr %16, align 4
  %149 = getelementptr i8, ptr %148, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 %142) #14, !srcloc !11
  br label %150

150:                                              ; preds = %147, %143, %131, %127
  %151 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %151(i32 noundef 429496000) #14
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  %152 = load ptr, ptr %16, align 4
  %153 = getelementptr i8, ptr %152, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 -1) #14
  %154 = tail call i32 @dwc2_restore_global_registers(ptr noundef %0) #14
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %150
  %157 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %157, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.dwc2_gadget_exit_hibernation) #15
  br label %194

158:                                              ; preds = %150
  %159 = tail call i32 @dwc2_restore_device_registers(ptr noundef %0, i32 noundef %1)
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %158
  %162 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %162, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.dwc2_gadget_exit_hibernation) #15
  br label %194

163:                                              ; preds = %158
  br i1 %35, label %190, label %164

164:                                              ; preds = %163
  %165 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %165(i32 noundef 214748000) #14
  %166 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %166(i32 noundef 214748000) #14
  %167 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %167(i32 noundef 214748000) #14
  %168 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %168(i32 noundef 214748000) #14
  %169 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %169(i32 noundef 214748000) #14
  %170 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %170(i32 noundef 214748000) #14
  %171 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %171(i32 noundef 214748000) #14
  %172 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %172(i32 noundef 214748000) #14
  %173 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %173(i32 noundef 214748000) #14
  %174 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %174(i32 noundef 214748000) #14
  %175 = load ptr, ptr %16, align 4
  %176 = getelementptr i8, ptr %175, i32 2052
  %177 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %176) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %178 = load i8, ptr %20, align 8, !range !10
  %179 = icmp eq i8 %178, 0
  %180 = tail call i32 @llvm.bswap.i32(i32 %177) #14
  %181 = select i1 %179, i32 %177, i32 %180
  %182 = and i32 %181, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %179, label %187, label %183

183:                                              ; preds = %164
  %184 = tail call i32 @llvm.bswap.i32(i32 %182) #14
  %185 = load ptr, ptr %16, align 4
  %186 = getelementptr i8, ptr %185, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %186, i32 %184) #14, !srcloc !11
  br label %190

187:                                              ; preds = %164
  %188 = load ptr, ptr %16, align 4
  %189 = getelementptr i8, ptr %188, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %189, i32 %182) #14, !srcloc !11
  br label %190

190:                                              ; preds = %187, %183, %163
  %191 = load i8, ptr %5, align 8
  %192 = and i8 %191, -9
  store i8 %192, ptr %5, align 8
  %193 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 28
  store i32 0, ptr %193, align 8
  br label %194

194:                                              ; preds = %190, %161, %156, %3
  %195 = phi i32 [ %154, %156 ], [ %159, %161 ], [ 0, %190 ], [ 1, %3 ]
  ret i32 %195
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hib_restore_common(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_restore_global_registers(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_gadget_enter_partial_power_down(ptr noundef %0) local_unnamed_addr #3 {
  %2 = tail call i32 @dwc2_backup_global_registers(ptr noundef %0) #14
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.dwc2_gadget_enter_partial_power_down) #15
  br label %57

6:                                                ; preds = %1
  %7 = tail call i32 @dwc2_backup_device_registers(ptr noundef %0)
  %8 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  %9 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 -1) #14
  %12 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 3584
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %16 = load i8, ptr %8, align 8, !range !10
  %17 = icmp eq i8 %16, 0
  %18 = tail call i32 @llvm.bswap.i32(i32 %15) #14
  %19 = select i1 %17, i32 %15, i32 %18
  %20 = or i32 %19, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %17, label %25, label %21

21:                                               ; preds = %6
  %22 = tail call i32 @llvm.bswap.i32(i32 %20) #14
  %23 = load ptr, ptr %12, align 4
  %24 = getelementptr i8, ptr %23, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #14, !srcloc !11
  br label %28

25:                                               ; preds = %6
  %26 = load ptr, ptr %12, align 4
  %27 = getelementptr i8, ptr %26, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %20) #14, !srcloc !11
  br label %28

28:                                               ; preds = %25, %21
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 1073740) #14
  %30 = or i32 %19, 12
  %31 = load i8, ptr %8, align 8, !range !10
  %32 = icmp eq i8 %31, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = tail call i32 @llvm.bswap.i32(i32 %30) #14
  %35 = load ptr, ptr %12, align 4
  %36 = getelementptr i8, ptr %35, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #14, !srcloc !11
  br label %40

37:                                               ; preds = %28
  %38 = load ptr, ptr %12, align 4
  %39 = getelementptr i8, ptr %38, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %30) #14, !srcloc !11
  br label %40

40:                                               ; preds = %37, %33
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 1073740) #14
  %42 = or i32 %19, 13
  %43 = load i8, ptr %8, align 8, !range !10
  %44 = icmp eq i8 %43, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = tail call i32 @llvm.bswap.i32(i32 %42) #14
  %47 = load ptr, ptr %12, align 4
  %48 = getelementptr i8, ptr %47, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #14, !srcloc !11
  br label %52

49:                                               ; preds = %40
  %50 = load ptr, ptr %12, align 4
  %51 = getelementptr i8, ptr %50, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %42) #14, !srcloc !11
  br label %52

52:                                               ; preds = %49, %45
  %53 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 8
  %54 = load i8, ptr %53, align 8
  %55 = or i8 %54, 16
  store i8 %55, ptr %53, align 8
  %56 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 28
  store i32 2, ptr %56, align 8
  br label %57

57:                                               ; preds = %52, %4
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_gadget_exit_partial_power_down(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 30
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 3584
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %8 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %9 = load i8, ptr %8, align 8, !range !10
  %10 = icmp eq i8 %9, 0
  %11 = tail call i32 @llvm.bswap.i32(i32 %7) #14
  %12 = select i1 %10, i32 %7, i32 %11
  %13 = and i32 %12, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %10, label %18, label %14

14:                                               ; preds = %2
  %15 = tail call i32 @llvm.bswap.i32(i32 %13) #14
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr i8, ptr %16, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #14, !srcloc !11
  br label %21

18:                                               ; preds = %2
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr i8, ptr %19, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %13) #14, !srcloc !11
  br label %21

21:                                               ; preds = %18, %14
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr i8, ptr %22, i32 3584
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %25 = load i8, ptr %8, align 8, !range !10
  %26 = icmp eq i8 %25, 0
  %27 = tail call i32 @llvm.bswap.i32(i32 %24) #14
  %28 = select i1 %26, i32 %24, i32 %27
  %29 = and i32 %28, -5
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %26, label %34, label %30

30:                                               ; preds = %21
  %31 = tail call i32 @llvm.bswap.i32(i32 %29) #14
  %32 = load ptr, ptr %4, align 4
  %33 = getelementptr i8, ptr %32, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #14, !srcloc !11
  br label %37

34:                                               ; preds = %21
  %35 = load ptr, ptr %4, align 4
  %36 = getelementptr i8, ptr %35, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %29) #14, !srcloc !11
  br label %37

37:                                               ; preds = %34, %30
  %38 = load ptr, ptr %4, align 4
  %39 = getelementptr i8, ptr %38, i32 3584
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %41 = load i8, ptr %8, align 8, !range !10
  %42 = icmp eq i8 %41, 0
  %43 = tail call i32 @llvm.bswap.i32(i32 %40) #14
  %44 = select i1 %42, i32 %40, i32 %43
  %45 = and i32 %44, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %42, label %50, label %46

46:                                               ; preds = %37
  %47 = tail call i32 @llvm.bswap.i32(i32 %45) #14
  %48 = load ptr, ptr %4, align 4
  %49 = getelementptr i8, ptr %48, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #14, !srcloc !11
  br label %53

50:                                               ; preds = %37
  %51 = load ptr, ptr %4, align 4
  %52 = getelementptr i8, ptr %51, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %45) #14, !srcloc !11
  br label %53

53:                                               ; preds = %50, %46
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 21474800) #14
  br i1 %1, label %55, label %76

55:                                               ; preds = %53
  %56 = tail call i32 @dwc2_restore_global_registers(ptr noundef %0) #14
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.dwc2_gadget_exit_partial_power_down) #15
  br label %97

60:                                               ; preds = %55
  %61 = load i32, ptr %3, align 4
  %62 = load i8, ptr %8, align 8, !range !10
  %63 = icmp eq i8 %62, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = tail call i32 @llvm.bswap.i32(i32 %61) #14
  %66 = load ptr, ptr %4, align 4
  %67 = getelementptr i8, ptr %66, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #14, !srcloc !11
  br label %71

68:                                               ; preds = %60
  %69 = load ptr, ptr %4, align 4
  %70 = getelementptr i8, ptr %69, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %61) #14, !srcloc !11
  br label %71

71:                                               ; preds = %68, %64
  %72 = tail call i32 @dwc2_restore_device_registers(ptr noundef %0, i32 noundef 0)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.dwc2_gadget_exit_partial_power_down) #15
  br label %97

76:                                               ; preds = %71, %53
  %77 = load ptr, ptr %4, align 4
  %78 = getelementptr i8, ptr %77, i32 2052
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %80 = load i8, ptr %8, align 8, !range !10
  %81 = icmp eq i8 %80, 0
  %82 = tail call i32 @llvm.bswap.i32(i32 %79) #14
  %83 = select i1 %81, i32 %79, i32 %82
  %84 = or i32 %83, 2048
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %81, label %89, label %85

85:                                               ; preds = %76
  %86 = tail call i32 @llvm.bswap.i32(i32 %84) #14
  %87 = load ptr, ptr %4, align 4
  %88 = getelementptr i8, ptr %87, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %86) #14, !srcloc !11
  br label %92

89:                                               ; preds = %76
  %90 = load ptr, ptr %4, align 4
  %91 = getelementptr i8, ptr %90, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %84) #14, !srcloc !11
  br label %92

92:                                               ; preds = %89, %85
  %93 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 8
  %94 = load i8, ptr %93, align 8
  %95 = and i8 %94, -17
  store i8 %95, ptr %93, align 8
  %96 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 28
  store i32 0, ptr %96, align 8
  br label %97

97:                                               ; preds = %92, %74, %58
  %98 = phi i32 [ %56, %58 ], [ %72, %74 ], [ 0, %92 ]
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_gadget_enter_clock_gating(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 3584
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %7 = load i8, ptr %6, align 8, !range !10
  %8 = icmp eq i8 %7, 0
  %9 = tail call i32 @llvm.bswap.i32(i32 %5) #14
  %10 = select i1 %8, i32 %5, i32 %9
  %11 = or i32 %10, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %8, label %16, label %12

12:                                               ; preds = %1
  %13 = tail call i32 @llvm.bswap.i32(i32 %11) #14
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr i8, ptr %14, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #14, !srcloc !11
  br label %19

16:                                               ; preds = %1
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr i8, ptr %17, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %11) #14, !srcloc !11
  br label %19

19:                                               ; preds = %16, %12
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 1073740) #14
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr i8, ptr %21, i32 3584
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %24 = load i8, ptr %6, align 8, !range !10
  %25 = icmp eq i8 %24, 0
  %26 = tail call i32 @llvm.bswap.i32(i32 %23) #14
  %27 = select i1 %25, i32 %23, i32 %26
  %28 = or i32 %27, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %25, label %33, label %29

29:                                               ; preds = %19
  %30 = tail call i32 @llvm.bswap.i32(i32 %28) #14
  %31 = load ptr, ptr %2, align 4
  %32 = getelementptr i8, ptr %31, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #14, !srcloc !11
  br label %36

33:                                               ; preds = %19
  %34 = load ptr, ptr %2, align 4
  %35 = getelementptr i8, ptr %34, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %28) #14, !srcloc !11
  br label %36

36:                                               ; preds = %33, %29
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 1073740) #14
  %38 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 28
  store i32 2, ptr %38, align 8
  %39 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 9
  store i8 1, ptr %39, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_gadget_exit_clock_gating(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 3584
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %7 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %8 = load i8, ptr %7, align 8, !range !10
  %9 = icmp eq i8 %8, 0
  %10 = tail call i32 @llvm.bswap.i32(i32 %6) #14
  %11 = select i1 %9, i32 %6, i32 %10
  %12 = and i32 %11, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %9, label %17, label %13

13:                                               ; preds = %2
  %14 = tail call i32 @llvm.bswap.i32(i32 %12) #14
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr i8, ptr %15, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #14, !srcloc !11
  br label %20

17:                                               ; preds = %2
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr i8, ptr %18, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %12) #14, !srcloc !11
  br label %20

20:                                               ; preds = %17, %13
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 1073740) #14
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr i8, ptr %22, i32 3584
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %25 = load i8, ptr %7, align 8, !range !10
  %26 = icmp eq i8 %25, 0
  %27 = tail call i32 @llvm.bswap.i32(i32 %24) #14
  %28 = select i1 %26, i32 %24, i32 %27
  %29 = and i32 %28, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %26, label %34, label %30

30:                                               ; preds = %20
  %31 = tail call i32 @llvm.bswap.i32(i32 %29) #14
  %32 = load ptr, ptr %3, align 4
  %33 = getelementptr i8, ptr %32, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #14, !srcloc !11
  br label %37

34:                                               ; preds = %20
  %35 = load ptr, ptr %3, align 4
  %36 = getelementptr i8, ptr %35, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %29) #14, !srcloc !11
  br label %37

37:                                               ; preds = %34, %30
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 1073740) #14
  %39 = icmp eq i32 %1, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %3, align 4
  %42 = getelementptr i8, ptr %41, i32 2052
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %44 = load i8, ptr %7, align 8, !range !10
  %45 = icmp eq i8 %44, 0
  %46 = tail call i32 @llvm.bswap.i32(i32 %43) #14
  %47 = select i1 %45, i32 %43, i32 %46
  %48 = or i32 %47, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %45, label %53, label %49

49:                                               ; preds = %40
  %50 = tail call i32 @llvm.bswap.i32(i32 %48) #14
  %51 = load ptr, ptr %3, align 4
  %52 = getelementptr i8, ptr %51, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #14, !srcloc !11
  br label %56

53:                                               ; preds = %40
  %54 = load ptr, ptr %3, align 4
  %55 = getelementptr i8, ptr %54, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %48) #14, !srcloc !11
  br label %56

56:                                               ; preds = %53, %49, %37
  %57 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 85
  %58 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 85, i32 5
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %76, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 67
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %76, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.usb_gadget_driver, ptr %63, i32 0, i32 7
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %76, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  %71 = load i16, ptr %70, align 4
  %72 = add i16 %71, 1
  store i16 %72, ptr %70, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  %73 = load ptr, ptr %62, align 4
  %74 = getelementptr inbounds %struct.usb_gadget_driver, ptr %73, i32 0, i32 7
  %75 = load ptr, ptr %74, align 4
  tail call void %75(ptr noundef %57) #14
  tail call void @_raw_spin_lock(ptr noundef %70) #14
  br label %76

76:                                               ; preds = %69, %65, %61, %56
  %77 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 28
  store i32 0, ptr %77, align 8
  %78 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 9
  store i8 0, ptr %78, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_hsotg_complete_request(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #3 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %79, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.usb_request, ptr %2, i32 0, i32 11
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, -115
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i32 %3, ptr %7, align 4
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 41
  %13 = load i8, ptr %12, align 8, !range !10
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %40, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 85
  %17 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 12
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  tail call void @usb_gadget_unmap_request(ptr noundef %16, ptr noundef nonnull %2, i32 noundef %19) #14
  %20 = load i8, ptr %12, align 8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.dwc2_hsotg_req, ptr %2, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %40, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 11
  %28 = load i8, ptr %27, align 4
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i32, ptr %7, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load ptr, ptr %2, align 4
  %35 = getelementptr inbounds %struct.usb_request, ptr %2, i32 0, i32 12
  %36 = load i32, ptr %35, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %24, ptr align 1 %34, i32 %36, i1 false) #14
  br label %37

37:                                               ; preds = %33, %30, %26
  %38 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %38) #14
  %39 = load ptr, ptr %23, align 4
  store ptr %39, ptr %2, align 4
  store ptr null, ptr %23, align 4
  br label %40

40:                                               ; preds = %37, %22, %15, %11
  %41 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 3
  store ptr null, ptr %41, align 4
  %42 = getelementptr inbounds %struct.dwc2_hsotg_req, ptr %2, i32 0, i32 1
  %43 = getelementptr inbounds %struct.dwc2_hsotg_req, ptr %2, i32 0, i32 1, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %42, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %44, ptr %46, align 4
  store volatile ptr %45, ptr %44, align 4
  store volatile ptr %42, ptr %42, align 4
  store ptr %42, ptr %43, align 4
  %47 = getelementptr inbounds %struct.usb_request, ptr %2, i32 0, i32 7
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  %52 = load i16, ptr %51, align 4
  %53 = add i16 %52, 1
  store i16 %53, ptr %51, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  tail call void @usb_gadget_giveback_request(ptr noundef %1, ptr noundef nonnull %2) #14
  tail call void @_raw_spin_lock(ptr noundef %51) #14
  br label %54

54:                                               ; preds = %50, %40
  %55 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 42
  %56 = load i8, ptr %55, align 1, !range !10
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 16
  %60 = load i8, ptr %59, align 2
  %61 = and i8 %60, 4
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %58, %54
  %64 = load ptr, ptr %41, align 4
  %65 = icmp eq ptr %64, null
  %66 = icmp sgt i32 %3, -1
  %67 = and i1 %66, %65
  br i1 %67, label %68, label %79

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 1
  %72 = load volatile ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, %71
  br i1 %73, label %79, label %74

74:                                               ; preds = %68
  %75 = load volatile ptr, ptr %71, align 4
  %76 = icmp eq ptr %75, %71
  %77 = getelementptr i8, ptr %75, i32 -56
  %78 = select i1 %76, ptr null, ptr %77
  tail call fastcc void @dwc2_hsotg_start_req(ptr noundef %70, ptr noundef %1, ptr noundef %78, i1 noundef zeroext false) #14
  br label %79

79:                                               ; preds = %74, %68, %63, %58, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_giveback_request(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_unmap_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_hsotg_start_req(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #3 {
  %5 = alloca ptr, align 4
  %6 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 13
  %7 = load i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 11
  %10 = load i8, ptr %9, align 4
  %11 = icmp ne i8 %7, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  %16 = or i1 %15, %3
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.dwc2_hsotg_start_req) #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1069, i32 noundef 9, ptr noundef null) #14
  br label %352

19:                                               ; preds = %12
  %20 = icmp ne ptr %14, %2
  %21 = and i1 %20, %3
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.dwc2_hsotg_start_req) #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1074, i32 noundef 9, ptr noundef null) #14
  br label %352

24:                                               ; preds = %19, %4
  %25 = icmp ne i8 %10, 0
  %26 = shl nuw nsw i32 %8, 5
  %27 = select i1 %25, i32 2324, i32 2836
  %28 = add nuw nsw i32 %27, %26
  %29 = select i1 %25, i32 2304, i32 2816
  %30 = add nuw nsw i32 %29, %26
  %31 = select i1 %25, i32 2320, i32 2832
  %32 = add nuw nsw i32 %31, %26
  %33 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 %30
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %37 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %38 = load i8, ptr %37, align 8, !range !10
  %39 = icmp eq i8 %38, 0
  %40 = tail call i32 @llvm.bswap.i32(i32 %36) #14
  %41 = select i1 %39, i32 %36, i32 %40
  %42 = xor i1 %11, true
  %43 = and i32 %41, 2097152
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %42, i1 true, i1 %44
  br i1 %45, label %48, label %46

46:                                               ; preds = %24
  %47 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %47, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.dwc2_hsotg_start_req, i32 noundef %8) #15
  br label %352

48:                                               ; preds = %24
  %49 = getelementptr inbounds %struct.usb_request, ptr %2, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.usb_request, ptr %2, i32 0, i32 12
  %52 = load i32, ptr %51, align 4
  %53 = sub i32 %50, %52
  %54 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 42
  %55 = load i8, ptr %54, align 1, !range !10
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %48
  %58 = load i8, ptr %6, align 2
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i8, ptr %9, align 4
  %62 = icmp eq i8 %61, 0
  %63 = select i1 %62, i32 1, i32 3
  br label %64

64:                                               ; preds = %60, %57
  %65 = phi i32 [ 524287, %57 ], [ 127, %60 ]
  %66 = phi i32 [ 1023, %57 ], [ %63, %60 ]
  %67 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 7
  %68 = load i56, ptr %67, align 2
  %69 = trunc i56 %68 to i32
  %70 = and i32 %69, 65535
  %71 = mul nuw nsw i32 %70, %66
  %72 = tail call i32 @llvm.umin.i32(i32 %71, i32 %65) #14
  br label %102

73:                                               ; preds = %48
  %74 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 16
  %75 = load i8, ptr %74, align 2
  %76 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 7
  %77 = load i56, ptr %76, align 2
  %78 = trunc i56 %77 to i32
  %79 = load i8, ptr %9, align 4
  %80 = and i8 %75, 4
  %81 = icmp eq i8 %80, 0
  %82 = icmp eq i8 %79, 0
  %83 = select i1 %82, i32 524032, i32 1048320
  %84 = select i1 %81, i32 4194240, i32 %83
  %85 = load i8, ptr %6, align 2
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %102, label %87

87:                                               ; preds = %73
  %88 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 9
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %89, i32 0, i32 3
  %91 = load i8, ptr %90, align 1
  %92 = and i8 %91, 3
  %93 = icmp ne i8 %92, 3
  %94 = icmp ne i8 %79, 0
  %95 = select i1 %93, i1 true, i1 %94
  %96 = and i32 %78, 3
  %97 = icmp eq i32 %96, 0
  %98 = select i1 %95, i1 true, i1 %97
  br i1 %98, label %102, label %99

99:                                               ; preds = %87
  %100 = shl i32 %78, 6
  %101 = and i32 %100, 4194240
  br label %102

102:                                              ; preds = %99, %87, %73, %64
  %103 = phi i32 [ %69, %64 ], [ %78, %87 ], [ %78, %99 ], [ %78, %73 ]
  %104 = phi i32 [ %72, %64 ], [ %84, %87 ], [ %101, %99 ], [ %84, %73 ]
  %105 = icmp ugt i32 %53, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = and i32 %103, 65535
  %108 = urem i32 %104, %107
  %109 = sub nsw i32 %104, %108
  br label %110

110:                                              ; preds = %106, %102
  %111 = phi i32 [ %109, %106 ], [ %53, %102 ]
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = and i32 %103, 65535
  %115 = add nsw i32 %114, -1
  %116 = add i32 %115, %111
  %117 = udiv i32 %116, %114
  br label %118

118:                                              ; preds = %113, %110
  %119 = phi i32 [ %117, %113 ], [ 1, %110 ]
  %120 = select i1 %25, i1 %11, i1 false
  br i1 %120, label %121, label %128

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 16
  %123 = load i8, ptr %122, align 2
  %124 = and i8 %123, 4
  %125 = icmp eq i8 %124, 0
  %126 = shl i32 %119, 29
  %127 = select i1 %125, i32 536870912, i32 %126
  br label %128

128:                                              ; preds = %121, %118
  %129 = phi i32 [ 0, %118 ], [ %127, %121 ]
  br i1 %25, label %130, label %146

130:                                              ; preds = %128
  %131 = getelementptr inbounds %struct.usb_request, ptr %2, i32 0, i32 6
  %132 = load i32, ptr %131, align 4
  %133 = and i32 %132, 262144
  %134 = icmp eq i32 %133, 0
  %135 = or i1 %134, %3
  br i1 %135, label %146, label %136

136:                                              ; preds = %130
  %137 = and i32 %103, 65535
  %138 = icmp ult i32 %50, %137
  br i1 %138, label %146, label %139

139:                                              ; preds = %136
  %140 = urem i32 %50, %137
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 16
  %144 = load i8, ptr %143, align 2
  %145 = or i8 %144, 8
  store i8 %145, ptr %143, align 2
  br label %146

146:                                              ; preds = %142, %139, %136, %130, %128
  %147 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 3
  store ptr %2, ptr %147, align 4
  %148 = load i8, ptr %54, align 1, !range !10
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %214, label %150

150:                                              ; preds = %146
  %151 = and i32 %103, 65535
  %152 = select i1 %25, i1 true, i1 %42
  %153 = select i1 %25, i32 %111, i32 %151
  br i1 %152, label %160, label %154

154:                                              ; preds = %150
  %155 = urem i32 %111, %151
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %154
  %158 = add i32 %111, %151
  %159 = sub i32 %158, %155
  br label %160

160:                                              ; preds = %157, %154, %150
  %161 = phi i32 [ %153, %150 ], [ %159, %157 ], [ %111, %154 ]
  br i1 %3, label %162, label %164

162:                                              ; preds = %160
  %163 = load i32, ptr %51, align 4
  br label %164

164:                                              ; preds = %162, %160
  %165 = phi i32 [ %163, %162 ], [ 0, %160 ]
  %166 = getelementptr inbounds %struct.usb_request, ptr %2, i32 0, i32 2
  %167 = load i32, ptr %166, align 4
  %168 = add i32 %167, %165
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  %169 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 20
  %170 = load ptr, ptr %169, align 4
  store ptr %170, ptr %5, align 4
  %171 = icmp eq ptr %2, null
  br i1 %171, label %176, label %172

172:                                              ; preds = %164
  %173 = getelementptr inbounds %struct.usb_request, ptr %2, i32 0, i32 4
  %174 = load i32, ptr %173, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %172, %164
  call fastcc void @dwc2_gadget_fill_nonisoc_xfer_ddma_one(ptr noundef %1, ptr noundef nonnull %5, i32 noundef %168, i32 noundef %161, i1 noundef zeroext true) #14
  br label %202

177:                                              ; preds = %172
  %178 = getelementptr inbounds %struct.usb_request, ptr %2, i32 0, i32 3
  %179 = load ptr, ptr %178, align 4
  %180 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 21
  br label %181

181:                                              ; preds = %181, %177
  %182 = phi i8 [ 0, %177 ], [ %196, %181 ]
  %183 = phi i32 [ 0, %177 ], [ %197, %181 ]
  %184 = phi ptr [ %179, %177 ], [ %198, %181 ]
  %185 = getelementptr inbounds %struct.scatterlist, ptr %184, i32 0, i32 3
  %186 = load i32, ptr %185, align 4
  %187 = getelementptr inbounds %struct.scatterlist, ptr %184, i32 0, i32 1
  %188 = load i32, ptr %187, align 4
  %189 = add i32 %188, %186
  %190 = getelementptr inbounds %struct.scatterlist, ptr %184, i32 0, i32 4
  %191 = load i32, ptr %190, align 4
  %192 = load i32, ptr %184, align 4
  %193 = and i32 %192, 2
  %194 = icmp ne i32 %193, 0
  call fastcc void @dwc2_gadget_fill_nonisoc_xfer_ddma_one(ptr noundef %1, ptr noundef nonnull %5, i32 noundef %189, i32 noundef %191, i1 noundef zeroext %194) #14
  %195 = load i8, ptr %180, align 4
  %196 = add i8 %195, %182
  %197 = add nuw i32 %183, 1
  %198 = tail call ptr @sg_next(ptr noundef %184) #14
  %199 = load i32, ptr %173, align 4
  %200 = icmp ult i32 %197, %199
  br i1 %200, label %181, label %201

201:                                              ; preds = %181
  store i8 %196, ptr %180, align 4
  br label %202

202:                                              ; preds = %201, %176
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %203 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 19
  %204 = load i32, ptr %203, align 4
  %205 = load i8, ptr %37, align 8, !range !10
  %206 = icmp eq i8 %205, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %206, label %211, label %207

207:                                              ; preds = %202
  %208 = tail call i32 @llvm.bswap.i32(i32 %204) #14
  %209 = load ptr, ptr %33, align 4
  %210 = getelementptr i8, ptr %209, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %210, i32 %208) #14, !srcloc !11
  br label %246

211:                                              ; preds = %202
  %212 = load ptr, ptr %33, align 4
  %213 = getelementptr i8, ptr %212, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %213, i32 %204) #14, !srcloc !11
  br label %246

214:                                              ; preds = %146
  %215 = shl i32 %119, 19
  %216 = or i32 %215, %111
  %217 = or i32 %216, %129
  %218 = load i8, ptr %37, align 8, !range !10
  %219 = icmp eq i8 %218, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %219, label %224, label %220

220:                                              ; preds = %214
  %221 = tail call i32 @llvm.bswap.i32(i32 %217) #14
  %222 = load ptr, ptr %33, align 4
  %223 = getelementptr i8, ptr %222, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %223, i32 %221) #14, !srcloc !11
  br label %227

224:                                              ; preds = %214
  %225 = load ptr, ptr %33, align 4
  %226 = getelementptr i8, ptr %225, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %226, i32 %217) #14, !srcloc !11
  br label %227

227:                                              ; preds = %224, %220
  %228 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 41
  %229 = load i8, ptr %228, align 8, !range !10
  %230 = icmp ne i8 %229, 0
  %231 = xor i1 %3, true
  %232 = and i1 %230, %231
  %233 = select i1 %232, i1 %112, i1 false
  br i1 %233, label %234, label %246

234:                                              ; preds = %227
  %235 = getelementptr inbounds %struct.usb_request, ptr %2, i32 0, i32 2
  %236 = load i32, ptr %235, align 4
  %237 = load i8, ptr %37, align 8, !range !10
  %238 = icmp eq i8 %237, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %238, label %243, label %239

239:                                              ; preds = %234
  %240 = tail call i32 @llvm.bswap.i32(i32 %236) #14
  %241 = load ptr, ptr %33, align 4
  %242 = getelementptr i8, ptr %241, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %242, i32 %240) #14, !srcloc !11
  br label %246

243:                                              ; preds = %234
  %244 = load ptr, ptr %33, align 4
  %245 = getelementptr i8, ptr %244, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %245, i32 %236) #14, !srcloc !11
  br label %246

246:                                              ; preds = %243, %239, %227, %211, %207
  %247 = phi i32 [ %111, %227 ], [ %161, %207 ], [ %161, %211 ], [ %111, %239 ], [ %111, %243 ]
  %248 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 16
  %249 = load i8, ptr %248, align 2
  %250 = and i8 %249, 4
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %292, label %252

252:                                              ; preds = %246
  %253 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 2
  %254 = load ptr, ptr %253, align 4
  %255 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 17
  %256 = load i32, ptr %255, align 4
  %257 = getelementptr inbounds %struct.dwc2_hsotg, ptr %254, i32 0, i32 11
  %258 = load i16, ptr %257, align 4
  %259 = zext i16 %258 to i32
  %260 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 18
  %261 = load i8, ptr %260, align 4, !range !10
  %262 = icmp eq i8 %261, 0
  %263 = xor i1 %262, true
  %264 = icmp ugt i32 %256, %259
  %265 = select i1 %263, i1 true, i1 %264
  br i1 %265, label %266, label %290

266:                                              ; preds = %252
  %267 = getelementptr inbounds %struct.dwc2_hsotg, ptr %254, i32 0, i32 85, i32 5
  %268 = load i32, ptr %267, align 4
  %269 = icmp eq i32 %268, 3
  %270 = select i1 %269, i32 8191, i32 1023
  %271 = select i1 %262, i1 true, i1 %264
  %272 = xor i1 %271, true
  %273 = sub i32 %259, %256
  %274 = icmp ult i32 %273, %270
  %275 = select i1 %272, i1 %274, i1 false
  br i1 %275, label %290, label %276

276:                                              ; preds = %266
  %277 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 15
  %278 = load i16, ptr %277, align 4
  %279 = icmp eq i16 %278, 1
  br i1 %279, label %280, label %287

280:                                              ; preds = %276
  %281 = and i32 %256, 1
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %285, label %283

283:                                              ; preds = %280
  %284 = or i32 %41, 536870912
  br label %287

285:                                              ; preds = %280
  %286 = or i32 %41, 268435456
  br label %287

287:                                              ; preds = %285, %283, %276
  %288 = phi i32 [ %284, %283 ], [ %286, %285 ], [ %41, %276 ]
  %289 = or i32 %288, 67108864
  br label %292

290:                                              ; preds = %266, %252
  %291 = getelementptr inbounds %struct.usb_request, ptr %2, i32 0, i32 10
  store i32 %256, ptr %291, align 4
  store i32 0, ptr %51, align 4
  tail call fastcc void @dwc2_hsotg_complete_request(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef -61)
  br label %352

292:                                              ; preds = %287, %246
  %293 = phi i32 [ %289, %287 ], [ %41, %246 ]
  %294 = icmp eq i8 %7, 0
  br i1 %294, label %295, label %300

295:                                              ; preds = %292
  %296 = or i32 %293, -2147483648
  %297 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 76
  %298 = load i32, ptr %297, align 4
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %302, label %300

300:                                              ; preds = %295, %292
  %301 = or i32 %293, -2080374784
  br label %302

302:                                              ; preds = %300, %295
  %303 = phi i32 [ %296, %295 ], [ %301, %300 ]
  %304 = load i8, ptr %37, align 8, !range !10
  %305 = icmp eq i8 %304, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %305, label %310, label %306

306:                                              ; preds = %302
  %307 = tail call i32 @llvm.bswap.i32(i32 %303) #14
  %308 = load ptr, ptr %33, align 4
  %309 = getelementptr i8, ptr %308, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %309, i32 %307) #14, !srcloc !11
  br label %313

310:                                              ; preds = %302
  %311 = load ptr, ptr %33, align 4
  %312 = getelementptr i8, ptr %311, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %312, i32 %303) #14, !srcloc !11
  br label %313

313:                                              ; preds = %310, %306
  %314 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 6
  store i32 %247, ptr %314, align 4
  %315 = load i32, ptr %51, align 4
  %316 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 7
  store i32 %315, ptr %316, align 4
  br i1 %25, label %317, label %324

317:                                              ; preds = %313
  %318 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 41
  %319 = load i8, ptr %318, align 8, !range !10
  %320 = icmp eq i8 %319, 0
  br i1 %320, label %321, label %324

321:                                              ; preds = %317
  %322 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 8
  store i32 0, ptr %322, align 4
  %323 = tail call fastcc i32 @dwc2_hsotg_write_fifo(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %324

324:                                              ; preds = %321, %317, %313
  %325 = load ptr, ptr %33, align 4
  %326 = getelementptr i8, ptr %325, i32 %30
  %327 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %326) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %328 = load i8, ptr %6, align 2
  %329 = zext i8 %328 to i32
  %330 = load i8, ptr %9, align 4
  %331 = shl nuw i32 1, %329
  %332 = icmp eq i8 %330, 0
  %333 = shl i32 %331, 16
  %334 = select i1 %332, i32 %333, i32 %331
  %335 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !16
  %336 = load ptr, ptr %33, align 4
  %337 = getelementptr i8, ptr %336, i32 2076
  %338 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %337) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %339 = load i8, ptr %37, align 8, !range !10
  %340 = icmp eq i8 %339, 0
  %341 = tail call i32 @llvm.bswap.i32(i32 %338) #14
  %342 = select i1 %340, i32 %338, i32 %341
  %343 = or i32 %342, %334
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %340, label %348, label %344

344:                                              ; preds = %324
  %345 = tail call i32 @llvm.bswap.i32(i32 %343) #14
  %346 = load ptr, ptr %33, align 4
  %347 = getelementptr i8, ptr %346, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %347, i32 %345) #14, !srcloc !11
  br label %351

348:                                              ; preds = %324
  %349 = load ptr, ptr %33, align 4
  %350 = getelementptr i8, ptr %349, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %350, i32 %343) #14, !srcloc !11
  br label %351

351:                                              ; preds = %348, %344
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %335) #14, !srcloc !17
  br label %352

352:                                              ; preds = %351, %290, %46, %22, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwc2_hsotg_write_fifo(ptr noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 16
  %5 = load i8, ptr %4, align 2
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 44
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %12 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %13 = load i8, ptr %12, align 8, !range !10
  %14 = icmp eq i8 %13, 0
  %15 = tail call i32 @llvm.bswap.i32(i32 %11) #14
  %16 = select i1 %14, i32 %11, i32 %15
  %17 = getelementptr inbounds %struct.usb_request, ptr %2, i32 0, i32 12
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 %22, %18
  %24 = add i32 %23, %20
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %246, label %26

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 69
  %28 = load i8, ptr %27, align 4
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  br i1 %7, label %93, label %31

31:                                               ; preds = %26
  br i1 %30, label %32, label %94

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 13
  %34 = load i8, ptr %33, align 2
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 5
  %37 = add nuw nsw i32 %36, 2320
  %38 = load ptr, ptr %8, align 4
  %39 = getelementptr i8, ptr %38, i32 %37
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %41 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 8
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %32
  %45 = load ptr, ptr %8, align 4
  %46 = getelementptr i8, ptr %45, i32 24
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %48 = load i8, ptr %12, align 8, !range !10
  %49 = icmp eq i8 %48, 0
  %50 = tail call i32 @llvm.bswap.i32(i32 %47) #14
  %51 = select i1 %49, i32 %47, i32 %50
  %52 = or i32 %51, 67108864
  %53 = icmp eq i32 %52, %51
  br i1 %53, label %246, label %54

54:                                               ; preds = %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %49, label %59, label %55

55:                                               ; preds = %54
  %56 = tail call i32 @llvm.bswap.i32(i32 %52) #14
  %57 = load ptr, ptr %8, align 4
  %58 = getelementptr i8, ptr %57, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #14, !srcloc !11
  br label %246

59:                                               ; preds = %54
  %60 = load ptr, ptr %8, align 4
  %61 = getelementptr i8, ptr %60, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %52) #14, !srcloc !11
  br label %246

62:                                               ; preds = %32
  %63 = load i8, ptr %12, align 8, !range !10
  %64 = icmp eq i8 %63, 0
  %65 = tail call i32 @llvm.bswap.i32(i32 %40) #14
  %66 = select i1 %64, i32 %40, i32 %65
  %67 = and i32 %66, 524287
  %68 = load i32, ptr %19, align 4
  %69 = sub i32 %68, %67
  %70 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 9
  %71 = load i16, ptr %70, align 4
  %72 = zext i16 %71 to i32
  %73 = add i32 %69, %72
  %74 = icmp slt i32 %73, 1
  br i1 %74, label %75, label %137

75:                                               ; preds = %62
  %76 = load ptr, ptr %8, align 4
  %77 = getelementptr i8, ptr %76, i32 24
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %79 = load i8, ptr %12, align 8, !range !10
  %80 = icmp eq i8 %79, 0
  %81 = tail call i32 @llvm.bswap.i32(i32 %78) #14
  %82 = select i1 %80, i32 %78, i32 %81
  %83 = or i32 %82, 67108864
  %84 = icmp eq i32 %83, %82
  br i1 %84, label %246, label %85

85:                                               ; preds = %75
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %80, label %90, label %86

86:                                               ; preds = %85
  %87 = tail call i32 @llvm.bswap.i32(i32 %83) #14
  %88 = load ptr, ptr %8, align 4
  %89 = getelementptr i8, ptr %88, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %87) #14, !srcloc !11
  br label %246

90:                                               ; preds = %85
  %91 = load ptr, ptr %8, align 4
  %92 = getelementptr i8, ptr %91, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %83) #14, !srcloc !11
  br label %246

93:                                               ; preds = %26
  br i1 %30, label %113, label %94

94:                                               ; preds = %93, %31
  %95 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 13
  %96 = load i8, ptr %95, align 2
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %113, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 10
  %100 = load i16, ptr %99, align 2
  %101 = zext i16 %100 to i32
  %102 = shl nuw nsw i32 %101, 5
  %103 = add nuw nsw i32 %102, 2328
  %104 = load ptr, ptr %8, align 4
  %105 = getelementptr i8, ptr %104, i32 %103
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %107 = load i8, ptr %12, align 8, !range !10
  %108 = icmp eq i8 %107, 0
  %109 = tail call i32 @llvm.bswap.i32(i32 %106) #14
  %110 = select i1 %108, i32 %106, i32 %109
  %111 = shl i32 %110, 2
  %112 = and i32 %111, 262140
  br label %137

113:                                              ; preds = %94, %93
  %114 = and i32 %16, 16711680
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %134

116:                                              ; preds = %113
  %117 = load ptr, ptr %8, align 4
  %118 = getelementptr i8, ptr %117, i32 24
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %120 = load i8, ptr %12, align 8, !range !10
  %121 = icmp eq i8 %120, 0
  %122 = tail call i32 @llvm.bswap.i32(i32 %119) #14
  %123 = select i1 %121, i32 %119, i32 %122
  %124 = or i32 %123, 32
  %125 = icmp eq i32 %124, %123
  br i1 %125, label %246, label %126

126:                                              ; preds = %116
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %121, label %131, label %127

127:                                              ; preds = %126
  %128 = tail call i32 @llvm.bswap.i32(i32 %124) #14
  %129 = load ptr, ptr %8, align 4
  %130 = getelementptr i8, ptr %129, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %128) #14, !srcloc !11
  br label %246

131:                                              ; preds = %126
  %132 = load ptr, ptr %8, align 4
  %133 = getelementptr i8, ptr %132, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %124) #14, !srcloc !11
  br label %246

134:                                              ; preds = %113
  %135 = shl i32 %16, 2
  %136 = and i32 %135, 262140
  br label %137

137:                                              ; preds = %134, %98, %62
  %138 = phi i32 [ %112, %98 ], [ %136, %134 ], [ %73, %62 ]
  %139 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 7
  %140 = load i56, ptr %139, align 2
  %141 = trunc i56 %140 to i32
  %142 = and i32 %141, 65535
  %143 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 14
  %144 = load i8, ptr %143, align 1
  %145 = zext i8 %144 to i32
  %146 = mul nuw nsw i32 %142, %145
  %147 = icmp ugt i32 %138, 512
  %148 = select i1 %147, i1 %7, i1 false
  %149 = select i1 %148, i32 512, i32 %138
  %150 = icmp sgt i32 %24, %146
  br i1 %150, label %151, label %175

151:                                              ; preds = %137
  %152 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 69
  %153 = load i8, ptr %152, align 4
  %154 = and i8 %153, 1
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %175

156:                                              ; preds = %151
  %157 = select i1 %7, i32 32, i32 67108864
  %158 = load ptr, ptr %8, align 4
  %159 = getelementptr i8, ptr %158, i32 24
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %159) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %161 = load i8, ptr %12, align 8, !range !10
  %162 = icmp eq i8 %161, 0
  %163 = tail call i32 @llvm.bswap.i32(i32 %160) #14
  %164 = select i1 %162, i32 %160, i32 %163
  %165 = or i32 %164, %157
  %166 = icmp eq i32 %165, %164
  br i1 %166, label %175, label %167

167:                                              ; preds = %156
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %162, label %172, label %168

168:                                              ; preds = %167
  %169 = tail call i32 @llvm.bswap.i32(i32 %165) #14
  %170 = load ptr, ptr %8, align 4
  %171 = getelementptr i8, ptr %170, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %171, i32 %169) #14, !srcloc !11
  br label %175

172:                                              ; preds = %167
  %173 = load ptr, ptr %8, align 4
  %174 = getelementptr i8, ptr %173, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 %165) #14, !srcloc !11
  br label %175

175:                                              ; preds = %172, %168, %156, %151, %137
  %176 = phi i32 [ %146, %151 ], [ %24, %137 ], [ %146, %156 ], [ %146, %168 ], [ %146, %172 ]
  %177 = icmp sgt i32 %176, %149
  br i1 %177, label %178, label %204

178:                                              ; preds = %175
  %179 = urem i32 %149, %146
  %180 = sub nsw i32 %149, %179
  %181 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 69
  %182 = load i8, ptr %181, align 4
  %183 = and i8 %182, 1
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %185, label %204

185:                                              ; preds = %178
  %186 = select i1 %7, i32 32, i32 67108864
  %187 = load ptr, ptr %8, align 4
  %188 = getelementptr i8, ptr %187, i32 24
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %188) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %190 = load i8, ptr %12, align 8, !range !10
  %191 = icmp eq i8 %190, 0
  %192 = tail call i32 @llvm.bswap.i32(i32 %189) #14
  %193 = select i1 %191, i32 %189, i32 %192
  %194 = or i32 %193, %186
  %195 = icmp eq i32 %194, %193
  br i1 %195, label %204, label %196

196:                                              ; preds = %185
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %191, label %201, label %197

197:                                              ; preds = %196
  %198 = tail call i32 @llvm.bswap.i32(i32 %194) #14
  %199 = load ptr, ptr %8, align 4
  %200 = getelementptr i8, ptr %199, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %200, i32 %198) #14, !srcloc !11
  br label %204

201:                                              ; preds = %196
  %202 = load ptr, ptr %8, align 4
  %203 = getelementptr i8, ptr %202, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %203, i32 %194) #14, !srcloc !11
  br label %204

204:                                              ; preds = %201, %197, %185, %178, %175
  %205 = phi i32 [ %180, %178 ], [ %176, %175 ], [ %180, %185 ], [ %180, %197 ], [ %180, %201 ]
  %206 = icmp slt i32 %205, 1
  br i1 %206, label %246, label %207

207:                                              ; preds = %204
  %208 = add i32 %205, %18
  store i32 %208, ptr %17, align 4
  %209 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 5
  %210 = load i32, ptr %209, align 4
  %211 = add i32 %210, %205
  store i32 %211, ptr %209, align 4
  br i1 %7, label %216, label %212

212:                                              ; preds = %207
  %213 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 8
  %214 = load i32, ptr %213, align 4
  %215 = add i32 %214, %205
  store i32 %215, ptr %213, align 4
  br label %216

216:                                              ; preds = %212, %207
  %217 = add nuw i32 %205, 3
  %218 = sdiv i32 %217, 4
  %219 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 13
  %220 = load i8, ptr %219, align 2
  %221 = zext i8 %220 to i32
  %222 = shl nuw nsw i32 %221, 12
  %223 = add nuw nsw i32 %222, 4096
  %224 = load ptr, ptr %2, align 4
  %225 = getelementptr i8, ptr %224, i32 %18
  br label %226

226:                                              ; preds = %240, %216
  %227 = phi i32 [ %241, %240 ], [ %218, %216 ]
  %228 = phi ptr [ %229, %240 ], [ %225, %216 ]
  %229 = getelementptr i32, ptr %228, i32 1
  %230 = load i32, ptr %228, align 4
  %231 = load i8, ptr %12, align 8, !range !10
  %232 = icmp eq i8 %231, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %232, label %237, label %233

233:                                              ; preds = %226
  %234 = tail call i32 @llvm.bswap.i32(i32 %230) #14
  %235 = load ptr, ptr %8, align 4
  %236 = getelementptr i8, ptr %235, i32 %223
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %236, i32 %234) #14, !srcloc !11
  br label %240

237:                                              ; preds = %226
  %238 = load ptr, ptr %8, align 4
  %239 = getelementptr i8, ptr %238, i32 %223
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %239, i32 %230) #14, !srcloc !11
  br label %240

240:                                              ; preds = %237, %233
  %241 = add i32 %227, -1
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %226

243:                                              ; preds = %240
  %244 = icmp slt i32 %218, %149
  %245 = select i1 %244, i32 0, i32 -28
  br label %246

246:                                              ; preds = %243, %204, %131, %127, %116, %90, %86, %75, %59, %55, %44, %3
  %247 = phi i32 [ %245, %243 ], [ 0, %3 ], [ -28, %204 ], [ -28, %116 ], [ -28, %127 ], [ -28, %131 ], [ -28, %44 ], [ -28, %55 ], [ -28, %59 ], [ -28, %75 ], [ -28, %86 ], [ -28, %90 ]
  ret i32 %247
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_gadget_fill_nonisoc_xfer_ddma_one(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #9 {
  %6 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 11
  %7 = load i8, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 7
  %9 = load i56, ptr %8, align 2
  %10 = trunc i56 %9 to i32
  %11 = and i32 %10, 65535
  %12 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 13
  %15 = load i8, ptr %14, align 2
  %16 = icmp ne i8 %15, 0
  %17 = icmp ne i8 %7, 0
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 16
  %21 = load i8, ptr %20, align 2
  %22 = and i8 %21, 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = select i1 %17, i32 4095, i32 2047
  br label %31

26:                                               ; preds = %19
  %27 = trunc i56 %9 to i16
  %28 = urem i16 -1, %27
  %29 = xor i16 %28, -1
  %30 = zext i16 %29 to i32
  br label %31

31:                                               ; preds = %26, %24
  %32 = phi i32 [ 65535, %26 ], [ %25, %24 ]
  %33 = phi i32 [ %30, %26 ], [ %25, %24 ]
  %34 = icmp eq i8 %15, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %13, i32 0, i32 3
  %37 = load i8, ptr %36, align 1
  %38 = and i8 %37, 3
  %39 = icmp ne i8 %38, 3
  %40 = select i1 %39, i1 true, i1 %17
  %41 = and i32 %10, 3
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %40, i1 true, i1 %42
  %44 = select i1 %43, i32 %32, i32 65535
  %45 = select i1 %43, i32 %33, i32 %11
  br label %46

46:                                               ; preds = %35, %31, %5
  %47 = phi i32 [ %32, %31 ], [ 65535, %5 ], [ %44, %35 ]
  %48 = phi i32 [ %33, %31 ], [ %11, %5 ], [ %45, %35 ]
  %49 = freeze i32 %48
  %50 = udiv i32 %3, %49
  %51 = mul i32 %50, %49
  %52 = sub i32 %3, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = add i32 %50, %54
  %56 = trunc i32 %55 to i8
  %57 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 21
  %58 = icmp eq i32 %3, 0
  %59 = select i1 %58, i8 1, i8 %56
  store i8 %59, ptr %57, align 4
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %132, label %61

61:                                               ; preds = %46
  %62 = icmp eq i8 %7, 0
  %63 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 16
  %64 = and i32 %48, %47
  %65 = load ptr, ptr %1, align 4
  br label %66

66:                                               ; preds = %120, %61
  %67 = phi ptr [ %65, %61 ], [ %127, %120 ]
  %68 = phi i32 [ 0, %61 ], [ %128, %120 ]
  %69 = phi i32 [ 0, %61 ], [ %122, %120 ]
  %70 = phi i32 [ %3, %61 ], [ %121, %120 ]
  store i32 0, ptr %67, align 1
  %71 = load ptr, ptr %1, align 4
  %72 = load i32, ptr %71, align 1
  %73 = or i32 %72, -1073741824
  store i32 %73, ptr %71, align 1
  %74 = icmp ugt i32 %70, %48
  br i1 %74, label %75, label %92

75:                                               ; preds = %66
  %76 = load i8, ptr %14, align 2
  %77 = icmp ne i8 %76, 0
  %78 = select i1 %77, i1 true, i1 %17
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load ptr, ptr %1, align 4
  %81 = load i32, ptr %80, align 1
  %82 = or i32 %81, 167772160
  store i32 %82, ptr %80, align 1
  br label %83

83:                                               ; preds = %79, %75
  %84 = load ptr, ptr %1, align 4
  %85 = load i32, ptr %84, align 1
  %86 = or i32 %85, %64
  store i32 %86, ptr %84, align 1
  %87 = add i32 %69, %2
  %88 = load ptr, ptr %1, align 4
  %89 = getelementptr inbounds %struct.dwc2_dma_desc, ptr %88, i32 0, i32 1
  store i32 %87, ptr %89, align 1
  %90 = sub i32 %70, %48
  %91 = add i32 %69, %48
  br label %120

92:                                               ; preds = %66
  br i1 %4, label %93, label %97

93:                                               ; preds = %92
  %94 = load ptr, ptr %1, align 4
  %95 = load i32, ptr %94, align 1
  %96 = or i32 %95, 167772160
  store i32 %96, ptr %94, align 1
  br label %97

97:                                               ; preds = %93, %92
  br i1 %62, label %112, label %98

98:                                               ; preds = %97
  %99 = urem i32 %70, %11
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load i8, ptr %63, align 2
  %103 = and i8 %102, 8
  %104 = icmp ne i8 %103, 0
  %105 = and i1 %104, %4
  %106 = select i1 %105, i32 67108864, i32 0
  br label %107

107:                                              ; preds = %101, %98
  %108 = phi i32 [ %106, %101 ], [ 67108864, %98 ]
  %109 = load ptr, ptr %1, align 4
  %110 = load i32, ptr %109, align 1
  %111 = or i32 %110, %108
  store i32 %111, ptr %109, align 1
  br label %112

112:                                              ; preds = %107, %97
  %113 = and i32 %70, %47
  %114 = load ptr, ptr %1, align 4
  %115 = load i32, ptr %114, align 1
  %116 = or i32 %115, %113
  store i32 %116, ptr %114, align 1
  %117 = add i32 %69, %2
  %118 = load ptr, ptr %1, align 4
  %119 = getelementptr inbounds %struct.dwc2_dma_desc, ptr %118, i32 0, i32 1
  store i32 %117, ptr %119, align 1
  br label %120

120:                                              ; preds = %112, %83
  %121 = phi i32 [ %90, %83 ], [ %70, %112 ]
  %122 = phi i32 [ %91, %83 ], [ %69, %112 ]
  %123 = load ptr, ptr %1, align 4
  %124 = load i32, ptr %123, align 1
  %125 = and i32 %124, 1073741823
  store i32 %125, ptr %123, align 1
  %126 = load ptr, ptr %1, align 4
  %127 = getelementptr %struct.dwc2_dma_desc, ptr %126, i32 1
  store ptr %127, ptr %1, align 4
  %128 = add nuw nsw i32 %68, 1
  %129 = load i8, ptr %57, align 4
  %130 = zext i8 %129 to i32
  %131 = icmp ult i32 %128, %130
  br i1 %131, label %66, label %132

132:                                              ; preds = %120, %46
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hsotg_wait_bit_clear(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwc2_hsotg_complete_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %364, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %9) #14
  %10 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 73
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.usb_request, ptr %15, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, -262145
  store i32 %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.usb_request, ptr %15, i32 0, i32 1
  store i32 8, ptr %19, align 4
  %20 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 75
  %21 = load ptr, ptr %20, align 8
  store ptr %21, ptr %15, align 4
  %22 = getelementptr inbounds %struct.usb_request, ptr %15, i32 0, i32 7
  store ptr @dwc2_hsotg_complete_setup, ptr %22, align 4
  %23 = getelementptr inbounds %struct.dwc2_hsotg_req, ptr %15, i32 0, i32 1
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %23
  br i1 %25, label %26, label %361

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 88
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %28, i32 0, i32 11
  store i8 0, ptr %29, align 4
  %30 = load ptr, ptr %27, align 4
  %31 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %30, i32 0, i32 16
  %32 = load i8, ptr %31, align 2
  %33 = and i8 %32, -9
  store i8 %33, ptr %31, align 2
  %34 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 76
  store i32 0, ptr %34, align 4
  %35 = load ptr, ptr %27, align 4
  %36 = tail call fastcc i32 @dwc2_hsotg_ep_queue(ptr noundef %35, ptr noundef %15) #14
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %361

38:                                               ; preds = %26
  %39 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.dwc2_hsotg_enqueue_setup, i32 noundef %36) #15
  br label %361

40:                                               ; preds = %8
  %41 = load ptr, ptr %1, align 4
  %42 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 88
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %41, i32 0, i32 4
  %45 = load i16, ptr %44, align 1
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %43, i32 0, i32 11
  store i8 1, ptr %48, align 4
  br label %55

49:                                               ; preds = %40
  %50 = load i8, ptr %41, align 1
  %51 = icmp sgt i8 %50, -1
  %52 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %43, i32 0, i32 11
  br i1 %51, label %54, label %53

53:                                               ; preds = %49
  store i8 1, ptr %52, align 4
  br label %55

54:                                               ; preds = %49
  store i8 0, ptr %52, align 4
  br label %55

55:                                               ; preds = %54, %53, %47
  %56 = phi i32 [ 1, %53 ], [ 2, %54 ], [ 3, %47 ]
  %57 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 76
  store i32 %56, ptr %57, align 4
  %58 = load i8, ptr %41, align 1
  %59 = and i8 %58, 96
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %325

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %41, i32 0, i32 1
  %63 = load i8, ptr %62, align 1
  switch i8 %63, label %325 [
    i8 5, label %64
    i8 0, label %116
    i8 1, label %190
    i8 3, label %190
  ]

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 86
  %66 = load i8, ptr %65, align 8
  %67 = or i8 %66, 2
  store i8 %67, ptr %65, align 8
  %68 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr i8, ptr %69, i32 2048
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %72 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 34
  %73 = load i8, ptr %72, align 8, !range !10
  %74 = icmp eq i8 %73, 0
  %75 = tail call i32 @llvm.bswap.i32(i32 %71) #14
  %76 = select i1 %74, i32 %71, i32 %75
  %77 = and i32 %76, -2033
  %78 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %41, i32 0, i32 2
  %79 = load i16, ptr %78, align 1
  %80 = zext i16 %79 to i32
  %81 = shl nuw nsw i32 %80, 4
  %82 = and i32 %81, 2032
  %83 = or i32 %82, %77
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %74, label %88, label %84

84:                                               ; preds = %64
  %85 = tail call i32 @llvm.bswap.i32(i32 %83) #14
  %86 = load ptr, ptr %68, align 4
  %87 = getelementptr i8, ptr %86, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %85) #14, !srcloc !11
  br label %91

88:                                               ; preds = %64
  %89 = load ptr, ptr %68, align 4
  %90 = getelementptr i8, ptr %89, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %83) #14, !srcloc !11
  br label %91

91:                                               ; preds = %88, %84
  %92 = load ptr, ptr %4, align 8
  %93 = load i16, ptr %78, align 1
  %94 = zext i16 %93 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %92, ptr noundef nonnull @.str.19, i32 noundef %94) #15
  %95 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %96 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %95, i32 noundef 2848, i32 noundef 68) #16
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 72
  store ptr null, ptr %99, align 4
  br label %113

100:                                              ; preds = %91
  %101 = getelementptr inbounds %struct.dwc2_hsotg_req, ptr %96, i32 0, i32 1
  store volatile ptr %101, ptr %101, align 8
  %102 = getelementptr inbounds %struct.dwc2_hsotg_req, ptr %96, i32 0, i32 1, i32 1
  store ptr %101, ptr %102, align 4
  %103 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 72
  store ptr %96, ptr %103, align 4
  %104 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 74
  %105 = load ptr, ptr %104, align 4
  store ptr %105, ptr %96, align 8
  %106 = getelementptr inbounds %struct.usb_request, ptr %96, i32 0, i32 1
  store i32 0, ptr %106, align 4
  %107 = getelementptr inbounds %struct.usb_request, ptr %96, i32 0, i32 6
  %108 = load i32, ptr %107, align 8
  %109 = and i32 %108, -262145
  store i32 %109, ptr %107, align 8
  %110 = getelementptr inbounds %struct.usb_request, ptr %96, i32 0, i32 7
  store ptr @dwc2_hsotg_complete_oursetup, ptr %110, align 4
  %111 = tail call fastcc i32 @dwc2_hsotg_ep_queue(ptr noundef %43, ptr noundef nonnull %96) #14
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %361, label %113

113:                                              ; preds = %100, %98
  %114 = phi ptr [ @.str.20, %98 ], [ @.str.21, %100 ]
  %115 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %115, ptr noundef nonnull %114, ptr noundef nonnull @__func__.dwc2_hsotg_send_reply) #15
  br label %361

116:                                              ; preds = %61
  %117 = load ptr, ptr %42, align 4
  %118 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %117, i32 0, i32 11
  %119 = load i8, ptr %118, align 4
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %122, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.dwc2_hsotg_process_req_status) #15
  br label %341

123:                                              ; preds = %116
  %124 = and i8 %58, 31
  %125 = zext i8 %124 to i32
  switch i32 %125, label %325 [
    i32 0, label %126
    i32 1, label %162
    i32 2, label %138
  ]

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 85, i32 17
  %128 = load i32, ptr %127, align 4
  %129 = lshr i32 %128, 13
  %130 = and i32 %129, 1
  %131 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 86
  %132 = load i8, ptr %131, align 8
  %133 = lshr i8 %132, 1
  %134 = and i8 %133, 2
  %135 = zext i8 %134 to i32
  %136 = or i32 %130, %135
  %137 = trunc i32 %136 to i16
  br label %162

138:                                              ; preds = %123
  %139 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %41, i32 0, i32 3
  %140 = load i16, ptr %139, align 1
  %141 = zext i16 %140 to i32
  %142 = and i32 %141, 127
  %143 = icmp ugt i16 %140, 255
  br i1 %143, label %341, label %144

144:                                              ; preds = %138
  %145 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 70
  %146 = load i8, ptr %145, align 1
  %147 = zext i8 %146 to i32
  %148 = icmp ugt i32 %142, %147
  br i1 %148, label %341, label %149

149:                                              ; preds = %144
  %150 = and i32 %141, 128
  %151 = icmp eq i32 %150, 0
  %152 = getelementptr %struct.dwc2_hsotg, ptr %4, i32 0, i32 87, i32 %142
  %153 = getelementptr %struct.dwc2_hsotg, ptr %4, i32 0, i32 88, i32 %142
  %154 = select i1 %151, ptr %153, ptr %152
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %341, label %157

157:                                              ; preds = %149
  %158 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %155, i32 0, i32 16
  %159 = load i8, ptr %158, align 2
  %160 = and i8 %159, 1
  %161 = zext i8 %160 to i16
  br label %162

162:                                              ; preds = %157, %126, %123
  %163 = phi i16 [ %161, %157 ], [ %137, %126 ], [ 0, %123 ]
  %164 = load i16, ptr %44, align 1
  %165 = icmp eq i16 %164, 2
  br i1 %165, label %166, label %341

166:                                              ; preds = %162
  %167 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %168 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %167, i32 noundef 2848, i32 noundef 68) #16
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 72
  store ptr null, ptr %171, align 4
  br label %185

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct.dwc2_hsotg_req, ptr %168, i32 0, i32 1
  store volatile ptr %173, ptr %173, align 8
  %174 = getelementptr inbounds %struct.dwc2_hsotg_req, ptr %168, i32 0, i32 1, i32 1
  store ptr %173, ptr %174, align 4
  %175 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 72
  store ptr %168, ptr %175, align 4
  %176 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 74
  %177 = load ptr, ptr %176, align 4
  store ptr %177, ptr %168, align 8
  %178 = getelementptr inbounds %struct.usb_request, ptr %168, i32 0, i32 1
  store i32 2, ptr %178, align 4
  %179 = getelementptr inbounds %struct.usb_request, ptr %168, i32 0, i32 6
  %180 = load i32, ptr %179, align 8
  %181 = and i32 %180, -262145
  store i32 %181, ptr %179, align 8
  %182 = getelementptr inbounds %struct.usb_request, ptr %168, i32 0, i32 7
  store ptr @dwc2_hsotg_complete_oursetup, ptr %182, align 4
  store i16 %163, ptr %177, align 1
  %183 = tail call fastcc i32 @dwc2_hsotg_ep_queue(ptr noundef %117, ptr noundef nonnull %168) #14
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %341, label %185

185:                                              ; preds = %172, %170
  %186 = phi ptr [ @.str.20, %170 ], [ @.str.21, %172 ]
  %187 = phi i32 [ -12, %170 ], [ %183, %172 ]
  %188 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %188, ptr noundef nonnull %186, ptr noundef nonnull @__func__.dwc2_hsotg_send_reply) #15
  %189 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %189, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.dwc2_hsotg_process_req_status) #15
  br label %345

190:                                              ; preds = %61, %61
  %191 = load ptr, ptr %42, align 4
  %192 = icmp eq i8 %63, 3
  %193 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %41, i32 0, i32 2
  %194 = load i16, ptr %193, align 1
  %195 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %41, i32 0, i32 3
  %196 = load i16, ptr %195, align 1
  %197 = zext i16 %196 to i32
  %198 = and i8 %58, 31
  %199 = zext i8 %198 to i32
  switch i32 %199, label %341 [
    i32 0, label %200
    i32 2, label %241
  ]

200:                                              ; preds = %190
  switch i16 %194, label %341 [
    i16 1, label %201
    i16 2, label %208
  ]

201:                                              ; preds = %200
  %202 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 86
  %203 = load i8, ptr %202, align 8
  br i1 %192, label %204, label %206

204:                                              ; preds = %201
  %205 = or i8 %203, 4
  store i8 %205, ptr %202, align 8
  br label %217

206:                                              ; preds = %201
  %207 = and i8 %203, -5
  store i8 %207, ptr %202, align 8
  br label %217

208:                                              ; preds = %200
  %209 = and i32 %197, 255
  %210 = icmp ne i32 %209, 0
  %211 = xor i1 %192, true
  %212 = select i1 %210, i1 true, i1 %211
  br i1 %212, label %341, label %213

213:                                              ; preds = %208
  %214 = lshr i16 %196, 8
  %215 = trunc i16 %214 to i8
  %216 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 78
  store i8 %215, ptr %216, align 1
  br label %217

217:                                              ; preds = %213, %206, %204
  %218 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %219 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %218, i32 noundef 2848, i32 noundef 68) #16
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %223

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 72
  store ptr null, ptr %222, align 4
  br label %236

223:                                              ; preds = %217
  %224 = getelementptr inbounds %struct.dwc2_hsotg_req, ptr %219, i32 0, i32 1
  store volatile ptr %224, ptr %224, align 8
  %225 = getelementptr inbounds %struct.dwc2_hsotg_req, ptr %219, i32 0, i32 1, i32 1
  store ptr %224, ptr %225, align 4
  %226 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 72
  store ptr %219, ptr %226, align 4
  %227 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 74
  %228 = load ptr, ptr %227, align 4
  store ptr %228, ptr %219, align 8
  %229 = getelementptr inbounds %struct.usb_request, ptr %219, i32 0, i32 1
  store i32 0, ptr %229, align 4
  %230 = getelementptr inbounds %struct.usb_request, ptr %219, i32 0, i32 6
  %231 = load i32, ptr %230, align 8
  %232 = and i32 %231, -262145
  store i32 %232, ptr %230, align 8
  %233 = getelementptr inbounds %struct.usb_request, ptr %219, i32 0, i32 7
  store ptr @dwc2_hsotg_complete_oursetup, ptr %233, align 4
  %234 = tail call fastcc i32 @dwc2_hsotg_ep_queue(ptr noundef %191, ptr noundef nonnull %219) #14
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %341, label %236

236:                                              ; preds = %223, %221
  %237 = phi ptr [ @.str.20, %221 ], [ @.str.21, %223 ]
  %238 = phi i32 [ -12, %221 ], [ %234, %223 ]
  %239 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %239, ptr noundef nonnull %237, ptr noundef nonnull @__func__.dwc2_hsotg_send_reply) #15
  %240 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %240, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.dwc2_hsotg_process_req_feature) #15
  br label %345

241:                                              ; preds = %190
  %242 = and i32 %197, 127
  %243 = icmp ugt i16 %196, 255
  br i1 %243, label %341, label %244

244:                                              ; preds = %241
  %245 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 70
  %246 = load i8, ptr %245, align 1
  %247 = zext i8 %246 to i32
  %248 = icmp ugt i32 %242, %247
  br i1 %248, label %341, label %249

249:                                              ; preds = %244
  %250 = and i32 %197, 128
  %251 = icmp eq i32 %250, 0
  %252 = getelementptr %struct.dwc2_hsotg, ptr %4, i32 0, i32 87, i32 %242
  %253 = getelementptr %struct.dwc2_hsotg, ptr %4, i32 0, i32 88, i32 %242
  %254 = select i1 %251, ptr %253, ptr %252
  %255 = load ptr, ptr %254, align 4
  %256 = icmp ne ptr %255, null
  %257 = icmp eq i16 %194, 0
  %258 = select i1 %256, i1 %257, i1 false
  br i1 %258, label %259, label %341

259:                                              ; preds = %249
  %260 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %255, i32 0, i32 16
  %261 = load i8, ptr %260, align 2
  %262 = and i8 %261, 1
  %263 = icmp eq i8 %262, 0
  %264 = and i8 %261, 16
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %259
  %267 = zext i1 %192 to i32
  %268 = tail call fastcc i32 @dwc2_hsotg_ep_sethalt(ptr noundef nonnull %255, i32 noundef %267, i1 noundef zeroext true) #14
  br label %269

269:                                              ; preds = %266, %259
  %270 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %271 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %270, i32 noundef 2848, i32 noundef 68) #16
  %272 = icmp eq ptr %271, null
  br i1 %272, label %273, label %275

273:                                              ; preds = %269
  %274 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 72
  store ptr null, ptr %274, align 4
  br label %288

275:                                              ; preds = %269
  %276 = getelementptr inbounds %struct.dwc2_hsotg_req, ptr %271, i32 0, i32 1
  store volatile ptr %276, ptr %276, align 8
  %277 = getelementptr inbounds %struct.dwc2_hsotg_req, ptr %271, i32 0, i32 1, i32 1
  store ptr %276, ptr %277, align 4
  %278 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 72
  store ptr %271, ptr %278, align 4
  %279 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 74
  %280 = load ptr, ptr %279, align 4
  store ptr %280, ptr %271, align 8
  %281 = getelementptr inbounds %struct.usb_request, ptr %271, i32 0, i32 1
  store i32 0, ptr %281, align 4
  %282 = getelementptr inbounds %struct.usb_request, ptr %271, i32 0, i32 6
  %283 = load i32, ptr %282, align 8
  %284 = and i32 %283, -262145
  store i32 %284, ptr %282, align 8
  %285 = getelementptr inbounds %struct.usb_request, ptr %271, i32 0, i32 7
  store ptr @dwc2_hsotg_complete_oursetup, ptr %285, align 4
  %286 = tail call fastcc i32 @dwc2_hsotg_ep_queue(ptr noundef %191, ptr noundef nonnull %271) #14
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %293, label %288

288:                                              ; preds = %275, %273
  %289 = phi ptr [ @.str.20, %273 ], [ @.str.21, %275 ]
  %290 = phi i32 [ -12, %273 ], [ %286, %275 ]
  %291 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %291, ptr noundef nonnull %289, ptr noundef nonnull @__func__.dwc2_hsotg_send_reply) #15
  %292 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %292, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.dwc2_hsotg_process_req_feature) #15
  br label %345

293:                                              ; preds = %275
  %294 = select i1 %192, i1 true, i1 %263
  br i1 %294, label %341, label %295

295:                                              ; preds = %293
  %296 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %255, i32 0, i32 3
  %297 = load ptr, ptr %296, align 4
  %298 = icmp eq ptr %297, null
  br i1 %298, label %314, label %299

299:                                              ; preds = %295
  store ptr null, ptr %296, align 4
  %300 = getelementptr inbounds %struct.dwc2_hsotg_req, ptr %297, i32 0, i32 1
  %301 = getelementptr inbounds %struct.dwc2_hsotg_req, ptr %297, i32 0, i32 1, i32 1
  %302 = load ptr, ptr %301, align 4
  %303 = load ptr, ptr %300, align 4
  %304 = getelementptr inbounds %struct.list_head, ptr %303, i32 0, i32 1
  store ptr %302, ptr %304, align 4
  store volatile ptr %303, ptr %302, align 4
  store volatile ptr %300, ptr %300, align 4
  store ptr %300, ptr %301, align 4
  %305 = getelementptr inbounds %struct.usb_request, ptr %297, i32 0, i32 7
  %306 = load ptr, ptr %305, align 4
  %307 = icmp eq ptr %306, null
  br i1 %307, label %311, label %308

308:                                              ; preds = %299
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  %309 = load i16, ptr %9, align 4
  %310 = add i16 %309, 1
  store i16 %310, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  tail call void @usb_gadget_giveback_request(ptr noundef nonnull %255, ptr noundef nonnull %297) #14
  tail call void @_raw_spin_lock(ptr noundef %9) #14
  br label %311

311:                                              ; preds = %308, %299
  %312 = load ptr, ptr %296, align 4
  %313 = icmp eq ptr %312, null
  br i1 %313, label %314, label %341

314:                                              ; preds = %311, %295
  %315 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %255, i32 0, i32 2
  %316 = load ptr, ptr %315, align 4
  %317 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %255, i32 0, i32 1
  %318 = load volatile ptr, ptr %317, align 4
  %319 = icmp eq ptr %318, %317
  br i1 %319, label %341, label %320

320:                                              ; preds = %314
  %321 = load volatile ptr, ptr %317, align 4
  %322 = icmp eq ptr %321, %317
  %323 = getelementptr i8, ptr %321, i32 -56
  %324 = select i1 %322, ptr null, ptr %323
  tail call fastcc void @dwc2_hsotg_start_req(ptr noundef %316, ptr noundef nonnull %255, ptr noundef %324, i1 noundef zeroext false) #14
  br label %341

325:                                              ; preds = %123, %61, %55
  %326 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 67
  %327 = load ptr, ptr %326, align 4
  %328 = icmp eq ptr %327, null
  br i1 %328, label %329, label %333

329:                                              ; preds = %325
  %330 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 77
  %331 = load i8, ptr %330, align 8
  %332 = and i8 %331, -2
  br label %351

333:                                              ; preds = %325
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  %334 = load i16, ptr %9, align 4
  %335 = add i16 %334, 1
  store i16 %335, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  %336 = load ptr, ptr %326, align 4
  %337 = getelementptr inbounds %struct.usb_gadget_driver, ptr %336, i32 0, i32 4
  %338 = load ptr, ptr %337, align 4
  %339 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 85
  %340 = tail call i32 %338(ptr noundef %339, ptr noundef %41) #14
  tail call void @_raw_spin_lock(ptr noundef %9) #14
  br label %345

341:                                              ; preds = %320, %314, %311, %293, %249, %244, %241, %223, %208, %200, %190, %172, %162, %149, %144, %138, %121
  %342 = phi i32 [ -22, %121 ], [ -2, %149 ], [ -22, %162 ], [ -2, %138 ], [ -2, %144 ], [ 1, %172 ], [ -22, %208 ], [ -2, %200 ], [ -2, %249 ], [ -2, %190 ], [ 1, %293 ], [ 1, %311 ], [ 1, %314 ], [ 1, %320 ], [ 1, %223 ], [ -2, %241 ], [ -2, %244 ]
  %343 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 77
  %344 = load i8, ptr %343, align 8
  br label %354

345:                                              ; preds = %333, %288, %236, %185
  %346 = phi i32 [ %340, %333 ], [ %238, %236 ], [ %290, %288 ], [ %187, %185 ]
  %347 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 77
  %348 = load i8, ptr %347, align 8
  %349 = icmp eq i32 %346, 32767
  %350 = or i8 %348, 1
  br i1 %349, label %351, label %354

351:                                              ; preds = %345, %329
  %352 = phi ptr [ %330, %329 ], [ %347, %345 ]
  %353 = phi i8 [ %332, %329 ], [ %350, %345 ]
  store i8 %353, ptr %352, align 8
  br label %361

354:                                              ; preds = %345, %341
  %355 = phi ptr [ %347, %345 ], [ %343, %341 ]
  %356 = phi i32 [ %346, %345 ], [ %342, %341 ]
  %357 = phi i8 [ %348, %345 ], [ %344, %341 ]
  %358 = and i8 %357, -2
  store i8 %358, ptr %355, align 8
  %359 = icmp slt i32 %356, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %354
  tail call fastcc void @dwc2_hsotg_stall_ep0(ptr noundef %4) #14
  br label %361

361:                                              ; preds = %360, %354, %351, %113, %100, %38, %26, %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  %362 = load i16, ptr %9, align 4
  %363 = add i16 %362, 1
  store i16 %363, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %364

364:                                              ; preds = %361, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwc2_hsotg_ep_queue(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 28
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %239

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dwc2_hsotg_req, ptr %1, i32 0, i32 1
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.dwc2_hsotg_req, ptr %1, i32 0, i32 1, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  store i32 -115, ptr %12, align 4
  %13 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 16
  %14 = load i8, ptr %13, align 2
  %15 = and i8 %14, 4
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 14
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 7
  %24 = load i56, ptr %23, align 2
  %25 = trunc i56 %24 to i32
  %26 = and i32 %25, 65535
  %27 = mul nuw nsw i32 %26, %22
  %28 = icmp ugt i32 %19, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %17
  %30 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.27) #15
  br label %239

31:                                               ; preds = %8
  %32 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 3, i32 42
  br label %72

33:                                               ; preds = %17
  %34 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 3, i32 42
  %35 = load i8, ptr %34, align 1, !range !10
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %72, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 11
  %41 = load i8, ptr %40, align 4
  %42 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 13
  %43 = load i8, ptr %42, align 2
  %44 = icmp ne i8 %43, 0
  %45 = icmp ne i8 %41, 0
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %37
  %48 = select i1 %45, i32 4095, i32 2047
  %49 = icmp eq i8 %43, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %39, i32 0, i32 3
  %52 = load i8, ptr %51, align 1
  %53 = and i8 %52, 3
  %54 = icmp ne i8 %53, 3
  %55 = select i1 %54, i1 true, i1 %45
  %56 = and i32 %25, 3
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %55, true
  %59 = select i1 %58, i1 %57, i1 false
  %60 = icmp eq i8 %41, 0
  %61 = select i1 %59, i1 true, i1 %60
  br i1 %61, label %68, label %64

62:                                               ; preds = %47
  %63 = icmp eq i8 %41, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %62, %50
  %65 = icmp ugt i32 %19, %48
  br i1 %65, label %66, label %72

66:                                               ; preds = %64
  %67 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.28, i32 noundef %19, i32 noundef %48) #15
  br label %239

68:                                               ; preds = %62, %50, %37
  %69 = icmp ugt i32 %19, %26
  br i1 %69, label %70, label %72

70:                                               ; preds = %68
  %71 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.29, i32 noundef %19, i32 noundef %26) #15
  br label %239

72:                                               ; preds = %68, %64, %33, %31
  %73 = phi ptr [ %34, %33 ], [ %34, %68 ], [ %32, %31 ], [ %34, %64 ]
  %74 = load ptr, ptr %1, align 4
  %75 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 3, i32 41
  %76 = load i8, ptr %75, align 8, !range !10
  %77 = icmp eq i8 %76, 0
  %78 = ptrtoint ptr %74 to i32
  %79 = and i32 %78, 3
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %77, i1 true, i1 %80
  br i1 %81, label %100, label %82

82:                                               ; preds = %72
  %83 = getelementptr inbounds %struct.dwc2_hsotg_req, ptr %1, i32 0, i32 2
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86, !prof !18

86:                                               ; preds = %82
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1294, i32 noundef 9, ptr noundef null) #14
  br label %87

87:                                               ; preds = %86, %82
  %88 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %89, i32 noundef 2592) #17
  store ptr %90, ptr %1, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %98, label %92

92:                                               ; preds = %87
  store ptr %74, ptr %83, align 4
  %93 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 11
  %94 = load i8, ptr %93, align 4
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i32, ptr %88, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %90, ptr align 1 %74, i32 %97, i1 false) #14
  br label %100

98:                                               ; preds = %87
  store ptr %74, ptr %1, align 4
  %99 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.dwc2_hsotg_handle_unaligned_buf_start) #15
  br label %239

100:                                              ; preds = %96, %92, %72
  %101 = load i8, ptr %75, align 8, !range !10
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %116, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 11
  %105 = load i8, ptr %104, align 4
  %106 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 12
  store i8 %105, ptr %106, align 1
  %107 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 85
  %108 = zext i8 %105 to i32
  %109 = tail call i32 @usb_gadget_map_request(ptr noundef %107, ptr noundef %1, i32 noundef %108) #14
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %103
  %112 = load ptr, ptr %4, align 8
  %113 = load ptr, ptr %1, align 4
  %114 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %115 = load i32, ptr %114, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.dwc2_hsotg_map_dma, ptr noundef %113, i32 noundef %115) #15
  br label %239

116:                                              ; preds = %103, %100
  %117 = load i8, ptr %73, align 1, !range !10
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %126, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 13
  %121 = load i8, ptr %120, align 2
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = tail call fastcc i32 @dwc2_gadget_set_ep0_desc_chain(ptr noundef %4, ptr noundef %0)
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %239

126:                                              ; preds = %123, %119, %116
  %127 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 1
  %128 = load volatile ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, %127
  %130 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 1, i32 1
  %131 = load ptr, ptr %130, align 4
  store ptr %9, ptr %130, align 4
  store ptr %127, ptr %9, align 4
  store ptr %131, ptr %10, align 4
  store volatile ptr %9, ptr %131, align 4
  %132 = load i8, ptr %73, align 1, !range !10
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %157, label %134

134:                                              ; preds = %126
  %135 = load i8, ptr %13, align 2
  %136 = and i8 %135, 4
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %157, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 17
  %140 = load i32, ptr %139, align 4
  %141 = icmp eq i32 %140, -1
  br i1 %141, label %239, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 2
  %144 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 4
  %145 = load i32, ptr %144, align 4
  switch i32 %145, label %146 [
    i32 0, label %151
    i32 1, label %147
  ], !prof !20

146:                                              ; preds = %142
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1487, i32 noundef 9, ptr noundef null) #14
  br label %147

147:                                              ; preds = %146, %142
  %148 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 3
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr inbounds %struct.scatterlist, ptr %149, i32 0, i32 3
  br label %151

151:                                              ; preds = %147, %142
  %152 = phi ptr [ %150, %147 ], [ %143, %142 ]
  %153 = load i32, ptr %152, align 4
  %154 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %155 = load i32, ptr %154, align 4
  %156 = tail call fastcc i32 @dwc2_gadget_fill_isoc_desc(ptr noundef %0, i32 noundef %153, i32 noundef %155)
  br label %239

157:                                              ; preds = %134, %126
  %158 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 13
  %159 = load i8, ptr %158, align 2
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %161, label %174

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %163 = load i32, ptr %162, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 11
  %167 = load i8, ptr %166, align 4
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 76
  %171 = load i32, ptr %170, align 4
  %172 = icmp eq i32 %171, 2
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  store i8 1, ptr %166, align 4
  br label %174

174:                                              ; preds = %173, %169, %165, %161, %157
  br i1 %129, label %175, label %239

175:                                              ; preds = %174
  %176 = load i8, ptr %13, align 2
  %177 = and i8 %176, 4
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %175
  tail call fastcc void @dwc2_hsotg_start_req(ptr noundef %4, ptr noundef %0, ptr noundef %1, i1 noundef zeroext false)
  br label %239

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 1
  %182 = load ptr, ptr %181, align 4
  %183 = getelementptr i8, ptr %182, i32 2056
  %184 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %183) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %185 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 34
  %186 = load i8, ptr %185, align 8, !range !10
  %187 = icmp eq i8 %186, 0
  %188 = tail call i32 @llvm.bswap.i32(i32 %184) #14
  %189 = select i1 %187, i32 %184, i32 %188
  %190 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 11
  %191 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 17
  %192 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 18
  %193 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 15
  br label %194

194:                                              ; preds = %219, %180
  %195 = phi i32 [ %189, %180 ], [ %235, %219 ]
  %196 = lshr i32 %195, 8
  %197 = trunc i32 %196 to i16
  %198 = and i16 %197, 16383
  store i16 %198, ptr %190, align 4
  %199 = load ptr, ptr %3, align 4
  %200 = load i32, ptr %191, align 4
  %201 = getelementptr inbounds %struct.dwc2_hsotg, ptr %199, i32 0, i32 11
  %202 = load i16, ptr %201, align 4
  %203 = zext i16 %202 to i32
  %204 = load i8, ptr %192, align 4, !range !10
  %205 = icmp eq i8 %204, 0
  %206 = xor i1 %205, true
  %207 = icmp ugt i32 %200, %203
  %208 = select i1 %206, i1 true, i1 %207
  %209 = getelementptr inbounds %struct.dwc2_hsotg, ptr %199, i32 0, i32 85, i32 5
  %210 = load i32, ptr %209, align 4
  br i1 %208, label %211, label %219

211:                                              ; preds = %194
  %212 = icmp eq i32 %210, 3
  %213 = select i1 %212, i32 8191, i32 1023
  %214 = select i1 %205, i1 true, i1 %207
  %215 = xor i1 %214, true
  %216 = sub i32 %203, %200
  %217 = icmp ult i32 %216, %213
  %218 = select i1 %215, i1 %217, i1 false
  br i1 %218, label %219, label %236

219:                                              ; preds = %211, %194
  %220 = icmp eq i32 %210, 3
  %221 = select i1 %220, i32 16383, i32 2047
  %222 = load i16, ptr %193, align 4
  %223 = zext i16 %222 to i32
  %224 = add i32 %200, %223
  %225 = icmp ugt i32 %224, %221
  %226 = select i1 %225, i32 %221, i32 -1
  %227 = and i32 %226, %224
  %228 = zext i1 %225 to i8
  store i32 %227, ptr %191, align 4
  store i8 %228, ptr %192, align 4
  %229 = load ptr, ptr %181, align 4
  %230 = getelementptr i8, ptr %229, i32 2056
  %231 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %230) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %232 = load i8, ptr %185, align 8, !range !10
  %233 = icmp eq i8 %232, 0
  %234 = tail call i32 @llvm.bswap.i32(i32 %231) #14
  %235 = select i1 %233, i32 %231, i32 %234
  br label %194

236:                                              ; preds = %211
  %237 = icmp eq i32 %200, -1
  br i1 %237, label %239, label %238

238:                                              ; preds = %236
  tail call fastcc void @dwc2_hsotg_start_req(ptr noundef %4, ptr noundef %0, ptr noundef %1, i1 noundef zeroext false)
  br label %239

239:                                              ; preds = %238, %236, %179, %174, %151, %138, %123, %111, %98, %70, %66, %29, %2
  %240 = phi i32 [ -22, %29 ], [ -22, %66 ], [ 0, %179 ], [ -22, %70 ], [ -11, %2 ], [ -12, %98 ], [ -5, %111 ], [ %124, %123 ], [ 0, %151 ], [ 0, %138 ], [ 0, %236 ], [ 0, %238 ], [ 0, %174 ]
  ret i32 %240
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_hsotg_stall_ep0(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 88
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %3, i32 0, i32 11
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, i32 2816, i32 2304
  %8 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 %7
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %12 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %13 = load i8, ptr %12, align 8, !range !10
  %14 = icmp eq i8 %13, 0
  %15 = tail call i32 @llvm.bswap.i32(i32 %11) #14
  %16 = select i1 %14, i32 %11, i32 %15
  %17 = or i32 %16, 69206016
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %14, label %22, label %18

18:                                               ; preds = %1
  %19 = tail call i32 @llvm.bswap.i32(i32 %17) #14
  %20 = load ptr, ptr %8, align 4
  %21 = getelementptr i8, ptr %20, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #14, !srcloc !11
  br label %25

22:                                               ; preds = %1
  %23 = load ptr, ptr %8, align 4
  %24 = getelementptr i8, ptr %23, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %17) #14, !srcloc !11
  br label %25

25:                                               ; preds = %22, %18
  %26 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 73
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.usb_request, ptr %27, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, -262145
  store i32 %30, ptr %28, align 4
  %31 = getelementptr inbounds %struct.usb_request, ptr %27, i32 0, i32 1
  store i32 8, ptr %31, align 4
  %32 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 75
  %33 = load ptr, ptr %32, align 8
  store ptr %33, ptr %27, align 4
  %34 = getelementptr inbounds %struct.usb_request, ptr %27, i32 0, i32 7
  store ptr @dwc2_hsotg_complete_setup, ptr %34, align 4
  %35 = getelementptr inbounds %struct.dwc2_hsotg_req, ptr %27, i32 0, i32 1
  %36 = load volatile ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %35
  br i1 %37, label %38, label %51

38:                                               ; preds = %25
  %39 = load ptr, ptr %2, align 4
  %40 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %39, i32 0, i32 11
  store i8 0, ptr %40, align 4
  %41 = load ptr, ptr %2, align 4
  %42 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %41, i32 0, i32 16
  %43 = load i8, ptr %42, align 2
  %44 = and i8 %43, -9
  store i8 %44, ptr %42, align 2
  %45 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 76
  store i32 0, ptr %45, align 4
  %46 = load ptr, ptr %2, align 4
  %47 = tail call fastcc i32 @dwc2_hsotg_ep_queue(ptr noundef %46, ptr noundef %27) #14
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.dwc2_hsotg_enqueue_setup, i32 noundef %47) #15
  br label %51

51:                                               ; preds = %49, %38, %25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwc2_hsotg_complete_oursetup(ptr nocapture noundef readnone %0, ptr noundef %1) #3 {
  tail call void @kfree(ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwc2_hsotg_ep_sethalt(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 13
  %7 = load i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.dwc2_hsotg_ep_sethalt, ptr noundef %0, ptr noundef %11, i32 noundef %1) #15
  %12 = icmp eq i8 %7, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  tail call fastcc void @dwc2_hsotg_stall_ep0(ptr noundef %5)
  br label %150

16:                                               ; preds = %13
  %17 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.dwc2_hsotg_ep_sethalt) #15
  br label %150

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 16
  %20 = load i8, ptr %19, align 2
  %21 = and i8 %20, 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr %5, align 8
  %25 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.26, ptr noundef %25) #15
  br label %150

26:                                               ; preds = %18
  %27 = xor i1 %2, true
  %28 = icmp ne i32 %1, 0
  %29 = and i1 %28, %27
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 1
  %32 = load volatile ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %31
  br i1 %33, label %34, label %150

34:                                               ; preds = %30, %26
  %35 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 11
  %36 = load i8, ptr %35, align 4
  %37 = icmp eq i8 %36, 0
  %38 = shl nuw nsw i32 %8, 5
  br i1 %37, label %73, label %39

39:                                               ; preds = %34
  %40 = add nuw nsw i32 %38, 2304
  %41 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %42, i32 %40
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %45 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 34
  %46 = load i8, ptr %45, align 8, !range !10
  %47 = icmp eq i8 %46, 0
  %48 = tail call i32 @llvm.bswap.i32(i32 %44) #14
  %49 = select i1 %47, i32 %44, i32 %48
  br i1 %28, label %50, label %54

50:                                               ; preds = %39
  %51 = icmp slt i32 %49, 0
  %52 = select i1 %51, i32 1210056704, i32 136314880
  %53 = or i32 %52, %49
  br label %62

54:                                               ; preds = %39
  %55 = and i32 %49, -2097153
  %56 = load i8, ptr %19, align 2
  %57 = and i8 %56, -17
  store i8 %57, ptr %19, align 2
  %58 = shl i32 %49, 9
  %59 = and i32 %58, 268435456
  %60 = or i32 %59, %55
  %61 = load i8, ptr %45, align 8, !range !10
  br label %62

62:                                               ; preds = %54, %50
  %63 = phi i8 [ %46, %50 ], [ %61, %54 ]
  %64 = phi i32 [ %53, %50 ], [ %60, %54 ]
  %65 = icmp eq i8 %63, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = tail call i32 @llvm.bswap.i32(i32 %64) #14
  %68 = load ptr, ptr %41, align 4
  %69 = getelementptr i8, ptr %68, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #14, !srcloc !11
  br label %144

70:                                               ; preds = %62
  %71 = load ptr, ptr %41, align 4
  %72 = getelementptr i8, ptr %71, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %64) #14, !srcloc !11
  br label %144

73:                                               ; preds = %34
  %74 = add nuw nsw i32 %38, 2816
  %75 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr i8, ptr %76, i32 %74
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %79 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 34
  br i1 %28, label %80, label %124

80:                                               ; preds = %73
  %81 = load ptr, ptr %75, align 4
  %82 = getelementptr i8, ptr %81, i32 24
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %84 = load i8, ptr %79, align 8, !range !10
  %85 = icmp eq i8 %84, 0
  %86 = tail call i32 @llvm.bswap.i32(i32 %83) #14
  %87 = select i1 %85, i32 %83, i32 %86
  %88 = or i32 %87, 128
  %89 = icmp eq i32 %88, %87
  br i1 %89, label %98, label %90

90:                                               ; preds = %80
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %85, label %95, label %91

91:                                               ; preds = %90
  %92 = tail call i32 @llvm.bswap.i32(i32 %88) #14
  %93 = load ptr, ptr %75, align 4
  %94 = getelementptr i8, ptr %93, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %92) #14, !srcloc !11
  br label %98

95:                                               ; preds = %90
  %96 = load ptr, ptr %75, align 4
  %97 = getelementptr i8, ptr %96, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %88) #14, !srcloc !11
  br label %98

98:                                               ; preds = %95, %91, %80
  %99 = load ptr, ptr %75, align 4
  %100 = getelementptr i8, ptr %99, i32 20
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %102 = load i8, ptr %79, align 8, !range !10
  %103 = icmp eq i8 %102, 0
  %104 = lshr i32 %101, 24
  %105 = select i1 %103, i32 %101, i32 %104
  %106 = and i32 %105, 128
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %144

108:                                              ; preds = %98
  %109 = load ptr, ptr %75, align 4
  %110 = getelementptr i8, ptr %109, i32 2052
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %112 = load i8, ptr %79, align 8, !range !10
  %113 = icmp eq i8 %112, 0
  %114 = tail call i32 @llvm.bswap.i32(i32 %111) #14
  %115 = select i1 %113, i32 %111, i32 %114
  %116 = or i32 %115, 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %113, label %121, label %117

117:                                              ; preds = %108
  %118 = tail call i32 @llvm.bswap.i32(i32 %116) #14
  %119 = load ptr, ptr %75, align 4
  %120 = getelementptr i8, ptr %119, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %118) #14, !srcloc !11
  br label %144

121:                                              ; preds = %108
  %122 = load ptr, ptr %75, align 4
  %123 = getelementptr i8, ptr %122, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %116) #14, !srcloc !11
  br label %144

124:                                              ; preds = %73
  %125 = load i8, ptr %79, align 8, !range !10
  %126 = icmp eq i8 %125, 0
  %127 = tail call i32 @llvm.bswap.i32(i32 %78) #14
  %128 = select i1 %126, i32 %78, i32 %127
  %129 = and i32 %128, -2097153
  %130 = load i8, ptr %19, align 2
  %131 = and i8 %130, -17
  store i8 %131, ptr %19, align 2
  %132 = shl i32 %128, 9
  %133 = and i32 %132, 268435456
  %134 = or i32 %133, %129
  %135 = load i8, ptr %79, align 8, !range !10
  %136 = icmp eq i8 %135, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %136, label %141, label %137

137:                                              ; preds = %124
  %138 = tail call i32 @llvm.bswap.i32(i32 %134) #14
  %139 = load ptr, ptr %75, align 4
  %140 = getelementptr i8, ptr %139, i32 %74
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %140, i32 %138) #14, !srcloc !11
  br label %144

141:                                              ; preds = %124
  %142 = load ptr, ptr %75, align 4
  %143 = getelementptr i8, ptr %142, i32 %74
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %134) #14, !srcloc !11
  br label %144

144:                                              ; preds = %141, %137, %121, %117, %98, %70, %66
  %145 = trunc i32 %1 to i8
  %146 = load i8, ptr %19, align 2
  %147 = and i8 %145, 1
  %148 = and i8 %146, -2
  %149 = or i8 %148, %147
  store i8 %149, ptr %19, align 2
  br label %150

150:                                              ; preds = %144, %30, %23, %16, %15
  %151 = phi i32 [ -22, %23 ], [ 0, %144 ], [ 0, %16 ], [ 0, %15 ], [ -11, %30 ]
  ret i32 %151
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwc2_gadget_set_ep0_desc_chain(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 76
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %26 [
    i32 0, label %5
    i32 4, label %5
    i32 1, label %12
    i32 3, label %12
    i32 2, label %19
  ]

5:                                                ; preds = %2, %2
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 80
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 20
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 79
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 19
  store i32 %10, ptr %11, align 4
  br label %28

12:                                               ; preds = %2, %2
  %13 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 82
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 20
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 81
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 19
  store i32 %17, ptr %18, align 4
  br label %28

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 84
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 20
  store ptr %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 83
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 19
  store i32 %24, ptr %25, align 4
  br label %28

26:                                               ; preds = %2
  %27 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.32, i32 noundef %4) #15
  br label %28

28:                                               ; preds = %26, %19, %12, %5
  %29 = phi i32 [ -22, %26 ], [ 0, %19 ], [ 0, %12 ], [ 0, %5 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc i32 @dwc2_gadget_fill_isoc_desc(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 7
  %7 = load i56, ptr %6, align 2
  %8 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 11
  %9 = load i8, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 13
  %11 = load i8, ptr %10, align 2
  %12 = icmp ne i8 %11, 0
  %13 = icmp ne i8 %9, 0
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 16
  %17 = load i8, ptr %16, align 2
  %18 = and i8 %17, 4
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %13, i32 4095, i32 2047
  %21 = select i1 %19, i32 65535, i32 %20
  %22 = icmp eq i8 %11, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %5, i32 0, i32 3
  %25 = load i8, ptr %24, align 1
  %26 = and i8 %25, 3
  %27 = icmp ne i8 %26, 3
  %28 = select i1 %27, i1 true, i1 %13
  %29 = and i56 %7, 3
  %30 = icmp eq i56 %29, 0
  %31 = select i1 %28, i1 true, i1 %30
  %32 = select i1 %31, i32 %21, i32 65535
  br label %33

33:                                               ; preds = %23, %15, %3
  %34 = phi i32 [ %21, %15 ], [ 65535, %3 ], [ %32, %23 ]
  %35 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 22
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 20
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr %struct.dwc2_dma_desc, ptr %38, i32 %36
  %40 = load i32, ptr %39, align 1
  %41 = icmp ult i32 %40, 1073741824
  br i1 %41, label %106, label %42

42:                                               ; preds = %33
  %43 = icmp eq i32 %36, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %42
  %45 = add i32 %36, -1
  %46 = getelementptr %struct.dwc2_dma_desc, ptr %38, i32 %45
  %47 = load i32, ptr %46, align 1
  %48 = and i32 %47, -134217729
  store i32 %48, ptr %46, align 1
  br label %49

49:                                               ; preds = %44, %42
  %50 = getelementptr %struct.dwc2_dma_desc, ptr %38, i32 %36, i32 1
  store i32 %1, ptr %50, align 1
  %51 = and i32 %34, %2
  %52 = or i32 %51, -905969664
  store i32 %52, ptr %39, align 1
  %53 = load i8, ptr %8, align 4
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %78, label %55

55:                                               ; preds = %49
  %56 = icmp eq i32 %2, 0
  %57 = load i56, ptr %6, align 2
  %58 = trunc i56 %57 to i32
  %59 = and i32 %58, 65535
  br i1 %56, label %66, label %60

60:                                               ; preds = %55
  %61 = add i32 %2, -1
  %62 = add i32 %61, %59
  %63 = udiv i32 %62, %59
  %64 = shl i32 %63, 23
  %65 = and i32 %64, 25165824
  br label %66

66:                                               ; preds = %60, %55
  %67 = phi i32 [ %65, %60 ], [ 8388608, %55 ]
  %68 = urem i32 %2, %59
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, i32 0, i32 67108864
  %71 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 17
  %72 = load i32, ptr %71, align 4
  %73 = shl i32 %72, 12
  %74 = and i32 %73, 8384512
  %75 = or i32 %67, %52
  %76 = or i32 %75, %70
  %77 = or i32 %76, %74
  store i32 %77, ptr %39, align 1
  br label %78

78:                                               ; preds = %66, %49
  %79 = phi i32 [ %77, %66 ], [ %52, %49 ]
  %80 = and i32 %79, 1073741823
  store i32 %80, ptr %39, align 1
  %81 = load i8, ptr %8, align 4
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %101, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 2
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.dwc2_hsotg, ptr %85, i32 0, i32 85, i32 5
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 3
  %89 = select i1 %88, i32 16383, i32 2047
  %90 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 15
  %91 = load i16, ptr %90, align 4
  %92 = zext i16 %91 to i32
  %93 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 17
  %94 = load i32, ptr %93, align 4
  %95 = add i32 %94, %92
  %96 = icmp ugt i32 %95, %89
  %97 = select i1 %96, i32 %89, i32 -1
  %98 = and i32 %97, %95
  %99 = zext i1 %96 to i8
  store i32 %98, ptr %93, align 4
  %100 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 18
  store i8 %99, ptr %100, align 4
  br label %101

101:                                              ; preds = %83, %78
  %102 = load i32, ptr %35, align 4
  %103 = add i32 %102, 1
  %104 = icmp ugt i32 %103, 255
  %105 = select i1 %104, i32 0, i32 %103
  store i32 %105, ptr %35, align 4
  br label %106

106:                                              ; preds = %101, %33
  %107 = phi i32 [ 0, %101 ], [ 1, %33 ]
  ret i32 %107
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_map_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_hsotg_ep_stop_xfr(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 11
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 13
  %7 = load i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 5
  br i1 %5, label %64, label %10

10:                                               ; preds = %2
  %11 = add nuw nsw i32 %9, 2304
  %12 = add nuw nsw i32 %9, 2312
  %13 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 69
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 16
  %19 = load i8, ptr %18, align 2
  %20 = and i8 %19, 2
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %43, label %22

22:                                               ; preds = %17, %10
  %23 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 %11
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %27 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %28 = load i8, ptr %27, align 8, !range !10
  %29 = icmp eq i8 %28, 0
  %30 = tail call i32 @llvm.bswap.i32(i32 %26) #14
  %31 = select i1 %29, i32 %26, i32 %30
  %32 = or i32 %31, 134217728
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %29, label %37, label %33

33:                                               ; preds = %22
  %34 = tail call i32 @llvm.bswap.i32(i32 %32) #14
  %35 = load ptr, ptr %23, align 4
  %36 = getelementptr i8, ptr %35, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #14, !srcloc !11
  br label %40

37:                                               ; preds = %22
  %38 = load ptr, ptr %23, align 4
  %39 = getelementptr i8, ptr %38, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %32) #14, !srcloc !11
  br label %40

40:                                               ; preds = %37, %33
  %41 = tail call i32 @dwc2_hsotg_wait_bit_set(ptr noundef %0, i32 noundef %12, i32 noundef 64, i32 noundef 100) #14
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %133, label %128

43:                                               ; preds = %17
  %44 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %45, i32 2052
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %48 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %49 = load i8, ptr %48, align 8, !range !10
  %50 = icmp eq i8 %49, 0
  %51 = tail call i32 @llvm.bswap.i32(i32 %47) #14
  %52 = select i1 %50, i32 %47, i32 %51
  %53 = or i32 %52, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %50, label %58, label %54

54:                                               ; preds = %43
  %55 = tail call i32 @llvm.bswap.i32(i32 %53) #14
  %56 = load ptr, ptr %44, align 4
  %57 = getelementptr i8, ptr %56, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #14, !srcloc !11
  br label %61

58:                                               ; preds = %43
  %59 = load ptr, ptr %44, align 4
  %60 = getelementptr i8, ptr %59, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %53) #14, !srcloc !11
  br label %61

61:                                               ; preds = %58, %54
  %62 = tail call i32 @dwc2_hsotg_wait_bit_set(ptr noundef %0, i32 noundef 20, i32 noundef 64, i32 noundef 100) #14
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %133, label %128

64:                                               ; preds = %2
  %65 = add nuw nsw i32 %9, 2816
  %66 = add nuw nsw i32 %9, 2824
  %67 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 24
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %71 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %72 = load i8, ptr %71, align 8, !range !10
  %73 = icmp eq i8 %72, 0
  %74 = tail call i32 @llvm.bswap.i32(i32 %70) #14
  %75 = select i1 %73, i32 %70, i32 %74
  %76 = and i32 %75, -129
  %77 = icmp eq i32 %76, %75
  br i1 %77, label %86, label %78

78:                                               ; preds = %64
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %73, label %83, label %79

79:                                               ; preds = %78
  %80 = tail call i32 @llvm.bswap.i32(i32 %76) #14
  %81 = load ptr, ptr %67, align 4
  %82 = getelementptr i8, ptr %81, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %80) #14, !srcloc !11
  br label %86

83:                                               ; preds = %78
  %84 = load ptr, ptr %67, align 4
  %85 = getelementptr i8, ptr %84, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %76) #14, !srcloc !11
  br label %86

86:                                               ; preds = %83, %79, %64
  %87 = load ptr, ptr %67, align 4
  %88 = getelementptr i8, ptr %87, i32 20
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %90 = load i8, ptr %71, align 8, !range !10
  %91 = icmp eq i8 %90, 0
  %92 = lshr i32 %89, 24
  %93 = select i1 %91, i32 %89, i32 %92
  %94 = and i32 %93, 128
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %86
  %97 = load ptr, ptr %67, align 4
  %98 = getelementptr i8, ptr %97, i32 2052
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %100 = load i8, ptr %71, align 8, !range !10
  %101 = icmp eq i8 %100, 0
  %102 = tail call i32 @llvm.bswap.i32(i32 %99) #14
  %103 = select i1 %101, i32 %99, i32 %102
  %104 = or i32 %103, 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %101, label %109, label %105

105:                                              ; preds = %96
  %106 = tail call i32 @llvm.bswap.i32(i32 %104) #14
  %107 = load ptr, ptr %67, align 4
  %108 = getelementptr i8, ptr %107, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %106) #14, !srcloc !11
  br label %112

109:                                              ; preds = %96
  %110 = load ptr, ptr %67, align 4
  %111 = getelementptr i8, ptr %110, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %104) #14, !srcloc !11
  br label %112

112:                                              ; preds = %109, %105, %86
  %113 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 41
  %114 = load i8, ptr %113, align 8, !range !10
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %112
  %117 = tail call i32 @dwc2_hsotg_wait_bit_set(ptr noundef %0, i32 noundef 20, i32 noundef 16, i32 noundef 100) #14
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  %120 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %120, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.dwc2_hsotg_ep_stop_xfr) #15
  br label %125

121:                                              ; preds = %116
  %122 = load ptr, ptr %67, align 4
  %123 = getelementptr i8, ptr %122, i32 32
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %125

125:                                              ; preds = %121, %119, %112
  %126 = tail call i32 @dwc2_hsotg_wait_bit_set(ptr noundef %0, i32 noundef 20, i32 noundef 128, i32 noundef 100) #14
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %125, %61, %40
  %129 = phi ptr [ @.str.35, %40 ], [ @.str.36, %61 ], [ @.str.38, %125 ]
  %130 = phi i32 [ %12, %40 ], [ %12, %61 ], [ %66, %125 ]
  %131 = phi i32 [ %11, %40 ], [ %11, %61 ], [ %65, %125 ]
  %132 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %132, ptr noundef nonnull %129, ptr noundef nonnull @__func__.dwc2_hsotg_ep_stop_xfr) #15
  br label %133

133:                                              ; preds = %128, %125, %61, %40
  %134 = phi i32 [ %66, %125 ], [ %12, %40 ], [ %12, %61 ], [ %130, %128 ]
  %135 = phi i32 [ %65, %125 ], [ %11, %40 ], [ %11, %61 ], [ %131, %128 ]
  %136 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr i8, ptr %137, i32 %135
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %138) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %140 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %141 = load i8, ptr %140, align 8, !range !10
  %142 = icmp eq i8 %141, 0
  %143 = tail call i32 @llvm.bswap.i32(i32 %139) #14
  %144 = select i1 %142, i32 %139, i32 %143
  %145 = or i32 %144, 1207959552
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %142, label %150, label %146

146:                                              ; preds = %133
  %147 = tail call i32 @llvm.bswap.i32(i32 %145) #14
  %148 = load ptr, ptr %136, align 4
  %149 = getelementptr i8, ptr %148, i32 %135
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 %147) #14, !srcloc !11
  br label %153

150:                                              ; preds = %133
  %151 = load ptr, ptr %136, align 4
  %152 = getelementptr i8, ptr %151, i32 %135
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 %145) #14, !srcloc !11
  br label %153

153:                                              ; preds = %150, %146
  %154 = tail call i32 @dwc2_hsotg_wait_bit_set(ptr noundef %0, i32 noundef %134, i32 noundef 2, i32 noundef 100) #14
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %153
  %157 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %157, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.dwc2_hsotg_ep_stop_xfr) #15
  br label %158

158:                                              ; preds = %156, %153
  %159 = load ptr, ptr %136, align 4
  %160 = getelementptr i8, ptr %159, i32 %134
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %160) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %162 = load i8, ptr %140, align 8, !range !10
  %163 = icmp eq i8 %162, 0
  %164 = tail call i32 @llvm.bswap.i32(i32 %161) #14
  %165 = select i1 %163, i32 %161, i32 %164
  %166 = or i32 %165, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %163, label %171, label %167

167:                                              ; preds = %158
  %168 = tail call i32 @llvm.bswap.i32(i32 %166) #14
  %169 = load ptr, ptr %136, align 4
  %170 = getelementptr i8, ptr %169, i32 %134
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 %168) #14, !srcloc !11
  br label %174

171:                                              ; preds = %158
  %172 = load ptr, ptr %136, align 4
  %173 = getelementptr i8, ptr %172, i32 %134
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 %166) #14, !srcloc !11
  br label %174

174:                                              ; preds = %171, %167
  %175 = load i8, ptr %3, align 4
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %217, label %177

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 69
  %179 = load i8, ptr %178, align 4
  %180 = and i8 %179, 1
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 16
  %184 = load i8, ptr %183, align 2
  %185 = and i8 %184, 2
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %182, %177
  %188 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 10
  %189 = load i16, ptr %188, align 2
  %190 = zext i16 %189 to i32
  br label %191

191:                                              ; preds = %187, %182
  %192 = phi i32 [ %190, %187 ], [ 0, %182 ]
  tail call void @dwc2_flush_tx_fifo(ptr noundef %0, i32 noundef %192) #14
  %193 = load i8, ptr %178, align 4
  %194 = and i8 %193, 1
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %196, label %233

196:                                              ; preds = %191
  %197 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 16
  %198 = load i8, ptr %197, align 2
  %199 = and i8 %198, 2
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %201, label %233

201:                                              ; preds = %196
  %202 = load ptr, ptr %136, align 4
  %203 = getelementptr i8, ptr %202, i32 2052
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %203) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %205 = load i8, ptr %140, align 8, !range !10
  %206 = icmp eq i8 %205, 0
  %207 = tail call i32 @llvm.bswap.i32(i32 %204) #14
  %208 = select i1 %206, i32 %204, i32 %207
  %209 = or i32 %208, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %206, label %214, label %210

210:                                              ; preds = %201
  %211 = tail call i32 @llvm.bswap.i32(i32 %209) #14
  %212 = load ptr, ptr %136, align 4
  %213 = getelementptr i8, ptr %212, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %213, i32 %211) #14, !srcloc !11
  br label %233

214:                                              ; preds = %201
  %215 = load ptr, ptr %136, align 4
  %216 = getelementptr i8, ptr %215, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %216, i32 %209) #14, !srcloc !11
  br label %233

217:                                              ; preds = %174
  %218 = load ptr, ptr %136, align 4
  %219 = getelementptr i8, ptr %218, i32 2052
  %220 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %219) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %221 = load i8, ptr %140, align 8, !range !10
  %222 = icmp eq i8 %221, 0
  %223 = tail call i32 @llvm.bswap.i32(i32 %220) #14
  %224 = select i1 %222, i32 %220, i32 %223
  %225 = or i32 %224, 1024
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %222, label %230, label %226

226:                                              ; preds = %217
  %227 = tail call i32 @llvm.bswap.i32(i32 %225) #14
  %228 = load ptr, ptr %136, align 4
  %229 = getelementptr i8, ptr %228, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %229, i32 %227) #14, !srcloc !11
  br label %233

230:                                              ; preds = %217
  %231 = load ptr, ptr %136, align 4
  %232 = getelementptr i8, ptr %231, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %232, i32 %225) #14, !srcloc !11
  br label %233

233:                                              ; preds = %230, %226, %214, %210, %196, %191
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hsotg_wait_bit_set(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_flush_tx_fifo(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc2_hsotg_gadget_getframe(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -1492
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 2056
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %6 = getelementptr i8, ptr %0, i32 -488
  %7 = load i8, ptr %6, align 8, !range !10
  %8 = icmp eq i8 %7, 0
  %9 = tail call i32 @llvm.bswap.i32(i32 %5) #14
  %10 = select i1 %8, i32 %5, i32 %9
  %11 = lshr i32 %10, 8
  %12 = and i32 %11, 16383
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc2_hsotg_set_selfpowered(ptr noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 -1180
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #14
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 17
  %7 = load i32, ptr %6, align 4
  %8 = select i1 %5, i32 0, i32 8192
  %9 = and i32 %7, -8193
  %10 = or i32 %9, %8
  store i32 %10, ptr %6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc2_hsotg_vbus_session(ptr noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 -1496
  %4 = getelementptr i8, ptr %0, i32 -1180
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #14
  %6 = getelementptr i8, ptr %0, i32 -1112
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %0, i32 -1232
  %11 = load i8, ptr %10, align 8
  %12 = and i8 %11, 16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = tail call i32 @dwc2_exit_partial_power_down(ptr noundef %3, i32 noundef 0, i1 noundef zeroext false) #14
  br label %16

16:                                               ; preds = %14, %9, %2
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %42, label %18

18:                                               ; preds = %16
  %19 = getelementptr i8, ptr %0, i32 -1248
  store i32 3, ptr %19, align 8
  tail call void @dwc2_hsotg_core_init_disconnected(ptr noundef %3, i1 noundef zeroext false)
  %20 = getelementptr i8, ptr %0, i32 568
  %21 = load i8, ptr %20, align 8
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %61, label %24

24:                                               ; preds = %18
  tail call void @dwc2_enable_acg(ptr noundef %3) #14
  %25 = getelementptr i8, ptr %0, i32 -1492
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 2052
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %29 = getelementptr i8, ptr %0, i32 -488
  %30 = load i8, ptr %29, align 8, !range !10
  %31 = icmp eq i8 %30, 0
  %32 = tail call i32 @llvm.bswap.i32(i32 %28) #14
  %33 = select i1 %31, i32 %28, i32 %32
  %34 = and i32 %33, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %31, label %39, label %35

35:                                               ; preds = %24
  %36 = tail call i32 @llvm.bswap.i32(i32 %34) #14
  %37 = load ptr, ptr %25, align 4
  %38 = getelementptr i8, ptr %37, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #14, !srcloc !11
  br label %61

39:                                               ; preds = %24
  %40 = load ptr, ptr %25, align 4
  %41 = getelementptr i8, ptr %40, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %34) #14, !srcloc !11
  br label %61

42:                                               ; preds = %16
  %43 = getelementptr i8, ptr %0, i32 -1492
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i8, ptr %44, i32 2052
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %47 = getelementptr i8, ptr %0, i32 -488
  %48 = load i8, ptr %47, align 8, !range !10
  %49 = icmp eq i8 %48, 0
  %50 = tail call i32 @llvm.bswap.i32(i32 %46) #14
  %51 = select i1 %49, i32 %46, i32 %50
  %52 = or i32 %51, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %49, label %57, label %53

53:                                               ; preds = %42
  %54 = tail call i32 @llvm.bswap.i32(i32 %52) #14
  %55 = load ptr, ptr %43, align 4
  %56 = getelementptr i8, ptr %55, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #14, !srcloc !11
  br label %60

57:                                               ; preds = %42
  %58 = load ptr, ptr %43, align 4
  %59 = getelementptr i8, ptr %58, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %52) #14, !srcloc !11
  br label %60

60:                                               ; preds = %57, %53
  tail call void @dwc2_hsotg_disconnect(ptr noundef %3)
  br label %61

61:                                               ; preds = %60, %39, %35, %18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc2_hsotg_vbus_draw(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 -1220
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %7 = or i1 %5, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  tail call void @usb_phy_set_charger_current(ptr noundef nonnull %4, i32 noundef %1) #14
  %9 = getelementptr inbounds %struct.usb_phy, ptr %4, i32 0, i32 25
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i32 %10(ptr noundef nonnull %4, i32 noundef %1) #14
  br label %14

14:                                               ; preds = %12, %8, %2
  %15 = phi i32 [ -524, %2 ], [ %13, %12 ], [ 0, %8 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc2_hsotg_pullup(ptr noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 -1496
  %4 = getelementptr i8, ptr %0, i32 -1248
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 568
  %9 = trunc i32 %1 to i8
  %10 = load i8, ptr %8, align 8
  %11 = and i8 %9, 1
  %12 = and i8 %10, -2
  %13 = or i8 %12, %11
  store i8 %13, ptr %8, align 8
  br label %63

14:                                               ; preds = %2
  %15 = getelementptr i8, ptr %0, i32 -1180
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #14
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %39, label %18

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %0, i32 568
  %20 = load i8, ptr %19, align 8
  %21 = or i8 %20, 1
  store i8 %21, ptr %19, align 8
  tail call void @dwc2_hsotg_core_init_disconnected(ptr noundef %3, i1 noundef zeroext false)
  tail call void @dwc2_enable_acg(ptr noundef %3) #14
  %22 = getelementptr i8, ptr %0, i32 -1492
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 2052
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %26 = getelementptr i8, ptr %0, i32 -488
  %27 = load i8, ptr %26, align 8, !range !10
  %28 = icmp eq i8 %27, 0
  %29 = tail call i32 @llvm.bswap.i32(i32 %25) #14
  %30 = select i1 %28, i32 %25, i32 %29
  %31 = and i32 %30, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %28, label %36, label %32

32:                                               ; preds = %18
  %33 = tail call i32 @llvm.bswap.i32(i32 %31) #14
  %34 = load ptr, ptr %22, align 4
  %35 = getelementptr i8, ptr %34, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #14, !srcloc !11
  br label %61

36:                                               ; preds = %18
  %37 = load ptr, ptr %22, align 4
  %38 = getelementptr i8, ptr %37, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %31) #14, !srcloc !11
  br label %61

39:                                               ; preds = %14
  %40 = getelementptr i8, ptr %0, i32 -1492
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 2052
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %44 = getelementptr i8, ptr %0, i32 -488
  %45 = load i8, ptr %44, align 8, !range !10
  %46 = icmp eq i8 %45, 0
  %47 = tail call i32 @llvm.bswap.i32(i32 %43) #14
  %48 = select i1 %46, i32 %43, i32 %47
  %49 = or i32 %48, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %46, label %54, label %50

50:                                               ; preds = %39
  %51 = tail call i32 @llvm.bswap.i32(i32 %49) #14
  %52 = load ptr, ptr %40, align 4
  %53 = getelementptr i8, ptr %52, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #14, !srcloc !11
  br label %57

54:                                               ; preds = %39
  %55 = load ptr, ptr %40, align 4
  %56 = getelementptr i8, ptr %55, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %49) #14, !srcloc !11
  br label %57

57:                                               ; preds = %54, %50
  tail call void @dwc2_hsotg_disconnect(ptr noundef %3)
  %58 = getelementptr i8, ptr %0, i32 568
  %59 = load i8, ptr %58, align 8
  %60 = and i8 %59, -2
  store i8 %60, ptr %58, align 8
  br label %61

61:                                               ; preds = %57, %36, %32
  %62 = getelementptr i8, ptr %0, i32 36
  store i32 0, ptr %62, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #14
  br label %63

63:                                               ; preds = %61, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc2_hsotg_udc_start(ptr noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 -1496
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.dwc2_hsotg_udc_start) #15
  br label %131

7:                                                ; preds = %2
  %8 = icmp eq ptr %1, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.dwc2_hsotg_udc_start) #15
  br label %131

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.usb_gadget_driver, ptr %1, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.dwc2_hsotg_udc_start) #15
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct.usb_gadget_driver, ptr %1, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.dwc2_hsotg_udc_start) #15
  br label %131

23:                                               ; preds = %17
  %24 = getelementptr i8, ptr %0, i32 -76
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27, !prof !18

27:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 4545, i32 noundef 9, ptr noundef null) #14
  br label %28

28:                                               ; preds = %27, %23
  %29 = getelementptr inbounds %struct.usb_gadget_driver, ptr %1, i32 0, i32 9
  %30 = getelementptr inbounds %struct.usb_gadget_driver, ptr %1, i32 0, i32 9, i32 1
  store ptr null, ptr %30, align 4
  store ptr %1, ptr %24, align 4
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 25
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr i8, ptr %0, i32 480
  store ptr %33, ptr %34, align 8
  %35 = getelementptr i8, ptr %0, i32 36
  store i32 0, ptr %35, align 4
  %36 = getelementptr i8, ptr %0, i32 -1244
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = tail call i32 @dwc2_lowlevel_hw_enable(ptr noundef nonnull %3) #14
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %130

42:                                               ; preds = %39, %28
  %43 = getelementptr i8, ptr %0, i32 -1220
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  %47 = or i1 %45, %46
  br i1 %47, label %58, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.usb_phy, ptr %44, i32 0, i32 5
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.usb_otg, ptr %50, i32 0, i32 7
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = tail call i32 %54(ptr noundef nonnull %50, ptr noundef %0) #14
  br label %58

58:                                               ; preds = %56, %52, %48, %42
  %59 = getelementptr i8, ptr %0, i32 -1180
  %60 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %59) #14
  %61 = tail call zeroext i1 @dwc2_hw_is_device(ptr noundef nonnull %3) #14
  br i1 %61, label %62, label %117

62:                                               ; preds = %58
  %63 = getelementptr i8, ptr %0, i32 -488
  %64 = load i8, ptr %63, align 8, !range !10
  %65 = icmp eq i8 %64, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  %66 = getelementptr i8, ptr %0, i32 -1492
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr i8, ptr %67, i32 2064
  br i1 %65, label %70, label %69

69:                                               ; preds = %62
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 251658240) #14, !srcloc !11
  br label %71

70:                                               ; preds = %62
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 15) #14, !srcloc !11
  br label %71

71:                                               ; preds = %70, %69
  %72 = load i8, ptr %63, align 8, !range !10
  %73 = icmp eq i8 %72, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  %74 = load ptr, ptr %66, align 4
  %75 = getelementptr i8, ptr %74, i32 2068
  br i1 %73, label %77, label %76

76:                                               ; preds = %71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 251658240) #14, !srcloc !11
  br label %78

77:                                               ; preds = %71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 15) #14, !srcloc !11
  br label %78

78:                                               ; preds = %77, %76
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  %79 = load ptr, ptr %66, align 4
  %80 = getelementptr i8, ptr %79, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 0) #14
  %81 = load ptr, ptr %66, align 4
  %82 = getelementptr i8, ptr %81, i32 2052
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %84 = load i8, ptr %63, align 8, !range !10
  %85 = icmp eq i8 %84, 0
  %86 = tail call i32 @llvm.bswap.i32(i32 %83) #14
  %87 = select i1 %85, i32 %83, i32 %86
  %88 = or i32 %87, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %85, label %93, label %89

89:                                               ; preds = %78
  %90 = tail call i32 @llvm.bswap.i32(i32 %88) #14
  %91 = load ptr, ptr %66, align 4
  %92 = getelementptr i8, ptr %91, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #14, !srcloc !11
  br label %96

93:                                               ; preds = %78
  %94 = load ptr, ptr %66, align 4
  %95 = getelementptr i8, ptr %94, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %88) #14, !srcloc !11
  br label %96

96:                                               ; preds = %93, %89
  tail call fastcc void @dwc2_hsotg_init_fifo(ptr noundef nonnull %3) #14
  %97 = getelementptr i8, ptr %0, i32 -1328
  %98 = load i8, ptr %97, align 8, !range !10
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %116, label %100

100:                                              ; preds = %96
  %101 = load ptr, ptr %66, align 4
  %102 = getelementptr i8, ptr %101, i32 8
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %104 = load i8, ptr %63, align 8, !range !10
  %105 = icmp eq i8 %104, 0
  %106 = tail call i32 @llvm.bswap.i32(i32 %103) #14
  %107 = select i1 %105, i32 %103, i32 %106
  %108 = or i32 %107, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %105, label %113, label %109

109:                                              ; preds = %100
  %110 = tail call i32 @llvm.bswap.i32(i32 %108) #14
  %111 = load ptr, ptr %66, align 4
  %112 = getelementptr i8, ptr %111, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %110) #14, !srcloc !11
  br label %116

113:                                              ; preds = %100
  %114 = load ptr, ptr %66, align 4
  %115 = getelementptr i8, ptr %114, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %108) #14, !srcloc !11
  br label %116

116:                                              ; preds = %113, %109, %96
  tail call void @dwc2_hsotg_core_init_disconnected(ptr noundef nonnull %3, i1 noundef zeroext false)
  br label %117

117:                                              ; preds = %116, %58
  %118 = getelementptr i8, ptr %0, i32 568
  %119 = load i8, ptr %118, align 8
  %120 = and i8 %119, -2
  store i8 %120, ptr %118, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %59, i32 noundef %60) #14
  %121 = getelementptr i8, ptr %0, i32 -1327
  %122 = load i8, ptr %121, align 1, !range !10
  %123 = zext i8 %122 to i32
  %124 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 17
  %125 = load i32, ptr %124, align 4
  %126 = and i32 %125, -2
  %127 = or i32 %126, %123
  store i32 %127, ptr %124, align 4
  %128 = load ptr, ptr %3, align 8
  %129 = load ptr, ptr %29, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %128, ptr noundef nonnull @.str.44, ptr noundef %129) #15
  br label %131

130:                                              ; preds = %39
  store ptr null, ptr %24, align 4
  br label %131

131:                                              ; preds = %130, %117, %21, %9, %5
  %132 = phi i32 [ %40, %130 ], [ 0, %117 ], [ -22, %21 ], [ -22, %9 ], [ -19, %5 ]
  ret i32 %132
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc2_hsotg_udc_stop(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -1496
  %3 = icmp eq ptr %2, null
  br i1 %3, label %63, label %4

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i32 -67
  %6 = load i8, ptr %5, align 1
  %7 = icmp ugt i8 %6, 1
  br i1 %7, label %8, label %34

8:                                                ; preds = %29, %4
  %9 = phi i32 [ %30, %29 ], [ 1, %4 ]
  %10 = getelementptr %struct.dwc2_hsotg, ptr %2, i32 0, i32 87, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %11, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dwc2_hsotg, ptr %15, i32 0, i32 18
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #14
  %18 = tail call fastcc i32 @dwc2_hsotg_ep_disable(ptr noundef nonnull %11) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %17) #14
  br label %19

19:                                               ; preds = %13, %8
  %20 = getelementptr %struct.dwc2_hsotg, ptr %2, i32 0, i32 88, i32 %9
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %21, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.dwc2_hsotg, ptr %25, i32 0, i32 18
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #14
  %28 = tail call fastcc i32 @dwc2_hsotg_ep_disable(ptr noundef nonnull %21) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #14
  br label %29

29:                                               ; preds = %23, %19
  %30 = add nuw nsw i32 %9, 1
  %31 = load i8, ptr %5, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp ult i32 %30, %32
  br i1 %33, label %8, label %34

34:                                               ; preds = %29, %4
  %35 = getelementptr i8, ptr %0, i32 -1180
  %36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %35) #14
  %37 = getelementptr i8, ptr %0, i32 -76
  store ptr null, ptr %37, align 4
  %38 = getelementptr i8, ptr %0, i32 36
  store i32 0, ptr %38, align 4
  %39 = getelementptr i8, ptr %0, i32 568
  %40 = load i8, ptr %39, align 8
  %41 = and i8 %40, -2
  store i8 %41, ptr %39, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %35, i32 noundef %36) #14
  %42 = getelementptr i8, ptr %0, i32 -1220
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  %45 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  %46 = or i1 %44, %45
  br i1 %46, label %57, label %47

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.usb_phy, ptr %43, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.usb_otg, ptr %49, i32 0, i32 7
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = tail call i32 %53(ptr noundef nonnull %49, ptr noundef null) #14
  br label %57

57:                                               ; preds = %55, %51, %47, %34
  %58 = getelementptr i8, ptr %0, i32 -1244
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = tail call i32 @dwc2_lowlevel_hw_disable(ptr noundef nonnull %2) #14
  br label %63

63:                                               ; preds = %61, %57, %1
  %64 = phi i32 [ -19, %1 ], [ 0, %61 ], [ 0, %57 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwc2_gadget_set_speed(ptr noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 -1180
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #14
  switch i32 %1, label %11 [
    i32 3, label %5
    i32 2, label %7
    i32 1, label %9
  ]

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %0, i32 -1385
  store i8 0, ptr %6, align 1
  br label %14

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 -1385
  store i8 1, ptr %8, align 1
  br label %14

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %0, i32 -1385
  store i8 2, ptr %10, align 1
  br label %14

11:                                               ; preds = %2
  %12 = getelementptr i8, ptr %0, i32 -1496
  %13 = load ptr, ptr %12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.45, i32 noundef %1) #15
  br label %14

14:                                               ; preds = %11, %9, %7, %5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_exit_partial_power_down(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_phy_set_charger_current(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_lowlevel_hw_enable(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dwc2_hw_is_device(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_lowlevel_hw_disable(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_hsotg_epint(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = icmp eq i32 %2, 0
  %5 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 87, i32 %1
  %6 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 88, i32 %1
  %7 = select i1 %4, ptr %6, ptr %5
  %8 = load ptr, ptr %7, align 4
  %9 = shl i32 %1, 5
  %10 = select i1 %4, i32 2824, i32 2312
  %11 = add i32 %10, %9
  %12 = select i1 %4, i32 2068, i32 2064
  %13 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 %12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %17 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %18 = load i8, ptr %17, align 8, !range !10
  %19 = icmp eq i8 %18, 0
  %20 = tail call i32 @llvm.bswap.i32(i32 %16) #14
  %21 = select i1 %19, i32 %16, i32 %20
  %22 = load ptr, ptr %13, align 4
  %23 = getelementptr i8, ptr %22, i32 2100
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %25 = load i8, ptr %17, align 8, !range !10
  %26 = icmp eq i8 %25, 0
  %27 = tail call i32 @llvm.bswap.i32(i32 %24) #14
  %28 = select i1 %26, i32 %24, i32 %27
  %29 = shl nuw i32 1, %1
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 0, i32 128
  %33 = or i32 %21, %32
  %34 = or i32 %33, 32768
  %35 = load ptr, ptr %13, align 4
  %36 = getelementptr i8, ptr %35, i32 %11
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %38 = load i8, ptr %17, align 8, !range !10
  %39 = icmp eq i8 %38, 0
  %40 = tail call i32 @llvm.bswap.i32(i32 %37) #14
  %41 = select i1 %39, i32 %37, i32 %40
  %42 = and i32 %41, %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %39, label %47, label %43

43:                                               ; preds = %3
  %44 = tail call i32 @llvm.bswap.i32(i32 %42) #14
  %45 = load ptr, ptr %13, align 4
  %46 = getelementptr i8, ptr %45, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #14, !srcloc !11
  br label %50

47:                                               ; preds = %3
  %48 = load ptr, ptr %13, align 4
  %49 = getelementptr i8, ptr %48, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %42) #14, !srcloc !11
  br label %50

50:                                               ; preds = %47, %43
  %51 = icmp eq ptr %8, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = load ptr, ptr %0, align 8
  %54 = select i1 %4, ptr @.str.54, ptr @.str.53
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.dwc2_hsotg_epint, i32 noundef %1, ptr noundef nonnull %54) #15
  br label %1000

55:                                               ; preds = %50
  %56 = icmp eq i32 %1, 0
  %57 = and i32 %42, 32776
  %58 = icmp ne i32 %57, 0
  %59 = and i1 %56, %58
  %60 = and i32 %42, -2
  %61 = select i1 %59, i32 %60, i32 %42
  %62 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 42
  %63 = load i8, ptr %62, align 1, !range !10
  %64 = icmp ne i8 %63, 0
  %65 = and i1 %56, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %55
  %67 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 11
  %68 = load i8, ptr %67, align 4
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 76
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %61, 8
  %74 = or i32 %72, %73
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %75, i32 %60, i32 %61
  br label %77

77:                                               ; preds = %70, %66, %55
  %78 = phi i32 [ %61, %66 ], [ %61, %55 ], [ %76, %70 ]
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %416, label %81

81:                                               ; preds = %77
  br i1 %64, label %82, label %144

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 16
  %84 = load i8, ptr %83, align 2
  %85 = and i8 %84, 4
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %144, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 2
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 20
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 23
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr %struct.dwc2_dma_desc, ptr %91, i32 %93
  %95 = load i32, ptr %94, align 1
  %96 = and i32 %95, -1073741824
  %97 = icmp eq i32 %96, -2147483648
  br i1 %97, label %98, label %416

98:                                               ; preds = %87
  %99 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 1
  %100 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 11
  br label %101

101:                                              ; preds = %134, %98
  %102 = phi i32 [ %95, %98 ], [ %141, %134 ]
  %103 = load volatile ptr, ptr %99, align 4
  %104 = icmp eq ptr %103, %99
  %105 = getelementptr i8, ptr %103, i32 -56
  %106 = icmp eq ptr %105, null
  %107 = or i1 %104, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = load ptr, ptr %89, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %109, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.dwc2_gadget_complete_isoc_request_ddma) #15
  br label %416

110:                                              ; preds = %101
  %111 = and i32 %102, 805306368
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %134

113:                                              ; preds = %110
  %114 = load i8, ptr %100, align 4
  %115 = icmp eq i8 %114, 0
  %116 = select i1 %115, i32 2047, i32 4095
  %117 = getelementptr i8, ptr %103, i32 -52
  %118 = load i32, ptr %117, align 4
  %119 = and i32 %116, %102
  %120 = sub i32 %118, %119
  %121 = getelementptr i8, ptr %103, i32 -4
  store i32 %120, ptr %121, align 4
  %122 = load i8, ptr %100, align 4
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %113
  %125 = and i32 %118, 3
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = sub nuw nsw i32 4, %125
  %129 = add i32 %128, %120
  store i32 %129, ptr %121, align 4
  br label %130

130:                                              ; preds = %127, %124, %113
  %131 = lshr i32 %102, 12
  %132 = and i32 %131, 2047
  %133 = getelementptr i8, ptr %103, i32 -12
  store i32 %132, ptr %133, align 4
  br label %134

134:                                              ; preds = %130, %110
  tail call fastcc void @dwc2_hsotg_complete_request(ptr noundef %89, ptr noundef %8, ptr noundef nonnull %105, i32 noundef 0) #14
  %135 = load i32, ptr %92, align 4
  %136 = add i32 %135, 1
  %137 = icmp ugt i32 %136, 255
  %138 = select i1 %137, i32 0, i32 %136
  store i32 %138, ptr %92, align 4
  %139 = load ptr, ptr %90, align 4
  %140 = getelementptr %struct.dwc2_dma_desc, ptr %139, i32 %138
  %141 = load i32, ptr %140, align 1
  %142 = and i32 %141, -1073741824
  %143 = icmp eq i32 %142, -2147483648
  br i1 %143, label %101, label %416

144:                                              ; preds = %82, %81
  br i1 %4, label %403, label %145

145:                                              ; preds = %144
  %146 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 16
  %147 = load i8, ptr %146, align 2
  %148 = and i8 %147, 4
  %149 = icmp eq i8 %148, 0
  %150 = and i32 %78, 8192
  %151 = icmp eq i32 %150, 0
  %152 = select i1 %149, i1 true, i1 %151
  br i1 %152, label %153, label %371

153:                                              ; preds = %145
  %154 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 3
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 13
  %157 = load i8, ptr %156, align 2
  %158 = zext i8 %157 to i32
  %159 = shl nuw nsw i32 %158, 5
  %160 = add nuw nsw i32 %159, 2320
  %161 = load ptr, ptr %13, align 4
  %162 = getelementptr i8, ptr %161, i32 %160
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %162) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %164 = load i8, ptr %17, align 8, !range !10
  %165 = icmp eq i8 %164, 0
  %166 = tail call i32 @llvm.bswap.i32(i32 %163) #14
  %167 = select i1 %165, i32 %163, i32 %166
  %168 = icmp eq ptr %155, null
  br i1 %168, label %371, label %169

169:                                              ; preds = %153
  %170 = load i8, ptr %156, align 2
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %172, label %230

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 76
  %174 = load i32, ptr %173, align 4
  %175 = icmp eq i32 %174, 3
  br i1 %175, label %176, label %230

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 11
  store i8 0, ptr %177, align 4
  tail call fastcc void @dwc2_hsotg_complete_request(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %155, i32 noundef 0) #14
  %178 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 78
  %179 = load i8, ptr %178, align 1
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %204, label %181

181:                                              ; preds = %176
  %182 = zext i8 %179 to i32
  %183 = load ptr, ptr %13, align 4
  %184 = getelementptr i8, ptr %183, i32 2052
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %184) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %186 = add nsw i32 %182, -1
  %187 = icmp ult i32 %186, 5
  br i1 %187, label %188, label %203

188:                                              ; preds = %181
  %189 = load i8, ptr %17, align 8, !range !10
  %190 = icmp eq i8 %189, 0
  %191 = tail call i32 @llvm.bswap.i32(i32 %185) #14
  %192 = select i1 %190, i32 %185, i32 %191
  %193 = and i32 %192, -113
  %194 = shl nuw nsw i32 %182, 4
  %195 = or i32 %193, %194
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %190, label %200, label %196

196:                                              ; preds = %188
  %197 = tail call i32 @llvm.bswap.i32(i32 %195) #14
  %198 = load ptr, ptr %13, align 4
  %199 = getelementptr i8, ptr %198, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %199, i32 %197) #14, !srcloc !11
  br label %204

200:                                              ; preds = %188
  %201 = load ptr, ptr %13, align 4
  %202 = getelementptr i8, ptr %201, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %202, i32 %195) #14, !srcloc !11
  br label %204

203:                                              ; preds = %181
  tail call fastcc void @dwc2_hsotg_stall_ep0(ptr noundef %0) #14
  br label %371

204:                                              ; preds = %200, %196, %176
  %205 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 73
  %206 = load ptr, ptr %205, align 8
  %207 = getelementptr inbounds %struct.usb_request, ptr %206, i32 0, i32 6
  %208 = load i32, ptr %207, align 4
  %209 = and i32 %208, -262145
  store i32 %209, ptr %207, align 4
  %210 = getelementptr inbounds %struct.usb_request, ptr %206, i32 0, i32 1
  store i32 8, ptr %210, align 4
  %211 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 75
  %212 = load ptr, ptr %211, align 8
  store ptr %212, ptr %206, align 4
  %213 = getelementptr inbounds %struct.usb_request, ptr %206, i32 0, i32 7
  store ptr @dwc2_hsotg_complete_setup, ptr %213, align 4
  %214 = getelementptr inbounds %struct.dwc2_hsotg_req, ptr %206, i32 0, i32 1
  %215 = load volatile ptr, ptr %214, align 4
  %216 = icmp eq ptr %215, %214
  br i1 %216, label %217, label %371

217:                                              ; preds = %204
  %218 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 88
  %219 = load ptr, ptr %218, align 4
  %220 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %219, i32 0, i32 11
  store i8 0, ptr %220, align 4
  %221 = load ptr, ptr %218, align 4
  %222 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %221, i32 0, i32 16
  %223 = load i8, ptr %222, align 2
  %224 = and i8 %223, -9
  store i8 %224, ptr %222, align 2
  store i32 0, ptr %173, align 4
  %225 = load ptr, ptr %218, align 4
  %226 = tail call fastcc i32 @dwc2_hsotg_ep_queue(ptr noundef %225, ptr noundef %206) #14
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %371

228:                                              ; preds = %217
  %229 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %229, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.dwc2_hsotg_enqueue_setup, i32 noundef %226) #15
  br label %371

230:                                              ; preds = %172, %169
  %231 = load i8, ptr %62, align 1, !range !10
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %304, label %233

233:                                              ; preds = %230
  %234 = getelementptr inbounds %struct.usb_ep, ptr %8, i32 0, i32 9
  %235 = load ptr, ptr %234, align 4
  %236 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 2
  %237 = load ptr, ptr %236, align 4
  %238 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 20
  %239 = load ptr, ptr %238, align 4
  %240 = getelementptr inbounds %struct.usb_ep, ptr %8, i32 0, i32 7
  %241 = load i56, ptr %240, align 2
  %242 = trunc i56 %241 to i32
  %243 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 11
  %244 = load i8, ptr %243, align 4
  %245 = icmp eq ptr %239, null
  br i1 %245, label %294, label %246

246:                                              ; preds = %233
  br i1 %171, label %259, label %247

247:                                              ; preds = %246
  %248 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %235, i32 0, i32 3
  %249 = load i8, ptr %248, align 1
  %250 = and i8 %249, 3
  %251 = icmp ne i8 %250, 3
  %252 = icmp ne i8 %244, 0
  %253 = select i1 %251, i1 true, i1 %252
  %254 = and i32 %242, 3
  %255 = icmp eq i32 %254, 0
  %256 = select i1 %253, i1 true, i1 %255
  %257 = or i32 %242, -4
  %258 = select i1 %256, i32 0, i32 %257
  br label %259

259:                                              ; preds = %247, %246
  %260 = phi i32 [ 0, %246 ], [ %258, %247 ]
  %261 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 21
  %262 = load i8, ptr %261, align 4
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %264, label %271

264:                                              ; preds = %259
  %265 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 6
  %266 = load i32, ptr %265, align 4
  %267 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 7
  %268 = load i32, ptr %267, align 4
  %269 = add i32 %268, %266
  %270 = getelementptr inbounds %struct.usb_request, ptr %155, i32 0, i32 12
  store i32 %269, ptr %270, align 4
  br label %316

271:                                              ; preds = %286, %259
  %272 = phi i32 [ %288, %286 ], [ 0, %259 ]
  %273 = phi ptr [ %287, %286 ], [ %239, %259 ]
  %274 = phi i32 [ %278, %286 ], [ 0, %259 ]
  %275 = load i32, ptr %273, align 1
  %276 = and i32 %275, 65535
  %277 = add i32 %274, %260
  %278 = add i32 %277, %276
  %279 = and i32 %275, 805306368
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %283, label %281

281:                                              ; preds = %271
  %282 = load ptr, ptr %237, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %282, ptr noundef nonnull @.str.58, i32 noundef %272, i32 noundef %279) #15
  br label %283

283:                                              ; preds = %281, %271
  %284 = and i32 %275, 134217728
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %292

286:                                              ; preds = %283
  %287 = getelementptr %struct.dwc2_dma_desc, ptr %273, i32 1
  %288 = add nuw nsw i32 %272, 1
  %289 = load i8, ptr %261, align 4
  %290 = zext i8 %289 to i32
  %291 = icmp ult i32 %288, %290
  br i1 %291, label %271, label %292

292:                                              ; preds = %286, %283
  %293 = icmp slt i32 %278, 0
  br i1 %293, label %294, label %306

294:                                              ; preds = %292, %233
  %295 = phi i32 [ %278, %292 ], [ -22, %233 ]
  %296 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %296, ptr noundef nonnull @.str.57, i32 noundef %295) #15
  %297 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 6
  %298 = load i32, ptr %297, align 4
  %299 = sub i32 %298, %295
  %300 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 7
  %301 = load i32, ptr %300, align 4
  %302 = add i32 %299, %301
  %303 = getelementptr inbounds %struct.usb_request, ptr %155, i32 0, i32 12
  store i32 %302, ptr %303, align 4
  br label %322

304:                                              ; preds = %230
  %305 = and i32 %167, 524287
  br label %306

306:                                              ; preds = %304, %292
  %307 = phi i32 [ %278, %292 ], [ %305, %304 ]
  %308 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 6
  %309 = load i32, ptr %308, align 4
  %310 = sub i32 %309, %307
  %311 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 7
  %312 = load i32, ptr %311, align 4
  %313 = add i32 %310, %312
  %314 = getelementptr inbounds %struct.usb_request, ptr %155, i32 0, i32 12
  store i32 %313, ptr %314, align 4
  %315 = icmp eq i32 %307, 0
  br i1 %315, label %316, label %322

316:                                              ; preds = %306, %264
  %317 = phi i32 [ %269, %264 ], [ %313, %306 ]
  %318 = getelementptr inbounds %struct.usb_request, ptr %155, i32 0, i32 1
  %319 = load i32, ptr %318, align 4
  %320 = icmp ult i32 %317, %319
  br i1 %320, label %321, label %322

321:                                              ; preds = %316
  tail call fastcc void @dwc2_hsotg_start_req(ptr noundef %0, ptr noundef %8, ptr noundef nonnull %155, i1 noundef zeroext true) #14
  br label %371

322:                                              ; preds = %316, %306, %294
  %323 = load i8, ptr %146, align 2
  %324 = and i8 %323, 8
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %331, label %326

326:                                              ; preds = %322
  %327 = and i8 %323, -9
  store i8 %327, ptr %146, align 2
  %328 = load i8, ptr %62, align 1, !range !10
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %326
  tail call fastcc void @dwc2_hsotg_program_zlp(ptr noundef %0, ptr noundef %8) #14
  br label %371

331:                                              ; preds = %326, %322
  %332 = phi i8 [ %327, %326 ], [ %323, %322 ]
  %333 = load i8, ptr %156, align 2
  %334 = icmp eq i8 %333, 0
  br i1 %334, label %335, label %344

335:                                              ; preds = %331
  %336 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 76
  %337 = load i32, ptr %336, align 4
  %338 = icmp eq i32 %337, 1
  br i1 %338, label %339, label %344

339:                                              ; preds = %335
  %340 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 88
  %341 = load ptr, ptr %340, align 4
  %342 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %341, i32 0, i32 11
  store i8 0, ptr %342, align 4
  store i32 4, ptr %336, align 4
  %343 = load ptr, ptr %340, align 4
  tail call fastcc void @dwc2_hsotg_program_zlp(ptr noundef %0, ptr noundef %343) #14
  br label %371

344:                                              ; preds = %335, %331
  %345 = load i8, ptr %62, align 1, !range !10
  %346 = icmp ne i8 %345, 0
  %347 = and i8 %332, 4
  %348 = icmp eq i8 %347, 0
  %349 = select i1 %346, i1 true, i1 %348
  br i1 %349, label %370, label %350

350:                                              ; preds = %344
  %351 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 17
  %352 = load i32, ptr %351, align 4
  %353 = getelementptr inbounds %struct.usb_request, ptr %155, i32 0, i32 10
  store i32 %352, ptr %353, align 4
  %354 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 2
  %355 = load ptr, ptr %354, align 4
  %356 = getelementptr inbounds %struct.dwc2_hsotg, ptr %355, i32 0, i32 85, i32 5
  %357 = load i32, ptr %356, align 4
  %358 = icmp eq i32 %357, 3
  %359 = select i1 %358, i32 16383, i32 2047
  %360 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 15
  %361 = load i16, ptr %360, align 4
  %362 = zext i16 %361 to i32
  %363 = load i32, ptr %351, align 4
  %364 = add i32 %363, %362
  %365 = icmp ugt i32 %364, %359
  %366 = select i1 %365, i32 %359, i32 -1
  %367 = and i32 %366, %364
  %368 = zext i1 %365 to i8
  store i32 %367, ptr %351, align 4
  %369 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 18
  store i8 %368, ptr %369, align 4
  br label %370

370:                                              ; preds = %350, %344
  tail call fastcc void @dwc2_hsotg_complete_request(ptr noundef %0, ptr noundef %8, ptr noundef nonnull %155, i32 noundef 0) #14
  br label %371

371:                                              ; preds = %370, %339, %330, %321, %228, %217, %204, %203, %153, %145
  br i1 %56, label %372, label %416

372:                                              ; preds = %371
  %373 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 3
  %374 = load ptr, ptr %373, align 4
  %375 = icmp eq ptr %374, null
  br i1 %375, label %376, label %416

376:                                              ; preds = %372
  %377 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 73
  %378 = load ptr, ptr %377, align 8
  %379 = getelementptr inbounds %struct.usb_request, ptr %378, i32 0, i32 6
  %380 = load i32, ptr %379, align 4
  %381 = and i32 %380, -262145
  store i32 %381, ptr %379, align 4
  %382 = getelementptr inbounds %struct.usb_request, ptr %378, i32 0, i32 1
  store i32 8, ptr %382, align 4
  %383 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 75
  %384 = load ptr, ptr %383, align 8
  store ptr %384, ptr %378, align 4
  %385 = getelementptr inbounds %struct.usb_request, ptr %378, i32 0, i32 7
  store ptr @dwc2_hsotg_complete_setup, ptr %385, align 4
  %386 = getelementptr inbounds %struct.dwc2_hsotg_req, ptr %378, i32 0, i32 1
  %387 = load volatile ptr, ptr %386, align 4
  %388 = icmp eq ptr %387, %386
  br i1 %388, label %389, label %416

389:                                              ; preds = %376
  %390 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 88
  %391 = load ptr, ptr %390, align 4
  %392 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %391, i32 0, i32 11
  store i8 0, ptr %392, align 4
  %393 = load ptr, ptr %390, align 4
  %394 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %393, i32 0, i32 16
  %395 = load i8, ptr %394, align 2
  %396 = and i8 %395, -9
  store i8 %396, ptr %394, align 2
  %397 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 76
  store i32 0, ptr %397, align 4
  %398 = load ptr, ptr %390, align 4
  %399 = tail call fastcc i32 @dwc2_hsotg_ep_queue(ptr noundef %398, ptr noundef %378) #14
  %400 = icmp slt i32 %399, 0
  br i1 %400, label %401, label %416

401:                                              ; preds = %389
  %402 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %402, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.dwc2_hsotg_enqueue_setup, i32 noundef %399) #15
  br label %416

403:                                              ; preds = %144
  %404 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 41
  %405 = load i8, ptr %404, align 8, !range !10
  %406 = icmp eq i8 %405, 0
  br i1 %406, label %416, label %407

407:                                              ; preds = %403
  %408 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 16
  %409 = load i8, ptr %408, align 2
  %410 = and i8 %409, 4
  %411 = icmp eq i8 %410, 0
  %412 = and i32 %78, 16
  %413 = icmp eq i32 %412, 0
  %414 = select i1 %411, i1 true, i1 %413
  br i1 %414, label %415, label %416

415:                                              ; preds = %407
  tail call fastcc void @dwc2_hsotg_handle_outdone(ptr noundef %0, i32 noundef %1)
  br label %416

416:                                              ; preds = %415, %407, %403, %401, %389, %376, %372, %371, %134, %108, %87, %77
  %417 = and i32 %78, 2
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %564, label %419

419:                                              ; preds = %416
  %420 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 2
  %421 = load ptr, ptr %420, align 4
  %422 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 13
  %423 = load i8, ptr %422, align 2
  %424 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 11
  %425 = load i8, ptr %424, align 4
  %426 = icmp eq i8 %425, 0
  %427 = getelementptr inbounds %struct.dwc2_hsotg, ptr %421, i32 0, i32 1
  %428 = load ptr, ptr %427, align 4
  %429 = getelementptr i8, ptr %428, i32 2052
  %430 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %429) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %431 = getelementptr inbounds %struct.dwc2_hsotg, ptr %421, i32 0, i32 34
  %432 = load i8, ptr %431, align 8, !range !10
  %433 = icmp eq i8 %432, 0
  %434 = tail call i32 @llvm.bswap.i32(i32 %430) #14
  %435 = select i1 %433, i32 %430, i32 %434
  br i1 %426, label %483, label %436

436:                                              ; preds = %419
  %437 = zext i8 %423 to i32
  %438 = shl nuw nsw i32 %437, 5
  %439 = add nuw nsw i32 %438, 2304
  %440 = load ptr, ptr %427, align 4
  %441 = getelementptr i8, ptr %440, i32 %439
  %442 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %441) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %443 = load i8, ptr %431, align 8, !range !10
  %444 = icmp eq i8 %443, 0
  %445 = shl i32 %442, 8
  %446 = select i1 %444, i32 %442, i32 %445
  %447 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 10
  %448 = load i16, ptr %447, align 2
  %449 = zext i16 %448 to i32
  %450 = shl nuw nsw i32 %449, 6
  %451 = or i32 %450, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %444, label %456, label %452

452:                                              ; preds = %436
  %453 = tail call i32 @llvm.bswap.i32(i32 %451) #14
  %454 = load ptr, ptr %427, align 4
  %455 = getelementptr i8, ptr %454, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %455, i32 %453) #14, !srcloc !11
  br label %459

456:                                              ; preds = %436
  %457 = load ptr, ptr %427, align 4
  %458 = getelementptr i8, ptr %457, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %458, i32 %451) #14, !srcloc !11
  br label %459

459:                                              ; preds = %456, %452
  %460 = tail call i32 @dwc2_hsotg_wait_bit_clear(ptr noundef %421, i32 noundef 16, i32 noundef 32, i32 noundef 100) #14
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %464, label %462

462:                                              ; preds = %459
  %463 = load ptr, ptr %421, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %463, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.dwc2_hsotg_txfifo_flush) #15
  br label %464

464:                                              ; preds = %462, %459
  %465 = and i32 %446, 2621440
  %466 = icmp eq i32 %465, 2621440
  br i1 %466, label %467, label %495

467:                                              ; preds = %464
  %468 = load ptr, ptr %427, align 4
  %469 = getelementptr i8, ptr %468, i32 2052
  %470 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %469) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %471 = load i8, ptr %431, align 8, !range !10
  %472 = icmp eq i8 %471, 0
  %473 = tail call i32 @llvm.bswap.i32(i32 %470) #14
  %474 = select i1 %472, i32 %470, i32 %473
  %475 = or i32 %474, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %472, label %480, label %476

476:                                              ; preds = %467
  %477 = tail call i32 @llvm.bswap.i32(i32 %475) #14
  %478 = load ptr, ptr %427, align 4
  %479 = getelementptr i8, ptr %478, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %479, i32 %477) #14, !srcloc !11
  br label %495

480:                                              ; preds = %467
  %481 = load ptr, ptr %427, align 4
  %482 = getelementptr i8, ptr %481, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %482, i32 %475) #14, !srcloc !11
  br label %495

483:                                              ; preds = %419
  %484 = and i32 %435, 8
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %495, label %486

486:                                              ; preds = %483
  %487 = or i32 %435, 1024
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %433, label %492, label %488

488:                                              ; preds = %486
  %489 = tail call i32 @llvm.bswap.i32(i32 %487) #14
  %490 = load ptr, ptr %427, align 4
  %491 = getelementptr i8, ptr %490, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %491, i32 %489) #14, !srcloc !11
  br label %495

492:                                              ; preds = %486
  %493 = load ptr, ptr %427, align 4
  %494 = getelementptr i8, ptr %493, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %494, i32 %487) #14, !srcloc !11
  br label %495

495:                                              ; preds = %492, %488, %483, %480, %476, %464
  %496 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 16
  %497 = load i8, ptr %496, align 2
  %498 = and i8 %497, 4
  %499 = icmp eq i8 %498, 0
  br i1 %499, label %564, label %500

500:                                              ; preds = %495
  %501 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 1
  %502 = load volatile ptr, ptr %501, align 4
  %503 = icmp eq ptr %502, %501
  br i1 %503, label %564, label %504

504:                                              ; preds = %500
  %505 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 17
  %506 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 15
  %507 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 18
  %508 = getelementptr inbounds %struct.dwc2_hsotg, ptr %421, i32 0, i32 11
  br label %509

509:                                              ; preds = %563, %504
  %510 = load volatile ptr, ptr %501, align 4
  %511 = icmp eq ptr %510, %501
  %512 = getelementptr i8, ptr %510, i32 -56
  %513 = icmp eq ptr %512, null
  %514 = or i1 %511, %513
  br i1 %514, label %519, label %515

515:                                              ; preds = %509
  %516 = load i32, ptr %505, align 4
  %517 = getelementptr i8, ptr %510, i32 -12
  store i32 %516, ptr %517, align 4
  %518 = getelementptr i8, ptr %510, i32 -4
  store i32 0, ptr %518, align 4
  tail call fastcc void @dwc2_hsotg_complete_request(ptr noundef %421, ptr noundef %8, ptr noundef nonnull %512, i32 noundef -61) #14
  br label %519

519:                                              ; preds = %515, %509
  %520 = load ptr, ptr %420, align 4
  %521 = getelementptr inbounds %struct.dwc2_hsotg, ptr %520, i32 0, i32 85, i32 5
  %522 = load i32, ptr %521, align 4
  %523 = icmp eq i32 %522, 3
  %524 = select i1 %523, i32 16383, i32 2047
  %525 = load i16, ptr %506, align 4
  %526 = zext i16 %525 to i32
  %527 = load i32, ptr %505, align 4
  %528 = add i32 %527, %526
  %529 = icmp ugt i32 %528, %524
  %530 = select i1 %529, i32 %524, i32 -1
  %531 = and i32 %530, %528
  %532 = zext i1 %529 to i8
  store i32 %531, ptr %505, align 4
  store i8 %532, ptr %507, align 4
  %533 = load ptr, ptr %427, align 4
  %534 = getelementptr i8, ptr %533, i32 2056
  %535 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %534) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %536 = load i8, ptr %431, align 8, !range !10
  %537 = icmp eq i8 %536, 0
  %538 = tail call i32 @llvm.bswap.i32(i32 %535) #14
  %539 = select i1 %537, i32 %535, i32 %538
  %540 = lshr i32 %539, 8
  %541 = trunc i32 %540 to i16
  %542 = and i16 %541, 16383
  store i16 %542, ptr %508, align 4
  %543 = load ptr, ptr %420, align 4
  %544 = load i32, ptr %505, align 4
  %545 = getelementptr inbounds %struct.dwc2_hsotg, ptr %543, i32 0, i32 11
  %546 = load i16, ptr %545, align 4
  %547 = zext i16 %546 to i32
  %548 = load i8, ptr %507, align 4, !range !10
  %549 = icmp eq i8 %548, 0
  %550 = xor i1 %549, true
  %551 = icmp ugt i32 %544, %547
  %552 = select i1 %550, i1 true, i1 %551
  br i1 %552, label %553, label %563

553:                                              ; preds = %519
  %554 = getelementptr inbounds %struct.dwc2_hsotg, ptr %543, i32 0, i32 85, i32 5
  %555 = load i32, ptr %554, align 4
  %556 = icmp eq i32 %555, 3
  %557 = select i1 %556, i32 8191, i32 1023
  %558 = select i1 %549, i1 true, i1 %551
  %559 = xor i1 %558, true
  %560 = sub i32 %547, %544
  %561 = icmp ult i32 %560, %557
  %562 = select i1 %559, i1 %561, i1 false
  br i1 %562, label %563, label %564

563:                                              ; preds = %553, %519
  br label %509

564:                                              ; preds = %553, %500, %495, %416
  %565 = and i32 %78, 16
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %697, label %567

567:                                              ; preds = %564
  %568 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 2
  %569 = load ptr, ptr %568, align 4
  %570 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 11
  %571 = load i8, ptr %570, align 4
  %572 = icmp eq i8 %571, 0
  br i1 %572, label %573, label %697

573:                                              ; preds = %567
  %574 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 16
  %575 = load i8, ptr %574, align 2
  %576 = and i8 %575, 4
  %577 = icmp eq i8 %576, 0
  br i1 %577, label %697, label %578

578:                                              ; preds = %573
  %579 = getelementptr inbounds %struct.dwc2_hsotg, ptr %569, i32 0, i32 3, i32 42
  %580 = load i8, ptr %579, align 1, !range !10
  %581 = icmp eq i8 %580, 0
  %582 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 17
  %583 = load i32, ptr %582, align 4
  %584 = icmp eq i32 %583, -1
  br i1 %581, label %590, label %585

585:                                              ; preds = %578
  br i1 %584, label %586, label %697

586:                                              ; preds = %585
  %587 = getelementptr inbounds %struct.dwc2_hsotg, ptr %569, i32 0, i32 11
  %588 = load i16, ptr %587, align 4
  %589 = zext i16 %588 to i32
  store i32 %589, ptr %582, align 4
  tail call fastcc void @dwc2_gadget_start_isoc_ddma(ptr noundef %8) #14
  br label %697

590:                                              ; preds = %578
  br i1 %584, label %591, label %622

591:                                              ; preds = %590
  %592 = getelementptr inbounds %struct.dwc2_hsotg, ptr %569, i32 0, i32 11
  %593 = load i16, ptr %592, align 4
  %594 = zext i16 %593 to i32
  store i32 %594, ptr %582, align 4
  %595 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 15
  %596 = load i16, ptr %595, align 4
  %597 = icmp ugt i16 %596, 1
  br i1 %597, label %598, label %622

598:                                              ; preds = %591
  %599 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 13
  %600 = load i8, ptr %599, align 2
  %601 = zext i8 %600 to i32
  %602 = shl nuw nsw i32 %601, 5
  %603 = add nuw nsw i32 %602, 2816
  %604 = getelementptr inbounds %struct.dwc2_hsotg, ptr %569, i32 0, i32 1
  %605 = load ptr, ptr %604, align 4
  %606 = getelementptr i8, ptr %605, i32 %603
  %607 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %606) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %608 = getelementptr inbounds %struct.dwc2_hsotg, ptr %569, i32 0, i32 34
  %609 = load i8, ptr %608, align 8, !range !10
  %610 = icmp eq i8 %609, 0
  %611 = tail call i32 @llvm.bswap.i32(i32 %607) #14
  %612 = select i1 %610, i32 %607, i32 %611
  %613 = load i32, ptr %582, align 4
  %614 = and i32 %613, 1
  %615 = icmp eq i32 %614, 0
  %616 = select i1 %615, i32 268435456, i32 536870912
  %617 = or i32 %616, %612
  %618 = load i8, ptr %599, align 2
  %619 = zext i8 %618 to i32
  %620 = shl nuw nsw i32 %619, 5
  %621 = add nuw nsw i32 %620, 2816
  tail call fastcc void @dwc2_writel(ptr noundef %569, i32 noundef %617, i32 noundef %621) #14
  br label %622

622:                                              ; preds = %598, %591, %590
  %623 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 18
  %624 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 1
  %625 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 15
  %626 = getelementptr inbounds %struct.dwc2_hsotg, ptr %569, i32 0, i32 1
  %627 = getelementptr inbounds %struct.dwc2_hsotg, ptr %569, i32 0, i32 34
  %628 = getelementptr inbounds %struct.dwc2_hsotg, ptr %569, i32 0, i32 11
  br label %629

629:                                              ; preds = %661, %622
  %630 = load ptr, ptr %568, align 4
  %631 = load i32, ptr %582, align 4
  %632 = getelementptr inbounds %struct.dwc2_hsotg, ptr %630, i32 0, i32 11
  %633 = load i16, ptr %632, align 4
  %634 = zext i16 %633 to i32
  %635 = load i8, ptr %623, align 4, !range !10
  %636 = icmp eq i8 %635, 0
  %637 = xor i1 %636, true
  %638 = icmp ugt i32 %631, %634
  %639 = select i1 %637, i1 true, i1 %638
  br i1 %639, label %640, label %650

640:                                              ; preds = %629
  %641 = getelementptr inbounds %struct.dwc2_hsotg, ptr %630, i32 0, i32 85, i32 5
  %642 = load i32, ptr %641, align 4
  %643 = icmp eq i32 %642, 3
  %644 = select i1 %643, i32 8191, i32 1023
  %645 = select i1 %636, i1 true, i1 %638
  %646 = xor i1 %645, true
  %647 = sub i32 %634, %631
  %648 = icmp ult i32 %647, %644
  %649 = select i1 %646, i1 %648, i1 false
  br i1 %649, label %650, label %685

650:                                              ; preds = %640, %629
  %651 = load volatile ptr, ptr %624, align 4
  %652 = icmp eq ptr %651, %624
  %653 = getelementptr i8, ptr %651, i32 -56
  %654 = icmp eq ptr %653, null
  %655 = or i1 %652, %654
  br i1 %655, label %661, label %656

656:                                              ; preds = %650
  %657 = getelementptr i8, ptr %651, i32 -12
  store i32 %631, ptr %657, align 4
  %658 = getelementptr i8, ptr %651, i32 -4
  store i32 0, ptr %658, align 4
  tail call fastcc void @dwc2_hsotg_complete_request(ptr noundef %569, ptr noundef %8, ptr noundef nonnull %653, i32 noundef -61) #14
  %659 = load ptr, ptr %568, align 4
  %660 = load i32, ptr %582, align 4
  br label %661

661:                                              ; preds = %656, %650
  %662 = phi i32 [ %660, %656 ], [ %631, %650 ]
  %663 = phi ptr [ %659, %656 ], [ %630, %650 ]
  %664 = getelementptr inbounds %struct.dwc2_hsotg, ptr %663, i32 0, i32 85, i32 5
  %665 = load i32, ptr %664, align 4
  %666 = icmp eq i32 %665, 3
  %667 = select i1 %666, i32 16383, i32 2047
  %668 = load i16, ptr %625, align 4
  %669 = zext i16 %668 to i32
  %670 = add i32 %662, %669
  %671 = icmp ugt i32 %670, %667
  %672 = select i1 %671, i32 %667, i32 -1
  %673 = and i32 %672, %670
  %674 = zext i1 %671 to i8
  store i32 %673, ptr %582, align 4
  store i8 %674, ptr %623, align 4
  %675 = load ptr, ptr %626, align 4
  %676 = getelementptr i8, ptr %675, i32 2056
  %677 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %676) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %678 = load i8, ptr %627, align 8, !range !10
  %679 = icmp eq i8 %678, 0
  %680 = tail call i32 @llvm.bswap.i32(i32 %677) #14
  %681 = select i1 %679, i32 %677, i32 %680
  %682 = lshr i32 %681, 8
  %683 = trunc i32 %682 to i16
  %684 = and i16 %683, 16383
  store i16 %684, ptr %628, align 4
  br label %629

685:                                              ; preds = %640
  %686 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 3
  %687 = load ptr, ptr %686, align 4
  %688 = icmp eq ptr %687, null
  br i1 %688, label %689, label %697

689:                                              ; preds = %685
  %690 = load volatile ptr, ptr %624, align 4
  %691 = icmp eq ptr %690, %624
  br i1 %691, label %697, label %692

692:                                              ; preds = %689
  %693 = load volatile ptr, ptr %624, align 4
  %694 = icmp eq ptr %693, %624
  %695 = getelementptr i8, ptr %693, i32 -56
  %696 = select i1 %694, ptr null, ptr %695
  tail call fastcc void @dwc2_hsotg_start_req(ptr noundef %630, ptr noundef %8, ptr noundef %696, i1 noundef zeroext false) #14
  br label %697

697:                                              ; preds = %692, %689, %685, %586, %585, %573, %567, %564
  %698 = and i32 %78, 8192
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %904, label %700

700:                                              ; preds = %697
  %701 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 2
  %702 = load ptr, ptr %701, align 4
  %703 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 11
  %704 = load i8, ptr %703, align 4
  %705 = icmp eq i8 %704, 0
  br i1 %705, label %904, label %706

706:                                              ; preds = %700
  %707 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 16
  %708 = load i8, ptr %707, align 2
  %709 = and i8 %708, 4
  %710 = icmp eq i8 %709, 0
  br i1 %710, label %904, label %711

711:                                              ; preds = %706
  %712 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 17
  %713 = load i32, ptr %712, align 4
  %714 = icmp eq i32 %713, -1
  br i1 %714, label %715, label %792

715:                                              ; preds = %711
  %716 = getelementptr inbounds %struct.dwc2_hsotg, ptr %702, i32 0, i32 3, i32 42
  %717 = load i8, ptr %716, align 1, !range !10
  %718 = icmp eq i8 %717, 0
  %719 = getelementptr inbounds %struct.dwc2_hsotg, ptr %702, i32 0, i32 11
  %720 = load i16, ptr %719, align 4
  %721 = zext i16 %720 to i32
  store i32 %721, ptr %712, align 4
  br i1 %718, label %757, label %722

722:                                              ; preds = %715
  %723 = getelementptr inbounds %struct.dwc2_hsotg, ptr %702, i32 0, i32 85, i32 5
  %724 = load i32, ptr %723, align 4
  %725 = icmp eq i32 %724, 3
  %726 = select i1 %725, i32 16383, i32 2047
  %727 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 15
  %728 = load i16, ptr %727, align 4
  %729 = zext i16 %728 to i32
  %730 = add nuw nsw i32 %729, %721
  %731 = icmp ugt i32 %730, %726
  %732 = select i1 %731, i32 %726, i32 131071
  %733 = and i32 %732, %730
  %734 = zext i1 %731 to i8
  store i32 %733, ptr %712, align 4
  %735 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 18
  store i8 %734, ptr %735, align 4
  %736 = getelementptr inbounds %struct.dwc2_hsotg, ptr %702, i32 0, i32 3, i32 21
  %737 = load i8, ptr %736, align 1, !range !10
  %738 = icmp eq i8 %737, 0
  br i1 %738, label %756, label %739

739:                                              ; preds = %722
  %740 = sub nsw i32 0, %729
  %741 = and i32 %733, %740
  store i32 %741, ptr %712, align 4
  %742 = load i32, ptr %723, align 4
  %743 = icmp eq i32 %742, 3
  %744 = select i1 %743, i32 16383, i32 2047
  %745 = add nuw nsw i32 %741, %729
  %746 = icmp ugt i32 %745, %744
  %747 = select i1 %746, i32 %744, i32 262143
  %748 = and i32 %747, %745
  %749 = zext i1 %746 to i8
  store i32 %748, ptr %712, align 4
  store i8 %749, ptr %735, align 4
  %750 = load i32, ptr %723, align 4
  %751 = icmp eq i32 %750, 3
  %752 = select i1 %751, i32 16383, i32 2047
  %753 = icmp eq i32 %748, 0
  %754 = add nsw i32 %748, -1
  %755 = select i1 %753, i32 %752, i32 %754
  store i32 %755, ptr %712, align 4
  br label %756

756:                                              ; preds = %739, %722
  tail call fastcc void @dwc2_gadget_start_isoc_ddma(ptr noundef %8) #14
  br label %904

757:                                              ; preds = %715
  %758 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 15
  %759 = load i16, ptr %758, align 4
  %760 = icmp ugt i16 %759, 1
  br i1 %760, label %761, label %792

761:                                              ; preds = %757
  %762 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 13
  %763 = load i8, ptr %762, align 2
  %764 = zext i8 %763 to i32
  %765 = shl nuw nsw i32 %764, 5
  %766 = add nuw nsw i32 %765, 2304
  %767 = getelementptr inbounds %struct.dwc2_hsotg, ptr %702, i32 0, i32 1
  %768 = load ptr, ptr %767, align 4
  %769 = getelementptr i8, ptr %768, i32 %766
  %770 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %769) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %771 = getelementptr inbounds %struct.dwc2_hsotg, ptr %702, i32 0, i32 34
  %772 = load i8, ptr %771, align 8, !range !10
  %773 = icmp eq i8 %772, 0
  %774 = tail call i32 @llvm.bswap.i32(i32 %770) #14
  %775 = select i1 %773, i32 %770, i32 %774
  %776 = load i32, ptr %712, align 4
  %777 = and i32 %776, 1
  %778 = icmp eq i32 %777, 0
  %779 = select i1 %778, i32 268435456, i32 536870912
  %780 = or i32 %779, %775
  %781 = load i8, ptr %762, align 2
  %782 = zext i8 %781 to i32
  %783 = shl nuw nsw i32 %782, 5
  %784 = add nuw nsw i32 %783, 2304
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %773, label %789, label %785

785:                                              ; preds = %761
  %786 = tail call i32 @llvm.bswap.i32(i32 %780) #14
  %787 = load ptr, ptr %767, align 4
  %788 = getelementptr i8, ptr %787, i32 %784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %788, i32 %786) #14, !srcloc !11
  br label %792

789:                                              ; preds = %761
  %790 = load ptr, ptr %767, align 4
  %791 = getelementptr i8, ptr %790, i32 %784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %791, i32 %780) #14, !srcloc !11
  br label %792

792:                                              ; preds = %789, %785, %757, %711
  %793 = getelementptr inbounds %struct.dwc2_hsotg, ptr %702, i32 0, i32 3, i32 42
  %794 = load i8, ptr %793, align 1, !range !10
  %795 = icmp eq i8 %794, 0
  br i1 %795, label %796, label %904

796:                                              ; preds = %792
  %797 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 13
  %798 = load i8, ptr %797, align 2
  %799 = zext i8 %798 to i32
  %800 = shl nuw nsw i32 %799, 5
  %801 = add nuw nsw i32 %800, 2304
  %802 = getelementptr inbounds %struct.dwc2_hsotg, ptr %702, i32 0, i32 1
  %803 = load ptr, ptr %802, align 4
  %804 = getelementptr i8, ptr %803, i32 %801
  %805 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %804) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %806 = getelementptr inbounds %struct.dwc2_hsotg, ptr %702, i32 0, i32 34
  %807 = load i8, ptr %806, align 8, !range !10
  %808 = icmp eq i8 %807, 0
  %809 = shl i32 %805, 24
  %810 = select i1 %808, i32 %805, i32 %809
  %811 = icmp sgt i32 %810, -1
  br i1 %811, label %813, label %812

812:                                              ; preds = %796
  tail call fastcc void @dwc2_hsotg_ep_stop_xfr(ptr noundef %702, ptr noundef %8) #14
  br label %831

813:                                              ; preds = %796
  %814 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 10
  %815 = load i16, ptr %814, align 2
  %816 = zext i16 %815 to i32
  %817 = shl nuw nsw i32 %816, 6
  %818 = or i32 %817, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %808, label %823, label %819

819:                                              ; preds = %813
  %820 = tail call i32 @llvm.bswap.i32(i32 %818) #14
  %821 = load ptr, ptr %802, align 4
  %822 = getelementptr i8, ptr %821, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %822, i32 %820) #14, !srcloc !11
  br label %826

823:                                              ; preds = %813
  %824 = load ptr, ptr %802, align 4
  %825 = getelementptr i8, ptr %824, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %825, i32 %818) #14, !srcloc !11
  br label %826

826:                                              ; preds = %823, %819
  %827 = tail call i32 @dwc2_hsotg_wait_bit_clear(ptr noundef %702, i32 noundef 16, i32 noundef 32, i32 noundef 100) #14
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %831, label %829

829:                                              ; preds = %826
  %830 = load ptr, ptr %702, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %830, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.dwc2_hsotg_txfifo_flush) #15
  br label %831

831:                                              ; preds = %829, %826, %812
  %832 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 18
  %833 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 1
  %834 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 15
  %835 = getelementptr inbounds %struct.dwc2_hsotg, ptr %702, i32 0, i32 11
  br label %836

836:                                              ; preds = %868, %831
  %837 = load ptr, ptr %701, align 4
  %838 = load i32, ptr %712, align 4
  %839 = getelementptr inbounds %struct.dwc2_hsotg, ptr %837, i32 0, i32 11
  %840 = load i16, ptr %839, align 4
  %841 = zext i16 %840 to i32
  %842 = load i8, ptr %832, align 4, !range !10
  %843 = icmp eq i8 %842, 0
  %844 = xor i1 %843, true
  %845 = icmp ugt i32 %838, %841
  %846 = select i1 %844, i1 true, i1 %845
  br i1 %846, label %847, label %857

847:                                              ; preds = %836
  %848 = getelementptr inbounds %struct.dwc2_hsotg, ptr %837, i32 0, i32 85, i32 5
  %849 = load i32, ptr %848, align 4
  %850 = icmp eq i32 %849, 3
  %851 = select i1 %850, i32 8191, i32 1023
  %852 = select i1 %843, i1 true, i1 %845
  %853 = xor i1 %852, true
  %854 = sub i32 %841, %838
  %855 = icmp ult i32 %854, %851
  %856 = select i1 %853, i1 %855, i1 false
  br i1 %856, label %857, label %892

857:                                              ; preds = %847, %836
  %858 = load volatile ptr, ptr %833, align 4
  %859 = icmp eq ptr %858, %833
  %860 = getelementptr i8, ptr %858, i32 -56
  %861 = icmp eq ptr %860, null
  %862 = or i1 %859, %861
  br i1 %862, label %868, label %863

863:                                              ; preds = %857
  %864 = getelementptr i8, ptr %858, i32 -12
  store i32 %838, ptr %864, align 4
  %865 = getelementptr i8, ptr %858, i32 -4
  store i32 0, ptr %865, align 4
  tail call fastcc void @dwc2_hsotg_complete_request(ptr noundef %702, ptr noundef %8, ptr noundef nonnull %860, i32 noundef -61) #14
  %866 = load ptr, ptr %701, align 4
  %867 = load i32, ptr %712, align 4
  br label %868

868:                                              ; preds = %863, %857
  %869 = phi i32 [ %867, %863 ], [ %838, %857 ]
  %870 = phi ptr [ %866, %863 ], [ %837, %857 ]
  %871 = getelementptr inbounds %struct.dwc2_hsotg, ptr %870, i32 0, i32 85, i32 5
  %872 = load i32, ptr %871, align 4
  %873 = icmp eq i32 %872, 3
  %874 = select i1 %873, i32 16383, i32 2047
  %875 = load i16, ptr %834, align 4
  %876 = zext i16 %875 to i32
  %877 = add i32 %869, %876
  %878 = icmp ugt i32 %877, %874
  %879 = select i1 %878, i32 %874, i32 -1
  %880 = and i32 %879, %877
  %881 = zext i1 %878 to i8
  store i32 %880, ptr %712, align 4
  store i8 %881, ptr %832, align 4
  %882 = load ptr, ptr %802, align 4
  %883 = getelementptr i8, ptr %882, i32 2056
  %884 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %883) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %885 = load i8, ptr %806, align 8, !range !10
  %886 = icmp eq i8 %885, 0
  %887 = tail call i32 @llvm.bswap.i32(i32 %884) #14
  %888 = select i1 %886, i32 %884, i32 %887
  %889 = lshr i32 %888, 8
  %890 = trunc i32 %889 to i16
  %891 = and i16 %890, 16383
  store i16 %891, ptr %835, align 4
  br label %836

892:                                              ; preds = %847
  %893 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 3
  %894 = load ptr, ptr %893, align 4
  %895 = icmp eq ptr %894, null
  br i1 %895, label %896, label %904

896:                                              ; preds = %892
  %897 = load volatile ptr, ptr %833, align 4
  %898 = icmp eq ptr %897, %833
  br i1 %898, label %904, label %899

899:                                              ; preds = %896
  %900 = load volatile ptr, ptr %833, align 4
  %901 = icmp eq ptr %900, %833
  %902 = getelementptr i8, ptr %900, i32 -56
  %903 = select i1 %901, ptr null, ptr %902
  tail call fastcc void @dwc2_hsotg_start_req(ptr noundef %837, ptr noundef %8, ptr noundef %903, i1 noundef zeroext false) #14
  br label %904

904:                                              ; preds = %899, %896, %892, %792, %756, %706, %700, %697
  %905 = and i32 %78, 8
  %906 = icmp eq i32 %905, 0
  br i1 %906, label %917, label %907

907:                                              ; preds = %904
  %908 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 41
  %909 = load i8, ptr %908, align 8, !range !10
  %910 = icmp ne i8 %909, 0
  %911 = and i1 %56, %910
  br i1 %911, label %912, label %917

912:                                              ; preds = %907
  br i1 %4, label %916, label %913

913:                                              ; preds = %912
  %914 = load i1, ptr @dwc2_hsotg_epint.__already_done, align 1
  br i1 %914, label %917, label %915, !prof !18

915:                                              ; preds = %913
  store i1 true, ptr @dwc2_hsotg_epint.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3127, i32 noundef 9, ptr noundef null) #14
  br label %917

916:                                              ; preds = %912
  tail call fastcc void @dwc2_hsotg_handle_outdone(ptr noundef %0, i32 noundef 0)
  br label %917

917:                                              ; preds = %916, %915, %913, %907, %904
  %918 = and i32 %78, 32
  %919 = icmp eq i32 %918, 0
  br i1 %919, label %953, label %920

920:                                              ; preds = %917
  %921 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 76
  %922 = load i32, ptr %921, align 4
  %923 = icmp eq i32 %922, 2
  br i1 %923, label %924, label %953

924:                                              ; preds = %920
  %925 = load i8, ptr %62, align 1, !range !10
  %926 = icmp eq i8 %925, 0
  br i1 %926, label %953, label %927

927:                                              ; preds = %924
  %928 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 77
  %929 = load i8, ptr %928, align 8
  %930 = and i8 %929, 1
  %931 = icmp eq i8 %930, 0
  br i1 %931, label %932, label %937

932:                                              ; preds = %927
  %933 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 88
  %934 = load ptr, ptr %933, align 4
  %935 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %934, i32 0, i32 11
  store i8 1, ptr %935, align 4
  store i32 3, ptr %921, align 4
  %936 = load ptr, ptr %933, align 4
  tail call fastcc void @dwc2_hsotg_program_zlp(ptr noundef %0, ptr noundef %936) #14
  br label %953

937:                                              ; preds = %927
  %938 = load ptr, ptr %13, align 4
  %939 = getelementptr i8, ptr %938, i32 2304
  %940 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %939) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %941 = load i8, ptr %17, align 8, !range !10
  %942 = icmp eq i8 %941, 0
  %943 = tail call i32 @llvm.bswap.i32(i32 %940) #14
  %944 = select i1 %942, i32 %940, i32 %943
  %945 = or i32 %944, 67108864
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %942, label %950, label %946

946:                                              ; preds = %937
  %947 = tail call i32 @llvm.bswap.i32(i32 %945) #14
  %948 = load ptr, ptr %13, align 4
  %949 = getelementptr i8, ptr %948, i32 2304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %949, i32 %947) #14, !srcloc !11
  br label %953

950:                                              ; preds = %937
  %951 = load ptr, ptr %13, align 4
  %952 = getelementptr i8, ptr %951, i32 2304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %952, i32 %945) #14, !srcloc !11
  br label %953

953:                                              ; preds = %950, %946, %932, %924, %920, %917
  %954 = and i32 %78, 512
  %955 = icmp eq i32 %954, 0
  br i1 %955, label %977, label %956

956:                                              ; preds = %953
  %957 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 16
  %958 = load i8, ptr %957, align 2
  %959 = and i8 %958, 4
  %960 = icmp eq i8 %959, 0
  br i1 %960, label %977, label %961

961:                                              ; preds = %956
  %962 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 2
  %963 = load ptr, ptr %962, align 4
  %964 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 11
  %965 = load i8, ptr %964, align 4
  %966 = icmp eq i8 %965, 0
  br i1 %966, label %967, label %968

967:                                              ; preds = %961
  tail call void @dwc2_flush_rx_fifo(ptr noundef %963) #14
  br label %968

968:                                              ; preds = %967, %961
  %969 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 1
  %970 = load volatile ptr, ptr %969, align 4
  %971 = icmp eq ptr %970, %969
  %972 = getelementptr i8, ptr %970, i32 -56
  %973 = select i1 %971, ptr null, ptr %972
  tail call fastcc void @dwc2_hsotg_complete_request(ptr noundef %963, ptr noundef %8, ptr noundef %973, i32 noundef 0) #14
  %974 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 17
  store i32 -1, ptr %974, align 4
  %975 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 22
  store i32 0, ptr %975, align 4
  %976 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 23
  store i32 0, ptr %976, align 4
  br label %977

977:                                              ; preds = %968, %956, %953
  br i1 %4, label %1000, label %978

978:                                              ; preds = %977
  %979 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %8, i32 0, i32 16
  %980 = load i8, ptr %979, align 2
  %981 = and i8 %980, 4
  %982 = icmp eq i8 %981, 0
  br i1 %982, label %983, label %1000

983:                                              ; preds = %978
  br i1 %919, label %986, label %984

984:                                              ; preds = %983
  %985 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %985, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.dwc2_hsotg_epint, i32 noundef %1) #15
  br label %986

986:                                              ; preds = %984, %983
  %987 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 69
  %988 = load i8, ptr %987, align 4
  %989 = and i8 %988, 1
  %990 = icmp eq i8 %989, 0
  %991 = and i32 %78, 128
  %992 = icmp eq i32 %991, 0
  %993 = select i1 %990, i1 true, i1 %992
  br i1 %993, label %1000, label %994

994:                                              ; preds = %986
  %995 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 41
  %996 = load i8, ptr %995, align 8, !range !10
  %997 = icmp eq i8 %996, 0
  br i1 %997, label %998, label %1000

998:                                              ; preds = %994
  %999 = tail call fastcc i32 @dwc2_hsotg_trytx(ptr noundef %0, ptr noundef nonnull %8)
  br label %1000

1000:                                             ; preds = %998, %994, %986, %978, %977, %52
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_speed_string(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_hsotg_set_ep_maxpacket(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #3 {
  %6 = icmp eq i32 %4, 0
  %7 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 87, i32 %1
  %8 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 88, i32 %1
  %9 = select i1 %6, ptr %8, ptr %7
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %92, label %12

12:                                               ; preds = %5
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %12
  %15 = add i32 %2, -8
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 29) #14
  %17 = icmp ult i32 %16, 8
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = trunc i32 %16 to i8
  %20 = lshr i8 -117, %19
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds [8 x i32], ptr @switch.table.dwc2_hsotg_set_ep_maxpacket, i32 0, i32 %16
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.usb_ep, ptr %10, i32 0, i32 7
  %27 = load i56, ptr %26, align 2
  %28 = and i32 %2, 65535
  %29 = zext i32 %28 to i56
  %30 = and i56 %27, -65536
  %31 = or i56 %30, %29
  store i56 %31, ptr %26, align 2
  %32 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %10, i32 0, i32 14
  store i8 1, ptr %32, align 1
  br label %46

33:                                               ; preds = %18, %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 2563, i32 noundef 9, ptr noundef null) #14
  br label %89

34:                                               ; preds = %12
  %35 = icmp ugt i32 %2, 1024
  br i1 %35, label %89, label %36

36:                                               ; preds = %34
  %37 = trunc i32 %3 to i8
  %38 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %10, i32 0, i32 14
  store i8 %37, ptr %38, align 1
  %39 = icmp ugt i32 %3, 3
  br i1 %39, label %89, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.usb_ep, ptr %10, i32 0, i32 7
  %42 = load i56, ptr %41, align 2
  %43 = zext i32 %2 to i56
  %44 = and i56 %42, -65536
  %45 = or i56 %44, %43
  store i56 %45, ptr %41, align 2
  br label %46

46:                                               ; preds = %40, %23
  %47 = phi i32 [ %2, %40 ], [ %25, %23 ]
  %48 = shl i32 %1, 5
  br i1 %6, label %69, label %49

49:                                               ; preds = %46
  %50 = add i32 %48, 2304
  %51 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i8, ptr %52, i32 %50
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %55 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %56 = load i8, ptr %55, align 8, !range !10
  %57 = icmp eq i8 %56, 0
  %58 = tail call i32 @llvm.bswap.i32(i32 %54) #14
  %59 = select i1 %57, i32 %54, i32 %58
  %60 = and i32 %59, -2048
  %61 = or i32 %60, %47
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %57, label %66, label %62

62:                                               ; preds = %49
  %63 = tail call i32 @llvm.bswap.i32(i32 %61) #14
  %64 = load ptr, ptr %51, align 4
  %65 = getelementptr i8, ptr %64, i32 %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #14, !srcloc !11
  br label %92

66:                                               ; preds = %49
  %67 = load ptr, ptr %51, align 4
  %68 = getelementptr i8, ptr %67, i32 %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %61) #14, !srcloc !11
  br label %92

69:                                               ; preds = %46
  %70 = add i32 %48, 2816
  %71 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr i8, ptr %72, i32 %70
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %75 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %76 = load i8, ptr %75, align 8, !range !10
  %77 = icmp eq i8 %76, 0
  %78 = tail call i32 @llvm.bswap.i32(i32 %74) #14
  %79 = select i1 %77, i32 %74, i32 %78
  %80 = and i32 %79, -2048
  %81 = or i32 %80, %47
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %77, label %86, label %82

82:                                               ; preds = %69
  %83 = tail call i32 @llvm.bswap.i32(i32 %81) #14
  %84 = load ptr, ptr %71, align 4
  %85 = getelementptr i8, ptr %84, i32 %70
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %83) #14, !srcloc !11
  br label %92

86:                                               ; preds = %69
  %87 = load ptr, ptr %71, align 4
  %88 = getelementptr i8, ptr %87, i32 %70
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %81) #14, !srcloc !11
  br label %92

89:                                               ; preds = %36, %34, %33
  %90 = phi i32 [ -1, %33 ], [ %2, %34 ], [ %2, %36 ]
  %91 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.51, i32 noundef %1, i32 noundef %90) #15
  br label %92

92:                                               ; preds = %89, %86, %82, %66, %62, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_hsotg_handle_outdone(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = shl i32 %1, 5
  %4 = add i32 %3, 2832
  %5 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 %4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %9 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %10 = load i8, ptr %9, align 8, !range !10
  %11 = icmp eq i8 %10, 0
  %12 = tail call i32 @llvm.bswap.i32(i32 %8) #14
  %13 = select i1 %11, i32 %8, i32 %12
  %14 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 88, i32 %1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = and i32 %13, 524287
  %19 = icmp eq ptr %17, null
  br i1 %19, label %183, label %20

20:                                               ; preds = %2
  %21 = icmp eq i32 %1, 0
  br i1 %21, label %22, label %52

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 76
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %26, label %52

26:                                               ; preds = %22
  tail call fastcc void @dwc2_hsotg_complete_request(ptr noundef %0, ptr noundef %15, ptr noundef nonnull %17, i32 noundef 0)
  %27 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 73
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.usb_request, ptr %28, i32 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, -262145
  store i32 %31, ptr %29, align 4
  %32 = getelementptr inbounds %struct.usb_request, ptr %28, i32 0, i32 1
  store i32 8, ptr %32, align 4
  %33 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 75
  %34 = load ptr, ptr %33, align 8
  store ptr %34, ptr %28, align 4
  %35 = getelementptr inbounds %struct.usb_request, ptr %28, i32 0, i32 7
  store ptr @dwc2_hsotg_complete_setup, ptr %35, align 4
  %36 = getelementptr inbounds %struct.dwc2_hsotg_req, ptr %28, i32 0, i32 1
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %39, label %183

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 88
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %41, i32 0, i32 11
  store i8 0, ptr %42, align 4
  %43 = load ptr, ptr %40, align 4
  %44 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %43, i32 0, i32 16
  %45 = load i8, ptr %44, align 2
  %46 = and i8 %45, -9
  store i8 %46, ptr %44, align 2
  store i32 0, ptr %23, align 4
  %47 = load ptr, ptr %40, align 4
  %48 = tail call fastcc i32 @dwc2_hsotg_ep_queue(ptr noundef %47, ptr noundef %28) #14
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %183

50:                                               ; preds = %39
  %51 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.dwc2_hsotg_enqueue_setup, i32 noundef %48) #15
  br label %183

52:                                               ; preds = %22, %20
  %53 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 42
  %54 = load i8, ptr %53, align 1, !range !10
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %111, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.usb_ep, ptr %15, i32 0, i32 9
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %15, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %15, i32 0, i32 20
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.usb_ep, ptr %15, i32 0, i32 7
  %64 = load i56, ptr %63, align 2
  %65 = trunc i56 %64 to i32
  %66 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %15, i32 0, i32 11
  %67 = load i8, ptr %66, align 4
  %68 = icmp eq ptr %62, null
  br i1 %68, label %111, label %69

69:                                               ; preds = %56
  %70 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %15, i32 0, i32 13
  %71 = load i8, ptr %70, align 2
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %58, i32 0, i32 3
  %75 = load i8, ptr %74, align 1
  %76 = and i8 %75, 3
  %77 = icmp ne i8 %76, 3
  %78 = icmp ne i8 %67, 0
  %79 = select i1 %77, i1 true, i1 %78
  %80 = and i32 %65, 3
  %81 = icmp eq i32 %80, 0
  %82 = select i1 %79, i1 true, i1 %81
  %83 = or i32 %65, -4
  %84 = select i1 %82, i32 0, i32 %83
  br label %85

85:                                               ; preds = %73, %69
  %86 = phi i32 [ 0, %69 ], [ %84, %73 ]
  %87 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %15, i32 0, i32 21
  %88 = load i8, ptr %87, align 4
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %111, label %90

90:                                               ; preds = %105, %85
  %91 = phi i32 [ %107, %105 ], [ 0, %85 ]
  %92 = phi ptr [ %106, %105 ], [ %62, %85 ]
  %93 = phi i32 [ %97, %105 ], [ 0, %85 ]
  %94 = load i32, ptr %92, align 1
  %95 = and i32 %94, 65535
  %96 = add i32 %93, %86
  %97 = add i32 %96, %95
  %98 = and i32 %94, 805306368
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %90
  %101 = load ptr, ptr %60, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.58, i32 noundef %91, i32 noundef %98) #15
  br label %102

102:                                              ; preds = %100, %90
  %103 = and i32 %94, 134217728
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = getelementptr %struct.dwc2_dma_desc, ptr %92, i32 1
  %107 = add nuw nsw i32 %91, 1
  %108 = load i8, ptr %87, align 4
  %109 = zext i8 %108 to i32
  %110 = icmp ult i32 %107, %109
  br i1 %110, label %90, label %111

111:                                              ; preds = %105, %102, %85, %56, %52
  %112 = phi i32 [ %18, %52 ], [ -22, %56 ], [ 0, %85 ], [ %97, %102 ], [ %97, %105 ]
  %113 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 41
  %114 = load i8, ptr %113, align 8, !range !10
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.usb_request, ptr %17, i32 0, i32 12
  %118 = load i32, ptr %117, align 4
  br label %127

119:                                              ; preds = %111
  %120 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %15, i32 0, i32 6
  %121 = load i32, ptr %120, align 4
  %122 = sub i32 %121, %112
  %123 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %15, i32 0, i32 7
  %124 = load i32, ptr %123, align 4
  %125 = add i32 %122, %124
  %126 = getelementptr inbounds %struct.usb_request, ptr %17, i32 0, i32 12
  store i32 %125, ptr %126, align 4
  br label %127

127:                                              ; preds = %119, %116
  %128 = phi i32 [ %118, %116 ], [ %125, %119 ]
  %129 = getelementptr inbounds %struct.usb_request, ptr %17, i32 0, i32 1
  %130 = load i32, ptr %129, align 4
  %131 = icmp ult i32 %128, %130
  %132 = icmp eq i32 %112, 0
  %133 = select i1 %131, i1 %132, i1 false
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  tail call fastcc void @dwc2_hsotg_start_req(ptr noundef %0, ptr noundef %15, ptr noundef nonnull %17, i1 noundef zeroext true)
  br label %183

135:                                              ; preds = %127
  %136 = load i8, ptr %53, align 1, !range !10
  %137 = icmp eq i8 %136, 0
  %138 = and i1 %21, %137
  br i1 %138, label %139, label %154

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 76
  %141 = load i32, ptr %140, align 4
  %142 = icmp eq i32 %141, 2
  br i1 %142, label %143, label %157

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 77
  %145 = load i8, ptr %144, align 8
  %146 = and i8 %145, 1
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 88
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %150, i32 0, i32 11
  store i8 1, ptr %151, align 4
  store i32 3, ptr %140, align 4
  %152 = load ptr, ptr %149, align 4
  tail call fastcc void @dwc2_hsotg_program_zlp(ptr noundef %0, ptr noundef %152) #14
  %153 = load i8, ptr %53, align 1
  br label %154

154:                                              ; preds = %148, %135
  %155 = phi i8 [ %136, %135 ], [ %153, %148 ]
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %182

157:                                              ; preds = %154, %143, %139
  %158 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %15, i32 0, i32 16
  %159 = load i8, ptr %158, align 2
  %160 = and i8 %159, 4
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %182, label %162

162:                                              ; preds = %157
  %163 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %15, i32 0, i32 17
  %164 = load i32, ptr %163, align 4
  %165 = getelementptr inbounds %struct.usb_request, ptr %17, i32 0, i32 10
  store i32 %164, ptr %165, align 4
  %166 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %15, i32 0, i32 2
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.dwc2_hsotg, ptr %167, i32 0, i32 85, i32 5
  %169 = load i32, ptr %168, align 4
  %170 = icmp eq i32 %169, 3
  %171 = select i1 %170, i32 16383, i32 2047
  %172 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %15, i32 0, i32 15
  %173 = load i16, ptr %172, align 4
  %174 = zext i16 %173 to i32
  %175 = load i32, ptr %163, align 4
  %176 = add i32 %175, %174
  %177 = icmp ugt i32 %176, %171
  %178 = select i1 %177, i32 %171, i32 -1
  %179 = and i32 %178, %176
  %180 = zext i1 %177 to i8
  store i32 %179, ptr %163, align 4
  %181 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %15, i32 0, i32 18
  store i8 %180, ptr %181, align 4
  br label %182

182:                                              ; preds = %162, %157, %154
  tail call fastcc void @dwc2_hsotg_complete_request(ptr noundef %0, ptr noundef %15, ptr noundef nonnull %17, i32 noundef 0)
  br label %183

183:                                              ; preds = %182, %134, %50, %39, %26, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwc2_hsotg_trytx(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 11
  %6 = load i8, ptr %5, align 4
  %7 = icmp ne i8 %6, 0
  %8 = icmp ne ptr %4, null
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %40, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 13
  %12 = load i8, ptr %11, align 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %48, label %14

14:                                               ; preds = %10
  %15 = zext i8 %12 to i32
  %16 = shl nuw i32 1, %15
  %17 = icmp eq i8 %6, 0
  %18 = shl i32 %16, 16
  %19 = select i1 %17, i32 %18, i32 %16
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !16
  %21 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 2076
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %25 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %26 = load i8, ptr %25, align 8, !range !10
  %27 = icmp eq i8 %26, 0
  %28 = tail call i32 @llvm.bswap.i32(i32 %24) #14
  %29 = select i1 %27, i32 %24, i32 %28
  %30 = xor i32 %19, -1
  %31 = and i32 %29, %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %27, label %36, label %32

32:                                               ; preds = %14
  %33 = tail call i32 @llvm.bswap.i32(i32 %31) #14
  %34 = load ptr, ptr %21, align 4
  %35 = getelementptr i8, ptr %34, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #14, !srcloc !11
  br label %39

36:                                               ; preds = %14
  %37 = load ptr, ptr %21, align 4
  %38 = getelementptr i8, ptr %37, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %31) #14, !srcloc !11
  br label %39

39:                                               ; preds = %36, %32
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #14, !srcloc !17
  br label %48

40:                                               ; preds = %2
  %41 = getelementptr inbounds %struct.usb_request, ptr %4, i32 0, i32 12
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.usb_request, ptr %4, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = icmp ult i32 %42, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = tail call fastcc i32 @dwc2_hsotg_write_fifo(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4)
  br label %48

48:                                               ; preds = %46, %40, %39, %10
  %49 = phi i32 [ %47, %46 ], [ 0, %39 ], [ 0, %10 ], [ 0, %40 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_hsotg_program_zlp(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #3 {
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 13
  %5 = load i8, ptr %4, align 2
  %6 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 11
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  %9 = zext i8 %5 to i32
  %10 = shl nuw nsw i32 %9, 5
  %11 = select i1 %8, i32 2816, i32 2304
  %12 = add nuw nsw i32 %11, %10
  %13 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 42
  %14 = load i8, ptr %13, align 1, !range !10
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %80, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 19
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i8 %5, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 76
  %22 = load i32, ptr %21, align 4
  switch i32 %22, label %41 [
    i32 0, label %23
    i32 4, label %23
    i32 1, label %29
    i32 3, label %29
    i32 2, label %35
  ]

23:                                               ; preds = %20, %20
  %24 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 80
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 20
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 79
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %17, align 4
  br label %43

29:                                               ; preds = %20, %20
  %30 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 82
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 20
  store ptr %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 81
  %34 = load i32, ptr %33, align 4
  store i32 %34, ptr %17, align 4
  br label %43

35:                                               ; preds = %20
  %36 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 84
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 20
  store ptr %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 83
  %40 = load i32, ptr %39, align 4
  store i32 %40, ptr %17, align 4
  br label %43

41:                                               ; preds = %20
  %42 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.32, i32 noundef %22) #15
  br label %43

43:                                               ; preds = %41, %35, %29, %23, %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %44 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 20
  %45 = load ptr, ptr %44, align 4
  store ptr %45, ptr %3, align 4
  %46 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.usb_request, ptr %47, i32 0, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49, %43
  call fastcc void @dwc2_gadget_fill_nonisoc_xfer_ddma_one(ptr noundef %1, ptr noundef nonnull %3, i32 noundef %18, i32 noundef 0, i1 noundef zeroext true) #14
  br label %79

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.usb_request, ptr %47, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %1, i32 0, i32 21
  br label %58

58:                                               ; preds = %58, %54
  %59 = phi i8 [ 0, %54 ], [ %73, %58 ]
  %60 = phi i32 [ 0, %54 ], [ %74, %58 ]
  %61 = phi ptr [ %56, %54 ], [ %75, %58 ]
  %62 = getelementptr inbounds %struct.scatterlist, ptr %61, i32 0, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.scatterlist, ptr %61, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, %63
  %67 = getelementptr inbounds %struct.scatterlist, ptr %61, i32 0, i32 4
  %68 = load i32, ptr %67, align 4
  %69 = load i32, ptr %61, align 4
  %70 = and i32 %69, 2
  %71 = icmp ne i32 %70, 0
  call fastcc void @dwc2_gadget_fill_nonisoc_xfer_ddma_one(ptr noundef %1, ptr noundef nonnull %3, i32 noundef %66, i32 noundef %68, i1 noundef zeroext %71) #14
  %72 = load i8, ptr %57, align 4
  %73 = add i8 %72, %59
  %74 = add nuw i32 %60, 1
  %75 = tail call ptr @sg_next(ptr noundef %61) #14
  %76 = load i32, ptr %50, align 4
  %77 = icmp ult i32 %74, %76
  br i1 %77, label %58, label %78

78:                                               ; preds = %58
  store i8 %73, ptr %57, align 4
  br label %79

79:                                               ; preds = %78, %53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  br label %91

80:                                               ; preds = %2
  %81 = select i1 %8, i32 2832, i32 2320
  %82 = add nuw nsw i32 %81, %10
  %83 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %84 = load i8, ptr %83, align 8, !range !10
  %85 = icmp eq i8 %84, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  %86 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr i8, ptr %87, i32 %82
  br i1 %85, label %90, label %89

89:                                               ; preds = %80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 2080) #14, !srcloc !11
  br label %91

90:                                               ; preds = %80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 537395200) #14, !srcloc !11
  br label %91

91:                                               ; preds = %90, %89, %79
  %92 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr i8, ptr %93, i32 %12
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %96 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %97 = load i8, ptr %96, align 8, !range !10
  %98 = icmp eq i8 %97, 0
  %99 = tail call i32 @llvm.bswap.i32(i32 %95) #14
  %100 = select i1 %98, i32 %95, i32 %99
  %101 = or i32 %100, -2080342016
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %98, label %106, label %102

102:                                              ; preds = %91
  %103 = tail call i32 @llvm.bswap.i32(i32 %101) #14
  %104 = load ptr, ptr %92, align 4
  %105 = getelementptr i8, ptr %104, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %103) #14, !srcloc !11
  br label %109

106:                                              ; preds = %91
  %107 = load ptr, ptr %92, align 4
  %108 = getelementptr i8, ptr %107, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %101) #14, !srcloc !11
  br label %109

109:                                              ; preds = %106, %102
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_gadget_start_isoc_ddma(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 13
  %5 = load i8, ptr %4, align 2
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 1
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 20
  br label %14

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 17
  store i32 -1, ptr %13, align 4
  br label %84

14:                                               ; preds = %14, %10
  %15 = phi i32 [ 0, %10 ], [ %18, %14 ]
  %16 = load ptr, ptr %11, align 4
  %17 = getelementptr %struct.dwc2_dma_desc, ptr %16, i32 %15
  store i32 -1073741824, ptr %17, align 1
  %18 = add nuw nsw i32 %15, 1
  %19 = icmp eq i32 %18, 256
  br i1 %19, label %20, label %14

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 22
  store i32 0, ptr %21, align 4
  %22 = load ptr, ptr %7, align 4
  br label %23

23:                                               ; preds = %36, %20
  %24 = phi ptr [ %22, %20 ], [ %25, %36 ]
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %24, %7
  br i1 %26, label %43, label %27

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %24, i32 -48
  %29 = getelementptr i8, ptr %24, i32 -40
  %30 = load i32, ptr %29, align 4
  switch i32 %30, label %31 [
    i32 0, label %36
    i32 1, label %32
  ], !prof !20

31:                                               ; preds = %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1012, i32 noundef 9, ptr noundef null) #14
  br label %32

32:                                               ; preds = %31, %27
  %33 = getelementptr i8, ptr %24, i32 -44
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.scatterlist, ptr %34, i32 0, i32 3
  br label %36

36:                                               ; preds = %32, %27
  %37 = phi ptr [ %35, %32 ], [ %28, %27 ]
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr i8, ptr %24, i32 -52
  %40 = load i32, ptr %39, align 4
  %41 = tail call fastcc i32 @dwc2_gadget_fill_isoc_desc(ptr noundef %0, i32 noundef %38, i32 noundef %40)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %23, label %43

43:                                               ; preds = %36, %23
  %44 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 23
  store i32 0, ptr %44, align 4
  %45 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 11
  %46 = load i8, ptr %45, align 4
  %47 = icmp eq i8 %46, 0
  %48 = shl nuw nsw i32 %6, 5
  %49 = select i1 %47, i32 2816, i32 2304
  %50 = add nuw nsw i32 %49, %48
  %51 = select i1 %47, i32 2836, i32 2324
  %52 = add nuw nsw i32 %51, %48
  %53 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 19
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 34
  %56 = load i8, ptr %55, align 8, !range !10
  %57 = icmp eq i8 %56, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %57, label %63, label %58

58:                                               ; preds = %43
  %59 = tail call i32 @llvm.bswap.i32(i32 %54) #14
  %60 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr i8, ptr %61, i32 %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %59) #14, !srcloc !11
  br label %67

63:                                               ; preds = %43
  %64 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr i8, ptr %65, i32 %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %54) #14, !srcloc !11
  br label %67

67:                                               ; preds = %63, %58
  %68 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr i8, ptr %69, i32 %50
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %72 = load i8, ptr %55, align 8, !range !10
  %73 = icmp eq i8 %72, 0
  %74 = tail call i32 @llvm.bswap.i32(i32 %71) #14
  %75 = select i1 %73, i32 %71, i32 %74
  %76 = or i32 %75, -2080374784
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %73, label %81, label %77

77:                                               ; preds = %67
  %78 = tail call i32 @llvm.bswap.i32(i32 %76) #14
  %79 = load ptr, ptr %68, align 4
  %80 = getelementptr i8, ptr %79, i32 %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %78) #14, !srcloc !11
  br label %84

81:                                               ; preds = %67
  %82 = load ptr, ptr %68, align 4
  %83 = getelementptr i8, ptr %82, i32 %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %76) #14, !srcloc !11
  br label %84

84:                                               ; preds = %81, %77, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_flush_rx_fifo(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_hsotg_rx_data(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 88, i32 %1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %3
  %10 = shl i32 %1, 5
  %11 = add i32 %10, 2816
  %12 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 %11
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %16 = icmp sgt i32 %2, 0
  br i1 %16, label %17, label %67

17:                                               ; preds = %9
  %18 = shl i32 %1, 12
  %19 = add i32 %18, 4096
  br label %20

20:                                               ; preds = %20, %17
  %21 = phi i32 [ 0, %17 ], [ %25, %20 ]
  %22 = load ptr, ptr %12, align 4
  %23 = getelementptr i8, ptr %22, i32 %19
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %25 = add i32 %21, 4
  %26 = icmp slt i32 %25, %2
  br i1 %26, label %20, label %67

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.usb_request, ptr %7, i32 0, i32 12
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.usb_request, ptr %7, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = sub i32 %31, %29
  %33 = icmp slt i32 %32, %2
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i1, ptr @dwc2_hsotg_rx_data.__already_done, align 1
  br i1 %35, label %37, label %36, !prof !18

36:                                               ; preds = %34
  store i1 true, ptr @dwc2_hsotg_rx_data.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 2297, i32 noundef 9, ptr noundef null) #14
  br label %37

37:                                               ; preds = %36, %34, %27
  %38 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %5, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, %2
  store i32 %40, ptr %38, align 4
  %41 = load i32, ptr %28, align 4
  %42 = add i32 %41, %2
  store i32 %42, ptr %28, align 4
  %43 = shl i32 %1, 12
  %44 = add i32 %43, 4096
  %45 = add i32 %2, 6
  %46 = icmp ult i32 %45, 7
  br i1 %46, label %67, label %47

47:                                               ; preds = %37
  %48 = add nuw i32 %2, 3
  %49 = sdiv i32 %48, 4
  %50 = load ptr, ptr %7, align 4
  %51 = getelementptr i8, ptr %50, i32 %29
  %52 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %53 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  br label %54

54:                                               ; preds = %54, %47
  %55 = phi ptr [ %64, %54 ], [ %51, %47 ]
  %56 = phi i32 [ %65, %54 ], [ %49, %47 ]
  %57 = load ptr, ptr %52, align 4
  %58 = getelementptr i8, ptr %57, i32 %44
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %60 = load i8, ptr %53, align 8, !range !10
  %61 = icmp eq i8 %60, 0
  %62 = tail call i32 @llvm.bswap.i32(i32 %59) #14
  %63 = select i1 %61, i32 %59, i32 %62
  %64 = getelementptr i32, ptr %55, i32 1
  store i32 %63, ptr %55, align 4
  %65 = add i32 %56, -1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %54

67:                                               ; preds = %54, %37, %20, %9
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc2_hsotg_ep_enable(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 13
  %6 = load i8, ptr %5, align 2
  %7 = zext i8 %6 to i32
  %8 = icmp eq i8 %6, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.dwc2_hsotg_ep_enable) #15
  br label %310

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = icmp slt i8 %13, 0
  %15 = lshr i8 %13, 7
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 11
  %18 = load i8, ptr %17, align 4
  %19 = icmp eq i8 %15, %18
  br i1 %19, label %22, label %20

20:                                               ; preds = %11
  %21 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.dwc2_hsotg_ep_enable) #15
  br label %310

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 3
  %24 = load i8, ptr %23, align 1
  %25 = and i8 %24, 3
  %26 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 4
  %27 = load i16, ptr %26, align 1
  %28 = and i16 %27, 2047
  %29 = zext i16 %28 to i32
  %30 = lshr i16 %27, 11
  %31 = and i16 %30, 3
  %32 = add nuw nsw i16 %31, 1
  %33 = zext i16 %32 to i32
  %34 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 3, i32 42
  %35 = load i8, ptr %34, align 1, !range !10
  %36 = icmp ne i8 %35, 0
  %37 = zext i8 %25 to i32
  %38 = icmp eq i8 %25, 1
  %39 = select i1 %36, i1 %38, i1 false
  %40 = select i1 %39, i1 %14, i1 false
  br i1 %40, label %41, label %47

41:                                               ; preds = %22
  %42 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 5
  %43 = load i8, ptr %42, align 1
  %44 = icmp ugt i8 %43, 10
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.dwc2_hsotg_ep_enable) #15
  br label %310

47:                                               ; preds = %41, %22
  %48 = xor i1 %14, true
  %49 = select i1 %39, i1 %48, i1 false
  %50 = icmp ne i16 %31, 0
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.dwc2_hsotg_ep_enable) #15
  br label %310

54:                                               ; preds = %47
  %55 = shl nuw nsw i32 %7, 5
  %56 = select i1 %14, i32 2304, i32 2816
  %57 = add nuw nsw i32 %56, %55
  %58 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 %57
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %62 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 34
  %63 = load i8, ptr %62, align 8, !range !10
  %64 = icmp eq i8 %63, 0
  %65 = tail call i32 @llvm.bswap.i32(i32 %61) #14
  %66 = select i1 %64, i32 %61, i32 %65
  %67 = load i8, ptr %34, align 1, !range !10
  %68 = icmp ne i8 %67, 0
  %69 = select i1 %68, i1 %38, i1 false
  %70 = select i1 %69, i32 2048, i32 512
  br i1 %68, label %71, label %80

71:                                               ; preds = %54
  %72 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 20
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load ptr, ptr %4, align 8
  %77 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 19
  %78 = tail call ptr @dmam_alloc_attrs(ptr noundef %76, i32 noundef %70, ptr noundef %77, i32 noundef 2592, i32 noundef 0) #14
  store ptr %78, ptr %72, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %299, label %80

80:                                               ; preds = %75, %71, %54
  %81 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 18
  %82 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %81) #14
  %83 = and i32 %66, -821248
  %84 = or i32 %83, %29
  %85 = or i32 %84, 32768
  %86 = load i8, ptr %5, align 2
  %87 = zext i8 %86 to i32
  tail call fastcc void @dwc2_hsotg_set_ep_maxpacket(ptr noundef %4, i32 noundef %87, i32 noundef %29, i32 noundef %33, i32 noundef %16)
  %88 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 16
  %89 = load i8, ptr %88, align 2
  %90 = and i8 %89, -24
  store i8 %90, ptr %88, align 2
  %91 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 5
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %92 to i16
  %94 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 15
  store i16 %93, ptr %94, align 4
  switch i32 %37, label %157 [
    i32 1, label %95
    i32 2, label %140
    i32 3, label %142
    i32 0, label %158
  ]

95:                                               ; preds = %80
  %96 = or i8 %90, 4
  store i8 %96, ptr %88, align 2
  %97 = load i8, ptr %91, align 1
  %98 = zext i8 %97 to i32
  %99 = add nsw i32 %98, -1
  %100 = shl nuw i32 1, %99
  %101 = trunc i32 %100 to i16
  store i16 %101, ptr %94, align 4
  %102 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 17
  store i32 -1, ptr %102, align 4
  %103 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 22
  store i32 0, ptr %103, align 4
  %104 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 23
  store i32 0, ptr %104, align 4
  br i1 %14, label %105, label %123

105:                                              ; preds = %95
  %106 = or i32 %84, 268730368
  %107 = or i8 %90, 6
  store i8 %107, ptr %88, align 2
  %108 = load ptr, ptr %58, align 4
  %109 = getelementptr i8, ptr %108, i32 2064
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %111 = load i8, ptr %62, align 8, !range !10
  %112 = icmp eq i8 %111, 0
  %113 = tail call i32 @llvm.bswap.i32(i32 %110) #14
  %114 = select i1 %112, i32 %110, i32 %113
  %115 = or i32 %114, 8192
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %112, label %120, label %116

116:                                              ; preds = %105
  %117 = tail call i32 @llvm.bswap.i32(i32 %115) #14
  %118 = load ptr, ptr %58, align 4
  %119 = getelementptr i8, ptr %118, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 %117) #14, !srcloc !11
  br label %160

120:                                              ; preds = %105
  %121 = load ptr, ptr %58, align 4
  %122 = getelementptr i8, ptr %121, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %115) #14, !srcloc !11
  br label %160

123:                                              ; preds = %95
  %124 = or i32 %84, 402948096
  %125 = load ptr, ptr %58, align 4
  %126 = getelementptr i8, ptr %125, i32 2068
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %128 = load i8, ptr %62, align 8, !range !10
  %129 = icmp eq i8 %128, 0
  %130 = tail call i32 @llvm.bswap.i32(i32 %127) #14
  %131 = select i1 %129, i32 %127, i32 %130
  %132 = or i32 %131, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %129, label %137, label %133

133:                                              ; preds = %123
  %134 = tail call i32 @llvm.bswap.i32(i32 %132) #14
  %135 = load ptr, ptr %58, align 4
  %136 = getelementptr i8, ptr %135, i32 2068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 %134) #14, !srcloc !11
  br label %236

137:                                              ; preds = %123
  %138 = load ptr, ptr %58, align 4
  %139 = getelementptr i8, ptr %138, i32 2068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %132) #14, !srcloc !11
  br label %236

140:                                              ; preds = %80
  %141 = or i32 %84, 557056
  br label %158

142:                                              ; preds = %80
  br i1 %14, label %143, label %145

143:                                              ; preds = %142
  %144 = or i8 %90, 2
  store i8 %144, ptr %88, align 2
  br label %145

145:                                              ; preds = %143, %142
  %146 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 85, i32 5
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %147, 3
  br i1 %148, label %149, label %155

149:                                              ; preds = %145
  %150 = load i8, ptr %91, align 1
  %151 = zext i8 %150 to i32
  %152 = add nsw i32 %151, -1
  %153 = shl nuw i32 1, %152
  %154 = trunc i32 %153 to i16
  store i16 %154, ptr %94, align 4
  br label %155

155:                                              ; preds = %149, %145
  %156 = or i32 %84, 819200
  br label %158

157:                                              ; preds = %80
  unreachable

158:                                              ; preds = %155, %140, %80
  %159 = phi i32 [ %156, %155 ], [ %141, %140 ], [ %85, %80 ]
  br i1 %14, label %160, label %236

160:                                              ; preds = %158, %120, %116
  %161 = phi i32 [ %159, %158 ], [ %106, %120 ], [ %106, %116 ]
  %162 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 69
  %163 = load i8, ptr %162, align 4
  %164 = and i8 %163, 1
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %236, label %166

166:                                              ; preds = %160
  %167 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 2
  %168 = load i32, ptr %167, align 8
  %169 = and i32 %168, 128
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 2, i32 3
  %173 = load i32, ptr %172, align 8
  %174 = lshr i32 %173, 26
  br label %178

175:                                              ; preds = %166
  %176 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 2, i32 4
  %177 = load i32, ptr %176, align 4
  br label %178

178:                                              ; preds = %175, %171
  %179 = phi i32 [ %174, %171 ], [ %177, %175 ]
  %180 = and i32 %179, 15
  %181 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 7
  %182 = load i56, ptr %181, align 2
  %183 = trunc i56 %182 to i32
  %184 = and i32 %183, 65535
  %185 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 14
  %186 = load i8, ptr %185, align 1
  %187 = zext i8 %186 to i32
  %188 = mul nuw nsw i32 %184, %187
  %189 = icmp eq i32 %180, 0
  br i1 %189, label %297, label %190

190:                                              ; preds = %178
  %191 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 71
  br label %192

192:                                              ; preds = %217, %190
  %193 = phi i32 [ -1, %190 ], [ %219, %217 ]
  %194 = phi i32 [ 0, %190 ], [ %218, %217 ]
  %195 = phi i32 [ 1, %190 ], [ %220, %217 ]
  %196 = load i32, ptr %191, align 8
  %197 = shl nuw i32 1, %195
  %198 = and i32 %196, %197
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %217

200:                                              ; preds = %192
  %201 = shl i32 %195, 2
  %202 = add nuw nsw i32 %201, 256
  %203 = load ptr, ptr %58, align 4
  %204 = getelementptr i8, ptr %203, i32 %202
  %205 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %204) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %206 = load i8, ptr %62, align 8, !range !10
  %207 = icmp eq i8 %206, 0
  %208 = tail call i32 @llvm.bswap.i32(i32 %205) #14
  %209 = select i1 %207, i32 %205, i32 %208
  %210 = lshr i32 %209, 14
  %211 = and i32 %210, 262140
  %212 = icmp uge i32 %211, %188
  %213 = icmp ult i32 %211, %193
  %214 = select i1 %212, i1 %213, i1 false
  %215 = select i1 %214, i32 %195, i32 %194
  %216 = select i1 %214, i32 %211, i32 %193
  br label %217

217:                                              ; preds = %200, %192
  %218 = phi i32 [ %194, %192 ], [ %215, %200 ]
  %219 = phi i32 [ %193, %192 ], [ %216, %200 ]
  %220 = add nuw nsw i32 %195, 1
  %221 = icmp eq i32 %195, %180
  br i1 %221, label %222, label %192

222:                                              ; preds = %217
  %223 = icmp eq i32 %218, 0
  br i1 %223, label %297, label %224

224:                                              ; preds = %222
  %225 = and i32 %161, -62914561
  %226 = shl nuw i32 1, %218
  %227 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 71
  %228 = load i32, ptr %227, align 8
  %229 = or i32 %228, %226
  store i32 %229, ptr %227, align 8
  %230 = shl i32 %218, 22
  %231 = or i32 %230, %225
  %232 = trunc i32 %218 to i16
  %233 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 10
  store i16 %232, ptr %233, align 2
  %234 = trunc i32 %219 to i16
  %235 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 9
  store i16 %234, ptr %235, align 4
  br label %236

236:                                              ; preds = %224, %160, %158, %137, %133
  %237 = phi i32 [ %161, %160 ], [ %159, %158 ], [ %231, %224 ], [ %124, %137 ], [ %124, %133 ]
  %238 = load i8, ptr %88, align 2
  %239 = and i8 %238, 4
  %240 = icmp eq i8 %239, 0
  %241 = or i32 %237, 268435456
  %242 = select i1 %240, i32 %241, i32 %237
  %243 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 85, i32 5
  %244 = load i32, ptr %243, align 4
  %245 = icmp eq i32 %244, 2
  %246 = icmp ne i8 %239, 0
  %247 = select i1 %245, i1 %246, i1 false
  %248 = select i1 %247, i1 %14, i1 false
  br i1 %248, label %251, label %249

249:                                              ; preds = %236
  %250 = load i8, ptr %62, align 8, !range !10
  br label %265

251:                                              ; preds = %236
  %252 = load ptr, ptr %58, align 4
  %253 = getelementptr i8, ptr %252, i32 64
  %254 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %253) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %255 = load i8, ptr %62, align 8, !range !10
  %256 = icmp eq i8 %255, 0
  %257 = tail call i32 @llvm.bswap.i32(i32 %254) #14
  %258 = select i1 %256, i32 %254, i32 %257
  %259 = freeze i32 %258
  %260 = add i32 %259, -1330915114
  %261 = icmp ult i32 %260, 6369
  br i1 %261, label %263, label %262

262:                                              ; preds = %251
  switch i32 %259, label %265 [
    i32 1429344266, label %263
    i32 1429278730, label %263
  ]

263:                                              ; preds = %262, %262, %251
  %264 = or i32 %242, 67108864
  br label %265

265:                                              ; preds = %263, %262, %249
  %266 = phi i8 [ %250, %249 ], [ %255, %263 ], [ %255, %262 ]
  %267 = phi i32 [ %242, %249 ], [ %264, %263 ], [ %242, %262 ]
  %268 = icmp eq i8 %266, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %268, label %273, label %269

269:                                              ; preds = %265
  %270 = tail call i32 @llvm.bswap.i32(i32 %267) #14
  %271 = load ptr, ptr %58, align 4
  %272 = getelementptr i8, ptr %271, i32 %57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %272, i32 %270) #14, !srcloc !11
  br label %276

273:                                              ; preds = %265
  %274 = load ptr, ptr %58, align 4
  %275 = getelementptr i8, ptr %274, i32 %57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %275, i32 %267) #14, !srcloc !11
  br label %276

276:                                              ; preds = %273, %269
  %277 = shl nuw i32 1, %7
  %278 = shl i32 %277, 16
  %279 = select i1 %14, i32 %277, i32 %278
  %280 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !16
  %281 = load ptr, ptr %58, align 4
  %282 = getelementptr i8, ptr %281, i32 2076
  %283 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %282) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %284 = load i8, ptr %62, align 8, !range !10
  %285 = icmp eq i8 %284, 0
  %286 = tail call i32 @llvm.bswap.i32(i32 %283) #14
  %287 = select i1 %285, i32 %283, i32 %286
  %288 = or i32 %287, %279
  tail call void asm sideeffect "dsb st", "~{memory}"() #14
  tail call void @arm_heavy_mb() #14
  br i1 %285, label %293, label %289

289:                                              ; preds = %276
  %290 = tail call i32 @llvm.bswap.i32(i32 %288) #14
  %291 = load ptr, ptr %58, align 4
  %292 = getelementptr i8, ptr %291, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %292, i32 %290) #14, !srcloc !11
  br label %296

293:                                              ; preds = %276
  %294 = load ptr, ptr %58, align 4
  %295 = getelementptr i8, ptr %294, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %295, i32 %288) #14, !srcloc !11
  br label %296

296:                                              ; preds = %293, %289
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %280) #14, !srcloc !17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %81, i32 noundef %82) #14
  br label %310

297:                                              ; preds = %222, %178
  %298 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %298, ptr noundef nonnull @.str.66, ptr noundef nonnull @__func__.dwc2_hsotg_ep_enable) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %81, i32 noundef %82) #14
  br label %299

299:                                              ; preds = %297, %75
  %300 = load i8, ptr %34, align 1, !range !10
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %310, label %302

302:                                              ; preds = %299
  %303 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 20
  %304 = load ptr, ptr %303, align 4
  %305 = icmp eq ptr %304, null
  br i1 %305, label %310, label %306

306:                                              ; preds = %302
  %307 = load ptr, ptr %4, align 8
  %308 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 19
  %309 = load i32, ptr %308, align 4
  tail call void @dmam_free_coherent(ptr noundef %307, i32 noundef %70, ptr noundef nonnull %304, i32 noundef %309) #14
  store ptr null, ptr %303, align 4
  br label %310

310:                                              ; preds = %306, %302, %299, %296, %52, %45, %20, %9
  %311 = phi i32 [ -22, %9 ], [ -22, %20 ], [ -22, %45 ], [ -22, %52 ], [ -12, %306 ], [ -12, %302 ], [ -12, %299 ], [ 0, %296 ]
  ret i32 %311
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc2_hsotg_ep_queue_lock(ptr noundef %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 18
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #14
  %8 = tail call fastcc i32 @dwc2_hsotg_ep_queue(ptr noundef %0, ptr noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #14
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc2_hsotg_ep_dequeue(ptr noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 18
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #14
  %7 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 1
  br label %8

8:                                                ; preds = %8, %2
  %9 = phi ptr [ %7, %2 ], [ %10, %8 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %7
  %12 = getelementptr i8, ptr %10, i32 -56
  %13 = icmp eq ptr %12, %1
  %14 = or i1 %11, %13
  br i1 %14, label %15, label %8

15:                                               ; preds = %8
  br i1 %11, label %22, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call fastcc void @dwc2_hsotg_ep_stop_xfr(ptr noundef %4, ptr noundef %0)
  br label %21

21:                                               ; preds = %20, %16
  tail call fastcc void @dwc2_hsotg_complete_request(ptr noundef %4, ptr noundef %0, ptr noundef %1, i32 noundef -104)
  br label %22

22:                                               ; preds = %21, %15
  %23 = phi i32 [ 0, %21 ], [ -22, %15 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #14
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc2_hsotg_ep_sethalt_lock(ptr noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 18
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #14
  %7 = tail call fastcc i32 @dwc2_hsotg_ep_sethalt(ptr noundef %0, i32 noundef %1, i1 noundef zeroext false)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #14
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc2_gadget_ep_set_wedge(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 18
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #14
  %6 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %0, i32 0, i32 16
  %7 = load i8, ptr %6, align 2
  %8 = or i8 %7, 16
  store i8 %8, ptr %6, align 2
  %9 = tail call fastcc i32 @dwc2_hsotg_ep_sethalt(ptr noundef %0, i32 noundef 1, i1 noundef zeroext false)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #14
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmam_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }

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
!8 = !{i64 3606915}
!9 = !{i64 2154644714}
!10 = !{i8 0, i8 2}
!11 = !{i64 3606497}
!12 = !{i64 2149074209}
!13 = !{i64 2149070033}
!14 = !{i64 2149070108, i64 2149070135, i64 2149070182, i64 2149070204, i64 2149070232, i64 2149070252}
!15 = !{i64 2149097212}
!16 = !{i64 453530, i64 453591}
!17 = !{i64 456547}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
