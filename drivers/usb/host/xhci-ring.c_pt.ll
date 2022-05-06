; ModuleID = '/llk/IR/drivers/usb/host/xhci-ring.c_pt.bc'
source_filename = "../drivers/usb/host/xhci-ring.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.xhci_segment = type { ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.xhci_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%union.xhci_trb = type { %struct.xhci_link_trb }
%struct.xhci_link_trb = type { i64, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xhci_hcd = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, i32, %struct.delayed_work, %struct.completion, ptr, ptr, %struct.xhci_erst, ptr, %struct.list_head, %struct.mutex, ptr, [256 x ptr], ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.s3_save, i64, i32, i32, ptr, %struct.xhci_hub, %struct.xhci_hub, i8, ptr, i32, ptr, i32, %struct.timer_list, i32, i16, ptr, ptr, %struct.list_head, ptr, [0 x i32] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xhci_erst = type { ptr, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.s3_save = type { i32, i32, i64, i32, i32, i32, i32, i64, i64 }
%struct.xhci_hub = type { ptr, i32, ptr, %struct.xhci_bus_state, i8, i8 }
%struct.xhci_bus_state = type { i32, i32, i32, i32, i32, [31 x i32], i32, i32, [31 x %struct.completion], [31 x %struct.completion] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.xhci_virt_device = type { i32, ptr, ptr, ptr, [31 x %struct.xhci_virt_ep], i8, i8, ptr, ptr, i32, i16, ptr }
%struct.xhci_virt_ep = type { ptr, i32, ptr, ptr, ptr, i32, %struct.list_head, %struct.timer_list, ptr, ptr, ptr, i8, %struct.xhci_bw_info, %struct.list_head, i32, i8 }
%struct.xhci_bw_info = type { i32, i32, i32, i32, i32, i32 }
%struct.xhci_stream_info = type { ptr, i32, ptr, i32, i32, %struct.xarray, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.xhci_td = type { %struct.list_head, %struct.list_head, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.urb_priv = type { i32, i32, [0 x %struct.xhci_td] }
%struct.xhci_op_regs = type { i32, i32, i32, i32, i32, i32, i64, [4 x i32], i64, i32, [241 x i32], i32, i32, i32, i32, [1016 x i32] }
%struct.xhci_command = type { ptr, i32, i32, ptr, ptr, %struct.list_head }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.64, i32 }
%union.anon.64 = type { ptr }
%struct.xhci_intr_reg = type { i32, i32, i32, i32, i64, i64 }
%struct.xhci_event_cmd = type { i64, i32, i32 }
%struct.xhci_port = type { ptr, i32, i32, ptr, ptr }
%struct.xhci_transfer_event = type { i64, i32, i32 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.xhci_slot_ctx = type { i32, i32, i32, i32, [4 x i32] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.61, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.61 = type { %struct.atomic_t }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.xhci_stream_ctx = type { i64, [2 x i32] }
%struct.xhci_ep_ctx = type { i32, i32, i64, i32, [3 x i32] }
%struct.xhci_input_control_ctx = type { i32, i32, [6 x i32] }

@.str = private unnamed_addr constant [36 x i8] c"Missing link TRB at end of segment\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Ring is an endless link TRB loop\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"xHCI host controller not responding, assume dead\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"xHCI host not responding to stop endpoint command.\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"USBSTS:%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"xHCI host controller is dead.\00", align 1
@.str.6 = private unnamed_addr constant [99 x i8] c"Looking for event-dma %016llx trb-start %016llx trb-end %016llx seg-start %016llx seg-end %016llx\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"WARNING: Host System Error\0A\00", align 1
@__tracepoint_xhci_inc_deq = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_xhci_ring_host_doorbell = external dso_local global %struct.tracepoint, align 4
@__tracepoint_xhci_ring_ep_doorbell = external dso_local global %struct.tracepoint, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"Invalid slot_id %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Invalid endpoint index %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"No xhci virt device for slot_id %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [57 x i8] c"Invalid stream_id %u request for slot_id %u ep_index %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"Killing URBs for slot ID %u, ep index %u, stream %u\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"Killing URBs for slot ID %u, ep index %u\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"WARN Wrong bounce buffer read length: %zu != %d\0A\00", align 1
@__tracepoint_xhci_urb_giveback = external dso_local global %struct.tracepoint, align 4
@.str.16 = private unnamed_addr constant [12 x i8] c" 0xffffffff\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c" HCHalted\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c" HSE\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c" EINT\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c" PCD\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c" SSS\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c" RSS\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c" SRE\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c" CNR\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c" HCE\00", align 1
@__tracepoint_xhci_dbg_cancel_urb = external dso_local global %struct.tracepoint, align 4
@.str.26 = private unnamed_addr constant [39 x i8] c"Abort failed to stop command ring: %d\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.27 = private unnamed_addr constant [28 x i8] c"ERROR event ring not ready\0A\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"ERROR unknown event type %d\0A\00", align 1
@__tracepoint_xhci_handle_event = external dso_local global %struct.tracepoint, align 4
@.str.29 = private unnamed_addr constant [43 x i8] c"ERROR mismatched command completion event\0A\00", align 1
@.str.30 = private unnamed_addr constant [49 x i8] c"Command completion event does not match command\0A\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"drivers/usb/host/xhci-ring.c\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"INFO unknown command type %d\0A\00", align 1
@__tracepoint_xhci_handle_command = external dso_local global %struct.tracepoint, align 4
@__tracepoint_xhci_handle_cmd_disable_slot = external dso_local global %struct.tracepoint, align 4
@.str.33 = private unnamed_addr constant [40 x i8] c"Could not get input context, bad type.\0A\00", align 1
@.str.34 = private unnamed_addr constant [57 x i8] c"Completed config ep cmd - last ep index = %d, state = %d\00", align 1
@__tracepoint_xhci_handle_cmd_config_ep = external dso_local global %struct.tracepoint, align 4
@__tracepoint_xhci_dbg_quirks = external dso_local global %struct.tracepoint, align 4
@__tracepoint_xhci_handle_cmd_addr_dev = external dso_local global %struct.tracepoint, align 4
@.str.35 = private unnamed_addr constant [55 x i8] c"Stop endpoint command completion for disabled slot %u\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__tracepoint_xhci_handle_cmd_stop_ep = external dso_local global %struct.tracepoint, align 4
@.str.36 = private unnamed_addr constant [58 x i8] c"ERROR queuing reset endpoint for slot %d ep_index %d, %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [66 x i8] c"Removing canceled TD starting at 0x%llx (dma) in stream %u URB %p\00", align 1
@.str.38 = private unnamed_addr constant [49 x i8] c"WARN Cancelled URB %p has invalid stream ID %u.\0A\00", align 1
@.str.39 = private unnamed_addr constant [51 x i8] c"WARN can't find new dequeue, invalid stream ID %u\0A\00", align 1
@.str.41 = private unnamed_addr constant [41 x i8] c"Error: Failed finding new dequeue state\0A\00", align 1
@.str.42 = private unnamed_addr constant [35 x i8] c"Can't find dma of new dequeue ptr\0A\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"deq seg = %p, deq ptr = %p\0A\00", align 1
@.str.44 = private unnamed_addr constant [53 x i8] c"Set TR Deq already pending, don't submit for 0x%pad\0A\00", align 1
@.str.45 = private unnamed_addr constant [35 x i8] c"Can't alloc Set TR Deq cmd 0x%pad\0A\00", align 1
@.str.46 = private unnamed_addr constant [33 x i8] c"Set TR Deq ptr 0x%llx, cycle %u\0A\00", align 1
@.str.47 = private unnamed_addr constant [51 x i8] c"URB req %u and actual %u transfer length mismatch\0A\00", align 1
@.str.48 = private unnamed_addr constant [52 x i8] c"WARN Set TR deq ptr command for freed stream ID %u\0A\00", align 1
@.str.49 = private unnamed_addr constant [68 x i8] c"WARN Set TR Deq Ptr cmd invalid because of stream ID configuration\0A\00", align 1
@.str.50 = private unnamed_addr constant [67 x i8] c"WARN Set TR Deq Ptr cmd failed due to incorrect slot or ep state.\0A\00", align 1
@.str.51 = private unnamed_addr constant [31 x i8] c"Slot state = %u, EP state = %u\00", align 1
@.str.52 = private unnamed_addr constant [65 x i8] c"WARN Set TR Deq Ptr cmd failed because slot %u was not enabled.\0A\00", align 1
@.str.53 = private unnamed_addr constant [61 x i8] c"WARN Set TR Deq Ptr cmd with unknown completion code of %u.\0A\00", align 1
@.str.54 = private unnamed_addr constant [45 x i8] c"Successful Set TR Deq Ptr cmd, deq = @%08llx\00", align 1
@.str.55 = private unnamed_addr constant [74 x i8] c"Mismatch between completed Set TR Deq Ptr command & xHCI internal state.\0A\00", align 1
@.str.56 = private unnamed_addr constant [31 x i8] c"ep deq seg = %p, deq ptr = %p\0A\00", align 1
@__tracepoint_xhci_handle_cmd_set_deq = external dso_local global %struct.tracepoint, align 4
@__tracepoint_xhci_handle_cmd_set_deq_ep = external dso_local global %struct.tracepoint, align 4
@.str.57 = private unnamed_addr constant [40 x i8] c"Ignoring reset ep completion code of %u\00", align 1
@__tracepoint_xhci_handle_cmd_reset_ep = external dso_local global %struct.tracepoint, align 4
@__tracepoint_xhci_dbg_reset_ep = external dso_local global %struct.tracepoint, align 4
@.str.58 = private unnamed_addr constant [54 x i8] c"Reset device command completion for disabled slot %u\0A\00", align 1
@__tracepoint_xhci_handle_cmd_reset_dev = external dso_local global %struct.tracepoint, align 4
@.str.59 = private unnamed_addr constant [41 x i8] c"WARN NEC_GET_FW command on non-NEC host\0A\00", align 1
@.str.60 = private unnamed_addr constant [30 x i8] c"NEC firmware version %2x.%02x\00", align 1
@.str.61 = private unnamed_addr constant [45 x i8] c"WARN: xHC returned failed port status event\0A\00", align 1
@.str.62 = private unnamed_addr constant [43 x i8] c"Port change event with invalid port ID %d\0A\00", align 1
@.str.63 = private unnamed_addr constant [43 x i8] c"Port change event, no port for port ID %u\0A\00", align 1
@.str.64 = private unnamed_addr constant [21 x i8] c"xHC is not running.\0A\00", align 1
@__tracepoint_xhci_handle_port_status = external dso_local global %struct.tracepoint, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.65 = private unnamed_addr constant [30 x i8] c"ERROR Invalid Transfer event\0A\00", align 1
@.str.66 = private unnamed_addr constant [58 x i8] c"ERROR Transfer event for disabled endpoint slot %u ep %u\0A\00", align 1
@.str.67 = private unnamed_addr constant [60 x i8] c"ERROR Transfer event for unknown stream ring slot %u ep %u\0A\00", align 1
@handle_tx_event._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.handle_tx_event = private unnamed_addr constant [16 x i8] c"handle_tx_event\00", align 1
@.str.68 = private unnamed_addr constant [93 x i8] c"WARN Successful completion on short TX for slot %u ep %u: needs XHCI_TRUST_TX_LENGTH quirk?\0A\00", align 1
@.str.69 = private unnamed_addr constant [47 x i8] c"WARN: TRB error for slot %u ep %u on endpoint\0A\00", align 1
@.str.70 = private unnamed_addr constant [60 x i8] c"WARN: HC couldn't access mem fast enough for slot %u ep %u\0A\00", align 1
@.str.71 = private unnamed_addr constant [61 x i8] c"WARN: bandwidth overrun event for slot %u ep %u on endpoint\0A\00", align 1
@.str.72 = private unnamed_addr constant [57 x i8] c"WARN: buffer overrun event for slot %u ep %u on endpoint\00", align 1
@.str.73 = private unnamed_addr constant [54 x i8] c"WARN: detect an incompatible device for slot %u ep %u\00", align 1
@.str.74 = private unnamed_addr constant [73 x i8] c"ERROR Unknown event condition %u for slot %u ep %u , HC probably busted\0A\00", align 1
@.str.75 = private unnamed_addr constant [54 x i8] c"WARN Event TRB for slot %d ep %d with no TDs queued?\0A\00", align 1
@.str.76 = private unnamed_addr constant [82 x i8] c"ERROR Transfer event TRB DMA ptr not part of current TD ep_index %d comp_code %u\0A\00", align 1
@.str.77 = private unnamed_addr constant [30 x i8] c"@%016llx %08x %08x %08x %08x\0A\00", align 1
@__tracepoint_xhci_handle_transfer = external dso_local global %struct.tracepoint, align 4
@.str.78 = private unnamed_addr constant [47 x i8] c"WARN: Success on ctrl %s TRB without IOC set?\0A\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"setup\00", align 1
@.str.81 = private unnamed_addr constant [56 x i8] c"WARN: Stopped Short Packet on ctrl setup or status TRB\0A\00", align 1
@.str.82 = private unnamed_addr constant [30 x i8] c"WARN: unexpected TRB Type %d\0A\00", align 1
@.str.83 = private unnamed_addr constant [40 x i8] c"WARN Successful completion on short TX\0A\00", align 1
@.str.84 = private unnamed_addr constant [41 x i8] c"bad transfer trb length %d in event trb\0A\00", align 1
@.str.85 = private unnamed_addr constant [46 x i8] c"Device Notification event for unused slot %u\0A\00", align 1
@.str.86 = private unnamed_addr constant [53 x i8] c"WARN something wrong with SW event ring dequeue ptr\0A\00", align 1
@.str.87 = private unnamed_addr constant [50 x i8] c"WARN Wrong bounce buffer write length: %zu != %d\0A\00", align 1
@.str.88 = private unnamed_addr constant [44 x i8] c"Failed mapping bounce buffer, not aligning\0A\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.89 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.90 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_xhci_queue_trb = external dso_local global %struct.tracepoint, align 4
@.str.91 = private unnamed_addr constant [41 x i8] c"Tried to move enqueue past ring segment\0A\00", align 1
@.str.92 = private unnamed_addr constant [24 x i8] c"%s: Ring link TRB loop\0A\00", align 1
@__func__.inc_enq = private unnamed_addr constant [8 x i8] c"inc_enq\00", align 1
@__tracepoint_xhci_inc_enq = external dso_local global %struct.tracepoint, align 4
@.str.93 = private unnamed_addr constant [76 x i8] c"%s - ep %#x - Miscalculated tx length, queued %#x (%d), asked for %#x (%d)\0A\00", align 1
@__func__.check_trb_math = private unnamed_addr constant [15 x i8] c"check_trb_math\00", align 1
@.str.94 = private unnamed_addr constant [35 x i8] c"WARN urb submitted to disabled ep\0A\00", align 1
@.str.95 = private unnamed_addr constant [44 x i8] c"WARN waiting for error on ep to be cleared\0A\00", align 1
@.str.96 = private unnamed_addr constant [37 x i8] c"ERROR unknown endpoint state for ep\0A\00", align 1
@.str.97 = private unnamed_addr constant [36 x i8] c"Do not support expand command ring\0A\00", align 1
@.str.98 = private unnamed_addr constant [45 x i8] c"ERROR no room on ep ring, try ring expansion\00", align 1
@.str.99 = private unnamed_addr constant [23 x i8] c"Ring expansion failed\0A\00", align 1
@.str.100 = private unnamed_addr constant [41 x i8] c"Missing link TRB at end of ring segment\0A\00", align 1
@__tracepoint_xhci_dbg_ring_expansion = external dso_local global %struct.tracepoint, align 4
@.str.101 = private unnamed_addr constant [24 x i8] c"ISOC TD length unmatch\0A\00", align 1
@.str.102 = private unnamed_addr constant [54 x i8] c"Frame ID %d (reg %d, index %d) beyond range (%d, %d)\0A\00", align 1
@.str.103 = private unnamed_addr constant [44 x i8] c"Ignore frame ID field, use SIA bit instead\0A\00", align 1
@.str.104 = private unnamed_addr constant [42 x i8] c"ERR: No room for command on command ring\0A\00", align 1
@.str.105 = private unnamed_addr constant [60 x i8] c"ERR: Reserved TRB counting for unfailable commands failed.\0A\00", align 1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @xhci_trb_virt_to_dma(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = icmp ugt ptr %7, %1
  br i1 %8, label %18, label %9

9:                                                ; preds = %6
  %10 = ptrtoint ptr %1 to i32
  %11 = ptrtoint ptr %7 to i32
  %12 = sub i32 %10, %11
  %13 = icmp ugt i32 %12, 4080
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.xhci_segment, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %12
  br label %18

18:                                               ; preds = %14, %9, %6, %2
  %19 = phi i32 [ %17, %14 ], [ 0, %6 ], [ 0, %2 ], [ 0, %9 ]
  ret i32 %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inc_deq(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 14
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 6
  br i1 %5, label %6, label %29

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr %union.xhci_trb, ptr %11, i32 255
  %13 = icmp eq ptr %12, %10
  br i1 %13, label %16, label %14

14:                                               ; preds = %6
  %15 = getelementptr %union.xhci_trb, ptr %10, i32 1
  store ptr %15, ptr %9, align 4
  br label %73

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.xhci_segment, ptr %8, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %1, align 4
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = xor i32 %23, 1
  store i32 %24, ptr %22, align 4
  %25 = load ptr, ptr %17, align 4
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi ptr [ %25, %21 ], [ %18, %16 ]
  store ptr %27, ptr %7, align 4
  %28 = load ptr, ptr %27, align 4
  store ptr %28, ptr %9, align 4
  br label %73

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.xhci_link_trb, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 64512
  %35 = icmp eq i32 %34, 6144
  br i1 %35, label %51, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 5
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr %union.xhci_trb, ptr %39, i32 255
  %41 = icmp eq ptr %40, %31
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load ptr, ptr %0, align 8
  %44 = load ptr, ptr %43, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str) #11
  %45 = load ptr, ptr %30, align 4
  br label %51

46:                                               ; preds = %36
  %47 = getelementptr %union.xhci_trb, ptr %31, i32 1
  store ptr %47, ptr %30, align 4
  %48 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 11
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %48, align 4
  br label %51

51:                                               ; preds = %46, %42, %29
  %52 = phi ptr [ %45, %42 ], [ %47, %46 ], [ %31, %29 ]
  %53 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 5
  %54 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 10
  br label %55

55:                                               ; preds = %62, %51
  %56 = phi ptr [ %52, %51 ], [ %66, %62 ]
  %57 = phi i32 [ 0, %51 ], [ %67, %62 ]
  %58 = getelementptr inbounds %struct.xhci_link_trb, ptr %56, i32 0, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 64512
  %61 = icmp eq i32 %60, 6144
  br i1 %61, label %62, label %73

62:                                               ; preds = %55
  %63 = load ptr, ptr %53, align 4
  %64 = getelementptr inbounds %struct.xhci_segment, ptr %63, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  store ptr %65, ptr %53, align 4
  %66 = load ptr, ptr %65, align 4
  store ptr %66, ptr %30, align 4
  %67 = add i32 %57, 1
  %68 = load i32, ptr %54, align 4
  %69 = icmp ugt i32 %57, %68
  br i1 %69, label %70, label %55

70:                                               ; preds = %62
  %71 = load ptr, ptr %0, align 8
  %72 = load ptr, ptr %71, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %72, ptr noundef nonnull @.str.1) #11
  br label %73

73:                                               ; preds = %70, %55, %26, %14
  %74 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_inc_deq, i32 0, i32 1), align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %73
  %77 = tail call ptr @llvm.thread.pointer() #12
  %78 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 2
  %79 = load i32, ptr %78, align 8
  %80 = lshr i32 %79, 5
  %81 = getelementptr i32, ptr @__cpu_online_mask, i32 %80
  %82 = load volatile i32, ptr %81, align 4
  %83 = and i32 %79, 31
  %84 = shl nuw i32 1, %83
  %85 = and i32 %84, %82
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %76
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !8
  %88 = tail call i32 @__traceiter_xhci_inc_deq(ptr noundef null, ptr noundef %1) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  br label %89

89:                                               ; preds = %87, %76, %73
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_ring_cmd_db(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 30
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %1
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_ring_host_doorbell, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = tail call ptr @llvm.thread.pointer() #12
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %21 = tail call i32 @__traceiter_xhci_ring_host_doorbell(ptr noundef null, i32 noundef 0, i32 noundef 0) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  br label %22

22:                                               ; preds = %20, %9, %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %23 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #12, !srcloc !13
  %25 = load ptr, ptr %23, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #12, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !15
  br label %27

27:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_ring_ep_doorbell(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr [256 x i32], ptr %6, i32 0, i32 %1
  %8 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 42, i32 %1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.xhci_virt_device, ptr %9, i32 0, i32 4, i32 %2, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 263
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %4
  %15 = add i32 %2, 1
  %16 = and i32 %15, 255
  %17 = shl i32 %3, 16
  %18 = or i32 %16, %17
  %19 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_ring_ep_doorbell, i32 0, i32 1), align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %14
  %22 = tail call ptr @llvm.thread.pointer() #12
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = lshr i32 %24, 5
  %26 = getelementptr i32, ptr @__cpu_online_mask, i32 %25
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %24, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %29, %27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %21
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  %33 = tail call i32 @__traceiter_xhci_ring_ep_doorbell(ptr noundef null, i32 noundef %1, i32 noundef %18) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  br label %34

34:                                               ; preds = %32, %21, %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !18
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %18) #12, !srcloc !13
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #12, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !19
  br label %36

36:                                               ; preds = %34, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_ring_doorbell_for_active_rings(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  tail call fastcc void @ring_doorbell_for_active_rings(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ring_doorbell_for_active_rings(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 42, i32 %1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.xhci_virt_device, ptr %5, i32 0, i32 4, i32 %2, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %3
  %11 = getelementptr %struct.xhci_virt_device, ptr %5, i32 0, i32 4, i32 %2, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.xhci_stream_info, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, 1
  br i1 %15, label %16, label %98

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 5
  %18 = add i32 %2, 1
  %19 = and i32 %18, 255
  br label %54

20:                                               ; preds = %3
  %21 = getelementptr %struct.xhci_virt_device, ptr %5, i32 0, i32 4, i32 %2, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %98, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.xhci_ring, ptr %22, i32 0, i32 6
  %26 = load volatile ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %98, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr [256 x i32], ptr %30, i32 0, i32 %1
  %32 = and i32 %7, 263
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %98

34:                                               ; preds = %28
  %35 = add i32 %2, 1
  %36 = and i32 %35, 255
  %37 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_ring_ep_doorbell, i32 0, i32 1), align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = tail call ptr @llvm.thread.pointer() #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  %51 = tail call i32 @__traceiter_xhci_ring_ep_doorbell(ptr noundef null, i32 noundef %1, i32 noundef %36) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  br label %52

52:                                               ; preds = %50, %39, %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !18
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %36) #12, !srcloc !13
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #12, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !19
  br label %98

54:                                               ; preds = %92, %16
  %55 = phi ptr [ %12, %16 ], [ %93, %92 ]
  %56 = phi i32 [ 1, %16 ], [ %94, %92 ]
  %57 = load ptr, ptr %55, align 4
  %58 = getelementptr ptr, ptr %57, i32 %56
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.xhci_ring, ptr %59, i32 0, i32 6
  %61 = load volatile ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %92, label %63

63:                                               ; preds = %54
  %64 = load ptr, ptr %17, align 4
  %65 = getelementptr [256 x i32], ptr %64, i32 0, i32 %1
  %66 = load ptr, ptr %4, align 4
  %67 = getelementptr %struct.xhci_virt_device, ptr %66, i32 0, i32 4, i32 %2, i32 5
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, 263
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %63
  %72 = shl i32 %56, 16
  %73 = or i32 %72, %19
  %74 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_ring_ep_doorbell, i32 0, i32 1), align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %71
  %77 = tail call ptr @llvm.thread.pointer() #12
  %78 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 2
  %79 = load i32, ptr %78, align 8
  %80 = lshr i32 %79, 5
  %81 = getelementptr i32, ptr @__cpu_online_mask, i32 %80
  %82 = load volatile i32, ptr %81, align 4
  %83 = and i32 %79, 31
  %84 = shl nuw i32 1, %83
  %85 = and i32 %84, %82
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %76
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  %88 = tail call i32 @__traceiter_xhci_ring_ep_doorbell(ptr noundef null, i32 noundef %1, i32 noundef %73) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  br label %89

89:                                               ; preds = %87, %76, %71
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !18
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %73) #12, !srcloc !13
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #12, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !19
  %91 = load ptr, ptr %11, align 4
  br label %92

92:                                               ; preds = %89, %63, %54
  %93 = phi ptr [ %91, %89 ], [ %55, %63 ], [ %55, %54 ]
  %94 = add nuw i32 %56, 1
  %95 = getelementptr inbounds %struct.xhci_stream_info, ptr %93, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = icmp ult i32 %94, %96
  br i1 %97, label %54, label %98

98:                                               ; preds = %92, %52, %28, %24, %20, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xhci_triad_to_transfer_ring(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = add i32 %1, -256
  %6 = icmp ult i32 %5, -255
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load ptr, ptr %0, align 8
  %9 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.9, i32 noundef %1) #11
  br label %54

10:                                               ; preds = %4
  %11 = icmp ugt i32 %2, 30
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = load ptr, ptr %0, align 8
  %14 = load ptr, ptr %13, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.10, i32 noundef %2) #11
  br label %54

15:                                               ; preds = %10
  %16 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 42, i32 %1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load ptr, ptr %0, align 8
  %21 = load ptr, ptr %20, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.11, i32 noundef %1) #11
  br label %54

22:                                               ; preds = %15
  %23 = getelementptr %struct.xhci_virt_device, ptr %17, i32 0, i32 4, i32 %2
  %24 = icmp eq ptr %23, null
  br i1 %24, label %54, label %25

25:                                               ; preds = %22
  %26 = getelementptr %struct.xhci_virt_device, ptr %17, i32 0, i32 4, i32 %2, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = getelementptr %struct.xhci_virt_device, ptr %17, i32 0, i32 4, i32 %2, i32 2
  %32 = load ptr, ptr %31, align 4
  br label %54

33:                                               ; preds = %25
  %34 = getelementptr %struct.xhci_virt_device, ptr %17, i32 0, i32 4, i32 %2, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %54, label %37

37:                                               ; preds = %33
  %38 = icmp eq i32 %3, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.xhci_stream_info, ptr %35, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = icmp ugt i32 %41, %3
  br i1 %42, label %50, label %43

43:                                               ; preds = %39, %37
  %44 = load ptr, ptr %0, align 8
  %45 = load ptr, ptr %44, align 8
  %46 = load ptr, ptr %23, align 4
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr %struct.xhci_virt_device, ptr %17, i32 0, i32 4, i32 %2, i32 1
  %49 = load i32, ptr %48, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.12, i32 noundef %3, i32 noundef %47, i32 noundef %49) #11
  br label %54

50:                                               ; preds = %39
  %51 = load ptr, ptr %35, align 4
  %52 = getelementptr ptr, ptr %51, i32 %3
  %53 = load ptr, ptr %52, align 4
  br label %54

54:                                               ; preds = %50, %43, %33, %30, %22, %19, %12, %7
  %55 = phi ptr [ null, %22 ], [ null, %43 ], [ %53, %50 ], [ %32, %30 ], [ null, %33 ], [ null, %7 ], [ null, %12 ], [ null, %19 ]
  ret ptr %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_hc_died(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 48
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %181

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8
  %8 = load ptr, ptr %7, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.2) #11
  %9 = load i32, ptr %2, align 4
  %10 = or i32 %9, 1
  store i32 %10, ptr %2, align 4
  %11 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 35
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 31
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %30, label %15

15:                                               ; preds = %28, %6
  %16 = phi ptr [ %17, %28 ], [ %13, %6 ]
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %16, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  store volatile ptr %17, ptr %19, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %18, align 4
  %21 = getelementptr i8, ptr %16, i32 -8
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %15
  %25 = getelementptr i8, ptr %16, i32 -16
  store i32 25, ptr %25, align 4
  tail call void @complete(ptr noundef nonnull %22) #12
  br label %28

26:                                               ; preds = %15
  %27 = getelementptr i8, ptr %16, i32 -20
  tail call void @kfree(ptr noundef %27) #12
  br label %28

28:                                               ; preds = %26, %24
  %29 = icmp eq ptr %17, %12
  br i1 %29, label %30, label %15

30:                                               ; preds = %28, %6
  %31 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 7
  br label %32

32:                                               ; preds = %170, %30
  %33 = phi i32 [ 0, %30 ], [ %171, %170 ]
  %34 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 42, i32 %33
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %170, label %37

37:                                               ; preds = %168, %32
  %38 = phi ptr [ %169, %168 ], [ %35, %32 ]
  %39 = phi i32 [ %166, %168 ], [ 0, %32 ]
  %40 = getelementptr %struct.xhci_virt_device, ptr %38, i32 0, i32 4, i32 %39, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 48
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %98, label %44

44:                                               ; preds = %37
  %45 = getelementptr %struct.xhci_virt_device, ptr %38, i32 0, i32 4, i32 %39, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.xhci_stream_info, ptr %46, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = icmp ugt i32 %48, 1
  br i1 %49, label %50, label %137

50:                                               ; preds = %92, %44
  %51 = phi ptr [ %94, %92 ], [ %46, %44 ]
  %52 = phi i32 [ %93, %92 ], [ 1, %44 ]
  %53 = load ptr, ptr %51, align 4
  %54 = getelementptr ptr, ptr %53, i32 %52
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %92, label %57

57:                                               ; preds = %50
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_cancel_urb, ptr noundef nonnull @.str.13, i32 noundef %33, i32 noundef %39, i32 noundef %52) #12
  %58 = getelementptr inbounds %struct.xhci_ring, ptr %55, i32 0, i32 6
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, %58
  br i1 %60, label %92, label %61

61:                                               ; preds = %90, %57
  %62 = phi ptr [ %63, %90 ], [ %59, %57 ]
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  store ptr %65, ptr %66, align 4
  store volatile ptr %63, ptr %65, align 4
  store volatile ptr %62, ptr %62, align 4
  store ptr %62, ptr %64, align 4
  %67 = getelementptr inbounds %struct.xhci_td, ptr %62, i32 0, i32 1
  %68 = load volatile ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, %67
  br i1 %69, label %74, label %70

70:                                               ; preds = %61
  %71 = getelementptr inbounds %struct.xhci_td, ptr %62, i32 0, i32 1, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  store ptr %72, ptr %73, align 4
  store volatile ptr %68, ptr %72, align 4
  store volatile ptr %67, ptr %67, align 4
  store ptr %67, ptr %71, align 4
  br label %74

74:                                               ; preds = %70, %61
  tail call fastcc void @xhci_unmap_td_bounce_buffer(ptr noundef %0, ptr noundef nonnull %55, ptr noundef %62) #12
  %75 = getelementptr inbounds %struct.xhci_td, ptr %62, i32 0, i32 4
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.urb, ptr %76, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.urb_priv, ptr %78, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, 1
  store i32 %81, ptr %79, align 4
  %82 = load ptr, ptr %75, align 4
  %83 = getelementptr inbounds %struct.urb, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.urb_priv, ptr %84, i32 0, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = load i32, ptr %84, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %74
  tail call fastcc void @xhci_giveback_urb_in_irq(ptr noundef %0, ptr noundef %62, i32 noundef -108) #12
  br label %90

90:                                               ; preds = %89, %74
  %91 = icmp eq ptr %63, %58
  br i1 %91, label %92, label %61

92:                                               ; preds = %90, %57, %50
  %93 = add nuw i32 %52, 1
  %94 = load ptr, ptr %45, align 4
  %95 = getelementptr inbounds %struct.xhci_stream_info, ptr %94, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = icmp ult i32 %93, %96
  br i1 %97, label %50, label %137

98:                                               ; preds = %37
  %99 = getelementptr %struct.xhci_virt_device, ptr %38, i32 0, i32 4, i32 %39, i32 2
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %165, label %102

102:                                              ; preds = %98
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_cancel_urb, ptr noundef nonnull @.str.14, i32 noundef %33, i32 noundef %39) #12
  %103 = getelementptr inbounds %struct.xhci_ring, ptr %100, i32 0, i32 6
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, %103
  br i1 %105, label %137, label %106

106:                                              ; preds = %135, %102
  %107 = phi ptr [ %108, %135 ], [ %104, %102 ]
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.list_head, ptr %107, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.list_head, ptr %108, i32 0, i32 1
  store ptr %110, ptr %111, align 4
  store volatile ptr %108, ptr %110, align 4
  store volatile ptr %107, ptr %107, align 4
  store ptr %107, ptr %109, align 4
  %112 = getelementptr inbounds %struct.xhci_td, ptr %107, i32 0, i32 1
  %113 = load volatile ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, %112
  br i1 %114, label %119, label %115

115:                                              ; preds = %106
  %116 = getelementptr inbounds %struct.xhci_td, ptr %107, i32 0, i32 1, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.list_head, ptr %113, i32 0, i32 1
  store ptr %117, ptr %118, align 4
  store volatile ptr %113, ptr %117, align 4
  store volatile ptr %112, ptr %112, align 4
  store ptr %112, ptr %116, align 4
  br label %119

119:                                              ; preds = %115, %106
  tail call fastcc void @xhci_unmap_td_bounce_buffer(ptr noundef %0, ptr noundef nonnull %100, ptr noundef %107) #12
  %120 = getelementptr inbounds %struct.xhci_td, ptr %107, i32 0, i32 4
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.urb, ptr %121, i32 0, i32 2
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.urb_priv, ptr %123, i32 0, i32 1
  %125 = load i32, ptr %124, align 4
  %126 = add i32 %125, 1
  store i32 %126, ptr %124, align 4
  %127 = load ptr, ptr %120, align 4
  %128 = getelementptr inbounds %struct.urb, ptr %127, i32 0, i32 2
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.urb_priv, ptr %129, i32 0, i32 1
  %131 = load i32, ptr %130, align 4
  %132 = load i32, ptr %129, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %119
  tail call fastcc void @xhci_giveback_urb_in_irq(ptr noundef %0, ptr noundef %107, i32 noundef -108) #12
  br label %135

135:                                              ; preds = %134, %119
  %136 = icmp eq ptr %108, %103
  br i1 %136, label %137, label %106

137:                                              ; preds = %135, %102, %92, %44
  %138 = getelementptr %struct.xhci_virt_device, ptr %38, i32 0, i32 4, i32 %39, i32 6
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, %138
  br i1 %140, label %165, label %141

141:                                              ; preds = %163, %137
  %142 = phi ptr [ %143, %163 ], [ %139, %137 ]
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.list_head, ptr %142, i32 0, i32 1
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr inbounds %struct.list_head, ptr %143, i32 0, i32 1
  store ptr %145, ptr %146, align 4
  store volatile ptr %143, ptr %145, align 4
  store volatile ptr %142, ptr %142, align 4
  store ptr %142, ptr %144, align 4
  %147 = getelementptr i8, ptr %142, i32 16
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr inbounds %struct.urb, ptr %148, i32 0, i32 2
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.urb_priv, ptr %150, i32 0, i32 1
  %152 = load i32, ptr %151, align 4
  %153 = add i32 %152, 1
  store i32 %153, ptr %151, align 4
  %154 = load ptr, ptr %147, align 4
  %155 = getelementptr inbounds %struct.urb, ptr %154, i32 0, i32 2
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr inbounds %struct.urb_priv, ptr %156, i32 0, i32 1
  %158 = load i32, ptr %157, align 4
  %159 = load i32, ptr %156, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %141
  %162 = getelementptr i8, ptr %142, i32 -8
  tail call fastcc void @xhci_giveback_urb_in_irq(ptr noundef %0, ptr noundef %162, i32 noundef -108) #12
  br label %163

163:                                              ; preds = %161, %141
  %164 = icmp eq ptr %143, %138
  br i1 %164, label %165, label %141

165:                                              ; preds = %163, %137, %98
  %166 = add nuw nsw i32 %39, 1
  %167 = icmp eq i32 %166, 31
  br i1 %167, label %170, label %168

168:                                              ; preds = %165
  %169 = load ptr, ptr %34, align 4
  br label %37

170:                                              ; preds = %165, %32
  %171 = add nuw nsw i32 %33, 1
  %172 = load i32, ptr %31, align 4
  %173 = and i32 %172, 255
  %174 = icmp ult i32 %33, %173
  br i1 %174, label %32, label %175

175:                                              ; preds = %170
  %176 = load i32, ptr %2, align 4
  %177 = and i32 %176, 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %175
  %180 = load ptr, ptr %0, align 8
  tail call void @usb_hc_died(ptr noundef %180) #12
  br label %181

181:                                              ; preds = %179, %175, %1
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_cleanup_command_queue(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 35
  store ptr null, ptr %2, align 4
  %3 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 31
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %21, label %6

6:                                                ; preds = %19, %1
  %7 = phi ptr [ %8, %19 ], [ %4, %1 ]
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %7, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  store volatile ptr %8, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  %12 = getelementptr i8, ptr %7, i32 -8
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %6
  %16 = getelementptr i8, ptr %7, i32 -16
  store i32 25, ptr %16, align 4
  tail call void @complete(ptr noundef nonnull %13) #12
  br label %19

17:                                               ; preds = %6
  %18 = getelementptr i8, ptr %7, i32 -20
  tail call void @kfree(ptr noundef %18) #12
  br label %19

19:                                               ; preds = %17, %15
  %20 = icmp eq ptr %8, %3
  br i1 %20, label %21, label %6

21:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hc_died(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_stop_endpoint_command_watchdog(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca [500 x i8], align 1
  %3 = getelementptr i8, ptr %0, i32 20
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(500) %2, i8 0, i32 500, i1 false), !annotation !20
  %5 = getelementptr inbounds %struct.xhci_hcd, ptr %4, i32 0, i32 12
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #12
  %7 = getelementptr i8, ptr %0, i32 -12
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #12
  br label %90

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.xhci_hcd, ptr %4, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.xhci_op_regs, ptr %18, i32 0, i32 1
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #12, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !21
  %21 = load ptr, ptr %4, align 8
  %22 = load ptr, ptr %21, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.3) #11
  %23 = load ptr, ptr %4, align 8
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq i32 %20, -1
  br i1 %25, label %85, label %26

26:                                               ; preds = %16
  %27 = and i32 %20, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %2, ptr noundef nonnull align 1 dereferenceable(10) @.str.17, i32 10, i1 false) #12
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi i32 [ 9, %29 ], [ 0, %26 ]
  %32 = and i32 %20, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %2, i32 %31
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %35, ptr noundef nonnull align 1 dereferenceable(5) @.str.18, i32 5, i1 false) #12
  %36 = or i32 %31, 4
  br label %37

37:                                               ; preds = %34, %30
  %38 = phi i32 [ %36, %34 ], [ %31, %30 ]
  %39 = and i32 %20, 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = getelementptr i8, ptr %2, i32 %38
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %42, ptr noundef nonnull align 1 dereferenceable(6) @.str.19, i32 6, i1 false) #12
  %43 = add nsw i32 %38, 5
  br label %44

44:                                               ; preds = %41, %37
  %45 = phi i32 [ %43, %41 ], [ %38, %37 ]
  %46 = and i32 %20, 16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = getelementptr i8, ptr %2, i32 %45
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %49, ptr noundef nonnull align 1 dereferenceable(5) @.str.20, i32 5, i1 false) #12
  %50 = add nsw i32 %45, 4
  br label %51

51:                                               ; preds = %48, %44
  %52 = phi i32 [ %50, %48 ], [ %45, %44 ]
  %53 = and i32 %20, 256
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = getelementptr i8, ptr %2, i32 %52
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %56, ptr noundef nonnull align 1 dereferenceable(5) @.str.21, i32 5, i1 false) #12
  %57 = add i32 %52, 4
  br label %58

58:                                               ; preds = %55, %51
  %59 = phi i32 [ %57, %55 ], [ %52, %51 ]
  %60 = and i32 %20, 512
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = getelementptr i8, ptr %2, i32 %59
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %63, ptr noundef nonnull align 1 dereferenceable(5) @.str.22, i32 5, i1 false) #12
  %64 = add i32 %59, 4
  br label %65

65:                                               ; preds = %62, %58
  %66 = phi i32 [ %64, %62 ], [ %59, %58 ]
  %67 = and i32 %20, 1024
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = getelementptr i8, ptr %2, i32 %66
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %70, ptr noundef nonnull align 1 dereferenceable(5) @.str.23, i32 5, i1 false) #12
  %71 = add i32 %66, 4
  br label %72

72:                                               ; preds = %69, %65
  %73 = phi i32 [ %71, %69 ], [ %66, %65 ]
  %74 = and i32 %20, 2048
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = getelementptr i8, ptr %2, i32 %73
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %77, ptr noundef nonnull align 1 dereferenceable(5) @.str.24, i32 5, i1 false) #12
  %78 = add i32 %73, 4
  br label %79

79:                                               ; preds = %76, %72
  %80 = phi i32 [ %78, %76 ], [ %73, %72 ]
  %81 = and i32 %20, 4096
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = getelementptr i8, ptr %2, i32 %80
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %84, ptr noundef nonnull align 1 dereferenceable(5) @.str.25, i32 5, i1 false) #12
  br label %85

85:                                               ; preds = %83, %79, %16
  %86 = phi ptr [ @.str.16, %16 ], [ %2, %83 ], [ %2, %79 ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.4, ptr noundef nonnull %86) #11
  %87 = load i32, ptr %7, align 4
  %88 = and i32 %87, -5
  store i32 %88, ptr %7, align 4
  %89 = call i32 @xhci_halt(ptr noundef %4) #12
  call void @xhci_hc_died(ptr noundef %4)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #12
  call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %4, ptr noundef nonnull @trace_xhci_dbg_cancel_urb, ptr noundef nonnull @.str.5) #12
  br label %90

90:                                               ; preds = %85, %15
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %2) #12
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_halt(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_dbg_trace(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_xhci_dbg_cancel_urb(ptr noundef %0) #6 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_cancel_urb, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #12
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !22
  %16 = tail call i32 @__traceiter_xhci_dbg_cancel_urb(ptr noundef null, ptr noundef %0) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !23
  br label %17

17:                                               ; preds = %15, %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_handle_command_timeout(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 -120
  %3 = getelementptr i8, ptr %0, i32 -72
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #12
  %5 = getelementptr i8, ptr %0, i32 60
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %150, label %8

8:                                                ; preds = %1
  %9 = load volatile i32, ptr %0, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %150

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.xhci_command, ptr %6, i32 0, i32 1
  store i32 25, ptr %13, align 4
  %14 = getelementptr i8, ptr %0, i32 -108
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.xhci_op_regs, ptr %15, i32 0, i32 6
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #12, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !24
  %18 = getelementptr i32, ptr %16, i32 1
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #12, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !25
  %20 = zext i32 %17 to i64
  %21 = zext i32 %19 to i64
  %22 = shl nuw i64 %21, 32
  %23 = or i64 %22, %20
  %24 = icmp eq i64 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  tail call void @xhci_hc_died(ptr noundef %2)
  br label %150

26:                                               ; preds = %12
  %27 = getelementptr i8, ptr %0, i32 -16
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  %31 = and i64 %20, 8
  %32 = icmp eq i64 %31, 0
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %124, label %34

34:                                               ; preds = %26
  store i32 2, ptr %27, align 8
  %35 = getelementptr i8, ptr %0, i32 -20
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.xhci_ring, ptr %36, i32 0, i32 5
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.xhci_ring, ptr %36, i32 0, i32 4
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %0, i32 44
  store i32 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.xhci_link_trb, ptr %40, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 64512
  %45 = icmp eq i32 %44, 6144
  br i1 %45, label %46, label %50

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.xhci_segment, ptr %38, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %48, align 4
  br label %52

50:                                               ; preds = %34
  %51 = getelementptr %union.xhci_trb, ptr %40, i32 1
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi ptr [ %48, %46 ], [ %38, %50 ]
  %54 = phi ptr [ %49, %46 ], [ %51, %50 ]
  %55 = getelementptr inbounds %struct.xhci_link_trb, ptr %54, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 64512
  %58 = icmp eq i32 %57, 6144
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.xhci_segment, ptr %53, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = load ptr, ptr %61, align 4
  br label %63

63:                                               ; preds = %59, %52
  %64 = phi ptr [ %61, %59 ], [ %53, %52 ]
  %65 = phi ptr [ %62, %59 ], [ %54, %52 ]
  %66 = icmp ne ptr %64, null
  %67 = icmp ne ptr %65, null
  %68 = and i1 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %63
  %70 = load ptr, ptr %64, align 4
  %71 = icmp ugt ptr %70, %65
  br i1 %71, label %82, label %72

72:                                               ; preds = %69
  %73 = ptrtoint ptr %65 to i32
  %74 = ptrtoint ptr %70 to i32
  %75 = sub i32 %73, %74
  %76 = icmp ugt i32 %75, 4080
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.xhci_segment, ptr %64, i32 0, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, %75
  %81 = or i32 %80, 4
  br label %82

82:                                               ; preds = %77, %72, %69, %63
  %83 = phi i32 [ %81, %77 ], [ 4, %69 ], [ 4, %63 ], [ 4, %72 ]
  %84 = load ptr, ptr %14, align 4
  %85 = getelementptr inbounds %struct.xhci_op_regs, ptr %84, i32 0, i32 6
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !26
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %83) #12, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !27
  tail call void @arm_heavy_mb() #12
  %86 = getelementptr i8, ptr %85, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 0) #12, !srcloc !13
  %87 = load ptr, ptr %14, align 4
  %88 = getelementptr inbounds %struct.xhci_op_regs, ptr %87, i32 0, i32 6
  %89 = tail call i32 @xhci_handshake(ptr noundef %88, i32 noundef 8, i32 noundef 0, i32 noundef 5000000) #12
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %82
  %92 = load ptr, ptr %2, align 8
  %93 = load ptr, ptr %92, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.26, i32 noundef %89) #11
  %94 = tail call i32 @xhci_halt(ptr noundef %2) #12
  tail call void @xhci_hc_died(ptr noundef %2) #12
  br label %150

95:                                               ; preds = %82
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #12
  %96 = tail call i32 @wait_for_completion_timeout(ptr noundef %41, i32 noundef 200) #12
  %97 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #12
  %98 = icmp eq i32 %96, 0
  br i1 %98, label %99, label %118

99:                                               ; preds = %95
  store ptr null, ptr %5, align 4
  %100 = getelementptr i8, ptr %0, i32 -12
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, %100
  br i1 %102, label %150, label %103

103:                                              ; preds = %116, %99
  %104 = phi ptr [ %105, %116 ], [ %101, %99 ]
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr i8, ptr %104, i32 4
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.list_head, ptr %105, i32 0, i32 1
  store ptr %107, ptr %108, align 4
  store volatile ptr %105, ptr %107, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %104, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %106, align 4
  %109 = getelementptr i8, ptr %104, i32 -8
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %103
  %113 = getelementptr i8, ptr %104, i32 -16
  store i32 25, ptr %113, align 4
  tail call void @complete(ptr noundef nonnull %110) #12
  br label %116

114:                                              ; preds = %103
  %115 = getelementptr i8, ptr %104, i32 -20
  tail call void @kfree(ptr noundef %115) #12
  br label %116

116:                                              ; preds = %114, %112
  %117 = icmp eq ptr %105, %100
  br i1 %117, label %150, label %103

118:                                              ; preds = %95
  %119 = getelementptr i8, ptr %0, i32 -12
  %120 = load volatile ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, %119
  %122 = getelementptr i8, ptr %120, i32 -20
  %123 = select i1 %121, ptr null, ptr %122
  tail call fastcc void @xhci_handle_stopped_cmd_ring(ptr noundef %2, ptr noundef %123) #12
  br label %150

124:                                              ; preds = %26
  %125 = getelementptr i8, ptr %0, i32 1164
  %126 = load i32, ptr %125, align 4
  %127 = and i32 %126, 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %148, label %129

129:                                              ; preds = %124
  store ptr null, ptr %5, align 4
  %130 = getelementptr i8, ptr %0, i32 -12
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, %130
  br i1 %132, label %150, label %133

133:                                              ; preds = %146, %129
  %134 = phi ptr [ %135, %146 ], [ %131, %129 ]
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr i8, ptr %134, i32 4
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.list_head, ptr %135, i32 0, i32 1
  store ptr %137, ptr %138, align 4
  store volatile ptr %135, ptr %137, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %134, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %136, align 4
  %139 = getelementptr i8, ptr %134, i32 -8
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %144, label %142

142:                                              ; preds = %133
  %143 = getelementptr i8, ptr %134, i32 -16
  store i32 25, ptr %143, align 4
  tail call void @complete(ptr noundef nonnull %140) #12
  br label %146

144:                                              ; preds = %133
  %145 = getelementptr i8, ptr %134, i32 -20
  tail call void @kfree(ptr noundef %145) #12
  br label %146

146:                                              ; preds = %144, %142
  %147 = icmp eq ptr %135, %130
  br i1 %147, label %150, label %133

148:                                              ; preds = %124
  %149 = load ptr, ptr %5, align 4
  tail call fastcc void @xhci_handle_stopped_cmd_ring(ptr noundef %2, ptr noundef %149)
  br label %150

150:                                              ; preds = %148, %146, %129, %118, %116, %99, %91, %25, %8, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xhci_handle_stopped_cmd_ring(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 31
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %30, label %6

6:                                                ; preds = %27, %2
  %7 = phi ptr [ %28, %27 ], [ %4, %2 ]
  %8 = getelementptr i8, ptr %7, i32 -16
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 25
  br i1 %10, label %11, label %27

11:                                               ; preds = %6
  store i32 24, ptr %8, align 4
  %12 = getelementptr i8, ptr %7, i32 -4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.xhci_link_trb, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 64512
  %17 = icmp eq i32 %16, 6144
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = and i32 %15, -17
  br label %25

20:                                               ; preds = %11
  store i32 0, ptr %13, align 8
  %21 = getelementptr [4 x i32], ptr %13, i32 0, i32 1
  store i32 0, ptr %21, align 4
  %22 = getelementptr [4 x i32], ptr %13, i32 0, i32 2
  store i32 0, ptr %22, align 8
  %23 = and i32 %15, 1
  %24 = or i32 %23, 23552
  br label %25

25:                                               ; preds = %20, %18
  %26 = phi i32 [ %24, %20 ], [ %19, %18 ]
  store i32 %26, ptr %14, align 4
  br label %27

27:                                               ; preds = %25, %6
  %28 = load ptr, ptr %7, align 4
  %29 = icmp eq ptr %28, %3
  br i1 %29, label %30, label %6

30:                                               ; preds = %27, %2
  %31 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 30
  store i32 1, ptr %31, align 8
  %32 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 29
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.xhci_ring, ptr %33, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.xhci_ring, ptr %33, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %35, %37
  br i1 %38, label %73, label %39

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 48
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %73

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 35
  store ptr %1, ptr %45, align 4
  %46 = load ptr, ptr @system_wq, align 4
  %47 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 33
  %48 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %46, ptr noundef %47, i32 noundef 500) #12
  %49 = load i32, ptr %31, align 8
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %73, label %52

52:                                               ; preds = %44
  %53 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_ring_host_doorbell, i32 0, i32 1), align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = tail call ptr @llvm.thread.pointer() #12
  %57 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %58 = load i32, ptr %57, align 8
  %59 = lshr i32 %58, 5
  %60 = getelementptr i32, ptr @__cpu_online_mask, i32 %59
  %61 = load volatile i32, ptr %60, align 4
  %62 = and i32 %58, 31
  %63 = shl nuw i32 1, %62
  %64 = and i32 %63, %61
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %55
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %67 = tail call i32 @__traceiter_xhci_ring_host_doorbell(ptr noundef null, i32 noundef 0, i32 noundef 0) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  br label %68

68:                                               ; preds = %66, %55, %52
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %69 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 5
  %70 = load ptr, ptr %69, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 0) #12, !srcloc !13
  %71 = load ptr, ptr %69, align 4
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #12, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !15
  br label %73

73:                                               ; preds = %68, %44, %39, %30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @trb_in_td(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #2 {
  %7 = icmp ne ptr %1, null
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = load ptr, ptr %1, align 4
  %12 = icmp ugt ptr %11, %2
  br i1 %12, label %22, label %13

13:                                               ; preds = %10
  %14 = ptrtoint ptr %2 to i32
  %15 = ptrtoint ptr %11 to i32
  %16 = sub i32 %14, %15
  %17 = icmp ugt i32 %16, 4080
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.xhci_segment, ptr %1, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %16
  br label %22

22:                                               ; preds = %18, %13, %10, %6
  %23 = phi i32 [ %21, %18 ], [ 0, %10 ], [ 0, %6 ], [ 0, %13 ]
  %24 = icmp ne ptr %3, null
  %25 = ptrtoint ptr %3 to i32
  %26 = zext i32 %4 to i64
  br label %27

27:                                               ; preds = %101, %22
  %28 = phi i32 [ %23, %22 ], [ %102, %101 ]
  %29 = phi ptr [ %1, %22 ], [ %93, %101 ]
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %104, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %29, align 4
  %33 = getelementptr %union.xhci_trb, ptr %32, i32 255
  %34 = icmp ne ptr %29, null
  %35 = icmp ne ptr %33, null
  %36 = and i1 %34, %35
  %37 = xor i1 %36, true
  %38 = icmp ugt ptr %32, %33
  %39 = select i1 %37, i1 true, i1 %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.xhci_segment, ptr %29, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, 4080
  br label %44

44:                                               ; preds = %40, %31
  %45 = phi i32 [ %43, %40 ], [ 0, %31 ]
  %46 = and i1 %24, %34
  %47 = xor i1 %46, true
  %48 = icmp ugt ptr %32, %3
  %49 = select i1 %47, i1 true, i1 %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %44
  %51 = ptrtoint ptr %32 to i32
  %52 = sub i32 %25, %51
  %53 = icmp ugt i32 %52, 4080
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.xhci_segment, ptr %29, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, %52
  br label %58

58:                                               ; preds = %54, %50, %44
  %59 = phi i32 [ %57, %54 ], [ 0, %44 ], [ 0, %50 ]
  br i1 %5, label %60, label %69

60:                                               ; preds = %58
  %61 = load ptr, ptr %0, align 8
  %62 = load ptr, ptr %61, align 8
  %63 = zext i32 %28 to i64
  %64 = zext i32 %59 to i64
  %65 = getelementptr inbounds %struct.xhci_segment, ptr %29, i32 0, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = zext i32 %66 to i64
  %68 = zext i32 %45 to i64
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %62, ptr noundef nonnull @.str.6, i64 noundef %26, i64 noundef %63, i64 noundef %64, i64 noundef %67, i64 noundef %68) #11
  br label %69

69:                                               ; preds = %60, %58
  %70 = icmp eq i32 %59, 0
  br i1 %70, label %87, label %71

71:                                               ; preds = %69
  %72 = icmp ugt i32 %28, %59
  %73 = icmp ugt i32 %28, %4
  br i1 %72, label %77, label %74

74:                                               ; preds = %71
  %75 = icmp ult i32 %59, %4
  %76 = select i1 %73, i1 true, i1 %75
  br i1 %76, label %86, label %104

77:                                               ; preds = %71
  %78 = icmp ult i32 %45, %4
  %79 = select i1 %73, i1 true, i1 %78
  br i1 %79, label %80, label %104

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.xhci_segment, ptr %29, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = icmp ugt i32 %82, %4
  %84 = icmp ult i32 %59, %4
  %85 = select i1 %83, i1 true, i1 %84
  br i1 %85, label %86, label %104

86:                                               ; preds = %80, %74
  br label %104

87:                                               ; preds = %69
  %88 = icmp ugt i32 %28, %4
  %89 = icmp ult i32 %45, %4
  %90 = select i1 %88, i1 true, i1 %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.xhci_segment, ptr %29, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = load ptr, ptr %93, align 4
  %95 = icmp ne ptr %93, null
  %96 = icmp ne ptr %94, null
  %97 = and i1 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.xhci_segment, ptr %93, i32 0, i32 2
  %100 = load i32, ptr %99, align 4
  br label %101

101:                                              ; preds = %98, %91
  %102 = phi i32 [ %100, %98 ], [ 0, %91 ]
  %103 = icmp eq ptr %93, %1
  br i1 %103, label %104, label %27

104:                                              ; preds = %101, %87, %86, %80, %77, %74, %27
  %105 = phi ptr [ null, %86 ], [ %29, %74 ], [ %29, %80 ], [ %29, %77 ], [ null, %101 ], [ %29, %87 ], [ null, %27 ]
  ret ptr %105
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @xhci_is_vendor_info_code(ptr nocapture readnone %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = and i32 %1, -32
  %4 = icmp eq i32 %3, 224
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_irq(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #12
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %6, %4 ], [ %0, %1 ]
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 0, i32 29
  %10 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 1, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %10) #12
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 1, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.xhci_op_regs, ptr %12, i32 0, i32 1
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #12, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !28
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %7
  tail call void @xhci_hc_died(ptr noundef %9)
  br label %987

17:                                               ; preds = %7
  %18 = and i32 %14, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %987, label %20

20:                                               ; preds = %17
  %21 = and i32 %14, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %9, align 8
  %25 = load ptr, ptr %24, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.7) #11
  %26 = tail call i32 @xhci_halt(ptr noundef %9) #12
  br label %987

27:                                               ; preds = %20
  %28 = or i32 %14, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !29
  tail call void @arm_heavy_mb() #12
  %29 = load ptr, ptr %11, align 4
  %30 = getelementptr inbounds %struct.xhci_op_regs, ptr %29, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #12, !srcloc !13
  %31 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 14
  %32 = load i16, ptr %31, align 8
  %33 = and i16 %32, 8
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 1, i32 0, i32 8
  %37 = load ptr, ptr %36, align 8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #12, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !30
  %39 = or i32 %38, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !31
  tail call void @arm_heavy_mb() #12
  %40 = load ptr, ptr %36, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %39) #12, !srcloc !13
  br label %41

41:                                               ; preds = %35, %27
  %42 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 4, i32 20, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 3
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 1, i32 0, i32 8
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.xhci_intr_reg, ptr %48, i32 0, i32 5
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #12, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !24
  %51 = getelementptr i32, ptr %49, i32 1
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #12, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !25
  %53 = or i32 %50, 8
  %54 = load ptr, ptr %47, align 8
  %55 = getelementptr inbounds %struct.xhci_intr_reg, ptr %54, i32 0, i32 5
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !26
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #12, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !27
  tail call void @arm_heavy_mb() #12
  %56 = getelementptr i8, ptr %55, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %52) #12, !srcloc !13
  br label %987

57:                                               ; preds = %41
  %58 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 1, i32 10
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.xhci_ring, ptr %59, i32 0, i32 4
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %59, null
  br i1 %62, label %79, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 4, i32 21, i32 3, i32 1
  %65 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 1, i32 0, i32 9
  %66 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 4, i32 21, i32 3, i32 5
  %67 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 8, i32 0, i32 10, i32 0, i32 3
  %68 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 1, i32 0, i32 1
  %69 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 1, i32 0, i32 11
  %70 = icmp eq ptr %61, null
  br i1 %70, label %79, label %82

71:                                               ; preds = %984, %981, %978
  %72 = phi i32 [ %979, %978 ], [ 0, %984 ], [ 0, %981 ]
  %73 = load ptr, ptr %58, align 8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.xhci_ring, ptr %73, i32 0, i32 4
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %75, %71, %63, %57
  %80 = load ptr, ptr %9, align 8
  %81 = load ptr, ptr %80, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.27) #11
  br label %986

82:                                               ; preds = %75, %63
  %83 = phi ptr [ %73, %75 ], [ %59, %63 ]
  %84 = phi i32 [ %72, %75 ], [ 0, %63 ]
  %85 = phi ptr [ %77, %75 ], [ %61, %63 ]
  %86 = getelementptr %struct.xhci_event_cmd, ptr %85, i32 0, i32 2
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, 1
  %89 = getelementptr inbounds %struct.xhci_ring, ptr %83, i32 0, i32 7
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %986

92:                                               ; preds = %82
  %93 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_handle_event, i32 0, i32 1), align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %92
  %96 = tail call ptr @llvm.thread.pointer() #12
  %97 = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 2
  %98 = load i32, ptr %97, align 8
  %99 = lshr i32 %98, 5
  %100 = getelementptr i32, ptr @__cpu_online_mask, i32 %99
  %101 = load volatile i32, ptr %100, align 4
  %102 = and i32 %98, 31
  %103 = shl nuw i32 1, %102
  %104 = and i32 %103, %101
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %95
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !32
  %107 = tail call i32 @__traceiter_xhci_handle_event(ptr noundef null, ptr noundef nonnull %83, ptr noundef nonnull %85) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !33
  br label %108

108:                                              ; preds = %106, %95, %92
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !34
  %109 = load i32, ptr %86, align 4
  %110 = lshr i32 %109, 10
  %111 = and i32 %110, 63
  switch i32 %111, label %956 [
    i32 33, label %112
    i32 34, label %113
    i32 32, label %351
    i32 38, label %936
  ]

112:                                              ; preds = %108
  tail call fastcc void @handle_cmd_completion(ptr noundef %9, ptr noundef nonnull %85) #12
  br label %968

113:                                              ; preds = %108
  %114 = getelementptr [4 x i32], ptr %85, i32 0, i32 2
  %115 = load i32, ptr %114, align 8
  %116 = and i32 %115, -16777216
  %117 = icmp eq i32 %116, 16777216
  br i1 %117, label %121, label %118

118:                                              ; preds = %113
  %119 = load ptr, ptr %9, align 8
  %120 = load ptr, ptr %119, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %120, ptr noundef nonnull @.str.61) #11
  br label %121

121:                                              ; preds = %118, %113
  %122 = load i32, ptr %85, align 8
  %123 = lshr i32 %122, 24
  %124 = icmp ult i32 %122, 16777216
  br i1 %124, label %130, label %125

125:                                              ; preds = %121
  %126 = load i32, ptr %65, align 4
  %127 = lshr i32 %126, 24
  %128 = and i32 %127, 127
  %129 = icmp ugt i32 %123, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %125, %121
  %131 = load ptr, ptr %9, align 8
  %132 = load ptr, ptr %131, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %132, ptr noundef nonnull @.str.62, i32 noundef %123) #11
  %133 = load ptr, ptr %58, align 8
  tail call void @inc_deq(ptr noundef %9, ptr noundef %133) #12
  br label %974

134:                                              ; preds = %125
  %135 = load ptr, ptr %66, align 8
  %136 = add nsw i32 %123, -1
  %137 = getelementptr %struct.xhci_port, ptr %135, i32 %136
  %138 = icmp eq ptr %137, null
  br i1 %138, label %147, label %139

139:                                              ; preds = %134
  %140 = getelementptr %struct.xhci_port, ptr %135, i32 %136, i32 3
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %147, label %143

143:                                              ; preds = %139
  %144 = getelementptr %struct.xhci_port, ptr %135, i32 %136, i32 2
  %145 = load i32, ptr %144, align 4
  %146 = icmp eq i32 %145, 255
  br i1 %146, label %147, label %150

147:                                              ; preds = %143, %139, %134
  %148 = load ptr, ptr %9, align 8
  %149 = load ptr, ptr %148, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %149, ptr noundef nonnull @.str.63, i32 noundef %123) #11
  br label %343

150:                                              ; preds = %143
  %151 = icmp eq ptr %141, %67
  br i1 %151, label %152, label %155

152:                                              ; preds = %150
  %153 = load ptr, ptr %68, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %343, label %155

155:                                              ; preds = %152, %150
  %156 = getelementptr inbounds %struct.xhci_hub, ptr %141, i32 0, i32 2
  %157 = load ptr, ptr %156, align 4
  %158 = load ptr, ptr %137, align 4
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %158) #12, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !35
  %160 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_handle_port_status, i32 0, i32 1), align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %175

162:                                              ; preds = %155
  %163 = tail call ptr @llvm.thread.pointer() #12
  %164 = getelementptr inbounds %struct.thread_info, ptr %163, i32 0, i32 2
  %165 = load i32, ptr %164, align 8
  %166 = lshr i32 %165, 5
  %167 = getelementptr i32, ptr @__cpu_online_mask, i32 %166
  %168 = load volatile i32, ptr %167, align 4
  %169 = and i32 %165, 31
  %170 = shl nuw i32 1, %169
  %171 = and i32 %170, %168
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %162
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !36
  %174 = tail call i32 @__traceiter_xhci_handle_port_status(ptr noundef null, i32 noundef %145, i32 noundef %159) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !37
  br label %175

175:                                              ; preds = %173, %162, %155
  %176 = getelementptr inbounds %struct.usb_hcd, ptr %157, i32 0, i32 27
  %177 = load i32, ptr %176, align 8
  %178 = icmp eq i32 %177, 4
  br i1 %178, label %179, label %180

179:                                              ; preds = %175
  tail call void @usb_hcd_resume_root_hub(ptr noundef %157) #12
  br label %180

180:                                              ; preds = %179, %175
  %181 = getelementptr inbounds %struct.usb_hcd, ptr %157, i32 0, i32 3
  %182 = load i32, ptr %181, align 8
  %183 = icmp sgt i32 %182, 63
  %184 = and i32 %159, 480
  %185 = icmp eq i32 %184, 192
  %186 = select i1 %183, i1 %185, i1 false
  br i1 %186, label %187, label %203

187:                                              ; preds = %180
  %188 = trunc i32 %145 to i16
  %189 = add i16 %188, 1
  %190 = tail call i32 @xhci_find_slot_id_by_port(ptr noundef %157, ptr noundef %9, i16 noundef zeroext %189) #12
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %200, label %192

192:                                              ; preds = %187
  %193 = getelementptr %struct.xhci_hcd, ptr %9, i32 0, i32 42, i32 %190
  %194 = load ptr, ptr %193, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %200, label %196

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.xhci_virt_device, ptr %194, i32 0, i32 9
  %198 = load i32, ptr %197, align 4
  %199 = or i32 %198, 1
  store i32 %199, ptr %197, align 4
  br label %200

200:                                              ; preds = %196, %192, %187
  %201 = and i32 %159, 4194304
  %202 = icmp eq i32 %201, 0
  br label %243

203:                                              ; preds = %180
  %204 = and i32 %159, 4194304
  %205 = icmp eq i32 %204, 0
  %206 = xor i1 %205, true
  %207 = icmp eq i32 %184, 480
  %208 = select i1 %206, i1 %207, i1 false
  br i1 %208, label %209, label %243

209:                                              ; preds = %203
  %210 = load ptr, ptr %11, align 4
  %211 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %210) #12, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !38
  %212 = and i32 %211, 1
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %209
  %215 = load ptr, ptr %9, align 8
  %216 = load ptr, ptr %215, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %216, ptr noundef nonnull @.str.64) #11
  %217 = load ptr, ptr %58, align 8
  tail call void @inc_deq(ptr noundef %9, ptr noundef %217) #12
  br label %347

218:                                              ; preds = %209
  %219 = and i32 %159, 12288
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %226, label %221

221:                                              ; preds = %218
  %222 = shl nuw i32 1, %145
  %223 = getelementptr inbounds %struct.xhci_hub, ptr %141, i32 0, i32 3, i32 4
  %224 = load i32, ptr %223, align 4
  %225 = or i32 %224, %222
  store i32 %225, ptr %223, align 4
  tail call void @xhci_test_and_clear_bit(ptr noundef %9, ptr noundef nonnull %137, i32 noundef 4194304) #12
  tail call void @usb_hcd_start_port_resume(ptr noundef %157, i32 noundef %145) #12
  tail call void @xhci_set_link_state(ptr noundef %9, ptr noundef nonnull %137, i32 noundef 0) #12
  br label %343

226:                                              ; preds = %218
  %227 = getelementptr inbounds %struct.xhci_hub, ptr %141, i32 0, i32 3, i32 6
  %228 = lshr i32 %145, 5
  %229 = getelementptr i32, ptr %227, i32 %228
  %230 = load volatile i32, ptr %229, align 4
  %231 = and i32 %145, 31
  %232 = shl nuw i32 1, %231
  %233 = and i32 %230, %232
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %243

235:                                              ; preds = %226
  %236 = load volatile i32, ptr @jiffies, align 64
  %237 = add i32 %236, 4
  %238 = getelementptr %struct.xhci_hub, ptr %141, i32 0, i32 3, i32 5, i32 %145
  store i32 %237, ptr %238, align 4
  tail call void @_set_bit(i32 noundef %145, ptr noundef %227) #12
  %239 = getelementptr inbounds %struct.usb_hcd, ptr %157, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 2, ptr noundef %239) #12
  %240 = getelementptr inbounds %struct.usb_hcd, ptr %157, i32 0, i32 5
  %241 = load i32, ptr %238, align 4
  %242 = tail call i32 @mod_timer(ptr noundef %240, i32 noundef %241) #12
  tail call void @usb_hcd_start_port_resume(ptr noundef %157, i32 noundef %145) #12
  br label %243

243:                                              ; preds = %235, %226, %203, %200
  %244 = phi i1 [ %205, %226 ], [ %205, %235 ], [ %205, %203 ], [ %202, %200 ]
  %245 = phi i1 [ false, %226 ], [ true, %235 ], [ false, %203 ], [ false, %200 ]
  %246 = and i32 %159, 12288
  %247 = icmp eq i32 %246, 0
  %248 = or i1 %247, %244
  br i1 %248, label %270, label %249

249:                                              ; preds = %243
  switch i32 %184, label %270 [
    i32 0, label %250
    i32 32, label %250
    i32 64, label %250
  ]

250:                                              ; preds = %249, %249, %249
  %251 = getelementptr %struct.xhci_hub, ptr %141, i32 0, i32 3, i32 9, i32 %145
  tail call void @complete(ptr noundef %251) #12
  %252 = add i32 %145, 1
  %253 = trunc i32 %252 to i16
  %254 = tail call i32 @xhci_find_slot_id_by_port(ptr noundef %157, ptr noundef %9, i16 noundef zeroext %253) #12
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %261, label %256

256:                                              ; preds = %250
  %257 = getelementptr %struct.xhci_hcd, ptr %9, i32 0, i32 42, i32 %254
  %258 = load ptr, ptr %257, align 4
  %259 = icmp eq ptr %258, null
  br i1 %259, label %261, label %260

260:                                              ; preds = %256
  tail call void @xhci_ring_device(ptr noundef %9, i32 noundef %254) #12
  br label %261

261:                                              ; preds = %260, %256, %250
  %262 = getelementptr inbounds %struct.xhci_hub, ptr %141, i32 0, i32 3, i32 4
  %263 = load i32, ptr %262, align 4
  %264 = shl nuw i32 1, %145
  %265 = and i32 %263, %264
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %270, label %267

267:                                              ; preds = %261
  tail call void @xhci_test_and_clear_bit(ptr noundef %9, ptr noundef nonnull %137, i32 noundef 4194304) #12
  %268 = getelementptr inbounds %struct.usb_bus, ptr %157, i32 0, i32 11
  %269 = load ptr, ptr %268, align 8
  tail call void @usb_wakeup_notification(ptr noundef %269, i32 noundef %252) #12
  br label %343

270:                                              ; preds = %261, %249, %243
  br i1 %247, label %271, label %282

271:                                              ; preds = %270
  %272 = load i32, ptr %181, align 8
  %273 = icmp slt i32 %272, 64
  br i1 %273, label %276, label %274

274:                                              ; preds = %271
  %275 = load ptr, ptr %58, align 8
  tail call void @inc_deq(ptr noundef %9, ptr noundef %275) #12
  br i1 %245, label %974, label %347

276:                                              ; preds = %271
  %277 = getelementptr inbounds %struct.xhci_hub, ptr %141, i32 0, i32 3, i32 7
  %278 = tail call i32 @_test_and_clear_bit(i32 noundef %145, ptr noundef %277) #12
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %282, label %280

280:                                              ; preds = %276
  %281 = getelementptr %struct.xhci_hub, ptr %141, i32 0, i32 3, i32 8, i32 %145
  tail call void @complete(ptr noundef %281) #12
  br label %343

282:                                              ; preds = %276, %270
  %283 = load i32, ptr %181, align 8
  %284 = icmp slt i32 %283, 64
  br i1 %284, label %285, label %345

285:                                              ; preds = %282
  tail call void @xhci_test_and_clear_bit(ptr noundef %9, ptr noundef nonnull %137, i32 noundef 4194304) #12
  %286 = load i64, ptr %64, align 8
  %287 = and i64 %286, 17179869184
  %288 = icmp ne i64 %287, 0
  %289 = and i32 %159, 131072
  %290 = icmp ne i32 %289, 0
  %291 = select i1 %288, i1 %290, i1 false
  %292 = and i32 %159, 1
  %293 = icmp eq i32 %292, 0
  %294 = select i1 %291, i1 %293, i1 false
  br i1 %294, label %295, label %345

295:                                              ; preds = %285
  %296 = load ptr, ptr %9, align 8
  %297 = getelementptr inbounds %struct.usb_hcd, ptr %296, i32 0, i32 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !39
  tail call void @arm_heavy_mb() #12
  %298 = load ptr, ptr %297, align 8
  %299 = getelementptr i8, ptr %298, i32 4168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %299, i32 111) #12, !srcloc !13
  %300 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %300(i32 noundef 2147480) #12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !40
  tail call void @arm_heavy_mb() #12
  %301 = load ptr, ptr %297, align 8
  %302 = getelementptr i8, ptr %301, i32 4168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %302, i32 127) #12, !srcloc !13
  %303 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %303(i32 noundef 42949600) #12
  %304 = load ptr, ptr %297, align 8
  %305 = getelementptr i8, ptr %304, i32 4208
  %306 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %305) #12, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !41
  %307 = and i32 %306, 1
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %345

309:                                              ; preds = %295
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !39
  tail call void @arm_heavy_mb() #12
  %310 = load ptr, ptr %297, align 8
  %311 = getelementptr i8, ptr %310, i32 4168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %311, i32 111) #12, !srcloc !13
  %312 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %312(i32 noundef 2147480) #12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !40
  tail call void @arm_heavy_mb() #12
  %313 = load ptr, ptr %297, align 8
  %314 = getelementptr i8, ptr %313, i32 4168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %314, i32 127) #12, !srcloc !13
  %315 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %315(i32 noundef 42949600) #12
  %316 = load ptr, ptr %297, align 8
  %317 = getelementptr i8, ptr %316, i32 4208
  %318 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %317) #12, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !41
  %319 = and i32 %318, 1
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %345

321:                                              ; preds = %309
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !39
  tail call void @arm_heavy_mb() #12
  %322 = load ptr, ptr %297, align 8
  %323 = getelementptr i8, ptr %322, i32 4168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %323, i32 111) #12, !srcloc !13
  %324 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %324(i32 noundef 2147480) #12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !40
  tail call void @arm_heavy_mb() #12
  %325 = load ptr, ptr %297, align 8
  %326 = getelementptr i8, ptr %325, i32 4168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %326, i32 127) #12, !srcloc !13
  %327 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %327(i32 noundef 42949600) #12
  %328 = load ptr, ptr %297, align 8
  %329 = getelementptr i8, ptr %328, i32 4208
  %330 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %329) #12, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !41
  %331 = and i32 %330, 1
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %345

333:                                              ; preds = %321
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !39
  tail call void @arm_heavy_mb() #12
  %334 = load ptr, ptr %297, align 8
  %335 = getelementptr i8, ptr %334, i32 4168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %335, i32 111) #12, !srcloc !13
  %336 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %336(i32 noundef 2147480) #12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !40
  tail call void @arm_heavy_mb() #12
  %337 = load ptr, ptr %297, align 8
  %338 = getelementptr i8, ptr %337, i32 4168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %338, i32 127) #12, !srcloc !13
  %339 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %339(i32 noundef 42949600) #12
  %340 = load ptr, ptr %297, align 8
  %341 = getelementptr i8, ptr %340, i32 4208
  %342 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %341) #12, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !41
  br label %345

343:                                              ; preds = %280, %267, %221, %152, %147
  %344 = load ptr, ptr %58, align 8
  tail call void @inc_deq(ptr noundef %9, ptr noundef %344) #12
  br label %974

345:                                              ; preds = %333, %321, %309, %295, %285, %282
  %346 = load ptr, ptr %58, align 8
  tail call void @inc_deq(ptr noundef %9, ptr noundef %346) #12
  br i1 %245, label %974, label %347

347:                                              ; preds = %345, %274, %214
  %348 = getelementptr inbounds %struct.usb_hcd, ptr %157, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 2, ptr noundef %348) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !42
  %349 = load i16, ptr %10, align 4
  %350 = add i16 %349, 1
  store i16 %350, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !43
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !44
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !45
  tail call void @usb_hcd_poll_rh_status(ptr noundef %157) #12
  tail call void @_raw_spin_lock(ptr noundef %10) #12
  br label %974

351:                                              ; preds = %108
  %352 = lshr i32 %109, 24
  %353 = lshr i32 %109, 16
  %354 = and i32 %353, 31
  %355 = add nsw i32 %354, -1
  %356 = getelementptr inbounds %struct.xhci_transfer_event, ptr %85, i32 0, i32 1
  %357 = load i32, ptr %356, align 8
  %358 = lshr i32 %357, 24
  %359 = load i64, ptr %85, align 8
  %360 = trunc i64 %359 to i32
  %361 = icmp ult i32 %109, 16777216
  br i1 %361, label %362, label %365

362:                                              ; preds = %351
  %363 = load ptr, ptr %9, align 8
  %364 = load ptr, ptr %363, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %364, ptr noundef nonnull @.str.9, i32 noundef %352) #11
  br label %380

365:                                              ; preds = %351
  %366 = icmp ugt i32 %355, 30
  br i1 %366, label %367, label %370

367:                                              ; preds = %365
  %368 = load ptr, ptr %9, align 8
  %369 = load ptr, ptr %368, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %369, ptr noundef nonnull @.str.10, i32 noundef %355) #11
  br label %380

370:                                              ; preds = %365
  %371 = getelementptr %struct.xhci_hcd, ptr %9, i32 0, i32 42, i32 %352
  %372 = load ptr, ptr %371, align 4
  %373 = icmp eq ptr %372, null
  br i1 %373, label %374, label %377

374:                                              ; preds = %370
  %375 = load ptr, ptr %9, align 8
  %376 = load ptr, ptr %375, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %376, ptr noundef nonnull @.str.11, i32 noundef %352) #11
  br label %380

377:                                              ; preds = %370
  %378 = getelementptr %struct.xhci_virt_device, ptr %372, i32 0, i32 4, i32 %355
  %379 = icmp eq ptr %378, null
  br i1 %379, label %380, label %383

380:                                              ; preds = %377, %374, %367, %362
  %381 = load ptr, ptr %9, align 8
  %382 = load ptr, ptr %381, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %382, ptr noundef nonnull @.str.65) #11
  br label %904

383:                                              ; preds = %377
  %384 = and i64 %359, 4294967295
  %385 = tail call ptr @xhci_dma_to_transfer_ring(ptr noundef nonnull %378, i64 noundef %384) #12
  %386 = load ptr, ptr %378, align 4
  %387 = getelementptr inbounds %struct.xhci_virt_device, ptr %386, i32 0, i32 2
  %388 = load ptr, ptr %387, align 4
  %389 = tail call ptr @xhci_get_ep_ctx(ptr noundef %9, ptr noundef %388, i32 noundef %355) #12
  %390 = load i32, ptr %389, align 8
  %391 = and i32 %390, 7
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %396

393:                                              ; preds = %383
  %394 = load ptr, ptr %9, align 8
  %395 = load ptr, ptr %394, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %395, ptr noundef nonnull @.str.66, i32 noundef %352, i32 noundef %355) #11
  br label %904

396:                                              ; preds = %383
  %397 = icmp eq ptr %385, null
  br i1 %397, label %398, label %405

398:                                              ; preds = %396
  %399 = trunc i32 %358 to i8
  switch i8 %399, label %402 [
    i8 6, label %400
    i8 4, label %400
    i8 10, label %400
    i8 34, label %400
    i8 14, label %891
    i8 15, label %891
    i8 27, label %891
  ]

400:                                              ; preds = %398, %398, %398, %398
  %401 = tail call fastcc i32 @xhci_handle_halted_endpoint(ptr noundef %9, ptr noundef nonnull %378, ptr noundef null, i32 noundef 1) #12
  br label %891

402:                                              ; preds = %398
  %403 = load ptr, ptr %9, align 8
  %404 = load ptr, ptr %403, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %404, ptr noundef nonnull @.str.67, i32 noundef %352, i32 noundef %355) #11
  br label %904

405:                                              ; preds = %396
  %406 = getelementptr %struct.xhci_virt_device, ptr %372, i32 0, i32 4, i32 %355, i32 11
  %407 = load i8, ptr %406, align 4, !range !46
  %408 = icmp eq i8 %407, 0
  br i1 %408, label %417, label %409

409:                                              ; preds = %405
  %410 = getelementptr inbounds %struct.xhci_ring, ptr %385, i32 0, i32 6
  br label %411

411:                                              ; preds = %411, %409
  %412 = phi ptr [ %410, %409 ], [ %414, %411 ]
  %413 = phi i32 [ 0, %409 ], [ %416, %411 ]
  %414 = load ptr, ptr %412, align 4
  %415 = icmp eq ptr %414, %410
  %416 = add i32 %413, 1
  br i1 %415, label %417, label %411

417:                                              ; preds = %411, %405
  %418 = phi i32 [ 0, %405 ], [ %413, %411 ]
  %419 = trunc i32 %358 to i8
  switch i8 %419, label %465 [
    i8 1, label %420
    i8 13, label %470
    i8 26, label %470
    i8 27, label %470
    i8 28, label %470
    i8 6, label %438
    i8 36, label %439
    i8 4, label %440
    i8 3, label %441
    i8 5, label %442
    i8 2, label %445
    i8 18, label %448
    i8 31, label %451
    i8 14, label %454
    i8 15, label %457
    i8 23, label %460
    i8 20, label %461
    i8 22, label %462
  ]

420:                                              ; preds = %417
  %421 = load i32, ptr %356, align 8
  %422 = and i32 %421, 16777215
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %470, label %424

424:                                              ; preds = %420
  %425 = load i64, ptr %64, align 8
  %426 = and i64 %425, 1024
  %427 = icmp eq i64 %426, 0
  br i1 %427, label %428, label %470

428:                                              ; preds = %424
  %429 = getelementptr inbounds %struct.xhci_ring, ptr %385, i32 0, i32 15
  %430 = load i8, ptr %429, align 4, !range !46
  %431 = icmp eq i8 %430, 0
  br i1 %431, label %432, label %470

432:                                              ; preds = %428
  %433 = tail call i32 @___ratelimit(ptr noundef nonnull @handle_tx_event._rs, ptr noundef nonnull @__func__.handle_tx_event) #12
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %470, label %435

435:                                              ; preds = %432
  %436 = load ptr, ptr %9, align 8
  %437 = load ptr, ptr %436, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %437, ptr noundef nonnull @.str.68, i32 noundef %352, i32 noundef %355) #11
  br label %470

438:                                              ; preds = %417
  br label %470

439:                                              ; preds = %417
  br label %470

440:                                              ; preds = %417
  br label %470

441:                                              ; preds = %417
  br label %470

442:                                              ; preds = %417
  %443 = load ptr, ptr %9, align 8
  %444 = load ptr, ptr %443, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %444, ptr noundef nonnull @.str.69, i32 noundef %352, i32 noundef %355) #11
  br label %470

445:                                              ; preds = %417
  %446 = load ptr, ptr %9, align 8
  %447 = load ptr, ptr %446, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %447, ptr noundef nonnull @.str.70, i32 noundef %352, i32 noundef %355) #11
  br label %470

448:                                              ; preds = %417
  %449 = load ptr, ptr %9, align 8
  %450 = load ptr, ptr %449, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %450, ptr noundef nonnull @.str.71, i32 noundef %352, i32 noundef %355) #11
  br label %470

451:                                              ; preds = %417
  %452 = load ptr, ptr %9, align 8
  %453 = load ptr, ptr %452, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %453, ptr noundef nonnull @.str.72, i32 noundef %352, i32 noundef %355) #11
  br label %470

454:                                              ; preds = %417
  %455 = getelementptr inbounds %struct.xhci_ring, ptr %385, i32 0, i32 6
  %456 = load volatile ptr, ptr %455, align 4
  br label %891

457:                                              ; preds = %417
  %458 = getelementptr inbounds %struct.xhci_ring, ptr %385, i32 0, i32 6
  %459 = load volatile ptr, ptr %458, align 4
  br label %891

460:                                              ; preds = %417
  store i8 1, ptr %406, align 4
  br label %891

461:                                              ; preds = %417
  store i8 1, ptr %406, align 4
  br label %891

462:                                              ; preds = %417
  %463 = load ptr, ptr %9, align 8
  %464 = load ptr, ptr %463, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %464, ptr noundef nonnull @.str.73, i32 noundef %352, i32 noundef %355) #11
  br label %470

465:                                              ; preds = %417
  %466 = icmp ult i32 %357, -536870912
  br i1 %466, label %467, label %470

467:                                              ; preds = %465
  %468 = load ptr, ptr %9, align 8
  %469 = load ptr, ptr %468, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %469, ptr noundef nonnull @.str.74, i32 noundef %358, i32 noundef %352, i32 noundef %355) #11
  br label %891

470:                                              ; preds = %891, %465, %462, %451, %448, %445, %442, %441, %440, %439, %438, %435, %432, %428, %424, %420, %417, %417, %417, %417
  %471 = phi i32 [ -71, %462 ], [ -115, %451 ], [ -115, %448 ], [ -63, %445 ], [ -84, %442 ], [ -75, %441 ], [ -71, %440 ], [ -71, %439 ], [ -32, %438 ], [ -115, %417 ], [ -115, %417 ], [ -115, %417 ], [ -115, %417 ], [ -115, %420 ], [ -115, %435 ], [ -115, %432 ], [ -115, %428 ], [ -115, %424 ], [ 0, %465 ], [ %892, %891 ]
  %472 = phi i32 [ 22, %462 ], [ 31, %451 ], [ 18, %448 ], [ 2, %445 ], [ 5, %442 ], [ 3, %441 ], [ 4, %440 ], [ 36, %439 ], [ 6, %438 ], [ %358, %417 ], [ %358, %417 ], [ %358, %417 ], [ %358, %417 ], [ 1, %420 ], [ 1, %435 ], [ 1, %432 ], [ 13, %428 ], [ 13, %424 ], [ %358, %465 ], [ %893, %891 ]
  %473 = phi i32 [ %418, %462 ], [ %418, %451 ], [ %418, %448 ], [ %418, %445 ], [ %418, %442 ], [ %418, %441 ], [ %418, %440 ], [ %418, %439 ], [ %418, %438 ], [ %418, %417 ], [ %418, %417 ], [ %418, %417 ], [ %418, %417 ], [ %418, %420 ], [ %418, %435 ], [ %418, %432 ], [ %418, %428 ], [ %418, %424 ], [ %418, %465 ], [ %894, %891 ]
  %474 = getelementptr inbounds %struct.xhci_ring, ptr %385, i32 0, i32 6
  %475 = load volatile ptr, ptr %474, align 4
  %476 = icmp eq ptr %475, %474
  br i1 %476, label %477, label %501

477:                                              ; preds = %470
  %478 = and i32 %472, -2
  %479 = icmp eq i32 %478, 26
  br i1 %479, label %489, label %480

480:                                              ; preds = %477
  %481 = getelementptr inbounds %struct.xhci_ring, ptr %385, i32 0, i32 15
  %482 = load i8, ptr %481, align 4, !range !46
  %483 = icmp eq i8 %482, 0
  br i1 %483, label %484, label %489

484:                                              ; preds = %480
  %485 = load ptr, ptr %9, align 8
  %486 = load ptr, ptr %485, align 8
  %487 = load i32, ptr %86, align 4
  %488 = lshr i32 %487, 24
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %486, ptr noundef nonnull @.str.75, i32 noundef %488, i32 noundef %355) #11
  br label %489

489:                                              ; preds = %484, %480, %477
  %490 = getelementptr %struct.xhci_virt_device, ptr %372, i32 0, i32 4, i32 %355, i32 11
  %491 = load i8, ptr %490, align 4, !range !46
  %492 = icmp eq i8 %491, 0
  br i1 %492, label %494, label %493

493:                                              ; preds = %489
  store i8 0, ptr %490, align 4
  br label %494

494:                                              ; preds = %493, %489
  switch i32 %472, label %891 [
    i32 6, label %499
    i32 36, label %495
    i32 4, label %495
    i32 3, label %495
  ]

495:                                              ; preds = %494, %494, %494
  %496 = load i32, ptr %389, align 8
  %497 = and i32 %496, 7
  %498 = icmp eq i32 %497, 2
  br i1 %498, label %499, label %891

499:                                              ; preds = %495, %494
  %500 = tail call fastcc i32 @xhci_handle_halted_endpoint(ptr noundef %9, ptr noundef nonnull %378, ptr noundef null, i32 noundef 0) #12
  br label %891

501:                                              ; preds = %470
  %502 = getelementptr %struct.xhci_virt_device, ptr %372, i32 0, i32 4, i32 %355, i32 11
  %503 = load i8, ptr %502, align 4, !range !46
  %504 = icmp ne i8 %503, 0
  %505 = icmp eq i32 %473, 0
  %506 = select i1 %504, i1 %505, i1 false
  br i1 %506, label %507, label %508

507:                                              ; preds = %501
  store i8 0, ptr %502, align 4
  br label %891

508:                                              ; preds = %501
  %509 = sext i1 %504 to i32
  %510 = add i32 %473, %509
  %511 = getelementptr inbounds %struct.xhci_ring, ptr %385, i32 0, i32 5
  %512 = load ptr, ptr %511, align 4
  %513 = getelementptr inbounds %struct.xhci_ring, ptr %385, i32 0, i32 4
  %514 = load ptr, ptr %513, align 4
  %515 = getelementptr inbounds %struct.xhci_td, ptr %475, i32 0, i32 7
  %516 = load ptr, ptr %515, align 4
  %517 = tail call ptr @trb_in_td(ptr noundef %9, ptr noundef %512, ptr noundef %514, ptr noundef %516, i32 noundef %360, i1 noundef zeroext false) #12
  %518 = icmp eq ptr %517, null
  %519 = and i32 %472, -2
  %520 = icmp eq i32 %519, 26
  %521 = select i1 %518, i1 %520, i1 false
  br i1 %521, label %891, label %522

522:                                              ; preds = %508
  br i1 %518, label %523, label %575

523:                                              ; preds = %522
  %524 = load i8, ptr %502, align 4, !range !46
  %525 = icmp eq i8 %524, 0
  br i1 %525, label %535, label %526

526:                                              ; preds = %523
  %527 = getelementptr inbounds %struct.xhci_td, ptr %475, i32 0, i32 4
  %528 = load ptr, ptr %527, align 4
  %529 = getelementptr inbounds %struct.urb, ptr %528, i32 0, i32 9
  %530 = load ptr, ptr %529, align 4
  %531 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %530, i32 0, i32 3
  %532 = load i8, ptr %531, align 1
  %533 = and i8 %532, 3
  %534 = icmp eq i8 %533, 1
  br i1 %534, label %551, label %535

535:                                              ; preds = %526, %523
  %536 = load i64, ptr %64, align 8
  %537 = and i64 %536, 16
  %538 = icmp eq i64 %537, 0
  br i1 %538, label %544, label %539

539:                                              ; preds = %535
  %540 = getelementptr inbounds %struct.xhci_ring, ptr %385, i32 0, i32 15
  %541 = load i8, ptr %540, align 4, !range !46
  %542 = icmp eq i8 %541, 0
  br i1 %542, label %544, label %543

543:                                              ; preds = %539
  store i8 0, ptr %540, align 4
  br label %891

544:                                              ; preds = %539, %535
  %545 = load ptr, ptr %9, align 8
  %546 = load ptr, ptr %545, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %546, ptr noundef nonnull @.str.76, i32 noundef %355, i32 noundef %472) #11
  %547 = load ptr, ptr %511, align 4
  %548 = load ptr, ptr %513, align 4
  %549 = load ptr, ptr %515, align 4
  %550 = tail call ptr @trb_in_td(ptr noundef %9, ptr noundef %547, ptr noundef %548, ptr noundef %549, i32 noundef %360, i1 noundef zeroext true) #12
  br label %968

551:                                              ; preds = %526
  %552 = getelementptr inbounds %struct.urb, ptr %528, i32 0, i32 2
  %553 = load ptr, ptr %552, align 4
  %554 = getelementptr inbounds %struct.urb_priv, ptr %553, i32 0, i32 1
  %555 = load i32, ptr %554, align 4
  %556 = getelementptr %struct.urb, ptr %528, i32 0, i32 29, i32 %555, i32 3
  store i32 -18, ptr %556, align 4
  %557 = getelementptr %struct.urb, ptr %528, i32 0, i32 29, i32 %555, i32 2
  store i32 0, ptr %557, align 4
  %558 = load ptr, ptr %515, align 4
  %559 = getelementptr %struct.xhci_virt_device, ptr %372, i32 0, i32 4, i32 %355, i32 2
  %560 = load ptr, ptr %559, align 4
  %561 = getelementptr inbounds %struct.xhci_ring, ptr %560, i32 0, i32 4
  store ptr %558, ptr %561, align 4
  %562 = getelementptr inbounds %struct.xhci_td, ptr %475, i32 0, i32 8
  %563 = load ptr, ptr %562, align 4
  %564 = load ptr, ptr %559, align 4
  %565 = getelementptr inbounds %struct.xhci_ring, ptr %564, i32 0, i32 5
  store ptr %563, ptr %565, align 4
  %566 = getelementptr inbounds %struct.xhci_td, ptr %475, i32 0, i32 11
  %567 = load i32, ptr %566, align 4
  %568 = add i32 %567, -1
  %569 = load ptr, ptr %559, align 4
  %570 = getelementptr inbounds %struct.xhci_ring, ptr %569, i32 0, i32 11
  %571 = load i32, ptr %570, align 4
  %572 = add i32 %568, %571
  store i32 %572, ptr %570, align 4
  %573 = load ptr, ptr %559, align 4
  tail call void @inc_deq(ptr noundef %9, ptr noundef %573) #12
  %574 = load ptr, ptr %559, align 4
  tail call fastcc void @xhci_td_cleanup(ptr noundef %9, ptr noundef %475, ptr noundef %574, i32 noundef %471) #12
  br label %891

575:                                              ; preds = %522
  %576 = icmp eq i32 %472, 13
  %577 = zext i1 %576 to i8
  %578 = getelementptr inbounds %struct.xhci_ring, ptr %385, i32 0, i32 15
  store i8 %577, ptr %578, align 4
  %579 = load i8, ptr %502, align 4, !range !46
  %580 = icmp eq i8 %579, 0
  br i1 %580, label %582, label %581

581:                                              ; preds = %575
  store i8 0, ptr %502, align 4
  br label %582

582:                                              ; preds = %581, %575
  %583 = load ptr, ptr %517, align 4
  %584 = getelementptr inbounds %struct.xhci_segment, ptr %517, i32 0, i32 2
  %585 = load i32, ptr %584, align 4
  %586 = sub i32 %360, %585
  %587 = lshr i32 %586, 4
  %588 = getelementptr %union.xhci_trb, ptr %583, i32 %587
  %589 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_handle_transfer, i32 0, i32 1), align 4
  %590 = icmp sgt i32 %589, 0
  br i1 %590, label %591, label %604

591:                                              ; preds = %582
  %592 = tail call ptr @llvm.thread.pointer() #12
  %593 = getelementptr inbounds %struct.thread_info, ptr %592, i32 0, i32 2
  %594 = load i32, ptr %593, align 8
  %595 = lshr i32 %594, 5
  %596 = getelementptr i32, ptr @__cpu_online_mask, i32 %595
  %597 = load volatile i32, ptr %596, align 4
  %598 = and i32 %594, 31
  %599 = shl nuw i32 1, %598
  %600 = and i32 %599, %597
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %604, label %602

602:                                              ; preds = %591
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !47
  %603 = tail call i32 @__traceiter_xhci_handle_transfer(ptr noundef null, ptr noundef %385, ptr noundef %588) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !48
  br label %604

604:                                              ; preds = %602, %591, %582
  %605 = getelementptr [4 x i32], ptr %588, i32 0, i32 3
  %606 = load i32, ptr %605, align 4
  %607 = and i32 %606, 64512
  %608 = icmp eq i32 %607, 8192
  br i1 %608, label %609, label %616

609:                                              ; preds = %604
  switch i32 %472, label %891 [
    i32 6, label %614
    i32 36, label %610
    i32 4, label %610
    i32 3, label %610
  ]

610:                                              ; preds = %609, %609, %609
  %611 = load i32, ptr %389, align 8
  %612 = and i32 %611, 7
  %613 = icmp eq i32 %612, 2
  br i1 %613, label %614, label %891

614:                                              ; preds = %610, %609
  %615 = tail call fastcc i32 @xhci_handle_halted_endpoint(ptr noundef %9, ptr noundef nonnull %378, ptr noundef %475, i32 noundef 0) #12
  br label %891

616:                                              ; preds = %604
  %617 = getelementptr inbounds %struct.xhci_td, ptr %475, i32 0, i32 2
  store i32 %471, ptr %617, align 4
  %618 = getelementptr inbounds %struct.xhci_td, ptr %475, i32 0, i32 4
  %619 = load ptr, ptr %618, align 4
  %620 = getelementptr inbounds %struct.urb, ptr %619, i32 0, i32 9
  %621 = load ptr, ptr %620, align 4
  %622 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %621, i32 0, i32 3
  %623 = load i8, ptr %622, align 1
  %624 = trunc i8 %623 to i2
  switch i2 %624, label %792 [
    i2 0, label %625
    i2 1, label %704
  ]

625:                                              ; preds = %616
  %626 = load i32, ptr %605, align 4
  %627 = lshr i32 %626, 10
  %628 = and i32 %627, 63
  %629 = load ptr, ptr %378, align 4
  %630 = getelementptr inbounds %struct.xhci_virt_device, ptr %629, i32 0, i32 2
  %631 = load ptr, ptr %630, align 4
  %632 = getelementptr %struct.xhci_virt_device, ptr %372, i32 0, i32 4, i32 %355, i32 1
  %633 = load i32, ptr %632, align 4
  %634 = tail call ptr @xhci_get_ep_ctx(ptr noundef %9, ptr noundef %631, i32 noundef %633) #12
  %635 = load i32, ptr %356, align 8
  %636 = lshr i32 %635, 24
  %637 = load ptr, ptr %618, align 4
  %638 = getelementptr inbounds %struct.urb, ptr %637, i32 0, i32 19
  %639 = load i32, ptr %638, align 4
  %640 = and i32 %635, 16777215
  %641 = trunc i32 %636 to i8
  switch i8 %641, label %687 [
    i8 1, label %642
    i8 13, label %685
    i8 28, label %650
    i8 26, label %658
    i8 27, label %703
    i8 6, label %673
    i8 36, label %669
    i8 4, label %669
    i8 3, label %669
  ]

642:                                              ; preds = %625
  %643 = icmp eq i32 %628, 4
  br i1 %643, label %649, label %644

644:                                              ; preds = %642
  %645 = load ptr, ptr %9, align 8
  %646 = load ptr, ptr %645, align 8
  %647 = icmp eq i32 %628, 3
  %648 = select i1 %647, ptr @.str.79, ptr @.str.80
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %646, ptr noundef nonnull @.str.78, ptr noundef nonnull %648) #11
  br label %685

649:                                              ; preds = %642
  store i32 0, ptr %617, align 4
  br label %689

650:                                              ; preds = %625
  %651 = and i32 %626, 62464
  %652 = icmp eq i32 %651, 1024
  br i1 %652, label %653, label %655

653:                                              ; preds = %650
  %654 = getelementptr inbounds %struct.urb, ptr %637, i32 0, i32 20
  store i32 %640, ptr %654, align 4
  br label %703

655:                                              ; preds = %650
  %656 = load ptr, ptr %9, align 8
  %657 = load ptr, ptr %656, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %657, ptr noundef nonnull @.str.81) #11
  br label %703

658:                                              ; preds = %625
  switch i32 %628, label %666 [
    i32 2, label %659
    i32 3, label %661
    i32 1, label %661
    i32 4, label %664
  ]

659:                                              ; preds = %658
  %660 = getelementptr inbounds %struct.urb, ptr %637, i32 0, i32 20
  store i32 0, ptr %660, align 4
  br label %703

661:                                              ; preds = %658, %658
  %662 = sub i32 %639, %640
  %663 = getelementptr inbounds %struct.urb, ptr %637, i32 0, i32 20
  store i32 %662, ptr %663, align 4
  br label %703

664:                                              ; preds = %658
  %665 = getelementptr inbounds %struct.urb, ptr %637, i32 0, i32 20
  store i32 %639, ptr %665, align 4
  br label %703

666:                                              ; preds = %658
  %667 = load ptr, ptr %9, align 8
  %668 = load ptr, ptr %667, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %668, ptr noundef nonnull @.str.82, i32 noundef %628) #11
  br label %703

669:                                              ; preds = %625, %625, %625
  %670 = load i32, ptr %634, align 8
  %671 = and i32 %670, 7
  %672 = icmp eq i32 %671, 2
  br i1 %672, label %673, label %687

673:                                              ; preds = %669, %625
  %674 = and i32 %626, 62464
  %675 = icmp eq i32 %674, 1024
  br i1 %675, label %676, label %679

676:                                              ; preds = %673
  %677 = sub i32 %639, %640
  %678 = getelementptr inbounds %struct.urb, ptr %637, i32 0, i32 20
  store i32 %677, ptr %678, align 4
  br label %703

679:                                              ; preds = %673
  %680 = getelementptr inbounds %struct.xhci_td, ptr %475, i32 0, i32 10
  %681 = load i8, ptr %680, align 4, !range !46
  %682 = icmp eq i8 %681, 0
  br i1 %682, label %683, label %703

683:                                              ; preds = %679
  %684 = getelementptr inbounds %struct.urb, ptr %637, i32 0, i32 20
  store i32 0, ptr %684, align 4
  br label %703

685:                                              ; preds = %644, %625
  %686 = phi i32 [ -108, %644 ], [ 0, %625 ]
  store i32 %686, ptr %617, align 4
  br label %687

687:                                              ; preds = %685, %669, %625
  %688 = icmp eq i32 %628, 2
  br i1 %688, label %703, label %689

689:                                              ; preds = %687, %649
  %690 = and i32 %626, 62464
  %691 = icmp eq i32 %690, 1024
  %692 = getelementptr inbounds %struct.xhci_td, ptr %475, i32 0, i32 10
  br i1 %691, label %693, label %697

693:                                              ; preds = %689
  store i8 1, ptr %692, align 4
  %694 = sub i32 %639, %640
  %695 = load ptr, ptr %618, align 4
  %696 = getelementptr inbounds %struct.urb, ptr %695, i32 0, i32 20
  store i32 %694, ptr %696, align 4
  br label %891

697:                                              ; preds = %689
  %698 = load i8, ptr %692, align 4, !range !46
  %699 = icmp eq i8 %698, 0
  br i1 %699, label %700, label %703

700:                                              ; preds = %697
  %701 = load ptr, ptr %618, align 4
  %702 = getelementptr inbounds %struct.urb, ptr %701, i32 0, i32 20
  store i32 %639, ptr %702, align 4
  br label %703

703:                                              ; preds = %700, %697, %687, %683, %679, %676, %666, %664, %661, %659, %655, %653, %625
  tail call fastcc void @finish_td(ptr noundef %9, ptr noundef nonnull %378, ptr noundef %385, ptr noundef %475, i32 noundef %636) #12
  br label %891

704:                                              ; preds = %616
  %705 = load i32, ptr %356, align 8
  %706 = lshr i32 %705, 24
  %707 = getelementptr inbounds %struct.urb, ptr %619, i32 0, i32 2
  %708 = load ptr, ptr %707, align 4
  %709 = getelementptr inbounds %struct.urb_priv, ptr %708, i32 0, i32 1
  %710 = load i32, ptr %709, align 4
  %711 = getelementptr %struct.urb, ptr %619, i32 0, i32 29, i32 %710, i32 1
  %712 = load i32, ptr %711, align 4
  %713 = and i32 %705, 16777215
  %714 = getelementptr [4 x i32], ptr %588, i32 0, i32 2
  %715 = load i32, ptr %714, align 8
  %716 = and i32 %715, 131071
  %717 = getelementptr inbounds %struct.urb, ptr %619, i32 0, i32 13
  %718 = load i32, ptr %717, align 4
  %719 = and i32 %718, 1
  %720 = icmp eq i32 %719, 0
  %721 = select i1 %720, i32 0, i32 -121
  %722 = trunc i32 %706 to i8
  switch i8 %722, label %739 [
    i8 1, label %723
    i8 13, label %744
    i8 18, label %727
    i8 31, label %729
    i8 3, label %729
    i8 22, label %731
    i8 6, label %731
    i8 4, label %733
    i8 26, label %747
    i8 28, label %737
    i8 27, label %785
  ]

723:                                              ; preds = %704
  %724 = icmp eq i32 %713, 0
  %725 = getelementptr %struct.urb, ptr %619, i32 0, i32 29, i32 %710, i32 3
  br i1 %724, label %726, label %740

726:                                              ; preds = %723
  store i32 0, ptr %725, align 4
  br label %785

727:                                              ; preds = %704
  %728 = getelementptr %struct.urb, ptr %619, i32 0, i32 29, i32 %710, i32 3
  store i32 -70, ptr %728, align 4
  br label %785

729:                                              ; preds = %704, %704
  %730 = getelementptr %struct.urb, ptr %619, i32 0, i32 29, i32 %710, i32 3
  store i32 -75, ptr %730, align 4
  br label %785

731:                                              ; preds = %704, %704
  %732 = getelementptr %struct.urb, ptr %619, i32 0, i32 29, i32 %710, i32 3
  store i32 -71, ptr %732, align 4
  br label %785

733:                                              ; preds = %704
  %734 = getelementptr %struct.urb, ptr %619, i32 0, i32 29, i32 %710, i32 3
  store i32 -71, ptr %734, align 4
  %735 = load ptr, ptr %515, align 4
  %736 = icmp eq ptr %735, %588
  br i1 %736, label %785, label %891

737:                                              ; preds = %704
  %738 = getelementptr %struct.urb, ptr %619, i32 0, i32 29, i32 %710, i32 3
  store i32 %721, ptr %738, align 4
  br label %785

739:                                              ; preds = %704
  br label %744

740:                                              ; preds = %723
  store i32 %721, ptr %725, align 4
  %741 = load i64, ptr %64, align 8
  %742 = and i64 %741, 1024
  %743 = icmp eq i64 %742, 0
  br i1 %743, label %785, label %747

744:                                              ; preds = %739, %704
  %745 = phi i32 [ -1, %739 ], [ %721, %704 ]
  %746 = getelementptr %struct.urb, ptr %619, i32 0, i32 29, i32 %710, i32 3
  store i32 %745, ptr %746, align 4
  br label %747

747:                                              ; preds = %744, %740, %704
  %748 = getelementptr %struct.xhci_virt_device, ptr %372, i32 0, i32 4, i32 %355, i32 2
  %749 = load ptr, ptr %748, align 4
  %750 = getelementptr inbounds %struct.xhci_ring, ptr %749, i32 0, i32 4
  %751 = load ptr, ptr %750, align 4
  %752 = icmp eq ptr %751, %588
  br i1 %752, label %781, label %753

753:                                              ; preds = %747
  %754 = getelementptr inbounds %struct.xhci_ring, ptr %749, i32 0, i32 5
  %755 = load ptr, ptr %754, align 4
  br label %756

756:                                              ; preds = %776, %753
  %757 = phi i32 [ %777, %776 ], [ 0, %753 ]
  %758 = phi ptr [ %778, %776 ], [ %755, %753 ]
  %759 = phi ptr [ %779, %776 ], [ %751, %753 ]
  %760 = getelementptr [4 x i32], ptr %759, i32 0, i32 3
  %761 = load i32, ptr %760, align 4
  %762 = trunc i32 %761 to i16
  %763 = and i16 %762, -1024
  switch i16 %763, label %764 [
    i16 8192, label %773
    i16 6144, label %769
  ]

764:                                              ; preds = %756
  %765 = getelementptr [4 x i32], ptr %759, i32 0, i32 2
  %766 = load i32, ptr %765, align 8
  %767 = and i32 %766, 131071
  %768 = add i32 %767, %757
  br label %773

769:                                              ; preds = %756
  %770 = getelementptr inbounds %struct.xhci_segment, ptr %758, i32 0, i32 1
  %771 = load ptr, ptr %770, align 4
  %772 = load ptr, ptr %771, align 4
  br label %776

773:                                              ; preds = %764, %756
  %774 = phi i32 [ %768, %764 ], [ %757, %756 ]
  %775 = getelementptr %union.xhci_trb, ptr %759, i32 1
  br label %776

776:                                              ; preds = %773, %769
  %777 = phi i32 [ %757, %769 ], [ %774, %773 ]
  %778 = phi ptr [ %771, %769 ], [ %758, %773 ]
  %779 = phi ptr [ %772, %769 ], [ %775, %773 ]
  %780 = icmp eq ptr %779, %588
  br i1 %780, label %781, label %756

781:                                              ; preds = %776, %747
  %782 = phi i32 [ 0, %747 ], [ %777, %776 ]
  %783 = sub nsw i32 %716, %713
  %784 = add i32 %783, %782
  br label %785

785:                                              ; preds = %781, %740, %737, %733, %731, %729, %727, %726, %704
  %786 = phi i32 [ %784, %781 ], [ %712, %740 ], [ %712, %726 ], [ %712, %727 ], [ %712, %729 ], [ %712, %731 ], [ %712, %733 ], [ %713, %737 ], [ 0, %704 ]
  %787 = getelementptr %struct.urb, ptr %619, i32 0, i32 29, i32 %710, i32 2
  store i32 %786, ptr %787, align 4
  %788 = load ptr, ptr %618, align 4
  %789 = getelementptr inbounds %struct.urb, ptr %788, i32 0, i32 20
  %790 = load i32, ptr %789, align 4
  %791 = add i32 %790, %786
  store i32 %791, ptr %789, align 4
  tail call fastcc void @finish_td(ptr noundef %9, ptr noundef nonnull %378, ptr noundef %385, ptr noundef %475, i32 noundef %706) #12
  br label %891

792:                                              ; preds = %616
  %793 = load ptr, ptr %378, align 4
  %794 = getelementptr inbounds %struct.xhci_virt_device, ptr %793, i32 0, i32 2
  %795 = load ptr, ptr %794, align 4
  %796 = tail call ptr @xhci_get_slot_ctx(ptr noundef %9, ptr noundef %795) #12
  %797 = load i32, ptr %356, align 8
  %798 = lshr i32 %797, 24
  %799 = and i32 %797, 16777215
  %800 = getelementptr [4 x i32], ptr %588, i32 0, i32 2
  %801 = load i32, ptr %800, align 8
  %802 = and i32 %801, 131071
  %803 = load ptr, ptr %618, align 4
  %804 = getelementptr inbounds %struct.urb, ptr %803, i32 0, i32 19
  %805 = load i32, ptr %804, align 4
  %806 = trunc i32 %798 to i8
  switch i8 %806, label %835 [
    i8 1, label %807
    i8 13, label %817
    i8 28, label %879
    i8 27, label %818
    i8 4, label %819
  ]

807:                                              ; preds = %792
  %808 = getelementptr inbounds %struct.xhci_ring, ptr %385, i32 0, i32 8
  store i32 0, ptr %808, align 4
  %809 = load ptr, ptr %515, align 4
  %810 = icmp ne ptr %809, %588
  %811 = icmp ne i32 %799, 0
  %812 = select i1 %810, i1 true, i1 %811
  br i1 %812, label %813, label %816

813:                                              ; preds = %807
  %814 = load ptr, ptr %9, align 8
  %815 = load ptr, ptr %814, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %815, ptr noundef nonnull @.str.83) #11
  br label %816

816:                                              ; preds = %813, %807
  store i32 0, ptr %617, align 4
  br label %835

817:                                              ; preds = %792
  store i32 0, ptr %617, align 4
  br label %835

818:                                              ; preds = %792
  br label %835

819:                                              ; preds = %792
  %820 = load i64, ptr %64, align 8
  %821 = and i64 %820, 1099511627776
  %822 = icmp eq i64 %821, 0
  br i1 %822, label %823, label %835

823:                                              ; preds = %819
  %824 = getelementptr inbounds %struct.xhci_ring, ptr %385, i32 0, i32 8
  %825 = load i32, ptr %824, align 4
  %826 = add i32 %825, 1
  store i32 %826, ptr %824, align 4
  %827 = icmp ugt i32 %825, 3
  br i1 %827, label %835, label %828

828:                                              ; preds = %823
  %829 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %796, i32 0, i32 2
  %830 = load i32, ptr %829, align 4
  %831 = and i32 %830, 255
  %832 = icmp eq i32 %831, 0
  br i1 %832, label %833, label %835

833:                                              ; preds = %828
  store i32 0, ptr %617, align 4
  %834 = tail call fastcc i32 @xhci_handle_halted_endpoint(ptr noundef %9, ptr noundef nonnull %378, ptr noundef %475, i32 noundef 1) #12
  br label %891

835:                                              ; preds = %828, %823, %819, %818, %817, %816, %792
  %836 = phi i32 [ %799, %792 ], [ %799, %819 ], [ %799, %823 ], [ %799, %828 ], [ 0, %818 ], [ %799, %817 ], [ %799, %816 ]
  %837 = phi i32 [ %802, %792 ], [ %802, %819 ], [ %802, %823 ], [ %802, %828 ], [ 0, %818 ], [ %802, %817 ], [ %802, %816 ]
  %838 = load ptr, ptr %515, align 4
  %839 = icmp eq ptr %838, %588
  br i1 %839, label %840, label %842

840:                                              ; preds = %835
  %841 = sub i32 %805, %836
  br label %876

842:                                              ; preds = %835
  %843 = load ptr, ptr %513, align 4
  %844 = icmp eq ptr %843, %588
  br i1 %844, label %872, label %845

845:                                              ; preds = %842
  %846 = load ptr, ptr %511, align 4
  br label %847

847:                                              ; preds = %867, %845
  %848 = phi i32 [ %868, %867 ], [ 0, %845 ]
  %849 = phi ptr [ %869, %867 ], [ %846, %845 ]
  %850 = phi ptr [ %870, %867 ], [ %843, %845 ]
  %851 = getelementptr [4 x i32], ptr %850, i32 0, i32 3
  %852 = load i32, ptr %851, align 4
  %853 = trunc i32 %852 to i16
  %854 = and i16 %853, -1024
  switch i16 %854, label %855 [
    i16 8192, label %864
    i16 6144, label %860
  ]

855:                                              ; preds = %847
  %856 = getelementptr [4 x i32], ptr %850, i32 0, i32 2
  %857 = load i32, ptr %856, align 8
  %858 = and i32 %857, 131071
  %859 = add i32 %858, %848
  br label %864

860:                                              ; preds = %847
  %861 = getelementptr inbounds %struct.xhci_segment, ptr %849, i32 0, i32 1
  %862 = load ptr, ptr %861, align 4
  %863 = load ptr, ptr %862, align 4
  br label %867

864:                                              ; preds = %855, %847
  %865 = phi i32 [ %859, %855 ], [ %848, %847 ]
  %866 = getelementptr %union.xhci_trb, ptr %850, i32 1
  br label %867

867:                                              ; preds = %864, %860
  %868 = phi i32 [ %848, %860 ], [ %865, %864 ]
  %869 = phi ptr [ %862, %860 ], [ %849, %864 ]
  %870 = phi ptr [ %863, %860 ], [ %866, %864 ]
  %871 = icmp eq ptr %870, %588
  br i1 %871, label %872, label %847

872:                                              ; preds = %867, %842
  %873 = phi i32 [ 0, %842 ], [ %868, %867 ]
  %874 = sub nsw i32 %837, %836
  %875 = add i32 %874, %873
  br label %876

876:                                              ; preds = %872, %840
  %877 = phi i32 [ %875, %872 ], [ %841, %840 ]
  %878 = load ptr, ptr %618, align 4
  br label %879

879:                                              ; preds = %876, %792
  %880 = phi ptr [ %803, %792 ], [ %878, %876 ]
  %881 = phi i32 [ %799, %792 ], [ %877, %876 ]
  %882 = phi i32 [ %799, %792 ], [ %836, %876 ]
  %883 = getelementptr inbounds %struct.urb, ptr %880, i32 0, i32 20
  store i32 %881, ptr %883, align 4
  %884 = icmp ugt i32 %882, %805
  br i1 %884, label %885, label %890

885:                                              ; preds = %879
  %886 = load ptr, ptr %9, align 8
  %887 = load ptr, ptr %886, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %887, ptr noundef nonnull @.str.84, i32 noundef %882) #11
  %888 = load ptr, ptr %618, align 4
  %889 = getelementptr inbounds %struct.urb, ptr %888, i32 0, i32 20
  store i32 0, ptr %889, align 4
  br label %890

890:                                              ; preds = %885, %879
  tail call fastcc void @finish_td(ptr noundef %9, ptr noundef nonnull %378, ptr noundef %385, ptr noundef %475, i32 noundef %798) #12
  br label %891

891:                                              ; preds = %890, %833, %785, %733, %703, %693, %614, %610, %609, %551, %543, %508, %507, %499, %495, %494, %467, %461, %460, %457, %454, %400, %398, %398, %398
  %892 = phi i32 [ %471, %499 ], [ %471, %507 ], [ %471, %614 ], [ %471, %551 ], [ %471, %543 ], [ -115, %467 ], [ -115, %461 ], [ -115, %460 ], [ -115, %457 ], [ -115, %454 ], [ -115, %398 ], [ -115, %398 ], [ -115, %398 ], [ -115, %400 ], [ %471, %508 ], [ %471, %495 ], [ %471, %494 ], [ %471, %610 ], [ %471, %609 ], [ %471, %703 ], [ %471, %693 ], [ %471, %785 ], [ %471, %733 ], [ %471, %890 ], [ %471, %833 ]
  %893 = phi i32 [ %472, %499 ], [ %472, %507 ], [ %472, %614 ], [ %472, %551 ], [ %472, %543 ], [ %358, %467 ], [ 20, %461 ], [ 23, %460 ], [ 15, %457 ], [ 14, %454 ], [ %358, %398 ], [ %358, %398 ], [ %358, %398 ], [ %358, %400 ], [ %472, %508 ], [ %472, %495 ], [ %472, %494 ], [ %472, %610 ], [ %472, %609 ], [ %472, %703 ], [ %472, %693 ], [ %472, %785 ], [ %472, %733 ], [ %472, %890 ], [ %472, %833 ]
  %894 = phi i32 [ %473, %499 ], [ 0, %507 ], [ %510, %614 ], [ %510, %551 ], [ %510, %543 ], [ %418, %467 ], [ %418, %461 ], [ %418, %460 ], [ %418, %457 ], [ %418, %454 ], [ 0, %398 ], [ 0, %398 ], [ 0, %398 ], [ 0, %400 ], [ %510, %508 ], [ %473, %495 ], [ %473, %494 ], [ %510, %610 ], [ %510, %609 ], [ %510, %703 ], [ %510, %693 ], [ %510, %785 ], [ %510, %733 ], [ %510, %890 ], [ %510, %833 ]
  %895 = getelementptr %struct.xhci_virt_device, ptr %372, i32 0, i32 4, i32 %355, i32 11
  %896 = load i8, ptr %895, align 4, !range !46
  %897 = icmp ne i8 %896, 0
  %898 = icmp ne i32 %893, 23
  %899 = select i1 %897, i1 %898, i1 false
  %900 = icmp ne i32 %893, 20
  %901 = select i1 %899, i1 %900, i1 false
  br i1 %901, label %470, label %902

902:                                              ; preds = %891
  %903 = load ptr, ptr %58, align 8
  tail call void @inc_deq(ptr noundef %9, ptr noundef %903) #12
  br label %974

904:                                              ; preds = %402, %393, %380
  %905 = load ptr, ptr %9, align 8
  %906 = load ptr, ptr %905, align 8
  %907 = load ptr, ptr %58, align 8
  %908 = getelementptr inbounds %struct.xhci_ring, ptr %907, i32 0, i32 5
  %909 = load ptr, ptr %908, align 4
  %910 = getelementptr inbounds %struct.xhci_ring, ptr %907, i32 0, i32 4
  %911 = load ptr, ptr %910, align 4
  %912 = icmp ne ptr %909, null
  %913 = icmp ne ptr %911, null
  %914 = and i1 %912, %913
  br i1 %914, label %915, label %927

915:                                              ; preds = %904
  %916 = load ptr, ptr %909, align 4
  %917 = icmp ugt ptr %916, %911
  br i1 %917, label %927, label %918

918:                                              ; preds = %915
  %919 = ptrtoint ptr %911 to i32
  %920 = ptrtoint ptr %916 to i32
  %921 = sub i32 %919, %920
  %922 = icmp ugt i32 %921, 4080
  br i1 %922, label %927, label %923

923:                                              ; preds = %918
  %924 = getelementptr inbounds %struct.xhci_segment, ptr %909, i32 0, i32 2
  %925 = load i32, ptr %924, align 4
  %926 = add i32 %925, %921
  br label %927

927:                                              ; preds = %923, %918, %915, %904
  %928 = phi i32 [ %926, %923 ], [ 0, %915 ], [ 0, %904 ], [ 0, %918 ]
  %929 = zext i32 %928 to i64
  %930 = load i64, ptr %85, align 8
  %931 = trunc i64 %930 to i32
  %932 = lshr i64 %930, 32
  %933 = trunc i64 %932 to i32
  %934 = load i32, ptr %356, align 8
  %935 = load i32, ptr %86, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %906, ptr noundef nonnull @.str.77, i64 noundef %929, i32 noundef %931, i32 noundef %933, i32 noundef %934, i32 noundef %935) #11
  br label %968

936:                                              ; preds = %108
  %937 = lshr i32 %109, 24
  %938 = getelementptr %struct.xhci_hcd, ptr %9, i32 0, i32 42, i32 %937
  %939 = load ptr, ptr %938, align 4
  %940 = icmp eq ptr %939, null
  br i1 %940, label %941, label %944

941:                                              ; preds = %936
  %942 = load ptr, ptr %9, align 8
  %943 = load ptr, ptr %942, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %943, ptr noundef nonnull @.str.85, i32 noundef %937) #11
  br label %968

944:                                              ; preds = %936
  %945 = getelementptr inbounds %struct.xhci_virt_device, ptr %939, i32 0, i32 1
  %946 = load ptr, ptr %945, align 4
  %947 = icmp eq ptr %946, null
  br i1 %947, label %968, label %948

948:                                              ; preds = %944
  %949 = getelementptr inbounds %struct.usb_device, ptr %946, i32 0, i32 11
  %950 = load ptr, ptr %949, align 4
  %951 = icmp eq ptr %950, null
  br i1 %951, label %968, label %952

952:                                              ; preds = %948
  %953 = getelementptr inbounds %struct.usb_device, ptr %946, i32 0, i32 25
  %954 = load i8, ptr %953, align 2
  %955 = zext i8 %954 to i32
  tail call void @usb_wakeup_notification(ptr noundef nonnull %950, i32 noundef %955) #12
  br label %968

956:                                              ; preds = %108
  %957 = icmp ugt i32 %111, 47
  br i1 %957, label %958, label %965

958:                                              ; preds = %956
  %959 = icmp eq i32 %111, 48
  br i1 %959, label %960, label %968

960:                                              ; preds = %958
  %961 = load i64, ptr %64, align 8
  %962 = and i64 %961, 4
  %963 = icmp eq i64 %962, 0
  br i1 %963, label %968, label %964

964:                                              ; preds = %960
  tail call fastcc void @handle_cmd_completion(ptr noundef %9, ptr noundef nonnull %85) #12
  br label %968

965:                                              ; preds = %956
  %966 = load ptr, ptr %9, align 8
  %967 = load ptr, ptr %966, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %967, ptr noundef nonnull @.str.28, i32 noundef %111) #11
  br label %968

968:                                              ; preds = %965, %964, %960, %958, %952, %948, %944, %941, %927, %544, %112
  %969 = load i32, ptr %42, align 4
  %970 = and i32 %969, 1
  %971 = icmp eq i32 %970, 0
  br i1 %971, label %972, label %986

972:                                              ; preds = %968
  %973 = load ptr, ptr %58, align 8
  tail call void @inc_deq(ptr noundef %9, ptr noundef %973) #12
  br label %978

974:                                              ; preds = %902, %347, %345, %343, %274, %130
  %975 = load i32, ptr %42, align 4
  %976 = and i32 %975, 1
  %977 = icmp eq i32 %976, 0
  br i1 %977, label %978, label %986

978:                                              ; preds = %974, %972
  %979 = add i32 %84, 1
  %980 = icmp slt i32 %84, 128
  br i1 %980, label %71, label %981

981:                                              ; preds = %978
  tail call fastcc void @xhci_update_erst_dequeue(ptr noundef %9, ptr noundef nonnull %61)
  %982 = load i32, ptr %69, align 8
  %983 = icmp ugt i32 %982, 8
  br i1 %983, label %984, label %71

984:                                              ; preds = %981
  %985 = lshr i32 %982, 1
  store i32 %985, ptr %69, align 8
  br label %71

986:                                              ; preds = %974, %968, %82, %79
  tail call fastcc void @xhci_update_erst_dequeue(ptr noundef %9, ptr noundef %61)
  br label %987

987:                                              ; preds = %986, %46, %23, %17, %16
  %988 = phi i32 [ 1, %16 ], [ 1, %23 ], [ 1, %46 ], [ 1, %986 ], [ 0, %17 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !42
  %989 = load i16, ptr %10, align 4
  %990 = add i16 %989, 1
  store i16 %990, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !43
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !44
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !45
  ret i32 %988
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xhci_update_erst_dequeue(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.xhci_intr_reg, ptr %4, i32 0, i32 5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #12, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !24
  %7 = getelementptr i32, ptr %5, i32 1
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #12, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !25
  %9 = zext i32 %8 to i64
  %10 = shl nuw i64 %9, 32
  %11 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 36
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.xhci_ring, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %49, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.xhci_ring, ptr %12, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = icmp ne ptr %18, null
  %20 = icmp ne ptr %14, null
  %21 = and i1 %20, %19
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load ptr, ptr %18, align 4
  %24 = icmp ugt ptr %23, %14
  br i1 %24, label %35, label %25

25:                                               ; preds = %22
  %26 = ptrtoint ptr %14 to i32
  %27 = ptrtoint ptr %23 to i32
  %28 = sub i32 %26, %27
  %29 = icmp ugt i32 %28, 4080
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.xhci_segment, ptr %18, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %28
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30, %25, %22, %16
  %36 = load ptr, ptr %0, align 8
  %37 = load ptr, ptr %36, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef nonnull @.str.86) #11
  br label %38

38:                                               ; preds = %35, %30
  %39 = phi i32 [ 0, %35 ], [ %33, %30 ]
  %40 = and i32 %6, -16
  %41 = zext i32 %40 to i64
  %42 = or i64 %10, %41
  %43 = and i32 %39, -16
  %44 = zext i32 %43 to i64
  %45 = icmp eq i64 %42, %44
  br i1 %45, label %56, label %46

46:                                               ; preds = %38
  %47 = and i32 %6, 15
  %48 = or i32 %43, %47
  br label %49

49:                                               ; preds = %46, %2
  %50 = phi i32 [ %48, %46 ], [ %6, %2 ]
  %51 = phi i32 [ 0, %46 ], [ %8, %2 ]
  %52 = load ptr, ptr %3, align 8
  %53 = getelementptr inbounds %struct.xhci_intr_reg, ptr %52, i32 0, i32 5
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !26
  tail call void @arm_heavy_mb() #12
  %54 = or i32 %50, 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %54) #12, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !27
  tail call void @arm_heavy_mb() #12
  %55 = getelementptr i8, ptr %53, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %51) #12, !srcloc !13
  br label %56

56:                                               ; preds = %49, %38
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_msi_irq(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call i32 @xhci_irq(ptr noundef %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @count_trbs(i64 noundef %0, i64 noundef %1) local_unnamed_addr #7 {
  %3 = and i64 %0, 65535
  %4 = add i64 %1, 65535
  %5 = add i64 %4, %3
  %6 = lshr i64 %5, 16
  %7 = trunc i64 %6 to i32
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 1, i32 %7
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_queue_intr_tx(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 42, i32 %3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.xhci_virt_device, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @xhci_get_ep_ctx(ptr noundef %0, ptr noundef %9, i32 noundef %4) #12
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  %14 = shl nuw i32 1, %13
  %15 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 25
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, -1
  %22 = icmp ult i32 %21, 2
  %23 = shl i32 %16, 3
  %24 = select i1 %22, i32 %23, i32 %16
  %25 = icmp eq i32 %14, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %5
  store i32 %14, ptr %15, align 4
  %27 = load i32, ptr %19, align 4
  %28 = add i32 %27, -1
  %29 = icmp ult i32 %28, 2
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = sdiv i32 %14, 8
  store i32 %31, ptr %15, align 4
  br label %32

32:                                               ; preds = %30, %26, %5
  %33 = tail call i32 @xhci_queue_bulk_tx(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xhci_get_ep_ctx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_queue_bulk_tx(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  %7 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 43
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @xhci_get_endpoint_index(ptr noundef %12) #12
  %14 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 11
  %15 = load i32, ptr %14, align 4
  %16 = tail call ptr @xhci_triad_to_transfer_ring(ptr noundef %0, i32 noundef %10, i32 noundef %13, i32 noundef %15) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %435, label %18

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 19
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 18
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %77, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 13
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 65536
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %77

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 17
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 16
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.scatterlist, ptr %33, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.scatterlist, ptr %33, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %31, 0
  br i1 %38, label %89, label %39

39:                                               ; preds = %29
  %40 = zext i32 %37 to i64
  %41 = and i32 %35, 65535
  %42 = zext i32 %41 to i64
  %43 = add nuw nsw i64 %40, 65535
  %44 = add nuw nsw i64 %43, %42
  %45 = lshr i64 %44, 16
  %46 = trunc i64 %45 to i32
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 1, i32 %46
  %49 = icmp ugt i32 %20, %37
  br i1 %49, label %50, label %89

50:                                               ; preds = %60, %39
  %51 = phi i32 [ %75, %60 ], [ %48, %39 ]
  %52 = phi i32 [ %61, %60 ], [ %20, %39 ]
  %53 = phi i32 [ %56, %60 ], [ 0, %39 ]
  %54 = phi ptr [ %57, %60 ], [ %33, %39 ]
  %55 = phi i32 [ %63, %60 ], [ %37, %39 ]
  %56 = add nuw i32 %53, 1
  %57 = tail call ptr @sg_next(ptr noundef %54) #12
  %58 = load i32, ptr %30, align 4
  %59 = icmp ult i32 %56, %58
  br i1 %59, label %60, label %89

60:                                               ; preds = %50
  %61 = tail call i32 @llvm.usub.sat.i32(i32 %52, i32 %55) #12
  %62 = getelementptr inbounds %struct.scatterlist, ptr %57, i32 0, i32 4
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.scatterlist, ptr %57, i32 0, i32 3
  %65 = load i32, ptr %64, align 4
  %66 = zext i32 %63 to i64
  %67 = and i32 %65, 65535
  %68 = zext i32 %67 to i64
  %69 = add nuw nsw i64 %66, 65535
  %70 = add nuw nsw i64 %69, %68
  %71 = lshr i64 %70, 16
  %72 = trunc i64 %71 to i32
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, i32 1, i32 %72
  %75 = add i32 %74, %51
  %76 = icmp ugt i32 %61, %63
  br i1 %76, label %50, label %89

77:                                               ; preds = %24, %18
  %78 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 15
  %79 = load i32, ptr %78, align 4
  %80 = zext i32 %20 to i64
  %81 = and i32 %79, 65535
  %82 = zext i32 %81 to i64
  %83 = add nuw nsw i64 %80, 65535
  %84 = add nuw nsw i64 %83, %82
  %85 = lshr i64 %84, 16
  %86 = trunc i64 %85 to i32
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, i32 1, i32 %86
  br label %89

89:                                               ; preds = %77, %60, %50, %39, %29
  %90 = phi i32 [ %88, %77 ], [ 0, %29 ], [ %48, %39 ], [ %51, %50 ], [ %75, %60 ]
  %91 = phi i32 [ 0, %77 ], [ 0, %29 ], [ %31, %39 ], [ %31, %50 ], [ %31, %60 ]
  %92 = phi i32 [ %20, %77 ], [ %37, %29 ], [ %37, %39 ], [ %37, %50 ], [ %37, %60 ]
  %93 = phi i32 [ %79, %77 ], [ %35, %29 ], [ %35, %39 ], [ %35, %50 ], [ %35, %60 ]
  %94 = phi ptr [ null, %77 ], [ %33, %29 ], [ %33, %39 ], [ %33, %50 ], [ %33, %60 ]
  %95 = zext i32 %93 to i64
  %96 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 42, i32 %3
  %97 = load ptr, ptr %96, align 4
  %98 = load i32, ptr %14, align 4
  %99 = tail call fastcc i32 @prepare_transfer(ptr noundef %0, ptr noundef %97, i32 noundef %4, i32 noundef %98, i32 noundef %90, ptr noundef %2, i32 noundef 0, i32 noundef %1)
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %435, label %101, !prof !49

101:                                              ; preds = %89
  %102 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 2
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 13
  %105 = load i32, ptr %104, align 4
  %106 = and i32 %105, 64
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %101
  %109 = load i32, ptr %103, align 4
  %110 = icmp sgt i32 %109, 1
  br label %111

111:                                              ; preds = %108, %101
  %112 = phi i1 [ false, %101 ], [ %110, %108 ]
  %113 = getelementptr inbounds %struct.xhci_ring, ptr %16, i32 0, i32 2
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.xhci_ring, ptr %16, i32 0, i32 7
  %116 = load i32, ptr %115, align 4
  store i64 %95, ptr %6, align 8
  %117 = icmp eq i32 %116, 0
  %118 = select i1 %117, i32 1025, i32 1024
  %119 = getelementptr inbounds %struct.xhci_ring, ptr %16, i32 0, i32 3
  %120 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 16
  %121 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 14
  %122 = getelementptr inbounds %struct.urb_priv, ptr %103, i32 6, i32 1
  %123 = getelementptr inbounds %struct.urb_priv, ptr %103, i32 5, i32 1
  %124 = getelementptr inbounds %struct.urb_priv, ptr %103, i32 6
  %125 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 14
  %126 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 51
  %127 = add i32 %20, -1
  %128 = getelementptr inbounds %struct.urb_priv, ptr %103, i32 7, i32 1
  br label %129

129:                                              ; preds = %375, %111
  %130 = phi ptr [ %94, %111 ], [ %380, %375 ]
  %131 = phi i64 [ %95, %111 ], [ %379, %375 ]
  %132 = phi i32 [ %92, %111 ], [ %381, %375 ]
  %133 = phi i32 [ 0, %111 ], [ %261, %375 ]
  %134 = phi i32 [ %91, %111 ], [ %376, %375 ]
  %135 = phi i1 [ true, %111 ], [ false, %375 ]
  %136 = phi i1 [ true, %111 ], [ %295, %375 ]
  %137 = trunc i64 %131 to i32
  %138 = and i32 %137, 65535
  %139 = sub nuw nsw i32 65536, %138
  %140 = tail call i32 @llvm.umin.i32(i32 %139, i32 %132)
  %141 = add i32 %140, %133
  %142 = icmp ugt i32 %141, %20
  %143 = sub i32 %20, %133
  %144 = select i1 %142, i32 %143, i32 %140
  br i1 %135, label %148, label %145

145:                                              ; preds = %129
  %146 = load i32, ptr %115, align 4
  %147 = or i32 %146, 1024
  br label %148

148:                                              ; preds = %145, %129
  %149 = phi i32 [ %147, %145 ], [ %118, %129 ]
  %150 = add i32 %144, %133
  %151 = icmp ult i32 %150, %20
  br i1 %151, label %152, label %258

152:                                              ; preds = %148
  %153 = or i32 %149, 16
  %154 = load ptr, ptr %113, align 4
  %155 = getelementptr %union.xhci_trb, ptr %154, i32 1, i32 0, i32 2
  %156 = load i32, ptr %155, align 4
  %157 = and i32 %156, 64512
  %158 = icmp eq i32 %157, 6144
  br i1 %158, label %159, label %258

159:                                              ; preds = %152
  %160 = load ptr, ptr %119, align 4
  %161 = load ptr, ptr %0, align 8
  %162 = load ptr, ptr %161, align 8
  %163 = load ptr, ptr %11, align 4
  %164 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %163, i32 0, i32 4
  %165 = load i16, ptr %164, align 1
  %166 = and i16 %165, 2047
  %167 = zext i16 %166 to i32
  %168 = urem i32 %150, %167
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %258, label %170

170:                                              ; preds = %159
  %171 = icmp ugt i32 %144, %168
  br i1 %171, label %172, label %174

172:                                              ; preds = %170
  %173 = sub i32 %144, %168
  br label %258

174:                                              ; preds = %170
  %175 = urem i32 %133, %167
  %176 = sub nsw i32 %167, %175
  %177 = load i32, ptr %19, align 4
  %178 = sub i32 %177, %133
  %179 = tail call i32 @llvm.umin.i32(i32 %176, i32 %178) #12
  %180 = load i32, ptr %104, align 4
  %181 = and i32 %180, 512
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %217

183:                                              ; preds = %174
  %184 = load i32, ptr %21, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %195, label %186

186:                                              ; preds = %183
  %187 = load ptr, ptr %120, align 4
  %188 = getelementptr inbounds %struct.xhci_segment, ptr %160, i32 0, i32 4
  %189 = load ptr, ptr %188, align 4
  %190 = tail call i32 @sg_pcopy_to_buffer(ptr noundef %187, i32 noundef %184, ptr noundef %189, i32 noundef %179, i32 noundef %133) #12
  %191 = icmp eq i32 %190, %179
  br i1 %191, label %200, label %192

192:                                              ; preds = %186
  %193 = load ptr, ptr %0, align 8
  %194 = load ptr, ptr %193, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %194, ptr noundef nonnull @.str.87, i32 noundef %190, i32 noundef %179) #11
  br label %200

195:                                              ; preds = %183
  %196 = getelementptr inbounds %struct.xhci_segment, ptr %160, i32 0, i32 4
  %197 = load ptr, ptr %196, align 4
  %198 = load ptr, ptr %121, align 4
  %199 = getelementptr i8, ptr %198, i32 %133
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %197, ptr align 1 %199, i32 %179, i1 false) #12
  br label %200

200:                                              ; preds = %195, %192, %186
  %201 = getelementptr inbounds %struct.xhci_segment, ptr %160, i32 0, i32 4
  %202 = load ptr, ptr %201, align 4
  %203 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %202) #12
  %204 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %205 = xor i1 %204, true
  %206 = select i1 %203, i1 %205, i1 false
  br i1 %206, label %207, label %216, !prof !49

207:                                              ; preds = %200
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %208 = tail call ptr @dev_driver_string(ptr noundef %162) #12
  %209 = getelementptr inbounds %struct.device, ptr %162, i32 0, i32 3
  %210 = load ptr, ptr %209, align 4
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %214

212:                                              ; preds = %207
  %213 = load ptr, ptr %162, align 4
  br label %214

214:                                              ; preds = %212, %207
  %215 = phi ptr [ %213, %212 ], [ %210, %207 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.89, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.90, ptr noundef %208, ptr noundef %215) #12
  br label %216

216:                                              ; preds = %214, %200
  br i1 %203, label %234, label %236

217:                                              ; preds = %174
  %218 = getelementptr inbounds %struct.xhci_segment, ptr %160, i32 0, i32 4
  %219 = load ptr, ptr %218, align 4
  %220 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %219) #12
  %221 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %222 = xor i1 %221, true
  %223 = select i1 %220, i1 %222, i1 false
  br i1 %223, label %224, label %233, !prof !49

224:                                              ; preds = %217
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %225 = tail call ptr @dev_driver_string(ptr noundef %162) #12
  %226 = getelementptr inbounds %struct.device, ptr %162, i32 0, i32 3
  %227 = load ptr, ptr %226, align 4
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %231

229:                                              ; preds = %224
  %230 = load ptr, ptr %162, align 4
  br label %231

231:                                              ; preds = %229, %224
  %232 = phi ptr [ %230, %229 ], [ %227, %224 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.89, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.90, ptr noundef %225, ptr noundef %232) #12
  br label %233

233:                                              ; preds = %231, %217
  br i1 %220, label %234, label %236

234:                                              ; preds = %233, %216
  %235 = getelementptr inbounds %struct.xhci_segment, ptr %160, i32 0, i32 3
  store i32 -1, ptr %235, align 4
  br label %248

236:                                              ; preds = %233, %216
  %237 = phi ptr [ %202, %216 ], [ %219, %233 ]
  %238 = phi i32 [ 1, %216 ], [ 2, %233 ]
  %239 = load ptr, ptr @mem_map, align 4
  %240 = ptrtoint ptr %237 to i32
  %241 = add i32 %240, 1073741824
  %242 = lshr i32 %241, 12
  %243 = getelementptr %struct.page, ptr %239, i32 %242
  %244 = and i32 %240, 4095
  %245 = tail call i32 @dma_map_page_attrs(ptr noundef %162, ptr noundef %243, i32 noundef %244, i32 noundef %167, i32 noundef %238, i32 noundef 0) #12
  %246 = getelementptr inbounds %struct.xhci_segment, ptr %160, i32 0, i32 3
  store i32 %245, ptr %246, align 4
  %247 = icmp eq i32 %245, -1
  br i1 %247, label %248, label %251

248:                                              ; preds = %236, %234
  %249 = load ptr, ptr %0, align 8
  %250 = load ptr, ptr %249, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %250, ptr noundef nonnull @.str.88) #11
  br label %258

251:                                              ; preds = %236
  %252 = getelementptr inbounds %struct.xhci_segment, ptr %160, i32 0, i32 6
  store i32 %179, ptr %252, align 4
  %253 = getelementptr inbounds %struct.xhci_segment, ptr %160, i32 0, i32 5
  store i32 %133, ptr %253, align 4
  %254 = load ptr, ptr %119, align 4
  %255 = getelementptr inbounds %struct.xhci_segment, ptr %254, i32 0, i32 3
  %256 = load i32, ptr %255, align 4
  %257 = zext i32 %256 to i64
  store i64 %257, ptr %6, align 8
  store ptr %254, ptr %122, align 4
  br label %258

258:                                              ; preds = %251, %248, %172, %159, %152, %148
  %259 = phi i32 [ %179, %251 ], [ %144, %152 ], [ %144, %148 ], [ %144, %248 ], [ %173, %172 ], [ %144, %159 ]
  %260 = phi i32 [ %153, %251 ], [ %153, %152 ], [ %149, %148 ], [ %153, %248 ], [ %153, %172 ], [ %153, %159 ]
  %261 = add i32 %259, %133
  %262 = icmp ult i32 %261, %20
  br i1 %262, label %294, label %263

263:                                              ; preds = %258
  %264 = and i32 %260, -49
  %265 = or i32 %264, 32
  %266 = load ptr, ptr %113, align 4
  store ptr %266, ptr %123, align 4
  %267 = load ptr, ptr %119, align 4
  store ptr %267, ptr %124, align 4
  %268 = load ptr, ptr %11, align 4
  %269 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %268, i32 0, i32 3
  %270 = load i8, ptr %269, align 1
  %271 = and i8 %270, 3
  %272 = icmp eq i8 %271, 1
  br i1 %272, label %294, label %273

273:                                              ; preds = %263
  %274 = load i32, ptr %104, align 4
  %275 = and i32 %274, 512
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %294

277:                                              ; preds = %273
  %278 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %268, i32 0, i32 4
  %279 = load i16, ptr %278, align 1
  %280 = and i16 %279, 2040
  %281 = icmp eq i16 %280, 0
  br i1 %281, label %294, label %282

282:                                              ; preds = %277
  %283 = load i32, ptr %19, align 4
  %284 = icmp ult i32 %283, 9
  %285 = and i32 %274, 4
  %286 = icmp eq i32 %285, 0
  %287 = select i1 %284, i1 %286, i1 false
  br i1 %287, label %288, label %294

288:                                              ; preds = %282
  %289 = load i32, ptr %21, align 4
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %294

291:                                              ; preds = %288
  %292 = load ptr, ptr %121, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %6, ptr align 1 %292, i32 %259, i1 false)
  %293 = or i32 %264, 96
  br label %294

294:                                              ; preds = %291, %288, %282, %277, %273, %263, %258
  %295 = phi i1 [ false, %291 ], [ %136, %258 ], [ false, %263 ], [ false, %273 ], [ false, %277 ], [ false, %282 ], [ false, %288 ]
  %296 = phi i32 [ %293, %291 ], [ %260, %258 ], [ %265, %263 ], [ %265, %273 ], [ %265, %277 ], [ %265, %282 ], [ %265, %288 ]
  %297 = load i32, ptr %104, align 4
  %298 = lshr i32 %297, 7
  %299 = and i32 %298, 4
  %300 = or i32 %299, %296
  %301 = load i16, ptr %125, align 2
  %302 = icmp ult i16 %301, 256
  br i1 %302, label %303, label %309

303:                                              ; preds = %294
  %304 = load i64, ptr %126, align 8
  %305 = and i64 %304, 2097152
  %306 = icmp eq i64 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %303
  %308 = lshr i32 %143, 10
  br label %332

309:                                              ; preds = %303, %294
  %310 = xor i1 %295, true
  %311 = or i32 %259, %133
  %312 = icmp eq i32 %311, 0
  %313 = or i1 %312, %310
  %314 = icmp eq i32 %259, %20
  %315 = or i1 %314, %313
  br i1 %315, label %332, label %316

316:                                              ; preds = %309
  %317 = load i64, ptr %126, align 8
  %318 = and i64 %317, 2097152
  %319 = icmp eq i64 %318, 0
  %320 = select i1 %302, i32 0, i32 %259
  %321 = select i1 %319, i32 %259, i32 %320
  %322 = load ptr, ptr %11, align 4
  %323 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %322, i32 0, i32 4
  %324 = load i16, ptr %323, align 1
  %325 = and i16 %324, 2047
  %326 = zext i16 %325 to i32
  %327 = add i32 %127, %326
  %328 = udiv i32 %327, %326
  %329 = add i32 %321, %133
  %330 = udiv i32 %329, %326
  %331 = sub i32 %328, %330
  br label %332

332:                                              ; preds = %316, %309, %307
  %333 = phi i32 [ %331, %316 ], [ %308, %307 ], [ 0, %309 ]
  %334 = and i32 %259, 131071
  %335 = tail call i32 @llvm.umin.i32(i32 %333, i32 31)
  %336 = shl nuw nsw i32 %335, 17
  %337 = or i32 %336, %334
  %338 = or i1 %112, %295
  %339 = load i64, ptr %6, align 8
  %340 = trunc i64 %339 to i32
  %341 = lshr i64 %339, 32
  %342 = trunc i64 %341 to i32
  tail call fastcc void @queue_trb(ptr noundef %0, ptr noundef nonnull %16, i1 noundef zeroext %338, i32 noundef %340, i32 noundef %342, i32 noundef %337, i32 noundef %300)
  %343 = load i32, ptr %128, align 4
  %344 = add i32 %343, 1
  store i32 %344, ptr %128, align 4
  %345 = zext i32 %259 to i64
  %346 = add i64 %131, %345
  %347 = icmp ne ptr %130, null
  %348 = icmp uge i32 %259, %132
  %349 = select i1 %347, i1 %348, i1 false
  br i1 %349, label %350, label %375

350:                                              ; preds = %370, %332
  %351 = phi ptr [ %358, %370 ], [ %130, %332 ]
  %352 = phi i64 [ %372, %370 ], [ %346, %332 ]
  %353 = phi i32 [ %357, %370 ], [ %259, %332 ]
  %354 = phi i32 [ %371, %370 ], [ %132, %332 ]
  %355 = phi i32 [ %356, %370 ], [ %134, %332 ]
  %356 = add i32 %355, -1
  %357 = sub i32 %353, %354
  %358 = tail call ptr @sg_next(ptr noundef nonnull %351) #12
  %359 = icmp ne i32 %356, 0
  %360 = icmp ne ptr %358, null
  %361 = select i1 %359, i1 %360, i1 false
  br i1 %361, label %362, label %370

362:                                              ; preds = %350
  %363 = getelementptr inbounds %struct.scatterlist, ptr %358, i32 0, i32 4
  %364 = load i32, ptr %363, align 4
  %365 = getelementptr inbounds %struct.scatterlist, ptr %358, i32 0, i32 3
  %366 = load i32, ptr %365, align 4
  %367 = zext i32 %366 to i64
  %368 = sext i32 %357 to i64
  %369 = add nsw i64 %367, %368
  br label %370

370:                                              ; preds = %362, %350
  %371 = phi i32 [ %364, %362 ], [ %354, %350 ]
  %372 = phi i64 [ %369, %362 ], [ %352, %350 ]
  %373 = icmp uge i32 %357, %371
  %374 = select i1 %360, i1 %373, i1 false
  br i1 %374, label %350, label %375

375:                                              ; preds = %370, %332
  %376 = phi i32 [ %134, %332 ], [ %356, %370 ]
  %377 = phi i32 [ %132, %332 ], [ %371, %370 ]
  %378 = phi i32 [ %259, %332 ], [ %357, %370 ]
  %379 = phi i64 [ %346, %332 ], [ %372, %370 ]
  %380 = phi ptr [ %130, %332 ], [ %358, %370 ]
  %381 = sub i32 %377, %378
  store i64 %379, ptr %6, align 8
  br i1 %262, label %129, label %382

382:                                              ; preds = %375
  br i1 %112, label %383, label %423

383:                                              ; preds = %382
  %384 = load ptr, ptr %96, align 4
  %385 = load i32, ptr %14, align 4
  %386 = getelementptr inbounds %struct.xhci_virt_device, ptr %384, i32 0, i32 2
  %387 = load ptr, ptr %386, align 4
  %388 = tail call ptr @xhci_get_ep_ctx(ptr noundef %0, ptr noundef %387, i32 noundef %4) #12
  %389 = load i32, ptr %384, align 4
  %390 = tail call ptr @xhci_triad_to_transfer_ring(ptr noundef %0, i32 noundef %389, i32 noundef %4, i32 noundef %385) #12
  %391 = icmp eq ptr %390, null
  br i1 %391, label %413, label %392

392:                                              ; preds = %383
  %393 = load i32, ptr %388, align 8
  %394 = and i32 %393, 7
  %395 = tail call fastcc i32 @prepare_ring(ptr noundef %0, ptr noundef nonnull %390, i32 noundef %394, i32 noundef 1, i32 noundef %1) #12
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %397, label %413

397:                                              ; preds = %392
  %398 = load ptr, ptr %102, align 4
  %399 = getelementptr %struct.urb_priv, ptr %398, i32 0, i32 2, i32 1
  store volatile ptr %399, ptr %399, align 4
  %400 = getelementptr %struct.urb_priv, ptr %398, i32 8, i32 1
  store ptr %399, ptr %400, align 4
  %401 = getelementptr %struct.urb_priv, ptr %398, i32 0, i32 2, i32 1, i32 1
  store volatile ptr %401, ptr %401, align 4
  %402 = getelementptr %struct.urb_priv, ptr %398, i32 0, i32 2, i32 1, i32 1, i32 1
  store ptr %401, ptr %402, align 4
  %403 = getelementptr %struct.urb_priv, ptr %398, i32 0, i32 2, i32 1, i32 4
  store ptr %2, ptr %403, align 4
  %404 = getelementptr inbounds %struct.xhci_ring, ptr %390, i32 0, i32 6
  %405 = getelementptr inbounds %struct.xhci_ring, ptr %390, i32 0, i32 6, i32 1
  %406 = load ptr, ptr %405, align 4
  store ptr %399, ptr %405, align 4
  store ptr %404, ptr %399, align 4
  store ptr %406, ptr %400, align 4
  store volatile ptr %399, ptr %406, align 4
  %407 = getelementptr inbounds %struct.xhci_ring, ptr %390, i32 0, i32 3
  %408 = load ptr, ptr %407, align 4
  %409 = getelementptr %struct.urb_priv, ptr %398, i32 0, i32 2, i32 1, i32 5
  store ptr %408, ptr %409, align 4
  %410 = getelementptr inbounds %struct.xhci_ring, ptr %390, i32 0, i32 2
  %411 = load ptr, ptr %410, align 4
  %412 = getelementptr %struct.urb_priv, ptr %398, i32 0, i32 2, i32 1, i32 6
  store ptr %411, ptr %412, align 4
  br label %413

413:                                              ; preds = %397, %392, %383
  %414 = load ptr, ptr %113, align 4
  %415 = getelementptr %struct.urb_priv, ptr %103, i32 12, i32 1
  store ptr %414, ptr %415, align 4
  %416 = load ptr, ptr %119, align 4
  %417 = getelementptr %struct.urb_priv, ptr %103, i32 13
  store ptr %416, ptr %417, align 4
  %418 = load i32, ptr %115, align 4
  %419 = or i32 %418, 1056
  tail call fastcc void @queue_trb(ptr noundef %0, ptr noundef nonnull %16, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %419)
  %420 = getelementptr %struct.urb_priv, ptr %103, i32 14, i32 1
  %421 = load i32, ptr %420, align 4
  %422 = add i32 %421, 1
  store i32 %422, ptr %420, align 4
  br label %423

423:                                              ; preds = %413, %382
  %424 = load i32, ptr %19, align 4
  %425 = icmp eq i32 %424, %261
  br i1 %425, label %433, label %426, !prof !50

426:                                              ; preds = %423
  %427 = load ptr, ptr %7, align 4
  %428 = getelementptr inbounds %struct.usb_device, ptr %427, i32 0, i32 15
  %429 = load ptr, ptr %11, align 4
  %430 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %429, i32 0, i32 2
  %431 = load i8, ptr %430, align 2
  %432 = zext i8 %431 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %428, ptr noundef nonnull @.str.93, ptr noundef nonnull @__func__.check_trb_math, i32 noundef %432, i32 noundef %261, i32 noundef %261, i32 noundef %424, i32 noundef %424) #11
  br label %433

433:                                              ; preds = %426, %423
  %434 = load i32, ptr %14, align 4
  tail call fastcc void @giveback_first_trb(ptr noundef %0, i32 noundef %3, i32 noundef %4, i32 noundef %434, i32 noundef %116, ptr noundef %114)
  br label %435

435:                                              ; preds = %433, %89, %5
  %436 = phi i32 [ 0, %433 ], [ -22, %5 ], [ %99, %89 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  ret i32 %436
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @prepare_transfer(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #2 {
  %9 = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @xhci_get_ep_ctx(ptr noundef %0, ptr noundef %10, i32 noundef %2) #12
  %12 = load i32, ptr %1, align 4
  %13 = tail call ptr @xhci_triad_to_transfer_ring(ptr noundef %0, i32 noundef %12, i32 noundef %2, i32 noundef %3)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %46, label %15

15:                                               ; preds = %8
  %16 = load i32, ptr %11, align 8
  %17 = and i32 %16, 7
  %18 = tail call fastcc i32 @prepare_ring(ptr noundef %0, ptr noundef nonnull %13, i32 noundef %17, i32 noundef %4, i32 noundef %7)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr %struct.urb_priv, ptr %22, i32 0, i32 2, i32 %6
  store volatile ptr %23, ptr %23, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %23, ptr %24, align 4
  %25 = getelementptr %struct.urb_priv, ptr %22, i32 0, i32 2, i32 %6, i32 1
  store volatile ptr %25, ptr %25, align 4
  %26 = getelementptr %struct.urb_priv, ptr %22, i32 0, i32 2, i32 %6, i32 1, i32 1
  store ptr %25, ptr %26, align 4
  %27 = icmp eq i32 %6, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 8
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.usb_device, ptr %30, i32 0, i32 12
  %32 = load ptr, ptr %31, align 8
  %33 = tail call i32 @usb_hcd_link_urb_to_ep(ptr noundef %32, ptr noundef %5) #12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %46, !prof !50

35:                                               ; preds = %28, %20
  %36 = getelementptr %struct.urb_priv, ptr %22, i32 0, i32 2, i32 %6, i32 4
  store ptr %5, ptr %36, align 4
  %37 = getelementptr inbounds %struct.xhci_ring, ptr %13, i32 0, i32 6
  %38 = getelementptr inbounds %struct.xhci_ring, ptr %13, i32 0, i32 6, i32 1
  %39 = load ptr, ptr %38, align 4
  store ptr %23, ptr %38, align 4
  store ptr %37, ptr %23, align 4
  store ptr %39, ptr %24, align 4
  store volatile ptr %23, ptr %39, align 4
  %40 = getelementptr inbounds %struct.xhci_ring, ptr %13, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr %struct.urb_priv, ptr %22, i32 0, i32 2, i32 %6, i32 5
  store ptr %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.xhci_ring, ptr %13, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr %struct.urb_priv, ptr %22, i32 0, i32 2, i32 %6, i32 6
  store ptr %44, ptr %45, align 4
  br label %46

46:                                               ; preds = %35, %28, %15, %8
  %47 = phi i32 [ 0, %35 ], [ -22, %8 ], [ %18, %15 ], [ %33, %28 ]
  ret i32 %47
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @queue_trb(ptr nocapture noundef readonly %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #2 {
  %8 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  store i32 %3, ptr %9, align 4
  %10 = getelementptr [4 x i32], ptr %9, i32 0, i32 1
  store i32 %4, ptr %10, align 4
  %11 = getelementptr [4 x i32], ptr %9, i32 0, i32 2
  store i32 %5, ptr %11, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !51
  tail call void @arm_heavy_mb() #12
  %12 = getelementptr [4 x i32], ptr %9, i32 0, i32 3
  store i32 %6, ptr %12, align 4
  %13 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_queue_trb, i32 0, i32 1), align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %7
  %16 = tail call ptr @llvm.thread.pointer() #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !52
  %27 = tail call i32 @__traceiter_xhci_queue_trb(ptr noundef null, ptr noundef %1, ptr noundef %9) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !53
  br label %28

28:                                               ; preds = %26, %15, %7
  %29 = load ptr, ptr %8, align 4
  %30 = getelementptr [4 x i32], ptr %29, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = freeze i32 %31
  %33 = and i32 %32, 16
  %34 = and i32 %32, 64512
  %35 = icmp eq i32 %34, 6144
  br i1 %35, label %40, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 11
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, -1
  store i32 %39, ptr %37, align 4
  br label %40

40:                                               ; preds = %36, %28
  %41 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr %union.xhci_trb, ptr %43, i32 255
  %45 = icmp eq ptr %44, %29
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load ptr, ptr %0, align 8
  %48 = load ptr, ptr %47, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.91) #11
  br label %112

49:                                               ; preds = %40
  %50 = getelementptr %union.xhci_trb, ptr %29, i32 1
  store ptr %50, ptr %8, align 4
  %51 = icmp ne i32 %33, 0
  %52 = or i1 %51, %2
  %53 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 14
  %54 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 51
  %55 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 7
  %56 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 10
  br i1 %52, label %57, label %96

57:                                               ; preds = %85, %49
  %58 = phi ptr [ %89, %85 ], [ %50, %49 ]
  %59 = phi i32 [ %90, %85 ], [ 0, %49 ]
  %60 = getelementptr inbounds %struct.xhci_link_trb, ptr %58, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 64512
  %63 = icmp eq i32 %62, 6144
  br i1 %63, label %64, label %96

64:                                               ; preds = %57
  %65 = load i32, ptr %53, align 4
  %66 = icmp ne i32 %65, 1
  %67 = load i64, ptr %54, align 8
  %68 = and i64 %67, 512
  %69 = icmp eq i64 %68, 0
  %70 = select i1 %66, i1 true, i1 %69
  %71 = and i64 %67, 1
  %72 = icmp eq i64 %71, 0
  %73 = select i1 %70, i1 %72, i1 false
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = and i32 %61, -17
  %76 = or i32 %75, %33
  store i32 %76, ptr %60, align 4
  br label %77

77:                                               ; preds = %74, %64
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !54
  tail call void @arm_heavy_mb() #12
  %78 = load i32, ptr %60, align 4
  %79 = xor i32 %78, 1
  store i32 %79, ptr %60, align 4
  %80 = and i32 %78, 2
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = load i32, ptr %55, align 4
  %84 = xor i32 %83, 1
  store i32 %84, ptr %55, align 4
  br label %85

85:                                               ; preds = %82, %77
  %86 = load ptr, ptr %41, align 4
  %87 = getelementptr inbounds %struct.xhci_segment, ptr %86, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  store ptr %88, ptr %41, align 4
  %89 = load ptr, ptr %88, align 4
  store ptr %89, ptr %8, align 4
  %90 = add i32 %59, 1
  %91 = load i32, ptr %56, align 4
  %92 = icmp ugt i32 %59, %91
  br i1 %92, label %93, label %57

93:                                               ; preds = %85
  %94 = load ptr, ptr %0, align 8
  %95 = load ptr, ptr %94, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %95, ptr noundef nonnull @.str.92, ptr noundef nonnull @__func__.inc_enq) #11
  br label %96

96:                                               ; preds = %93, %57, %49
  %97 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_inc_enq, i32 0, i32 1), align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %96
  %100 = tail call ptr @llvm.thread.pointer() #12
  %101 = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 2
  %102 = load i32, ptr %101, align 8
  %103 = lshr i32 %102, 5
  %104 = getelementptr i32, ptr @__cpu_online_mask, i32 %103
  %105 = load volatile i32, ptr %104, align 4
  %106 = and i32 %102, 31
  %107 = shl nuw i32 1, %106
  %108 = and i32 %107, %105
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %99
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !55
  %111 = tail call i32 @__traceiter_xhci_inc_enq(ptr noundef null, ptr noundef %1) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !56
  br label %112

112:                                              ; preds = %110, %99, %96, %46
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @giveback_first_trb(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef %5) unnamed_addr #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !57
  tail call void @arm_heavy_mb() #12
  %7 = icmp eq i32 %4, 0
  %8 = getelementptr [4 x i32], ptr %5, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, -2
  %11 = or i32 %9, %4
  %12 = select i1 %7, i32 %10, i32 %11
  store i32 %12, ptr %8, align 4
  %13 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr [256 x i32], ptr %14, i32 0, i32 %1
  %16 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 42, i32 %1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.xhci_virt_device, ptr %17, i32 0, i32 4, i32 %2, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 263
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %6
  %23 = add i32 %2, 1
  %24 = and i32 %23, 255
  %25 = shl i32 %3, 16
  %26 = or i32 %24, %25
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_ring_ep_doorbell, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %22
  %30 = tail call ptr @llvm.thread.pointer() #12
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 5
  %34 = getelementptr i32, ptr @__cpu_online_mask, i32 %33
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %32, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  %41 = tail call i32 @__traceiter_xhci_ring_ep_doorbell(ptr noundef null, i32 noundef %1, i32 noundef %26) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  br label %42

42:                                               ; preds = %40, %29, %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !18
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %26) #12, !srcloc !13
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #12, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !19
  br label %44

44:                                               ; preds = %42, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_queue_ctrl_tx(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 43
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @xhci_get_endpoint_index(ptr noundef %12) #12
  %14 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 11
  %15 = load i32, ptr %14, align 4
  %16 = tail call ptr @xhci_triad_to_transfer_ring(ptr noundef %0, i32 noundef %10, i32 noundef %13, i32 noundef %15) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %162, label %18

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 21
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %162, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 19
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 2, i32 3
  %27 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 42, i32 %3
  %28 = load ptr, ptr %27, align 4
  %29 = load i32, ptr %14, align 4
  %30 = tail call fastcc i32 @prepare_transfer(ptr noundef %0, ptr noundef %28, i32 noundef %4, i32 noundef %29, i32 noundef %26, ptr noundef %2, i32 noundef 0, i32 noundef %1)
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %162, label %32

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.urb_priv, ptr %34, i32 7, i32 1
  store i32 %26, ptr %35, align 4
  %36 = getelementptr inbounds %struct.xhci_ring, ptr %16, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.xhci_ring, ptr %16, i32 0, i32 7
  %39 = load i32, ptr %38, align 4
  %40 = load ptr, ptr %19, align 4
  %41 = icmp eq i32 %39, 0
  %42 = select i1 %41, i32 2113, i32 2112
  %43 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 14
  %44 = load i16, ptr %43, align 2
  %45 = icmp ugt i16 %44, 255
  br i1 %45, label %51, label %46

46:                                               ; preds = %32
  %47 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 51
  %48 = load i64, ptr %47, align 8
  %49 = and i64 %48, 2097152
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %46, %32
  %52 = load i32, ptr %23, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = load i8, ptr %40, align 1
  %56 = icmp sgt i8 %55, -1
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = or i32 %42, 196608
  br label %61

59:                                               ; preds = %54
  %60 = or i32 %42, 131072
  br label %61

61:                                               ; preds = %59, %57, %51, %46
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ], [ %42, %51 ], [ %42, %46 ]
  %63 = load i8, ptr %40, align 1
  %64 = zext i8 %63 to i32
  %65 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %40, i32 0, i32 1
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = shl nuw nsw i32 %67, 8
  %69 = or i32 %68, %64
  %70 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %40, i32 0, i32 2
  %71 = load i16, ptr %70, align 1
  %72 = zext i16 %71 to i32
  %73 = shl nuw i32 %72, 16
  %74 = or i32 %69, %73
  %75 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %40, i32 0, i32 3
  %76 = load i16, ptr %75, align 1
  %77 = zext i16 %76 to i32
  %78 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %40, i32 0, i32 4
  %79 = load i16, ptr %78, align 1
  %80 = zext i16 %79 to i32
  %81 = shl nuw i32 %80, 16
  %82 = or i32 %81, %77
  tail call fastcc void @queue_trb(ptr noundef %0, ptr noundef nonnull %16, i1 noundef zeroext true, i32 noundef %74, i32 noundef %82, i32 noundef 8, i32 noundef %62)
  %83 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 13
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, 512
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %86, i32 3072, i32 3076
  %88 = load i32, ptr %23, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %146, label %90

90:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  store i64 0, ptr %6, align 8
  %91 = load ptr, ptr %11, align 4
  %92 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %91, i32 0, i32 3
  %93 = load i8, ptr %92, align 1
  %94 = and i8 %93, 3
  %95 = icmp ne i8 %94, 1
  %96 = select i1 %95, i1 %86, i1 false
  br i1 %96, label %97, label %115

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %91, i32 0, i32 4
  %99 = load i16, ptr %98, align 1
  %100 = and i16 %99, 2040
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %115, label %102

102:                                              ; preds = %97
  %103 = icmp ult i32 %88, 9
  %104 = and i32 %84, 4
  %105 = icmp eq i32 %104, 0
  %106 = select i1 %103, i1 %105, i1 false
  br i1 %106, label %107, label %115

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 18
  %109 = load i32, ptr %108, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 14
  %113 = load ptr, ptr %112, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %6, ptr align 1 %113, i32 %88, i1 false)
  %114 = or i32 %87, 64
  br label %119

115:                                              ; preds = %107, %102, %97, %90
  %116 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 15
  %117 = load i32, ptr %116, align 4
  %118 = zext i32 %117 to i64
  store i64 %118, ptr %6, align 8
  br label %119

119:                                              ; preds = %115, %111
  %120 = phi i32 [ %114, %111 ], [ %87, %115 ]
  %121 = load i16, ptr %43, align 2
  %122 = icmp ult i16 %121, 256
  br i1 %122, label %123, label %130

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 51
  %125 = load i64, ptr %124, align 8
  %126 = and i64 %125, 2097152
  %127 = icmp eq i64 %126, 0
  %128 = lshr i32 %88, 10
  %129 = select i1 %127, i32 %128, i32 0
  br label %130

130:                                              ; preds = %123, %119
  %131 = phi i32 [ 0, %119 ], [ %129, %123 ]
  %132 = and i32 %88, 131071
  %133 = tail call i32 @llvm.umin.i32(i32 %131, i32 31)
  %134 = shl nuw nsw i32 %133, 17
  %135 = or i32 %134, %132
  %136 = load i8, ptr %40, align 1
  %137 = or i32 %120, 65536
  %138 = icmp slt i8 %136, 0
  %139 = select i1 %138, i32 %137, i32 %120
  %140 = load i64, ptr %6, align 8
  %141 = trunc i64 %140 to i32
  %142 = lshr i64 %140, 32
  %143 = trunc i64 %142 to i32
  %144 = load i32, ptr %38, align 4
  %145 = or i32 %139, %144
  tail call fastcc void @queue_trb(ptr noundef %0, ptr noundef nonnull %16, i1 noundef zeroext true, i32 noundef %141, i32 noundef %143, i32 noundef %135, i32 noundef %145)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  br label %146

146:                                              ; preds = %130, %61
  %147 = load ptr, ptr %36, align 4
  %148 = getelementptr inbounds %struct.urb_priv, ptr %34, i32 5, i32 1
  store ptr %147, ptr %148, align 4
  %149 = getelementptr inbounds %struct.xhci_ring, ptr %16, i32 0, i32 3
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.urb_priv, ptr %34, i32 6
  store ptr %150, ptr %151, align 4
  %152 = load i32, ptr %23, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %146
  %155 = load i8, ptr %40, align 1
  %156 = icmp sgt i8 %155, -1
  br i1 %156, label %157, label %158

157:                                              ; preds = %154, %146
  br label %158

158:                                              ; preds = %157, %154
  %159 = phi i32 [ 69664, %157 ], [ 4128, %154 ]
  %160 = load i32, ptr %38, align 4
  %161 = or i32 %160, %159
  tail call fastcc void @queue_trb(ptr noundef %0, ptr noundef nonnull %16, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %161)
  tail call fastcc void @giveback_first_trb(ptr noundef %0, i32 noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef %39, ptr noundef %37)
  br label %162

162:                                              ; preds = %158, %22, %18, %5
  %163 = phi i32 [ 0, %158 ], [ -22, %5 ], [ -22, %18 ], [ %30, %22 ]
  ret i32 %163
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_queue_isoc_tx_prepare(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 42, i32 %3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.xhci_virt_device, ptr %7, i32 0, i32 4, i32 %4, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.xhci_virt_device, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @xhci_get_ep_ctx(ptr noundef %0, ptr noundef %11, i32 noundef %4) #12
  %13 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 24
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 15
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %19, %16
  %20 = phi i32 [ 0, %16 ], [ %36, %19 ]
  %21 = phi i32 [ 0, %16 ], [ %37, %19 ]
  %22 = getelementptr %struct.urb, ptr %2, i32 0, i32 29, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, %18
  %25 = getelementptr %struct.urb, ptr %2, i32 0, i32 29, i32 %21, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = zext i32 %26 to i64
  %28 = and i32 %24, 65535
  %29 = zext i32 %28 to i64
  %30 = add nuw nsw i64 %27, 65535
  %31 = add nuw nsw i64 %30, %29
  %32 = lshr i64 %31, 16
  %33 = trunc i64 %32 to i32
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 1, i32 %33
  %36 = add i32 %35, %20
  %37 = add nuw nsw i32 %21, 1
  %38 = icmp eq i32 %37, %14
  br i1 %38, label %39, label %19

39:                                               ; preds = %19, %5
  %40 = phi i32 [ 0, %5 ], [ %36, %19 ]
  %41 = load i32, ptr %12, align 8
  %42 = and i32 %41, 7
  %43 = tail call fastcc i32 @prepare_ring(ptr noundef %0, ptr noundef %9, i32 noundef %42, i32 noundef %40, i32 noundef %1)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %516

45:                                               ; preds = %39
  %46 = load i32, ptr %12, align 8
  %47 = lshr i32 %46, 16
  %48 = and i32 %47, 255
  %49 = shl nuw i32 1, %48
  %50 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 25
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 8
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.usb_device, ptr %53, i32 0, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, -1
  %57 = icmp ult i32 %56, 2
  %58 = shl i32 %51, 3
  %59 = select i1 %57, i32 %58, i32 %51
  %60 = icmp eq i32 %49, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %45
  store i32 %49, ptr %50, align 4
  %62 = load i32, ptr %54, align 4
  %63 = add i32 %62, -1
  %64 = icmp ult i32 %63, 2
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = sdiv i32 %49, 8
  store i32 %66, ptr %50, align 4
  br label %67

67:                                               ; preds = %65, %61, %45
  %68 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 10
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, 2048
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.xhci_ring, ptr %9, i32 0, i32 6
  %74 = load volatile ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, %73
  br i1 %75, label %83, label %76

76:                                               ; preds = %72
  %77 = load i32, ptr %12, align 8
  %78 = and i32 %77, 7
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = getelementptr %struct.xhci_virt_device, ptr %7, i32 0, i32 4, i32 %4, i32 14
  %82 = load i32, ptr %81, align 4
  br label %116

83:                                               ; preds = %76, %72, %67
  %84 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 4
  %85 = load ptr, ptr %84, align 8
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #12, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !58
  %87 = and i32 %86, 16383
  %88 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 8
  %89 = load i32, ptr %88, align 8
  %90 = and i32 %89, 7
  %91 = and i32 %89, 8
  %92 = icmp eq i32 %91, 0
  %93 = shl nuw nsw i32 %90, 3
  %94 = select i1 %92, i32 %90, i32 %93
  %95 = add nuw nsw i32 %87, 17
  %96 = add nuw nsw i32 %95, %94
  %97 = and i32 %96, 65528
  %98 = load ptr, ptr %52, align 4
  %99 = getelementptr inbounds %struct.usb_device, ptr %98, i32 0, i32 4
  %100 = load i32, ptr %99, align 4
  %101 = add i32 %100, -1
  %102 = icmp ult i32 %101, 2
  %103 = load i32, ptr %50, align 4
  br i1 %102, label %104, label %111

104:                                              ; preds = %83
  %105 = shl i32 %103, 3
  %106 = add nsw i32 %97, -1
  %107 = add i32 %106, %105
  %108 = srem i32 %107, %105
  %109 = sub i32 %107, %108
  %110 = ashr i32 %109, 3
  br label %116

111:                                              ; preds = %83
  %112 = add nsw i32 %97, -1
  %113 = add i32 %112, %103
  %114 = srem i32 %113, %103
  %115 = sub i32 %113, %114
  br label %116

116:                                              ; preds = %111, %104, %80
  %117 = phi i32 [ %110, %104 ], [ %115, %111 ], [ %82, %80 ]
  %118 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 23
  store i32 %117, ptr %118, align 4
  %119 = getelementptr inbounds %struct.xhci_ring, ptr %9, i32 0, i32 11
  %120 = load i32, ptr %119, align 4
  %121 = getelementptr inbounds %struct.xhci_ring, ptr %9, i32 0, i32 12
  store i32 %120, ptr %121, align 4
  %122 = load ptr, ptr %6, align 4
  %123 = getelementptr %struct.xhci_virt_device, ptr %122, i32 0, i32 4, i32 %4, i32 2
  %124 = load ptr, ptr %123, align 4
  %125 = load i32, ptr %13, align 4
  %126 = icmp slt i32 %125, 1
  br i1 %126, label %516, label %127

127:                                              ; preds = %116
  %128 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 15
  %129 = load i32, ptr %128, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.xhci_ring, ptr %124, i32 0, i32 2
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr inbounds %struct.xhci_ring, ptr %124, i32 0, i32 7
  %134 = load i32, ptr %133, align 4
  %135 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 2
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 9
  %138 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 14
  %139 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 11
  %140 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 13
  %141 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 23
  %142 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 8
  %143 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 4
  %144 = icmp eq i32 %134, 0
  %145 = zext i1 %144 to i32
  %146 = getelementptr %struct.xhci_virt_device, ptr %122, i32 0, i32 4, i32 %4, i32 15
  %147 = getelementptr inbounds %struct.xhci_ring, ptr %124, i32 0, i32 3
  %148 = add nsw i32 %125, -1
  %149 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 51
  %150 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 20
  br label %151

151:                                              ; preds = %421, %127
  %152 = phi i32 [ 0, %127 ], [ %422, %421 ]
  %153 = getelementptr %struct.urb, ptr %2, i32 0, i32 29, i32 %152
  %154 = load i32, ptr %153, align 4
  %155 = zext i32 %154 to i64
  %156 = add nuw nsw i64 %155, %130
  %157 = getelementptr %struct.urb, ptr %2, i32 0, i32 29, i32 %152, i32 1
  %158 = load i32, ptr %157, align 4
  %159 = load ptr, ptr %137, align 4
  %160 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %159, i32 0, i32 4
  %161 = load i16, ptr %160, align 1
  %162 = and i16 %161, 2047
  %163 = zext i16 %162 to i32
  %164 = add i32 %158, -1
  %165 = add i32 %164, %163
  %166 = udiv i32 %165, %163
  %167 = icmp ult i32 %165, %163
  %168 = select i1 %167, i32 1, i32 %166
  %169 = load i16, ptr %138, align 2
  %170 = icmp ult i16 %169, 256
  br i1 %170, label %190, label %171

171:                                              ; preds = %151
  %172 = load ptr, ptr %52, align 4
  %173 = getelementptr inbounds %struct.usb_device, ptr %172, i32 0, i32 4
  %174 = load i32, ptr %173, align 4
  %175 = icmp ult i32 %174, 5
  br i1 %175, label %188, label %176

176:                                              ; preds = %171
  %177 = getelementptr inbounds %struct.usb_host_endpoint, ptr %159, i32 0, i32 1, i32 2
  %178 = load i8, ptr %177, align 1
  %179 = zext i8 %178 to i32
  %180 = add nuw nsw i32 %179, 1
  %181 = add i32 %168, %179
  %182 = udiv i32 %181, %180
  %183 = add i32 %182, -1
  %184 = urem i32 %168, %180
  %185 = icmp eq i32 %184, 0
  %186 = add nsw i32 %184, -1
  %187 = select i1 %185, i32 %179, i32 %186
  br label %190

188:                                              ; preds = %171
  %189 = add i32 %168, -1
  br label %190

190:                                              ; preds = %188, %176, %151
  %191 = phi i32 [ 0, %188 ], [ %183, %176 ], [ 0, %151 ]
  %192 = phi i32 [ %189, %188 ], [ %187, %176 ], [ 0, %151 ]
  %193 = load i32, ptr %128, align 4
  %194 = add i32 %193, %154
  %195 = zext i32 %158 to i64
  %196 = and i32 %194, 65535
  %197 = zext i32 %196 to i64
  %198 = add nuw nsw i64 %195, 65535
  %199 = add nuw nsw i64 %198, %197
  %200 = lshr i64 %199, 16
  %201 = trunc i64 %200 to i32
  %202 = icmp eq i32 %201, 0
  %203 = select i1 %202, i32 1, i32 %201
  %204 = load ptr, ptr %6, align 4
  %205 = load i32, ptr %139, align 4
  %206 = tail call fastcc i32 @prepare_transfer(ptr noundef %0, ptr noundef %204, i32 noundef %4, i32 noundef %205, i32 noundef %203, ptr noundef %2, i32 noundef %152, i32 noundef %1) #12
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %190
  %209 = icmp eq i32 %152, 0
  br i1 %209, label %516, label %419

210:                                              ; preds = %190
  %211 = getelementptr %struct.urb_priv, ptr %136, i32 0, i32 2, i32 %152, i32 11
  store i32 %203, ptr %211, align 4
  %212 = load i32, ptr %140, align 4
  %213 = and i32 %212, 2
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %286

215:                                              ; preds = %210
  %216 = load i32, ptr %68, align 8
  %217 = and i32 %216, 2048
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %286, label %219

219:                                              ; preds = %215
  %220 = load ptr, ptr %52, align 4
  %221 = getelementptr inbounds %struct.usb_device, ptr %220, i32 0, i32 4
  %222 = load i32, ptr %221, align 4
  %223 = add i32 %222, -1
  %224 = icmp ult i32 %223, 2
  %225 = load i32, ptr %141, align 4
  %226 = load i32, ptr %50, align 4
  %227 = mul i32 %226, %152
  %228 = add i32 %227, %225
  %229 = lshr i32 %228, 3
  %230 = select i1 %224, i32 %228, i32 %229
  %231 = load i32, ptr %142, align 8
  %232 = and i32 %231, 7
  %233 = and i32 %231, 8
  %234 = icmp eq i32 %233, 0
  %235 = shl nuw nsw i32 %232, 3
  %236 = select i1 %234, i32 %232, i32 %235
  %237 = load ptr, ptr %143, align 8
  %238 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %237) #12, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !59
  %239 = add i32 %238, 8
  %240 = add i32 %239, %236
  %241 = sdiv i32 %240, 8
  %242 = add i32 %238, 7160
  %243 = srem i32 %242, 8
  %244 = sub i32 %242, %243
  %245 = and i32 %230, 2047
  %246 = and i32 %241, 2047
  %247 = lshr i32 %244, 3
  %248 = and i32 %247, 2047
  %249 = icmp ult i32 %246, %248
  br i1 %249, label %250, label %252

250:                                              ; preds = %219
  %251 = icmp ult i32 %245, %246
  br label %256

252:                                              ; preds = %219
  %253 = icmp ugt i32 %246, %248
  br i1 %253, label %254, label %265

254:                                              ; preds = %252
  %255 = icmp ult i32 %245, %246
  br label %256

256:                                              ; preds = %254, %250
  %257 = phi i1 [ false, %254 ], [ %251, %250 ]
  %258 = phi i1 [ %255, %254 ], [ true, %250 ]
  %259 = icmp ugt i32 %245, %248
  %260 = select i1 %259, i1 %258, i1 %257
  %261 = icmp eq i32 %152, 0
  %262 = icmp eq i32 %245, %246
  %263 = select i1 %260, i1 true, i1 %262
  %264 = select i1 %261, i1 %263, i1 false
  br i1 %264, label %267, label %276

265:                                              ; preds = %252
  %266 = icmp eq i32 %152, 0
  br i1 %266, label %267, label %277

267:                                              ; preds = %265, %256
  %268 = add nuw nsw i32 %246, 1
  %269 = load ptr, ptr %52, align 4
  %270 = getelementptr inbounds %struct.usb_device, ptr %269, i32 0, i32 4
  %271 = load i32, ptr %270, align 4
  %272 = add i32 %271, -1
  %273 = icmp ult i32 %272, 2
  %274 = shl nuw nsw i32 %268, 3
  %275 = select i1 %273, i32 %268, i32 %274
  store i32 %275, ptr %141, align 4
  br label %282

276:                                              ; preds = %256
  br i1 %260, label %277, label %282

277:                                              ; preds = %276, %265
  %278 = load ptr, ptr %0, align 8
  %279 = load ptr, ptr %278, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %279, ptr noundef nonnull @.str.102, i32 noundef %245, i32 noundef %238, i32 noundef %152, i32 noundef %246, i32 noundef %248) #11
  %280 = load ptr, ptr %0, align 8
  %281 = load ptr, ptr %280, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %281, ptr noundef nonnull @.str.103) #11
  br label %286

282:                                              ; preds = %276, %267
  %283 = phi i32 [ %245, %276 ], [ %268, %267 ]
  %284 = shl nuw i32 %283, 20
  %285 = and i32 %284, 2146435072
  br label %286

286:                                              ; preds = %282, %277, %215, %210
  %287 = phi i32 [ -2147483648, %210 ], [ %285, %282 ], [ -2147483648, %277 ], [ -2147483648, %215 ]
  %288 = shl i32 %192, 16
  %289 = and i32 %288, 983040
  %290 = icmp eq i32 %152, 0
  br i1 %290, label %293, label %291

291:                                              ; preds = %286
  %292 = load i32, ptr %133, align 4
  br label %293

293:                                              ; preds = %291, %286
  %294 = phi i32 [ %292, %291 ], [ %145, %286 ]
  %295 = load i8, ptr %146, align 4, !range !46
  %296 = icmp eq i8 %295, 0
  %297 = shl i32 %191, 7
  %298 = and i32 %297, 384
  %299 = select i1 %296, i32 %298, i32 0
  %300 = or i32 %289, %287
  %301 = or i32 %300, %294
  %302 = or i32 %301, %299
  %303 = or i32 %302, 5120
  %304 = add nsw i32 %203, -1
  %305 = getelementptr %struct.urb_priv, ptr %136, i32 0, i32 2, i32 %152, i32 7
  %306 = getelementptr %struct.urb_priv, ptr %136, i32 0, i32 2, i32 %152, i32 8
  %307 = icmp eq i32 %148, %152
  %308 = tail call i32 @llvm.umin.i32(i32 %191, i32 31) #12
  br label %309

309:                                              ; preds = %402, %293
  %310 = phi i32 [ 0, %293 ], [ %412, %402 ]
  %311 = phi i64 [ %156, %293 ], [ %410, %402 ]
  %312 = phi i32 [ %158, %293 ], [ %411, %402 ]
  %313 = phi i32 [ 0, %293 ], [ %408, %402 ]
  %314 = phi i32 [ %303, %293 ], [ %394, %402 ]
  %315 = phi i1 [ true, %293 ], [ false, %402 ]
  br i1 %315, label %319, label %316

316:                                              ; preds = %309
  %317 = load i32, ptr %133, align 4
  %318 = or i32 %317, 1024
  br label %319

319:                                              ; preds = %316, %309
  %320 = phi i32 [ %314, %309 ], [ %318, %316 ]
  %321 = load i32, ptr %140, align 4
  %322 = lshr i32 %321, 7
  %323 = and i32 %322, 4
  %324 = or i32 %323, %320
  %325 = icmp ult i32 %310, %304
  br i1 %325, label %326, label %329

326:                                              ; preds = %319
  %327 = or i32 %324, 16
  %328 = load i16, ptr %138, align 2
  br label %353

329:                                              ; preds = %319
  %330 = load ptr, ptr %131, align 4
  store ptr %330, ptr %305, align 4
  %331 = load ptr, ptr %147, align 4
  store ptr %331, ptr %306, align 4
  %332 = or i32 %324, 32
  %333 = load i16, ptr %138, align 2
  %334 = icmp ult i16 %333, 256
  %335 = or i1 %307, %334
  br i1 %335, label %353, label %336

336:                                              ; preds = %329
  br i1 %290, label %345, label %337

337:                                              ; preds = %336
  %338 = load i64, ptr %149, align 8
  %339 = and i64 %338, 32768
  %340 = icmp eq i64 %339, 0
  br i1 %340, label %345, label %341

341:                                              ; preds = %337
  %342 = load i32, ptr %150, align 8
  %343 = urem i32 %152, %342
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %347, label %345

345:                                              ; preds = %341, %337, %336
  %346 = or i32 %324, 544
  br label %347

347:                                              ; preds = %345, %341
  %348 = phi i32 [ %346, %345 ], [ %332, %341 ]
  %349 = trunc i64 %311 to i32
  %350 = and i32 %349, 65535
  %351 = sub nuw nsw i32 65536, %350
  %352 = tail call i32 @llvm.smin.i32(i32 %351, i32 %312) #12
  br label %391

353:                                              ; preds = %329, %326
  %354 = phi i16 [ %333, %329 ], [ %328, %326 ]
  %355 = phi i32 [ %332, %329 ], [ %327, %326 ]
  %356 = trunc i64 %311 to i32
  %357 = and i32 %356, 65535
  %358 = sub nuw nsw i32 65536, %357
  %359 = tail call i32 @llvm.smin.i32(i32 %358, i32 %312) #12
  %360 = icmp ult i16 %354, 256
  br i1 %360, label %361, label %368

361:                                              ; preds = %353
  %362 = load i64, ptr %149, align 8
  %363 = and i64 %362, 2097152
  %364 = icmp eq i64 %363, 0
  br i1 %364, label %365, label %368

365:                                              ; preds = %361
  %366 = sub i32 %158, %313
  %367 = lshr i32 %366, 10
  br label %391

368:                                              ; preds = %361, %353
  %369 = xor i1 %325, true
  %370 = or i32 %359, %313
  %371 = icmp eq i32 %370, 0
  %372 = or i1 %371, %369
  %373 = icmp eq i32 %359, %158
  %374 = or i1 %373, %372
  br i1 %374, label %391, label %375

375:                                              ; preds = %368
  %376 = load i64, ptr %149, align 8
  %377 = and i64 %376, 2097152
  %378 = icmp eq i64 %377, 0
  %379 = select i1 %360, i32 0, i32 %359
  %380 = select i1 %378, i32 %359, i32 %379
  %381 = load ptr, ptr %137, align 4
  %382 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %381, i32 0, i32 4
  %383 = load i16, ptr %382, align 1
  %384 = and i16 %383, 2047
  %385 = zext i16 %384 to i32
  %386 = add i32 %164, %385
  %387 = udiv i32 %386, %385
  %388 = add i32 %380, %313
  %389 = udiv i32 %388, %385
  %390 = sub i32 %387, %389
  br label %391

391:                                              ; preds = %375, %368, %365, %347
  %392 = phi i32 [ %359, %375 ], [ %359, %365 ], [ %359, %368 ], [ %352, %347 ]
  %393 = phi i32 [ %356, %375 ], [ %356, %365 ], [ %356, %368 ], [ %349, %347 ]
  %394 = phi i32 [ %355, %375 ], [ %355, %365 ], [ %355, %368 ], [ %348, %347 ]
  %395 = phi i32 [ %390, %375 ], [ %367, %365 ], [ 0, %368 ], [ 0, %347 ]
  %396 = and i32 %392, 131071
  br i1 %315, label %397, label %400

397:                                              ; preds = %391
  %398 = load i8, ptr %146, align 4, !range !46
  %399 = icmp eq i8 %398, 0
  br i1 %399, label %400, label %402

400:                                              ; preds = %397, %391
  %401 = tail call i32 @llvm.umin.i32(i32 %395, i32 31) #12
  br label %402

402:                                              ; preds = %400, %397
  %403 = phi i32 [ %401, %400 ], [ %308, %397 ]
  %404 = shl nuw nsw i32 %403, 17
  %405 = or i32 %404, %396
  %406 = lshr i64 %311, 32
  %407 = trunc i64 %406 to i32
  tail call fastcc void @queue_trb(ptr noundef %0, ptr noundef %124, i1 noundef zeroext %325, i32 noundef %393, i32 noundef %407, i32 noundef %405, i32 noundef %394) #12
  %408 = add i32 %392, %313
  %409 = sext i32 %392 to i64
  %410 = add i64 %311, %409
  %411 = sub i32 %312, %392
  %412 = add nuw nsw i32 %310, 1
  %413 = icmp eq i32 %412, %203
  br i1 %413, label %414, label %309

414:                                              ; preds = %402
  %415 = icmp eq i32 %158, %408
  br i1 %415, label %421, label %416

416:                                              ; preds = %414
  %417 = load ptr, ptr %0, align 8
  %418 = load ptr, ptr %417, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %418, ptr noundef nonnull @.str.101) #11
  br i1 %290, label %462, label %419

419:                                              ; preds = %416, %208
  %420 = phi i32 [ -22, %416 ], [ %206, %208 ]
  br label %453

421:                                              ; preds = %414
  %422 = add nuw nsw i32 %152, 1
  %423 = icmp eq i32 %422, %125
  br i1 %423, label %424, label %151

424:                                              ; preds = %421
  %425 = load i32, ptr %68, align 8
  %426 = and i32 %425, 2048
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %434, label %428

428:                                              ; preds = %424
  %429 = load i32, ptr %141, align 4
  %430 = load i32, ptr %50, align 4
  %431 = mul i32 %430, %125
  %432 = add i32 %431, %429
  %433 = getelementptr %struct.xhci_virt_device, ptr %122, i32 0, i32 4, i32 %4, i32 14
  store i32 %432, ptr %433, align 4
  br label %434

434:                                              ; preds = %428, %424
  %435 = load ptr, ptr %0, align 8
  %436 = getelementptr inbounds %struct.usb_bus, ptr %435, i32 0, i32 15
  %437 = load i32, ptr %436, align 8
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %439, label %447

439:                                              ; preds = %434
  %440 = load i64, ptr %149, align 8
  %441 = and i64 %440, 8
  %442 = icmp eq i64 %441, 0
  br i1 %442, label %447, label %443

443:                                              ; preds = %439
  tail call void @usb_amd_quirk_pll_disable() #12
  %444 = load ptr, ptr %0, align 8
  %445 = getelementptr inbounds %struct.usb_bus, ptr %444, i32 0, i32 15
  %446 = load i32, ptr %445, align 8
  br label %447

447:                                              ; preds = %443, %439, %434
  %448 = phi i32 [ 0, %439 ], [ %446, %443 ], [ %437, %434 ]
  %449 = phi ptr [ %435, %439 ], [ %444, %443 ], [ %435, %434 ]
  %450 = getelementptr inbounds %struct.usb_bus, ptr %449, i32 0, i32 15
  %451 = add i32 %448, 1
  store i32 %451, ptr %450, align 8
  %452 = load i32, ptr %139, align 4
  tail call fastcc void @giveback_first_trb(ptr noundef %0, i32 noundef %3, i32 noundef %4, i32 noundef %452, i32 noundef %134, ptr noundef %132) #12
  br label %516

453:                                              ; preds = %453, %419
  %454 = phi i32 [ %455, %453 ], [ %152, %419 ]
  %455 = add nsw i32 %454, -1
  %456 = getelementptr %struct.urb_priv, ptr %136, i32 0, i32 2, i32 %455
  %457 = getelementptr inbounds %struct.list_head, ptr %456, i32 0, i32 1
  %458 = load ptr, ptr %457, align 4
  %459 = load ptr, ptr %456, align 4
  %460 = getelementptr inbounds %struct.list_head, ptr %459, i32 0, i32 1
  store ptr %458, ptr %460, align 4
  store volatile ptr %459, ptr %458, align 4
  store volatile ptr %456, ptr %456, align 4
  store ptr %456, ptr %457, align 4
  %461 = icmp sgt i32 %454, 1
  br i1 %461, label %453, label %462

462:                                              ; preds = %453, %416
  %463 = phi i32 [ -22, %416 ], [ %420, %453 ]
  %464 = load ptr, ptr %131, align 4
  %465 = getelementptr inbounds %struct.urb_priv, ptr %136, i32 5, i32 1
  store ptr %464, ptr %465, align 4
  %466 = getelementptr inbounds %struct.urb_priv, ptr %136, i32 4, i32 1
  %467 = load ptr, ptr %466, align 4
  %468 = getelementptr inbounds %struct.urb_priv, ptr %136, i32 5
  br label %469

469:                                              ; preds = %502, %462
  %470 = phi ptr [ %504, %502 ], [ %467, %462 ]
  %471 = phi ptr [ %504, %502 ], [ %468, %462 ]
  %472 = load ptr, ptr %471, align 4
  br label %473

473:                                              ; preds = %505, %469
  %474 = phi ptr [ %506, %505 ], [ %472, %469 ]
  %475 = getelementptr %struct.xhci_link_trb, ptr %474, i32 0, i32 2
  %476 = load i32, ptr %475, align 4
  %477 = and i32 %476, 64512
  %478 = icmp eq i32 %477, 6144
  br i1 %478, label %479, label %481

479:                                              ; preds = %473
  %480 = and i32 %476, -17
  br label %486

481:                                              ; preds = %473
  store i32 0, ptr %474, align 8
  %482 = getelementptr [4 x i32], ptr %474, i32 0, i32 1
  store i32 0, ptr %482, align 4
  %483 = getelementptr [4 x i32], ptr %474, i32 0, i32 2
  store i32 0, ptr %483, align 8
  %484 = and i32 %476, 1
  %485 = or i32 %484, 8192
  br label %486

486:                                              ; preds = %481, %479
  %487 = phi i32 [ %485, %481 ], [ %480, %479 ]
  store i32 %487, ptr %475, align 4
  %488 = load ptr, ptr %468, align 4
  %489 = icmp eq ptr %474, %488
  br i1 %489, label %495, label %490

490:                                              ; preds = %486
  %491 = load ptr, ptr %465, align 4
  %492 = icmp eq ptr %474, %491
  br i1 %492, label %495, label %493

493:                                              ; preds = %490
  %494 = xor i32 %487, 1
  store i32 %494, ptr %475, align 4
  br label %495

495:                                              ; preds = %493, %490, %486
  %496 = phi i32 [ %494, %493 ], [ %487, %490 ], [ %487, %486 ]
  %497 = load ptr, ptr %465, align 4
  %498 = icmp eq ptr %474, %497
  br i1 %498, label %507, label %499

499:                                              ; preds = %495
  %500 = and i32 %496, 64512
  %501 = icmp eq i32 %500, 6144
  br i1 %501, label %502, label %505

502:                                              ; preds = %499
  %503 = getelementptr inbounds %struct.xhci_segment, ptr %470, i32 0, i32 1
  %504 = load ptr, ptr %503, align 4
  br label %469

505:                                              ; preds = %499
  %506 = getelementptr %union.xhci_trb, ptr %474, i32 1
  br label %473

507:                                              ; preds = %495
  %508 = load ptr, ptr %468, align 4
  store ptr %508, ptr %131, align 4
  %509 = load ptr, ptr %466, align 4
  store ptr %509, ptr %147, align 4
  store i32 %134, ptr %133, align 4
  %510 = getelementptr inbounds %struct.xhci_ring, ptr %124, i32 0, i32 12
  %511 = load i32, ptr %510, align 4
  %512 = getelementptr inbounds %struct.xhci_ring, ptr %124, i32 0, i32 11
  store i32 %511, ptr %512, align 4
  %513 = load ptr, ptr %52, align 4
  %514 = getelementptr inbounds %struct.usb_device, ptr %513, i32 0, i32 12
  %515 = load ptr, ptr %514, align 8
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %515, ptr noundef %2) #12
  br label %516

516:                                              ; preds = %507, %447, %208, %116, %39
  %517 = phi i32 [ %43, %39 ], [ %463, %507 ], [ 0, %447 ], [ -22, %116 ], [ %206, %208 ]
  ret i32 %517
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @prepare_ring(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 {
  switch i32 %2, label %12 [
    i32 0, label %6
    i32 4, label %9
    i32 2, label %15
    i32 3, label %15
    i32 1, label %15
  ]

6:                                                ; preds = %5
  %7 = load ptr, ptr %0, align 8
  %8 = load ptr, ptr %7, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.94) #11
  br label %113

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8
  %11 = load ptr, ptr %10, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.95) #11
  br label %113

12:                                               ; preds = %5
  %13 = load ptr, ptr %0, align 8
  %14 = load ptr, ptr %13, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.96) #11
  br label %113

15:                                               ; preds = %5, %5, %5
  %16 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 11
  %17 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 14
  %18 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 4
  %19 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 5
  %20 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 29
  br label %21

21:                                               ; preds = %51, %15
  %22 = load i32, ptr %16, align 4
  %23 = icmp ult i32 %22, %3
  br i1 %23, label %45, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %17, align 4
  %26 = add i32 %25, -5
  %27 = icmp ult i32 %26, 2
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %18, align 4
  %30 = load ptr, ptr %19, align 4
  %31 = load ptr, ptr %30, align 4
  %32 = ptrtoint ptr %29 to i32
  %33 = ptrtoint ptr %31 to i32
  %34 = sub i32 %32, %33
  %35 = ashr exact i32 %34, 4
  %36 = add i32 %35, %3
  %37 = icmp ult i32 %22, %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %28, %24
  %39 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 2
  %40 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 51
  %41 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 7
  %42 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 3
  %43 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 10
  %44 = load ptr, ptr %39, align 4
  br label %59

45:                                               ; preds = %28, %21
  %46 = load ptr, ptr %20, align 4
  %47 = icmp eq ptr %46, %1
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load ptr, ptr %0, align 8
  %50 = load ptr, ptr %49, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.97) #11
  br label %113

51:                                               ; preds = %45
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_ring_expansion, ptr noundef nonnull @.str.98) #12
  %52 = load i32, ptr %16, align 4
  %53 = sub i32 %3, %52
  %54 = tail call i32 @xhci_ring_expansion(ptr noundef %0, ptr noundef %1, i32 noundef %53, i32 noundef %4) #12
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %21, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr %0, align 8
  %58 = load ptr, ptr %57, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.99) #11
  br label %113

59:                                               ; preds = %94, %38
  %60 = phi ptr [ %44, %38 ], [ %98, %94 ]
  %61 = phi i32 [ 0, %38 ], [ %99, %94 ]
  %62 = getelementptr inbounds %struct.xhci_link_trb, ptr %60, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 64512
  %65 = icmp eq i32 %64, 6144
  br i1 %65, label %66, label %105

66:                                               ; preds = %59
  %67 = load i64, ptr %40, align 8
  %68 = and i64 %67, 1
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load i32, ptr %17, align 4
  %72 = icmp ne i32 %71, 1
  %73 = and i64 %67, 512
  %74 = icmp eq i64 %73, 0
  %75 = select i1 %72, i1 true, i1 %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = and i32 %63, -17
  br label %80

78:                                               ; preds = %70, %66
  %79 = or i32 %63, 16
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %79, %78 ], [ %77, %76 ]
  store i32 %81, ptr %62, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !60
  tail call void @arm_heavy_mb() #12
  %82 = load ptr, ptr %39, align 4
  %83 = getelementptr inbounds %struct.xhci_link_trb, ptr %82, i32 0, i32 2
  %84 = load i32, ptr %83, align 4
  %85 = xor i32 %84, 1
  store i32 %85, ptr %83, align 4
  %86 = load ptr, ptr %39, align 4
  %87 = getelementptr inbounds %struct.xhci_link_trb, ptr %86, i32 0, i32 2
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, 2
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %80
  %92 = load i32, ptr %41, align 4
  %93 = xor i32 %92, 1
  store i32 %93, ptr %41, align 4
  br label %94

94:                                               ; preds = %91, %80
  %95 = load ptr, ptr %42, align 4
  %96 = getelementptr inbounds %struct.xhci_segment, ptr %95, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  store ptr %97, ptr %42, align 4
  %98 = load ptr, ptr %97, align 4
  store ptr %98, ptr %39, align 4
  %99 = add i32 %61, 1
  %100 = load i32, ptr %43, align 4
  %101 = icmp ugt i32 %61, %100
  br i1 %101, label %102, label %59

102:                                              ; preds = %94
  %103 = load ptr, ptr %0, align 8
  %104 = load ptr, ptr %103, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %104, ptr noundef nonnull @.str.1) #11
  br label %113

105:                                              ; preds = %59
  %106 = load ptr, ptr %42, align 4
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr %union.xhci_trb, ptr %107, i32 255
  %109 = icmp eq ptr %108, %60
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load ptr, ptr %0, align 8
  %112 = load ptr, ptr %111, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %112, ptr noundef nonnull @.str.100) #11
  br label %113

113:                                              ; preds = %110, %105, %102, %56, %48, %12, %9, %6
  %114 = phi i32 [ -22, %12 ], [ -22, %102 ], [ -22, %110 ], [ -12, %48 ], [ -12, %56 ], [ -22, %9 ], [ -2, %6 ], [ 0, %105 ]
  ret i32 %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_queue_slot_control(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = shl i32 %2, 10
  %6 = shl i32 %3, 24
  %7 = or i32 %6, %5
  %8 = tail call fastcc i32 @queue_command(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %7, i1 noundef zeroext false)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @queue_command(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) unnamed_addr #2 {
  %8 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 48
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %50

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 32
  %14 = load i32, ptr %13, align 4
  %15 = xor i1 %6, true
  %16 = zext i1 %15 to i32
  %17 = add i32 %14, %16
  %18 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 29
  %19 = load ptr, ptr %18, align 4
  %20 = tail call fastcc i32 @prepare_ring(ptr noundef %0, ptr noundef %19, i32 noundef 1, i32 noundef %17, i32 noundef 2592)
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %12
  %23 = load ptr, ptr %0, align 8
  %24 = load ptr, ptr %23, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.104) #11
  br i1 %6, label %25, label %50

25:                                               ; preds = %22
  %26 = load ptr, ptr %0, align 8
  %27 = load ptr, ptr %26, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.105) #11
  br label %50

28:                                               ; preds = %12
  %29 = load ptr, ptr %18, align 4
  %30 = getelementptr inbounds %struct.xhci_ring, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.xhci_command, ptr %1, i32 0, i32 4
  store ptr %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 31
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %33
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 35
  store ptr %1, ptr %37, align 4
  %38 = load ptr, ptr @system_wq, align 4
  %39 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 33
  %40 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %38, ptr noundef %39, i32 noundef 500) #12
  br label %41

41:                                               ; preds = %36, %28
  %42 = getelementptr inbounds %struct.xhci_command, ptr %1, i32 0, i32 5
  %43 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 31, i32 1
  %44 = load ptr, ptr %43, align 4
  store ptr %42, ptr %43, align 4
  store ptr %33, ptr %42, align 4
  %45 = getelementptr inbounds %struct.xhci_command, ptr %1, i32 0, i32 5, i32 1
  store ptr %44, ptr %45, align 4
  store volatile ptr %42, ptr %44, align 4
  %46 = load ptr, ptr %18, align 4
  %47 = getelementptr inbounds %struct.xhci_ring, ptr %46, i32 0, i32 7
  %48 = load i32, ptr %47, align 4
  %49 = or i32 %48, %5
  tail call fastcc void @queue_trb(ptr noundef %0, ptr noundef %46, i1 noundef zeroext false, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %49)
  br label %50

50:                                               ; preds = %41, %25, %22, %7
  %51 = phi i32 [ 0, %41 ], [ -108, %7 ], [ %20, %25 ], [ %20, %22 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_queue_address_device(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = shl i32 %3, 24
  %7 = icmp eq i32 %4, 0
  %8 = select i1 %7, i32 512, i32 0
  %9 = or i32 %8, %6
  %10 = or i32 %9, 11264
  %11 = tail call fastcc i32 @queue_command(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef %10, i1 noundef zeroext false)
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_queue_vendor_command(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  %7 = tail call fastcc i32 @queue_command(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext false)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_queue_reset_device(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = shl i32 %2, 24
  %5 = or i32 %4, 17408
  %6 = tail call fastcc i32 @queue_command(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %5, i1 noundef zeroext false)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_queue_configure_endpoint(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #2 {
  %6 = shl i32 %3, 24
  %7 = or i32 %6, 12288
  %8 = tail call fastcc i32 @queue_command(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef %7, i1 noundef zeroext %4)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_queue_evaluate_context(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #2 {
  %6 = shl i32 %3, 24
  %7 = or i32 %6, 13312
  %8 = tail call fastcc i32 @queue_command(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef %7, i1 noundef zeroext %4)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_queue_stop_endpoint(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = shl i32 %2, 24
  %7 = shl i32 %3, 16
  %8 = add i32 %7, 65536
  %9 = and i32 %8, 2031616
  %10 = shl i32 %4, 23
  %11 = and i32 %10, 8388608
  %12 = or i32 %9, %6
  %13 = or i32 %12, %11
  %14 = or i32 %13, 15360
  %15 = tail call fastcc i32 @queue_command(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %14, i1 noundef zeroext false)
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_queue_reset_ep(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = icmp eq i32 %4, 1
  %7 = select i1 %6, i32 14848, i32 14336
  %8 = shl i32 %3, 16
  %9 = add i32 %8, 65536
  %10 = and i32 %9, 2031616
  %11 = shl i32 %2, 24
  %12 = or i32 %10, %11
  %13 = or i32 %12, %7
  %14 = tail call fastcc i32 @queue_command(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %13, i1 noundef zeroext false)
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_inc_deq(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_ring_host_doorbell(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_ring_ep_doorbell(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xhci_giveback_urb_in_irq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.xhci_td, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 12
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 10
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %13, 1073741824
  br i1 %14, label %15, label %30

15:                                               ; preds = %3
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr inbounds %struct.usb_bus, ptr %16, i32 0, i32 15
  %18 = load i32, ptr %17, align 8
  %19 = add i32 %18, -1
  store i32 %19, ptr %17, align 8
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr inbounds %struct.usb_bus, ptr %20, i32 0, i32 15
  %22 = load i32, ptr %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 51
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  tail call void @usb_amd_quirk_pll_enable() #12
  br label %30

30:                                               ; preds = %29, %24, %15, %3
  tail call void @xhci_urb_free_priv(ptr noundef %7) #12
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %11, ptr noundef %5) #12
  %31 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_urb_giveback, i32 0, i32 1), align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = tail call ptr @llvm.thread.pointer() #12
  %35 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 5
  %38 = getelementptr i32, ptr @__cpu_online_mask, i32 %37
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %36, 31
  %41 = shl nuw i32 1, %40
  %42 = and i32 %41, %39
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %33
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !61
  %45 = tail call i32 @__traceiter_xhci_urb_giveback(ptr noundef null, ptr noundef %5) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !62
  br label %46

46:                                               ; preds = %44, %33, %30
  tail call void @usb_hcd_giveback_urb(ptr noundef %11, ptr noundef %5, i32 noundef %2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xhci_unmap_td_bounce_buffer(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = load ptr, ptr %0, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.xhci_td, ptr %2, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.xhci_td, ptr %2, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ne ptr %1, null
  %11 = icmp ne ptr %7, null
  %12 = select i1 %10, i1 %11, i1 false
  %13 = icmp ne ptr %9, null
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %57

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 13
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 512
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr inbounds %struct.xhci_segment, ptr %7, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 13
  %23 = load i32, ptr %22, align 4
  br i1 %19, label %24, label %25

24:                                               ; preds = %15
  tail call void @dma_unmap_page_attrs(ptr noundef %5, i32 noundef %21, i32 noundef %23, i32 noundef 1, i32 noundef 0) #12
  br label %57

25:                                               ; preds = %15
  tail call void @dma_unmap_page_attrs(ptr noundef %5, i32 noundef %21, i32 noundef %23, i32 noundef 2, i32 noundef 0) #12
  %26 = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 18
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 16
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.xhci_segment, ptr %7, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.xhci_segment, ptr %7, i32 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.xhci_segment, ptr %7, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = tail call i32 @sg_pcopy_from_buffer(ptr noundef %31, i32 noundef %27, ptr noundef %33, i32 noundef %35, i32 noundef %37) #12
  %39 = load i32, ptr %34, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %54, label %41

41:                                               ; preds = %29
  %42 = load ptr, ptr %0, align 8
  %43 = load ptr, ptr %42, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %43, ptr noundef nonnull @.str.15, i32 noundef %38, i32 noundef %39) #11
  br label %54

44:                                               ; preds = %25
  %45 = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 14
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.xhci_segment, ptr %7, i32 0, i32 5
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr i8, ptr %46, i32 %48
  %50 = getelementptr inbounds %struct.xhci_segment, ptr %7, i32 0, i32 4
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.xhci_segment, ptr %7, i32 0, i32 6
  %53 = load i32, ptr %52, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %49, ptr align 1 %51, i32 %53, i1 false)
  br label %54

54:                                               ; preds = %44, %41, %29
  %55 = getelementptr inbounds %struct.xhci_segment, ptr %7, i32 0, i32 6
  store i32 0, ptr %55, align 4
  %56 = getelementptr inbounds %struct.xhci_segment, ptr %7, i32 0, i32 5
  store i32 0, ptr %56, align 4
  br label %57

57:                                               ; preds = %54, %24, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_amd_quirk_pll_enable() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_urb_free_priv(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_unlink_urb_from_ep(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_giveback_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_urb_giveback(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_dbg_cancel_urb(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_handshake(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_is_primary_hcd(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @handle_cmd_completion(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.xhci_event_cmd, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 24
  %6 = load i64, ptr %1, align 8
  %7 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 29
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.xhci_ring, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_handle_command, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = tail call ptr @llvm.thread.pointer() #12
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !63
  %25 = tail call i32 @__traceiter_xhci_handle_command(ptr noundef null, ptr noundef %8, ptr noundef %10) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !64
  %26 = load ptr, ptr %7, align 4
  br label %27

27:                                               ; preds = %24, %13, %2
  %28 = phi ptr [ %8, %2 ], [ %8, %13 ], [ %26, %24 ]
  %29 = getelementptr inbounds %struct.xhci_ring, ptr %28, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = icmp ne ptr %30, null
  %32 = icmp ne ptr %10, null
  %33 = and i1 %32, %31
  br i1 %33, label %34, label %50

34:                                               ; preds = %27
  %35 = load ptr, ptr %30, align 4
  %36 = icmp ugt ptr %35, %10
  br i1 %36, label %50, label %37

37:                                               ; preds = %34
  %38 = ptrtoint ptr %10 to i32
  %39 = ptrtoint ptr %35 to i32
  %40 = sub i32 %38, %39
  %41 = icmp ugt i32 %40, 4080
  br i1 %41, label %50, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.xhci_segment, ptr %30, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, %40
  %46 = icmp ne i32 %45, 0
  %47 = zext i32 %45 to i64
  %48 = icmp eq i64 %6, %47
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %53, label %50

50:                                               ; preds = %42, %37, %34, %27
  %51 = load ptr, ptr %0, align 8
  %52 = load ptr, ptr %51, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %52, ptr noundef nonnull @.str.29) #11
  br label %590

53:                                               ; preds = %42
  %54 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 31
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 -20
  %57 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 33
  %58 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %57) #12
  %59 = getelementptr inbounds %struct.xhci_event_cmd, ptr %1, i32 0, i32 1
  %60 = load i32, ptr %59, align 8
  %61 = lshr i32 %60, 24
  %62 = icmp eq i32 %61, 24
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 34
  tail call void @complete_all(ptr noundef %64) #12
  br label %590

65:                                               ; preds = %53
  %66 = getelementptr i8, ptr %55, i32 -4
  %67 = load ptr, ptr %66, align 4
  %68 = load ptr, ptr %7, align 4
  %69 = getelementptr inbounds %struct.xhci_ring, ptr %68, i32 0, i32 4
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %67, %70
  br i1 %71, label %75, label %72

72:                                               ; preds = %65
  %73 = load ptr, ptr %0, align 8
  %74 = load ptr, ptr %73, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.30) #11
  br label %590

75:                                               ; preds = %65
  %76 = icmp eq i32 %61, 25
  br i1 %76, label %77, label %87

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 30
  store i32 4, ptr %78, align 8
  %79 = getelementptr i8, ptr %55, i32 -16
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 25
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 35
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, %56
  br i1 %85, label %86, label %576

86:                                               ; preds = %82
  store ptr null, ptr %83, align 4
  br label %576

87:                                               ; preds = %77, %75
  %88 = getelementptr [4 x i32], ptr %10, i32 0, i32 3
  %89 = load i32, ptr %88, align 4
  %90 = lshr i32 %89, 10
  %91 = and i32 %90, 63
  switch i32 %91, label %554 [
    i32 9, label %92
    i32 10, label %96
    i32 12, label %125
    i32 13, label %557
    i32 11, label %130
    i32 15, label %153
    i32 16, label %162
    i32 23, label %416
    i32 14, label %421
    i32 17, label %514
    i32 49, label %541
  ]

92:                                               ; preds = %87
  %93 = icmp eq i32 %61, 1
  %94 = select i1 %93, i32 %5, i32 0
  %95 = getelementptr i8, ptr %55, i32 -12
  store i32 %94, ptr %95, align 4
  br label %557

96:                                               ; preds = %87
  %97 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 42, i32 %5
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %557, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.xhci_virt_device, ptr %98, i32 0, i32 2
  %102 = load ptr, ptr %101, align 4
  %103 = tail call ptr @xhci_get_slot_ctx(ptr noundef %0, ptr noundef %102) #12
  %104 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_handle_cmd_disable_slot, i32 0, i32 1), align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %100
  %107 = tail call ptr @llvm.thread.pointer() #12
  %108 = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 2
  %109 = load i32, ptr %108, align 8
  %110 = lshr i32 %109, 5
  %111 = getelementptr i32, ptr @__cpu_online_mask, i32 %110
  %112 = load volatile i32, ptr %111, align 4
  %113 = and i32 %109, 31
  %114 = shl nuw i32 1, %113
  %115 = and i32 %114, %112
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %106
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !65
  %118 = tail call i32 @__traceiter_xhci_handle_cmd_disable_slot(ptr noundef null, ptr noundef %103) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !66
  br label %119

119:                                              ; preds = %117, %106, %100
  %120 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 51
  %121 = load i64, ptr %120, align 8
  %122 = and i64 %121, 32
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %557, label %124

124:                                              ; preds = %119
  tail call void @xhci_free_device_endpoint_resources(ptr noundef %0, ptr noundef nonnull %98, i1 noundef zeroext true) #12
  br label %557

125:                                              ; preds = %87
  %126 = getelementptr i8, ptr %55, i32 -8
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %557

129:                                              ; preds = %125
  tail call fastcc void @xhci_handle_cmd_config_ep(ptr noundef %0, i32 noundef %5)
  br label %557

130:                                              ; preds = %87
  %131 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 42, i32 %5
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %557, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.xhci_virt_device, ptr %132, i32 0, i32 2
  %136 = load ptr, ptr %135, align 4
  %137 = tail call ptr @xhci_get_slot_ctx(ptr noundef %0, ptr noundef %136) #12
  %138 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_handle_cmd_addr_dev, i32 0, i32 1), align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %557

140:                                              ; preds = %134
  %141 = tail call ptr @llvm.thread.pointer() #12
  %142 = getelementptr inbounds %struct.thread_info, ptr %141, i32 0, i32 2
  %143 = load i32, ptr %142, align 8
  %144 = lshr i32 %143, 5
  %145 = getelementptr i32, ptr @__cpu_online_mask, i32 %144
  %146 = load volatile i32, ptr %145, align 4
  %147 = and i32 %143, 31
  %148 = shl nuw i32 1, %147
  %149 = and i32 %148, %146
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %557, label %151

151:                                              ; preds = %140
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !67
  %152 = tail call i32 @__traceiter_xhci_handle_cmd_addr_dev(ptr noundef null, ptr noundef %137) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !68
  br label %557

153:                                              ; preds = %87
  %154 = lshr i32 %89, 24
  %155 = icmp eq i32 %5, %154
  br i1 %155, label %157, label %156, !prof !50

156:                                              ; preds = %153
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 1790, i32 noundef 9, ptr noundef null) #12
  br label %157

157:                                              ; preds = %156, %153
  %158 = getelementptr i8, ptr %55, i32 -8
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %557

161:                                              ; preds = %157
  tail call fastcc void @xhci_handle_cmd_stop_ep(ptr noundef %0, i32 noundef %5, ptr noundef nonnull %10, i32 noundef %61)
  br label %557

162:                                              ; preds = %87
  %163 = lshr i32 %89, 24
  %164 = icmp eq i32 %5, %163
  br i1 %164, label %167, label %165, !prof !50

165:                                              ; preds = %162
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 1797, i32 noundef 9, ptr noundef null) #12
  %166 = load i32, ptr %88, align 4
  br label %167

167:                                              ; preds = %165, %162
  %168 = phi i32 [ %166, %165 ], [ %89, %162 ]
  %169 = lshr i32 %168, 16
  %170 = and i32 %169, 31
  %171 = add nsw i32 %170, -1
  %172 = getelementptr [4 x i32], ptr %10, i32 0, i32 2
  %173 = load i32, ptr %172, align 8
  %174 = lshr i32 %173, 16
  %175 = icmp ult i32 %4, 16777216
  br i1 %175, label %176, label %179

176:                                              ; preds = %167
  %177 = load ptr, ptr %0, align 8
  %178 = load ptr, ptr %177, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %178, ptr noundef nonnull @.str.9, i32 noundef %5) #11
  br label %557

179:                                              ; preds = %167
  %180 = icmp ugt i32 %171, 30
  br i1 %180, label %181, label %184

181:                                              ; preds = %179
  %182 = load ptr, ptr %0, align 8
  %183 = load ptr, ptr %182, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %183, ptr noundef nonnull @.str.10, i32 noundef %171) #11
  br label %557

184:                                              ; preds = %179
  %185 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 42, i32 %5
  %186 = load ptr, ptr %185, align 4
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  %189 = load ptr, ptr %0, align 8
  %190 = load ptr, ptr %189, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %190, ptr noundef nonnull @.str.11, i32 noundef %5) #11
  br label %557

191:                                              ; preds = %184
  %192 = getelementptr %struct.xhci_virt_device, ptr %186, i32 0, i32 4, i32 %171
  %193 = icmp eq ptr %192, null
  br i1 %193, label %557, label %194

194:                                              ; preds = %191
  %195 = getelementptr %struct.xhci_virt_device, ptr %186, i32 0, i32 4, i32 %171, i32 5
  %196 = load i32, ptr %195, align 4
  %197 = and i32 %196, 16
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %194
  %200 = getelementptr %struct.xhci_virt_device, ptr %186, i32 0, i32 4, i32 %171, i32 2
  br label %221

201:                                              ; preds = %194
  %202 = getelementptr %struct.xhci_virt_device, ptr %186, i32 0, i32 4, i32 %171, i32 3
  %203 = load ptr, ptr %202, align 4
  %204 = icmp eq ptr %203, null
  br i1 %204, label %225, label %205

205:                                              ; preds = %201
  %206 = icmp ult i32 %173, 65536
  br i1 %206, label %211, label %207

207:                                              ; preds = %205
  %208 = getelementptr inbounds %struct.xhci_stream_info, ptr %203, i32 0, i32 1
  %209 = load i32, ptr %208, align 4
  %210 = icmp ugt i32 %209, %174
  br i1 %210, label %218, label %211

211:                                              ; preds = %207, %205
  %212 = load ptr, ptr %0, align 8
  %213 = load ptr, ptr %212, align 8
  %214 = load ptr, ptr %192, align 4
  %215 = load i32, ptr %214, align 4
  %216 = getelementptr %struct.xhci_virt_device, ptr %186, i32 0, i32 4, i32 %171, i32 1
  %217 = load i32, ptr %216, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %213, ptr noundef nonnull @.str.12, i32 noundef %174, i32 noundef %215, i32 noundef %217) #11
  br label %225

218:                                              ; preds = %207
  %219 = load ptr, ptr %203, align 4
  %220 = getelementptr ptr, ptr %219, i32 %174
  br label %221

221:                                              ; preds = %218, %199
  %222 = phi ptr [ %220, %218 ], [ %200, %199 ]
  %223 = load ptr, ptr %222, align 4
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %228

225:                                              ; preds = %221, %211, %201
  %226 = load ptr, ptr %0, align 8
  %227 = load ptr, ptr %226, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %227, ptr noundef nonnull @.str.48, i32 noundef %174) #11
  br label %411

228:                                              ; preds = %221
  %229 = load ptr, ptr %192, align 4
  %230 = getelementptr inbounds %struct.xhci_virt_device, ptr %229, i32 0, i32 2
  %231 = load ptr, ptr %230, align 4
  %232 = tail call ptr @xhci_get_ep_ctx(ptr noundef %0, ptr noundef %231, i32 noundef %171) #12
  %233 = load ptr, ptr %192, align 4
  %234 = getelementptr inbounds %struct.xhci_virt_device, ptr %233, i32 0, i32 2
  %235 = load ptr, ptr %234, align 4
  %236 = tail call ptr @xhci_get_slot_ctx(ptr noundef %0, ptr noundef %235) #12
  %237 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_handle_cmd_set_deq, i32 0, i32 1), align 4
  %238 = icmp sgt i32 %237, 0
  br i1 %238, label %239, label %252

239:                                              ; preds = %228
  %240 = tail call ptr @llvm.thread.pointer() #12
  %241 = getelementptr inbounds %struct.thread_info, ptr %240, i32 0, i32 2
  %242 = load i32, ptr %241, align 8
  %243 = lshr i32 %242, 5
  %244 = getelementptr i32, ptr @__cpu_online_mask, i32 %243
  %245 = load volatile i32, ptr %244, align 4
  %246 = and i32 %242, 31
  %247 = shl nuw i32 1, %246
  %248 = and i32 %247, %245
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %252, label %250

250:                                              ; preds = %239
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !69
  %251 = tail call i32 @__traceiter_xhci_handle_cmd_set_deq(ptr noundef null, ptr noundef %236) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !70
  br label %252

252:                                              ; preds = %250, %239, %228
  %253 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_handle_cmd_set_deq_ep, i32 0, i32 1), align 4
  %254 = icmp sgt i32 %253, 0
  br i1 %254, label %255, label %268

255:                                              ; preds = %252
  %256 = tail call ptr @llvm.thread.pointer() #12
  %257 = getelementptr inbounds %struct.thread_info, ptr %256, i32 0, i32 2
  %258 = load i32, ptr %257, align 8
  %259 = lshr i32 %258, 5
  %260 = getelementptr i32, ptr @__cpu_online_mask, i32 %259
  %261 = load volatile i32, ptr %260, align 4
  %262 = and i32 %258, 31
  %263 = shl nuw i32 1, %262
  %264 = and i32 %263, %261
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %268, label %266

266:                                              ; preds = %255
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !71
  %267 = tail call i32 @__traceiter_xhci_handle_cmd_set_deq_ep(ptr noundef null, ptr noundef %232) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !72
  br label %268

268:                                              ; preds = %266, %255, %252
  %269 = add nsw i32 %61, -1
  %270 = tail call i32 @llvm.fshl.i32(i32 %269, i32 %269, i32 31) #12
  switch i32 %270, label %285 [
    i32 0, label %288
    i32 2, label %271
    i32 9, label %274
    i32 5, label %282
  ]

271:                                              ; preds = %268
  %272 = load ptr, ptr %0, align 8
  %273 = load ptr, ptr %272, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %273, ptr noundef nonnull @.str.49) #11
  br label %379

274:                                              ; preds = %268
  %275 = load ptr, ptr %0, align 8
  %276 = load ptr, ptr %275, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %276, ptr noundef nonnull @.str.50) #11
  %277 = load i32, ptr %232, align 8
  %278 = and i32 %277, 7
  %279 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %236, i32 0, i32 3
  %280 = load i32, ptr %279, align 4
  %281 = lshr i32 %280, 27
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_cancel_urb, ptr noundef nonnull @.str.51, i32 noundef %281, i32 noundef %278) #12
  br label %379

282:                                              ; preds = %268
  %283 = load ptr, ptr %0, align 8
  %284 = load ptr, ptr %283, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %284, ptr noundef nonnull @.str.52, i32 noundef %5) #11
  br label %379

285:                                              ; preds = %268
  %286 = load ptr, ptr %0, align 8
  %287 = load ptr, ptr %286, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %287, ptr noundef nonnull @.str.53, i32 noundef %61) #11
  br label %379

288:                                              ; preds = %268
  %289 = load i32, ptr %195, align 4
  %290 = and i32 %289, 16
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %298, label %292

292:                                              ; preds = %288
  %293 = getelementptr %struct.xhci_virt_device, ptr %186, i32 0, i32 4, i32 %171, i32 3
  %294 = load ptr, ptr %293, align 4
  %295 = getelementptr inbounds %struct.xhci_stream_info, ptr %294, i32 0, i32 2
  %296 = load ptr, ptr %295, align 4
  %297 = getelementptr %struct.xhci_stream_ctx, ptr %296, i32 %174
  br label %300

298:                                              ; preds = %288
  %299 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %232, i32 0, i32 2
  br label %300

300:                                              ; preds = %298, %292
  %301 = phi ptr [ %299, %298 ], [ %297, %292 ]
  %302 = phi i64 [ -2, %298 ], [ -16, %292 ]
  %303 = load i64, ptr %301, align 8
  %304 = and i64 %303, %302
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_cancel_urb, ptr noundef nonnull @.str.54, i64 noundef %304) #12
  %305 = getelementptr %struct.xhci_virt_device, ptr %186, i32 0, i32 4, i32 %171, i32 9
  %306 = load ptr, ptr %305, align 4
  %307 = getelementptr %struct.xhci_virt_device, ptr %186, i32 0, i32 4, i32 %171, i32 10
  %308 = load ptr, ptr %307, align 4
  %309 = icmp ne ptr %306, null
  %310 = icmp ne ptr %308, null
  %311 = and i1 %309, %310
  br i1 %311, label %312, label %324

312:                                              ; preds = %300
  %313 = load ptr, ptr %306, align 4
  %314 = icmp ugt ptr %313, %308
  br i1 %314, label %324, label %315

315:                                              ; preds = %312
  %316 = ptrtoint ptr %308 to i32
  %317 = ptrtoint ptr %313 to i32
  %318 = sub i32 %316, %317
  %319 = icmp ugt i32 %318, 4080
  br i1 %319, label %324, label %320

320:                                              ; preds = %315
  %321 = getelementptr inbounds %struct.xhci_segment, ptr %306, i32 0, i32 2
  %322 = load i32, ptr %321, align 4
  %323 = add i32 %322, %318
  br label %324

324:                                              ; preds = %320, %315, %312, %300
  %325 = phi i32 [ %323, %320 ], [ 0, %312 ], [ 0, %300 ], [ 0, %315 ]
  %326 = zext i32 %325 to i64
  %327 = icmp eq i64 %304, %326
  br i1 %327, label %328, label %372

328:                                              ; preds = %324
  %329 = load ptr, ptr %192, align 4
  %330 = getelementptr inbounds %struct.xhci_ring, ptr %223, i32 0, i32 11
  %331 = load i32, ptr %330, align 4
  %332 = getelementptr inbounds %struct.xhci_ring, ptr %223, i32 0, i32 4
  %333 = load ptr, ptr %332, align 4
  %334 = getelementptr inbounds %struct.xhci_link_trb, ptr %333, i32 0, i32 2
  %335 = load i32, ptr %334, align 4
  %336 = and i32 %335, 64512
  %337 = icmp eq i32 %336, 6144
  br i1 %337, label %338, label %344

338:                                              ; preds = %328
  %339 = getelementptr inbounds %struct.xhci_ring, ptr %223, i32 0, i32 5
  %340 = load ptr, ptr %339, align 4
  %341 = getelementptr inbounds %struct.xhci_segment, ptr %340, i32 0, i32 1
  %342 = load ptr, ptr %341, align 4
  store ptr %342, ptr %339, align 4
  %343 = load ptr, ptr %342, align 4
  store ptr %343, ptr %332, align 4
  br label %344

344:                                              ; preds = %338, %328
  %345 = phi ptr [ %343, %338 ], [ %333, %328 ]
  %346 = getelementptr %struct.xhci_virt_device, ptr %329, i32 0, i32 4, i32 %171, i32 10
  %347 = getelementptr inbounds %struct.xhci_ring, ptr %223, i32 0, i32 5
  br label %348

348:                                              ; preds = %368, %344
  %349 = phi i32 [ %354, %368 ], [ %331, %344 ]
  %350 = phi ptr [ %369, %368 ], [ %345, %344 ]
  %351 = load ptr, ptr %346, align 4
  %352 = icmp eq ptr %350, %351
  br i1 %352, label %379, label %353

353:                                              ; preds = %348
  %354 = add i32 %349, 1
  store i32 %354, ptr %330, align 4
  %355 = getelementptr %union.xhci_trb, ptr %350, i32 1
  store ptr %355, ptr %332, align 4
  %356 = getelementptr %union.xhci_trb, ptr %350, i32 1, i32 0, i32 2
  %357 = load i32, ptr %356, align 4
  %358 = and i32 %357, 64512
  %359 = icmp eq i32 %358, 6144
  br i1 %359, label %360, label %368

360:                                              ; preds = %353
  %361 = load ptr, ptr %346, align 4
  %362 = icmp eq ptr %355, %361
  br i1 %362, label %379, label %363

363:                                              ; preds = %360
  %364 = load ptr, ptr %347, align 4
  %365 = getelementptr inbounds %struct.xhci_segment, ptr %364, i32 0, i32 1
  %366 = load ptr, ptr %365, align 4
  store ptr %366, ptr %347, align 4
  %367 = load ptr, ptr %366, align 4
  store ptr %367, ptr %332, align 4
  br label %368

368:                                              ; preds = %363, %353
  %369 = phi ptr [ %367, %363 ], [ %355, %353 ]
  %370 = icmp eq ptr %369, %333
  br i1 %370, label %371, label %348

371:                                              ; preds = %368
  store i32 %331, ptr %330, align 4
  br label %379

372:                                              ; preds = %324
  %373 = load ptr, ptr %0, align 8
  %374 = load ptr, ptr %373, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %374, ptr noundef nonnull @.str.55) #11
  %375 = load ptr, ptr %0, align 8
  %376 = load ptr, ptr %375, align 8
  %377 = load ptr, ptr %305, align 4
  %378 = load ptr, ptr %307, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %376, ptr noundef nonnull @.str.56, ptr noundef %377, ptr noundef %378) #11
  br label %379

379:                                              ; preds = %372, %371, %360, %348, %285, %282, %274, %271
  %380 = getelementptr %struct.xhci_virt_device, ptr %186, i32 0, i32 4, i32 %171, i32 6
  %381 = load ptr, ptr %380, align 4
  %382 = icmp eq ptr %381, %380
  br i1 %382, label %411, label %383

383:                                              ; preds = %379
  %384 = getelementptr %struct.xhci_virt_device, ptr %186, i32 0, i32 4, i32 %171, i32 8
  br label %385

385:                                              ; preds = %409, %383
  %386 = phi ptr [ %381, %383 ], [ %387, %409 ]
  %387 = load ptr, ptr %386, align 4
  %388 = load ptr, ptr %384, align 4
  %389 = getelementptr i8, ptr %386, i32 16
  %390 = load ptr, ptr %389, align 4
  %391 = getelementptr inbounds %struct.urb, ptr %390, i32 0, i32 8
  %392 = load ptr, ptr %391, align 4
  %393 = getelementptr inbounds %struct.usb_device, ptr %392, i32 0, i32 43
  %394 = load i32, ptr %393, align 8
  %395 = getelementptr inbounds %struct.urb, ptr %390, i32 0, i32 9
  %396 = load ptr, ptr %395, align 4
  %397 = tail call i32 @xhci_get_endpoint_index(ptr noundef %396) #12
  %398 = getelementptr inbounds %struct.urb, ptr %390, i32 0, i32 11
  %399 = load i32, ptr %398, align 4
  %400 = tail call ptr @xhci_triad_to_transfer_ring(ptr noundef %388, i32 noundef %394, i32 noundef %397, i32 noundef %399) #12
  %401 = getelementptr i8, ptr %386, i32 12
  %402 = load i32, ptr %401, align 4
  %403 = icmp eq i32 %402, 2
  br i1 %403, label %404, label %409

404:                                              ; preds = %385
  %405 = getelementptr i8, ptr %386, i32 -8
  store i32 3, ptr %401, align 4
  %406 = load ptr, ptr %384, align 4
  %407 = getelementptr i8, ptr %386, i32 8
  %408 = load i32, ptr %407, align 4
  tail call fastcc void @xhci_td_cleanup(ptr noundef %406, ptr noundef %405, ptr noundef %400, i32 noundef %408) #12
  br label %409

409:                                              ; preds = %404, %385
  %410 = icmp eq ptr %387, %380
  br i1 %410, label %411, label %385

411:                                              ; preds = %409, %379, %225
  %412 = load i32, ptr %195, align 4
  %413 = and i32 %412, -2
  store i32 %413, ptr %195, align 4
  %414 = getelementptr %struct.xhci_virt_device, ptr %186, i32 0, i32 4, i32 %171, i32 9
  store ptr null, ptr %414, align 4
  %415 = getelementptr %struct.xhci_virt_device, ptr %186, i32 0, i32 4, i32 %171, i32 10
  store ptr null, ptr %415, align 4
  tail call fastcc void @ring_doorbell_for_active_rings(ptr noundef %0, i32 noundef %5, i32 noundef %171) #12
  br label %557

416:                                              ; preds = %87
  %417 = getelementptr i8, ptr %55, i32 -16
  %418 = load i32, ptr %417, align 4
  %419 = icmp eq i32 %418, 24
  %420 = select i1 %419, i32 24, i32 %61
  br label %557

421:                                              ; preds = %87
  %422 = lshr i32 %89, 24
  %423 = icmp eq i32 %5, %422
  br i1 %423, label %426, label %424, !prof !50

424:                                              ; preds = %421
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 1807, i32 noundef 9, ptr noundef null) #12
  %425 = load i32, ptr %88, align 4
  br label %426

426:                                              ; preds = %424, %421
  %427 = phi i32 [ %425, %424 ], [ %89, %421 ]
  %428 = lshr i32 %427, 16
  %429 = and i32 %428, 31
  %430 = add nsw i32 %429, -1
  %431 = icmp ult i32 %4, 16777216
  br i1 %431, label %432, label %435

432:                                              ; preds = %426
  %433 = load ptr, ptr %0, align 8
  %434 = load ptr, ptr %433, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %434, ptr noundef nonnull @.str.9, i32 noundef %5) #11
  br label %557

435:                                              ; preds = %426
  %436 = icmp ugt i32 %430, 30
  br i1 %436, label %437, label %440

437:                                              ; preds = %435
  %438 = load ptr, ptr %0, align 8
  %439 = load ptr, ptr %438, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %439, ptr noundef nonnull @.str.10, i32 noundef %430) #11
  br label %557

440:                                              ; preds = %435
  %441 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 42, i32 %5
  %442 = load ptr, ptr %441, align 4
  %443 = icmp eq ptr %442, null
  br i1 %443, label %444, label %447

444:                                              ; preds = %440
  %445 = load ptr, ptr %0, align 8
  %446 = load ptr, ptr %445, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %446, ptr noundef nonnull @.str.11, i32 noundef %5) #11
  br label %557

447:                                              ; preds = %440
  %448 = getelementptr %struct.xhci_virt_device, ptr %442, i32 0, i32 4, i32 %430
  %449 = icmp eq ptr %448, null
  br i1 %449, label %557, label %450

450:                                              ; preds = %447
  %451 = load ptr, ptr %448, align 4
  %452 = getelementptr inbounds %struct.xhci_virt_device, ptr %451, i32 0, i32 2
  %453 = load ptr, ptr %452, align 4
  %454 = tail call ptr @xhci_get_ep_ctx(ptr noundef %0, ptr noundef %453, i32 noundef %430) #12
  %455 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_handle_cmd_reset_ep, i32 0, i32 1), align 4
  %456 = icmp sgt i32 %455, 0
  br i1 %456, label %457, label %470

457:                                              ; preds = %450
  %458 = tail call ptr @llvm.thread.pointer() #12
  %459 = getelementptr inbounds %struct.thread_info, ptr %458, i32 0, i32 2
  %460 = load i32, ptr %459, align 8
  %461 = lshr i32 %460, 5
  %462 = getelementptr i32, ptr @__cpu_online_mask, i32 %461
  %463 = load volatile i32, ptr %462, align 4
  %464 = and i32 %460, 31
  %465 = shl nuw i32 1, %464
  %466 = and i32 %465, %463
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %470, label %468

468:                                              ; preds = %457
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !73
  %469 = tail call i32 @__traceiter_xhci_handle_cmd_reset_ep(ptr noundef null, ptr noundef %454) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !74
  br label %470

470:                                              ; preds = %468, %457, %450
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_reset_ep, ptr noundef nonnull @.str.57, i32 noundef %61) #12
  tail call fastcc void @xhci_invalidate_cancelled_tds(ptr noundef nonnull %448) #12
  %471 = getelementptr %struct.xhci_virt_device, ptr %442, i32 0, i32 4, i32 %430, i32 5
  %472 = load i32, ptr %471, align 4
  %473 = and i32 %472, -3
  store i32 %473, ptr %471, align 4
  %474 = getelementptr %struct.xhci_virt_device, ptr %442, i32 0, i32 4, i32 %430, i32 6
  %475 = load ptr, ptr %474, align 4
  %476 = getelementptr %struct.xhci_virt_device, ptr %442, i32 0, i32 4, i32 %430, i32 8
  br label %477

477:                                              ; preds = %503, %470
  %478 = phi ptr [ %475, %470 ], [ %480, %503 ]
  %479 = getelementptr i8, ptr %478, i32 -8
  %480 = load ptr, ptr %478, align 4
  %481 = icmp eq ptr %478, %474
  br i1 %481, label %509, label %482

482:                                              ; preds = %477
  %483 = load ptr, ptr %476, align 4
  %484 = getelementptr i8, ptr %478, i32 16
  %485 = load ptr, ptr %484, align 4
  %486 = getelementptr inbounds %struct.urb, ptr %485, i32 0, i32 8
  %487 = load ptr, ptr %486, align 4
  %488 = getelementptr inbounds %struct.usb_device, ptr %487, i32 0, i32 43
  %489 = load i32, ptr %488, align 8
  %490 = getelementptr inbounds %struct.urb, ptr %485, i32 0, i32 9
  %491 = load ptr, ptr %490, align 4
  %492 = tail call i32 @xhci_get_endpoint_index(ptr noundef %491) #12
  %493 = getelementptr inbounds %struct.urb, ptr %485, i32 0, i32 11
  %494 = load i32, ptr %493, align 4
  %495 = tail call ptr @xhci_triad_to_transfer_ring(ptr noundef %483, i32 noundef %489, i32 noundef %492, i32 noundef %494) #12
  %496 = getelementptr i8, ptr %478, i32 12
  %497 = load i32, ptr %496, align 4
  %498 = icmp eq i32 %497, 3
  br i1 %498, label %499, label %503

499:                                              ; preds = %482
  %500 = load ptr, ptr %476, align 4
  %501 = getelementptr i8, ptr %478, i32 8
  %502 = load i32, ptr %501, align 4
  tail call fastcc void @xhci_td_cleanup(ptr noundef %500, ptr noundef %479, ptr noundef %495, i32 noundef %502) #12
  br label %503

503:                                              ; preds = %499, %482
  %504 = load ptr, ptr %476, align 4
  %505 = getelementptr inbounds %struct.xhci_hcd, ptr %504, i32 0, i32 48
  %506 = load i32, ptr %505, align 4
  %507 = and i32 %506, 1
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %477, label %509

509:                                              ; preds = %503, %477
  %510 = load i32, ptr %88, align 4
  %511 = and i32 %510, 512
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %557, label %513

513:                                              ; preds = %509
  tail call fastcc void @ring_doorbell_for_active_rings(ptr noundef %0, i32 noundef %5, i32 noundef %430) #12
  br label %557

514:                                              ; preds = %87
  %515 = lshr i32 %89, 24
  %516 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 42, i32 %515
  %517 = load ptr, ptr %516, align 4
  %518 = icmp eq ptr %517, null
  br i1 %518, label %519, label %522

519:                                              ; preds = %514
  %520 = load ptr, ptr %0, align 8
  %521 = load ptr, ptr %520, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %521, ptr noundef nonnull @.str.58, i32 noundef %515) #11
  br label %557

522:                                              ; preds = %514
  %523 = getelementptr inbounds %struct.xhci_virt_device, ptr %517, i32 0, i32 2
  %524 = load ptr, ptr %523, align 4
  %525 = tail call ptr @xhci_get_slot_ctx(ptr noundef %0, ptr noundef %524) #12
  %526 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_handle_cmd_reset_dev, i32 0, i32 1), align 4
  %527 = icmp sgt i32 %526, 0
  br i1 %527, label %528, label %557

528:                                              ; preds = %522
  %529 = tail call ptr @llvm.thread.pointer() #12
  %530 = getelementptr inbounds %struct.thread_info, ptr %529, i32 0, i32 2
  %531 = load i32, ptr %530, align 8
  %532 = lshr i32 %531, 5
  %533 = getelementptr i32, ptr @__cpu_online_mask, i32 %532
  %534 = load volatile i32, ptr %533, align 4
  %535 = and i32 %531, 31
  %536 = shl nuw i32 1, %535
  %537 = and i32 %536, %534
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %557, label %539

539:                                              ; preds = %528
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !75
  %540 = tail call i32 @__traceiter_xhci_handle_cmd_reset_dev(ptr noundef null, ptr noundef %525) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !76
  br label %557

541:                                              ; preds = %87
  %542 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 51
  %543 = load i64, ptr %542, align 8
  %544 = and i64 %543, 4
  %545 = icmp eq i64 %544, 0
  br i1 %545, label %546, label %549

546:                                              ; preds = %541
  %547 = load ptr, ptr %0, align 8
  %548 = load ptr, ptr %547, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %548, ptr noundef nonnull @.str.59) #11
  br label %557

549:                                              ; preds = %541
  %550 = load i32, ptr %59, align 8
  %551 = lshr i32 %550, 8
  %552 = and i32 %551, 255
  %553 = and i32 %550, 255
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.60, i32 noundef %552, i32 noundef %553) #12
  br label %557

554:                                              ; preds = %87
  %555 = load ptr, ptr %0, align 8
  %556 = load ptr, ptr %555, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %556, ptr noundef nonnull @.str.32, i32 noundef %91) #11
  br label %557

557:                                              ; preds = %554, %549, %546, %539, %528, %522, %519, %513, %509, %447, %444, %437, %432, %416, %411, %191, %188, %181, %176, %161, %157, %151, %140, %134, %130, %129, %125, %124, %119, %96, %92, %87
  %558 = phi i32 [ %61, %554 ], [ %61, %157 ], [ %61, %161 ], [ %61, %87 ], [ %61, %125 ], [ %61, %129 ], [ %61, %92 ], [ %420, %416 ], [ %61, %96 ], [ %61, %119 ], [ %61, %124 ], [ %61, %130 ], [ %61, %134 ], [ %61, %140 ], [ %61, %151 ], [ %61, %176 ], [ %61, %181 ], [ %61, %188 ], [ %61, %191 ], [ %61, %411 ], [ %61, %432 ], [ %61, %437 ], [ %61, %444 ], [ %61, %447 ], [ %61, %509 ], [ %61, %513 ], [ %61, %519 ], [ %61, %522 ], [ %61, %528 ], [ %61, %539 ], [ %61, %546 ], [ %61, %549 ]
  %559 = load volatile ptr, ptr %54, align 4
  %560 = icmp eq ptr %559, %54
  br i1 %560, label %565, label %561

561:                                              ; preds = %557
  %562 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 31, i32 1
  %563 = load ptr, ptr %562, align 4
  %564 = icmp eq ptr %559, %563
  br i1 %564, label %571, label %565

565:                                              ; preds = %561, %557
  %566 = load ptr, ptr %55, align 4
  %567 = getelementptr i8, ptr %566, i32 -20
  %568 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 35
  store ptr %567, ptr %568, align 4
  %569 = load ptr, ptr @system_wq, align 4
  %570 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %569, ptr noundef %57, i32 noundef 500) #12
  br label %576

571:                                              ; preds = %561
  %572 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 35
  %573 = load ptr, ptr %572, align 4
  %574 = icmp eq ptr %573, %56
  br i1 %574, label %575, label %576

575:                                              ; preds = %571
  store ptr null, ptr %572, align 4
  br label %576

576:                                              ; preds = %575, %571, %565, %86, %82
  %577 = phi i32 [ 25, %86 ], [ 25, %82 ], [ %558, %575 ], [ %558, %571 ], [ %558, %565 ]
  %578 = getelementptr i8, ptr %55, i32 4
  %579 = load ptr, ptr %578, align 4
  %580 = load ptr, ptr %55, align 4
  %581 = getelementptr inbounds %struct.list_head, ptr %580, i32 0, i32 1
  store ptr %579, ptr %581, align 4
  store volatile ptr %580, ptr %579, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %55, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %578, align 4
  %582 = getelementptr i8, ptr %55, i32 -8
  %583 = load ptr, ptr %582, align 4
  %584 = icmp eq ptr %583, null
  br i1 %584, label %587, label %585

585:                                              ; preds = %576
  %586 = getelementptr i8, ptr %55, i32 -16
  store i32 %577, ptr %586, align 4
  tail call void @complete(ptr noundef nonnull %583) #12
  br label %588

587:                                              ; preds = %576
  tail call void @kfree(ptr noundef %56) #12
  br label %588

588:                                              ; preds = %587, %585
  %589 = load ptr, ptr %7, align 4
  tail call void @inc_deq(ptr noundef %0, ptr noundef %589)
  br label %590

590:                                              ; preds = %588, %72, %63, %50
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_handle_event(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xhci_handle_cmd_config_ep(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 42, i32 %1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %56, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.xhci_virt_device, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @xhci_get_input_control_ctx(ptr noundef %8) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load ptr, ptr %0, align 8
  %13 = load ptr, ptr %12, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.33) #11
  br label %56

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.xhci_input_control_ctx, ptr %9, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %9, align 4
  %18 = tail call i32 @xhci_last_valid_endpoint(i32 noundef %16) #12
  %19 = add i32 %18, -1
  %20 = getelementptr inbounds %struct.xhci_virt_device, ptr %4, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = tail call ptr @xhci_get_ep_ctx(ptr noundef %0, ptr noundef %21, i32 noundef %19) #12
  %23 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_handle_cmd_config_ep, i32 0, i32 1), align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %14
  %26 = tail call ptr @llvm.thread.pointer() #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !77
  %37 = tail call i32 @__traceiter_xhci_handle_cmd_config_ep(ptr noundef null, ptr noundef %22) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !78
  br label %38

38:                                               ; preds = %36, %25, %14
  %39 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 51
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, 2
  %42 = icmp ne i64 %41, 0
  %43 = icmp ne i32 %18, 0
  %44 = select i1 %42, i1 %43, i1 false
  %45 = add i32 %16, -1
  %46 = icmp eq i32 %45, %17
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %56

48:                                               ; preds = %38
  %49 = getelementptr %struct.xhci_virt_device, ptr %4, i32 0, i32 4, i32 %19, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.34, i32 noundef %19, i32 noundef %50) #12
  %54 = load i32, ptr %49, align 4
  %55 = and i32 %54, -3
  store i32 %55, ptr %49, align 4
  tail call fastcc void @ring_doorbell_for_active_rings(ptr noundef %0, i32 noundef %1, i32 noundef %19)
  br label %56

56:                                               ; preds = %53, %48, %38, %11, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xhci_handle_cmd_stop_ep(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #2 {
  %5 = getelementptr [4 x i32], ptr %2, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 8388608
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9, !prof !50

9:                                                ; preds = %4
  %10 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 42, i32 %1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %216

13:                                               ; preds = %9
  %14 = load ptr, ptr %0, align 8
  %15 = load ptr, ptr %14, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.35, i32 noundef %1) #11
  br label %216

16:                                               ; preds = %4
  %17 = lshr i32 %6, 16
  %18 = and i32 %17, 31
  %19 = add nsw i32 %18, -1
  %20 = add i32 %1, -256
  %21 = icmp ult i32 %20, -255
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load ptr, ptr %0, align 8
  %24 = load ptr, ptr %23, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.9, i32 noundef %1) #11
  br label %216

25:                                               ; preds = %16
  %26 = icmp ugt i32 %19, 30
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = load ptr, ptr %0, align 8
  %29 = load ptr, ptr %28, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.10, i32 noundef %19) #11
  br label %216

30:                                               ; preds = %25
  %31 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 42, i32 %1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load ptr, ptr %0, align 8
  %36 = load ptr, ptr %35, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.11, i32 noundef %1) #11
  br label %216

37:                                               ; preds = %30
  %38 = getelementptr %struct.xhci_virt_device, ptr %32, i32 0, i32 4, i32 %19
  %39 = icmp eq ptr %38, null
  br i1 %39, label %216, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %38, align 4
  %42 = getelementptr inbounds %struct.xhci_virt_device, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = tail call ptr @xhci_get_ep_ctx(ptr noundef %0, ptr noundef %43, i32 noundef %19) #12
  %45 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_handle_cmd_stop_ep, i32 0, i32 1), align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %40
  %48 = tail call ptr @llvm.thread.pointer() #12
  %49 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %50 = load i32, ptr %49, align 8
  %51 = lshr i32 %50, 5
  %52 = getelementptr i32, ptr @__cpu_online_mask, i32 %51
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %50, 31
  %55 = shl nuw i32 1, %54
  %56 = and i32 %55, %53
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %47
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !79
  %59 = tail call i32 @__traceiter_xhci_handle_cmd_stop_ep(ptr noundef null, ptr noundef %44) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !80
  br label %60

60:                                               ; preds = %58, %47, %40
  %61 = icmp eq i32 %3, 19
  br i1 %61, label %62, label %174

62:                                               ; preds = %60
  %63 = load i32, ptr %44, align 8
  %64 = and i32 %63, 7
  switch i32 %64, label %174 [
    i32 2, label %65
    i32 1, label %128
  ]

65:                                               ; preds = %62
  %66 = getelementptr %struct.xhci_virt_device, ptr %32, i32 0, i32 4, i32 %19, i32 5
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, 16
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %118

70:                                               ; preds = %65
  %71 = getelementptr %struct.xhci_virt_device, ptr %32, i32 0, i32 4, i32 %19, i32 2
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.xhci_ring, ptr %72, i32 0, i32 6
  %74 = load volatile ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, %73
  br i1 %75, label %118, label %76

76:                                               ; preds = %70
  %77 = getelementptr %struct.xhci_virt_device, ptr %32, i32 0, i32 4, i32 %19, i32 8
  %78 = load ptr, ptr %38, align 4
  %79 = getelementptr %struct.xhci_virt_device, ptr %32, i32 0, i32 4, i32 %19, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr %struct.xhci_virt_device, ptr %78, i32 0, i32 4, i32 %80, i32 5
  %82 = load i32, ptr %81, align 4
  %83 = and i32 %82, 16
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %76
  %86 = getelementptr %struct.xhci_virt_device, ptr %78, i32 0, i32 4, i32 %80, i32 3
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.xhci_stream_info, ptr %87, i32 0, i32 2
  %89 = load ptr, ptr %88, align 4
  br label %99

90:                                               ; preds = %76
  %91 = load ptr, ptr %77, align 4
  %92 = getelementptr inbounds %struct.xhci_virt_device, ptr %78, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  %94 = tail call ptr @xhci_get_ep_ctx(ptr noundef %91, ptr noundef %93, i32 noundef %80) #12
  %95 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %94, i32 0, i32 2
  %96 = load ptr, ptr %71, align 4
  %97 = getelementptr inbounds %struct.xhci_ring, ptr %96, i32 0, i32 6
  %98 = load ptr, ptr %97, align 4
  br label %99

99:                                               ; preds = %90, %85
  %100 = phi ptr [ %74, %85 ], [ %98, %90 ]
  %101 = phi ptr [ %89, %85 ], [ %95, %90 ]
  %102 = load i64, ptr %101, align 8
  %103 = load ptr, ptr %77, align 4
  %104 = getelementptr inbounds %struct.xhci_td, ptr %100, i32 0, i32 5
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.xhci_td, ptr %100, i32 0, i32 6
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.xhci_td, ptr %100, i32 0, i32 7
  %109 = load ptr, ptr %108, align 4
  %110 = trunc i64 %102 to i32
  %111 = and i32 %110, -16
  %112 = tail call ptr @trb_in_td(ptr noundef %103, ptr noundef %105, ptr noundef %107, ptr noundef %109, i32 noundef %111, i1 noundef zeroext false) #12
  %113 = icmp eq ptr %112, null
  %114 = icmp eq ptr %100, null
  %115 = select i1 %113, i1 true, i1 %114
  br i1 %115, label %118, label %116

116:                                              ; preds = %99
  %117 = getelementptr inbounds %struct.xhci_td, ptr %100, i32 0, i32 2
  store i32 -71, ptr %117, align 4
  br label %118

118:                                              ; preds = %116, %99, %70, %65
  %119 = phi ptr [ %100, %116 ], [ null, %65 ], [ null, %70 ], [ null, %99 ]
  %120 = phi i32 [ 0, %116 ], [ 1, %65 ], [ 0, %70 ], [ 0, %99 ]
  %121 = tail call fastcc i32 @xhci_handle_halted_endpoint(ptr noundef %0, ptr noundef nonnull %38, ptr noundef %119, i32 noundef %120)
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %174

123:                                              ; preds = %118
  %124 = load i32, ptr %66, align 4
  %125 = and i32 %124, -5
  store i32 %125, ptr %66, align 4
  %126 = getelementptr %struct.xhci_virt_device, ptr %32, i32 0, i32 4, i32 %19, i32 7
  %127 = tail call i32 @del_timer(ptr noundef %126) #12
  br label %216

128:                                              ; preds = %62
  %129 = tail call ptr @xhci_alloc_command(ptr noundef %0, i1 noundef zeroext false, i32 noundef 2592) #12
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %137

131:                                              ; preds = %128
  %132 = getelementptr %struct.xhci_virt_device, ptr %32, i32 0, i32 4, i32 %19, i32 5
  %133 = load i32, ptr %132, align 4
  %134 = and i32 %133, -5
  store i32 %134, ptr %132, align 4
  %135 = getelementptr %struct.xhci_virt_device, ptr %32, i32 0, i32 4, i32 %19, i32 7
  %136 = tail call i32 @del_timer(ptr noundef %135) #12
  br label %137

137:                                              ; preds = %131, %128
  %138 = getelementptr %struct.xhci_virt_device, ptr %32, i32 0, i32 4, i32 %19, i32 7
  %139 = load volatile i32, ptr @jiffies, align 64
  %140 = add i32 %139, 500
  %141 = tail call i32 @mod_timer(ptr noundef %138, i32 noundef %140) #12
  %142 = shl nuw i32 %1, 24
  %143 = shl nuw nsw i32 %19, 16
  %144 = add nuw nsw i32 %143, 65536
  %145 = and i32 %144, 2031616
  %146 = or i32 %145, %142
  %147 = or i32 %146, 15360
  %148 = tail call fastcc i32 @queue_command(ptr noundef %0, ptr noundef %129, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %147, i1 noundef zeroext false) #12
  %149 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 30
  %150 = load i32, ptr %149, align 8
  %151 = and i32 %150, 1
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %216, label %153

153:                                              ; preds = %137
  %154 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_ring_host_doorbell, i32 0, i32 1), align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %169

156:                                              ; preds = %153
  %157 = tail call ptr @llvm.thread.pointer() #12
  %158 = getelementptr inbounds %struct.thread_info, ptr %157, i32 0, i32 2
  %159 = load i32, ptr %158, align 8
  %160 = lshr i32 %159, 5
  %161 = getelementptr i32, ptr @__cpu_online_mask, i32 %160
  %162 = load volatile i32, ptr %161, align 4
  %163 = and i32 %159, 31
  %164 = shl nuw i32 1, %163
  %165 = and i32 %164, %162
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %156
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %168 = tail call i32 @__traceiter_xhci_ring_host_doorbell(ptr noundef null, i32 noundef 0, i32 noundef 0) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  br label %169

169:                                              ; preds = %167, %156, %153
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %170 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 5
  %171 = load ptr, ptr %170, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %171, i32 0) #12, !srcloc !13
  %172 = load ptr, ptr %170, align 4
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %172) #12, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !15
  br label %216

174:                                              ; preds = %118, %62, %60
  tail call fastcc void @xhci_invalidate_cancelled_tds(ptr noundef nonnull %38)
  %175 = getelementptr %struct.xhci_virt_device, ptr %32, i32 0, i32 4, i32 %19, i32 5
  %176 = load i32, ptr %175, align 4
  %177 = and i32 %176, -5
  store i32 %177, ptr %175, align 4
  %178 = getelementptr %struct.xhci_virt_device, ptr %32, i32 0, i32 4, i32 %19, i32 7
  %179 = tail call i32 @del_timer(ptr noundef %178) #12
  %180 = getelementptr %struct.xhci_virt_device, ptr %32, i32 0, i32 4, i32 %19, i32 6
  %181 = load ptr, ptr %180, align 4
  %182 = getelementptr %struct.xhci_virt_device, ptr %32, i32 0, i32 4, i32 %19, i32 8
  br label %183

183:                                              ; preds = %209, %174
  %184 = phi ptr [ %181, %174 ], [ %186, %209 ]
  %185 = getelementptr i8, ptr %184, i32 -8
  %186 = load ptr, ptr %184, align 4
  %187 = icmp eq ptr %184, %180
  br i1 %187, label %215, label %188

188:                                              ; preds = %183
  %189 = load ptr, ptr %182, align 4
  %190 = getelementptr i8, ptr %184, i32 16
  %191 = load ptr, ptr %190, align 4
  %192 = getelementptr inbounds %struct.urb, ptr %191, i32 0, i32 8
  %193 = load ptr, ptr %192, align 4
  %194 = getelementptr inbounds %struct.usb_device, ptr %193, i32 0, i32 43
  %195 = load i32, ptr %194, align 8
  %196 = getelementptr inbounds %struct.urb, ptr %191, i32 0, i32 9
  %197 = load ptr, ptr %196, align 4
  %198 = tail call i32 @xhci_get_endpoint_index(ptr noundef %197) #12
  %199 = getelementptr inbounds %struct.urb, ptr %191, i32 0, i32 11
  %200 = load i32, ptr %199, align 4
  %201 = tail call ptr @xhci_triad_to_transfer_ring(ptr noundef %189, i32 noundef %195, i32 noundef %198, i32 noundef %200) #12
  %202 = getelementptr i8, ptr %184, i32 12
  %203 = load i32, ptr %202, align 4
  %204 = icmp eq i32 %203, 3
  br i1 %204, label %205, label %209

205:                                              ; preds = %188
  %206 = load ptr, ptr %182, align 4
  %207 = getelementptr i8, ptr %184, i32 8
  %208 = load i32, ptr %207, align 4
  tail call fastcc void @xhci_td_cleanup(ptr noundef %206, ptr noundef %185, ptr noundef %201, i32 noundef %208) #12
  br label %209

209:                                              ; preds = %205, %188
  %210 = load ptr, ptr %182, align 4
  %211 = getelementptr inbounds %struct.xhci_hcd, ptr %210, i32 0, i32 48
  %212 = load i32, ptr %211, align 4
  %213 = and i32 %212, 1
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %183, label %215

215:                                              ; preds = %209, %183
  tail call fastcc void @ring_doorbell_for_active_rings(ptr noundef %0, i32 noundef %1, i32 noundef %19)
  br label %216

216:                                              ; preds = %215, %169, %137, %123, %37, %34, %27, %22, %13, %9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_handle_command(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xhci_get_slot_ctx(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_free_device_endpoint_resources(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_handle_cmd_disable_slot(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xhci_get_input_control_ctx(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_last_valid_endpoint(i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_xhci_dbg_quirks(ptr noundef %0) #6 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_quirks, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #12
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !81
  %16 = tail call i32 @__traceiter_xhci_dbg_quirks(ptr noundef null, ptr noundef %0) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !82
  br label %17

17:                                               ; preds = %15, %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_handle_cmd_config_ep(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_dbg_quirks(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_handle_cmd_addr_dev(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xhci_handle_halted_endpoint(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = load ptr, ptr %1, align 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.xhci_virt_device, ptr %5, i32 0, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %81

11:                                               ; preds = %4
  %12 = icmp eq i32 %3, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.xhci_virt_ep, ptr %1, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %15, 64
  store i32 %16, ptr %14, align 4
  %17 = icmp eq ptr %2, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.xhci_td, ptr %2, i32 0, i32 1
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.xhci_virt_ep, ptr %1, i32 0, i32 6
  %24 = getelementptr inbounds %struct.xhci_virt_ep, ptr %1, i32 0, i32 6, i32 1
  %25 = load ptr, ptr %24, align 4
  store ptr %19, ptr %24, align 4
  store ptr %23, ptr %19, align 4
  %26 = getelementptr inbounds %struct.xhci_td, ptr %2, i32 0, i32 1, i32 1
  store ptr %25, ptr %26, align 4
  store volatile ptr %19, ptr %25, align 4
  %27 = getelementptr inbounds %struct.xhci_td, ptr %2, i32 0, i32 3
  store i32 1, ptr %27, align 4
  br label %28

28:                                               ; preds = %22, %18, %13, %11
  %29 = getelementptr inbounds %struct.xhci_virt_ep, ptr %1, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %81

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.xhci_virt_ep, ptr %1, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = tail call ptr @xhci_alloc_command(ptr noundef %0, i1 noundef zeroext false, i32 noundef 2592) #12
  %37 = icmp eq ptr %36, null
  br i1 %37, label %49, label %38

38:                                               ; preds = %33
  %39 = icmp eq i32 %3, 1
  %40 = select i1 %39, i32 14848, i32 14336
  %41 = shl i32 %35, 16
  %42 = add i32 %41, 65536
  %43 = and i32 %42, 2031616
  %44 = shl i32 %6, 24
  %45 = or i32 %43, %44
  %46 = or i32 %45, %40
  %47 = tail call fastcc i32 @queue_command(ptr noundef %0, ptr noundef nonnull %36, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %46, i1 noundef zeroext false) #12
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %38, %33
  %50 = phi i32 [ %47, %38 ], [ -12, %33 ]
  %51 = load ptr, ptr %0, align 8
  %52 = load ptr, ptr %51, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.36, i32 noundef %6, i32 noundef %35, i32 noundef %50) #11
  br label %81

53:                                               ; preds = %38
  %54 = load i32, ptr %29, align 4
  %55 = or i32 %54, 2
  store i32 %55, ptr %29, align 4
  %56 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 30
  %57 = load i32, ptr %56, align 8
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %81, label %60

60:                                               ; preds = %53
  %61 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_ring_host_doorbell, i32 0, i32 1), align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %60
  %64 = tail call ptr @llvm.thread.pointer() #12
  %65 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %66 = load i32, ptr %65, align 8
  %67 = lshr i32 %66, 5
  %68 = getelementptr i32, ptr @__cpu_online_mask, i32 %67
  %69 = load volatile i32, ptr %68, align 4
  %70 = and i32 %66, 31
  %71 = shl nuw i32 1, %70
  %72 = and i32 %71, %69
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %63
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %75 = tail call i32 @__traceiter_xhci_ring_host_doorbell(ptr noundef null, i32 noundef 0, i32 noundef 0) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  br label %76

76:                                               ; preds = %74, %63, %60
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %77 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 5
  %78 = load ptr, ptr %77, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 0) #12, !srcloc !13
  %79 = load ptr, ptr %77, align 4
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #12, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !15
  br label %81

81:                                               ; preds = %76, %53, %49, %28, %4
  %82 = phi i32 [ -19, %4 ], [ 0, %28 ], [ %50, %49 ], [ 0, %53 ], [ 0, %76 ]
  ret i32 %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xhci_alloc_command(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xhci_invalidate_cancelled_tds(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr %0, align 4
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.xhci_virt_ep, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.xhci_virt_ep, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %420, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.xhci_virt_ep, ptr %0, i32 0, i32 1
  br label %12

12:                                               ; preds = %137, %10
  %13 = phi ptr [ %8, %10 ], [ %16, %137 ]
  %14 = phi ptr [ null, %10 ], [ %138, %137 ]
  %15 = getelementptr i8, ptr %13, i32 -8
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr i8, ptr %13, i32 20
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %13, i32 24
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ne ptr %18, null
  %22 = icmp ne ptr %20, null
  %23 = and i1 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %12
  %25 = load ptr, ptr %18, align 4
  %26 = icmp ugt ptr %25, %20
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  %28 = ptrtoint ptr %20 to i32
  %29 = ptrtoint ptr %25 to i32
  %30 = sub i32 %28, %29
  %31 = icmp ugt i32 %30, 4080
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.xhci_segment, ptr %18, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %30
  br label %36

36:                                               ; preds = %32, %27, %24, %12
  %37 = phi i32 [ %35, %32 ], [ 0, %24 ], [ 0, %12 ], [ 0, %27 ]
  %38 = zext i32 %37 to i64
  %39 = getelementptr i8, ptr %13, i32 16
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 11
  %42 = load i32, ptr %41, align 4
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %6, ptr noundef nonnull @trace_xhci_dbg_cancel_urb, ptr noundef nonnull @.str.37, i64 noundef %38, i32 noundef %42, ptr noundef %40) #12
  %43 = getelementptr i8, ptr %13, i32 -4
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %15, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %44, ptr %46, align 4
  store volatile ptr %45, ptr %44, align 4
  store volatile ptr %15, ptr %15, align 4
  store ptr %15, ptr %43, align 4
  %47 = load ptr, ptr %39, align 4
  %48 = getelementptr inbounds %struct.urb, ptr %47, i32 0, i32 8
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.usb_device, ptr %49, i32 0, i32 43
  %51 = load i32, ptr %50, align 8
  %52 = getelementptr inbounds %struct.urb, ptr %47, i32 0, i32 9
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 @xhci_get_endpoint_index(ptr noundef %53) #12
  %55 = getelementptr inbounds %struct.urb, ptr %47, i32 0, i32 11
  %56 = load i32, ptr %55, align 4
  %57 = tail call ptr @xhci_triad_to_transfer_ring(ptr noundef %6, i32 noundef %51, i32 noundef %54, i32 noundef %56) #12
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %36
  %60 = load ptr, ptr %6, align 8
  %61 = load ptr, ptr %60, align 8
  %62 = load ptr, ptr %39, align 4
  %63 = getelementptr inbounds %struct.urb, ptr %62, i32 0, i32 11
  %64 = load i32, ptr %63, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %61, ptr noundef nonnull @.str.38, ptr noundef %62, i32 noundef %64) #11
  br label %137

65:                                               ; preds = %36
  %66 = load ptr, ptr %0, align 4
  %67 = load i32, ptr %11, align 4
  %68 = getelementptr %struct.xhci_virt_device, ptr %66, i32 0, i32 4, i32 %67, i32 5
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, 16
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %65
  %73 = load ptr, ptr %39, align 4
  %74 = getelementptr inbounds %struct.urb, ptr %73, i32 0, i32 11
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr %struct.xhci_virt_device, ptr %66, i32 0, i32 4, i32 %67, i32 3
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.xhci_stream_info, ptr %77, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr %struct.xhci_stream_ctx, ptr %79, i32 %75
  br label %86

81:                                               ; preds = %65
  %82 = getelementptr inbounds %struct.xhci_virt_device, ptr %66, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  %84 = tail call ptr @xhci_get_ep_ctx(ptr noundef %6, ptr noundef %83, i32 noundef %67) #12
  %85 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %84, i32 0, i32 2
  br label %86

86:                                               ; preds = %81, %72
  %87 = phi ptr [ %80, %72 ], [ %85, %81 ]
  %88 = getelementptr i8, ptr %13, i32 12
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %104, label %91

91:                                               ; preds = %86
  %92 = load i64, ptr %87, align 8
  %93 = load ptr, ptr %17, align 4
  %94 = load ptr, ptr %19, align 4
  %95 = getelementptr i8, ptr %13, i32 28
  %96 = load ptr, ptr %95, align 4
  %97 = trunc i64 %92 to i32
  %98 = and i32 %97, -16
  %99 = tail call ptr @trb_in_td(ptr noundef %6, ptr noundef %93, ptr noundef %94, ptr noundef %96, i32 noundef %98, i1 noundef zeroext false)
  %100 = icmp eq ptr %99, null
  br i1 %100, label %105, label %101

101:                                              ; preds = %91
  %102 = load i32, ptr %88, align 4
  %103 = icmp ult i32 %102, 2
  br i1 %103, label %104, label %137

104:                                              ; preds = %101, %86
  store i32 2, ptr %88, align 4
  br label %137

105:                                              ; preds = %91
  %106 = load ptr, ptr %17, align 4
  br label %107

107:                                              ; preds = %131, %105
  %108 = phi ptr [ %133, %131 ], [ %106, %105 ]
  %109 = phi ptr [ %133, %131 ], [ %19, %105 ]
  %110 = load ptr, ptr %109, align 4
  br label %111

111:                                              ; preds = %134, %107
  %112 = phi ptr [ %135, %134 ], [ %110, %107 ]
  %113 = getelementptr %struct.xhci_link_trb, ptr %112, i32 0, i32 2
  %114 = load i32, ptr %113, align 4
  %115 = and i32 %114, 64512
  %116 = icmp eq i32 %115, 6144
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = and i32 %114, -17
  br label %124

119:                                              ; preds = %111
  store i32 0, ptr %112, align 8
  %120 = getelementptr [4 x i32], ptr %112, i32 0, i32 1
  store i32 0, ptr %120, align 4
  %121 = getelementptr [4 x i32], ptr %112, i32 0, i32 2
  store i32 0, ptr %121, align 8
  %122 = and i32 %114, 1
  %123 = or i32 %122, 8192
  br label %124

124:                                              ; preds = %119, %117
  %125 = phi i32 [ %123, %119 ], [ %118, %117 ]
  store i32 %125, ptr %113, align 4
  %126 = load ptr, ptr %95, align 4
  %127 = icmp eq ptr %112, %126
  br i1 %127, label %136, label %128

128:                                              ; preds = %124
  %129 = and i32 %125, 64512
  %130 = icmp eq i32 %129, 6144
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.xhci_segment, ptr %108, i32 0, i32 1
  %133 = load ptr, ptr %132, align 4
  br label %107

134:                                              ; preds = %128
  %135 = getelementptr %union.xhci_trb, ptr %112, i32 1
  br label %111

136:                                              ; preds = %124
  store i32 3, ptr %88, align 4
  br label %137

137:                                              ; preds = %136, %104, %101, %59
  %138 = phi ptr [ %14, %101 ], [ %15, %104 ], [ %14, %136 ], [ %14, %59 ]
  %139 = icmp eq ptr %16, %7
  br i1 %139, label %140, label %12

140:                                              ; preds = %137
  %141 = icmp eq ptr %138, null
  br i1 %141, label %420, label %142

142:                                              ; preds = %140
  %143 = getelementptr inbounds %struct.xhci_virt_ep, ptr %0, i32 0, i32 1
  %144 = load i32, ptr %143, align 4
  %145 = getelementptr inbounds %struct.xhci_td, ptr %138, i32 0, i32 4
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.urb, ptr %146, i32 0, i32 11
  %148 = load i32, ptr %147, align 4
  %149 = getelementptr %struct.xhci_hcd, ptr %6, i32 0, i32 42, i32 %4
  %150 = load ptr, ptr %149, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !20
  %151 = tail call ptr @xhci_triad_to_transfer_ring(ptr noundef %6, i32 noundef %4, i32 noundef %144, i32 noundef %148) #12
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %142
  %154 = load ptr, ptr %6, align 8
  %155 = load ptr, ptr %154, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %155, ptr noundef nonnull @.str.39, i32 noundef %148) #11
  br label %374

156:                                              ; preds = %142
  %157 = getelementptr %struct.xhci_virt_device, ptr %150, i32 0, i32 4, i32 %144, i32 5
  %158 = load i32, ptr %157, align 4
  %159 = and i32 %158, 16
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %156
  %162 = getelementptr %struct.xhci_virt_device, ptr %150, i32 0, i32 4, i32 %144, i32 3
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.xhci_stream_info, ptr %163, i32 0, i32 2
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr %struct.xhci_stream_ctx, ptr %165, i32 %148
  br label %172

167:                                              ; preds = %156
  %168 = getelementptr inbounds %struct.xhci_virt_device, ptr %150, i32 0, i32 2
  %169 = load ptr, ptr %168, align 4
  %170 = tail call ptr @xhci_get_ep_ctx(ptr noundef %6, ptr noundef %169, i32 noundef %144) #12
  %171 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %170, i32 0, i32 2
  br label %172

172:                                              ; preds = %167, %161
  %173 = phi ptr [ %166, %161 ], [ %171, %167 ]
  %174 = load i64, ptr %173, align 8
  %175 = getelementptr inbounds %struct.xhci_ring, ptr %151, i32 0, i32 5
  %176 = load ptr, ptr %175, align 4
  %177 = getelementptr inbounds %struct.xhci_ring, ptr %151, i32 0, i32 4
  %178 = load ptr, ptr %177, align 4
  %179 = getelementptr inbounds %struct.xhci_hcd, ptr %6, i32 0, i32 51
  %180 = load i64, ptr %179, align 8
  %181 = and i64 %180, 4398046511104
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %206, label %183

183:                                              ; preds = %172
  %184 = load i32, ptr %157, align 4
  %185 = and i32 %184, 16
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %206

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.xhci_td, ptr %138, i32 0, i32 5
  %189 = load ptr, ptr %188, align 4
  %190 = getelementptr inbounds %struct.xhci_td, ptr %138, i32 0, i32 6
  %191 = load ptr, ptr %190, align 4
  %192 = getelementptr inbounds %struct.xhci_td, ptr %138, i32 0, i32 7
  %193 = load ptr, ptr %192, align 4
  %194 = trunc i64 %174 to i32
  %195 = and i32 %194, -16
  %196 = tail call ptr @trb_in_td(ptr noundef %6, ptr noundef %189, ptr noundef %191, ptr noundef %193, i32 noundef %195, i1 noundef zeroext false) #12
  %197 = icmp eq ptr %196, null
  br i1 %197, label %206, label %198

198:                                              ; preds = %187
  %199 = getelementptr inbounds %struct.xhci_segment, ptr %196, i32 0, i32 2
  %200 = load i32, ptr %199, align 4
  %201 = sub i32 %195, %200
  %202 = lshr i32 %201, 4
  %203 = load ptr, ptr %196, align 4
  %204 = getelementptr %union.xhci_trb, ptr %203, i32 %202, i32 0, i32 2
  %205 = load i32, ptr %204, align 4
  br label %209

206:                                              ; preds = %187, %183, %172
  %207 = trunc i64 %174 to i32
  %208 = and i32 %207, -16
  br label %209

209:                                              ; preds = %206, %198
  %210 = phi i32 [ %208, %206 ], [ %195, %198 ]
  %211 = phi i32 [ %207, %206 ], [ %205, %198 ]
  %212 = and i32 %211, 1
  %213 = getelementptr inbounds %struct.xhci_td, ptr %138, i32 0, i32 7
  %214 = getelementptr %struct.xhci_virt_device, ptr %150, i32 0, i32 4, i32 %144, i32 2
  br label %215

215:                                              ; preds = %286, %209
  %216 = phi ptr [ %176, %209 ], [ %277, %286 ]
  %217 = phi ptr [ %178, %209 ], [ %278, %286 ]
  %218 = phi i32 [ %212, %209 ], [ %267, %286 ]
  %219 = phi i1 [ false, %209 ], [ %266, %286 ]
  %220 = phi i1 [ false, %209 ], [ %265, %286 ]
  br i1 %219, label %221, label %225

221:                                              ; preds = %215
  %222 = load ptr, ptr %213, align 4
  %223 = icmp eq ptr %217, %222
  %224 = select i1 %223, i1 true, i1 %220
  br label %253

225:                                              ; preds = %215
  %226 = icmp ne ptr %216, null
  %227 = icmp ne ptr %217, null
  %228 = and i1 %226, %227
  br i1 %228, label %229, label %241

229:                                              ; preds = %225
  %230 = load ptr, ptr %216, align 4
  %231 = icmp ugt ptr %230, %217
  br i1 %231, label %241, label %232

232:                                              ; preds = %229
  %233 = ptrtoint ptr %217 to i32
  %234 = ptrtoint ptr %230 to i32
  %235 = sub i32 %233, %234
  %236 = icmp ugt i32 %235, 4080
  br i1 %236, label %241, label %237

237:                                              ; preds = %232
  %238 = getelementptr inbounds %struct.xhci_segment, ptr %216, i32 0, i32 2
  %239 = load i32, ptr %238, align 4
  %240 = add i32 %239, %235
  br label %241

241:                                              ; preds = %237, %232, %229, %225
  %242 = phi i32 [ %240, %237 ], [ 0, %229 ], [ 0, %225 ], [ 0, %232 ]
  %243 = icmp ne i32 %242, %210
  %244 = xor i1 %220, true
  %245 = select i1 %243, i1 true, i1 %244
  br i1 %245, label %246, label %288

246:                                              ; preds = %241
  %247 = load ptr, ptr %213, align 4
  %248 = icmp eq ptr %217, %247
  %249 = select i1 %248, i1 true, i1 %220
  br i1 %243, label %250, label %253

250:                                              ; preds = %246
  %251 = getelementptr inbounds %struct.xhci_link_trb, ptr %217, i32 0, i32 2
  %252 = load i32, ptr %251, align 4
  br label %263

253:                                              ; preds = %246, %221
  %254 = phi i1 [ %224, %221 ], [ %249, %246 ]
  %255 = getelementptr inbounds %struct.xhci_link_trb, ptr %217, i32 0, i32 2
  %256 = load i32, ptr %255, align 4
  %257 = and i32 %256, 64512
  %258 = icmp eq i32 %257, 6144
  br i1 %258, label %259, label %263

259:                                              ; preds = %253
  %260 = lshr i32 %256, 1
  %261 = and i32 %260, 1
  %262 = xor i32 %261, %218
  br label %263

263:                                              ; preds = %259, %253, %250
  %264 = phi i32 [ %256, %253 ], [ %252, %250 ], [ %256, %259 ]
  %265 = phi i1 [ %254, %253 ], [ %249, %250 ], [ %254, %259 ]
  %266 = phi i1 [ true, %253 ], [ false, %250 ], [ true, %259 ]
  %267 = phi i32 [ %218, %253 ], [ %218, %250 ], [ %262, %259 ]
  %268 = and i32 %264, 64512
  %269 = icmp eq i32 %268, 6144
  br i1 %269, label %270, label %274

270:                                              ; preds = %263
  %271 = getelementptr inbounds %struct.xhci_segment, ptr %216, i32 0, i32 1
  %272 = load ptr, ptr %271, align 4
  %273 = load ptr, ptr %272, align 4
  br label %276

274:                                              ; preds = %263
  %275 = getelementptr %union.xhci_trb, ptr %217, i32 1
  br label %276

276:                                              ; preds = %274, %270
  %277 = phi ptr [ %272, %270 ], [ %216, %274 ]
  %278 = phi ptr [ %273, %270 ], [ %275, %274 ]
  %279 = load ptr, ptr %214, align 4
  %280 = getelementptr inbounds %struct.xhci_ring, ptr %279, i32 0, i32 4
  %281 = load ptr, ptr %280, align 4
  %282 = icmp eq ptr %278, %281
  br i1 %282, label %283, label %286

283:                                              ; preds = %276
  %284 = load ptr, ptr %6, align 8
  %285 = load ptr, ptr %284, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %285, ptr noundef nonnull @.str.41) #11
  br label %374

286:                                              ; preds = %276
  %287 = select i1 %266, i1 %265, i1 false
  br i1 %287, label %288, label %215

288:                                              ; preds = %286, %241
  %289 = phi ptr [ %216, %241 ], [ %277, %286 ]
  %290 = phi ptr [ %217, %241 ], [ %278, %286 ]
  %291 = phi i32 [ %218, %241 ], [ %267, %286 ]
  %292 = icmp ne ptr %289, null
  %293 = icmp ne ptr %290, null
  %294 = and i1 %292, %293
  br i1 %294, label %295, label %303

295:                                              ; preds = %288
  %296 = load ptr, ptr %289, align 4
  %297 = icmp ugt ptr %296, %290
  br i1 %297, label %303, label %298

298:                                              ; preds = %295
  %299 = ptrtoint ptr %290 to i32
  %300 = ptrtoint ptr %296 to i32
  %301 = sub i32 %299, %300
  %302 = icmp ugt i32 %301, 4080
  br i1 %302, label %303, label %304

303:                                              ; preds = %298, %295, %288
  store i32 0, ptr %2, align 4
  br label %309

304:                                              ; preds = %298
  %305 = getelementptr inbounds %struct.xhci_segment, ptr %289, i32 0, i32 2
  %306 = load i32, ptr %305, align 4
  %307 = add i32 %306, %301
  store i32 %307, ptr %2, align 4
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %314

309:                                              ; preds = %304, %303
  %310 = load ptr, ptr %6, align 8
  %311 = load ptr, ptr %310, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %311, ptr noundef nonnull @.str.42) #11
  %312 = load ptr, ptr %6, align 8
  %313 = load ptr, ptr %312, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %313, ptr noundef nonnull @.str.43, ptr noundef %289, ptr noundef %290) #11
  br label %374

314:                                              ; preds = %304
  %315 = load i32, ptr %157, align 4
  %316 = and i32 %315, 1
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %321, label %318

318:                                              ; preds = %314
  %319 = load ptr, ptr %6, align 8
  %320 = load ptr, ptr %319, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %320, ptr noundef nonnull @.str.44, ptr noundef nonnull %2) #11
  br label %374

321:                                              ; preds = %314
  %322 = tail call ptr @xhci_alloc_command(ptr noundef %6, i1 noundef zeroext false, i32 noundef 2592) #12
  %323 = icmp eq ptr %322, null
  br i1 %323, label %324, label %327

324:                                              ; preds = %321
  %325 = load ptr, ptr %6, align 8
  %326 = load ptr, ptr %325, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %326, ptr noundef nonnull @.str.45, ptr noundef nonnull %2) #11
  br label %374

327:                                              ; preds = %321
  %328 = icmp eq i32 %148, 0
  %329 = select i1 %328, i32 0, i32 2
  %330 = or i32 %291, %329
  %331 = or i32 %330, %307
  %332 = shl i32 %148, 16
  %333 = shl i32 %4, 24
  %334 = shl i32 %144, 16
  %335 = add i32 %334, 65536
  %336 = and i32 %335, 2031616
  %337 = or i32 %336, %333
  %338 = or i32 %337, 16384
  %339 = tail call fastcc i32 @queue_command(ptr noundef %6, ptr noundef nonnull %322, i32 noundef %331, i32 noundef 0, i32 noundef %332, i32 noundef %338, i1 noundef zeroext false) #12
  %340 = icmp slt i32 %339, 0
  br i1 %340, label %341, label %342

341:                                              ; preds = %327
  tail call void @xhci_free_command(ptr noundef %6, ptr noundef nonnull %322) #12
  br label %374

342:                                              ; preds = %327
  %343 = getelementptr %struct.xhci_virt_device, ptr %150, i32 0, i32 4, i32 %144, i32 9
  store ptr %289, ptr %343, align 4
  %344 = getelementptr %struct.xhci_virt_device, ptr %150, i32 0, i32 4, i32 %144, i32 10
  store ptr %290, ptr %344, align 4
  %345 = load i32, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %6, ptr noundef nonnull @trace_xhci_dbg_cancel_urb, ptr noundef nonnull @.str.46, i32 noundef %345, i32 noundef %291) #12
  %346 = load i32, ptr %157, align 4
  %347 = or i32 %346, 1
  store i32 %347, ptr %157, align 4
  %348 = getelementptr inbounds %struct.xhci_hcd, ptr %6, i32 0, i32 30
  %349 = load i32, ptr %348, align 8
  %350 = and i32 %349, 1
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %373, label %352

352:                                              ; preds = %342
  %353 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_ring_host_doorbell, i32 0, i32 1), align 4
  %354 = icmp sgt i32 %353, 0
  br i1 %354, label %355, label %368

355:                                              ; preds = %352
  %356 = tail call ptr @llvm.thread.pointer() #12
  %357 = getelementptr inbounds %struct.thread_info, ptr %356, i32 0, i32 2
  %358 = load i32, ptr %357, align 8
  %359 = lshr i32 %358, 5
  %360 = getelementptr i32, ptr @__cpu_online_mask, i32 %359
  %361 = load volatile i32, ptr %360, align 4
  %362 = and i32 %358, 31
  %363 = shl nuw i32 1, %362
  %364 = and i32 %363, %361
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %368, label %366

366:                                              ; preds = %355
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %367 = tail call i32 @__traceiter_xhci_ring_host_doorbell(ptr noundef null, i32 noundef 0, i32 noundef 0) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  br label %368

368:                                              ; preds = %366, %355, %352
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %369 = getelementptr inbounds %struct.xhci_hcd, ptr %6, i32 0, i32 5
  %370 = load ptr, ptr %369, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %370, i32 0) #12, !srcloc !13
  %371 = load ptr, ptr %369, align 4
  %372 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %371) #12, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !15
  br label %373

373:                                              ; preds = %368, %342
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  br label %420

374:                                              ; preds = %341, %324, %318, %309, %283, %153
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %375 = load ptr, ptr %7, align 4
  %376 = icmp eq ptr %375, %7
  br i1 %376, label %420, label %377

377:                                              ; preds = %418, %374
  %378 = phi ptr [ %379, %418 ], [ %375, %374 ]
  %379 = load ptr, ptr %378, align 4
  %380 = getelementptr i8, ptr %378, i32 12
  %381 = load i32, ptr %380, align 4
  %382 = icmp eq i32 %381, 2
  br i1 %382, label %383, label %418

383:                                              ; preds = %377
  %384 = getelementptr i8, ptr %378, i32 20
  %385 = load ptr, ptr %384, align 4
  %386 = getelementptr i8, ptr %378, i32 24
  %387 = getelementptr i8, ptr %378, i32 28
  br label %388

388:                                              ; preds = %412, %383
  %389 = phi ptr [ %414, %412 ], [ %385, %383 ]
  %390 = phi ptr [ %414, %412 ], [ %386, %383 ]
  %391 = load ptr, ptr %390, align 4
  br label %392

392:                                              ; preds = %415, %388
  %393 = phi ptr [ %416, %415 ], [ %391, %388 ]
  %394 = getelementptr %struct.xhci_link_trb, ptr %393, i32 0, i32 2
  %395 = load i32, ptr %394, align 4
  %396 = and i32 %395, 64512
  %397 = icmp eq i32 %396, 6144
  br i1 %397, label %398, label %400

398:                                              ; preds = %392
  %399 = and i32 %395, -17
  br label %405

400:                                              ; preds = %392
  store i32 0, ptr %393, align 8
  %401 = getelementptr [4 x i32], ptr %393, i32 0, i32 1
  store i32 0, ptr %401, align 4
  %402 = getelementptr [4 x i32], ptr %393, i32 0, i32 2
  store i32 0, ptr %402, align 8
  %403 = and i32 %395, 1
  %404 = or i32 %403, 8192
  br label %405

405:                                              ; preds = %400, %398
  %406 = phi i32 [ %404, %400 ], [ %399, %398 ]
  store i32 %406, ptr %394, align 4
  %407 = load ptr, ptr %387, align 4
  %408 = icmp eq ptr %393, %407
  br i1 %408, label %417, label %409

409:                                              ; preds = %405
  %410 = and i32 %406, 64512
  %411 = icmp eq i32 %410, 6144
  br i1 %411, label %412, label %415

412:                                              ; preds = %409
  %413 = getelementptr inbounds %struct.xhci_segment, ptr %389, i32 0, i32 1
  %414 = load ptr, ptr %413, align 4
  br label %388

415:                                              ; preds = %409
  %416 = getelementptr %union.xhci_trb, ptr %393, i32 1
  br label %392

417:                                              ; preds = %405
  store i32 3, ptr %380, align 4
  br label %418

418:                                              ; preds = %417, %377
  %419 = icmp eq ptr %379, %7
  br i1 %419, label %420, label %377

420:                                              ; preds = %418, %374, %373, %140, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_handle_cmd_stop_ep(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_free_command(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xhci_td_cleanup(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.xhci_td, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  tail call fastcc void @xhci_unmap_td_bounce_buffer(ptr noundef %0, ptr noundef %2, ptr noundef %1)
  %7 = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 20
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 19
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load ptr, ptr %0, align 8
  %14 = load ptr, ptr %13, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.47, i32 noundef %10, i32 noundef %8) #11
  store i32 0, ptr %7, align 4
  br label %15

15:                                               ; preds = %12, %4
  %16 = phi i32 [ 0, %12 ], [ %3, %4 ]
  %17 = load volatile ptr, ptr %1, align 4
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %21, ptr %22, align 4
  store volatile ptr %17, ptr %21, align 4
  store volatile ptr %1, ptr %1, align 4
  store ptr %1, ptr %20, align 4
  br label %23

23:                                               ; preds = %19, %15
  %24 = getelementptr inbounds %struct.xhci_td, ptr %1, i32 0, i32 1
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.xhci_td, ptr %1, i32 0, i32 1, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %29, ptr %30, align 4
  store volatile ptr %25, ptr %29, align 4
  store volatile ptr %24, ptr %24, align 4
  store ptr %24, ptr %28, align 4
  br label %31

31:                                               ; preds = %27, %23
  %32 = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.urb_priv, ptr %33, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 4
  %37 = load ptr, ptr %5, align 4
  %38 = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.urb_priv, ptr %39, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = load i32, ptr %39, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %31
  %45 = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 10
  %46 = load i32, ptr %45, align 4
  %47 = icmp ult i32 %46, 1073741824
  %48 = select i1 %47, i32 0, i32 %16
  tail call fastcc void @xhci_giveback_urb_in_irq(ptr noundef %0, ptr noundef %1, i32 noundef %48)
  br label %49

49:                                               ; preds = %44, %31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_handle_cmd_set_deq(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_handle_cmd_set_deq_ep(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_xhci_dbg_reset_ep(ptr noundef %0) #6 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_reset_ep, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #12
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !83
  %16 = tail call i32 @__traceiter_xhci_dbg_reset_ep(ptr noundef null, ptr noundef %0) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !84
  br label %17

17:                                               ; preds = %15, %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_handle_cmd_reset_ep(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_dbg_reset_ep(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_handle_cmd_reset_dev(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_resume_root_hub(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_find_slot_id_by_port(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_test_and_clear_bit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_start_port_resume(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_set_link_state(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_ring_device(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_wakeup_notification(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_poll_rh_status(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_handle_port_status(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xhci_dma_to_transfer_ring(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_handle_transfer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @finish_td(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #2 {
  %6 = load ptr, ptr %1, align 4
  %7 = getelementptr inbounds %struct.xhci_virt_device, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.xhci_virt_ep, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = tail call ptr @xhci_get_ep_ctx(ptr noundef %0, ptr noundef %8, i32 noundef %10) #12
  switch i32 %4, label %108 [
    i32 27, label %123
    i32 28, label %123
    i32 26, label %123
    i32 4, label %12
    i32 3, label %12
    i32 36, label %12
    i32 6, label %65
  ]

12:                                               ; preds = %5, %5, %5
  %13 = load i32, ptr %11, align 8
  %14 = and i32 %13, 7
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.xhci_virt_ep, ptr %1, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %108, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.xhci_td, ptr %3, i32 0, i32 1
  %23 = load volatile ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %22
  br i1 %24, label %108, label %123

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.xhci_td, ptr %3, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.urb, ptr %27, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 8
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %63, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.urb, ptr %27, i32 0, i32 10
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, -1073741824
  %37 = icmp eq i32 %36, 1073741824
  br i1 %37, label %63, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr %31, align 4
  %40 = load ptr, ptr %0, align 8
  %41 = getelementptr inbounds %struct.usb_bus, ptr %40, i32 0, i32 11
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %39, %42
  br i1 %43, label %63, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.xhci_virt_ep, ptr %1, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 256
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = or i32 %46, 256
  store i32 %50, ptr %45, align 4
  %51 = load ptr, ptr %26, align 4
  %52 = getelementptr inbounds %struct.urb, ptr %51, i32 0, i32 8
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.urb, ptr %51, i32 0, i32 9
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.usb_host_endpoint, ptr %55, i32 0, i32 5
  store ptr %53, ptr %56, align 4
  %57 = load ptr, ptr %26, align 4
  %58 = tail call i32 @usb_hub_clear_tt_buffer(ptr noundef %57) #12
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %49
  %61 = load i32, ptr %45, align 4
  %62 = and i32 %61, -257
  store i32 %62, ptr %45, align 4
  br label %63

63:                                               ; preds = %60, %49, %44, %38, %33, %25
  %64 = tail call fastcc i32 @xhci_handle_halted_endpoint(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef 0)
  br label %123

65:                                               ; preds = %5
  %66 = load i32, ptr %9, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %106, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.xhci_td, ptr %3, i32 0, i32 4
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.urb, ptr %70, i32 0, i32 8
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.usb_device, ptr %72, i32 0, i32 8
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %106, label %76

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.urb, ptr %70, i32 0, i32 10
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, -1073741824
  %80 = icmp eq i32 %79, 1073741824
  br i1 %80, label %106, label %81

81:                                               ; preds = %76
  %82 = load ptr, ptr %74, align 4
  %83 = load ptr, ptr %0, align 8
  %84 = getelementptr inbounds %struct.usb_bus, ptr %83, i32 0, i32 11
  %85 = load ptr, ptr %84, align 8
  %86 = icmp eq ptr %82, %85
  br i1 %86, label %106, label %87

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.xhci_virt_ep, ptr %1, i32 0, i32 5
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, 256
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %87
  %93 = or i32 %89, 256
  store i32 %93, ptr %88, align 4
  %94 = load ptr, ptr %69, align 4
  %95 = getelementptr inbounds %struct.urb, ptr %94, i32 0, i32 8
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.urb, ptr %94, i32 0, i32 9
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.usb_host_endpoint, ptr %98, i32 0, i32 5
  store ptr %96, ptr %99, align 4
  %100 = load ptr, ptr %69, align 4
  %101 = tail call i32 @usb_hub_clear_tt_buffer(ptr noundef %100) #12
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %92
  %104 = load i32, ptr %88, align 4
  %105 = and i32 %104, -257
  store i32 %105, ptr %88, align 4
  br label %106

106:                                              ; preds = %103, %92, %87, %81, %76, %68, %65
  %107 = tail call fastcc i32 @xhci_handle_halted_endpoint(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef 0)
  br label %123

108:                                              ; preds = %21, %16, %5
  %109 = getelementptr inbounds %struct.xhci_td, ptr %3, i32 0, i32 7
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.xhci_ring, ptr %2, i32 0, i32 4
  store ptr %110, ptr %111, align 4
  %112 = getelementptr inbounds %struct.xhci_td, ptr %3, i32 0, i32 8
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.xhci_ring, ptr %2, i32 0, i32 5
  store ptr %113, ptr %114, align 4
  %115 = getelementptr inbounds %struct.xhci_td, ptr %3, i32 0, i32 11
  %116 = load i32, ptr %115, align 4
  %117 = add i32 %116, -1
  %118 = getelementptr inbounds %struct.xhci_ring, ptr %2, i32 0, i32 11
  %119 = load i32, ptr %118, align 4
  %120 = add i32 %117, %119
  store i32 %120, ptr %118, align 4
  tail call void @inc_deq(ptr noundef %0, ptr noundef %2)
  %121 = getelementptr inbounds %struct.xhci_td, ptr %3, i32 0, i32 2
  %122 = load i32, ptr %121, align 4
  tail call fastcc void @xhci_td_cleanup(ptr noundef %0, ptr noundef %3, ptr noundef %2, i32 noundef %122)
  br label %123

123:                                              ; preds = %108, %106, %63, %21, %5, %5, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hub_clear_tt_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_get_endpoint_index(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_link_urb_to_ep(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_queue_trb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_inc_enq(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_xhci_dbg_ring_expansion(ptr noundef %0) #6 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_ring_expansion, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #12
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !85
  %16 = tail call i32 @__traceiter_xhci_dbg_ring_expansion(ptr noundef null, ptr noundef %0) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !86
  br label %17

17:                                               ; preds = %15, %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_ring_expansion(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_dbg_ring_expansion(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_amd_quirk_pll_disable() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind }

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
!8 = !{i64 2154384926}
!9 = !{i64 2154385070}
!10 = !{i64 2154471411}
!11 = !{i64 2154471597}
!12 = !{i64 2154565226}
!13 = !{i64 4659885}
!14 = !{i64 4660303}
!15 = !{i64 2154565727}
!16 = !{i64 2154454772}
!17 = !{i64 2154454954}
!18 = !{i64 2154577561}
!19 = !{i64 2154578084}
!20 = !{!"auto-init"}
!21 = !{i64 2154638432}
!22 = !{i64 2153697024}
!23 = !{i64 2153697180}
!24 = !{i64 2153266122}
!25 = !{i64 2153266420}
!26 = !{i64 2153266761}
!27 = !{i64 2153267059}
!28 = !{i64 2154754219}
!29 = !{i64 2154755166}
!30 = !{i64 2154755667}
!31 = !{i64 2154755878}
!32 = !{i64 2153766870}
!33 = !{i64 2153767034}
!34 = !{i64 2154751048}
!35 = !{i64 2154693281}
!36 = !{i64 2154401022}
!37 = !{i64 2154401210}
!38 = !{i64 2154696306}
!39 = !{i64 2154687318}
!40 = !{i64 2154688179}
!41 = !{i64 2154689196}
!42 = !{i64 2149159579}
!43 = !{i64 2149155403}
!44 = !{i64 2149155478, i64 2149155505, i64 2149155552, i64 2149155574, i64 2149155602, i64 2149155622}
!45 = !{i64 2149182582}
!46 = !{i8 0, i8 2}
!47 = !{i64 2153804409}
!48 = !{i64 2153804579}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{i64 2154757367}
!52 = !{i64 2153821047}
!53 = !{i64 2153821205}
!54 = !{i64 2154563381}
!55 = !{i64 2154369361}
!56 = !{i64 2154369505}
!57 = !{i64 2154768890}
!58 = !{i64 2154791508}
!59 = !{i64 2154781620}
!60 = !{i64 2154762494}
!61 = !{i64 2153999301}
!62 = !{i64 2153999453}
!63 = !{i64 2153783536}
!64 = !{i64 2153783704}
!65 = !{i64 2154154029}
!66 = !{i64 2154154203}
!67 = !{i64 2154208682}
!68 = !{i64 2154208848}
!69 = !{i64 2154246197}
!70 = !{i64 2154246361}
!71 = !{i64 2154052092}
!72 = !{i64 2154052262}
!73 = !{i64 2154068868}
!74 = !{i64 2154069034}
!75 = !{i64 2154225420}
!76 = !{i64 2154225588}
!77 = !{i64 2154085574}
!78 = !{i64 2154085742}
!79 = !{i64 2154031341}
!80 = !{i64 2154031505}
!81 = !{i64 2153661015}
!82 = !{i64 2153661163}
!83 = !{i64 2153680958}
!84 = !{i64 2153681110}
!85 = !{i64 2153728972}
!86 = !{i64 2153729136}
