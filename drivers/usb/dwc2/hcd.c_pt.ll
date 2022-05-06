; ModuleID = '/llk/IR/drivers/usb/dwc2/hcd.c_pt.bc'
source_filename = "../drivers/usb/dwc2/hcd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.dwc2_host_chan = type { i8, [3 x i8], i16, ptr, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, ptr, %struct.list_head, i32, i32, %struct.list_head }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.dwc2_qh = type { ptr, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, [8 x %struct.dwc2_hs_transfer_time], i32, i16, ptr, i32, %struct.list_head, ptr, %struct.list_head, ptr, i32, i32, ptr, %struct.timer_list, %struct.hrtimer, ptr, i32, i8 }
%struct.dwc2_hs_transfer_time = type { i32, i16 }
%struct.dwc2_hcd_urb = type { ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i16, %struct.dwc2_hcd_pipe_info, [0 x %struct.dwc2_hcd_iso_packet_desc] }
%struct.dwc2_hcd_pipe_info = type { i8, i8, i8, i8, i16, i16 }
%struct.dwc2_hcd_iso_packet_desc = type { i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_tt = type { ptr, i32, i32, ptr, %struct.spinlock, %struct.list_head, %struct.work_struct }
%struct.dwc2_tt = type { i32, ptr, [0 x i32] }
%struct.dwc2_qtd = type { i32, i8, i8, i8, i8, i16, i16, i16, i16, i32, i8, i8, i16, i16, ptr, ptr, %struct.list_head }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.72, i32 }
%union.anon.72 = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.1, %union.anon.63, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.usb_hub_descriptor = type <{ i8, i8, i8, i16, i8, i8, %union.anon.73 }>
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { [4 x i8], [4 x i8] }

@.str = private unnamed_addr constant [30 x i8] c"%s() Channel can't be halted\0A\00", align 1
@__func__.dwc2_hc_halt = private unnamed_addr constant [13 x i8] c"dwc2_hc_halt\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"!!! halt_status = %d !!!\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"%s: chdis set, channel %d, hcchar 0x%08x\0A\00", align 1
@__func__.dwc2_hc_start_transfer_ddma = private unnamed_addr constant [28 x i8] c"dwc2_hc_start_transfer_ddma\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"%s(): Reset failed, aborting\0A\00", align 1
@__func__.dwc2_core_init = private unnamed_addr constant [15 x i8] c"dwc2_core_init\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"enter partial_power_down failed.\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"enter hibernation failed.\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"exit partial_power_down failed.\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"exit hibernation failed.\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"drivers/usb/dwc2/hcd.c\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"dma_mask not set, disabling DMA\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"can't set DMA mask\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"can't set coherent DMA mask\0A\00", align 1
@dwc2_hc_driver = internal global %struct.hc_driver { ptr @.str.35, ptr @.str.36, i32 4, ptr @_dwc2_hcd_irq, i32 289, ptr null, ptr @_dwc2_hcd_start, ptr null, ptr null, ptr @_dwc2_hcd_stop, ptr null, ptr @_dwc2_hcd_get_frame_number, ptr @_dwc2_hcd_urb_enqueue, ptr @_dwc2_hcd_urb_dequeue, ptr @dwc2_map_urb_for_dma, ptr @dwc2_unmap_urb_for_dma, ptr @_dwc2_hcd_endpoint_disable, ptr @_dwc2_hcd_endpoint_reset, ptr @_dwc2_hcd_hub_status_data, ptr @_dwc2_hcd_hub_control, ptr @_dwc2_hcd_suspend, ptr @_dwc2_hcd_resume, ptr null, ptr null, ptr null, ptr null, ptr @_dwc2_hcd_clear_tt_buffer_complete, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"dwc2\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Failed to create workqueue\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"dwc2-gen-desc\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"unable to create dwc2 generic desc cache\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"dwc2-hsisoc-desc\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"unable to create dwc2 hs isoc desc cache\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"dwc2-unaligned-dma\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"unable to create dwc2 unaligned cache\0A\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"%s() FAILED, returning %d\0A\00", align 1
@__func__.dwc2_hcd_init = private unnamed_addr constant [14 x i8] c"dwc2_hcd_init\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"%s: no host registers to restore\0A\00", align 1
@__func__.dwc2_restore_host_registers = private unnamed_addr constant [28 x i8] c"dwc2_restore_host_registers\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"%s: failed to backup global registers\0A\00", align 1
@__func__.dwc2_host_enter_hibernation = private unnamed_addr constant [28 x i8] c"dwc2_host_enter_hibernation\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"Suspend wasn't generated\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.25 = private unnamed_addr constant [33 x i8] c"%s: failed to restore registers\0A\00", align 1
@__func__.dwc2_host_exit_hibernation = private unnamed_addr constant [27 x i8] c"dwc2_host_exit_hibernation\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"%s: failed to restore host registers\0A\00", align 1
@__func__.dwc2_host_enter_partial_power_down = private unnamed_addr constant [35 x i8] c"dwc2_host_enter_partial_power_down\00", align 1
@__func__.dwc2_host_exit_partial_power_down = private unnamed_addr constant [34 x i8] c"dwc2_host_exit_partial_power_down\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.27 = private unnamed_addr constant [33 x i8] c"External DMA Mode not supported\0A\00", align 1
@.str.28 = private unnamed_addr constant [56 x i8] c"Failed to allocate memory to handle non-aligned buffer\0A\00", align 1
@dwc2_assign_and_init_hc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"can't map align_buf\0A\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.31 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__func__.dwc2_hc_start_transfer = private unnamed_addr constant [23 x i8] c"dwc2_hc_start_transfer\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.33 = private unnamed_addr constant [23 x i8] c"drivers/usb/dwc2/hcd.h\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"Set speed to default high-speed\0A\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"dwc2_hsotg\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"DWC OTG Controller\00", align 1
@.str.37 = private unnamed_addr constant [49 x i8] c"Hardware does not support descriptor DMA mode -\0A\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"falling back to buffer DMA mode.\0A\00", align 1
@.str.39 = private unnamed_addr constant [38 x i8] c"Unable to clear enable on channel %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"invalid fifo sizes\0A\00", align 1
@.str.42 = private unnamed_addr constant [32 x i8] c"exit partial_power_down failed\0A\00", align 1
@.str.43 = private unnamed_addr constant [47 x i8] c"%s: unaligned transfer with no transfer_buffer\00", align 1
@__func__._dwc2_hcd_urb_enqueue = private unnamed_addr constant [22 x i8] c"_dwc2_hcd_urb_enqueue\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"Not connected\0A\00", align 1
@.str.45 = private unnamed_addr constant [60 x i8] c"DWC OTG HCD URB Enqueue failed adding QTD. Error status %d\0A\00", align 1
@dwc2_map_urb_for_dma.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.47 = private unnamed_addr constant [46 x i8] c"## timeout in dwc2_hcd_endpoint_disable() ##\0A\00", align 1
@.str.48 = private unnamed_addr constant [38 x i8] c"ClearHubFeature request %1xh unknown\0A\00", align 1
@.str.49 = private unnamed_addr constant [54 x i8] c"ClearPortFeature request %1xh unknown or unsupported\0A\00", align 1
@.str.50 = private unnamed_addr constant [29 x i8] c"Overcurrent change detected\0A\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"Enabling descriptor DMA mode\0A\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"exit hibernation failed\0A\00", align 1
@.str.53 = private unnamed_addr constant [44 x i8] c"SetPortFeature %1xh unknown or unsupported\0A\00", align 1
@.str.54 = private unnamed_addr constant [33 x i8] c"enter partial_power_down failed\0A\00", align 1
@.str.55 = private unnamed_addr constant [26 x i8] c"enter hibernation failed\0A\00", align 1
@.str.56 = private unnamed_addr constant [25 x i8] c"Set speed to high-speed\0A\00", align 1
@.str.57 = private unnamed_addr constant [25 x i8] c"Set speed to full-speed\0A\00", align 1
@.str.58 = private unnamed_addr constant [48 x i8] c"Do port resume before switching to device mode\0A\00", align 1
@.str.59 = private unnamed_addr constant [38 x i8] c"Waiting for Peripheral Mode, Mode=%s\0A\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"Peripheral\00", align 1
@.str.62 = private unnamed_addr constant [39 x i8] c"Connection id status change timed out\0A\00", align 1
@.str.63 = private unnamed_addr constant [32 x i8] c"Waiting for Host Mode, Mode=%s\0A\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"PHY reset failed\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_calc_frame_interval(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %7 = load i8, ptr %6, align 8, !range !10
  %8 = icmp eq i8 %7, 0
  %9 = tail call i32 @llvm.bswap.i32(i32 %5) #13
  %10 = select i1 %8, i32 %5, i32 %9
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr i8, ptr %11, i32 1088
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %14 = load i8, ptr %6, align 8, !range !10
  %15 = and i32 %10, 64
  %16 = icmp eq i32 %15, 0
  %17 = xor i1 %16, true
  %18 = and i32 %10, 8
  %19 = icmp eq i32 %18, 0
  br i1 %16, label %26, label %20

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 3
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 786432
  %24 = icmp eq i32 %23, 786432
  %25 = select i1 %24, i32 48, i32 60
  br label %26

26:                                               ; preds = %20, %1
  %27 = phi i32 [ 60, %1 ], [ %25, %20 ]
  %28 = and i32 %10, 32856
  %29 = icmp eq i32 %28, 8
  %30 = select i1 %29, i32 30, i32 %27
  %31 = icmp eq i32 %28, 0
  %32 = select i1 %31, i32 60, i32 %30
  %33 = icmp eq i32 %28, 32776
  %34 = select i1 %33, i32 48, i32 %32
  %35 = select i1 %17, i1 %19, i1 false
  br i1 %35, label %36, label %42

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 3
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 786432
  %40 = icmp eq i32 %39, 524288
  %41 = select i1 %40, i32 48, i32 %34
  br label %42

42:                                               ; preds = %36, %26
  %43 = phi i32 [ %34, %26 ], [ %41, %36 ]
  br i1 %16, label %50, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 3
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 786432
  %48 = icmp eq i32 %47, 262144
  %49 = select i1 %48, i32 48, i32 %43
  br label %50

50:                                               ; preds = %44, %42
  %51 = phi i32 [ %43, %42 ], [ %49, %44 ]
  %52 = icmp eq i8 %14, 0
  %53 = shl i32 %13, 8
  %54 = select i1 %52, i32 %13, i32 %53
  %55 = and i32 %54, 393216
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, i32 125, i32 1000
  %58 = mul nuw nsw i32 %51, %57
  %59 = add nsw i32 %58, -1
  ret i32 %59
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_read_packet(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq i16 %2, 0
  br i1 %4, label %24, label %5

5:                                                ; preds = %3
  %6 = zext i16 %2 to i32
  %7 = add nuw nsw i32 %6, 3
  %8 = lshr i32 %7, 2
  %9 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  br label %11

11:                                               ; preds = %11, %5
  %12 = phi i32 [ 0, %5 ], [ %21, %11 ]
  %13 = phi ptr [ %1, %5 ], [ %22, %11 ]
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr i8, ptr %14, i32 4096
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %17 = load i8, ptr %10, align 8, !range !10
  %18 = icmp eq i8 %17, 0
  %19 = tail call i32 @llvm.bswap.i32(i32 %16) #13
  %20 = select i1 %18, i32 %16, i32 %19
  store i32 %20, ptr %13, align 4
  %21 = add nuw nsw i32 %12, 1
  %22 = getelementptr i32, ptr %13, i32 1
  %23 = icmp eq i32 %21, %8
  br i1 %23, label %24, label %11

24:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_hc_halt(ptr noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 41
  %5 = load i8, ptr %4, align 8, !range !10
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 42
  %9 = load i8, ptr %8, align 1, !range !10
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 24
  %15 = icmp eq i32 %14, 8
  br i1 %15, label %16, label %27

16:                                               ; preds = %11, %7
  %17 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 14
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %22 = load i24, ptr %21, align 1
  %23 = lshr i24 %22, 16
  %24 = trunc i24 %23 to i2
  switch i2 %24, label %27 [
    i2 1, label %25
    i2 -1, label %25
  ]

25:                                               ; preds = %20, %20
  %26 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dwc2_hc_halt) #14
  br label %155

27:                                               ; preds = %20, %16, %11
  switch i32 %2, label %70 [
    i32 0, label %28
    i32 13, label %30
    i32 11, label %30
  ]

28:                                               ; preds = %27
  %29 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.1, i32 noundef 0) #14
  br label %70

30:                                               ; preds = %27, %27
  %31 = load i8, ptr %1, align 4
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 5
  %34 = add nuw nsw i32 %33, 1292
  %35 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %36 = load i8, ptr %35, align 8, !range !10
  %37 = icmp eq i8 %36, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  %38 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 %34
  br i1 %37, label %42, label %41

41:                                               ; preds = %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 33554432) #13, !srcloc !11
  br label %43

42:                                               ; preds = %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 2) #13, !srcloc !11
  br label %43

43:                                               ; preds = %42, %41
  %44 = load i8, ptr %1, align 4
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 %45, 5
  %47 = add nuw nsw i32 %46, 1288
  %48 = load i8, ptr %35, align 8, !range !10
  %49 = icmp eq i8 %48, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  %50 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 %47
  br i1 %49, label %54, label %53

53:                                               ; preds = %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 -33554433) #13, !srcloc !11
  br label %55

54:                                               ; preds = %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 -3) #13, !srcloc !11
  br label %55

55:                                               ; preds = %54, %53
  %56 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 22
  store i32 %2, ptr %56, align 4
  %57 = load i8, ptr %1, align 4
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 %58, 5
  %60 = add nuw nsw i32 %59, 1280
  %61 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr i8, ptr %62, i32 %60
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %65 = load i8, ptr %35, align 8, !range !10
  %66 = icmp eq i8 %65, 0
  %67 = shl i32 %64, 24
  %68 = select i1 %66, i32 %64, i32 %67
  %69 = icmp sgt i32 %68, -1
  br i1 %69, label %155, label %70

70:                                               ; preds = %55, %28, %27
  %71 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 13
  %72 = load i8, ptr %71, align 2
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %155

74:                                               ; preds = %70
  %75 = load i8, ptr %1, align 4
  %76 = zext i8 %75 to i32
  %77 = shl nuw nsw i32 %76, 5
  %78 = add nuw nsw i32 %77, 1280
  %79 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr i8, ptr %80, i32 %78
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %83 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %84 = load i8, ptr %83, align 8, !range !10
  %85 = icmp eq i8 %84, 0
  %86 = tail call i32 @llvm.bswap.i32(i32 %82) #13
  %87 = select i1 %85, i32 %82, i32 %86
  %88 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 32
  %89 = load i8, ptr %88, align 1, !range !10
  %90 = icmp eq i8 %89, 0
  %91 = or i32 %87, -2147483648
  %92 = select i1 %90, i32 %91, i32 %87
  %93 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 31
  %94 = load i8, ptr %93, align 2, !range !10
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %131

96:                                               ; preds = %74
  %97 = or i32 %92, -1073741824
  %98 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %99 = load i24, ptr %98, align 1
  %100 = lshr i24 %99, 16
  %101 = trunc i24 %100 to i2
  switch i2 %101, label %114 [
    i2 0, label %102
    i2 -2, label %102
  ]

102:                                              ; preds = %96, %96
  %103 = load ptr, ptr %79, align 4
  %104 = getelementptr i8, ptr %103, i32 44
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %106 = load i8, ptr %83, align 8, !range !10
  %107 = icmp eq i8 %106, 0
  %108 = shl i32 %105, 8
  %109 = select i1 %107, i32 %105, i32 %108
  %110 = and i32 %109, 16711680
  %111 = icmp eq i32 %110, 0
  %112 = and i32 %97, 2147483647
  %113 = select i1 %111, i32 %112, i32 %97
  br label %133

114:                                              ; preds = %96
  %115 = load ptr, ptr %79, align 4
  %116 = getelementptr i8, ptr %115, i32 1040
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %118 = load i8, ptr %83, align 8, !range !10
  %119 = icmp eq i8 %118, 0
  %120 = shl i32 %117, 8
  %121 = select i1 %119, i32 %117, i32 %120
  %122 = and i32 %121, 16711680
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %114
  %125 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 24
  %126 = load i8, ptr %125, align 4
  %127 = and i8 %126, 1
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %124, %114
  %130 = and i32 %97, 2147483647
  br label %133

131:                                              ; preds = %74
  %132 = or i32 %92, 1073741824
  br label %133

133:                                              ; preds = %131, %129, %124, %102
  %134 = phi i8 [ %84, %131 ], [ %118, %129 ], [ %118, %124 ], [ %106, %102 ]
  %135 = phi i32 [ %132, %131 ], [ %130, %129 ], [ %97, %124 ], [ %113, %102 ]
  %136 = load i8, ptr %1, align 4
  %137 = zext i8 %136 to i32
  %138 = shl nuw nsw i32 %137, 5
  %139 = add nuw nsw i32 %138, 1280
  %140 = icmp eq i8 %134, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %140, label %145, label %141

141:                                              ; preds = %133
  %142 = tail call i32 @llvm.bswap.i32(i32 %135) #13
  %143 = load ptr, ptr %79, align 4
  %144 = getelementptr i8, ptr %143, i32 %139
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %142) #13, !srcloc !11
  br label %148

145:                                              ; preds = %133
  %146 = load ptr, ptr %79, align 4
  %147 = getelementptr i8, ptr %146, i32 %139
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 %135) #13, !srcloc !11
  br label %148

148:                                              ; preds = %145, %141
  %149 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 22
  store i32 %2, ptr %149, align 4
  %150 = icmp sgt i32 %135, -1
  br i1 %150, label %153, label %151

151:                                              ; preds = %148
  store i8 1, ptr %71, align 2
  %152 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 12
  store i8 0, ptr %152, align 1
  br label %155

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 12
  store i8 1, ptr %154, align 1
  br label %155

155:                                              ; preds = %153, %151, %70, %55, %25
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_hc_cleanup(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 9
  store i8 0, ptr %3, align 2
  %4 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 28
  %5 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 28, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store volatile ptr %4, ptr %4, align 4
  store ptr %4, ptr %5, align 4
  %9 = load i8, ptr %1, align 4
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 5
  %12 = add nuw nsw i32 %11, 1292
  %13 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  %14 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #13
  %17 = load i8, ptr %1, align 4
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 5
  %20 = add nuw nsw i32 %19, 1288
  %21 = load i8, ptr %13, align 8, !range !10
  %22 = icmp eq i8 %21, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  %23 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 %20
  br i1 %22, label %27, label %26

26:                                               ; preds = %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 -12648448) #13, !srcloc !11
  br label %28

27:                                               ; preds = %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 16383) #13, !srcloc !11
  br label %28

28:                                               ; preds = %27, %26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_hc_start_transfer_ddma(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 10
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i32 0, i32 -2147483648
  %7 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %8 = load i24, ptr %7, align 1
  %9 = and i24 %8, 196608
  %10 = icmp eq i24 %9, 65536
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 2
  %13 = load i16, ptr %12, align 4
  br label %44

14:                                               ; preds = %2
  %15 = and i24 %8, 61440
  %16 = icmp eq i24 %15, 12288
  br i1 %16, label %17, label %40

17:                                               ; preds = %14
  %18 = and i24 %8, 2048
  %19 = icmp eq i24 %18, 0
  %20 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 2
  %21 = load i16, ptr %20, align 4
  br i1 %19, label %33, label %22

22:                                               ; preds = %17
  %23 = lshr i16 %21, 13
  %24 = trunc i16 %23 to i2
  switch i2 %24, label %30 [
    i2 1, label %25
    i2 -2, label %27
  ]

25:                                               ; preds = %22
  %26 = and i16 %21, -6145
  store i16 %26, ptr %20, align 4
  br label %44

27:                                               ; preds = %22
  %28 = and i16 %21, -6145
  %29 = or i16 %28, 4096
  store i16 %29, ptr %20, align 4
  br label %44

30:                                               ; preds = %22
  %31 = and i16 %21, -6145
  %32 = or i16 %31, 2048
  store i16 %32, ptr %20, align 4
  br label %44

33:                                               ; preds = %17
  %34 = and i16 %21, 24576
  %35 = icmp eq i16 %34, 8192
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = and i16 %21, -6145
  store i16 %37, ptr %20, align 4
  br label %44

38:                                               ; preds = %33
  %39 = or i16 %21, 6144
  store i16 %39, ptr %20, align 4
  br label %44

40:                                               ; preds = %14
  %41 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 2
  %42 = load i16, ptr %41, align 4
  %43 = and i16 %42, -6145
  store i16 %43, ptr %41, align 4
  br label %44

44:                                               ; preds = %40, %38, %36, %30, %27, %25, %11
  %45 = phi i16 [ %13, %11 ], [ %43, %40 ], [ %39, %38 ], [ %37, %36 ], [ %32, %30 ], [ %29, %27 ], [ %26, %25 ]
  %46 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 2
  %47 = lshr i16 %45, 11
  %48 = and i16 %47, 3
  %49 = zext i16 %48 to i32
  %50 = shl nuw nsw i32 %49, 29
  %51 = or i32 %50, %6
  %52 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 21
  %53 = load i16, ptr %52, align 2
  %54 = zext i16 %53 to i32
  %55 = shl nuw nsw i32 %54, 8
  %56 = add nuw nsw i32 %55, 65280
  %57 = and i32 %56, 65280
  %58 = or i32 %51, %57
  %59 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 20
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = or i32 %58, %61
  %63 = load i8, ptr %1, align 4
  %64 = zext i8 %63 to i32
  %65 = shl nuw nsw i32 %64, 5
  %66 = add nuw nsw i32 %65, 1296
  %67 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %68 = load i8, ptr %67, align 8, !range !10
  %69 = icmp eq i8 %68, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %69, label %75, label %70

70:                                               ; preds = %44
  %71 = tail call i32 @llvm.bswap.i32(i32 %62) #13
  %72 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr i8, ptr %73, i32 %66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %71) #13, !srcloc !11
  br label %79

75:                                               ; preds = %44
  %76 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr i8, ptr %77, i32 %66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %62) #13, !srcloc !11
  br label %79

79:                                               ; preds = %75, %70
  %80 = load ptr, ptr %0, align 8
  %81 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 26
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 27
  %84 = load i32, ptr %83, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %80, i32 noundef %82, i32 noundef %84, i32 noundef 1) #13
  %85 = load i32, ptr %81, align 4
  %86 = load i8, ptr %1, align 4
  %87 = zext i8 %86 to i32
  %88 = shl nuw nsw i32 %87, 5
  %89 = add nuw nsw i32 %88, 1300
  %90 = load i8, ptr %67, align 8, !range !10
  %91 = icmp eq i8 %90, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %91, label %97, label %92

92:                                               ; preds = %79
  %93 = tail call i32 @llvm.bswap.i32(i32 %85) #13
  %94 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr i8, ptr %95, i32 %89
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %93) #13, !srcloc !11
  br label %101

97:                                               ; preds = %79
  %98 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr i8, ptr %99, i32 %89
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %85) #13, !srcloc !11
  br label %101

101:                                              ; preds = %97, %92
  %102 = load i8, ptr %1, align 4
  %103 = zext i8 %102 to i32
  %104 = shl nuw nsw i32 %103, 5
  %105 = add nuw nsw i32 %104, 1280
  %106 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr i8, ptr %107, i32 %105
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %110 = load i8, ptr %67, align 8, !range !10
  %111 = icmp eq i8 %110, 0
  %112 = tail call i32 @llvm.bswap.i32(i32 %109) #13
  %113 = select i1 %111, i32 %109, i32 %112
  %114 = and i32 %113, -3145729
  %115 = load i16, ptr %46, align 4
  %116 = lshr i16 %115, 13
  %117 = zext i16 %116 to i32
  %118 = shl nuw nsw i32 %117, 20
  %119 = and i32 %118, 3145728
  %120 = or i32 %119, %114
  %121 = and i32 %113, 1073741824
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %101
  %124 = load ptr, ptr %0, align 8
  %125 = load i8, ptr %1, align 4
  %126 = zext i8 %125 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %124, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dwc2_hc_start_transfer_ddma, i32 noundef %126, i32 noundef %120) #14
  %127 = load i8, ptr %67, align 8, !range !10
  br label %128

128:                                              ; preds = %123, %101
  %129 = phi i8 [ %127, %123 ], [ %110, %101 ]
  %130 = and i32 %120, 1073741823
  %131 = or i32 %130, -2147483648
  %132 = load i8, ptr %1, align 4
  %133 = zext i8 %132 to i32
  %134 = shl nuw nsw i32 %133, 5
  %135 = add nuw nsw i32 %134, 1280
  %136 = icmp eq i8 %129, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %136, label %141, label %137

137:                                              ; preds = %128
  %138 = tail call i32 @llvm.bswap.i32(i32 %131) #13
  %139 = load ptr, ptr %106, align 4
  %140 = getelementptr i8, ptr %139, i32 %135
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %140, i32 %138) #13, !srcloc !11
  br label %144

141:                                              ; preds = %128
  %142 = load ptr, ptr %106, align 4
  %143 = getelementptr i8, ptr %142, i32 %135
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %131) #13, !srcloc !11
  br label %144

144:                                              ; preds = %141, %137
  %145 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 9
  store i8 1, ptr %145, align 2
  %146 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 19
  %147 = load i8, ptr %146, align 4
  %148 = add i8 %147, 1
  store i8 %148, ptr %146, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_hcd_start(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 5
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 1088
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %10 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %11 = load i8, ptr %10, align 8, !range !10
  %12 = icmp eq i8 %11, 0
  %13 = tail call i32 @llvm.bswap.i32(i32 %9) #13
  %14 = select i1 %12, i32 %9, i32 %13
  %15 = and i32 %14, -303
  %16 = or i32 %15, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %12, label %21, label %17

17:                                               ; preds = %5
  %18 = tail call i32 @llvm.bswap.i32(i32 %16) #13
  %19 = load ptr, ptr %6, align 4
  %20 = getelementptr i8, ptr %19, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #13, !srcloc !11
  br label %24

21:                                               ; preds = %5
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr i8, ptr %22, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %16) #13, !srcloc !11
  br label %24

24:                                               ; preds = %21, %17, %1
  %25 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 25
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 57
  %28 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %26, ptr noundef %27, i32 noundef 5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_hcd_connect(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 28
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 8
  tail call void @usb_hcd_resume_root_hub(ptr noundef %7) #13
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 35
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %10, 3
  store i32 %11, ptr %9, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_resume_root_hub(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_hcd_disconnect(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 35
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, -4
  %6 = or i32 %5, 1
  store i32 %6, ptr %3, align 4
  %7 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %11 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %12 = load i8, ptr %11, align 8, !range !10
  %13 = icmp eq i8 %12, 0
  %14 = tail call i32 @llvm.bswap.i32(i32 %10) #13
  %15 = select i1 %13, i32 %10, i32 %14
  %16 = and i32 %15, -100663329
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %13, label %21, label %17

17:                                               ; preds = %2
  %18 = tail call i32 @llvm.bswap.i32(i32 %16) #13
  %19 = load ptr, ptr %7, align 4
  %20 = getelementptr i8, ptr %19, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #13, !srcloc !11
  br label %24

21:                                               ; preds = %2
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr i8, ptr %22, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %16) #13, !srcloc !11
  br label %24

24:                                               ; preds = %21, %17
  %25 = load i8, ptr %11, align 8, !range !10
  %26 = icmp eq i8 %25, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  %27 = load ptr, ptr %7, align 4
  %28 = getelementptr i8, ptr %27, i32 20
  br i1 %26, label %30, label %29

29:                                               ; preds = %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 536870918) #13, !srcloc !11
  br label %31

30:                                               ; preds = %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 100663328) #13, !srcloc !11
  br label %31

31:                                               ; preds = %30, %29
  %32 = load ptr, ptr %7, align 4
  %33 = getelementptr i8, ptr %32, i32 20
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %35 = load i8, ptr %11, align 8, !range !10
  %36 = icmp eq i8 %35, 0
  %37 = lshr i32 %34, 24
  %38 = select i1 %36, i32 %34, i32 %37
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 4
  %43 = load i32, ptr %42, align 8
  %44 = icmp eq i32 %43, 10
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  %46 = load ptr, ptr %7, align 4
  %47 = getelementptr i8, ptr %46, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 0) #13
  br label %48

48:                                               ; preds = %45, %41
  %49 = load ptr, ptr %7, align 4
  %50 = getelementptr i8, ptr %49, i32 24
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %52 = load i8, ptr %11, align 8, !range !10
  %53 = icmp eq i8 %52, 0
  %54 = tail call i32 @llvm.bswap.i32(i32 %51) #13
  %55 = select i1 %53, i32 %51, i32 %54
  %56 = and i32 %55, -654311465
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %53, label %61, label %57

57:                                               ; preds = %48
  %58 = tail call i32 @llvm.bswap.i32(i32 %56) #13
  %59 = load ptr, ptr %7, align 4
  %60 = getelementptr i8, ptr %59, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #13, !srcloc !11
  br label %64

61:                                               ; preds = %48
  %62 = load ptr, ptr %7, align 4
  %63 = getelementptr i8, ptr %62, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %56) #13, !srcloc !11
  br label %64

64:                                               ; preds = %61, %57, %31
  %65 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 36
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, %65
  br i1 %67, label %85, label %70

68:                                               ; preds = %76, %70
  %69 = icmp eq ptr %72, %65
  br i1 %69, label %85, label %70

70:                                               ; preds = %68, %64
  %71 = phi ptr [ %72, %68 ], [ %66, %64 ]
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr i8, ptr %71, i32 -12
  %74 = load ptr, ptr %73, align 8
  %75 = icmp eq ptr %74, %73
  br i1 %75, label %68, label %76

76:                                               ; preds = %76, %70
  %77 = phi ptr [ %79, %76 ], [ %74, %70 ]
  %78 = getelementptr i8, ptr %77, i32 -36
  %79 = load ptr, ptr %77, align 4
  tail call void @dwc2_host_complete(ptr noundef %0, ptr noundef %78, i32 noundef -104) #13
  %80 = getelementptr i8, ptr %77, i32 4
  %81 = load ptr, ptr %80, align 4
  %82 = load ptr, ptr %77, align 4
  %83 = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  store ptr %81, ptr %83, align 4
  store volatile ptr %82, ptr %81, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %77, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %80, align 4
  tail call void @kfree(ptr noundef %78) #13
  %84 = icmp eq ptr %79, %73
  br i1 %84, label %68, label %76

85:                                               ; preds = %68, %64
  %86 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 37
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, %86
  br i1 %88, label %106, label %91

89:                                               ; preds = %97, %91
  %90 = icmp eq ptr %93, %86
  br i1 %90, label %106, label %91

91:                                               ; preds = %89, %85
  %92 = phi ptr [ %93, %89 ], [ %87, %85 ]
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr i8, ptr %92, i32 -12
  %95 = load ptr, ptr %94, align 8
  %96 = icmp eq ptr %95, %94
  br i1 %96, label %89, label %97

97:                                               ; preds = %97, %91
  %98 = phi ptr [ %100, %97 ], [ %95, %91 ]
  %99 = getelementptr i8, ptr %98, i32 -36
  %100 = load ptr, ptr %98, align 4
  tail call void @dwc2_host_complete(ptr noundef %0, ptr noundef %99, i32 noundef -104) #13
  %101 = getelementptr i8, ptr %98, i32 4
  %102 = load ptr, ptr %101, align 4
  %103 = load ptr, ptr %98, align 4
  %104 = getelementptr inbounds %struct.list_head, ptr %103, i32 0, i32 1
  store ptr %102, ptr %104, align 4
  store volatile ptr %103, ptr %102, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %98, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %101, align 4
  tail call void @kfree(ptr noundef %99) #13
  %105 = icmp eq ptr %100, %94
  br i1 %105, label %89, label %97

106:                                              ; preds = %89, %85
  %107 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 38
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, %107
  br i1 %109, label %127, label %112

110:                                              ; preds = %118, %112
  %111 = icmp eq ptr %114, %107
  br i1 %111, label %127, label %112

112:                                              ; preds = %110, %106
  %113 = phi ptr [ %114, %110 ], [ %108, %106 ]
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr i8, ptr %113, i32 -12
  %116 = load ptr, ptr %115, align 8
  %117 = icmp eq ptr %116, %115
  br i1 %117, label %110, label %118

118:                                              ; preds = %118, %112
  %119 = phi ptr [ %121, %118 ], [ %116, %112 ]
  %120 = getelementptr i8, ptr %119, i32 -36
  %121 = load ptr, ptr %119, align 4
  tail call void @dwc2_host_complete(ptr noundef %0, ptr noundef %120, i32 noundef -104) #13
  %122 = getelementptr i8, ptr %119, i32 4
  %123 = load ptr, ptr %122, align 4
  %124 = load ptr, ptr %119, align 4
  %125 = getelementptr inbounds %struct.list_head, ptr %124, i32 0, i32 1
  store ptr %123, ptr %125, align 4
  store volatile ptr %124, ptr %123, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %119, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %122, align 4
  tail call void @kfree(ptr noundef %120) #13
  %126 = icmp eq ptr %121, %115
  br i1 %126, label %110, label %118

127:                                              ; preds = %110, %106
  %128 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 40
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, %128
  br i1 %130, label %148, label %133

131:                                              ; preds = %139, %133
  %132 = icmp eq ptr %135, %128
  br i1 %132, label %148, label %133

133:                                              ; preds = %131, %127
  %134 = phi ptr [ %135, %131 ], [ %129, %127 ]
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr i8, ptr %134, i32 -12
  %137 = load ptr, ptr %136, align 8
  %138 = icmp eq ptr %137, %136
  br i1 %138, label %131, label %139

139:                                              ; preds = %139, %133
  %140 = phi ptr [ %142, %139 ], [ %137, %133 ]
  %141 = getelementptr i8, ptr %140, i32 -36
  %142 = load ptr, ptr %140, align 4
  tail call void @dwc2_host_complete(ptr noundef %0, ptr noundef %141, i32 noundef -104) #13
  %143 = getelementptr i8, ptr %140, i32 4
  %144 = load ptr, ptr %143, align 4
  %145 = load ptr, ptr %140, align 4
  %146 = getelementptr inbounds %struct.list_head, ptr %145, i32 0, i32 1
  store ptr %144, ptr %146, align 4
  store volatile ptr %145, ptr %144, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %140, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %143, align 4
  tail call void @kfree(ptr noundef %141) #13
  %147 = icmp eq ptr %142, %136
  br i1 %147, label %131, label %139

148:                                              ; preds = %131, %127
  %149 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 41
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, %149
  br i1 %151, label %169, label %154

152:                                              ; preds = %160, %154
  %153 = icmp eq ptr %156, %149
  br i1 %153, label %169, label %154

154:                                              ; preds = %152, %148
  %155 = phi ptr [ %156, %152 ], [ %150, %148 ]
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr i8, ptr %155, i32 -12
  %158 = load ptr, ptr %157, align 8
  %159 = icmp eq ptr %158, %157
  br i1 %159, label %152, label %160

160:                                              ; preds = %160, %154
  %161 = phi ptr [ %163, %160 ], [ %158, %154 ]
  %162 = getelementptr i8, ptr %161, i32 -36
  %163 = load ptr, ptr %161, align 4
  tail call void @dwc2_host_complete(ptr noundef %0, ptr noundef %162, i32 noundef -104) #13
  %164 = getelementptr i8, ptr %161, i32 4
  %165 = load ptr, ptr %164, align 4
  %166 = load ptr, ptr %161, align 4
  %167 = getelementptr inbounds %struct.list_head, ptr %166, i32 0, i32 1
  store ptr %165, ptr %167, align 4
  store volatile ptr %166, ptr %165, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %161, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %164, align 4
  tail call void @kfree(ptr noundef %162) #13
  %168 = icmp eq ptr %163, %157
  br i1 %168, label %152, label %160

169:                                              ; preds = %152, %148
  %170 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 42
  %171 = load ptr, ptr %170, align 4
  %172 = icmp eq ptr %171, %170
  br i1 %172, label %190, label %175

173:                                              ; preds = %181, %175
  %174 = icmp eq ptr %177, %170
  br i1 %174, label %190, label %175

175:                                              ; preds = %173, %169
  %176 = phi ptr [ %177, %173 ], [ %171, %169 ]
  %177 = load ptr, ptr %176, align 4
  %178 = getelementptr i8, ptr %176, i32 -12
  %179 = load ptr, ptr %178, align 8
  %180 = icmp eq ptr %179, %178
  br i1 %180, label %173, label %181

181:                                              ; preds = %181, %175
  %182 = phi ptr [ %184, %181 ], [ %179, %175 ]
  %183 = getelementptr i8, ptr %182, i32 -36
  %184 = load ptr, ptr %182, align 4
  tail call void @dwc2_host_complete(ptr noundef %0, ptr noundef %183, i32 noundef -104) #13
  %185 = getelementptr i8, ptr %182, i32 4
  %186 = load ptr, ptr %185, align 4
  %187 = load ptr, ptr %182, align 4
  %188 = getelementptr inbounds %struct.list_head, ptr %187, i32 0, i32 1
  store ptr %186, ptr %188, align 4
  store volatile ptr %187, ptr %186, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %182, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %185, align 4
  tail call void @kfree(ptr noundef %183) #13
  %189 = icmp eq ptr %184, %178
  br i1 %189, label %173, label %181

190:                                              ; preds = %173, %169
  %191 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 43
  %192 = load ptr, ptr %191, align 4
  %193 = icmp eq ptr %192, %191
  br i1 %193, label %211, label %196

194:                                              ; preds = %202, %196
  %195 = icmp eq ptr %198, %191
  br i1 %195, label %211, label %196

196:                                              ; preds = %194, %190
  %197 = phi ptr [ %198, %194 ], [ %192, %190 ]
  %198 = load ptr, ptr %197, align 4
  %199 = getelementptr i8, ptr %197, i32 -12
  %200 = load ptr, ptr %199, align 8
  %201 = icmp eq ptr %200, %199
  br i1 %201, label %194, label %202

202:                                              ; preds = %202, %196
  %203 = phi ptr [ %205, %202 ], [ %200, %196 ]
  %204 = getelementptr i8, ptr %203, i32 -36
  %205 = load ptr, ptr %203, align 4
  tail call void @dwc2_host_complete(ptr noundef %0, ptr noundef %204, i32 noundef -104) #13
  %206 = getelementptr i8, ptr %203, i32 4
  %207 = load ptr, ptr %206, align 4
  %208 = load ptr, ptr %203, align 4
  %209 = getelementptr inbounds %struct.list_head, ptr %208, i32 0, i32 1
  store ptr %207, ptr %209, align 4
  store volatile ptr %208, ptr %207, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %203, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %206, align 4
  tail call void @kfree(ptr noundef %204) #13
  %210 = icmp eq ptr %205, %199
  br i1 %210, label %194, label %202

211:                                              ; preds = %194, %190
  %212 = load ptr, ptr %7, align 4
  %213 = getelementptr i8, ptr %212, i32 20
  %214 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %213) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %215 = load i8, ptr %11, align 8, !range !10
  %216 = icmp eq i8 %215, 0
  %217 = lshr i32 %214, 24
  %218 = select i1 %216, i32 %214, i32 %217
  %219 = and i32 %218, 1
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %334, label %221

221:                                              ; preds = %211
  %222 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 37
  %223 = load i8, ptr %222, align 8
  %224 = zext i8 %223 to i32
  %225 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 31
  %226 = load i8, ptr %225, align 2, !range !10
  %227 = icmp eq i8 %226, 0
  %228 = icmp ne i8 %223, 0
  %229 = select i1 %227, i1 %228, i1 false
  br i1 %229, label %230, label %261

230:                                              ; preds = %258, %221
  %231 = phi i32 [ %259, %258 ], [ 0, %221 ]
  %232 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 54, i32 %231
  %233 = load ptr, ptr %232, align 4
  %234 = getelementptr inbounds %struct.dwc2_host_chan, ptr %233, i32 0, i32 25
  %235 = load volatile ptr, ptr %234, align 4
  %236 = icmp eq ptr %235, %234
  br i1 %236, label %237, label %258

237:                                              ; preds = %230
  %238 = shl i32 %231, 5
  %239 = add nuw nsw i32 %238, 1280
  %240 = load ptr, ptr %7, align 4
  %241 = getelementptr i8, ptr %240, i32 %239
  %242 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %241) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %243 = load i8, ptr %11, align 8, !range !10
  %244 = icmp eq i8 %243, 0
  %245 = tail call i32 @llvm.bswap.i32(i32 %242) #13
  %246 = select i1 %244, i32 %242, i32 %245
  %247 = icmp sgt i32 %246, -1
  br i1 %247, label %258, label %248

248:                                              ; preds = %237
  %249 = and i32 %246, 1073709055
  %250 = or i32 %249, 1073741824
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %244, label %255, label %251

251:                                              ; preds = %248
  %252 = tail call i32 @llvm.bswap.i32(i32 %250) #13
  %253 = load ptr, ptr %7, align 4
  %254 = getelementptr i8, ptr %253, i32 %239
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %254, i32 %252) #13, !srcloc !11
  br label %258

255:                                              ; preds = %248
  %256 = load ptr, ptr %7, align 4
  %257 = getelementptr i8, ptr %256, i32 %239
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %257, i32 %250) #13, !srcloc !11
  br label %258

258:                                              ; preds = %255, %251, %237, %230
  %259 = add nuw nsw i32 %231, 1
  %260 = icmp eq i32 %259, %224
  br i1 %260, label %261, label %230

261:                                              ; preds = %258, %221
  %262 = icmp eq i8 %223, 0
  br i1 %262, label %323, label %263

263:                                              ; preds = %261
  %264 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 50
  %265 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 50, i32 1
  br label %266

266:                                              ; preds = %320, %263
  %267 = phi i32 [ 0, %263 ], [ %321, %320 ]
  %268 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 54, i32 %267
  %269 = load ptr, ptr %268, align 4
  %270 = getelementptr inbounds %struct.dwc2_host_chan, ptr %269, i32 0, i32 25
  %271 = load volatile ptr, ptr %270, align 4
  %272 = icmp eq ptr %271, %270
  br i1 %272, label %273, label %320

273:                                              ; preds = %266
  %274 = shl i32 %267, 5
  %275 = add nuw nsw i32 %274, 1280
  %276 = load ptr, ptr %7, align 4
  %277 = getelementptr i8, ptr %276, i32 %275
  %278 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %277) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %279 = load i8, ptr %11, align 8, !range !10
  %280 = icmp eq i8 %279, 0
  %281 = tail call i32 @llvm.bswap.i32(i32 %278) #13
  %282 = select i1 %280, i32 %278, i32 %281
  %283 = icmp sgt i32 %282, -1
  br i1 %283, label %293, label %284

284:                                              ; preds = %273
  %285 = or i32 %282, 1073741824
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %280, label %290, label %286

286:                                              ; preds = %284
  %287 = tail call i32 @llvm.bswap.i32(i32 %285) #13
  %288 = load ptr, ptr %7, align 4
  %289 = getelementptr i8, ptr %288, i32 %275
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %289, i32 %287) #13, !srcloc !11
  br label %293

290:                                              ; preds = %284
  %291 = load ptr, ptr %7, align 4
  %292 = getelementptr i8, ptr %291, i32 %275
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %292, i32 %285) #13, !srcloc !11
  br label %293

293:                                              ; preds = %290, %286, %273
  %294 = getelementptr inbounds %struct.dwc2_host_chan, ptr %269, i32 0, i32 9
  store i8 0, ptr %294, align 2
  %295 = getelementptr inbounds %struct.dwc2_host_chan, ptr %269, i32 0, i32 28
  %296 = getelementptr inbounds %struct.dwc2_host_chan, ptr %269, i32 0, i32 28, i32 1
  %297 = load ptr, ptr %296, align 4
  %298 = load ptr, ptr %295, align 4
  %299 = getelementptr inbounds %struct.list_head, ptr %298, i32 0, i32 1
  store ptr %297, ptr %299, align 4
  store volatile ptr %298, ptr %297, align 4
  store volatile ptr %295, ptr %295, align 4
  store ptr %295, ptr %296, align 4
  %300 = load i8, ptr %269, align 4
  %301 = zext i8 %300 to i32
  %302 = shl nuw nsw i32 %301, 5
  %303 = add nuw nsw i32 %302, 1292
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  %304 = load ptr, ptr %7, align 4
  %305 = getelementptr i8, ptr %304, i32 %303
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %305, i32 0) #13
  %306 = load i8, ptr %269, align 4
  %307 = zext i8 %306 to i32
  %308 = shl nuw nsw i32 %307, 5
  %309 = add nuw nsw i32 %308, 1288
  %310 = load i8, ptr %11, align 8, !range !10
  %311 = icmp eq i8 %310, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  %312 = load ptr, ptr %7, align 4
  %313 = getelementptr i8, ptr %312, i32 %309
  br i1 %311, label %315, label %314

314:                                              ; preds = %293
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %313, i32 -12648448) #13, !srcloc !11
  br label %316

315:                                              ; preds = %293
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %313, i32 16383) #13, !srcloc !11
  br label %316

316:                                              ; preds = %315, %314
  %317 = load ptr, ptr %265, align 4
  store ptr %270, ptr %265, align 4
  store ptr %264, ptr %270, align 4
  %318 = getelementptr inbounds %struct.dwc2_host_chan, ptr %269, i32 0, i32 25, i32 1
  store ptr %317, ptr %318, align 4
  store volatile ptr %270, ptr %317, align 4
  %319 = getelementptr inbounds %struct.dwc2_host_chan, ptr %269, i32 0, i32 24
  store ptr null, ptr %319, align 4
  br label %320

320:                                              ; preds = %316, %266
  %321 = add nuw nsw i32 %267, 1
  %322 = icmp eq i32 %321, %224
  br i1 %322, label %323, label %266

323:                                              ; preds = %320, %261
  %324 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 13
  %325 = load i8, ptr %324, align 2, !range !10
  %326 = icmp eq i8 %325, 0
  br i1 %326, label %331, label %327

327:                                              ; preds = %323
  %328 = load i8, ptr %222, align 8
  %329 = zext i8 %328 to i32
  %330 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 53
  store i32 %329, ptr %330, align 4
  br label %334

331:                                              ; preds = %323
  %332 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 52
  store i32 0, ptr %332, align 8
  %333 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 51
  store i32 0, ptr %333, align 4
  br label %334

334:                                              ; preds = %331, %327, %211
  %335 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 19
  %336 = load ptr, ptr %335, align 8
  %337 = getelementptr inbounds %struct.usb_bus, ptr %336, i32 0, i32 6
  %338 = load i8, ptr %337, align 2
  %339 = and i8 %338, -2
  store i8 %339, ptr %337, align 2
  br i1 %1, label %359, label %340

340:                                              ; preds = %334
  %341 = load ptr, ptr %7, align 4
  %342 = getelementptr i8, ptr %341, i32 1088
  %343 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %342) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %344 = load i8, ptr %11, align 8, !range !10
  %345 = icmp eq i8 %344, 0
  %346 = lshr i32 %343, 24
  %347 = select i1 %345, i32 %343, i32 %346
  %348 = and i32 %347, 3
  %349 = icmp eq i32 %348, 1
  br i1 %349, label %350, label %359

350:                                              ; preds = %340
  %351 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 28
  %352 = load i32, ptr %351, align 8
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %356, label %354

354:                                              ; preds = %350
  %355 = load ptr, ptr %335, align 8
  tail call void @usb_hcd_resume_root_hub(ptr noundef %355) #13
  br label %356

356:                                              ; preds = %354, %350
  %357 = load i32, ptr %3, align 4
  %358 = or i32 %357, 3
  store i32 %358, ptr %3, align 4
  br label %359

359:                                              ; preds = %356, %340, %334
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_hcd_stop(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 24
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %7 = load i8, ptr %6, align 8, !range !10
  %8 = icmp eq i8 %7, 0
  %9 = tail call i32 @llvm.bswap.i32(i32 %5) #13
  %10 = select i1 %8, i32 %5, i32 %9
  %11 = and i32 %10, -654311465
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %8, label %16, label %12

12:                                               ; preds = %1
  %13 = tail call i32 @llvm.bswap.i32(i32 %11) #13
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr i8, ptr %14, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #13, !srcloc !11
  br label %19

16:                                               ; preds = %1
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr i8, ptr %17, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %11) #13, !srcloc !11
  br label %19

19:                                               ; preds = %16, %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr i8, ptr %20, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_core_init(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %7 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %8 = load i8, ptr %7, align 8, !range !10
  %9 = icmp eq i8 %8, 0
  %10 = tail call i32 @llvm.bswap.i32(i32 %6) #13
  %11 = select i1 %9, i32 %6, i32 %10
  %12 = and i32 %11, -5242881
  %13 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 5
  %14 = load i8, ptr %13, align 2, !range !10
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, i32 0, i32 1048576
  %17 = or i32 %12, %16
  %18 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 11
  %19 = load i8, ptr %18, align 8, !range !10
  %20 = icmp eq i8 %19, 0
  %21 = select i1 %20, i32 0, i32 4194304
  %22 = or i32 %17, %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %9, label %27, label %23

23:                                               ; preds = %2
  %24 = tail call i32 @llvm.bswap.i32(i32 %22) #13
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr i8, ptr %25, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #13, !srcloc !11
  br label %30

27:                                               ; preds = %2
  %28 = load ptr, ptr %3, align 4
  %29 = getelementptr i8, ptr %28, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %22) #13, !srcloc !11
  br label %30

30:                                               ; preds = %27, %23
  br i1 %1, label %36, label %31

31:                                               ; preds = %30
  %32 = tail call i32 @dwc2_core_reset(ptr noundef %0, i1 noundef zeroext false) #13
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dwc2_core_init) #14
  br label %145

36:                                               ; preds = %31, %30
  %37 = tail call i32 @dwc2_phy_init(ptr noundef %0, i1 noundef zeroext %1) #13
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %145

39:                                               ; preds = %36
  %40 = load ptr, ptr %3, align 4
  %41 = getelementptr i8, ptr %40, i32 8
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %43 = load i8, ptr %7, align 8, !range !10
  %44 = icmp eq i8 %43, 0
  %45 = tail call i32 @llvm.bswap.i32(i32 %42) #13
  %46 = select i1 %44, i32 %42, i32 %45
  %47 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2
  %48 = load i32, ptr %47, align 8
  %49 = lshr i32 %48, 3
  %50 = and i32 %49, 3
  switch i32 %50, label %59 [
    i32 1, label %77
    i32 2, label %51
  ]

51:                                               ; preds = %39
  %52 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 28
  %53 = load i32, ptr %52, align 8
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = and i32 %46, 417
  %57 = and i32 %53, -418
  %58 = or i32 %57, %56
  br label %59

59:                                               ; preds = %55, %51, %39
  %60 = phi i32 [ %46, %39 ], [ %58, %55 ], [ %46, %51 ]
  %61 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 31
  %62 = load i8, ptr %61, align 2, !range !10
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = or i32 %60, 32
  br label %68

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 32
  store i8 0, ptr %67, align 1
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %60, %66 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %44, label %74, label %70

70:                                               ; preds = %68
  %71 = tail call i32 @llvm.bswap.i32(i32 %69) #13
  %72 = load ptr, ptr %3, align 4
  %73 = getelementptr i8, ptr %72, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %71) #13, !srcloc !11
  br label %79

74:                                               ; preds = %68
  %75 = load ptr, ptr %3, align 4
  %76 = getelementptr i8, ptr %75, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %69) #13, !srcloc !11
  br label %79

77:                                               ; preds = %39
  %78 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.27) #14
  br label %145

79:                                               ; preds = %74, %70
  %80 = load ptr, ptr %3, align 4
  %81 = getelementptr i8, ptr %80, i32 12
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %83 = load i8, ptr %7, align 8, !range !10
  %84 = icmp eq i8 %83, 0
  %85 = tail call i32 @llvm.bswap.i32(i32 %82) #13
  %86 = select i1 %84, i32 %82, i32 %85
  %87 = and i32 %86, -769
  %88 = load i32, ptr %47, align 8
  %89 = and i32 %88, 7
  switch i32 %89, label %107 [
    i32 0, label %90
    i32 1, label %100
    i32 3, label %100
    i32 5, label %100
  ]

90:                                               ; preds = %79
  %91 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 0, i32 1
  %92 = load i8, ptr %91, align 2, !range !10
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 0, i32 2
  %96 = load i8, ptr %95, align 1, !range !10
  %97 = icmp eq i8 %96, 0
  %98 = or i32 %87, 512
  %99 = select i1 %97, i32 %87, i32 %98
  br label %100

100:                                              ; preds = %94, %90, %79, %79, %79
  %101 = phi i32 [ %87, %79 ], [ %87, %79 ], [ %87, %79 ], [ %87, %90 ], [ %99, %94 ]
  %102 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 0, i32 2
  %103 = load i8, ptr %102, align 1, !range !10
  %104 = icmp eq i8 %103, 0
  %105 = or i32 %101, 256
  %106 = select i1 %104, i32 %101, i32 %105
  br label %107

107:                                              ; preds = %100, %79
  %108 = phi i32 [ %87, %79 ], [ %106, %100 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %84, label %113, label %109

109:                                              ; preds = %107
  %110 = tail call i32 @llvm.bswap.i32(i32 %108) #13
  %111 = load ptr, ptr %3, align 4
  %112 = getelementptr i8, ptr %111, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %110) #13, !srcloc !11
  br label %116

113:                                              ; preds = %107
  %114 = load ptr, ptr %3, align 4
  %115 = getelementptr i8, ptr %114, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %108) #13, !srcloc !11
  br label %116

116:                                              ; preds = %113, %109
  %117 = load ptr, ptr %3, align 4
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %117) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %119 = load i8, ptr %7, align 8, !range !10
  %120 = icmp eq i8 %119, 0
  %121 = tail call i32 @llvm.bswap.i32(i32 %118) #13
  %122 = select i1 %120, i32 %118, i32 %121
  %123 = and i32 %122, -1048577
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %120, label %127, label %124

124:                                              ; preds = %116
  %125 = tail call i32 @llvm.bswap.i32(i32 %123) #13
  %126 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 %125) #13, !srcloc !11
  br label %129

127:                                              ; preds = %116
  %128 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %123) #13, !srcloc !11
  br label %129

129:                                              ; preds = %127, %124
  %130 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 24
  %131 = load i8, ptr %130, align 4
  %132 = and i8 %131, -3
  store i8 %132, ptr %130, align 4
  tail call fastcc void @dwc2_enable_common_interrupts(ptr noundef %0)
  %133 = load ptr, ptr %3, align 4
  %134 = getelementptr i8, ptr %133, i32 20
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %136 = load i8, ptr %7, align 8, !range !10
  %137 = icmp eq i8 %136, 0
  %138 = lshr i32 %135, 24
  %139 = select i1 %137, i32 %135, i32 %138
  %140 = and i32 %139, 1
  %141 = icmp eq i32 %140, 0
  %142 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 4
  br i1 %141, label %144, label %143

143:                                              ; preds = %129
  store i32 9, ptr %142, align 8
  br label %145

144:                                              ; preds = %129
  store i32 3, ptr %142, align 8
  br label %145

145:                                              ; preds = %144, %143, %77, %36, %34
  %146 = phi i32 [ %32, %34 ], [ %37, %36 ], [ -22, %77 ], [ 0, %144 ], [ 0, %143 ]
  ret i32 %146
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_core_reset(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_phy_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_enable_common_interrupts(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 -1) #13
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 -1) #13
  %9 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 31
  %10 = load i8, ptr %9, align 2, !range !10
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, i32 22, i32 6
  %13 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 14
  %14 = load i8, ptr %13, align 1, !range !10
  %15 = icmp eq i8 %14, 0
  %16 = or i32 %12, 268435456
  %17 = select i1 %15, i32 %16, i32 %12
  %18 = or i32 %17, -1073739776
  %19 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %23 = load i8, ptr %2, align 8, !range !10
  %24 = icmp eq i8 %23, 0
  %25 = lshr i32 %22, 24
  %26 = select i1 %24, i32 %22, i32 %25
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 17
  %31 = load i8, ptr %30, align 1, !range !10
  %32 = icmp eq i8 %31, 0
  %33 = or i32 %17, -939522048
  %34 = select i1 %32, i32 %18, i32 %33
  br label %35

35:                                               ; preds = %29, %1
  %36 = phi i32 [ %18, %1 ], [ %34, %29 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %24, label %41, label %37

37:                                               ; preds = %35
  %38 = tail call i32 @llvm.bswap.i32(i32 %36) #13
  %39 = load ptr, ptr %19, align 4
  %40 = getelementptr i8, ptr %39, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #13, !srcloc !11
  br label %44

41:                                               ; preds = %35
  %42 = load ptr, ptr %19, align 4
  %43 = getelementptr i8, ptr %42, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %36) #13, !srcloc !11
  br label %44

44:                                               ; preds = %41, %37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_hcd_select_transactions(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 41
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 50
  %5 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 53
  %6 = icmp eq ptr %3, %2
  br i1 %6, label %37, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 13
  %9 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 42
  %10 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 42, i32 1
  %11 = load volatile ptr, ptr %4, align 4
  %12 = icmp eq ptr %11, %4
  br i1 %12, label %37, label %16

13:                                               ; preds = %30
  %14 = load volatile ptr, ptr %4, align 4
  %15 = icmp eq ptr %14, %4
  br i1 %15, label %37, label %16

16:                                               ; preds = %13, %7
  %17 = phi ptr [ %31, %13 ], [ %3, %7 ]
  %18 = phi i32 [ 1, %13 ], [ 0, %7 ]
  %19 = load i8, ptr %8, align 2, !range !10
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i32, ptr %5, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %37, label %24

24:                                               ; preds = %21
  %25 = add nsw i32 %22, -1
  store i32 %25, ptr %5, align 4
  br label %26

26:                                               ; preds = %24, %16
  %27 = getelementptr i8, ptr %17, i32 -124
  %28 = tail call fastcc i32 @dwc2_assign_and_init_hc(ptr noundef %0, ptr noundef %27)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load ptr, ptr %17, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %33, ptr %34, align 4
  store volatile ptr %31, ptr %33, align 4
  %35 = load ptr, ptr %10, align 4
  store ptr %17, ptr %10, align 4
  store ptr %9, ptr %17, align 4
  store ptr %35, ptr %32, align 4
  store volatile ptr %17, ptr %35, align 4
  %36 = icmp eq ptr %31, %2
  br i1 %36, label %37, label %13

37:                                               ; preds = %30, %26, %21, %13, %7, %1
  %38 = phi i32 [ 0, %1 ], [ 0, %7 ], [ 1, %30 ], [ 1, %13 ], [ %18, %21 ], [ %18, %26 ]
  %39 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 37
  %40 = load i8, ptr %39, align 8
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 36
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 52
  %45 = icmp eq ptr %43, %42
  br i1 %45, label %92, label %46

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 13
  %48 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 51
  %49 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 38
  %50 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 38, i32 1
  %51 = load i8, ptr %47, align 2, !range !10
  br label %52

52:                                               ; preds = %90, %46
  %53 = phi i8 [ %51, %46 ], [ %85, %90 ]
  %54 = phi i32 [ %38, %46 ], [ %84, %90 ]
  %55 = phi ptr [ %43, %46 ], [ %78, %90 ]
  %56 = icmp eq i8 %53, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load i32, ptr %44, align 8
  %59 = load i32, ptr %48, align 4
  %60 = sub i32 %41, %59
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %92

62:                                               ; preds = %57
  %63 = load volatile ptr, ptr %4, align 4
  %64 = icmp eq ptr %63, %4
  br i1 %64, label %92, label %73

65:                                               ; preds = %52
  %66 = load volatile ptr, ptr %4, align 4
  %67 = icmp eq ptr %66, %4
  br i1 %67, label %92, label %68

68:                                               ; preds = %65
  %69 = load i32, ptr %5, align 4
  %70 = icmp slt i32 %69, 1
  br i1 %70, label %92, label %71

71:                                               ; preds = %68
  %72 = add nsw i32 %69, -1
  store i32 %72, ptr %5, align 4
  br label %73

73:                                               ; preds = %71, %62
  %74 = getelementptr i8, ptr %55, i32 -124
  %75 = tail call fastcc i32 @dwc2_assign_and_init_hc(ptr noundef %0, ptr noundef %74)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %73
  %78 = load ptr, ptr %55, align 4
  %79 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  store ptr %80, ptr %81, align 4
  store volatile ptr %78, ptr %80, align 4
  %82 = load ptr, ptr %50, align 4
  store ptr %55, ptr %50, align 4
  store ptr %49, ptr %55, align 4
  store ptr %82, ptr %79, align 4
  store volatile ptr %55, ptr %82, align 4
  %83 = icmp eq i32 %54, 0
  %84 = select i1 %83, i32 2, i32 3
  %85 = load i8, ptr %47, align 2, !range !10
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %77
  %88 = load i32, ptr %44, align 8
  %89 = add i32 %88, 1
  store i32 %89, ptr %44, align 8
  br label %90

90:                                               ; preds = %87, %77
  %91 = icmp eq ptr %78, %42
  br i1 %91, label %92, label %52

92:                                               ; preds = %90, %73, %68, %65, %62, %57, %37
  %93 = phi i32 [ %38, %37 ], [ %54, %65 ], [ %54, %73 ], [ %54, %68 ], [ %54, %62 ], [ %54, %57 ], [ %84, %90 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwc2_assign_and_init_hc(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 23
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %556, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 50
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %556, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %8, i32 -56
  %12 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %8, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 4
  store volatile ptr %14, ptr %13, align 4
  store volatile ptr %8, ptr %8, align 4
  store ptr %8, ptr %12, align 4
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr i8, ptr %16, i32 -36
  %18 = getelementptr i8, ptr %16, i32 -8
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 24
  store ptr %11, ptr %20, align 8
  %21 = getelementptr i8, ptr %16, i32 -32
  store i8 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %19, i32 0, i32 13
  %23 = load i8, ptr %22, align 2
  %24 = getelementptr i8, ptr %8, i32 -55
  %25 = load i24, ptr %24, align 1
  %26 = and i8 %23, 127
  %27 = zext i8 %26 to i24
  %28 = and i24 %25, -128
  %29 = or i24 %28, %27
  store i24 %29, ptr %24, align 1
  %30 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %19, i32 0, i32 13, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = and i8 %31, 15
  %33 = zext i8 %32 to i24
  %34 = shl nuw nsw i24 %33, 7
  %35 = and i24 %29, -1921
  %36 = or i24 %34, %35
  store i24 %36, ptr %24, align 1
  %37 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 5
  %38 = load i8, ptr %37, align 2
  %39 = and i8 %38, 15
  %40 = zext i8 %39 to i24
  %41 = shl nuw nsw i24 %40, 12
  %42 = and i24 %36, -61441
  %43 = or i24 %42, %41
  store i24 %43, ptr %24, align 1
  %44 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 3
  %45 = load i16, ptr %44, align 2
  %46 = getelementptr i8, ptr %8, i32 -52
  %47 = load i16, ptr %46, align 4
  %48 = and i16 %45, 2047
  %49 = and i16 %47, -2048
  %50 = or i16 %49, %48
  store i16 %50, ptr %46, align 4
  %51 = getelementptr i8, ptr %8, i32 -26
  store i8 0, ptr %51, align 2
  %52 = getelementptr i8, ptr %8, i32 -12
  store i32 0, ptr %52, align 4
  %53 = getelementptr i8, ptr %16, i32 -16
  %54 = load i8, ptr %53, align 4
  %55 = icmp ne i8 %54, 0
  %56 = zext i1 %55 to i8
  %57 = getelementptr i8, ptr %8, i32 -24
  store i8 %56, ptr %57, align 4
  %58 = getelementptr i8, ptr %8, i32 -23
  store i8 0, ptr %58, align 1
  %59 = getelementptr i8, ptr %8, i32 -22
  store i8 0, ptr %59, align 2
  %60 = getelementptr i8, ptr %8, i32 -16
  store i8 0, ptr %60, align 4
  %61 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %19, i32 0, i32 13, i32 3
  %62 = load i8, ptr %61, align 1
  %63 = icmp eq i8 %62, -128
  %64 = select i1 %63, i24 2048, i24 0
  %65 = and i24 %43, -2049
  %66 = or i24 %64, %65
  store i24 %66, ptr %24, align 1
  br i1 %63, label %70, label %67

67:                                               ; preds = %10
  %68 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 7
  %69 = load i8, ptr %68, align 4
  br label %70

70:                                               ; preds = %67, %10
  %71 = phi i8 [ %69, %67 ], [ 0, %10 ]
  %72 = getelementptr i8, ptr %8, i32 -25
  store i8 %71, ptr %72, align 1
  %73 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 6
  %74 = load i8, ptr %73, align 1
  %75 = and i8 %74, 3
  %76 = zext i8 %75 to i16
  %77 = shl nuw nsw i16 %76, 11
  %78 = and i16 %50, -30721
  %79 = or i16 %77, %78
  %80 = or i16 %79, 8192
  store i16 %80, ptr %46, align 4
  %81 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %19, i32 0, i32 7
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %19, i32 0, i32 6
  %84 = load i32, ptr %83, align 4
  %85 = icmp ugt i32 %82, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %70
  %87 = load i8, ptr %61, align 1
  %88 = icmp eq i8 %87, -128
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  store i32 %84, ptr %81, align 4
  br label %90

90:                                               ; preds = %89, %86, %70
  %91 = phi i32 [ %84, %89 ], [ %82, %86 ], [ %82, %70 ]
  %92 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 31
  %93 = load i8, ptr %92, align 2, !range !10
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %19, i32 0, i32 3
  %97 = load i32, ptr %96, align 4
  %98 = add i32 %91, %97
  %99 = getelementptr i8, ptr %8, i32 -44
  store i32 %98, ptr %99, align 4
  br label %105

100:                                              ; preds = %90
  %101 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %19, i32 0, i32 2
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr i8, ptr %102, i32 %91
  %104 = getelementptr i8, ptr %8, i32 -48
  store ptr %103, ptr %104, align 4
  br label %105

105:                                              ; preds = %100, %95
  %106 = load i32, ptr %83, align 4
  %107 = load i32, ptr %81, align 4
  %108 = sub i32 %106, %107
  %109 = getelementptr i8, ptr %8, i32 -36
  store i32 %108, ptr %109, align 4
  %110 = getelementptr i8, ptr %8, i32 -32
  store i32 0, ptr %110, align 4
  %111 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 8
  %112 = load i8, ptr %111, align 1
  %113 = icmp eq i8 %112, 0
  %114 = getelementptr i8, ptr %8, i32 -21
  br i1 %113, label %139, label %115

115:                                              ; preds = %105
  store i8 1, ptr %114, align 1
  %116 = getelementptr i8, ptr %16, i32 -29
  %117 = load i8, ptr %116, align 1
  %118 = getelementptr i8, ptr %8, i32 -17
  store i8 %117, ptr %118, align 1
  %119 = getelementptr i8, ptr %16, i32 -30
  %120 = load i8, ptr %119, align 2
  %121 = getelementptr i8, ptr %8, i32 -20
  store i8 %120, ptr %121, align 4
  %122 = load ptr, ptr %19, align 4
  %123 = getelementptr inbounds %struct.urb, ptr %122, i32 0, i32 8
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.usb_device, ptr %124, i32 0, i32 8
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %132, label %128

128:                                              ; preds = %115
  %129 = load ptr, ptr %126, align 4
  %130 = load i32, ptr %129, align 8
  %131 = trunc i32 %130 to i8
  br label %132

132:                                              ; preds = %128, %115
  %133 = phi i8 [ %131, %128 ], [ 0, %115 ]
  %134 = getelementptr inbounds %struct.usb_device, ptr %124, i32 0, i32 9
  %135 = load i32, ptr %134, align 8
  %136 = getelementptr i8, ptr %8, i32 -19
  store i8 %133, ptr %136, align 1
  %137 = trunc i32 %135 to i8
  %138 = getelementptr i8, ptr %8, i32 -18
  store i8 %137, ptr %138, align 2
  br label %140

139:                                              ; preds = %105
  store i8 0, ptr %114, align 1
  br label %140

140:                                              ; preds = %139, %132
  %141 = load ptr, ptr %18, align 4
  %142 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %141, i32 0, i32 13, i32 2
  %143 = load i8, ptr %142, align 2
  switch i8 %143, label %261 [
    i8 0, label %144
    i8 2, label %205
    i8 3, label %209
    i8 1, label %212
  ]

144:                                              ; preds = %140
  %145 = load i24, ptr %24, align 1
  %146 = and i24 %145, -196609
  store i24 %146, ptr %24, align 1
  %147 = load i32, ptr %17, align 4
  switch i32 %147, label %261 [
    i32 0, label %148
    i32 1, label %163
    i32 2, label %172
  ]

148:                                              ; preds = %144
  store i8 0, ptr %72, align 1
  %149 = and i24 %145, -198657
  store i24 %149, ptr %24, align 1
  %150 = load i16, ptr %46, align 4
  %151 = or i16 %150, 6144
  store i16 %151, ptr %46, align 4
  %152 = load i8, ptr %92, align 2, !range !10
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %141, i32 0, i32 5
  %156 = load i32, ptr %155, align 4
  %157 = getelementptr i8, ptr %8, i32 -44
  store i32 %156, ptr %157, align 4
  br label %162

158:                                              ; preds = %148
  %159 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %141, i32 0, i32 4
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr i8, ptr %8, i32 -48
  store ptr %160, ptr %161, align 4
  br label %162

162:                                              ; preds = %158, %154
  store i32 8, ptr %109, align 4
  br label %261

163:                                              ; preds = %144
  %164 = getelementptr i8, ptr %16, i32 -31
  %165 = load i8, ptr %164, align 1
  %166 = load i16, ptr %46, align 4
  %167 = and i8 %165, 3
  %168 = zext i8 %167 to i16
  %169 = shl nuw nsw i16 %168, 11
  %170 = and i16 %166, -6145
  %171 = or i16 %169, %170
  store i16 %171, ptr %46, align 4
  br label %261

172:                                              ; preds = %144
  %173 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %141, i32 0, i32 6
  %174 = load i32, ptr %173, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %172
  %177 = and i24 %145, -198657
  br label %184

178:                                              ; preds = %172
  %179 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %141, i32 0, i32 13, i32 3
  %180 = load i8, ptr %179, align 1
  %181 = icmp eq i8 %180, -128
  %182 = select i1 %181, i24 0, i24 2048
  %183 = and i24 %145, -198657
  br label %184

184:                                              ; preds = %178, %176
  %185 = phi i24 [ %183, %178 ], [ 2048, %176 ]
  %186 = phi i24 [ %182, %178 ], [ %177, %176 ]
  %187 = or i24 %186, %185
  store i24 %187, ptr %24, align 1
  %188 = and i24 %187, 2048
  %189 = icmp eq i24 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %184
  store i8 0, ptr %72, align 1
  br label %191

191:                                              ; preds = %190, %184
  %192 = load i16, ptr %46, align 4
  %193 = and i16 %192, -6145
  %194 = or i16 %193, 4096
  store i16 %194, ptr %46, align 4
  store i32 0, ptr %109, align 4
  %195 = load i8, ptr %92, align 2, !range !10
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %191
  %198 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 56
  %199 = load i32, ptr %198, align 4
  %200 = getelementptr i8, ptr %8, i32 -44
  store i32 %199, ptr %200, align 4
  br label %261

201:                                              ; preds = %191
  %202 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 55
  %203 = load ptr, ptr %202, align 8
  %204 = getelementptr i8, ptr %8, i32 -48
  store ptr %203, ptr %204, align 4
  br label %261

205:                                              ; preds = %140
  %206 = load i24, ptr %24, align 1
  %207 = and i24 %206, -196609
  %208 = or i24 %207, 131072
  store i24 %208, ptr %24, align 1
  br label %261

209:                                              ; preds = %140
  %210 = load i24, ptr %24, align 1
  %211 = or i24 %210, 196608
  store i24 %211, ptr %24, align 1
  br label %261

212:                                              ; preds = %140
  %213 = load i24, ptr %24, align 1
  %214 = and i24 %213, -196609
  %215 = or i24 %214, 65536
  store i24 %215, ptr %24, align 1
  %216 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 32
  %217 = load i8, ptr %216, align 1, !range !10
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %219, label %261

219:                                              ; preds = %212
  %220 = getelementptr i8, ptr %16, i32 -28
  %221 = load i16, ptr %220, align 4
  %222 = zext i16 %221 to i32
  %223 = getelementptr %struct.dwc2_hcd_urb, ptr %141, i32 0, i32 14, i32 %222
  %224 = getelementptr %struct.dwc2_hcd_urb, ptr %141, i32 0, i32 14, i32 %222, i32 3
  store i32 0, ptr %224, align 4
  %225 = load i8, ptr %92, align 2, !range !10
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %237, label %227

227:                                              ; preds = %219
  %228 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %141, i32 0, i32 3
  %229 = load i32, ptr %228, align 4
  %230 = getelementptr i8, ptr %8, i32 -44
  store i32 %229, ptr %230, align 4
  %231 = load i32, ptr %223, align 4
  %232 = getelementptr i8, ptr %16, i32 -26
  %233 = load i16, ptr %232, align 2
  %234 = zext i16 %233 to i32
  %235 = add i32 %231, %229
  %236 = add i32 %235, %234
  store i32 %236, ptr %230, align 4
  br label %247

237:                                              ; preds = %219
  %238 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %141, i32 0, i32 2
  %239 = load ptr, ptr %238, align 4
  %240 = getelementptr i8, ptr %8, i32 -48
  store ptr %239, ptr %240, align 4
  %241 = load i32, ptr %223, align 4
  %242 = getelementptr i8, ptr %16, i32 -26
  %243 = load i16, ptr %242, align 2
  %244 = zext i16 %243 to i32
  %245 = add i32 %241, %244
  %246 = getelementptr i8, ptr %239, i32 %245
  store ptr %246, ptr %240, align 4
  br label %247

247:                                              ; preds = %237, %227
  %248 = getelementptr %struct.dwc2_hcd_urb, ptr %141, i32 0, i32 14, i32 %222, i32 1
  %249 = load i32, ptr %248, align 4
  %250 = getelementptr i8, ptr %16, i32 -26
  %251 = load i16, ptr %250, align 2
  %252 = zext i16 %251 to i32
  %253 = sub i32 %249, %252
  store i32 %253, ptr %109, align 4
  %254 = getelementptr i8, ptr %8, i32 -17
  %255 = load i8, ptr %254, align 1
  %256 = icmp eq i8 %255, 3
  br i1 %256, label %257, label %261

257:                                              ; preds = %247
  %258 = icmp ult i32 %253, 189
  br i1 %258, label %259, label %260

259:                                              ; preds = %257
  store i8 3, ptr %254, align 1
  br label %261

260:                                              ; preds = %257
  store i8 2, ptr %254, align 1
  br label %261

261:                                              ; preds = %260, %259, %247, %212, %209, %205, %201, %197, %163, %162, %144, %140
  %262 = load i8, ptr %92, align 2, !range !10
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %295, label %264

264:                                              ; preds = %261
  %265 = load i8, ptr %111, align 1
  %266 = icmp eq i8 %265, 0
  br i1 %266, label %286, label %267

267:                                              ; preds = %264
  %268 = load i24, ptr %24, align 1
  %269 = and i24 %268, 2048
  %270 = icmp eq i24 %269, 0
  br i1 %270, label %286, label %271

271:                                              ; preds = %267
  %272 = getelementptr i8, ptr %8, i32 -44
  %273 = load i32, ptr %272, align 4
  %274 = and i32 %273, 3
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %286, label %276

276:                                              ; preds = %271
  %277 = tail call fastcc i32 @dwc2_alloc_split_dma_aligned_buf(ptr noundef %0, ptr noundef %1, ptr noundef %11)
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %297, label %279

279:                                              ; preds = %276
  %280 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %280, ptr noundef nonnull @.str.28) #14
  %281 = getelementptr i8, ptr %8, i32 -40
  store i32 0, ptr %281, align 4
  %282 = load i16, ptr %46, align 4
  %283 = and i16 %282, -24577
  store i16 %283, ptr %46, align 4
  %284 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 50, i32 1
  %285 = load ptr, ptr %284, align 4
  store ptr %8, ptr %284, align 4
  store ptr %7, ptr %8, align 4
  store ptr %285, ptr %12, align 4
  store volatile ptr %8, ptr %285, align 4
  store i8 0, ptr %21, align 4
  store ptr null, ptr %20, align 8
  br label %556

286:                                              ; preds = %271, %267, %264
  %287 = getelementptr i8, ptr %8, i32 -44
  %288 = load i32, ptr %287, align 4
  %289 = and i32 %288, 3
  %290 = icmp ne i32 %289, 0
  %291 = load i1, ptr @dwc2_assign_and_init_hc.__already_done, align 1
  %292 = xor i1 %291, true
  %293 = select i1 %290, i1 %292, i1 false
  br i1 %293, label %294, label %295, !prof !12

294:                                              ; preds = %286
  store i1 true, ptr @dwc2_assign_and_init_hc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 2678, i32 noundef 9, ptr noundef null) #13
  br label %295

295:                                              ; preds = %294, %286, %261
  %296 = getelementptr i8, ptr %8, i32 -40
  store i32 0, ptr %296, align 4
  br label %297

297:                                              ; preds = %295, %276
  %298 = load i24, ptr %24, align 1
  %299 = lshr i24 %298, 16
  %300 = trunc i24 %299 to i2
  switch i2 %300, label %309 [
    i2 -1, label %301
    i2 1, label %301
  ]

301:                                              ; preds = %297, %297
  %302 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 4
  %303 = load i16, ptr %302, align 8
  %304 = load i16, ptr %46, align 4
  %305 = shl i16 %303, 13
  %306 = and i16 %305, 24576
  %307 = and i16 %304, -24577
  %308 = or i16 %307, %306
  store i16 %308, ptr %46, align 4
  br label %309

309:                                              ; preds = %301, %297
  %310 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 32
  %311 = load i8, ptr %310, align 1, !range !10
  %312 = icmp eq i8 %311, 0
  br i1 %312, label %320, label %313

313:                                              ; preds = %309
  %314 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 27
  %315 = load i32, ptr %314, align 8
  %316 = getelementptr i8, ptr %8, i32 8
  store i32 %315, ptr %316, align 4
  %317 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 28
  %318 = load i32, ptr %317, align 4
  %319 = getelementptr i8, ptr %8, i32 12
  store i32 %318, ptr %319, align 4
  br label %320

320:                                              ; preds = %313, %309
  %321 = load i8, ptr %11, align 4
  %322 = zext i8 %321 to i32
  %323 = shl nuw nsw i32 %322, 5
  %324 = add nuw nsw i32 %323, 1288
  %325 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %326 = load i8, ptr %325, align 8, !range !10
  %327 = icmp eq i8 %326, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  %328 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %329 = load ptr, ptr %328, align 4
  %330 = getelementptr i8, ptr %329, i32 %324
  br i1 %327, label %332, label %331

331:                                              ; preds = %320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %330, i32 -12648448) #13, !srcloc !11
  br label %333

332:                                              ; preds = %320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %330, i32 16383) #13, !srcloc !11
  br label %333

333:                                              ; preds = %332, %331
  %334 = load i8, ptr %92, align 2, !range !10
  %335 = icmp eq i8 %334, 0
  br i1 %335, label %379, label %336

336:                                              ; preds = %333
  %337 = load i8, ptr %310, align 1, !range !10
  %338 = icmp eq i8 %337, 0
  br i1 %338, label %344, label %339

339:                                              ; preds = %336
  %340 = load i24, ptr %24, align 1
  %341 = and i24 %340, 196608
  %342 = icmp eq i24 %341, 65536
  %343 = select i1 %342, i32 3, i32 2
  br label %344

344:                                              ; preds = %339, %336
  %345 = phi i32 [ %343, %339 ], [ 6, %336 ]
  %346 = load i8, ptr %57, align 4
  %347 = icmp eq i8 %346, 0
  br i1 %347, label %364, label %348

348:                                              ; preds = %344
  %349 = getelementptr i8, ptr %8, i32 -21
  %350 = load i8, ptr %349, align 1
  %351 = icmp eq i8 %350, 0
  br i1 %351, label %352, label %364

352:                                              ; preds = %348
  %353 = load i24, ptr %24, align 1
  %354 = and i24 %353, 196608
  %355 = icmp eq i24 %354, 65536
  br i1 %355, label %364, label %356

356:                                              ; preds = %352
  %357 = or i32 %345, 32
  %358 = and i24 %353, 2048
  %359 = icmp eq i24 %358, 0
  br i1 %359, label %364, label %360

360:                                              ; preds = %356
  %361 = icmp eq i24 %354, 196608
  %362 = select i1 %361, i32 1056, i32 1072
  %363 = or i32 %362, %345
  br label %364

364:                                              ; preds = %360, %356, %352, %348, %344
  %365 = phi i32 [ %345, %348 ], [ %357, %356 ], [ %345, %352 ], [ %345, %344 ], [ %363, %360 ]
  %366 = load i8, ptr %11, align 4
  %367 = zext i8 %366 to i32
  %368 = shl nuw nsw i32 %367, 5
  %369 = add nuw nsw i32 %368, 1292
  %370 = load i8, ptr %325, align 8, !range !10
  %371 = icmp eq i8 %370, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %371, label %376, label %372

372:                                              ; preds = %364
  %373 = tail call i32 @llvm.bswap.i32(i32 %365) #13
  %374 = load ptr, ptr %328, align 4
  %375 = getelementptr i8, ptr %374, i32 %369
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %375, i32 %373) #13, !srcloc !11
  br label %447

376:                                              ; preds = %364
  %377 = load ptr, ptr %328, align 4
  %378 = getelementptr i8, ptr %377, i32 %369
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %378, i32 %365) #13, !srcloc !11
  br label %447

379:                                              ; preds = %333
  %380 = load i24, ptr %24, align 1
  %381 = lshr i24 %380, 16
  %382 = and i24 %381, 3
  %383 = zext i24 %382 to i32
  switch i32 %383, label %431 [
    i32 0, label %384
    i32 2, label %384
    i32 3, label %410
    i32 1, label %427
  ]

384:                                              ; preds = %379, %379
  %385 = and i24 %380, 2048
  %386 = icmp eq i24 %385, 0
  br i1 %386, label %387, label %391

387:                                              ; preds = %384
  %388 = load i8, ptr %72, align 1
  %389 = icmp eq i8 %388, 0
  %390 = select i1 %389, i32 1243, i32 1275
  br label %391

391:                                              ; preds = %387, %384
  %392 = phi i32 [ 1419, %384 ], [ %390, %387 ]
  %393 = getelementptr i8, ptr %8, i32 -21
  %394 = load i8, ptr %393, align 1
  %395 = icmp eq i8 %394, 0
  br i1 %395, label %404, label %396

396:                                              ; preds = %391
  %397 = getelementptr i8, ptr %8, i32 -20
  %398 = load i8, ptr %397, align 4
  %399 = icmp eq i8 %398, 0
  br i1 %399, label %402, label %400

400:                                              ; preds = %396
  %401 = or i32 %392, 80
  br label %404

402:                                              ; preds = %396
  %403 = or i32 %392, 48
  br label %404

404:                                              ; preds = %402, %400, %391
  %405 = phi i32 [ %401, %400 ], [ %403, %402 ], [ %392, %391 ]
  %406 = load i8, ptr %57, align 4
  %407 = icmp eq i8 %406, 0
  %408 = or i32 %405, 32
  %409 = select i1 %407, i32 %405, i32 %408
  br label %432

410:                                              ; preds = %379
  %411 = and i24 %380, 2048
  %412 = icmp eq i24 %411, 0
  %413 = select i1 %412, i32 1691, i32 1947
  %414 = load i8, ptr %57, align 4
  %415 = icmp eq i8 %414, 0
  %416 = or i32 %413, 32
  %417 = select i1 %415, i32 %413, i32 %416
  %418 = getelementptr i8, ptr %8, i32 -21
  %419 = load i8, ptr %418, align 1
  %420 = icmp eq i8 %419, 0
  br i1 %420, label %432, label %421

421:                                              ; preds = %410
  %422 = getelementptr i8, ptr %8, i32 -20
  %423 = load i8, ptr %422, align 4
  %424 = icmp eq i8 %423, 0
  %425 = or i32 %417, 64
  %426 = select i1 %424, i32 %416, i32 %425
  br label %432

427:                                              ; preds = %379
  %428 = and i24 %380, 2048
  %429 = icmp eq i24 %428, 0
  %430 = select i1 %429, i32 547, i32 931
  br label %432

431:                                              ; preds = %379
  unreachable

432:                                              ; preds = %427, %421, %410, %404
  %433 = phi i32 [ %417, %410 ], [ %409, %404 ], [ %430, %427 ], [ %426, %421 ]
  %434 = load i8, ptr %11, align 4
  %435 = zext i8 %434 to i32
  %436 = shl nuw nsw i32 %435, 5
  %437 = add nuw nsw i32 %436, 1292
  %438 = load i8, ptr %325, align 8, !range !10
  %439 = icmp eq i8 %438, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %439, label %444, label %440

440:                                              ; preds = %432
  %441 = tail call i32 @llvm.bswap.i32(i32 %433) #13
  %442 = load ptr, ptr %328, align 4
  %443 = getelementptr i8, ptr %442, i32 %437
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %443, i32 %441) #13, !srcloc !11
  br label %447

444:                                              ; preds = %432
  %445 = load ptr, ptr %328, align 4
  %446 = getelementptr i8, ptr %445, i32 %437
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %446, i32 %433) #13, !srcloc !11
  br label %447

447:                                              ; preds = %444, %440, %376, %372
  %448 = load ptr, ptr %328, align 4
  %449 = getelementptr i8, ptr %448, i32 1048
  %450 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %449) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %451 = load i8, ptr %325, align 8, !range !10
  %452 = icmp eq i8 %451, 0
  %453 = tail call i32 @llvm.bswap.i32(i32 %450) #13
  %454 = select i1 %452, i32 %450, i32 %453
  %455 = load i8, ptr %11, align 4
  %456 = zext i8 %455 to i32
  %457 = shl nuw i32 1, %456
  %458 = or i32 %457, %454
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %452, label %463, label %459

459:                                              ; preds = %447
  %460 = tail call i32 @llvm.bswap.i32(i32 %458) #13
  %461 = load ptr, ptr %328, align 4
  %462 = getelementptr i8, ptr %461, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %462, i32 %460) #13, !srcloc !11
  br label %466

463:                                              ; preds = %447
  %464 = load ptr, ptr %328, align 4
  %465 = getelementptr i8, ptr %464, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %465, i32 %458) #13, !srcloc !11
  br label %466

466:                                              ; preds = %463, %459
  %467 = load ptr, ptr %328, align 4
  %468 = getelementptr i8, ptr %467, i32 24
  %469 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %468) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %470 = load i8, ptr %325, align 8, !range !10
  %471 = icmp eq i8 %470, 0
  %472 = tail call i32 @llvm.bswap.i32(i32 %469) #13
  %473 = select i1 %471, i32 %469, i32 %472
  %474 = or i32 %473, 33554432
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %471, label %479, label %475

475:                                              ; preds = %466
  %476 = tail call i32 @llvm.bswap.i32(i32 %474) #13
  %477 = load ptr, ptr %328, align 4
  %478 = getelementptr i8, ptr %477, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %478, i32 %476) #13, !srcloc !11
  br label %482

479:                                              ; preds = %466
  %480 = load ptr, ptr %328, align 4
  %481 = getelementptr i8, ptr %480, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %481, i32 %474) #13, !srcloc !11
  br label %482

482:                                              ; preds = %479, %475
  %483 = load i24, ptr %24, align 1
  %484 = and i24 %483, 127
  %485 = zext i24 %484 to i32
  %486 = shl nuw nsw i32 %485, 22
  %487 = shl i24 %483, 4
  %488 = and i24 %487, 30720
  %489 = zext i24 %488 to i32
  %490 = or i32 %486, %489
  %491 = and i24 %487, 32768
  %492 = zext i24 %491 to i32
  %493 = or i32 %490, %492
  %494 = and i24 %483, 61440
  %495 = icmp eq i24 %494, 4096
  %496 = or i32 %493, 131072
  %497 = select i1 %495, i32 %496, i32 %493
  %498 = shl i24 %483, 2
  %499 = and i24 %498, 786432
  %500 = zext i24 %499 to i32
  %501 = load i16, ptr %46, align 4
  %502 = and i16 %501, 2047
  %503 = zext i16 %502 to i32
  %504 = or i32 %503, %500
  %505 = or i32 %504, %497
  %506 = add nuw nsw i32 %323, 1280
  %507 = load i8, ptr %325, align 8, !range !10
  %508 = icmp eq i8 %507, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %508, label %513, label %509

509:                                              ; preds = %482
  %510 = tail call i32 @llvm.bswap.i32(i32 %505) #13
  %511 = load ptr, ptr %328, align 4
  %512 = getelementptr i8, ptr %511, i32 %506
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %512, i32 %510) #13, !srcloc !11
  br label %516

513:                                              ; preds = %482
  %514 = load ptr, ptr %328, align 4
  %515 = getelementptr i8, ptr %514, i32 %506
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %515, i32 %505) #13, !srcloc !11
  br label %516

516:                                              ; preds = %513, %509
  %517 = getelementptr i8, ptr %8, i32 -21
  %518 = load i8, ptr %517, align 1
  %519 = icmp eq i8 %518, 0
  br i1 %519, label %542, label %520

520:                                              ; preds = %516
  %521 = getelementptr i8, ptr %8, i32 -20
  %522 = load i8, ptr %521, align 4
  %523 = icmp eq i8 %522, 0
  %524 = select i1 %523, i32 0, i32 65536
  %525 = getelementptr i8, ptr %8, i32 -17
  %526 = load i8, ptr %525, align 1
  %527 = zext i8 %526 to i32
  %528 = shl nuw nsw i32 %527, 14
  %529 = and i32 %528, 49152
  %530 = or i32 %529, %524
  %531 = getelementptr i8, ptr %8, i32 -19
  %532 = load i8, ptr %531, align 1
  %533 = zext i8 %532 to i32
  %534 = shl nuw nsw i32 %533, 7
  %535 = and i32 %534, 16256
  %536 = or i32 %530, %535
  %537 = getelementptr i8, ptr %8, i32 -18
  %538 = load i8, ptr %537, align 2
  %539 = and i8 %538, 127
  %540 = zext i8 %539 to i32
  %541 = or i32 %536, %540
  br label %542

542:                                              ; preds = %520, %516
  %543 = phi i32 [ %541, %520 ], [ 0, %516 ]
  %544 = add nuw nsw i32 %323, 1284
  %545 = load i8, ptr %325, align 8, !range !10
  %546 = icmp eq i8 %545, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %546, label %551, label %547

547:                                              ; preds = %542
  %548 = tail call i32 @llvm.bswap.i32(i32 %543) #13
  %549 = load ptr, ptr %328, align 4
  %550 = getelementptr i8, ptr %549, i32 %544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %550, i32 %548) #13, !srcloc !11
  br label %554

551:                                              ; preds = %542
  %552 = load ptr, ptr %328, align 4
  %553 = getelementptr i8, ptr %552, i32 %544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %553, i32 %543) #13, !srcloc !11
  br label %554

554:                                              ; preds = %551, %547
  %555 = getelementptr i8, ptr %8, i32 -4
  store ptr %1, ptr %555, align 4
  br label %556

556:                                              ; preds = %554, %279, %6, %2
  %557 = phi i32 [ -12, %279 ], [ 0, %554 ], [ -12, %2 ], [ -12, %6 ]
  ret i32 %557
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_hcd_queue_transactions(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, -3
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %138

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 42
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %89, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 1040
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %14 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %15 = load ptr, ptr %6, align 4
  %16 = icmp eq ptr %15, %6
  br i1 %16, label %89, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 31
  %19 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 24
  %20 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 43
  %21 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 43, i32 1
  br label %22

22:                                               ; preds = %39, %17
  %23 = phi ptr [ %15, %17 ], [ %40, %39 ]
  %24 = load ptr, ptr %10, align 4
  %25 = getelementptr i8, ptr %24, i32 1040
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %27 = load i8, ptr %14, align 8, !range !10
  %28 = icmp eq i8 %27, 0
  %29 = tail call i32 @llvm.bswap.i32(i32 %26) #13
  %30 = select i1 %28, i32 %26, i32 %29
  %31 = and i32 %30, 16711680
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %96, label %33

33:                                               ; preds = %22
  %34 = getelementptr i8, ptr %23, i32 -4
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load ptr, ptr %23, align 4
  br label %39

39:                                               ; preds = %81, %71, %47, %37
  %40 = phi ptr [ %48, %47 ], [ %38, %37 ], [ %82, %81 ], [ %23, %71 ]
  %41 = icmp eq ptr %40, %6
  br i1 %41, label %89, label %22

42:                                               ; preds = %33
  %43 = getelementptr i8, ptr %23, i32 100
  %44 = load i8, ptr %43, align 8
  %45 = and i8 %44, 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = load ptr, ptr %23, align 4
  br label %39

49:                                               ; preds = %42
  %50 = load i8, ptr %18, align 2, !range !10
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.dwc2_host_chan, ptr %35, i32 0, i32 2
  %54 = load i16, ptr %53, align 4
  %55 = and i16 %54, 16384
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = load i8, ptr %19, align 4
  %59 = or i8 %58, 1
  store i8 %59, ptr %19, align 4
  %60 = load ptr, ptr %34, align 8
  br label %61

61:                                               ; preds = %57, %52, %49
  %62 = phi ptr [ %60, %57 ], [ %35, %52 ], [ %35, %49 ]
  %63 = trunc i32 %30 to i16
  %64 = tail call fastcc i32 @dwc2_queue_transaction(ptr noundef %0, ptr noundef %62, i16 noundef zeroext %63) #13
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %96, label %66

66:                                               ; preds = %61
  %67 = load i8, ptr %18, align 2, !range !10
  %68 = icmp ne i8 %67, 0
  %69 = icmp eq i32 %64, 0
  %70 = select i1 %68, i1 true, i1 %69
  br i1 %70, label %81, label %71

71:                                               ; preds = %66
  %72 = load ptr, ptr %34, align 8
  %73 = getelementptr inbounds %struct.dwc2_host_chan, ptr %72, i32 0, i32 19
  %74 = load i8, ptr %73, align 4
  %75 = getelementptr inbounds %struct.dwc2_host_chan, ptr %72, i32 0, i32 2
  %76 = load i16, ptr %75, align 4
  %77 = lshr i16 %76, 13
  %78 = and i16 %77, 3
  %79 = zext i8 %74 to i16
  %80 = icmp eq i16 %78, %79
  br i1 %80, label %81, label %39

81:                                               ; preds = %71, %66
  %82 = load ptr, ptr %23, align 4
  %83 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  store ptr %84, ptr %85, align 4
  store volatile ptr %82, ptr %84, align 4
  %86 = load ptr, ptr %21, align 4
  store ptr %23, ptr %21, align 4
  store ptr %20, ptr %23, align 4
  store ptr %86, ptr %83, align 4
  store volatile ptr %23, ptr %86, align 4
  %87 = load i8, ptr %19, align 4
  %88 = and i8 %87, -2
  store i8 %88, ptr %19, align 4
  br label %39

89:                                               ; preds = %39, %9, %5
  %90 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 31
  %91 = load i8, ptr %90, align 2, !range !10
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %117

93:                                               ; preds = %89
  %94 = load volatile ptr, ptr %6, align 4
  %95 = icmp eq ptr %94, %6
  br i1 %95, label %117, label %96

96:                                               ; preds = %93, %61, %22
  %97 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr i8, ptr %98, i32 24
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %101 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %102 = load i8, ptr %101, align 8, !range !10
  %103 = icmp eq i8 %102, 0
  %104 = tail call i32 @llvm.bswap.i32(i32 %100) #13
  %105 = select i1 %103, i32 %100, i32 %104
  %106 = and i32 %105, 67108864
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %138

108:                                              ; preds = %96
  %109 = or i32 %105, 67108864
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %103, label %114, label %110

110:                                              ; preds = %108
  %111 = tail call i32 @llvm.bswap.i32(i32 %109) #13
  %112 = load ptr, ptr %97, align 4
  %113 = getelementptr i8, ptr %112, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %111) #13, !srcloc !11
  br label %138

114:                                              ; preds = %108
  %115 = load ptr, ptr %97, align 4
  %116 = getelementptr i8, ptr %115, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %109) #13, !srcloc !11
  br label %138

117:                                              ; preds = %93, %89
  %118 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr i8, ptr %119, i32 24
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %122 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %123 = load i8, ptr %122, align 8, !range !10
  %124 = icmp eq i8 %123, 0
  %125 = tail call i32 @llvm.bswap.i32(i32 %121) #13
  %126 = select i1 %124, i32 %121, i32 %125
  %127 = and i32 %126, 67108864
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %138, label %129

129:                                              ; preds = %117
  %130 = and i32 %126, -67108865
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %124, label %135, label %131

131:                                              ; preds = %129
  %132 = tail call i32 @llvm.bswap.i32(i32 %130) #13
  %133 = load ptr, ptr %118, align 4
  %134 = getelementptr i8, ptr %133, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %132) #13, !srcloc !11
  br label %138

135:                                              ; preds = %129
  %136 = load ptr, ptr %118, align 4
  %137 = getelementptr i8, ptr %136, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 %130) #13, !srcloc !11
  br label %138

138:                                              ; preds = %135, %131, %117, %114, %110, %96, %2
  %139 = and i32 %1, -2
  %140 = icmp eq i32 %139, 2
  br i1 %140, label %141, label %254

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 38
  %143 = load volatile ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, %142
  %145 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %146 = load ptr, ptr %145, align 4
  br i1 %144, label %238, label %147

147:                                              ; preds = %141
  %148 = getelementptr i8, ptr %146, i32 44
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %148) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %150 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %151 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 39
  %152 = load ptr, ptr %151, align 8
  %153 = icmp eq ptr %152, %142
  br i1 %153, label %154, label %156

154:                                              ; preds = %147
  %155 = load ptr, ptr %142, align 4
  store ptr %155, ptr %151, align 8
  br label %156

156:                                              ; preds = %154, %147
  %157 = phi ptr [ %155, %154 ], [ %152, %147 ]
  %158 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 31
  br label %159

159:                                              ; preds = %196, %156
  %160 = phi i32 [ 0, %156 ], [ %190, %196 ]
  %161 = load ptr, ptr %145, align 4
  %162 = getelementptr i8, ptr %161, i32 44
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %162) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %164 = load i8, ptr %150, align 8, !range !10
  %165 = icmp eq i8 %164, 0
  %166 = tail call i32 @llvm.bswap.i32(i32 %163) #13
  %167 = select i1 %165, i32 %163, i32 %166
  %168 = load i8, ptr %158, align 2, !range !10
  %169 = icmp eq i8 %168, 0
  %170 = and i32 %167, 16711680
  %171 = icmp eq i32 %170, 0
  %172 = select i1 %169, i1 %171, i1 false
  br i1 %172, label %204, label %173

173:                                              ; preds = %159
  %174 = load ptr, ptr %151, align 8
  %175 = getelementptr i8, ptr %174, i32 -4
  %176 = load ptr, ptr %175, align 8
  %177 = icmp eq ptr %176, null
  br i1 %177, label %189, label %178

178:                                              ; preds = %173
  %179 = getelementptr i8, ptr %174, i32 100
  %180 = load i8, ptr %179, align 8
  %181 = and i8 %180, 1
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %178
  %184 = trunc i32 %167 to i16
  %185 = tail call fastcc i32 @dwc2_queue_transaction(ptr noundef %0, ptr noundef nonnull %176, i16 noundef zeroext %184) #13
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %183
  %188 = icmp slt i32 %185, 0
  br i1 %188, label %199, label %189

189:                                              ; preds = %187, %183, %178, %173
  %190 = phi i32 [ %160, %178 ], [ %160, %187 ], [ %160, %173 ], [ 1, %183 ]
  %191 = load ptr, ptr %151, align 8
  %192 = load ptr, ptr %191, align 4
  store ptr %192, ptr %151, align 8
  %193 = icmp eq ptr %192, %142
  br i1 %193, label %194, label %196

194:                                              ; preds = %189
  %195 = load ptr, ptr %142, align 4
  store ptr %195, ptr %151, align 8
  br label %196

196:                                              ; preds = %194, %189
  %197 = phi ptr [ %192, %189 ], [ %195, %194 ]
  %198 = icmp eq ptr %197, %157
  br i1 %198, label %199, label %159

199:                                              ; preds = %196, %187
  %200 = phi i1 [ true, %187 ], [ false, %196 ]
  %201 = phi i32 [ %160, %187 ], [ %190, %196 ]
  %202 = load i8, ptr %158, align 2
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %204, label %254

204:                                              ; preds = %199, %159
  %205 = phi i32 [ %201, %199 ], [ %160, %159 ]
  %206 = phi i1 [ %200, %199 ], [ false, %159 ]
  %207 = load ptr, ptr %145, align 4
  %208 = getelementptr i8, ptr %207, i32 44
  %209 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %208) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %210 = icmp ne i32 %205, 0
  %211 = select i1 %210, i1 true, i1 %172
  %212 = or i1 %206, %211
  %213 = load ptr, ptr %145, align 4
  %214 = getelementptr i8, ptr %213, i32 24
  %215 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %214) #13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13
  %216 = load i8, ptr %150, align 8, !range !10
  %217 = icmp eq i8 %216, 0
  %218 = tail call i32 @llvm.bswap.i32(i32 %215) #13
  %219 = select i1 %217, i32 %215, i32 %218
  br i1 %212, label %220, label %229

220:                                              ; preds = %204
  %221 = or i32 %219, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %217, label %226, label %222

222:                                              ; preds = %220
  %223 = tail call i32 @llvm.bswap.i32(i32 %221) #13
  %224 = load ptr, ptr %145, align 4
  %225 = getelementptr i8, ptr %224, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %225, i32 %223) #13, !srcloc !11
  br label %254

226:                                              ; preds = %220
  %227 = load ptr, ptr %145, align 4
  %228 = getelementptr i8, ptr %227, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %228, i32 %221) #13, !srcloc !11
  br label %254

229:                                              ; preds = %204
  %230 = and i32 %219, -33
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %217, label %235, label %231

231:                                              ; preds = %229
  %232 = tail call i32 @llvm.bswap.i32(i32 %230) #13
  %233 = load ptr, ptr %145, align 4
  %234 = getelementptr i8, ptr %233, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %234, i32 %232) #13, !srcloc !11
  br label %254

235:                                              ; preds = %229
  %236 = load ptr, ptr %145, align 4
  %237 = getelementptr i8, ptr %236, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %237, i32 %230) #13, !srcloc !11
  br label %254

238:                                              ; preds = %141
  %239 = getelementptr i8, ptr %146, i32 24
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %239) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %241 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %242 = load i8, ptr %241, align 8, !range !10
  %243 = icmp eq i8 %242, 0
  %244 = tail call i32 @llvm.bswap.i32(i32 %240) #13
  %245 = select i1 %243, i32 %240, i32 %244
  %246 = and i32 %245, -33
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %243, label %251, label %247

247:                                              ; preds = %238
  %248 = tail call i32 @llvm.bswap.i32(i32 %246) #13
  %249 = load ptr, ptr %145, align 4
  %250 = getelementptr i8, ptr %249, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %250, i32 %248) #13, !srcloc !11
  br label %254

251:                                              ; preds = %238
  %252 = load ptr, ptr %145, align 4
  %253 = getelementptr i8, ptr %252, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %253, i32 %246) #13, !srcloc !11
  br label %254

254:                                              ; preds = %251, %247, %235, %231, %226, %222, %199, %138
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_port_suspend(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 18
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #13
  %5 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 60
  %6 = load i8, ptr %5, align 8
  %7 = zext i8 %6 to i16
  %8 = icmp eq i16 %7, %1
  br i1 %8, label %9, label %33

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 19
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.usb_bus, ptr %11, i32 0, i32 6
  %13 = load i8, ptr %12, align 2
  %14 = and i8 %13, 2
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %20 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %21 = load i8, ptr %20, align 8, !range !10
  %22 = icmp eq i8 %21, 0
  %23 = tail call i32 @llvm.bswap.i32(i32 %19) #13
  %24 = select i1 %22, i32 %19, i32 %23
  %25 = or i32 %24, 1024
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %22, label %29, label %26

26:                                               ; preds = %16
  %27 = tail call i32 @llvm.bswap.i32(i32 %25) #13
  %28 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %27) #13, !srcloc !11
  br label %31

29:                                               ; preds = %16
  %30 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %25) #13, !srcloc !11
  br label %31

31:                                               ; preds = %29, %26
  %32 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 4
  store i32 10, ptr %32, align 8
  br label %33

33:                                               ; preds = %31, %9, %2
  %34 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 15
  %35 = load i32, ptr %34, align 4
  switch i32 %35, label %53 [
    i32 1, label %36
    i32 2, label %41
    i32 0, label %48
  ]

36:                                               ; preds = %33
  %37 = tail call i32 @dwc2_enter_partial_power_down(ptr noundef %0) #13
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.4) #14
  br label %53

41:                                               ; preds = %33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #13
  %42 = tail call i32 @dwc2_enter_hibernation(ptr noundef %0, i32 noundef 1) #13
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.5) #14
  br label %46

46:                                               ; preds = %44, %41
  %47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #13
  br label %53

48:                                               ; preds = %33
  %49 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 16
  %50 = load i8, ptr %49, align 8, !range !10
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  tail call void @dwc2_host_enter_clock_gating(ptr noundef %0)
  br label %53

53:                                               ; preds = %52, %48, %46, %39, %36, %33
  %54 = phi i32 [ 0, %33 ], [ 0, %48 ], [ 0, %52 ], [ %42, %46 ], [ %37, %39 ], [ 0, %36 ]
  %55 = phi i32 [ %4, %33 ], [ %4, %48 ], [ %4, %52 ], [ %47, %46 ], [ %4, %39 ], [ %4, %36 ]
  %56 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 19
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.usb_bus, ptr %57, i32 0, i32 6
  %59 = load i8, ptr %58, align 2
  %60 = and i8 %59, 2
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %81, label %62

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %64, i32 3584
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %67 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %68 = load i8, ptr %67, align 8, !range !10
  %69 = icmp eq i8 %68, 0
  %70 = tail call i32 @llvm.bswap.i32(i32 %66) #13
  %71 = select i1 %69, i32 %66, i32 %70
  %72 = and i32 %71, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %69, label %77, label %73

73:                                               ; preds = %62
  %74 = tail call i32 @llvm.bswap.i32(i32 %72) #13
  %75 = load ptr, ptr %63, align 4
  %76 = getelementptr i8, ptr %75, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %74) #13, !srcloc !11
  br label %80

77:                                               ; preds = %62
  %78 = load ptr, ptr %63, align 4
  %79 = getelementptr i8, ptr %78, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %72) #13, !srcloc !11
  br label %80

80:                                               ; preds = %77, %73
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %55) #13
  tail call void @msleep(i32 noundef 200) #13
  br label %82

81:                                               ; preds = %53
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %55) #13
  br label %82

82:                                               ; preds = %81, %80
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_enter_partial_power_down(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_enter_hibernation(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_host_enter_clock_gating(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 1088
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %7 = load i8, ptr %6, align 8, !range !10
  %8 = icmp eq i8 %7, 0
  %9 = tail call i32 @llvm.bswap.i32(i32 %5) #13
  %10 = select i1 %8, i32 %5, i32 %9
  %11 = and i32 %10, -175
  %12 = or i32 %11, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %8, label %17, label %13

13:                                               ; preds = %1
  %14 = tail call i32 @llvm.bswap.i32(i32 %12) #13
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr i8, ptr %15, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #13, !srcloc !11
  br label %20

17:                                               ; preds = %1
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr i8, ptr %18, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %12) #13, !srcloc !11
  br label %20

20:                                               ; preds = %17, %13
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr i8, ptr %21, i32 3584
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %24 = load i8, ptr %6, align 8, !range !10
  %25 = icmp eq i8 %24, 0
  %26 = tail call i32 @llvm.bswap.i32(i32 %23) #13
  %27 = select i1 %25, i32 %23, i32 %26
  %28 = or i32 %27, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %25, label %33, label %29

29:                                               ; preds = %20
  %30 = tail call i32 @llvm.bswap.i32(i32 %28) #13
  %31 = load ptr, ptr %2, align 4
  %32 = getelementptr i8, ptr %31, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #13, !srcloc !11
  br label %36

33:                                               ; preds = %20
  %34 = load ptr, ptr %2, align 4
  %35 = getelementptr i8, ptr %34, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %28) #13, !srcloc !11
  br label %36

36:                                               ; preds = %33, %29
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 1073740) #13
  %38 = load ptr, ptr %2, align 4
  %39 = getelementptr i8, ptr %38, i32 3584
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %41 = load i8, ptr %6, align 8, !range !10
  %42 = icmp eq i8 %41, 0
  %43 = tail call i32 @llvm.bswap.i32(i32 %40) #13
  %44 = select i1 %42, i32 %40, i32 %43
  %45 = or i32 %44, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %42, label %50, label %46

46:                                               ; preds = %36
  %47 = tail call i32 @llvm.bswap.i32(i32 %45) #13
  %48 = load ptr, ptr %2, align 4
  %49 = getelementptr i8, ptr %48, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #13, !srcloc !11
  br label %53

50:                                               ; preds = %36
  %51 = load ptr, ptr %2, align 4
  %52 = getelementptr i8, ptr %51, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %45) #13, !srcloc !11
  br label %53

53:                                               ; preds = %50, %46
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 1073740) #13
  %55 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 9
  store i8 1, ptr %55, align 1
  %56 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 28
  store i32 2, ptr %56, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_port_resume(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 18
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #13
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 15
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %18 [
    i32 1, label %6
    i32 2, label %11
    i32 0, label %16
  ]

6:                                                ; preds = %1
  %7 = tail call i32 @dwc2_exit_partial_power_down(ptr noundef %0, i32 noundef 0, i1 noundef zeroext true) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.6) #14
  br label %18

11:                                               ; preds = %1
  %12 = tail call i32 @dwc2_exit_hibernation(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 1) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.7) #14
  br label %18

16:                                               ; preds = %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #13
  tail call void @dwc2_host_exit_clock_gating(ptr noundef %0, i32 noundef 0)
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #13
  br label %18

18:                                               ; preds = %16, %14, %11, %9, %6, %1
  %19 = phi i32 [ 0, %1 ], [ 0, %16 ], [ %12, %14 ], [ 0, %11 ], [ %7, %9 ], [ 0, %6 ]
  %20 = phi i32 [ %3, %1 ], [ %17, %16 ], [ %3, %14 ], [ %3, %11 ], [ %3, %9 ], [ %3, %6 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %20) #13
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_exit_partial_power_down(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_exit_hibernation(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_host_exit_clock_gating(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 3584
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %7 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %8 = load i8, ptr %7, align 8, !range !10
  %9 = icmp eq i8 %8, 0
  %10 = tail call i32 @llvm.bswap.i32(i32 %6) #13
  %11 = select i1 %9, i32 %6, i32 %10
  %12 = and i32 %11, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %9, label %17, label %13

13:                                               ; preds = %2
  %14 = tail call i32 @llvm.bswap.i32(i32 %12) #13
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr i8, ptr %15, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #13, !srcloc !11
  br label %20

17:                                               ; preds = %2
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr i8, ptr %18, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %12) #13, !srcloc !11
  br label %20

20:                                               ; preds = %17, %13
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 1073740) #13
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr i8, ptr %22, i32 3584
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %25 = load i8, ptr %7, align 8, !range !10
  %26 = icmp eq i8 %25, 0
  %27 = tail call i32 @llvm.bswap.i32(i32 %24) #13
  %28 = select i1 %26, i32 %24, i32 %27
  %29 = and i32 %28, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %26, label %34, label %30

30:                                               ; preds = %20
  %31 = tail call i32 @llvm.bswap.i32(i32 %29) #13
  %32 = load ptr, ptr %3, align 4
  %33 = getelementptr i8, ptr %32, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #13, !srcloc !11
  br label %37

34:                                               ; preds = %20
  %35 = load ptr, ptr %3, align 4
  %36 = getelementptr i8, ptr %35, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %29) #13, !srcloc !11
  br label %37

37:                                               ; preds = %34, %30
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 1073740) #13
  %39 = load ptr, ptr %3, align 4
  %40 = getelementptr i8, ptr %39, i32 1088
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %42 = load i8, ptr %7, align 8, !range !10
  %43 = icmp eq i8 %42, 0
  %44 = tail call i32 @llvm.bswap.i32(i32 %41) #13
  %45 = select i1 %43, i32 %41, i32 %44
  %46 = and i32 %45, -239
  %47 = or i32 %46, 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %43, label %52, label %48

48:                                               ; preds = %37
  %49 = tail call i32 @llvm.bswap.i32(i32 %47) #13
  %50 = load ptr, ptr %3, align 4
  %51 = getelementptr i8, ptr %50, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #13, !srcloc !11
  br label %55

52:                                               ; preds = %37
  %53 = load ptr, ptr %3, align 4
  %54 = getelementptr i8, ptr %53, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %47) #13, !srcloc !11
  br label %55

55:                                               ; preds = %52, %48
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 1073740) #13
  %57 = icmp eq i32 %1, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %55
  tail call void @msleep(i32 noundef 40) #13
  %59 = load ptr, ptr %3, align 4
  %60 = getelementptr i8, ptr %59, i32 1088
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %62 = load i8, ptr %7, align 8, !range !10
  %63 = icmp eq i8 %62, 0
  %64 = tail call i32 @llvm.bswap.i32(i32 %61) #13
  %65 = select i1 %63, i32 %61, i32 %64
  %66 = and i32 %65, -111
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %63, label %71, label %67

67:                                               ; preds = %58
  %68 = tail call i32 @llvm.bswap.i32(i32 %66) #13
  %69 = load ptr, ptr %3, align 4
  %70 = getelementptr i8, ptr %69, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #13, !srcloc !11
  br label %74

71:                                               ; preds = %58
  %72 = load ptr, ptr %3, align 4
  %73 = getelementptr i8, ptr %72, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %66) #13, !srcloc !11
  br label %74

74:                                               ; preds = %71, %67
  %75 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 9
  store i8 0, ptr %75, align 1
  %76 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 28
  store i32 0, ptr %76, align 8
  br label %82

77:                                               ; preds = %55
  %78 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 27
  %79 = load volatile i32, ptr @jiffies, align 64
  %80 = add i32 %79, 8
  %81 = tail call i32 @mod_timer(ptr noundef %78, i32 noundef %80) #13
  br label %82

82:                                               ; preds = %77, %74
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_hcd_get_frame_number(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 1032
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %7 = load i8, ptr %6, align 8, !range !10
  %8 = icmp eq i8 %7, 0
  %9 = tail call i32 @llvm.bswap.i32(i32 %5) #13
  %10 = select i1 %8, i32 %5, i32 %9
  %11 = and i32 %10, 65535
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_hcd_get_future_frame_number(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 1088
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %7 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %8 = load i8, ptr %7, align 8, !range !10
  %9 = icmp eq i8 %8, 0
  %10 = shl i32 %6, 8
  %11 = select i1 %9, i32 %6, i32 %10
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i8, ptr %12, i32 1028
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %15 = load i8, ptr %7, align 8, !range !10
  %16 = icmp eq i8 %15, 0
  %17 = tail call i32 @llvm.bswap.i32(i32 %14) #13
  %18 = select i1 %16, i32 %14, i32 %17
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr i8, ptr %19, i32 1032
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %22 = load i8, ptr %7, align 8, !range !10
  %23 = icmp eq i8 %22, 0
  %24 = tail call i32 @llvm.bswap.i32(i32 %21) #13
  %25 = select i1 %23, i32 %21, i32 %24
  %26 = and i32 %11, 393216
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 125, i32 1000
  %29 = lshr i32 %25, 16
  %30 = and i32 %18, 65535
  %31 = mul i32 %30, %1
  %32 = add nsw i32 %28, -1
  %33 = add i32 %32, %31
  %34 = udiv i32 %33, %28
  %35 = add nuw nsw i32 %34, %30
  %36 = sub nsw i32 %35, %29
  %37 = udiv i32 %36, %30
  %38 = add i32 %37, %25
  %39 = and i32 %38, 16383
  ret i32 %39
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @dwc2_hcd_is_b_host(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 5
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @dwc2_hcd_dump_state(ptr nocapture %0) local_unnamed_addr #5 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dwc2_host_get_tt_info(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %44, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 9
  %12 = load i32, ptr %11, align 8
  store i32 %12, ptr %3, align 4
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.usb_tt, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %40

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.usb_tt, ptr %15, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %15, align 4
  %25 = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 35
  %26 = load i32, ptr %25, align 4
  %27 = shl i32 %26, 3
  %28 = add i32 %27, 8
  br label %29

29:                                               ; preds = %23, %19
  %30 = phi i32 [ %28, %23 ], [ 16, %19 ]
  %31 = or i32 %2, 256
  %32 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %30, i32 noundef %31) #15
  %33 = icmp eq ptr %32, null
  br i1 %33, label %44, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr %5, align 4
  %36 = getelementptr inbounds %struct.usb_device, ptr %35, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.dwc2_tt, ptr %32, i32 0, i32 1
  store ptr %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.usb_tt, ptr %37, i32 0, i32 3
  store ptr %32, ptr %39, align 4
  br label %40

40:                                               ; preds = %34, %10
  %41 = phi ptr [ %17, %10 ], [ %32, %34 ]
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 4
  br label %44

44:                                               ; preds = %40, %29, %4
  %45 = phi ptr [ %41, %40 ], [ null, %4 ], [ null, %29 ]
  ret ptr %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_host_put_tt_info(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 4
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %7, label %9, !prof !12

7:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 4094, i32 noundef 9, ptr noundef null) #13
  %8 = load i32, ptr %1, align 4
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi i32 [ %8, %7 ], [ %5, %4 ]
  %11 = add i32 %10, -1
  store i32 %11, ptr %1, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.dwc2_tt, ptr %1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.usb_tt, ptr %15, i32 0, i32 3
  store ptr null, ptr %16, align 4
  tail call void @kfree(ptr noundef nonnull %1) #13
  br label %17

17:                                               ; preds = %13, %9, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @dwc2_host_get_speed(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_host_complete(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %97, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.dwc2_qtd, ptr %1, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %97, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %97, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %7, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 20
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 10
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %17, 1073741824
  br i1 %18, label %19, label %40

19:                                               ; preds = %12
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %20, i32 0, i32 9
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 26
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 24
  %25 = load i32, ptr %24, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %27, %19
  %28 = phi i32 [ %37, %27 ], [ 0, %19 ]
  %29 = load ptr, ptr %6, align 4
  %30 = getelementptr %struct.dwc2_hcd_urb, ptr %29, i32 0, i32 14, i32 %28, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr %struct.urb, ptr %10, i32 0, i32 29, i32 %28, i32 2
  store i32 %31, ptr %32, align 4
  %33 = load ptr, ptr %6, align 4
  %34 = getelementptr %struct.dwc2_hcd_urb, ptr %33, i32 0, i32 14, i32 %28, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr %struct.urb, ptr %10, i32 0, i32 29, i32 %28, i32 3
  store i32 %35, ptr %36, align 4
  %37 = add nuw nsw i32 %28, 1
  %38 = load i32, ptr %24, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %27, label %40

40:                                               ; preds = %27, %19, %12
  %41 = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 12
  store i32 %2, ptr %41, align 4
  %42 = icmp eq i32 %2, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 13
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = load i32, ptr %15, align 4
  %50 = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 19
  %51 = load i32, ptr %50, align 4
  %52 = icmp ult i32 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 -121, ptr %41, align 4
  br label %54

54:                                               ; preds = %53, %48, %43, %40
  %55 = and i32 %17, -1073741824
  %56 = icmp eq i32 %55, 1073741824
  %57 = or i1 %18, %56
  br i1 %57, label %58, label %91

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 9
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %91, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 19
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.usb_host_endpoint, ptr %60, i32 0, i32 5
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 751, i32 noundef 9, ptr noundef null) #13
  br label %73

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.dwc2_qh, ptr %66, i32 0, i32 11
  %71 = load i16, ptr %70, align 8
  %72 = zext i16 %71 to i32
  br label %73

73:                                               ; preds = %69, %68
  %74 = phi i32 [ %72, %69 ], [ 0, %68 ]
  %75 = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 25
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = sdiv i32 %74, %76
  %80 = getelementptr inbounds %struct.usb_bus, ptr %64, i32 0, i32 13
  %81 = load i32, ptr %80, align 4
  %82 = sub i32 %81, %79
  store i32 %82, ptr %80, align 4
  br label %83

83:                                               ; preds = %78, %73
  %84 = load i32, ptr %16, align 4
  %85 = icmp ult i32 %84, 1073741824
  %86 = getelementptr inbounds %struct.usb_bus, ptr %64, i32 0, i32 14
  %87 = getelementptr inbounds %struct.usb_bus, ptr %64, i32 0, i32 15
  %88 = select i1 %85, ptr %87, ptr %86
  %89 = load i32, ptr %88, align 4
  %90 = add i32 %89, -1
  store i32 %90, ptr %88, align 4
  br label %91

91:                                               ; preds = %83, %58, %54
  %92 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 19
  %93 = load ptr, ptr %92, align 8
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %93, ptr noundef nonnull %10) #13
  %94 = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 2
  store ptr null, ptr %94, align 4
  %95 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %95) #13
  store ptr null, ptr %6, align 4
  %96 = load ptr, ptr %92, align 8
  tail call void @usb_hcd_giveback_urb(ptr noundef %96, ptr noundef nonnull %10, i32 noundef %2) #13
  br label %97

97:                                               ; preds = %91, %9, %5, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_unlink_urb_from_ep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_giveback_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_hcd_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 -16
  %4 = tail call i32 @usb_disabled() #13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %226

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 1024
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %11 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 49
  store i16 16383, ptr %11, align 8
  %12 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 31
  %13 = load i8, ptr %12, align 2, !range !10
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %6
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 16
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.9) #14
  store i8 0, ptr %12, align 2
  %21 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 32
  store i8 0, ptr %21, align 1
  br label %33

22:                                               ; preds = %15
  %23 = tail call i32 @dma_set_mask(ptr noundef %16, i64 noundef 4294967295) #13
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.10) #14
  br label %27

27:                                               ; preds = %25, %22
  %28 = load ptr, ptr %0, align 8
  %29 = tail call i32 @dma_set_coherent_mask(ptr noundef %28, i64 noundef 4294967295) #13
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.11) #14
  br label %33

33:                                               ; preds = %31, %27, %20, %6
  %34 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 46
  %35 = load i8, ptr %34, align 4, !range !10
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store ptr @dwc2_free_dev, ptr getelementptr inbounds (%struct.hc_driver, ptr @dwc2_hc_driver, i32 0, i32 28), align 4
  store ptr @dwc2_reset_device, ptr getelementptr inbounds (%struct.hc_driver, ptr @dwc2_hc_driver, i32 0, i32 38), align 4
  br label %38

38:                                               ; preds = %37, %33
  %39 = load i8, ptr %12, align 2, !range !10
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, ptr getelementptr inbounds (%struct.hc_driver, ptr @dwc2_hc_driver, i32 0, i32 4), align 4
  %43 = or i32 %42, 2
  store i32 %43, ptr getelementptr inbounds (%struct.hc_driver, ptr @dwc2_hc_driver, i32 0, i32 4), align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load ptr, ptr %0, align 8
  %46 = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load ptr, ptr %45, align 4
  br label %51

51:                                               ; preds = %49, %44
  %52 = phi ptr [ %50, %49 ], [ %47, %44 ]
  %53 = tail call ptr @usb_create_hcd(ptr noundef nonnull @dwc2_hc_driver, ptr noundef %45, ptr noundef %52) #13
  %54 = icmp eq ptr %53, null
  br i1 %54, label %223, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.usb_hcd, ptr %53, i32 0, i32 14
  %57 = load i16, ptr %56, align 8
  %58 = or i16 %57, 128
  store i16 %58, ptr %56, align 8
  %59 = tail call ptr @platform_get_resource(ptr noundef %3, i32 noundef 512, i32 noundef 0) #13
  %60 = icmp eq ptr %59, null
  br i1 %60, label %223, label %61

61:                                               ; preds = %55
  %62 = load i32, ptr %59, align 4
  %63 = getelementptr inbounds %struct.usb_hcd, ptr %53, i32 0, i32 17
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.resource, ptr %59, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = load i32, ptr %59, align 4
  %67 = add i32 %65, 1
  %68 = sub i32 %67, %66
  %69 = getelementptr inbounds %struct.usb_hcd, ptr %53, i32 0, i32 18
  store i32 %68, ptr %69, align 8
  %70 = getelementptr inbounds %struct.usb_hcd, ptr %53, i32 0, i32 29
  store ptr %0, ptr %70, align 8
  %71 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 19
  store ptr %53, ptr %71, align 8
  tail call void @dwc2_disable_global_interrupts(ptr noundef %0) #13
  %72 = tail call i32 @dwc2_core_init(ptr noundef %0, i1 noundef zeroext true)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %221

74:                                               ; preds = %61
  %75 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.12, i32 noundef 655362, i32 noundef 1) #13
  %76 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 25
  store ptr %75, ptr %76, align 8
  %77 = icmp eq ptr %75, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.13) #14
  br label %221

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 26
  store i32 -32, ptr %81, align 4
  %82 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 26, i32 1
  store volatile ptr %82, ptr %82, align 4
  %83 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 26, i32 1, i32 1
  store ptr %82, ptr %83, align 4
  %84 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 26, i32 2
  store ptr @dwc2_conn_id_status_change, ptr %84, align 4
  %85 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 27
  tail call void @init_timer_key(ptr noundef %85, ptr noundef nonnull @dwc2_wakeup_detected, i32 noundef 0, ptr noundef null, ptr noundef null) #13
  %86 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 36
  store volatile ptr %86, ptr %86, align 4
  %87 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 36, i32 1
  store ptr %86, ptr %87, align 4
  %88 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 37
  store volatile ptr %88, ptr %88, align 4
  %89 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 37, i32 1
  store ptr %88, ptr %89, align 4
  %90 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 38
  store volatile ptr %90, ptr %90, align 4
  %91 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 38, i32 1
  store ptr %90, ptr %91, align 4
  %92 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 40
  store volatile ptr %92, ptr %92, align 4
  %93 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 40, i32 1
  store ptr %92, ptr %93, align 4
  %94 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 41
  store volatile ptr %94, ptr %94, align 4
  %95 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 41, i32 1
  store ptr %94, ptr %95, align 4
  %96 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 42
  store volatile ptr %96, ptr %96, align 4
  %97 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 42, i32 1
  store ptr %96, ptr %97, align 4
  %98 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 43
  store volatile ptr %98, ptr %98, align 4
  %99 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 43, i32 1
  store ptr %98, ptr %99, align 4
  %100 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 44
  store volatile ptr %100, ptr %100, align 4
  %101 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 44, i32 1
  store ptr %100, ptr %101, align 4
  %102 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 50
  store volatile ptr %102, ptr %102, align 4
  %103 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 50, i32 1
  store ptr %102, ptr %103, align 4
  %104 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 37
  %105 = load i8, ptr %104, align 8
  %106 = zext i8 %105 to i32
  %107 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 54
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(64) %107, i8 0, i32 64, i1 false)
  %108 = icmp eq i8 %105, 0
  br i1 %108, label %121, label %109

109:                                              ; preds = %114, %80
  %110 = phi i32 [ %119, %114 ], [ 0, %80 ]
  %111 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %112 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %111, i32 noundef 3520, i32 noundef 80) #16
  %113 = icmp eq ptr %112, null
  br i1 %113, label %219, label %114

114:                                              ; preds = %109
  %115 = trunc i32 %110 to i8
  store i8 %115, ptr %112, align 8
  %116 = getelementptr inbounds %struct.dwc2_host_chan, ptr %112, i32 0, i32 28
  store volatile ptr %116, ptr %116, align 8
  %117 = getelementptr inbounds %struct.dwc2_host_chan, ptr %112, i32 0, i32 28, i32 1
  store ptr %116, ptr %117, align 4
  %118 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 54, i32 %110
  store ptr %112, ptr %118, align 4
  %119 = add nuw nsw i32 %110, 1
  %120 = icmp eq i32 %119, %106
  br i1 %120, label %121, label %109

121:                                              ; preds = %114, %80
  %122 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 57
  store i32 -32, ptr %122, align 8
  %123 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 57, i32 0, i32 1
  store volatile ptr %123, ptr %123, align 4
  %124 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 57, i32 0, i32 1, i32 1
  store ptr %123, ptr %124, align 4
  %125 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 57, i32 0, i32 2
  store ptr @dwc2_hcd_start_func, ptr %125, align 4
  %126 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 57, i32 1
  tail call void @init_timer_key(ptr noundef %126, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #13
  %127 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 58
  store i32 -32, ptr %127, align 4
  %128 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 58, i32 0, i32 1
  store volatile ptr %128, ptr %128, align 4
  %129 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 58, i32 0, i32 1, i32 1
  store ptr %128, ptr %129, align 4
  %130 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 58, i32 0, i32 2
  store ptr @dwc2_hcd_reset_func, ptr %130, align 4
  %131 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 58, i32 1
  tail call void @init_timer_key(ptr noundef %131, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #13
  %132 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 59
  store i32 -32, ptr %132, align 8
  %133 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 59, i32 1
  store volatile ptr %133, ptr %133, align 4
  %134 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 59, i32 1, i32 1
  store ptr %133, ptr %134, align 4
  %135 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 59, i32 2
  store ptr @dwc2_hcd_phy_reset_func, ptr %135, align 4
  %136 = load i8, ptr %12, align 2, !range !10
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %121
  %139 = load ptr, ptr %0, align 8
  %140 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 56
  %141 = tail call ptr @dma_alloc_attrs(ptr noundef %139, i32 noundef 64, ptr noundef %140, i32 noundef 3264, i32 noundef 0) #13
  br label %145

142:                                              ; preds = %121
  %143 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %144 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %143, i32 noundef 3520, i32 noundef 64) #16
  br label %145

145:                                              ; preds = %142, %138
  %146 = phi ptr [ %144, %142 ], [ %141, %138 ]
  %147 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 55
  store ptr %146, ptr %147, align 8
  %148 = icmp eq ptr %146, null
  br i1 %148, label %219, label %149

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 32
  %151 = load i8, ptr %150, align 1, !range !10
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 33
  %155 = load i8, ptr %154, align 4, !range !10
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %172, label %157

157:                                              ; preds = %153, %149
  %158 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.14, i32 noundef 512, i32 noundef 512, i32 noundef 16384, ptr noundef null) #13
  %159 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 64
  store ptr %158, ptr %159, align 8
  %160 = icmp eq ptr %158, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %157
  %162 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %162, ptr noundef nonnull @.str.15) #14
  store i8 0, ptr %150, align 1
  %163 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 33
  store i8 0, ptr %163, align 4
  br label %164

164:                                              ; preds = %161, %157
  %165 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.16, i32 noundef 2048, i32 noundef 512, i32 noundef 0, ptr noundef null) #13
  %166 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 65
  store ptr %165, ptr %166, align 4
  %167 = icmp eq ptr %165, null
  br i1 %167, label %168, label %172

168:                                              ; preds = %164
  %169 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %169, ptr noundef nonnull @.str.17) #14
  %170 = load ptr, ptr %159, align 8
  tail call void @kmem_cache_destroy(ptr noundef %170) #13
  store i8 0, ptr %150, align 1
  %171 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 33
  store i8 0, ptr %171, align 4
  br label %172

172:                                              ; preds = %168, %164, %153
  %173 = load i8, ptr %12, align 2, !range !10
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %181, label %175

175:                                              ; preds = %172
  %176 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.18, i32 noundef 1024, i32 noundef 4, i32 noundef 16384, ptr noundef null) #13
  %177 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 66
  store ptr %176, ptr %177, align 8
  %178 = icmp eq ptr %176, null
  br i1 %178, label %179, label %181

179:                                              ; preds = %175
  %180 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %180, ptr noundef nonnull @.str.19) #14
  br label %181

181:                                              ; preds = %179, %175, %172
  %182 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 60
  store i8 1, ptr %182, align 8
  %183 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 61
  store ptr null, ptr %183, align 4
  %184 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 62
  store i32 0, ptr %184, align 8
  %185 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 47
  store i16 0, ptr %185, align 4
  %186 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 28
  store i32 3, ptr %186, align 8
  %187 = getelementptr inbounds %struct.usb_bus, ptr %53, i32 0, i32 5
  store i8 1, ptr %187, align 1
  %188 = getelementptr inbounds %struct.usb_bus, ptr %53, i32 0, i32 7
  store i32 0, ptr %188, align 4
  %189 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 13
  %190 = load ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, null
  %192 = icmp ugt ptr %190, inttoptr (i32 -4096 to ptr)
  %193 = or i1 %191, %192
  br i1 %193, label %204, label %194

194:                                              ; preds = %181
  %195 = getelementptr inbounds %struct.usb_phy, ptr %190, i32 0, i32 5
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %204, label %198

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.usb_otg, ptr %196, i32 0, i32 6
  %200 = load ptr, ptr %199, align 4
  %201 = icmp eq ptr %200, null
  br i1 %201, label %204, label %202

202:                                              ; preds = %198
  %203 = tail call i32 %200(ptr noundef nonnull %196, ptr noundef nonnull %53) #13
  br label %204

204:                                              ; preds = %202, %198, %194, %181
  %205 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 20
  %206 = load i32, ptr %205, align 4
  %207 = tail call i32 @usb_add_hcd(ptr noundef nonnull %53, i32 noundef %206, i32 noundef 128) #13
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %204
  %210 = load ptr, ptr %53, align 8
  %211 = tail call i32 @device_wakeup_enable(ptr noundef %210) #13
  tail call void @dwc2_enable_global_interrupts(ptr noundef %0) #13
  br label %226

212:                                              ; preds = %204
  %213 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 66
  %214 = load ptr, ptr %213, align 8
  tail call void @kmem_cache_destroy(ptr noundef %214) #13
  %215 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 65
  %216 = load ptr, ptr %215, align 4
  tail call void @kmem_cache_destroy(ptr noundef %216) #13
  %217 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 64
  %218 = load ptr, ptr %217, align 8
  tail call void @kmem_cache_destroy(ptr noundef %218) #13
  br label %219

219:                                              ; preds = %212, %145, %109
  %220 = phi i32 [ %207, %212 ], [ -12, %145 ], [ -12, %109 ]
  tail call fastcc void @dwc2_hcd_release(ptr noundef %0)
  br label %221

221:                                              ; preds = %219, %78, %61
  %222 = phi i32 [ %72, %61 ], [ %220, %219 ], [ -12, %78 ]
  tail call void @usb_put_hcd(ptr noundef nonnull %53) #13
  br label %223

223:                                              ; preds = %221, %55, %51
  %224 = phi i32 [ %222, %221 ], [ -12, %51 ], [ -22, %55 ]
  %225 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %225, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.dwc2_hcd_init, i32 noundef %224) #14
  br label %226

226:                                              ; preds = %223, %209, %1
  %227 = phi i32 [ %224, %223 ], [ 0, %209 ], [ -19, %1 ]
  ret i32 %227
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwc2_free_dev(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 3, i32 46
  %6 = load i8, ptr %5, align 4, !range !10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, -1
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.34) #14
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr inbounds %struct.dwc2_hsotg, ptr %19, i32 0, i32 3, i32 2
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  store i8 0, ptr %20, align 1
  %24 = getelementptr inbounds %struct.dwc2_hsotg, ptr %19, i32 0, i32 25
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.dwc2_hsotg, ptr %19, i32 0, i32 26
  %27 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %25, ptr noundef %26) #13
  br label %28

28:                                               ; preds = %23, %17, %12, %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc2_reset_device(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 3, i32 46
  %6 = load i8, ptr %5, align 4, !range !10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %31, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %31 [
    i32 3, label %11
    i32 2, label %18
    i32 1, label %18
  ]

11:                                               ; preds = %8
  %12 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.56) #14
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr inbounds %struct.dwc2_hsotg, ptr %13, i32 0, i32 3, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %11
  store i8 0, ptr %14, align 1
  br label %25

18:                                               ; preds = %8, %8
  %19 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.57) #14
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr inbounds %struct.dwc2_hsotg, ptr %20, i32 0, i32 3, i32 2
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 1
  br i1 %23, label %31, label %24

24:                                               ; preds = %18
  store i8 1, ptr %21, align 1
  br label %25

25:                                               ; preds = %24, %17
  %26 = phi ptr [ %20, %24 ], [ %13, %17 ]
  %27 = getelementptr inbounds %struct.dwc2_hsotg, ptr %26, i32 0, i32 25
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.dwc2_hsotg, ptr %26, i32 0, i32 26
  %30 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %28, ptr noundef %29) #13
  br label %31

31:                                               ; preds = %25, %18, %11, %8, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_disable_global_interrupts(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwc2_conn_id_status_change(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -348
  %3 = getelementptr i8, ptr %0, i32 -344
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %6 = getelementptr i8, ptr %0, i32 660
  %7 = load i8, ptr %6, align 8, !range !10
  %8 = icmp eq i8 %7, 0
  %9 = shl i32 %5, 8
  %10 = select i1 %8, i32 %5, i32 %9
  %11 = and i32 %10, 65536
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %40, %1
  %14 = phi i32 [ 0, %1 ], [ %30, %40 ]
  br label %81

15:                                               ; preds = %1
  %16 = getelementptr i8, ptr %0, i32 -40
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @regulator_disable(ptr noundef nonnull %17) #13
  br label %21

21:                                               ; preds = %19, %15
  %22 = getelementptr i8, ptr %0, i32 -83
  %23 = load i8, ptr %22, align 1, !range !10
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.58) #14
  %27 = tail call i32 @dwc2_port_resume(ptr noundef %2)
  br label %28

28:                                               ; preds = %25, %21
  br label %29

29:                                               ; preds = %60, %28
  %30 = phi i32 [ %61, %60 ], [ 0, %28 ]
  %31 = load ptr, ptr %3, align 4
  %32 = getelementptr i8, ptr %31, i32 20
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %34 = load i8, ptr %6, align 8, !range !10
  %35 = icmp eq i8 %34, 0
  %36 = lshr i32 %33, 24
  %37 = select i1 %35, i32 %33, i32 %36
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %65, label %40

40:                                               ; preds = %29
  %41 = load ptr, ptr %2, align 8
  %42 = load ptr, ptr %3, align 4
  %43 = getelementptr i8, ptr %42, i32 20
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %45 = load i8, ptr %6, align 8, !range !10
  %46 = icmp eq i8 %45, 0
  %47 = lshr i32 %44, 24
  %48 = select i1 %46, i32 %44, i32 %47
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, ptr @.str.61, ptr @.str.60
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.59, ptr noundef nonnull %51) #14
  tail call void @msleep(i32 noundef 20) #13
  %52 = load ptr, ptr %3, align 4
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %54 = load i8, ptr %6, align 8, !range !10
  %55 = icmp eq i8 %54, 0
  %56 = shl i32 %53, 8
  %57 = select i1 %55, i32 %53, i32 %56
  %58 = and i32 %57, 65536
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %13, label %60

60:                                               ; preds = %40
  %61 = add nuw nsw i32 %30, 1
  %62 = icmp eq i32 %61, 251
  br i1 %62, label %63, label %29

63:                                               ; preds = %60
  %64 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.62) #14
  br label %65

65:                                               ; preds = %63, %29
  %66 = getelementptr i8, ptr %0, i32 -84
  %67 = load i8, ptr %66, align 8
  %68 = and i8 %67, 16
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %65
  %71 = getelementptr i8, ptr %0, i32 36
  %72 = load i32, ptr %71, align 8
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = tail call i32 @dwc2_exit_partial_power_down(ptr noundef %2, i32 noundef 0, i1 noundef zeroext false) #13
  br label %76

76:                                               ; preds = %74, %70, %65
  %77 = getelementptr i8, ptr %0, i32 -100
  store i32 3, ptr %77, align 8
  %78 = tail call i32 @dwc2_core_init(ptr noundef %2, i1 noundef zeroext false)
  tail call void @dwc2_enable_global_interrupts(ptr noundef %2) #13
  %79 = getelementptr i8, ptr %0, i32 -32
  %80 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %79) #13
  tail call void @dwc2_hsotg_core_init_disconnected(ptr noundef %2, i1 noundef zeroext false) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %79, i32 noundef %80) #13
  tail call void @dwc2_enable_acg(ptr noundef %2) #13
  tail call void @dwc2_hsotg_core_connect(ptr noundef %2) #13
  br label %137

81:                                               ; preds = %92, %13
  %82 = phi i32 [ %104, %92 ], [ %14, %13 ]
  %83 = load ptr, ptr %3, align 4
  %84 = getelementptr i8, ptr %83, i32 20
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %86 = load i8, ptr %6, align 8, !range !10
  %87 = icmp eq i8 %86, 0
  %88 = lshr i32 %85, 24
  %89 = select i1 %87, i32 %85, i32 %88
  %90 = and i32 %89, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %81
  %93 = load ptr, ptr %2, align 8
  %94 = load ptr, ptr %3, align 4
  %95 = getelementptr i8, ptr %94, i32 20
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %97 = load i8, ptr %6, align 8, !range !10
  %98 = icmp eq i8 %97, 0
  %99 = lshr i32 %96, 24
  %100 = select i1 %98, i32 %96, i32 %99
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  %103 = select i1 %102, ptr @.str.61, ptr @.str.60
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %93, ptr noundef nonnull @.str.63, ptr noundef nonnull %103) #14
  tail call void @msleep(i32 noundef 20) #13
  %104 = add nuw nsw i32 %82, 1
  %105 = icmp eq i32 %104, 251
  br i1 %105, label %106, label %81

106:                                              ; preds = %92
  %107 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.62) #14
  br label %108

108:                                              ; preds = %106, %81
  %109 = getelementptr i8, ptr %0, i32 -32
  %110 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %109) #13
  tail call void @dwc2_hsotg_disconnect(ptr noundef %2) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %109, i32 noundef %110) #13
  %111 = getelementptr i8, ptr %0, i32 -100
  store i32 9, ptr %111, align 8
  %112 = tail call i32 @dwc2_core_init(ptr noundef %2, i1 noundef zeroext false)
  tail call void @dwc2_enable_global_interrupts(ptr noundef %2) #13
  %113 = load i32, ptr %111, align 8
  %114 = icmp eq i32 %113, 5
  br i1 %114, label %115, label %132

115:                                              ; preds = %108
  %116 = load ptr, ptr %3, align 4
  %117 = getelementptr i8, ptr %116, i32 1088
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %117) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %119 = load i8, ptr %6, align 8, !range !10
  %120 = icmp eq i8 %119, 0
  %121 = tail call i32 @llvm.bswap.i32(i32 %118) #13
  %122 = select i1 %120, i32 %118, i32 %121
  %123 = and i32 %122, -303
  %124 = or i32 %123, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %120, label %129, label %125

125:                                              ; preds = %115
  %126 = tail call i32 @llvm.bswap.i32(i32 %124) #13
  %127 = load ptr, ptr %3, align 4
  %128 = getelementptr i8, ptr %127, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %126) #13, !srcloc !11
  br label %132

129:                                              ; preds = %115
  %130 = load ptr, ptr %3, align 4
  %131 = getelementptr i8, ptr %130, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %124) #13, !srcloc !11
  br label %132

132:                                              ; preds = %129, %125, %108
  %133 = getelementptr i8, ptr %0, i32 -4
  %134 = load ptr, ptr %133, align 8
  %135 = getelementptr i8, ptr %0, i32 940
  %136 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %134, ptr noundef %135, i32 noundef 5) #13
  br label %137

137:                                              ; preds = %132, %76
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwc2_wakeup_detected(ptr nocapture noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -360
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 1088
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %6 = getelementptr i8, ptr %0, i32 644
  %7 = load i8, ptr %6, align 8, !range !10
  %8 = icmp eq i8 %7, 0
  %9 = tail call i32 @llvm.bswap.i32(i32 %5) #13
  %10 = select i1 %8, i32 %5, i32 %9
  %11 = and i32 %10, -111
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %8, label %16, label %12

12:                                               ; preds = %1
  %13 = tail call i32 @llvm.bswap.i32(i32 %11) #13
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr i8, ptr %14, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #13, !srcloc !11
  br label %19

16:                                               ; preds = %1
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr i8, ptr %17, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %11) #13, !srcloc !11
  br label %19

19:                                               ; preds = %16, %12
  %20 = getelementptr i8, ptr %0, i32 -99
  %21 = load i8, ptr %20, align 1, !range !10
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %0, i32 648
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %25, 16
  store i32 %26, ptr %24, align 4
  %27 = getelementptr i8, ptr %0, i32 -44
  %28 = load ptr, ptr %27, align 8
  tail call void @usb_hcd_resume_root_hub(ptr noundef %28) #13
  br label %29

29:                                               ; preds = %23, %19
  %30 = getelementptr i8, ptr %0, i32 20
  %31 = load i32, ptr %30, align 8
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %0, i32 648
  %35 = load i32, ptr %34, align 4
  %36 = or i32 %35, 64
  store i32 %36, ptr %34, align 4
  br label %37

37:                                               ; preds = %33, %29
  store i8 0, ptr %20, align 1
  store i32 0, ptr %30, align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwc2_hcd_start_func(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -968
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %0, i32 -1040
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 5
  %7 = getelementptr inbounds %struct.usb_bus, ptr %3, i32 0, i32 6
  %8 = zext i1 %6 to i8
  %9 = load i8, ptr %7, align 2
  %10 = and i8 %9, -2
  %11 = or i8 %10, %8
  store i8 %11, ptr %7, align 2
  %12 = tail call i32 @_dwc2_hcd_start(ptr noundef %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwc2_hcd_reset_func(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1016
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #13
  %4 = getelementptr i8, ptr %0, i32 -1328
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1088
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %8 = getelementptr i8, ptr %0, i32 -324
  %9 = load i8, ptr %8, align 8, !range !10
  %10 = icmp eq i8 %9, 0
  %11 = tail call i32 @llvm.bswap.i32(i32 %7) #13
  %12 = select i1 %10, i32 %7, i32 %11
  %13 = and i32 %12, -303
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %10, label %18, label %14

14:                                               ; preds = %1
  %15 = tail call i32 @llvm.bswap.i32(i32 %13) #13
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr i8, ptr %16, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #13, !srcloc !11
  br label %21

18:                                               ; preds = %1
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr i8, ptr %19, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %13) #13, !srcloc !11
  br label %21

21:                                               ; preds = %18, %14
  %22 = getelementptr i8, ptr %0, i32 -320
  %23 = load i32, ptr %22, align 4
  %24 = or i32 %23, 4
  store i32 %24, ptr %22, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwc2_hcd_phy_reset_func(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1104
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @phy_reset(ptr noundef %3) #13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -1376
  %8 = load ptr, ptr %7, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.64) #14
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_enable_global_interrupts(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_hcd_release(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 24
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %7 = load i8, ptr %6, align 8, !range !10
  %8 = icmp eq i8 %7, 0
  %9 = tail call i32 @llvm.bswap.i32(i32 %5) #13
  %10 = select i1 %8, i32 %5, i32 %9
  %11 = and i32 %10, -654311465
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %8, label %16, label %12

12:                                               ; preds = %1
  %13 = tail call i32 @llvm.bswap.i32(i32 %11) #13
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr i8, ptr %14, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #13, !srcloc !11
  br label %19

16:                                               ; preds = %1
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr i8, ptr %17, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %11) #13, !srcloc !11
  br label %19

19:                                               ; preds = %16, %12
  %20 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 36
  tail call fastcc void @dwc2_qh_list_free(ptr noundef %0, ptr noundef %20) #13
  %21 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 37
  tail call fastcc void @dwc2_qh_list_free(ptr noundef %0, ptr noundef %21) #13
  %22 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 38
  tail call fastcc void @dwc2_qh_list_free(ptr noundef %0, ptr noundef %22) #13
  %23 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 40
  tail call fastcc void @dwc2_qh_list_free(ptr noundef %0, ptr noundef %23) #13
  %24 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 41
  tail call fastcc void @dwc2_qh_list_free(ptr noundef %0, ptr noundef %24) #13
  %25 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 42
  tail call fastcc void @dwc2_qh_list_free(ptr noundef %0, ptr noundef %25) #13
  %26 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 43
  tail call fastcc void @dwc2_qh_list_free(ptr noundef %0, ptr noundef %26) #13
  %27 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 54, i32 0
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  store ptr null, ptr %27, align 4
  tail call void @kfree(ptr noundef nonnull %28) #13
  br label %31

31:                                               ; preds = %30, %19
  %32 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 54, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store ptr null, ptr %32, align 4
  tail call void @kfree(ptr noundef nonnull %33) #13
  br label %36

36:                                               ; preds = %35, %31
  %37 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 54, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store ptr null, ptr %37, align 4
  tail call void @kfree(ptr noundef nonnull %38) #13
  br label %41

41:                                               ; preds = %40, %36
  %42 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 54, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store ptr null, ptr %42, align 4
  tail call void @kfree(ptr noundef nonnull %43) #13
  br label %46

46:                                               ; preds = %45, %41
  %47 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 54, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  store ptr null, ptr %47, align 4
  tail call void @kfree(ptr noundef nonnull %48) #13
  br label %51

51:                                               ; preds = %50, %46
  %52 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 54, i32 5
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  store ptr null, ptr %52, align 4
  tail call void @kfree(ptr noundef nonnull %53) #13
  br label %56

56:                                               ; preds = %55, %51
  %57 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 54, i32 6
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  store ptr null, ptr %57, align 4
  tail call void @kfree(ptr noundef nonnull %58) #13
  br label %61

61:                                               ; preds = %60, %56
  %62 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 54, i32 7
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  store ptr null, ptr %62, align 4
  tail call void @kfree(ptr noundef nonnull %63) #13
  br label %66

66:                                               ; preds = %65, %61
  %67 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 54, i32 8
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  store ptr null, ptr %67, align 4
  tail call void @kfree(ptr noundef nonnull %68) #13
  br label %71

71:                                               ; preds = %70, %66
  %72 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 54, i32 9
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  store ptr null, ptr %72, align 4
  tail call void @kfree(ptr noundef nonnull %73) #13
  br label %76

76:                                               ; preds = %75, %71
  %77 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 54, i32 10
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  store ptr null, ptr %77, align 4
  tail call void @kfree(ptr noundef nonnull %78) #13
  br label %81

81:                                               ; preds = %80, %76
  %82 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 54, i32 11
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  store ptr null, ptr %82, align 4
  tail call void @kfree(ptr noundef nonnull %83) #13
  br label %86

86:                                               ; preds = %85, %81
  %87 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 54, i32 12
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  store ptr null, ptr %87, align 4
  tail call void @kfree(ptr noundef nonnull %88) #13
  br label %91

91:                                               ; preds = %90, %86
  %92 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 54, i32 13
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  store ptr null, ptr %92, align 4
  tail call void @kfree(ptr noundef nonnull %93) #13
  br label %96

96:                                               ; preds = %95, %91
  %97 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 54, i32 14
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %96
  store ptr null, ptr %97, align 4
  tail call void @kfree(ptr noundef nonnull %98) #13
  br label %101

101:                                              ; preds = %100, %96
  %102 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 54, i32 15
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  store ptr null, ptr %102, align 4
  tail call void @kfree(ptr noundef nonnull %103) #13
  br label %106

106:                                              ; preds = %105, %101
  %107 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 31
  %108 = load i8, ptr %107, align 2, !range !10
  %109 = icmp eq i8 %108, 0
  %110 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 55
  %111 = load ptr, ptr %110, align 8
  br i1 %109, label %118, label %112

112:                                              ; preds = %106
  %113 = icmp eq ptr %111, null
  br i1 %113, label %120, label %114

114:                                              ; preds = %112
  %115 = load ptr, ptr %0, align 8
  %116 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 56
  %117 = load i32, ptr %116, align 4
  tail call void @dma_free_attrs(ptr noundef %115, i32 noundef 64, ptr noundef nonnull %111, i32 noundef %117, i32 noundef 0) #13
  br label %119

118:                                              ; preds = %106
  tail call void @kfree(ptr noundef %111) #13
  br label %119

119:                                              ; preds = %118, %114
  store ptr null, ptr %110, align 8
  br label %120

120:                                              ; preds = %119, %112
  %121 = load ptr, ptr %2, align 4
  %122 = getelementptr i8, ptr %121, i32 8
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %122) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %124 = load i8, ptr %6, align 8, !range !10
  %125 = icmp eq i8 %124, 0
  %126 = tail call i32 @llvm.bswap.i32(i32 %123) #13
  %127 = select i1 %125, i32 %123, i32 %126
  %128 = and i32 %127, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %125, label %133, label %129

129:                                              ; preds = %120
  %130 = tail call i32 @llvm.bswap.i32(i32 %128) #13
  %131 = load ptr, ptr %2, align 4
  %132 = getelementptr i8, ptr %131, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %130) #13, !srcloc !11
  br label %136

133:                                              ; preds = %120
  %134 = load ptr, ptr %2, align 4
  %135 = getelementptr i8, ptr %134, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %128) #13, !srcloc !11
  br label %136

136:                                              ; preds = %133, %129
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  %137 = load ptr, ptr %2, align 4
  %138 = getelementptr i8, ptr %137, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 0) #13
  %139 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 5
  %140 = load i32, ptr %139, align 8
  %141 = icmp ugt i32 %140, 1330917385
  br i1 %141, label %142, label %158

142:                                              ; preds = %136
  %143 = load ptr, ptr %2, align 4
  %144 = getelementptr i8, ptr %143, i32 2052
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %144) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %146 = load i8, ptr %6, align 8, !range !10
  %147 = icmp eq i8 %146, 0
  %148 = tail call i32 @llvm.bswap.i32(i32 %145) #13
  %149 = select i1 %147, i32 %145, i32 %148
  %150 = or i32 %149, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %147, label %155, label %151

151:                                              ; preds = %142
  %152 = tail call i32 @llvm.bswap.i32(i32 %150) #13
  %153 = load ptr, ptr %2, align 4
  %154 = getelementptr i8, ptr %153, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 %152) #13, !srcloc !11
  br label %158

155:                                              ; preds = %142
  %156 = load ptr, ptr %2, align 4
  %157 = getelementptr i8, ptr %156, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 %150) #13, !srcloc !11
  br label %158

158:                                              ; preds = %155, %151, %136
  %159 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 25
  %160 = load ptr, ptr %159, align 8
  %161 = icmp eq ptr %160, null
  br i1 %161, label %169, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 26
  %164 = tail call zeroext i1 @cancel_work_sync(ptr noundef %163) #13
  br i1 %164, label %167, label %165

165:                                              ; preds = %162
  %166 = load ptr, ptr %159, align 8
  tail call void @flush_workqueue(ptr noundef %166) #13
  br label %167

167:                                              ; preds = %165, %162
  %168 = load ptr, ptr %159, align 8
  tail call void @destroy_workqueue(ptr noundef %168) #13
  br label %169

169:                                              ; preds = %167, %158
  %170 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 59
  %171 = tail call zeroext i1 @cancel_work_sync(ptr noundef %170) #13
  %172 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 27
  %173 = tail call i32 @del_timer(ptr noundef %172) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_hcd_remove(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %10 = or i1 %8, %9
  br i1 %10, label %21, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.usb_phy, ptr %7, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.usb_otg, ptr %13, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call i32 %17(ptr noundef nonnull %13, ptr noundef null) #13
  br label %21

21:                                               ; preds = %19, %15, %11, %5
  tail call void @usb_remove_hcd(ptr noundef nonnull %3) #13
  store ptr null, ptr %2, align 8
  %22 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 66
  %23 = load ptr, ptr %22, align 8
  tail call void @kmem_cache_destroy(ptr noundef %23) #13
  %24 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 65
  %25 = load ptr, ptr %24, align 4
  tail call void @kmem_cache_destroy(ptr noundef %25) #13
  %26 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 64
  %27 = load ptr, ptr %26, align 8
  tail call void @kmem_cache_destroy(ptr noundef %27) #13
  tail call fastcc void @dwc2_hcd_release(ptr noundef %0)
  tail call void @usb_put_hcd(ptr noundef nonnull %3) #13
  br label %28

28:                                               ; preds = %21, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_backup_host_registers(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 31
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 1024
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %7 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %8 = load i8, ptr %7, align 8, !range !10
  %9 = icmp eq i8 %8, 0
  %10 = tail call i32 @llvm.bswap.i32(i32 %6) #13
  %11 = select i1 %9, i32 %6, i32 %10
  store i32 %11, ptr %2, align 4
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i8, ptr %12, i32 1048
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %15 = load i8, ptr %7, align 8, !range !10
  %16 = icmp eq i8 %15, 0
  %17 = tail call i32 @llvm.bswap.i32(i32 %14) #13
  %18 = select i1 %16, i32 %14, i32 %17
  %19 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 31, i32 1
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 37
  %21 = load i8, ptr %20, align 8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %23, %1
  %24 = phi i32 [ %35, %23 ], [ 0, %1 ]
  %25 = shl i32 %24, 5
  %26 = add nuw nsw i32 %25, 1292
  %27 = load ptr, ptr %3, align 4
  %28 = getelementptr i8, ptr %27, i32 %26
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %30 = load i8, ptr %7, align 8, !range !10
  %31 = icmp eq i8 %30, 0
  %32 = tail call i32 @llvm.bswap.i32(i32 %29) #13
  %33 = select i1 %31, i32 %29, i32 %32
  %34 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 31, i32 2, i32 %24
  store i32 %33, ptr %34, align 4
  %35 = add nuw nsw i32 %24, 1
  %36 = load i8, ptr %20, align 8
  %37 = zext i8 %36 to i32
  %38 = icmp ult i32 %35, %37
  br i1 %38, label %23, label %39

39:                                               ; preds = %23, %1
  %40 = load ptr, ptr %3, align 4
  %41 = getelementptr i8, ptr %40, i32 1088
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %43 = load i8, ptr %7, align 8, !range !10
  %44 = icmp eq i8 %43, 0
  %45 = tail call i32 @llvm.bswap.i32(i32 %42) #13
  %46 = select i1 %44, i32 %42, i32 %45
  %47 = and i32 %46, -47
  %48 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 31, i32 3
  store i32 %47, ptr %48, align 4
  %49 = load ptr, ptr %3, align 4
  %50 = getelementptr i8, ptr %49, i32 1028
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %52 = load i8, ptr %7, align 8, !range !10
  %53 = icmp eq i8 %52, 0
  %54 = tail call i32 @llvm.bswap.i32(i32 %51) #13
  %55 = select i1 %53, i32 %51, i32 %54
  %56 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 31, i32 4
  store i32 %55, ptr %56, align 4
  %57 = load ptr, ptr %3, align 4
  %58 = getelementptr i8, ptr %57, i32 256
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %60 = load i8, ptr %7, align 8, !range !10
  %61 = icmp eq i8 %60, 0
  %62 = tail call i32 @llvm.bswap.i32(i32 %59) #13
  %63 = select i1 %61, i32 %59, i32 %62
  %64 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 31, i32 5
  store i32 %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 31, i32 6
  store i8 1, ptr %65, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_restore_host_registers(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 31, i32 6
  %3 = load i8, ptr %2, align 4, !range !10
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.dwc2_restore_host_registers) #14
  br label %106

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 31
  store i8 0, ptr %2, align 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %11 = load i8, ptr %10, align 8, !range !10
  %12 = icmp eq i8 %11, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = tail call i32 @llvm.bswap.i32(i32 %9) #13
  %15 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %14) #13, !srcloc !11
  br label %22

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %9) #13, !srcloc !11
  br label %22

22:                                               ; preds = %18, %13
  %23 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 31, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = load i8, ptr %10, align 8, !range !10
  %26 = icmp eq i8 %25, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = tail call i32 @llvm.bswap.i32(i32 %24) #13
  %29 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %28) #13, !srcloc !11
  br label %36

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %24) #13, !srcloc !11
  br label %36

36:                                               ; preds = %32, %27
  %37 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 37
  %38 = load i8, ptr %37, align 8
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %62, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  br label %42

42:                                               ; preds = %57, %40
  %43 = phi i32 [ 0, %40 ], [ %58, %57 ]
  %44 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 31, i32 2, i32 %43
  %45 = load i32, ptr %44, align 4
  %46 = shl i32 %43, 5
  %47 = add nuw nsw i32 %46, 1292
  %48 = load i8, ptr %10, align 8, !range !10
  %49 = icmp eq i8 %48, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %49, label %54, label %50

50:                                               ; preds = %42
  %51 = tail call i32 @llvm.bswap.i32(i32 %45) #13
  %52 = load ptr, ptr %41, align 4
  %53 = getelementptr i8, ptr %52, i32 %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #13, !srcloc !11
  br label %57

54:                                               ; preds = %42
  %55 = load ptr, ptr %41, align 4
  %56 = getelementptr i8, ptr %55, i32 %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %45) #13, !srcloc !11
  br label %57

57:                                               ; preds = %54, %50
  %58 = add nuw nsw i32 %43, 1
  %59 = load i8, ptr %37, align 8
  %60 = zext i8 %59 to i32
  %61 = icmp ult i32 %58, %60
  br i1 %61, label %42, label %62

62:                                               ; preds = %57, %36
  %63 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 31, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = load i8, ptr %10, align 8, !range !10
  %66 = icmp eq i8 %65, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = tail call i32 @llvm.bswap.i32(i32 %64) #13
  %69 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i8, ptr %70, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %68) #13, !srcloc !11
  br label %76

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr i8, ptr %74, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %64) #13, !srcloc !11
  br label %76

76:                                               ; preds = %72, %67
  %77 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 31, i32 4
  %78 = load i32, ptr %77, align 4
  %79 = load i8, ptr %10, align 8, !range !10
  %80 = icmp eq i8 %79, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = tail call i32 @llvm.bswap.i32(i32 %78) #13
  %83 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr i8, ptr %84, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %82) #13, !srcloc !11
  br label %90

86:                                               ; preds = %76
  %87 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr i8, ptr %88, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %78) #13, !srcloc !11
  br label %90

90:                                               ; preds = %86, %81
  %91 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 31, i32 5
  %92 = load i32, ptr %91, align 4
  %93 = load i8, ptr %10, align 8, !range !10
  %94 = icmp eq i8 %93, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = tail call i32 @llvm.bswap.i32(i32 %92) #13
  %97 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr i8, ptr %98, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %96) #13, !srcloc !11
  br label %104

100:                                              ; preds = %90
  %101 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr i8, ptr %102, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %92) #13, !srcloc !11
  br label %104

104:                                              ; preds = %100, %95
  %105 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 11
  store i16 0, ptr %105, align 4
  br label %106

106:                                              ; preds = %104, %5
  %107 = phi i32 [ 0, %104 ], [ -22, %5 ]
  ret i32 %107
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_host_enter_hibernation(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @dwc2_backup_global_registers(ptr noundef %0) #13
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.dwc2_host_enter_hibernation) #14
  br label %182

6:                                                ; preds = %1
  %7 = tail call i32 @dwc2_backup_host_registers(ptr noundef %0)
  %8 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 1088
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %12 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %13 = load i8, ptr %12, align 8, !range !10
  %14 = icmp eq i8 %13, 0
  %15 = tail call i32 @llvm.bswap.i32(i32 %11) #13
  %16 = select i1 %14, i32 %11, i32 %15
  %17 = and i32 %16, -133
  %18 = or i32 %17, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %14, label %23, label %19

19:                                               ; preds = %6
  %20 = tail call i32 @llvm.bswap.i32(i32 %18) #13
  %21 = load ptr, ptr %8, align 4
  %22 = getelementptr i8, ptr %21, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #13, !srcloc !11
  br label %26

23:                                               ; preds = %6
  %24 = load ptr, ptr %8, align 4
  %25 = getelementptr i8, ptr %24, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %18) #13, !srcloc !11
  br label %26

26:                                               ; preds = %23, %19
  %27 = tail call i32 @dwc2_hsotg_wait_bit_set(ptr noundef %0, i32 noundef 1088, i32 noundef 128, i32 noundef 5000) #13
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.24) #14
  br label %31

31:                                               ; preds = %29, %26
  %32 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 18
  %33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %32) #13
  %34 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 28
  store i32 2, ptr %34, align 8
  %35 = load ptr, ptr %8, align 4
  %36 = getelementptr i8, ptr %35, i32 12
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %38 = load i8, ptr %12, align 8, !range !10
  %39 = icmp eq i8 %38, 0
  %40 = lshr i32 %37, 24
  %41 = select i1 %39, i32 %37, i32 %40
  %42 = and i32 %41, 16
  %43 = icmp eq i32 %42, 0
  %44 = load ptr, ptr %8, align 4
  br i1 %43, label %77, label %45

45:                                               ; preds = %31
  %46 = getelementptr i8, ptr %44, i32 3584
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %48 = load i8, ptr %12, align 8, !range !10
  %49 = icmp eq i8 %48, 0
  %50 = tail call i32 @llvm.bswap.i32(i32 %47) #13
  %51 = select i1 %49, i32 %47, i32 %50
  %52 = or i32 %51, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %49, label %57, label %53

53:                                               ; preds = %45
  %54 = tail call i32 @llvm.bswap.i32(i32 %52) #13
  %55 = load ptr, ptr %8, align 4
  %56 = getelementptr i8, ptr %55, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #13, !srcloc !11
  br label %60

57:                                               ; preds = %45
  %58 = load ptr, ptr %8, align 4
  %59 = getelementptr i8, ptr %58, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %52) #13, !srcloc !11
  br label %60

60:                                               ; preds = %57, %53
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 2147480) #13
  %62 = load ptr, ptr %8, align 4
  %63 = getelementptr i8, ptr %62, i32 88
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %65 = load i8, ptr %12, align 8, !range !10
  %66 = icmp eq i8 %65, 0
  %67 = tail call i32 @llvm.bswap.i32(i32 %64) #13
  %68 = select i1 %66, i32 %64, i32 %67
  %69 = or i32 %68, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %66, label %74, label %70

70:                                               ; preds = %60
  %71 = tail call i32 @llvm.bswap.i32(i32 %69) #13
  %72 = load ptr, ptr %8, align 4
  %73 = getelementptr i8, ptr %72, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %71) #13, !srcloc !11
  br label %109

74:                                               ; preds = %60
  %75 = load ptr, ptr %8, align 4
  %76 = getelementptr i8, ptr %75, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %69) #13, !srcloc !11
  br label %109

77:                                               ; preds = %31
  %78 = getelementptr i8, ptr %44, i32 88
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %80 = load i8, ptr %12, align 8, !range !10
  %81 = icmp eq i8 %80, 0
  %82 = tail call i32 @llvm.bswap.i32(i32 %79) #13
  %83 = select i1 %81, i32 %79, i32 %82
  %84 = or i32 %83, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %81, label %89, label %85

85:                                               ; preds = %77
  %86 = tail call i32 @llvm.bswap.i32(i32 %84) #13
  %87 = load ptr, ptr %8, align 4
  %88 = getelementptr i8, ptr %87, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %86) #13, !srcloc !11
  br label %92

89:                                               ; preds = %77
  %90 = load ptr, ptr %8, align 4
  %91 = getelementptr i8, ptr %90, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %84) #13, !srcloc !11
  br label %92

92:                                               ; preds = %89, %85
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %93(i32 noundef 2147480) #13
  %94 = load ptr, ptr %8, align 4
  %95 = getelementptr i8, ptr %94, i32 3584
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %97 = load i8, ptr %12, align 8, !range !10
  %98 = icmp eq i8 %97, 0
  %99 = tail call i32 @llvm.bswap.i32(i32 %96) #13
  %100 = select i1 %98, i32 %96, i32 %99
  %101 = or i32 %100, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %98, label %106, label %102

102:                                              ; preds = %92
  %103 = tail call i32 @llvm.bswap.i32(i32 %101) #13
  %104 = load ptr, ptr %8, align 4
  %105 = getelementptr i8, ptr %104, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %103) #13, !srcloc !11
  br label %109

106:                                              ; preds = %92
  %107 = load ptr, ptr %8, align 4
  %108 = getelementptr i8, ptr %107, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %101) #13, !srcloc !11
  br label %109

109:                                              ; preds = %106, %102, %74, %70
  %110 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %110(i32 noundef 2147480) #13
  %111 = load ptr, ptr %8, align 4
  %112 = getelementptr i8, ptr %111, i32 88
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %114 = load i8, ptr %12, align 8, !range !10
  %115 = icmp eq i8 %114, 0
  %116 = tail call i32 @llvm.bswap.i32(i32 %113) #13
  %117 = select i1 %115, i32 %113, i32 %116
  %118 = or i32 %117, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %115, label %123, label %119

119:                                              ; preds = %109
  %120 = tail call i32 @llvm.bswap.i32(i32 %118) #13
  %121 = load ptr, ptr %8, align 4
  %122 = getelementptr i8, ptr %121, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %120) #13, !srcloc !11
  br label %126

123:                                              ; preds = %109
  %124 = load ptr, ptr %8, align 4
  %125 = getelementptr i8, ptr %124, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %118) #13, !srcloc !11
  br label %126

126:                                              ; preds = %123, %119
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %127(i32 noundef 2147480) #13
  %128 = load ptr, ptr %8, align 4
  %129 = getelementptr i8, ptr %128, i32 88
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %129) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %131 = load i8, ptr %12, align 8, !range !10
  %132 = icmp eq i8 %131, 0
  %133 = tail call i32 @llvm.bswap.i32(i32 %130) #13
  %134 = select i1 %132, i32 %130, i32 %133
  %135 = or i32 %134, 266496
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %132, label %140, label %136

136:                                              ; preds = %126
  %137 = tail call i32 @llvm.bswap.i32(i32 %135) #13
  %138 = load ptr, ptr %8, align 4
  %139 = getelementptr i8, ptr %138, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %137) #13, !srcloc !11
  br label %143

140:                                              ; preds = %126
  %141 = load ptr, ptr %8, align 4
  %142 = getelementptr i8, ptr %141, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 %135) #13, !srcloc !11
  br label %143

143:                                              ; preds = %140, %136
  %144 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %144(i32 noundef 2147480) #13
  %145 = load ptr, ptr %8, align 4
  %146 = getelementptr i8, ptr %145, i32 88
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %148 = load i8, ptr %12, align 8, !range !10
  %149 = icmp eq i8 %148, 0
  %150 = tail call i32 @llvm.bswap.i32(i32 %147) #13
  %151 = select i1 %149, i32 %147, i32 %150
  %152 = or i32 %151, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %149, label %157, label %153

153:                                              ; preds = %143
  %154 = tail call i32 @llvm.bswap.i32(i32 %152) #13
  %155 = load ptr, ptr %8, align 4
  %156 = getelementptr i8, ptr %155, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 %154) #13, !srcloc !11
  br label %160

157:                                              ; preds = %143
  %158 = load ptr, ptr %8, align 4
  %159 = getelementptr i8, ptr %158, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %159, i32 %152) #13, !srcloc !11
  br label %160

160:                                              ; preds = %157, %153
  %161 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %161(i32 noundef 2147480) #13
  %162 = load ptr, ptr %8, align 4
  %163 = getelementptr i8, ptr %162, i32 88
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %163) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %165 = load i8, ptr %12, align 8, !range !10
  %166 = icmp eq i8 %165, 0
  %167 = tail call i32 @llvm.bswap.i32(i32 %164) #13
  %168 = select i1 %166, i32 %164, i32 %167
  %169 = or i32 %168, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %166, label %174, label %170

170:                                              ; preds = %160
  %171 = tail call i32 @llvm.bswap.i32(i32 %169) #13
  %172 = load ptr, ptr %8, align 4
  %173 = getelementptr i8, ptr %172, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 %171) #13, !srcloc !11
  br label %177

174:                                              ; preds = %160
  %175 = load ptr, ptr %8, align 4
  %176 = getelementptr i8, ptr %175, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %176, i32 %169) #13, !srcloc !11
  br label %177

177:                                              ; preds = %174, %170
  %178 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 8
  %179 = load i8, ptr %178, align 8
  %180 = or i8 %179, 8
  store i8 %180, ptr %178, align 8
  %181 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 9
  store i8 1, ptr %181, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %32, i32 noundef %33) #13
  br label %182

182:                                              ; preds = %177, %4
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_backup_global_registers(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hsotg_wait_bit_set(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_host_exit_hibernation(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call void @dwc2_hib_restore_common(ptr noundef %0, i32 noundef %1, i32 noundef 1) #13
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 8
  %5 = load i8, ptr %4, align 8
  %6 = and i8 %5, -9
  store i8 %6, ptr %4, align 8
  br label %7

7:                                                ; preds = %7, %3
  %8 = phi i32 [ 100, %3 ], [ %9, %7 ]
  %9 = add nsw i32 %8, -1
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #13
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %12, label %7

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 31
  %14 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  %15 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 -1) #13
  %18 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 88
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %22 = load i8, ptr %14, align 8, !range !10
  %23 = icmp eq i8 %22, 0
  %24 = tail call i32 @llvm.bswap.i32(i32 %21) #13
  %25 = select i1 %23, i32 %21, i32 %24
  %26 = and i32 %25, -5
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %23, label %31, label %27

27:                                               ; preds = %12
  %28 = tail call i32 @llvm.bswap.i32(i32 %26) #13
  %29 = load ptr, ptr %18, align 4
  %30 = getelementptr i8, ptr %29, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #13, !srcloc !11
  br label %34

31:                                               ; preds = %12
  %32 = load ptr, ptr %18, align 4
  %33 = getelementptr i8, ptr %32, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %26) #13, !srcloc !11
  br label %34

34:                                               ; preds = %31, %27
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 2147480) #13
  %36 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 29, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = load i8, ptr %14, align 8, !range !10
  %39 = icmp eq i8 %38, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = tail call i32 @llvm.bswap.i32(i32 %37) #13
  %42 = load ptr, ptr %18, align 4
  %43 = getelementptr i8, ptr %42, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #13, !srcloc !11
  br label %47

44:                                               ; preds = %34
  %45 = load ptr, ptr %18, align 4
  %46 = getelementptr i8, ptr %45, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %37) #13, !srcloc !11
  br label %47

47:                                               ; preds = %44, %40
  %48 = load i32, ptr %13, align 4
  %49 = load i8, ptr %14, align 8, !range !10
  %50 = icmp eq i8 %49, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = tail call i32 @llvm.bswap.i32(i32 %48) #13
  %53 = load ptr, ptr %18, align 4
  %54 = getelementptr i8, ptr %53, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #13, !srcloc !11
  br label %58

55:                                               ; preds = %47
  %56 = load ptr, ptr %18, align 4
  %57 = getelementptr i8, ptr %56, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %48) #13, !srcloc !11
  br label %58

58:                                               ; preds = %55, %51
  %59 = load ptr, ptr %18, align 4
  %60 = getelementptr i8, ptr %59, i32 88
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %62 = load i8, ptr %14, align 8, !range !10
  %63 = icmp eq i8 %62, 0
  %64 = tail call i32 @llvm.bswap.i32(i32 %61) #13
  %65 = select i1 %63, i32 %61, i32 %64
  %66 = and i32 %65, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %63, label %71, label %67

67:                                               ; preds = %58
  %68 = tail call i32 @llvm.bswap.i32(i32 %66) #13
  %69 = load ptr, ptr %18, align 4
  %70 = getelementptr i8, ptr %69, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #13, !srcloc !11
  br label %74

71:                                               ; preds = %58
  %72 = load ptr, ptr %18, align 4
  %73 = getelementptr i8, ptr %72, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %66) #13, !srcloc !11
  br label %74

74:                                               ; preds = %71, %67
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 2147480) #13
  %76 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 31, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %77, -4229
  %79 = or i32 %78, 4096
  %80 = load i8, ptr %14, align 8, !range !10
  %81 = icmp eq i8 %80, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %81, label %86, label %82

82:                                               ; preds = %74
  %83 = tail call i32 @llvm.bswap.i32(i32 %79) #13
  %84 = load ptr, ptr %18, align 4
  %85 = getelementptr i8, ptr %84, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %83) #13, !srcloc !11
  br label %89

86:                                               ; preds = %74
  %87 = load ptr, ptr %18, align 4
  %88 = getelementptr i8, ptr %87, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %79) #13, !srcloc !11
  br label %89

89:                                               ; preds = %86, %82
  %90 = load i32, ptr %76, align 4
  %91 = and i32 %90, -4229
  %92 = icmp eq i32 %2, 0
  br i1 %92, label %121, label %93

93:                                               ; preds = %89
  %94 = or i32 %91, 4352
  %95 = load i8, ptr %14, align 8, !range !10
  %96 = icmp eq i8 %95, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = tail call i32 @llvm.bswap.i32(i32 %94) #13
  %99 = load ptr, ptr %18, align 4
  %100 = getelementptr i8, ptr %99, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %98) #13, !srcloc !11
  br label %104

101:                                              ; preds = %93
  %102 = load ptr, ptr %18, align 4
  %103 = getelementptr i8, ptr %102, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %94) #13, !srcloc !11
  br label %104

104:                                              ; preds = %101, %97
  br label %105

105:                                              ; preds = %105, %104
  %106 = phi i32 [ %107, %105 ], [ 60, %104 ]
  %107 = add nsw i32 %106, -1
  %108 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %108(i32 noundef 214748000) #13
  %109 = icmp eq i32 %107, 0
  br i1 %109, label %110, label %105

110:                                              ; preds = %105
  %111 = and i32 %94, -389
  %112 = load i8, ptr %14, align 8, !range !10
  %113 = icmp eq i8 %112, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = tail call i32 @llvm.bswap.i32(i32 %111) #13
  %116 = load ptr, ptr %18, align 4
  %117 = getelementptr i8, ptr %116, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %115) #13, !srcloc !11
  br label %149

118:                                              ; preds = %110
  %119 = load ptr, ptr %18, align 4
  %120 = getelementptr i8, ptr %119, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %111) #13, !srcloc !11
  br label %149

121:                                              ; preds = %89
  %122 = or i32 %91, 4160
  %123 = load i8, ptr %14, align 8, !range !10
  %124 = icmp eq i8 %123, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %124, label %129, label %125

125:                                              ; preds = %121
  %126 = tail call i32 @llvm.bswap.i32(i32 %122) #13
  %127 = load ptr, ptr %18, align 4
  %128 = getelementptr i8, ptr %127, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %126) #13, !srcloc !11
  br label %132

129:                                              ; preds = %121
  %130 = load ptr, ptr %18, align 4
  %131 = getelementptr i8, ptr %130, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %122) #13, !srcloc !11
  br label %132

132:                                              ; preds = %129, %125
  br label %133

133:                                              ; preds = %133, %132
  %134 = phi i32 [ %135, %133 ], [ 100, %132 ]
  %135 = add nsw i32 %134, -1
  %136 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %136(i32 noundef 214748000) #13
  %137 = icmp eq i32 %135, 0
  br i1 %137, label %138, label %133

138:                                              ; preds = %133
  %139 = and i32 %122, -197
  %140 = load i8, ptr %14, align 8, !range !10
  %141 = icmp eq i8 %140, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %141, label %146, label %142

142:                                              ; preds = %138
  %143 = tail call i32 @llvm.bswap.i32(i32 %139) #13
  %144 = load ptr, ptr %18, align 4
  %145 = getelementptr i8, ptr %144, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 %143) #13, !srcloc !11
  br label %149

146:                                              ; preds = %138
  %147 = load ptr, ptr %18, align 4
  %148 = getelementptr i8, ptr %147, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %148, i32 %139) #13, !srcloc !11
  br label %149

149:                                              ; preds = %146, %142, %118, %114
  %150 = load ptr, ptr %18, align 4
  %151 = getelementptr i8, ptr %150, i32 1088
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %151) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %153 = load i8, ptr %14, align 8, !range !10
  %154 = icmp eq i8 %153, 0
  %155 = tail call i32 @llvm.bswap.i32(i32 %152) #13
  %156 = select i1 %154, i32 %152, i32 %155
  %157 = and i32 %156, -15
  %158 = or i32 %157, 10
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %154, label %163, label %159

159:                                              ; preds = %149
  %160 = tail call i32 @llvm.bswap.i32(i32 %158) #13
  %161 = load ptr, ptr %18, align 4
  %162 = getelementptr i8, ptr %161, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %160) #13, !srcloc !11
  br label %166

163:                                              ; preds = %149
  %164 = load ptr, ptr %18, align 4
  %165 = getelementptr i8, ptr %164, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %165, i32 %158) #13, !srcloc !11
  br label %166

166:                                              ; preds = %163, %159
  %167 = load ptr, ptr %18, align 4
  %168 = getelementptr i8, ptr %167, i32 1088
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %168) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  %170 = load ptr, ptr %18, align 4
  %171 = getelementptr i8, ptr %170, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %171, i32 -1) #13
  %172 = tail call i32 @dwc2_restore_global_registers(ptr noundef %0) #13
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %166
  %175 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %175, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.dwc2_host_exit_hibernation) #14
  br label %208

176:                                              ; preds = %166
  %177 = tail call i32 @dwc2_restore_host_registers(ptr noundef %0)
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %176
  %180 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %180, ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.dwc2_host_exit_hibernation) #14
  br label %208

181:                                              ; preds = %176
  %182 = icmp eq i32 %1, 0
  br i1 %182, label %203, label %183

183:                                              ; preds = %181
  %184 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 9
  %185 = load i8, ptr %184, align 1, !range !10
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %193, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 35
  %189 = load i32, ptr %188, align 4
  %190 = or i32 %189, 16
  store i32 %190, ptr %188, align 4
  %191 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 19
  %192 = load ptr, ptr %191, align 8
  tail call void @usb_hcd_resume_root_hub(ptr noundef %192) #13
  br label %193

193:                                              ; preds = %187, %183
  %194 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 28
  %195 = load i32, ptr %194, align 8
  %196 = icmp eq i32 %195, 1
  %197 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 35
  %198 = load i32, ptr %197, align 4
  %199 = or i32 %198, 64
  %200 = select i1 %196, i32 %199, i32 %198
  %201 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 35
  %202 = or i32 %200, 1
  store i32 %202, ptr %201, align 4
  br label %203

203:                                              ; preds = %193, %181
  %204 = load i8, ptr %4, align 8
  %205 = and i8 %204, -9
  store i8 %205, ptr %4, align 8
  %206 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 9
  store i8 0, ptr %206, align 1
  %207 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 28
  store i32 0, ptr %207, align 8
  br label %208

208:                                              ; preds = %203, %179, %174
  %209 = phi i32 [ %172, %174 ], [ %177, %179 ], [ 0, %203 ]
  ret i32 %209
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hib_restore_common(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_restore_global_registers(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @dwc2_host_can_poweroff_phy(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_bus, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, i32 1
  %8 = load i16, ptr %7, align 4
  %9 = and i16 %8, 1
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @usb_wakeup_enabled_descendants(ptr noundef %5) #13
  %17 = icmp eq i32 %16, 0
  br label %18

18:                                               ; preds = %15, %11, %1
  %19 = phi i1 [ true, %11 ], [ %17, %15 ], [ true, %1 ]
  ret i1 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_wakeup_enabled_descendants(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_host_enter_partial_power_down(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 1088
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %7 = load i8, ptr %6, align 8, !range !10
  %8 = icmp eq i8 %7, 0
  %9 = tail call i32 @llvm.bswap.i32(i32 %5) #13
  %10 = select i1 %8, i32 %5, i32 %9
  %11 = and i32 %10, -175
  %12 = or i32 %11, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %8, label %17, label %13

13:                                               ; preds = %1
  %14 = tail call i32 @llvm.bswap.i32(i32 %12) #13
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr i8, ptr %15, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #13, !srcloc !11
  br label %20

17:                                               ; preds = %1
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr i8, ptr %18, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %12) #13, !srcloc !11
  br label %20

20:                                               ; preds = %17, %13
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 1073740) #13
  %22 = tail call i32 @dwc2_hsotg_wait_bit_set(ptr noundef %0, i32 noundef 1088, i32 noundef 128, i32 noundef 3000) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.24) #14
  br label %26

26:                                               ; preds = %24, %20
  %27 = tail call i32 @dwc2_backup_global_registers(ptr noundef %0) #13
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.dwc2_host_enter_partial_power_down) #14
  br label %80

31:                                               ; preds = %26
  %32 = tail call i32 @dwc2_backup_host_registers(ptr noundef %0)
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  %33 = load ptr, ptr %2, align 4
  %34 = getelementptr i8, ptr %33, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 -1) #13
  %35 = load ptr, ptr %2, align 4
  %36 = getelementptr i8, ptr %35, i32 3584
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %38 = load i8, ptr %6, align 8, !range !10
  %39 = icmp eq i8 %38, 0
  %40 = tail call i32 @llvm.bswap.i32(i32 %37) #13
  %41 = select i1 %39, i32 %37, i32 %40
  %42 = or i32 %41, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %39, label %47, label %43

43:                                               ; preds = %31
  %44 = tail call i32 @llvm.bswap.i32(i32 %42) #13
  %45 = load ptr, ptr %2, align 4
  %46 = getelementptr i8, ptr %45, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #13, !srcloc !11
  br label %50

47:                                               ; preds = %31
  %48 = load ptr, ptr %2, align 4
  %49 = getelementptr i8, ptr %48, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %42) #13, !srcloc !11
  br label %50

50:                                               ; preds = %47, %43
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 1073740) #13
  %52 = or i32 %41, 12
  %53 = load i8, ptr %6, align 8, !range !10
  %54 = icmp eq i8 %53, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = tail call i32 @llvm.bswap.i32(i32 %52) #13
  %57 = load ptr, ptr %2, align 4
  %58 = getelementptr i8, ptr %57, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #13, !srcloc !11
  br label %62

59:                                               ; preds = %50
  %60 = load ptr, ptr %2, align 4
  %61 = getelementptr i8, ptr %60, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %52) #13, !srcloc !11
  br label %62

62:                                               ; preds = %59, %55
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 1073740) #13
  %64 = or i32 %41, 13
  %65 = load i8, ptr %6, align 8, !range !10
  %66 = icmp eq i8 %65, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = tail call i32 @llvm.bswap.i32(i32 %64) #13
  %69 = load ptr, ptr %2, align 4
  %70 = getelementptr i8, ptr %69, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #13, !srcloc !11
  br label %74

71:                                               ; preds = %62
  %72 = load ptr, ptr %2, align 4
  %73 = getelementptr i8, ptr %72, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %64) #13, !srcloc !11
  br label %74

74:                                               ; preds = %71, %67
  %75 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 8
  %76 = load i8, ptr %75, align 8
  %77 = or i8 %76, 16
  store i8 %77, ptr %75, align 8
  %78 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 28
  store i32 2, ptr %78, align 8
  %79 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 9
  store i8 1, ptr %79, align 1
  br label %80

80:                                               ; preds = %74, %29
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_host_exit_partial_power_down(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 3584
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %8 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %9 = load i8, ptr %8, align 8, !range !10
  %10 = icmp eq i8 %9, 0
  %11 = tail call i32 @llvm.bswap.i32(i32 %7) #13
  %12 = select i1 %10, i32 %7, i32 %11
  %13 = and i32 %12, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %10, label %18, label %14

14:                                               ; preds = %3
  %15 = tail call i32 @llvm.bswap.i32(i32 %13) #13
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr i8, ptr %16, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #13, !srcloc !11
  br label %21

18:                                               ; preds = %3
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr i8, ptr %19, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %13) #13, !srcloc !11
  br label %21

21:                                               ; preds = %18, %14
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 1073740) #13
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr i8, ptr %23, i32 3584
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %26 = load i8, ptr %8, align 8, !range !10
  %27 = icmp eq i8 %26, 0
  %28 = tail call i32 @llvm.bswap.i32(i32 %25) #13
  %29 = select i1 %27, i32 %25, i32 %28
  %30 = and i32 %29, -5
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %27, label %35, label %31

31:                                               ; preds = %21
  %32 = tail call i32 @llvm.bswap.i32(i32 %30) #13
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr i8, ptr %33, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #13, !srcloc !11
  br label %38

35:                                               ; preds = %21
  %36 = load ptr, ptr %4, align 4
  %37 = getelementptr i8, ptr %36, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %30) #13, !srcloc !11
  br label %38

38:                                               ; preds = %35, %31
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 1073740) #13
  %40 = load ptr, ptr %4, align 4
  %41 = getelementptr i8, ptr %40, i32 3584
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %43 = load i8, ptr %8, align 8, !range !10
  %44 = icmp eq i8 %43, 0
  %45 = tail call i32 @llvm.bswap.i32(i32 %42) #13
  %46 = select i1 %44, i32 %42, i32 %45
  %47 = and i32 %46, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %44, label %52, label %48

48:                                               ; preds = %38
  %49 = tail call i32 @llvm.bswap.i32(i32 %47) #13
  %50 = load ptr, ptr %4, align 4
  %51 = getelementptr i8, ptr %50, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #13, !srcloc !11
  br label %55

52:                                               ; preds = %38
  %53 = load ptr, ptr %4, align 4
  %54 = getelementptr i8, ptr %53, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %47) #13, !srcloc !11
  br label %55

55:                                               ; preds = %52, %48
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 21474800) #13
  br i1 %2, label %57, label %67

57:                                               ; preds = %55
  %58 = tail call i32 @dwc2_restore_global_registers(ptr noundef %0) #13
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.dwc2_host_exit_partial_power_down) #14
  br label %135

62:                                               ; preds = %57
  %63 = tail call i32 @dwc2_restore_host_registers(ptr noundef %0)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.dwc2_host_exit_partial_power_down) #14
  br label %135

67:                                               ; preds = %62, %55
  %68 = load ptr, ptr %4, align 4
  %69 = getelementptr i8, ptr %68, i32 1088
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %71 = load i8, ptr %8, align 8, !range !10
  %72 = icmp eq i8 %71, 0
  %73 = tail call i32 @llvm.bswap.i32(i32 %70) #13
  %74 = select i1 %72, i32 %70, i32 %73
  %75 = and i32 %74, -239
  %76 = or i32 %75, 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %72, label %81, label %77

77:                                               ; preds = %67
  %78 = tail call i32 @llvm.bswap.i32(i32 %76) #13
  %79 = load ptr, ptr %4, align 4
  %80 = getelementptr i8, ptr %79, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %78) #13, !srcloc !11
  br label %84

81:                                               ; preds = %67
  %82 = load ptr, ptr %4, align 4
  %83 = getelementptr i8, ptr %82, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %76) #13, !srcloc !11
  br label %84

84:                                               ; preds = %81, %77
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %85(i32 noundef 1073740) #13
  %86 = icmp eq i32 %1, 0
  %87 = load ptr, ptr %4, align 4
  %88 = getelementptr i8, ptr %87, i32 1088
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13
  %90 = load i8, ptr %8, align 8, !range !10
  %91 = icmp eq i8 %90, 0
  %92 = tail call i32 @llvm.bswap.i32(i32 %89) #13
  %93 = select i1 %91, i32 %89, i32 %92
  br i1 %86, label %94, label %105

94:                                               ; preds = %84
  %95 = and i32 %93, -111
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %91, label %100, label %96

96:                                               ; preds = %94
  %97 = tail call i32 @llvm.bswap.i32(i32 %95) #13
  %98 = load ptr, ptr %4, align 4
  %99 = getelementptr i8, ptr %98, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %97) #13, !srcloc !11
  br label %103

100:                                              ; preds = %94
  %101 = load ptr, ptr %4, align 4
  %102 = getelementptr i8, ptr %101, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %95) #13, !srcloc !11
  br label %103

103:                                              ; preds = %100, %96
  %104 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 9
  store i8 0, ptr %104, align 1
  br label %130

105:                                              ; preds = %84
  %106 = and i32 %93, -4143
  %107 = or i32 %106, 4096
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %91, label %112, label %108

108:                                              ; preds = %105
  %109 = tail call i32 @llvm.bswap.i32(i32 %107) #13
  %110 = load ptr, ptr %4, align 4
  %111 = getelementptr i8, ptr %110, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %109) #13, !srcloc !11
  br label %115

112:                                              ; preds = %105
  %113 = load ptr, ptr %4, align 4
  %114 = getelementptr i8, ptr %113, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %107) #13, !srcloc !11
  br label %115

115:                                              ; preds = %112, %108
  %116 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 28
  %117 = load i32, ptr %116, align 8
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 19
  %121 = load ptr, ptr %120, align 8
  tail call void @usb_hcd_resume_root_hub(ptr noundef %121) #13
  br label %122

122:                                              ; preds = %119, %115
  %123 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 35
  %124 = load i32, ptr %123, align 4
  %125 = or i32 %124, 3
  store i32 %125, ptr %123, align 4
  %126 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 27
  %127 = load volatile i32, ptr @jiffies, align 64
  %128 = add i32 %127, 8
  %129 = tail call i32 @mod_timer(ptr noundef %126, i32 noundef %128) #13
  br label %130

130:                                              ; preds = %122, %103
  %131 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 8
  %132 = load i8, ptr %131, align 8
  %133 = and i8 %132, -17
  store i8 %133, ptr %131, align 8
  %134 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 28
  store i32 0, ptr %134, align 8
  br label %135

135:                                              ; preds = %130, %65, %60
  %136 = phi i32 [ %58, %60 ], [ %63, %65 ], [ 0, %130 ]
  ret i32 %136
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwc2_alloc_split_dma_aligned_buf(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 66
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %54, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dwc2_host_chan, ptr %2, i32 0, i32 2
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, 2047
  %11 = icmp ugt i16 %10, 1024
  br i1 %11, label %54, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 21
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef nonnull %5, i32 noundef 2593) #13
  store ptr %17, ptr %13, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %54, label %19

19:                                               ; preds = %16, %12
  %20 = phi ptr [ %17, %16 ], [ %14, %12 ]
  %21 = load ptr, ptr %0, align 8
  %22 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %20) #13
  %23 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %24 = xor i1 %23, true
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %35, !prof !12

26:                                               ; preds = %19
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %27 = tail call ptr @dev_driver_string(ptr noundef %21) #13
  %28 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load ptr, ptr %21, align 4
  br label %33

33:                                               ; preds = %31, %26
  %34 = phi ptr [ %32, %31 ], [ %29, %26 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.31, ptr noundef %27, ptr noundef %34) #13
  br label %35

35:                                               ; preds = %33, %19
  br i1 %22, label %36, label %38

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 22
  store i32 -1, ptr %37, align 4
  br label %48

38:                                               ; preds = %35
  %39 = load ptr, ptr @mem_map, align 4
  %40 = ptrtoint ptr %20 to i32
  %41 = add i32 %40, 1073741824
  %42 = lshr i32 %41, 12
  %43 = getelementptr %struct.page, ptr %39, i32 %42
  %44 = and i32 %40, 4095
  %45 = tail call i32 @dma_map_page_attrs(ptr noundef %21, ptr noundef %43, i32 noundef %44, i32 noundef 1024, i32 noundef 2, i32 noundef 0) #13
  %46 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 22
  store i32 %45, ptr %46, align 4
  %47 = icmp eq i32 %45, -1
  br i1 %47, label %48, label %50

48:                                               ; preds = %38, %36
  %49 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.29) #14
  br label %50

50:                                               ; preds = %48, %38
  %51 = phi i32 [ 0, %48 ], [ %45, %38 ]
  %52 = phi i32 [ -22, %48 ], [ 0, %38 ]
  %53 = getelementptr inbounds %struct.dwc2_host_chan, ptr %2, i32 0, i32 5
  store i32 %51, ptr %53, align 4
  br label %54

54:                                               ; preds = %50, %16, %7, %3
  %55 = phi i32 [ -12, %7 ], [ -12, %3 ], [ -12, %16 ], [ %52, %50 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwc2_queue_transaction(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 14
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 28
  %9 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 44
  %10 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 28, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %12, ptr %11, align 4
  %14 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 44, i32 1
  %15 = load ptr, ptr %14, align 4
  store ptr %8, ptr %14, align 4
  store ptr %9, ptr %8, align 4
  store ptr %15, ptr %10, align 4
  store volatile ptr %8, ptr %15, align 4
  br label %16

16:                                               ; preds = %7, %3
  %17 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 31
  %18 = load i8, ptr %17, align 2, !range !10
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %44, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 24
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %44, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 32
  %26 = load i8, ptr %25, align 1, !range !10
  %27 = icmp eq i8 %26, 0
  %28 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 9
  %29 = load i8, ptr %28, align 2
  %30 = icmp eq i8 %29, 0
  br i1 %27, label %40, label %31

31:                                               ; preds = %24
  br i1 %30, label %37, label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %34 = load i24, ptr %33, align 1
  %35 = and i24 %34, 196608
  %36 = icmp eq i24 %35, 65536
  br i1 %36, label %37, label %94

37:                                               ; preds = %32, %31
  tail call void @dwc2_hcd_start_xfer_ddma(ptr noundef %0, ptr noundef nonnull %22) #13
  %38 = load ptr, ptr %21, align 4
  %39 = getelementptr inbounds %struct.dwc2_qh, ptr %38, i32 0, i32 7
  store i8 0, ptr %39, align 4
  br label %94

40:                                               ; preds = %24
  br i1 %30, label %41, label %94

41:                                               ; preds = %40
  tail call fastcc void @dwc2_hc_start_transfer(ptr noundef %0, ptr noundef %1)
  %42 = load ptr, ptr %21, align 4
  %43 = getelementptr inbounds %struct.dwc2_qh, ptr %42, i32 0, i32 7
  store i8 0, ptr %43, align 4
  br label %94

44:                                               ; preds = %20, %16
  %45 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 13
  %46 = load i8, ptr %45, align 2
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %94

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 12
  %50 = load i8, ptr %49, align 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 22
  %54 = load i32, ptr %53, align 4
  tail call void @dwc2_hc_halt(ptr noundef %0, ptr noundef %1, i32 noundef %54)
  br label %94

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 10
  %57 = load i8, ptr %56, align 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 9
  %61 = load i8, ptr %60, align 2
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %94

63:                                               ; preds = %59
  tail call fastcc void @dwc2_hc_start_transfer(ptr noundef %0, ptr noundef %1)
  br label %94

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %66 = load i24, ptr %65, align 1
  %67 = and i24 %66, 2048
  %68 = icmp eq i24 %67, 0
  %69 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 2
  %70 = load i16, ptr %69, align 4
  %71 = and i16 %70, 6144
  %72 = icmp eq i16 %71, 6144
  %73 = select i1 %68, i1 true, i1 %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %64
  %75 = zext i16 %2 to i32
  %76 = shl nuw nsw i32 %75, 2
  %77 = and i16 %70, 2047
  %78 = zext i16 %77 to i32
  %79 = icmp ult i32 %76, %78
  br i1 %79, label %94, label %80

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 9
  %82 = load i8, ptr %81, align 2
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  tail call fastcc void @dwc2_hc_start_transfer(ptr noundef %0, ptr noundef %1)
  br label %94

85:                                               ; preds = %80
  %86 = tail call fastcc i32 @dwc2_hc_continue_transfer(ptr noundef %0, ptr noundef %1)
  br label %94

87:                                               ; preds = %64
  %88 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 9
  %89 = load i8, ptr %88, align 2
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  tail call fastcc void @dwc2_hc_start_transfer(ptr noundef %0, ptr noundef %1)
  br label %94

92:                                               ; preds = %87
  %93 = tail call fastcc i32 @dwc2_hc_continue_transfer(ptr noundef %0, ptr noundef %1)
  br label %94

94:                                               ; preds = %92, %91, %85, %84, %74, %63, %59, %52, %44, %41, %40, %37, %32
  %95 = phi i32 [ 0, %37 ], [ 0, %32 ], [ 0, %40 ], [ 0, %41 ], [ 0, %44 ], [ 0, %52 ], [ 0, %59 ], [ 0, %63 ], [ %86, %85 ], [ 1, %84 ], [ %93, %92 ], [ 1, %91 ], [ -1, %74 ]
  ret i32 %95
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hcd_start_xfer_ddma(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_hc_start_transfer(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 27
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 26
  %7 = load i16, ptr %6, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !13
  %8 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 10
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %55, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 31
  %13 = load i8, ptr %12, align 2, !range !10
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %55

15:                                               ; preds = %11
  %16 = load i8, ptr %1, align 4
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 5
  %19 = add nuw nsw i32 %18, 1296
  %20 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %21 = load i8, ptr %20, align 8, !range !10
  %22 = icmp eq i8 %21, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  %23 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 %19
  br i1 %22, label %27, label %26

26:                                               ; preds = %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 2176) #13, !srcloc !11
  br label %28

27:                                               ; preds = %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 -2146959360) #13, !srcloc !11
  br label %28

28:                                               ; preds = %27, %26
  %29 = load i8, ptr %1, align 4
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 5
  %32 = add nuw nsw i32 %31, 1280
  %33 = load ptr, ptr %23, align 4
  %34 = getelementptr i8, ptr %33, i32 %32
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %36 = load i8, ptr %20, align 8, !range !10
  %37 = icmp eq i8 %36, 0
  %38 = tail call i32 @llvm.bswap.i32(i32 %35) #13
  %39 = select i1 %37, i32 %35, i32 %38
  %40 = and i32 %39, 1073741823
  %41 = or i32 %40, -2147483648
  %42 = load i8, ptr %1, align 4
  %43 = zext i8 %42 to i32
  %44 = shl nuw nsw i32 %43, 5
  %45 = add nuw nsw i32 %44, 1280
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %37, label %50, label %46

46:                                               ; preds = %28
  %47 = tail call i32 @llvm.bswap.i32(i32 %41) #13
  %48 = load ptr, ptr %23, align 4
  %49 = getelementptr i8, ptr %48, i32 %45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #13, !srcloc !11
  br label %53

50:                                               ; preds = %28
  %51 = load ptr, ptr %23, align 4
  %52 = getelementptr i8, ptr %51, i32 %45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %41) #13, !srcloc !11
  br label %53

53:                                               ; preds = %50, %46
  %54 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 9
  store i8 1, ptr %54, align 2
  br label %354

55:                                               ; preds = %11, %2
  %56 = phi i32 [ 0, %2 ], [ -2147483648, %11 ]
  %57 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 14
  %58 = load i8, ptr %57, align 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %105, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 15
  %62 = load i8, ptr %61, align 4
  %63 = icmp ne i8 %62, 0
  %64 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %65 = load i24, ptr %64, align 1
  %66 = and i24 %65, 2048
  %67 = icmp eq i24 %66, 0
  %68 = select i1 %63, i1 %67, i1 false
  br i1 %68, label %69, label %73

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 6
  store i32 0, ptr %70, align 4
  %71 = lshr i24 %65, 16
  %72 = trunc i24 %71 to i2
  br label %101

73:                                               ; preds = %60
  %74 = and i24 %65, 2048
  %75 = icmp eq i24 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 2
  %78 = load i16, ptr %77, align 4
  %79 = and i16 %78, 2047
  %80 = zext i16 %79 to i32
  br label %89

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 6
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 2
  %85 = load i16, ptr %84, align 4
  %86 = and i16 %85, 2047
  %87 = zext i16 %86 to i32
  %88 = icmp ugt i32 %83, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %81, %76
  %90 = phi i32 [ %80, %76 ], [ %87, %81 ]
  %91 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 6
  store i32 %90, ptr %91, align 4
  %92 = lshr i24 %65, 16
  %93 = trunc i24 %92 to i2
  br label %101

94:                                               ; preds = %81
  %95 = icmp ugt i32 %83, 188
  %96 = lshr i24 %65, 16
  %97 = trunc i24 %96 to i2
  br i1 %95, label %98, label %101

98:                                               ; preds = %94
  store i32 188, ptr %82, align 4
  %99 = lshr i24 %65, 16
  %100 = trunc i24 %99 to i2
  br label %101

101:                                              ; preds = %98, %94, %89, %69
  %102 = phi i2 [ %93, %89 ], [ %100, %98 ], [ %97, %94 ], [ %72, %69 ]
  %103 = phi i32 [ %90, %89 ], [ 188, %98 ], [ %83, %94 ], [ 0, %69 ]
  switch i2 %102, label %104 [
    i2 -1, label %211
    i2 1, label %211
  ]

104:                                              ; preds = %101
  br label %211

105:                                              ; preds = %55
  %106 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %107 = load i24, ptr %106, align 1
  %108 = lshr i24 %107, 16
  %109 = trunc i24 %108 to i2
  switch i2 %109, label %122 [
    i2 -1, label %110
    i2 1, label %110
  ]

110:                                              ; preds = %105, %105
  %111 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 2
  %112 = load i16, ptr %111, align 4
  %113 = lshr i16 %112, 13
  %114 = and i16 %113, 3
  %115 = and i16 %112, 2047
  %116 = mul nuw nsw i16 %114, %115
  %117 = zext i16 %116 to i32
  %118 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 6
  %119 = load i32, ptr %118, align 4
  %120 = icmp ugt i32 %119, %117
  br i1 %120, label %121, label %133

121:                                              ; preds = %110
  store i32 %117, ptr %118, align 4
  br label %133

122:                                              ; preds = %105
  %123 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 6
  %124 = load i32, ptr %123, align 4
  %125 = icmp ugt i32 %124, %5
  br i1 %125, label %126, label %133

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 2
  %128 = load i16, ptr %127, align 4
  %129 = and i16 %128, 2047
  %130 = zext i16 %129 to i32
  %131 = add nuw i32 %5, 1
  %132 = sub i32 %131, %130
  store i32 %132, ptr %123, align 4
  br label %133

133:                                              ; preds = %126, %122, %121, %110
  %134 = phi i32 [ %119, %110 ], [ %117, %121 ], [ %124, %122 ], [ %132, %126 ]
  %135 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 6
  %136 = icmp eq i32 %134, 0
  br i1 %136, label %159, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 2
  %139 = load i16, ptr %138, align 4
  %140 = and i16 %139, 2047
  %141 = zext i16 %140 to i32
  %142 = add i32 %134, -1
  %143 = add i32 %142, %141
  %144 = udiv i32 %143, %141
  %145 = trunc i32 %144 to i16
  %146 = and i32 %144, 65535
  %147 = zext i16 %7 to i32
  %148 = icmp ugt i32 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %137
  %150 = mul nuw nsw i32 %141, %147
  br label %156

151:                                              ; preds = %137
  %152 = and i24 %107, 2048
  %153 = icmp eq i24 %152, 0
  br i1 %153, label %159, label %154

154:                                              ; preds = %151
  %155 = mul nuw nsw i32 %146, %141
  br label %156

156:                                              ; preds = %154, %149
  %157 = phi i32 [ %150, %149 ], [ %155, %154 ]
  %158 = phi i16 [ %7, %149 ], [ %145, %154 ]
  store i32 %157, ptr %135, align 4
  br label %159

159:                                              ; preds = %156, %151, %133
  %160 = phi i32 [ %134, %151 ], [ 0, %133 ], [ %157, %156 ]
  %161 = phi i16 [ %145, %151 ], [ 1, %133 ], [ %158, %156 ]
  switch i2 %109, label %169 [
    i2 -1, label %162
    i2 1, label %162
  ]

162:                                              ; preds = %159, %159
  %163 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 2
  %164 = load i16, ptr %163, align 4
  %165 = shl i16 %161, 13
  %166 = and i16 %165, 24576
  %167 = and i16 %164, -24577
  %168 = or i16 %167, %166
  store i16 %168, ptr %163, align 4
  br label %169

169:                                              ; preds = %162, %159
  %170 = and i24 %107, 196608
  %171 = icmp eq i24 %170, 65536
  br i1 %171, label %175, label %172

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 2
  %174 = load i16, ptr %173, align 4
  br label %205

175:                                              ; preds = %169
  %176 = and i24 %107, 61440
  %177 = icmp eq i24 %176, 12288
  br i1 %177, label %178, label %201

178:                                              ; preds = %175
  %179 = and i24 %107, 2048
  %180 = icmp eq i24 %179, 0
  %181 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 2
  %182 = load i16, ptr %181, align 4
  br i1 %180, label %194, label %183

183:                                              ; preds = %178
  %184 = lshr i16 %182, 13
  %185 = trunc i16 %184 to i2
  switch i2 %185, label %191 [
    i2 1, label %186
    i2 -2, label %188
  ]

186:                                              ; preds = %183
  %187 = and i16 %182, -6145
  store i16 %187, ptr %181, align 4
  br label %205

188:                                              ; preds = %183
  %189 = and i16 %182, -6145
  %190 = or i16 %189, 4096
  store i16 %190, ptr %181, align 4
  br label %205

191:                                              ; preds = %183
  %192 = and i16 %182, -6145
  %193 = or i16 %192, 2048
  store i16 %193, ptr %181, align 4
  br label %205

194:                                              ; preds = %178
  %195 = and i16 %182, 24576
  %196 = icmp eq i16 %195, 8192
  br i1 %196, label %197, label %199

197:                                              ; preds = %194
  %198 = and i16 %182, -6145
  store i16 %198, ptr %181, align 4
  br label %205

199:                                              ; preds = %194
  %200 = or i16 %182, 6144
  store i16 %200, ptr %181, align 4
  br label %205

201:                                              ; preds = %175
  %202 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 2
  %203 = load i16, ptr %202, align 4
  %204 = and i16 %203, -6145
  store i16 %204, ptr %202, align 4
  br label %205

205:                                              ; preds = %201, %199, %197, %191, %188, %186, %172
  %206 = phi i16 [ %174, %172 ], [ %204, %201 ], [ %200, %199 ], [ %198, %197 ], [ %193, %191 ], [ %190, %188 ], [ %187, %186 ]
  %207 = lshr i16 %206, 13
  %208 = zext i16 %207 to i32
  %209 = shl nuw nsw i32 %208, 20
  %210 = and i32 %209, 3145728
  br label %211

211:                                              ; preds = %205, %104, %101, %101
  %212 = phi i32 [ %103, %104 ], [ %160, %205 ], [ %103, %101 ], [ %103, %101 ]
  %213 = phi i16 [ 1, %104 ], [ %161, %205 ], [ 1, %101 ], [ 1, %101 ]
  %214 = phi i32 [ 1048576, %104 ], [ %210, %205 ], [ 3145728, %101 ], [ 3145728, %101 ]
  %215 = and i32 %212, 524287
  %216 = or i32 %215, %56
  %217 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 8
  store i16 %213, ptr %217, align 4
  %218 = zext i16 %213 to i32
  %219 = shl i32 %218, 19
  %220 = and i32 %219, 536346624
  %221 = or i32 %216, %220
  %222 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 2
  %223 = load i16, ptr %222, align 4
  %224 = lshr i16 %223, 11
  %225 = and i16 %224, 3
  %226 = zext i16 %225 to i32
  %227 = shl nuw nsw i32 %226, 29
  %228 = or i32 %227, %221
  %229 = load i8, ptr %1, align 4
  %230 = zext i8 %229 to i32
  %231 = shl nuw nsw i32 %230, 5
  %232 = add nuw nsw i32 %231, 1296
  %233 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %234 = load i8, ptr %233, align 8, !range !10
  %235 = icmp eq i8 %234, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %235, label %241, label %236

236:                                              ; preds = %211
  %237 = tail call i32 @llvm.bswap.i32(i32 %228) #13
  %238 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %239 = load ptr, ptr %238, align 4
  %240 = getelementptr i8, ptr %239, i32 %232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %240, i32 %237) #13, !srcloc !11
  br label %245

241:                                              ; preds = %211
  %242 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %243 = load ptr, ptr %242, align 4
  %244 = getelementptr i8, ptr %243, i32 %232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %244, i32 %228) #13, !srcloc !11
  br label %245

245:                                              ; preds = %241, %236
  %246 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 31
  %247 = load i8, ptr %246, align 2, !range !10
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %271, label %249

249:                                              ; preds = %245
  %250 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 5
  %251 = load i32, ptr %250, align 4
  %252 = icmp eq i32 %251, 0
  %253 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 4
  %254 = select i1 %252, ptr %253, ptr %250
  %255 = load i32, ptr %254, align 4
  %256 = load i8, ptr %1, align 4
  %257 = zext i8 %256 to i32
  %258 = shl nuw nsw i32 %257, 5
  %259 = add nuw nsw i32 %258, 1300
  %260 = load i8, ptr %233, align 8, !range !10
  %261 = icmp eq i8 %260, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %261, label %267, label %262

262:                                              ; preds = %249
  %263 = tail call i32 @llvm.bswap.i32(i32 %255) #13
  %264 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %265 = load ptr, ptr %264, align 4
  %266 = getelementptr i8, ptr %265, i32 %259
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %266, i32 %263) #13, !srcloc !11
  br label %271

267:                                              ; preds = %249
  %268 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %269 = load ptr, ptr %268, align 4
  %270 = getelementptr i8, ptr %269, i32 %259
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %270, i32 %255) #13, !srcloc !11
  br label %271

271:                                              ; preds = %267, %262, %245
  %272 = load i8, ptr %57, align 1
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %299, label %274

274:                                              ; preds = %271
  %275 = load i8, ptr %1, align 4
  %276 = zext i8 %275 to i32
  %277 = shl nuw nsw i32 %276, 5
  %278 = add nuw nsw i32 %277, 1284
  %279 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %280 = load ptr, ptr %279, align 4
  %281 = getelementptr i8, ptr %280, i32 %278
  %282 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %281) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %283 = load i8, ptr %233, align 8, !range !10
  %284 = icmp eq i8 %283, 0
  %285 = tail call i32 @llvm.bswap.i32(i32 %282) #13
  %286 = select i1 %284, i32 %282, i32 %285
  %287 = or i32 %286, -2147483648
  %288 = load i8, ptr %1, align 4
  %289 = zext i8 %288 to i32
  %290 = shl nuw nsw i32 %289, 5
  %291 = add nuw nsw i32 %290, 1284
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %284, label %296, label %292

292:                                              ; preds = %274
  %293 = tail call i32 @llvm.bswap.i32(i32 %287) #13
  %294 = load ptr, ptr %279, align 4
  %295 = getelementptr i8, ptr %294, i32 %291
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %295, i32 %293) #13, !srcloc !11
  br label %299

296:                                              ; preds = %274
  %297 = load ptr, ptr %279, align 4
  %298 = getelementptr i8, ptr %297, i32 %291
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %298, i32 %287) #13, !srcloc !11
  br label %299

299:                                              ; preds = %296, %292, %271
  %300 = load i8, ptr %1, align 4
  %301 = zext i8 %300 to i32
  %302 = shl nuw nsw i32 %301, 5
  %303 = add nuw nsw i32 %302, 1280
  %304 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %305 = load ptr, ptr %304, align 4
  %306 = getelementptr i8, ptr %305, i32 %303
  %307 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %306) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %308 = load i8, ptr %233, align 8, !range !10
  %309 = icmp eq i8 %308, 0
  %310 = tail call i32 @llvm.bswap.i32(i32 %307) #13
  %311 = select i1 %309, i32 %307, i32 %310
  %312 = and i32 %311, -3145729
  %313 = or i32 %312, %214
  store i32 %313, ptr %3, align 4
  call fastcc void @dwc2_hc_set_even_odd_frame(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  %314 = load i32, ptr %3, align 4
  %315 = and i32 %314, 1073741824
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %321, label %317

317:                                              ; preds = %299
  %318 = load ptr, ptr %0, align 8
  %319 = load i8, ptr %1, align 4
  %320 = zext i8 %319 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %318, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dwc2_hc_start_transfer, i32 noundef %320, i32 noundef %314) #14
  br label %321

321:                                              ; preds = %317, %299
  %322 = and i32 %314, 1073741823
  %323 = or i32 %322, -2147483648
  %324 = load i8, ptr %1, align 4
  %325 = zext i8 %324 to i32
  %326 = shl nuw nsw i32 %325, 5
  %327 = add nuw nsw i32 %326, 1280
  %328 = load i8, ptr %233, align 8, !range !10
  %329 = icmp eq i8 %328, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %329, label %334, label %330

330:                                              ; preds = %321
  %331 = tail call i32 @llvm.bswap.i32(i32 %323) #13
  %332 = load ptr, ptr %304, align 4
  %333 = getelementptr i8, ptr %332, i32 %327
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %333, i32 %331) #13, !srcloc !11
  br label %337

334:                                              ; preds = %321
  %335 = load ptr, ptr %304, align 4
  %336 = getelementptr i8, ptr %335, i32 %327
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %336, i32 %323) #13, !srcloc !11
  br label %337

337:                                              ; preds = %334, %330
  %338 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 9
  store i8 1, ptr %338, align 2
  %339 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 19
  %340 = load i8, ptr %339, align 4
  %341 = add i8 %340, 1
  store i8 %341, ptr %339, align 4
  %342 = load i8, ptr %246, align 2, !range !10
  %343 = icmp eq i8 %342, 0
  br i1 %343, label %344, label %354

344:                                              ; preds = %337
  %345 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %346 = load i24, ptr %345, align 1
  %347 = and i24 %346, 2048
  %348 = icmp eq i24 %347, 0
  br i1 %348, label %349, label %354

349:                                              ; preds = %344
  %350 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 6
  %351 = load i32, ptr %350, align 4
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %354, label %353

353:                                              ; preds = %349
  tail call fastcc void @dwc2_hc_write_packet(ptr noundef %0, ptr noundef %1)
  br label %354

354:                                              ; preds = %353, %349, %344, %337, %53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwc2_hc_continue_transfer(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 14
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %79

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 2
  %10 = load i16, ptr %9, align 4
  %11 = and i16 %10, 6144
  %12 = icmp eq i16 %11, 6144
  br i1 %12, label %79, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %15 = load i24, ptr %14, align 1
  %16 = and i24 %15, 2048
  %17 = icmp eq i24 %16, 0
  br i1 %17, label %52, label %18

18:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  %19 = load i8, ptr %1, align 4
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 5
  %22 = add nuw nsw i32 %21, 1280
  %23 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 %22
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %27 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %28 = load i8, ptr %27, align 8, !range !10
  %29 = icmp eq i8 %28, 0
  %30 = tail call i32 @llvm.bswap.i32(i32 %26) #13
  %31 = select i1 %29, i32 %26, i32 %30
  store i32 %31, ptr %3, align 4
  call fastcc void @dwc2_hc_set_even_odd_frame(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  %32 = load i32, ptr %3, align 4
  %33 = and i32 %32, 1073741823
  %34 = or i32 %33, -2147483648
  %35 = load i8, ptr %1, align 4
  %36 = zext i8 %35 to i32
  %37 = shl nuw nsw i32 %36, 5
  %38 = add nuw nsw i32 %37, 1280
  %39 = load i8, ptr %27, align 8, !range !10
  %40 = icmp eq i8 %39, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %40, label %45, label %41

41:                                               ; preds = %18
  %42 = tail call i32 @llvm.bswap.i32(i32 %34) #13
  %43 = load ptr, ptr %23, align 4
  %44 = getelementptr i8, ptr %43, i32 %38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #13, !srcloc !11
  br label %48

45:                                               ; preds = %18
  %46 = load ptr, ptr %23, align 4
  %47 = getelementptr i8, ptr %46, i32 %38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %34) #13, !srcloc !11
  br label %48

48:                                               ; preds = %45, %41
  %49 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 19
  %50 = load i8, ptr %49, align 4
  %51 = add i8 %50, 1
  store i8 %51, ptr %49, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %79

52:                                               ; preds = %13
  %53 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 7
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = icmp ult i32 %54, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %52
  %59 = lshr i24 %15, 16
  %60 = trunc i24 %59 to i2
  switch i2 %60, label %75 [
    i2 -1, label %61
    i2 1, label %61
  ]

61:                                               ; preds = %58, %58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %62 = load i8, ptr %1, align 4
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %63, 5
  %65 = add nuw nsw i32 %64, 1280
  %66 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr i8, ptr %67, i32 %65
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %70 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %71 = load i8, ptr %70, align 8, !range !10
  %72 = icmp eq i8 %71, 0
  %73 = tail call i32 @llvm.bswap.i32(i32 %69) #13
  %74 = select i1 %72, i32 %69, i32 %73
  store i32 %74, ptr %4, align 4
  call fastcc void @dwc2_hc_set_even_odd_frame(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  br label %75

75:                                               ; preds = %61, %58
  tail call fastcc void @dwc2_hc_write_packet(ptr noundef %0, ptr noundef %1)
  %76 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 19
  %77 = load i8, ptr %76, align 4
  %78 = add i8 %77, 1
  store i8 %78, ptr %76, align 4
  br label %79

79:                                               ; preds = %75, %52, %48, %8, %2
  %80 = phi i32 [ 1, %48 ], [ 1, %75 ], [ 0, %2 ], [ 0, %8 ], [ 0, %52 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_hc_set_even_odd_frame(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %5 = load i24, ptr %4, align 1
  %6 = lshr i24 %5, 16
  %7 = trunc i24 %6 to i2
  switch i2 %7, label %100 [
    i2 -1, label %8
    i2 1, label %8
  ]

8:                                                ; preds = %3, %3
  %9 = lshr i24 %5, 12
  %10 = and i24 %9, 15
  %11 = icmp eq i24 %10, 3
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = zext i24 %10 to i32
  %14 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 14
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, i32 %13, i32 3
  br label %18

18:                                               ; preds = %12, %8
  %19 = phi i32 [ 3, %8 ], [ %17, %12 ]
  %20 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 1040
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %24 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %25 = load i8, ptr %24, align 8, !range !10
  %26 = icmp eq i8 %25, 0
  %27 = tail call i32 @llvm.bswap.i32(i32 %23) #13
  %28 = select i1 %26, i32 %23, i32 %27
  %29 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 40
  %30 = load i16, ptr %29, align 2
  %31 = zext i16 %30 to i32
  %32 = and i32 %28, 65535
  %33 = sub nsw i32 %31, %32
  %34 = shl nsw i32 %33, 2
  %35 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %34, %36
  %38 = tail call i32 @usb_calc_bus_time(i32 noundef %19, i32 noundef 0, i32 noundef 0, i32 noundef %37) #13
  %39 = add i32 %38, 999
  %40 = sdiv i32 %39, 1000
  %41 = load ptr, ptr %20, align 4
  %42 = getelementptr i8, ptr %41, i32 1088
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %44 = load i8, ptr %24, align 8, !range !10
  %45 = icmp eq i8 %44, 0
  %46 = shl i32 %43, 8
  %47 = select i1 %45, i32 %43, i32 %46
  %48 = load ptr, ptr %20, align 4
  %49 = getelementptr i8, ptr %48, i32 1028
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %51 = load i8, ptr %24, align 8, !range !10
  %52 = icmp eq i8 %51, 0
  %53 = tail call i32 @llvm.bswap.i32(i32 %50) #13
  %54 = select i1 %52, i32 %50, i32 %53
  %55 = load ptr, ptr %20, align 4
  %56 = getelementptr i8, ptr %55, i32 1032
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %58 = load i8, ptr %24, align 8, !range !10
  %59 = icmp eq i8 %58, 0
  %60 = tail call i32 @llvm.bswap.i32(i32 %57) #13
  %61 = select i1 %59, i32 %57, i32 %60
  %62 = and i32 %47, 393216
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %63, i32 125, i32 1000
  %65 = lshr i32 %61, 16
  %66 = and i32 %54, 65535
  %67 = mul i32 %66, %40
  %68 = add nsw i32 %64, -1
  %69 = add i32 %68, %67
  %70 = udiv i32 %69, %64
  %71 = add nuw nsw i32 %70, %66
  %72 = sub nsw i32 %71, %65
  %73 = udiv i32 %72, %66
  %74 = add i32 %73, %61
  %75 = trunc i32 %74 to i16
  %76 = and i16 %75, 16383
  %77 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 24
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.dwc2_qh, ptr %78, i32 0, i32 15
  %80 = load i16, ptr %79, align 8
  %81 = add i16 %80, 1
  %82 = and i16 %81, 16383
  %83 = icmp eq i16 %76, %82
  br i1 %83, label %92, label %84

84:                                               ; preds = %18
  %85 = zext i16 %81 to i32
  %86 = sub i32 %74, %85
  %87 = and i32 %86, 16383
  %88 = icmp ugt i32 %87, 8190
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = add i16 %75, 16383
  %91 = and i16 %90, 16383
  store i16 %91, ptr %79, align 8
  br label %92

92:                                               ; preds = %89, %84, %18
  %93 = phi i16 [ %76, %89 ], [ %82, %84 ], [ %76, %18 ]
  %94 = and i16 %93, 1
  %95 = load i32, ptr %2, align 4
  %96 = and i32 %95, -536870913
  %97 = zext i16 %94 to i32
  %98 = shl nuw nsw i32 %97, 29
  %99 = or i32 %96, %98
  store i32 %99, ptr %2, align 4
  br label %100

100:                                              ; preds = %92, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_hc_write_packet(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = sub i32 %6, %8
  %10 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 2
  %11 = load i16, ptr %10, align 4
  %12 = and i16 %11, 2047
  %13 = zext i16 %12 to i32
  %14 = tail call i32 @llvm.umin.i32(i32 %9, i32 %13)
  %15 = add nuw nsw i32 %14, 3
  %16 = lshr i32 %15, 2
  %17 = ptrtoint ptr %4 to i32
  %18 = and i32 %17, 3
  %19 = icmp eq i32 %18, 0
  %20 = icmp eq i32 %14, 0
  br i1 %19, label %26, label %21

21:                                               ; preds = %2
  br i1 %20, label %84, label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %24 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %25 = call i32 @llvm.umax.i32(i32 %16, i32 1)
  br label %52

26:                                               ; preds = %2
  br i1 %20, label %84, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %29 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %30 = call i32 @llvm.umax.i32(i32 %16, i32 1)
  br label %31

31:                                               ; preds = %48, %27
  %32 = phi i32 [ 0, %27 ], [ %49, %48 ]
  %33 = phi ptr [ %4, %27 ], [ %50, %48 ]
  %34 = load i32, ptr %33, align 4
  %35 = load i8, ptr %1, align 4
  %36 = zext i8 %35 to i32
  %37 = shl nuw nsw i32 %36, 12
  %38 = add nuw nsw i32 %37, 4096
  %39 = load i8, ptr %28, align 8, !range !10
  %40 = icmp eq i8 %39, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %40, label %45, label %41

41:                                               ; preds = %31
  %42 = tail call i32 @llvm.bswap.i32(i32 %34) #13
  %43 = load ptr, ptr %29, align 4
  %44 = getelementptr i8, ptr %43, i32 %38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #13, !srcloc !11
  br label %48

45:                                               ; preds = %31
  %46 = load ptr, ptr %29, align 4
  %47 = getelementptr i8, ptr %46, i32 %38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %34) #13, !srcloc !11
  br label %48

48:                                               ; preds = %45, %41
  %49 = add nuw nsw i32 %32, 1
  %50 = getelementptr i32, ptr %33, i32 1
  %51 = icmp eq i32 %49, %30
  br i1 %51, label %84, label %31

52:                                               ; preds = %81, %22
  %53 = phi i32 [ 0, %22 ], [ %82, %81 ]
  %54 = phi ptr [ %4, %22 ], [ %56, %81 ]
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr i32, ptr %54, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = shl i32 %57, 8
  %59 = or i32 %58, %55
  %60 = getelementptr i32, ptr %54, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = shl i32 %61, 16
  %63 = or i32 %59, %62
  %64 = getelementptr i32, ptr %54, i32 3
  %65 = load i32, ptr %64, align 4
  %66 = shl i32 %65, 24
  %67 = or i32 %63, %66
  %68 = load i8, ptr %1, align 4
  %69 = zext i8 %68 to i32
  %70 = shl nuw nsw i32 %69, 12
  %71 = add nuw nsw i32 %70, 4096
  %72 = load i8, ptr %23, align 8, !range !10
  %73 = icmp eq i8 %72, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %73, label %78, label %74

74:                                               ; preds = %52
  %75 = tail call i32 @llvm.bswap.i32(i32 %67) #13
  %76 = load ptr, ptr %24, align 4
  %77 = getelementptr i8, ptr %76, i32 %71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #13, !srcloc !11
  br label %81

78:                                               ; preds = %52
  %79 = load ptr, ptr %24, align 4
  %80 = getelementptr i8, ptr %79, i32 %71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %67) #13, !srcloc !11
  br label %81

81:                                               ; preds = %78, %74
  %82 = add nuw nsw i32 %53, 1
  %83 = icmp eq i32 %82, %25
  br i1 %83, label %84, label %52

84:                                               ; preds = %81, %48, %26, %21
  %85 = load i32, ptr %7, align 4
  %86 = add i32 %85, %14
  store i32 %86, ptr %7, align 4
  %87 = load ptr, ptr %3, align 4
  %88 = getelementptr i8, ptr %87, i32 %14
  store ptr %88, ptr %3, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_calc_bus_time(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_dwc2_hcd_irq(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @dwc2_handle_hcd_intr(ptr noundef %3) #13
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_dwc2_hcd_start(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 18
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #13
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 28
  store i32 0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 27
  store i32 1, ptr %7, align 8
  %8 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %8) #13
  %9 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 20
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %13 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 34
  %14 = load i8, ptr %13, align 8, !range !10
  %15 = icmp eq i8 %14, 0
  %16 = lshr i32 %12, 24
  %17 = select i1 %15, i32 %12, i32 %16
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %45, label %20

20:                                               ; preds = %1
  tail call fastcc void @dwc2_hcd_reinit(ptr noundef %3)
  %21 = load ptr, ptr %9, align 4
  %22 = getelementptr i8, ptr %21, i32 1088
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %24 = load i8, ptr %13, align 8, !range !10
  %25 = icmp eq i8 %24, 0
  %26 = lshr i32 %23, 8
  %27 = select i1 %25, i32 %23, i32 %26
  %28 = and i32 %27, 4096
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #13
  %31 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 16
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = tail call i32 @regulator_enable(ptr noundef nonnull %32) #13
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %34, %30
  %38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #13
  br label %39

39:                                               ; preds = %37, %20
  %40 = phi i32 [ %38, %37 ], [ %5, %20 ]
  %41 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 11
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  tail call void @usb_hcd_resume_root_hub(ptr noundef %0) #13
  br label %45

45:                                               ; preds = %44, %39, %1
  %46 = phi i32 [ %5, %1 ], [ %40, %44 ], [ %40, %39 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %46) #13
  br label %47

47:                                               ; preds = %45, %34
  %48 = phi i32 [ %35, %34 ], [ 0, %45 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @_dwc2_hcd_stop(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 24
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %8 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 34
  %9 = load i8, ptr %8, align 8, !range !10
  %10 = icmp eq i8 %9, 0
  %11 = tail call i32 @llvm.bswap.i32(i32 %7) #13
  %12 = select i1 %10, i32 %7, i32 %11
  %13 = and i32 %12, -654311465
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %10, label %18, label %14

14:                                               ; preds = %1
  %15 = tail call i32 @llvm.bswap.i32(i32 %13) #13
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr i8, ptr %16, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #13, !srcloc !11
  br label %21

18:                                               ; preds = %1
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr i8, ptr %19, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %13) #13, !srcloc !11
  br label %21

21:                                               ; preds = %18, %14
  %22 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 15
  %23 = load i32, ptr %22, align 4
  tail call void @synchronize_irq(i32 noundef %23) #13
  %24 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 18
  %25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %24) #13
  %26 = load ptr, ptr %4, align 4
  %27 = getelementptr i8, ptr %26, i32 1088
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %29 = load i8, ptr %8, align 8, !range !10
  %30 = icmp eq i8 %29, 0
  %31 = lshr i32 %28, 8
  %32 = select i1 %30, i32 %28, i32 %31
  tail call void @dwc2_hcd_disconnect(ptr noundef %3, i1 noundef zeroext true)
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr i8, ptr %33, i32 24
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %36 = load i8, ptr %8, align 8, !range !10
  %37 = icmp eq i8 %36, 0
  %38 = tail call i32 @llvm.bswap.i32(i32 %35) #13
  %39 = select i1 %37, i32 %35, i32 %38
  %40 = and i32 %39, -654311465
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %37, label %45, label %41

41:                                               ; preds = %21
  %42 = tail call i32 @llvm.bswap.i32(i32 %40) #13
  %43 = load ptr, ptr %4, align 4
  %44 = getelementptr i8, ptr %43, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #13, !srcloc !11
  br label %48

45:                                               ; preds = %21
  %46 = load ptr, ptr %4, align 4
  %47 = getelementptr i8, ptr %46, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %40) #13, !srcloc !11
  br label %48

48:                                               ; preds = %45, %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  %49 = load ptr, ptr %4, align 4
  %50 = getelementptr i8, ptr %49, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 0) #13
  %51 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 28
  store i32 3, ptr %51, align 8
  %52 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 27
  store i32 0, ptr %52, align 8
  %53 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %53) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %25) #13
  %54 = and i32 %32, 4096
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 16
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = tail call i32 @regulator_disable(ptr noundef nonnull %58) #13
  br label %62

62:                                               ; preds = %60, %56, %48
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 3000, i32 noundef 2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_dwc2_hcd_get_frame_number(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1032
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %8 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 34
  %9 = load i8, ptr %8, align 8, !range !10
  %10 = icmp eq i8 %9, 0
  %11 = tail call i32 @llvm.bswap.i32(i32 %7) #13
  %12 = select i1 %10, i32 %7, i32 %11
  %13 = and i32 %12, 65535
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_dwc2_hcd_urb_enqueue(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %9 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 8
  %10 = load i8, ptr %9, align 8
  %11 = and i8 %10, 8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 29
  %15 = load i32, ptr %14, align 4
  %16 = lshr i32 %15, 21
  %17 = and i32 %16, 1
  %18 = tail call i32 @dwc2_exit_hibernation(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef %17) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.7) #14
  br label %22

22:                                               ; preds = %20, %13, %3
  %23 = load i8, ptr %9, align 8
  %24 = and i8 %23, 16
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = tail call i32 @dwc2_exit_partial_power_down(ptr noundef %5, i32 noundef 0, i1 noundef zeroext true) #13
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.42) #14
  br label %31

31:                                               ; preds = %29, %26, %22
  %32 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 15
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 9
  %37 = load i8, ptr %36, align 1, !range !10
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 20
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %44 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 34
  %45 = load i8, ptr %44, align 8, !range !10
  %46 = icmp eq i8 %45, 0
  %47 = lshr i32 %43, 24
  %48 = select i1 %46, i32 %43, i32 %47
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  tail call void @dwc2_gadget_exit_clock_gating(ptr noundef %5, i32 noundef 0) #13
  br label %53

52:                                               ; preds = %39
  tail call void @dwc2_host_exit_clock_gating(ptr noundef %5, i32 noundef 0)
  br label %53

53:                                               ; preds = %52, %51, %35, %31
  %54 = icmp eq ptr %7, null
  br i1 %54, label %321, label %55

55:                                               ; preds = %53
  %56 = load i32, ptr %8, align 4
  %57 = icmp ult i32 %56, 1073741824
  %58 = and i32 %56, -1073741824
  %59 = icmp eq i32 %58, 1073741824
  %60 = or i1 %57, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 18
  %63 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %62) #13
  %64 = getelementptr inbounds %struct.usb_host_endpoint, ptr %7, i32 0, i32 5
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.dwc2_qh, ptr %65, i32 0, i32 25
  %69 = load volatile ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, %68
  br i1 %70, label %71, label %72

71:                                               ; preds = %67, %61
  br label %72

72:                                               ; preds = %71, %67
  %73 = phi i32 [ 1, %71 ], [ 0, %67 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %62, i32 noundef %63) #13
  %74 = load i32, ptr %8, align 4
  br label %75

75:                                               ; preds = %72, %55
  %76 = phi i32 [ %74, %72 ], [ %56, %55 ]
  %77 = phi i32 [ %73, %72 ], [ 0, %55 ]
  %78 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 24
  %79 = load i32, ptr %78, align 4
  %80 = or i32 %2, 256
  %81 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %79, i32 16) #13
  %82 = extractvalue { i32, i1 } %81, 1
  %83 = extractvalue { i32, i1 } %81, 0
  %84 = tail call i32 @llvm.uadd.sat.i32(i32 %83, i32 60) #13
  %85 = select i1 %82, i32 -1, i32 %84
  %86 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %85, i32 noundef %80) #15
  %87 = icmp eq ptr %86, null
  br i1 %87, label %321, label %88

88:                                               ; preds = %75
  %89 = lshr i32 %76, 27
  %90 = and i32 %89, 24
  %91 = lshr i32 33555201, %90
  %92 = trunc i32 %91 to i8
  %93 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %86, i32 0, i32 10
  store i32 %79, ptr %93, align 8
  %94 = load i32, ptr %8, align 4
  %95 = lshr i32 %94, 8
  %96 = trunc i32 %95 to i8
  %97 = and i8 %96, 127
  %98 = lshr i32 %94, 15
  %99 = trunc i32 %98 to i8
  %100 = and i8 %99, 15
  %101 = trunc i32 %94 to i8
  %102 = and i8 %101, -128
  %103 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 4
  %104 = load i16, ptr %103, align 1
  %105 = and i16 %104, 2047
  %106 = lshr i16 %104, 11
  %107 = and i16 %106, 3
  %108 = add nuw nsw i16 %107, 1
  %109 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %86, i32 0, i32 13
  store i8 %97, ptr %109, align 2
  %110 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %86, i32 0, i32 13, i32 1
  store i8 %100, ptr %110, align 1
  %111 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %86, i32 0, i32 13, i32 2
  store i8 %92, ptr %111, align 4
  %112 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %86, i32 0, i32 13, i32 3
  store i8 %102, ptr %112, align 1
  %113 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %86, i32 0, i32 13, i32 4
  store i16 %105, ptr %113, align 2
  %114 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %86, i32 0, i32 13, i32 5
  store i16 %108, ptr %114, align 8
  %115 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 9
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.hc_driver, ptr %118, i32 0, i32 4
  %120 = load i32, ptr %119, align 4
  %121 = and i32 %120, 2
  %122 = icmp eq i32 %121, 0
  %123 = icmp ne ptr %116, null
  %124 = select i1 %122, i1 true, i1 %123
  %125 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 15
  %126 = load i32, ptr %125, align 4
  %127 = and i32 %126, 3
  %128 = icmp eq i32 %127, 0
  %129 = select i1 %124, i1 true, i1 %128
  br i1 %129, label %132, label %130

130:                                              ; preds = %88
  %131 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__._dwc2_hcd_urb_enqueue) #14
  br label %319

132:                                              ; preds = %88
  %133 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 13
  %134 = load i32, ptr %133, align 4
  %135 = lshr i32 %134, 7
  %136 = and i32 %135, 1
  %137 = lshr i32 %134, 5
  %138 = and i32 %137, 2
  %139 = or i32 %136, %138
  %140 = xor i32 %139, 1
  store ptr %1, ptr %86, align 64
  %141 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %86, i32 0, i32 2
  store ptr %116, ptr %141, align 8
  %142 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %86, i32 0, i32 3
  store i32 %126, ptr %142, align 4
  %143 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %144 = load i32, ptr %143, align 4
  %145 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %86, i32 0, i32 6
  store i32 %144, ptr %145, align 8
  %146 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 21
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %86, i32 0, i32 4
  store ptr %147, ptr %148, align 16
  %149 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 22
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %86, i32 0, i32 5
  store i32 %150, ptr %151, align 4
  %152 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %86, i32 0, i32 11
  store i32 %140, ptr %152, align 4
  %153 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 25
  %154 = load i32, ptr %153, align 4
  %155 = trunc i32 %154 to i16
  %156 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %86, i32 0, i32 12
  store i16 %155, ptr %156, align 16
  %157 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %86, i32 0, i32 8
  store i32 -115, ptr %157, align 32
  %158 = load i32, ptr %78, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %160, %132
  %161 = phi i32 [ %168, %160 ], [ 0, %132 ]
  %162 = getelementptr %struct.urb, ptr %1, i32 0, i32 29, i32 %161
  %163 = load i32, ptr %162, align 4
  %164 = getelementptr %struct.urb, ptr %1, i32 0, i32 29, i32 %161, i32 1
  %165 = load i32, ptr %164, align 4
  %166 = getelementptr %struct.dwc2_hcd_urb, ptr %86, i32 0, i32 14, i32 %161
  store i32 %163, ptr %166, align 4
  %167 = getelementptr %struct.dwc2_hcd_urb, ptr %86, i32 0, i32 14, i32 %161, i32 1
  store i32 %165, ptr %167, align 16
  %168 = add nuw nsw i32 %161, 1
  %169 = icmp eq i32 %168, %158
  br i1 %169, label %170, label %160

170:                                              ; preds = %160, %132
  %171 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 2
  store ptr %86, ptr %171, align 4
  %172 = getelementptr inbounds %struct.usb_host_endpoint, ptr %7, i32 0, i32 5
  %173 = load ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %179

175:                                              ; preds = %170
  %176 = tail call ptr @dwc2_hcd_qh_create(ptr noundef %5, ptr noundef nonnull %86, i32 noundef %2) #13
  %177 = icmp eq ptr %176, null
  br i1 %177, label %319, label %178

178:                                              ; preds = %175
  store ptr %176, ptr %172, align 4
  br label %179

179:                                              ; preds = %178, %170
  %180 = phi ptr [ %173, %170 ], [ %176, %178 ]
  %181 = and i32 %2, 17
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %187, label %183, !prof !14

183:                                              ; preds = %179
  %184 = and i32 %2, 1
  %185 = icmp eq i32 %184, 0
  %186 = select i1 %185, i32 1, i32 2
  br label %187

187:                                              ; preds = %183, %179
  %188 = phi i32 [ 0, %179 ], [ %186, %183 ]
  %189 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %188, i32 6
  %190 = load ptr, ptr %189, align 4
  %191 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %190, i32 noundef %80, i32 noundef 44) #16
  %192 = icmp eq ptr %191, null
  br i1 %192, label %304, label %193

193:                                              ; preds = %187
  %194 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 18
  %195 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %194) #13
  %196 = tail call i32 @usb_hcd_link_urb_to_ep(ptr noundef %0, ptr noundef %1) #13
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %302

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 35
  %200 = load i32, ptr %199, align 4
  %201 = and i32 %200, 2
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %198
  %204 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %204, ptr noundef nonnull @.str.44) #14
  br label %291

205:                                              ; preds = %198
  %206 = load ptr, ptr %86, align 64
  %207 = getelementptr inbounds %struct.urb, ptr %206, i32 0, i32 8
  %208 = load ptr, ptr %207, align 4
  %209 = getelementptr inbounds %struct.usb_device, ptr %208, i32 0, i32 4
  %210 = load i32, ptr %209, align 4
  %211 = icmp eq i32 %210, 1
  br i1 %211, label %212, label %229

212:                                              ; preds = %205
  %213 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 2, i32 3
  %214 = load i32, ptr %213, align 8
  %215 = and i32 %214, 983040
  %216 = icmp eq i32 %215, 327680
  br i1 %216, label %217, label %229

217:                                              ; preds = %212
  %218 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 1
  %219 = load ptr, ptr %218, align 4
  %220 = getelementptr i8, ptr %219, i32 1088
  %221 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %220) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %222 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 34
  %223 = load i8, ptr %222, align 8, !range !10
  %224 = icmp eq i8 %223, 0
  %225 = shl i32 %221, 8
  %226 = select i1 %224, i32 %221, i32 %225
  %227 = and i32 %226, 393216
  %228 = icmp eq i32 %227, 131072
  br i1 %228, label %291, label %229

229:                                              ; preds = %217, %212, %205
  tail call void @dwc2_hcd_qtd_init(ptr noundef nonnull %191, ptr noundef nonnull %86) #13
  %230 = tail call i32 @dwc2_hcd_qtd_add(ptr noundef %5, ptr noundef nonnull %191, ptr noundef nonnull %180) #13
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %234, label %232

232:                                              ; preds = %229
  %233 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %233, ptr noundef nonnull @.str.45, i32 noundef %230) #14
  br label %291

234:                                              ; preds = %229
  %235 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 1
  %236 = load ptr, ptr %235, align 4
  %237 = getelementptr i8, ptr %236, i32 24
  %238 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %237) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %239 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 34
  %240 = load i8, ptr %239, align 8, !range !10
  %241 = icmp eq i8 %240, 0
  %242 = lshr i32 %238, 24
  %243 = select i1 %241, i32 %238, i32 %242
  %244 = and i32 %243, 8
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %263

246:                                              ; preds = %234
  %247 = getelementptr inbounds %struct.dwc2_qtd, ptr %191, i32 0, i32 15
  %248 = load ptr, ptr %247, align 8
  %249 = getelementptr inbounds %struct.dwc2_qh, ptr %248, i32 0, i32 1
  %250 = load i8, ptr %249, align 4
  %251 = icmp eq i8 %250, 2
  br i1 %251, label %252, label %259

252:                                              ; preds = %246
  %253 = getelementptr inbounds %struct.dwc2_qtd, ptr %191, i32 0, i32 14
  %254 = load ptr, ptr %253, align 4
  %255 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %254, i32 0, i32 11
  %256 = load i32, ptr %255, align 4
  %257 = and i32 %256, 1
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %263, label %259

259:                                              ; preds = %252, %246
  %260 = tail call i32 @dwc2_hcd_select_transactions(ptr noundef %5) #13
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %259
  tail call void @dwc2_hcd_queue_transactions(ptr noundef %5, i32 noundef %260) #13
  br label %263

263:                                              ; preds = %262, %259, %252, %234
  %264 = icmp eq i32 %77, 0
  br i1 %264, label %290, label %265

265:                                              ; preds = %263
  %266 = load ptr, ptr %172, align 4
  %267 = icmp eq ptr %266, null
  br i1 %267, label %268, label %269

268:                                              ; preds = %265
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 751, i32 noundef 9, ptr noundef null) #13
  br label %273

269:                                              ; preds = %265
  %270 = getelementptr inbounds %struct.dwc2_qh, ptr %266, i32 0, i32 11
  %271 = load i16, ptr %270, align 8
  %272 = zext i16 %271 to i32
  br label %273

273:                                              ; preds = %269, %268
  %274 = phi i32 [ %272, %269 ], [ 0, %268 ]
  %275 = load i32, ptr %153, align 4
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %282, label %277

277:                                              ; preds = %273
  %278 = sdiv i32 %274, %275
  %279 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 13
  %280 = load i32, ptr %279, align 4
  %281 = add i32 %280, %278
  store i32 %281, ptr %279, align 4
  br label %282

282:                                              ; preds = %277, %273
  %283 = load i32, ptr %8, align 4
  %284 = icmp ult i32 %283, 1073741824
  %285 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 14
  %286 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 15
  %287 = select i1 %284, ptr %286, ptr %285
  %288 = load i32, ptr %287, align 4
  %289 = add i32 %288, 1
  store i32 %289, ptr %287, align 4
  br label %290

290:                                              ; preds = %282, %263
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %194, i32 noundef %195) #13
  br label %321

291:                                              ; preds = %232, %217, %203
  %292 = phi i32 [ %230, %232 ], [ -19, %217 ], [ -19, %203 ]
  store ptr null, ptr %86, align 64
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %0, ptr noundef %1) #13
  br i1 %174, label %293, label %302

293:                                              ; preds = %291
  %294 = getelementptr inbounds %struct.dwc2_qh, ptr %180, i32 0, i32 24
  %295 = load ptr, ptr %294, align 8
  %296 = icmp eq ptr %295, null
  br i1 %296, label %302, label %297

297:                                              ; preds = %293
  %298 = getelementptr inbounds %struct.dwc2_host_chan, ptr %295, i32 0, i32 24
  %299 = load ptr, ptr %298, align 4
  %300 = icmp eq ptr %299, %180
  br i1 %300, label %301, label %302

301:                                              ; preds = %297
  store ptr null, ptr %298, align 4
  br label %302

302:                                              ; preds = %301, %297, %293, %291, %193
  %303 = phi i32 [ %196, %193 ], [ %292, %301 ], [ %292, %297 ], [ %292, %293 ], [ %292, %291 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %194, i32 noundef %195) #13
  store ptr null, ptr %171, align 4
  tail call void @kfree(ptr noundef nonnull %191) #13
  br label %304

304:                                              ; preds = %302, %187
  %305 = phi i32 [ %303, %302 ], [ -12, %187 ]
  br i1 %174, label %306, label %319

306:                                              ; preds = %304
  store ptr null, ptr %172, align 4
  tail call void @dwc2_hcd_qh_unlink(ptr noundef %5, ptr noundef nonnull %180) #13
  %307 = getelementptr inbounds %struct.dwc2_qh, ptr %180, i32 0, i32 23
  %308 = load ptr, ptr %307, align 8
  %309 = icmp eq ptr %308, %307
  br i1 %309, label %318, label %310

310:                                              ; preds = %310, %306
  %311 = phi ptr [ %313, %310 ], [ %308, %306 ]
  %312 = getelementptr i8, ptr %311, i32 -36
  %313 = load ptr, ptr %311, align 4
  %314 = getelementptr i8, ptr %311, i32 4
  %315 = load ptr, ptr %314, align 4
  %316 = getelementptr inbounds %struct.list_head, ptr %313, i32 0, i32 1
  store ptr %315, ptr %316, align 4
  store volatile ptr %313, ptr %315, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %311, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %314, align 4
  tail call void @kfree(ptr noundef %312) #13
  %317 = icmp eq ptr %313, %307
  br i1 %317, label %318, label %310

318:                                              ; preds = %310, %306
  tail call void @dwc2_hcd_qh_free(ptr noundef %5, ptr noundef %180) #13
  br label %319

319:                                              ; preds = %318, %304, %175, %130
  %320 = phi i32 [ %305, %318 ], [ %305, %304 ], [ -22, %130 ], [ -12, %175 ]
  tail call void @kfree(ptr noundef nonnull %86) #13
  br label %321

321:                                              ; preds = %319, %290, %75, %53
  %322 = phi i32 [ %320, %319 ], [ 0, %290 ], [ -22, %53 ], [ -12, %75 ]
  ret i32 %322
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_dwc2_hcd_urb_dequeue(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 18
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #13
  %8 = tail call i32 @usb_hcd_check_unlink_urb(ptr noundef %0, ptr noundef %1, i32 noundef %2) #13
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %66

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %66, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %12, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %61, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.dwc2_qtd, ptr %16, i32 0, i32 15
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %61, label %22

22:                                               ; preds = %18
  store ptr null, ptr %12, align 4
  %23 = getelementptr inbounds %struct.dwc2_qtd, ptr %16, i32 0, i32 1
  %24 = load i8, ptr %23, align 4
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.dwc2_qh, ptr %20, i32 0, i32 24
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 35
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  tail call void @dwc2_hc_halt(ptr noundef %5, ptr noundef nonnull %28, i32 noundef 13) #13
  br label %36

36:                                               ; preds = %35, %30, %26, %22
  %37 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 32
  %38 = load i8, ptr %37, align 1, !range !10
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = load i8, ptr %23, align 4
  %42 = getelementptr inbounds %struct.dwc2_qtd, ptr %16, i32 0, i32 16
  %43 = getelementptr inbounds %struct.dwc2_qtd, ptr %16, i32 0, i32 16, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %42, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %44, ptr %46, align 4
  store volatile ptr %45, ptr %44, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %42, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %43, align 4
  tail call void @kfree(ptr noundef nonnull %16) #13
  %47 = icmp eq i8 %41, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %40
  tail call void @dwc2_hcd_qh_deactivate(ptr noundef %5, ptr noundef nonnull %20, i32 noundef 0) #13
  %49 = getelementptr inbounds %struct.dwc2_qh, ptr %20, i32 0, i32 24
  store ptr null, ptr %49, align 8
  br label %61

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.dwc2_qh, ptr %20, i32 0, i32 23
  %52 = load volatile ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, %51
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  tail call void @dwc2_hcd_qh_unlink(ptr noundef %5, ptr noundef nonnull %20) #13
  br label %61

55:                                               ; preds = %36
  %56 = getelementptr inbounds %struct.dwc2_qtd, ptr %16, i32 0, i32 16
  %57 = getelementptr inbounds %struct.dwc2_qtd, ptr %16, i32 0, i32 16, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = load ptr, ptr %56, align 4
  %60 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  store ptr %58, ptr %60, align 4
  store volatile ptr %59, ptr %58, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %56, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %57, align 4
  tail call void @kfree(ptr noundef nonnull %16) #13
  br label %61

61:                                               ; preds = %55, %54, %50, %48, %18, %14
  %62 = phi i32 [ -22, %14 ], [ -22, %18 ], [ 0, %48 ], [ 0, %54 ], [ 0, %50 ], [ 0, %55 ]
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %0, ptr noundef %1) #13
  %63 = load ptr, ptr %11, align 4
  tail call void @kfree(ptr noundef %63) #13
  store ptr null, ptr %11, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !15
  %64 = load i16, ptr %6, align 4
  %65 = add i16 %64, 1
  store i16 %65, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  tail call void @usb_hcd_giveback_urb(ptr noundef %0, ptr noundef %1, i32 noundef %2) #13
  tail call void @_raw_spin_lock(ptr noundef %6) #13
  br label %66

66:                                               ; preds = %61, %10, %3
  %67 = phi i32 [ %8, %3 ], [ %62, %61 ], [ 0, %10 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #13
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc2_map_urb_for_dma(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 22
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 3
  %7 = icmp ne i32 %6, 0
  %8 = load i1, ptr @dwc2_map_urb_for_dma.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !12

11:                                               ; preds = %3
  store i1 true, ptr @dwc2_map_urb_for_dma.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 2545, i32 noundef 9, ptr noundef null) #13
  br label %12

12:                                               ; preds = %11, %3
  %13 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 18
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 16
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %53

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %53, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %26 = load ptr, ptr %25, align 4
  %27 = ptrtoint ptr %26 to i32
  %28 = and i32 %27, 3
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %53, label %30

30:                                               ; preds = %24
  %31 = add i32 %22, 67
  %32 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %31, i32 noundef %2) #15
  %33 = icmp eq ptr %32, null
  br i1 %33, label %86, label %34

34:                                               ; preds = %30
  %35 = load i32, ptr %25, align 4
  %36 = load i32, ptr %21, align 4
  %37 = getelementptr i8, ptr %32, i32 %36
  %38 = ptrtoint ptr %37 to i32
  %39 = add i32 %38, 63
  %40 = and i32 %39, -64
  %41 = inttoptr i32 %40 to ptr
  store i32 %35, ptr %41, align 64
  %42 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 13
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 512
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %34
  %47 = load ptr, ptr %25, align 4
  %48 = load i32, ptr %21, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %32, ptr align 1 %47, i32 %48, i1 false) #13
  %49 = load i32, ptr %42, align 4
  br label %50

50:                                               ; preds = %46, %34
  %51 = phi i32 [ %49, %46 ], [ %43, %34 ]
  store ptr %32, ptr %25, align 4
  %52 = or i32 %51, 8388608
  store i32 %52, ptr %42, align 4
  br label %53

53:                                               ; preds = %50, %24, %20, %16, %12
  %54 = tail call i32 @usb_hcd_map_urb_for_dma(ptr noundef %0, ptr noundef %1, i32 noundef %2) #13
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %86, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 13
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, 8388608
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %86, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr i8, ptr %63, i32 %65
  %67 = ptrtoint ptr %66 to i32
  %68 = add i32 %67, 63
  %69 = and i32 %68, -64
  %70 = inttoptr i32 %69 to ptr
  %71 = load ptr, ptr %70, align 64
  %72 = and i32 %58, 512
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %61
  %75 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %76 = load i32, ptr %75, align 4
  %77 = icmp ult i32 %76, 1073741824
  %78 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 20
  %79 = select i1 %77, ptr %64, ptr %78
  %80 = load i32, ptr %79, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %71, ptr align 1 %63, i32 %80, i1 false) #13
  %81 = load ptr, ptr %62, align 4
  br label %82

82:                                               ; preds = %74, %61
  %83 = phi ptr [ %81, %74 ], [ %63, %61 ]
  tail call void @kfree(ptr noundef %83) #13
  store ptr %71, ptr %62, align 4
  %84 = load i32, ptr %57, align 4
  %85 = and i32 %84, -8388609
  store i32 %85, ptr %57, align 4
  br label %86

86:                                               ; preds = %82, %56, %53, %30
  %87 = phi i32 [ 0, %53 ], [ -12, %30 ], [ %54, %56 ], [ %54, %82 ]
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwc2_unmap_urb_for_dma(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @usb_hcd_unmap_urb_for_dma(ptr noundef %0, ptr noundef %1) #13
  %3 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 13
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 8388608
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %9, i32 %11
  %13 = ptrtoint ptr %12 to i32
  %14 = add i32 %13, 63
  %15 = and i32 %14, -64
  %16 = inttoptr i32 %15 to ptr
  %17 = load ptr, ptr %16, align 64
  %18 = and i32 %4, 512
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %22 = load i32, ptr %21, align 4
  %23 = icmp ult i32 %22, 1073741824
  %24 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 20
  %25 = select i1 %23, ptr %10, ptr %24
  %26 = load i32, ptr %25, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %17, ptr align 1 %9, i32 %26, i1 false) #13
  %27 = load ptr, ptr %8, align 4
  br label %28

28:                                               ; preds = %20, %7
  %29 = phi ptr [ %27, %20 ], [ %9, %7 ]
  tail call void @kfree(ptr noundef %29) #13
  store ptr %17, ptr %8, align 4
  %30 = load i32, ptr %3, align 4
  %31 = and i32 %30, -8388609
  store i32 %31, ptr %3, align 4
  br label %32

32:                                               ; preds = %28, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @_dwc2_hcd_endpoint_disable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 18
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #13
  %7 = getelementptr inbounds %struct.usb_host_endpoint, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %47, label %10

10:                                               ; preds = %22, %2
  %11 = phi i32 [ %23, %22 ], [ %6, %2 ]
  %12 = phi ptr [ %24, %22 ], [ %8, %2 ]
  %13 = phi i32 [ %18, %22 ], [ 250, %2 ]
  %14 = getelementptr inbounds %struct.dwc2_qh, ptr %12, i32 0, i32 23
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %26, label %17

17:                                               ; preds = %10
  %18 = add nsw i32 %13, -1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.47) #14
  br label %47

22:                                               ; preds = %17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %11) #13
  tail call void @msleep(i32 noundef 20) #13
  %23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #13
  %24 = load ptr, ptr %7, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %47, label %10

26:                                               ; preds = %10
  tail call void @dwc2_hcd_qh_unlink(ptr noundef %4, ptr noundef nonnull %12) #13
  %27 = load ptr, ptr %14, align 8
  %28 = icmp eq ptr %27, %14
  br i1 %28, label %37, label %29

29:                                               ; preds = %29, %26
  %30 = phi ptr [ %32, %29 ], [ %27, %26 ]
  %31 = getelementptr i8, ptr %30, i32 -36
  %32 = load ptr, ptr %30, align 4
  %33 = getelementptr i8, ptr %30, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr %34, ptr %35, align 4
  store volatile ptr %32, ptr %34, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %30, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %33, align 4
  tail call void @kfree(ptr noundef %31) #13
  %36 = icmp eq ptr %32, %14
  br i1 %36, label %37, label %29

37:                                               ; preds = %29, %26
  store ptr null, ptr %7, align 4
  %38 = getelementptr inbounds %struct.dwc2_qh, ptr %12, i32 0, i32 24
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.dwc2_host_chan, ptr %39, i32 0, i32 24
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %12
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store ptr null, ptr %42, align 4
  br label %46

46:                                               ; preds = %45, %41, %37
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %11) #13
  tail call void @dwc2_hcd_qh_free(ptr noundef %4, ptr noundef %12) #13
  br label %49

47:                                               ; preds = %22, %20, %2
  %48 = phi i32 [ %11, %20 ], [ %6, %2 ], [ %23, %22 ]
  store ptr null, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %48) #13
  br label %49

49:                                               ; preds = %47, %46
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @_dwc2_hcd_endpoint_reset(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 18
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #13
  %7 = getelementptr inbounds %struct.usb_host_endpoint, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.dwc2_qh, ptr %8, i32 0, i32 6
  store i8 0, ptr %11, align 1
  br label %12

12:                                               ; preds = %10, %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @_dwc2_hcd_hub_status_data(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #12 {
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 35
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 61
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i8 0, i8 2
  store i8 %9, ptr %1, align 1
  %10 = xor i1 %8, true
  %11 = zext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_dwc2_hcd_hub_control(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, ptr nocapture noundef writeonly %4, i16 noundef zeroext %5) #0 {
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %8 = load ptr, ptr %7, align 4
  switch i16 %1, label %375 [
    i16 8193, label %9
    i16 8961, label %14
    i16 -24570, label %98
    i16 -24576, label %106
    i16 -23808, label %107
    i16 8195, label %376
    i16 8963, label %204
  ]

9:                                                ; preds = %6
  %10 = icmp ult i16 %2, 2
  br i1 %10, label %376, label %11

11:                                               ; preds = %9
  %12 = zext i16 %2 to i32
  %13 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.48, i32 noundef %12) #14
  br label %376

14:                                               ; preds = %6
  %15 = zext i16 %2 to i32
  %16 = icmp eq i16 %2, 5
  %17 = icmp eq i16 %3, 1
  %18 = or i1 %16, %17
  br i1 %18, label %19, label %375

19:                                               ; preds = %14
  switch i16 %2, label %96 [
    i16 1, label %20
    i16 2, label %39
    i16 8, label %45
    i16 22, label %376
    i16 16, label %72
    i16 20, label %76
    i16 17, label %80
    i16 18, label %84
    i16 23, label %88
    i16 19, label %92
  ]

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.dwc2_hsotg, ptr %8, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 1088
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %25 = getelementptr inbounds %struct.dwc2_hsotg, ptr %8, i32 0, i32 34
  %26 = load i8, ptr %25, align 8, !range !10
  %27 = icmp eq i8 %26, 0
  %28 = tail call i32 @llvm.bswap.i32(i32 %24) #13
  %29 = select i1 %27, i32 %24, i32 %28
  %30 = and i32 %29, -47
  %31 = or i32 %30, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %27, label %36, label %32

32:                                               ; preds = %20
  %33 = tail call i32 @llvm.bswap.i32(i32 %31) #13
  %34 = load ptr, ptr %21, align 4
  %35 = getelementptr i8, ptr %34, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #13, !srcloc !11
  br label %376

36:                                               ; preds = %20
  %37 = load ptr, ptr %21, align 4
  %38 = getelementptr i8, ptr %37, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %31) #13, !srcloc !11
  br label %376

39:                                               ; preds = %19
  %40 = getelementptr inbounds %struct.dwc2_hsotg, ptr %8, i32 0, i32 9
  %41 = load i8, ptr %40, align 1, !range !10
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %376, label %43

43:                                               ; preds = %39
  %44 = tail call i32 @dwc2_port_resume(ptr noundef %8) #13
  br label %376

45:                                               ; preds = %19
  %46 = getelementptr inbounds %struct.dwc2_hsotg, ptr %8, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr i8, ptr %47, i32 1088
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %50 = getelementptr inbounds %struct.dwc2_hsotg, ptr %8, i32 0, i32 34
  %51 = load i8, ptr %50, align 8, !range !10
  %52 = icmp eq i8 %51, 0
  %53 = tail call i32 @llvm.bswap.i32(i32 %49) #13
  %54 = select i1 %52, i32 %49, i32 %53
  %55 = and i32 %54, 4096
  %56 = and i32 %54, -4143
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %52, label %61, label %57

57:                                               ; preds = %45
  %58 = tail call i32 @llvm.bswap.i32(i32 %56) #13
  %59 = load ptr, ptr %46, align 4
  %60 = getelementptr i8, ptr %59, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #13, !srcloc !11
  br label %64

61:                                               ; preds = %45
  %62 = load ptr, ptr %46, align 4
  %63 = getelementptr i8, ptr %62, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %56) #13, !srcloc !11
  br label %64

64:                                               ; preds = %61, %57
  %65 = icmp eq i32 %55, 0
  br i1 %65, label %376, label %66

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.dwc2_hsotg, ptr %8, i32 0, i32 16
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %376, label %70

70:                                               ; preds = %66
  %71 = tail call i32 @regulator_disable(ptr noundef nonnull %68) #13
  br label %376

72:                                               ; preds = %19
  %73 = getelementptr inbounds %struct.dwc2_hsotg, ptr %8, i32 0, i32 35
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, -2
  store i32 %75, ptr %73, align 4
  br label %376

76:                                               ; preds = %19
  %77 = getelementptr inbounds %struct.dwc2_hsotg, ptr %8, i32 0, i32 35
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, -5
  store i32 %79, ptr %77, align 4
  br label %376

80:                                               ; preds = %19
  %81 = getelementptr inbounds %struct.dwc2_hsotg, ptr %8, i32 0, i32 35
  %82 = load i32, ptr %81, align 4
  %83 = and i32 %82, -9
  store i32 %83, ptr %81, align 4
  br label %376

84:                                               ; preds = %19
  %85 = getelementptr inbounds %struct.dwc2_hsotg, ptr %8, i32 0, i32 35
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, -17
  store i32 %87, ptr %85, align 4
  br label %376

88:                                               ; preds = %19
  %89 = getelementptr inbounds %struct.dwc2_hsotg, ptr %8, i32 0, i32 35
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %90, -65
  store i32 %91, ptr %89, align 4
  br label %376

92:                                               ; preds = %19
  %93 = getelementptr inbounds %struct.dwc2_hsotg, ptr %8, i32 0, i32 35
  %94 = load i32, ptr %93, align 4
  %95 = and i32 %94, -33
  store i32 %95, ptr %93, align 4
  br label %376

96:                                               ; preds = %19
  %97 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.49, i32 noundef %15) #14
  br label %376

98:                                               ; preds = %6
  store i8 9, ptr %4, align 1
  %99 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 1
  store i8 41, ptr %99, align 1
  %100 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 2
  store i8 1, ptr %100, align 1
  %101 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 3
  store i16 8, ptr %101, align 1
  %102 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 4
  store i8 1, ptr %102, align 1
  %103 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 5
  store i8 0, ptr %103, align 1
  %104 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 6
  store i8 0, ptr %104, align 1
  %105 = getelementptr %struct.usb_hub_descriptor, ptr %4, i32 0, i32 6, i32 0, i32 0, i32 1
  store i8 -1, ptr %105, align 1
  br label %376

106:                                              ; preds = %6
  store i32 0, ptr %4, align 1
  br label %376

107:                                              ; preds = %6
  %108 = icmp eq i16 %3, 1
  br i1 %108, label %109, label %375

109:                                              ; preds = %107
  %110 = getelementptr inbounds %struct.dwc2_hsotg, ptr %8, i32 0, i32 35
  %111 = load i32, ptr %110, align 4
  %112 = shl i32 %111, 16
  %113 = and i32 %112, 65536
  %114 = shl i32 %111, 14
  %115 = and i32 %114, 131072
  %116 = or i32 %115, %113
  %117 = and i32 %114, 262144
  %118 = or i32 %116, %117
  %119 = shl i32 %111, 15
  %120 = and i32 %119, 2097152
  %121 = or i32 %118, %120
  %122 = shl i32 %111, 18
  %123 = and i32 %122, 1048576
  %124 = or i32 %121, %123
  %125 = and i32 %111, 32
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %109
  %128 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %128, ptr noundef nonnull @.str.50) #14
  %129 = or i32 %124, 524288
  %130 = load i32, ptr %110, align 4
  br label %131

131:                                              ; preds = %127, %109
  %132 = phi i32 [ %130, %127 ], [ %111, %109 ]
  %133 = phi i32 [ %129, %127 ], [ %124, %109 ]
  %134 = and i32 %132, 2
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  store i32 %133, ptr %4, align 4
  br label %376

137:                                              ; preds = %131
  %138 = getelementptr inbounds %struct.dwc2_hsotg, ptr %8, i32 0, i32 1
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr i8, ptr %139, i32 1088
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %140) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %142 = getelementptr inbounds %struct.dwc2_hsotg, ptr %8, i32 0, i32 34
  %143 = load i8, ptr %142, align 8, !range !10
  %144 = icmp eq i8 %143, 0
  %145 = tail call i32 @llvm.bswap.i32(i32 %141) #13
  %146 = select i1 %144, i32 %141, i32 %145
  %147 = and i32 %146, 1
  %148 = or i32 %147, %133
  %149 = lshr i32 %146, 1
  %150 = and i32 %149, 2
  %151 = or i32 %148, %150
  %152 = lshr i32 %146, 5
  %153 = and i32 %152, 4
  %154 = or i32 %151, %153
  %155 = and i32 %149, 8
  %156 = or i32 %154, %155
  %157 = lshr i32 %146, 4
  %158 = and i32 %157, 16
  %159 = or i32 %156, %158
  %160 = and i32 %157, 256
  %161 = or i32 %159, %160
  %162 = lshr i32 %146, 17
  %163 = and i32 %162, 3
  switch i32 %163, label %168 [
    i32 0, label %164
    i32 2, label %166
  ]

164:                                              ; preds = %137
  %165 = or i32 %161, 1024
  br label %168

166:                                              ; preds = %137
  %167 = or i32 %161, 512
  br label %168

168:                                              ; preds = %166, %164, %137
  %169 = phi i32 [ %165, %164 ], [ %167, %166 ], [ %161, %137 ]
  %170 = and i32 %146, 122880
  %171 = icmp eq i32 %170, 0
  %172 = or i32 %169, 2048
  %173 = select i1 %171, i32 %169, i32 %172
  %174 = getelementptr inbounds %struct.dwc2_hsotg, ptr %8, i32 0, i32 3, i32 33
  %175 = load i8, ptr %174, align 4, !range !10
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %203, label %177

177:                                              ; preds = %168
  %178 = getelementptr inbounds %struct.dwc2_hsotg, ptr %8, i32 0, i32 48
  %179 = load i8, ptr %178, align 2, !range !10
  %180 = icmp ne i8 %179, 0
  %181 = and i32 %173, 1537
  %182 = icmp eq i32 %181, 1
  %183 = select i1 %180, i1 %182, i1 false
  br i1 %183, label %184, label %203

184:                                              ; preds = %177
  %185 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %185, ptr noundef nonnull @.str.51) #14
  %186 = getelementptr inbounds %struct.dwc2_hsotg, ptr %8, i32 0, i32 3, i32 32
  store i8 1, ptr %186, align 1
  %187 = load ptr, ptr %138, align 4
  %188 = getelementptr i8, ptr %187, i32 1024
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %188) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %190 = load i8, ptr %142, align 8, !range !10
  %191 = icmp eq i8 %190, 0
  %192 = tail call i32 @llvm.bswap.i32(i32 %189) #13
  %193 = select i1 %191, i32 %189, i32 %192
  %194 = or i32 %193, 8388608
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %191, label %199, label %195

195:                                              ; preds = %184
  %196 = tail call i32 @llvm.bswap.i32(i32 %194) #13
  %197 = load ptr, ptr %138, align 4
  %198 = getelementptr i8, ptr %197, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %198, i32 %196) #13, !srcloc !11
  br label %202

199:                                              ; preds = %184
  %200 = load ptr, ptr %138, align 4
  %201 = getelementptr i8, ptr %200, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %201, i32 %194) #13, !srcloc !11
  br label %202

202:                                              ; preds = %199, %195
  store i8 0, ptr %178, align 2
  br label %203

203:                                              ; preds = %202, %177, %168
  store i32 %173, ptr %4, align 4
  br label %376

204:                                              ; preds = %6
  %205 = zext i16 %2 to i32
  %206 = icmp eq i16 %2, 21
  %207 = icmp eq i16 %3, 1
  %208 = or i1 %206, %207
  br i1 %208, label %209, label %375

209:                                              ; preds = %204
  %210 = getelementptr inbounds %struct.dwc2_hsotg, ptr %8, i32 0, i32 35
  %211 = load i32, ptr %210, align 4
  %212 = and i32 %211, 2
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %376, label %214

214:                                              ; preds = %209
  switch i16 %2, label %373 [
    i16 2, label %215
    i16 8, label %226
    i16 4, label %254
    i16 22, label %376
    i16 21, label %351
  ]

215:                                              ; preds = %214
  %216 = getelementptr inbounds %struct.dwc2_hsotg, ptr %8, i32 0, i32 60
  %217 = load i8, ptr %216, align 8
  %218 = zext i8 %217 to i16
  %219 = icmp eq i16 %218, %3
  br i1 %219, label %220, label %375

220:                                              ; preds = %215
  %221 = getelementptr inbounds %struct.dwc2_hsotg, ptr %8, i32 0, i32 9
  %222 = load i8, ptr %221, align 1, !range !10
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %224, label %376

224:                                              ; preds = %220
  %225 = tail call i32 @dwc2_port_suspend(ptr noundef %8, i16 noundef zeroext %3) #13
  br label %376

226:                                              ; preds = %214
  %227 = getelementptr inbounds %struct.dwc2_hsotg, ptr %8, i32 0, i32 1
  %228 = load ptr, ptr %227, align 4
  %229 = getelementptr i8, ptr %228, i32 1088
  %230 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %229) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %231 = getelementptr inbounds %struct.dwc2_hsotg, ptr %8, i32 0, i32 34
  %232 = load i8, ptr %231, align 8, !range !10
  %233 = icmp eq i8 %232, 0
  %234 = tail call i32 @llvm.bswap.i32(i32 %230) #13
  %235 = select i1 %233, i32 %230, i32 %234
  %236 = and i32 %235, -4143
  %237 = and i32 %235, 4096
  %238 = or i32 %236, 4096
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %233, label %243, label %239

239:                                              ; preds = %226
  %240 = tail call i32 @llvm.bswap.i32(i32 %238) #13
  %241 = load ptr, ptr %227, align 4
  %242 = getelementptr i8, ptr %241, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %242, i32 %240) #13, !srcloc !11
  br label %246

243:                                              ; preds = %226
  %244 = load ptr, ptr %227, align 4
  %245 = getelementptr i8, ptr %244, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %245, i32 %238) #13, !srcloc !11
  br label %246

246:                                              ; preds = %243, %239
  %247 = icmp eq i32 %237, 0
  br i1 %247, label %248, label %376

248:                                              ; preds = %246
  %249 = getelementptr inbounds %struct.dwc2_hsotg, ptr %8, i32 0, i32 16
  %250 = load ptr, ptr %249, align 4
  %251 = icmp eq ptr %250, null
  br i1 %251, label %376, label %252

252:                                              ; preds = %248
  %253 = tail call i32 @regulator_enable(ptr noundef nonnull %250) #13
  br label %376

254:                                              ; preds = %214
  %255 = getelementptr inbounds %struct.dwc2_hsotg, ptr %8, i32 0, i32 1
  %256 = load ptr, ptr %255, align 4
  %257 = getelementptr i8, ptr %256, i32 1088
  %258 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %257) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %259 = getelementptr inbounds %struct.dwc2_hsotg, ptr %8, i32 0, i32 34
  %260 = getelementptr inbounds %struct.dwc2_hsotg, ptr %8, i32 0, i32 8
  %261 = load i8, ptr %260, align 8
  %262 = and i8 %261, 8
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %269, label %264

264:                                              ; preds = %254
  %265 = tail call i32 @dwc2_exit_hibernation(ptr noundef %8, i32 noundef 0, i32 noundef 1, i32 noundef 1) #13
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %269, label %267

267:                                              ; preds = %264
  %268 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %268, ptr noundef nonnull @.str.52) #14
  br label %269

269:                                              ; preds = %267, %264, %254
  %270 = phi i32 [ %265, %267 ], [ 0, %264 ], [ 0, %254 ]
  %271 = load i8, ptr %260, align 8
  %272 = and i8 %271, 16
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %279, label %274

274:                                              ; preds = %269
  %275 = tail call i32 @dwc2_exit_partial_power_down(ptr noundef %8, i32 noundef 1, i1 noundef zeroext true) #13
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %279, label %277

277:                                              ; preds = %274
  %278 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %278, ptr noundef nonnull @.str.42) #14
  br label %279

279:                                              ; preds = %277, %274, %269
  %280 = phi i32 [ %275, %277 ], [ 0, %274 ], [ %270, %269 ]
  %281 = getelementptr inbounds %struct.dwc2_hsotg, ptr %8, i32 0, i32 3, i32 15
  %282 = load i32, ptr %281, align 4
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %289

284:                                              ; preds = %279
  %285 = getelementptr inbounds %struct.dwc2_hsotg, ptr %8, i32 0, i32 9
  %286 = load i8, ptr %285, align 1, !range !10
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %289, label %288

288:                                              ; preds = %284
  tail call void @dwc2_host_exit_clock_gating(ptr noundef %8, i32 noundef 0) #13
  br label %289

289:                                              ; preds = %288, %284, %279
  %290 = load ptr, ptr %255, align 4
  %291 = getelementptr i8, ptr %290, i32 3584
  %292 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %291) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %293 = load i8, ptr %259, align 8, !range !10
  %294 = icmp eq i8 %293, 0
  %295 = tail call i32 @llvm.bswap.i32(i32 %292) #13
  %296 = select i1 %294, i32 %292, i32 %295
  %297 = and i32 %296, -34
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %294, label %302, label %298

298:                                              ; preds = %289
  %299 = tail call i32 @llvm.bswap.i32(i32 %297) #13
  %300 = load ptr, ptr %255, align 4
  %301 = getelementptr i8, ptr %300, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %301, i32 %299) #13, !srcloc !11
  br label %305

302:                                              ; preds = %289
  %303 = load ptr, ptr %255, align 4
  %304 = getelementptr i8, ptr %303, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %304, i32 %297) #13, !srcloc !11
  br label %305

305:                                              ; preds = %302, %298
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  %306 = load ptr, ptr %255, align 4
  %307 = getelementptr i8, ptr %306, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %307, i32 0) #13
  %308 = load ptr, ptr %255, align 4
  %309 = getelementptr i8, ptr %308, i32 1088
  %310 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %309) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %311 = load i8, ptr %259, align 8, !range !10
  %312 = icmp eq i8 %311, 0
  %313 = tail call i32 @llvm.bswap.i32(i32 %310) #13
  %314 = select i1 %312, i32 %310, i32 %313
  %315 = and i32 %314, -175
  %316 = getelementptr inbounds %struct.dwc2_hsotg, ptr %8, i32 0, i32 4
  %317 = load i32, ptr %316, align 8
  %318 = icmp eq i32 %317, 5
  br i1 %318, label %337, label %319

319:                                              ; preds = %305
  %320 = and i32 %314, 4096
  %321 = or i32 %315, 4352
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %312, label %326, label %322

322:                                              ; preds = %319
  %323 = tail call i32 @llvm.bswap.i32(i32 %321) #13
  %324 = load ptr, ptr %255, align 4
  %325 = getelementptr i8, ptr %324, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %325, i32 %323) #13, !srcloc !11
  br label %329

326:                                              ; preds = %319
  %327 = load ptr, ptr %255, align 4
  %328 = getelementptr i8, ptr %327, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %328, i32 %321) #13, !srcloc !11
  br label %329

329:                                              ; preds = %326, %322
  %330 = icmp eq i32 %320, 0
  br i1 %330, label %331, label %337

331:                                              ; preds = %329
  %332 = getelementptr inbounds %struct.dwc2_hsotg, ptr %8, i32 0, i32 16
  %333 = load ptr, ptr %332, align 4
  %334 = icmp eq ptr %333, null
  br i1 %334, label %337, label %335

335:                                              ; preds = %331
  %336 = tail call i32 @regulator_enable(ptr noundef nonnull %333) #13
  br label %337

337:                                              ; preds = %335, %331, %329, %305
  %338 = phi i32 [ %315, %305 ], [ %321, %329 ], [ %321, %331 ], [ %321, %335 ]
  tail call void @msleep(i32 noundef 50) #13
  %339 = and i32 %338, -257
  %340 = load i8, ptr %259, align 8, !range !10
  %341 = icmp eq i8 %340, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %341, label %346, label %342

342:                                              ; preds = %337
  %343 = tail call i32 @llvm.bswap.i32(i32 %339) #13
  %344 = load ptr, ptr %255, align 4
  %345 = getelementptr i8, ptr %344, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %345, i32 %343) #13, !srcloc !11
  br label %349

346:                                              ; preds = %337
  %347 = load ptr, ptr %255, align 4
  %348 = getelementptr i8, ptr %347, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %348, i32 %339) #13, !srcloc !11
  br label %349

349:                                              ; preds = %346, %342
  %350 = getelementptr inbounds %struct.dwc2_hsotg, ptr %8, i32 0, i32 28
  store i32 0, ptr %350, align 8
  br label %376

351:                                              ; preds = %214
  %352 = getelementptr inbounds %struct.dwc2_hsotg, ptr %8, i32 0, i32 1
  %353 = load ptr, ptr %352, align 4
  %354 = getelementptr i8, ptr %353, i32 1088
  %355 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %354) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %356 = getelementptr inbounds %struct.dwc2_hsotg, ptr %8, i32 0, i32 34
  %357 = load i8, ptr %356, align 8, !range !10
  %358 = icmp eq i8 %357, 0
  %359 = tail call i32 @llvm.bswap.i32(i32 %355) #13
  %360 = select i1 %358, i32 %355, i32 %359
  %361 = and i32 %360, -122927
  %362 = lshr i16 %3, 8
  %363 = zext i16 %362 to i32
  %364 = shl nuw nsw i32 %363, 13
  %365 = or i32 %361, %364
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %358, label %370, label %366

366:                                              ; preds = %351
  %367 = tail call i32 @llvm.bswap.i32(i32 %365) #13
  %368 = load ptr, ptr %352, align 4
  %369 = getelementptr i8, ptr %368, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %369, i32 %367) #13, !srcloc !11
  br label %376

370:                                              ; preds = %351
  %371 = load ptr, ptr %352, align 4
  %372 = getelementptr i8, ptr %371, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %372, i32 %365) #13, !srcloc !11
  br label %376

373:                                              ; preds = %214
  %374 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %374, ptr noundef nonnull @.str.53, i32 noundef %205) #14
  br label %376

375:                                              ; preds = %215, %204, %107, %14, %6
  br label %376

376:                                              ; preds = %375, %373, %370, %366, %349, %252, %248, %246, %224, %220, %214, %209, %203, %136, %106, %98, %96, %92, %88, %84, %80, %76, %72, %70, %66, %64, %43, %39, %36, %32, %19, %11, %9, %6
  %377 = phi i32 [ -22, %375 ], [ -22, %373 ], [ 0, %214 ], [ %280, %349 ], [ 0, %246 ], [ 0, %220 ], [ %225, %224 ], [ 0, %209 ], [ 0, %6 ], [ 0, %203 ], [ 0, %136 ], [ 0, %106 ], [ 0, %98 ], [ -22, %96 ], [ 0, %92 ], [ 0, %88 ], [ 0, %84 ], [ 0, %80 ], [ 0, %76 ], [ 0, %72 ], [ 0, %19 ], [ 0, %64 ], [ %44, %43 ], [ 0, %39 ], [ -22, %11 ], [ 0, %9 ], [ 0, %66 ], [ 0, %70 ], [ 0, %248 ], [ 0, %252 ], [ 0, %32 ], [ 0, %36 ], [ 0, %366 ], [ 0, %370 ]
  ret i32 %377
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_dwc2_hcd_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 18
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #13
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 20
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %10 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 34
  %11 = load i8, ptr %10, align 8, !range !10
  %12 = icmp eq i8 %11, 0
  %13 = lshr i32 %9, 24
  %14 = select i1 %12, i32 %9, i32 %13
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %91, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 28
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %91

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 12
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %91, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 4
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %91, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 9
  %32 = load i8, ptr %31, align 1, !range !10
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %88

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 35
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %88, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 3, i32 15
  %41 = load i32, ptr %40, align 4
  switch i32 %41, label %88 [
    i32 1, label %42
    i32 2, label %47
    i32 0, label %54
  ]

42:                                               ; preds = %39
  %43 = tail call i32 @dwc2_enter_partial_power_down(ptr noundef %3) #13
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.54) #14
  br label %59

47:                                               ; preds = %39
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #13
  %48 = tail call i32 @dwc2_enter_hibernation(ptr noundef %3, i32 noundef 1) #13
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.55) #14
  br label %52

52:                                               ; preds = %50, %47
  %53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #13
  br label %59

54:                                               ; preds = %39
  %55 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 3, i32 16
  %56 = load i8, ptr %55, align 8, !range !10
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  tail call void @dwc2_host_enter_clock_gating(ptr noundef %3)
  br label %59

59:                                               ; preds = %58, %52, %45, %42
  %60 = phi i32 [ %48, %52 ], [ 0, %58 ], [ %43, %45 ], [ %43, %42 ]
  %61 = phi i32 [ %53, %52 ], [ %5, %58 ], [ %5, %45 ], [ %5, %42 ]
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %22) #13
  br label %62

62:                                               ; preds = %59, %54
  %63 = phi i32 [ 0, %54 ], [ %60, %59 ]
  %64 = phi i32 [ %5, %54 ], [ %61, %59 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %64) #13
  %65 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 16
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %62
  %69 = tail call i32 @regulator_disable(ptr noundef nonnull %66) #13
  br label %70

70:                                               ; preds = %68, %62
  %71 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #13
  %72 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 13
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  %75 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  %76 = or i1 %74, %75
  br i1 %76, label %88, label %77

77:                                               ; preds = %70
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %71) #13
  %78 = load ptr, ptr %72, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %86, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.usb_phy, ptr %78, i32 0, i32 26
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = tail call i32 %82(ptr noundef nonnull %78, i32 noundef 1) #13
  br label %86

86:                                               ; preds = %84, %80, %77
  %87 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #13
  br label %88

88:                                               ; preds = %86, %70, %39, %34, %30
  %89 = phi i32 [ 0, %30 ], [ 0, %34 ], [ 0, %39 ], [ %63, %70 ], [ %63, %86 ]
  %90 = phi i32 [ %5, %30 ], [ %5, %34 ], [ %5, %39 ], [ %71, %70 ], [ %87, %86 ]
  store i32 2, ptr %18, align 8
  br label %91

91:                                               ; preds = %88, %26, %21, %17, %1
  %92 = phi i32 [ 0, %1 ], [ 0, %17 ], [ 0, %26 ], [ %89, %88 ], [ 0, %21 ]
  %93 = phi i32 [ %5, %1 ], [ %5, %17 ], [ %5, %26 ], [ %90, %88 ], [ %5, %21 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %93) #13
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_dwc2_hcd_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 18
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #13
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 20
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %10 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 34
  %11 = load i8, ptr %10, align 8, !range !10
  %12 = icmp eq i8 %11, 0
  %13 = lshr i32 %9, 24
  %14 = select i1 %12, i32 %9, i32 %13
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %89, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 28
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %89

21:                                               ; preds = %17
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr i8, ptr %22, i32 1088
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %25 = load i8, ptr %10, align 8, !range !10
  %26 = icmp eq i8 %25, 0
  %27 = lshr i32 %24, 24
  %28 = select i1 %26, i32 %24, i32 %27
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  store i32 0, ptr %18, align 8
  br label %89

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 3, i32 15
  %34 = load i32, ptr %33, align 4
  switch i32 %34, label %48 [
    i32 1, label %35
    i32 2, label %40
    i32 0, label %45
  ]

35:                                               ; preds = %32
  %36 = tail call i32 @dwc2_exit_partial_power_down(ptr noundef %3, i32 noundef 0, i1 noundef zeroext true) #13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.42) #14
  br label %49

40:                                               ; preds = %32
  %41 = tail call i32 @dwc2_exit_hibernation(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 1) #13
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.7) #14
  br label %49

45:                                               ; preds = %32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #13
  tail call void @dwc2_host_exit_clock_gating(ptr noundef %3, i32 noundef 0)
  %46 = tail call i32 @dwc2_core_init(ptr noundef %3, i1 noundef zeroext false)
  tail call void @dwc2_enable_global_interrupts(ptr noundef %3) #13
  tail call fastcc void @dwc2_hcd_reinit(ptr noundef %3)
  %47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #13
  br label %49

48:                                               ; preds = %32
  store i32 0, ptr %18, align 8
  br label %89

49:                                               ; preds = %45, %43, %40, %38, %35
  %50 = phi i32 [ 0, %45 ], [ %36, %38 ], [ %36, %35 ], [ %41, %43 ], [ %41, %40 ]
  %51 = phi i32 [ %47, %45 ], [ %5, %38 ], [ %5, %35 ], [ %5, %43 ], [ %5, %40 ]
  %52 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %52) #13
  %53 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 35
  %54 = load i32, ptr %53, align 4
  %55 = or i32 %54, 16
  store i32 %55, ptr %53, align 4
  %56 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 13
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  %59 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  %60 = or i1 %58, %59
  br i1 %60, label %72, label %61

61:                                               ; preds = %49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %51) #13
  %62 = load ptr, ptr %56, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.usb_phy, ptr %62, i32 0, i32 26
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = tail call i32 %66(ptr noundef nonnull %62, i32 noundef 0) #13
  br label %70

70:                                               ; preds = %68, %64, %61
  %71 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #13
  br label %72

72:                                               ; preds = %70, %49
  %73 = phi i32 [ %51, %49 ], [ %71, %70 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %73) #13
  %74 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 16
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = tail call i32 @regulator_enable(ptr noundef nonnull %75) #13
  br label %79

79:                                               ; preds = %77, %72
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 5000, i32 noundef 2) #13
  %80 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #13
  %81 = load i8, ptr %10, align 8, !range !10
  %82 = icmp eq i8 %81, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  %83 = load ptr, ptr %6, align 4
  %84 = getelementptr i8, ptr %83, i32 1088
  br i1 %82, label %86, label %85

85:                                               ; preds = %79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 168820736) #13, !srcloc !11
  br label %87

86:                                               ; preds = %79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 4106) #13, !srcloc !11
  br label %87

87:                                               ; preds = %86, %85
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %80) #13
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 7000, i32 noundef 2) #13
  %88 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #13
  br label %89

89:                                               ; preds = %87, %48, %31, %17, %1
  %90 = phi i32 [ 0, %1 ], [ 0, %17 ], [ 0, %31 ], [ 0, %48 ], [ %50, %87 ]
  %91 = phi i32 [ %5, %1 ], [ %5, %17 ], [ %5, %31 ], [ %5, %48 ], [ %88, %87 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %91) #13
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @_dwc2_hcd_clear_tt_buffer_complete(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_host_endpoint, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 18
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #13
  %11 = getelementptr inbounds %struct.dwc2_qh, ptr %6, i32 0, i32 34
  %12 = load i8, ptr %11, align 8
  %13 = and i8 %12, -2
  store i8 %13, ptr %11, align 8
  %14 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 35
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %8
  tail call void @dwc2_hcd_queue_transactions(ptr noundef %4, i32 noundef 3)
  br label %19

19:                                               ; preds = %18, %8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #13
  br label %20

20:                                               ; preds = %19, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_handle_hcd_intr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_hcd_reinit(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 35
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 38
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 39
  store ptr %3, ptr %4, align 8
  %5 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 13
  %6 = load i8, ptr %5, align 2, !range !10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 37
  %10 = load i8, ptr %9, align 8
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 53
  store i32 %11, ptr %12, align 4
  br label %16

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 52
  store i32 0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 51
  store i32 0, ptr %15, align 4
  br label %16

16:                                               ; preds = %13, %8
  %17 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 50
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %27, label %20

20:                                               ; preds = %20, %16
  %21 = phi ptr [ %22, %20 ], [ %18, %16 ]
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %24, ptr %25, align 4
  store volatile ptr %22, ptr %24, align 4
  store volatile ptr %21, ptr %21, align 4
  store ptr %21, ptr %23, align 4
  %26 = icmp eq ptr %22, %17
  br i1 %26, label %27, label %20

27:                                               ; preds = %20, %16
  %28 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 37
  %29 = load i8, ptr %28, align 8
  %30 = zext i8 %29 to i32
  %31 = icmp eq i8 %29, 0
  br i1 %31, label %68, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 50, i32 1
  %34 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %35 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  br label %36

36:                                               ; preds = %65, %32
  %37 = phi i32 [ 0, %32 ], [ %66, %65 ]
  %38 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 54, i32 %37
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.dwc2_host_chan, ptr %39, i32 0, i32 25
  %41 = load ptr, ptr %33, align 4
  store ptr %40, ptr %33, align 4
  store ptr %17, ptr %40, align 4
  %42 = getelementptr inbounds %struct.dwc2_host_chan, ptr %39, i32 0, i32 25, i32 1
  store ptr %41, ptr %42, align 4
  store volatile ptr %40, ptr %41, align 4
  %43 = getelementptr inbounds %struct.dwc2_host_chan, ptr %39, i32 0, i32 9
  store i8 0, ptr %43, align 2
  %44 = getelementptr inbounds %struct.dwc2_host_chan, ptr %39, i32 0, i32 28
  %45 = getelementptr inbounds %struct.dwc2_host_chan, ptr %39, i32 0, i32 28, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %44, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  store ptr %46, ptr %48, align 4
  store volatile ptr %47, ptr %46, align 4
  store volatile ptr %44, ptr %44, align 4
  store ptr %44, ptr %45, align 4
  %49 = load i8, ptr %39, align 4
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %50, 5
  %52 = add nuw nsw i32 %51, 1292
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  %53 = load ptr, ptr %35, align 4
  %54 = getelementptr i8, ptr %53, i32 %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 0) #13
  %55 = load i8, ptr %39, align 4
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 5
  %58 = add nuw nsw i32 %57, 1288
  %59 = load i8, ptr %34, align 8, !range !10
  %60 = icmp eq i8 %59, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  %61 = load ptr, ptr %35, align 4
  %62 = getelementptr i8, ptr %61, i32 %58
  br i1 %60, label %64, label %63

63:                                               ; preds = %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 -12648448) #13, !srcloc !11
  br label %65

64:                                               ; preds = %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 16383) #13, !srcloc !11
  br label %65

65:                                               ; preds = %64, %63
  %66 = add nuw nsw i32 %37, 1
  %67 = icmp eq i32 %66, %30
  br i1 %67, label %68, label %36

68:                                               ; preds = %65, %27
  %69 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i8, ptr %70, i32 12
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %73 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %74 = load i8, ptr %73, align 8, !range !10
  %75 = icmp eq i8 %74, 0
  %76 = tail call i32 @llvm.bswap.i32(i32 %72) #13
  %77 = select i1 %75, i32 %72, i32 %76
  %78 = or i32 %77, 7
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %75, label %83, label %79

79:                                               ; preds = %68
  %80 = tail call i32 @llvm.bswap.i32(i32 %78) #13
  %81 = load ptr, ptr %69, align 4
  %82 = getelementptr i8, ptr %81, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %80) #13, !srcloc !11
  br label %86

83:                                               ; preds = %68
  %84 = load ptr, ptr %69, align 4
  %85 = getelementptr i8, ptr %84, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %78) #13, !srcloc !11
  br label %86

86:                                               ; preds = %83, %79
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  %87 = load ptr, ptr %69, align 4
  %88 = getelementptr i8, ptr %87, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 0) #13
  tail call void @dwc2_init_fs_ls_pclk_sel(ptr noundef %0) #13
  %89 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 2
  %90 = load i8, ptr %89, align 1
  %91 = add i8 %90, -1
  %92 = icmp ult i8 %91, 2
  br i1 %92, label %93, label %109

93:                                               ; preds = %86
  %94 = load ptr, ptr %69, align 4
  %95 = getelementptr i8, ptr %94, i32 1024
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %97 = load i8, ptr %73, align 8, !range !10
  %98 = icmp eq i8 %97, 0
  %99 = tail call i32 @llvm.bswap.i32(i32 %96) #13
  %100 = select i1 %98, i32 %96, i32 %99
  %101 = or i32 %100, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %98, label %106, label %102

102:                                              ; preds = %93
  %103 = tail call i32 @llvm.bswap.i32(i32 %101) #13
  %104 = load ptr, ptr %69, align 4
  %105 = getelementptr i8, ptr %104, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %103) #13, !srcloc !11
  br label %109

106:                                              ; preds = %93
  %107 = load ptr, ptr %69, align 4
  %108 = getelementptr i8, ptr %107, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %101) #13, !srcloc !11
  br label %109

109:                                              ; preds = %106, %102, %86
  %110 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 12
  %111 = load i8, ptr %110, align 1, !range !10
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %129, label %113

113:                                              ; preds = %109
  %114 = load ptr, ptr %69, align 4
  %115 = getelementptr i8, ptr %114, i32 1028
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %117 = load i8, ptr %73, align 8, !range !10
  %118 = icmp eq i8 %117, 0
  %119 = tail call i32 @llvm.bswap.i32(i32 %116) #13
  %120 = select i1 %118, i32 %116, i32 %119
  %121 = or i32 %120, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %118, label %126, label %122

122:                                              ; preds = %113
  %123 = tail call i32 @llvm.bswap.i32(i32 %121) #13
  %124 = load ptr, ptr %69, align 4
  %125 = getelementptr i8, ptr %124, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %123) #13, !srcloc !11
  br label %129

126:                                              ; preds = %113
  %127 = load ptr, ptr %69, align 4
  %128 = getelementptr i8, ptr %127, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %121) #13, !srcloc !11
  br label %129

129:                                              ; preds = %126, %122, %109
  %130 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 32
  %131 = load i8, ptr %130, align 1, !range !10
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %164, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 5
  %135 = load i32, ptr %134, align 8
  %136 = icmp ult i32 %135, 1330915594
  br i1 %136, label %145, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2
  %139 = load i32, ptr %138, align 8
  %140 = freeze i32 %139
  %141 = and i32 %140, 32
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %137
  %144 = and i32 %140, 7
  switch i32 %144, label %148 [
    i32 7, label %145
    i32 4, label %145
    i32 3, label %145
  ]

145:                                              ; preds = %143, %143, %143, %137, %133
  %146 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %146, ptr noundef nonnull @.str.37) #14
  %147 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %147, ptr noundef nonnull @.str.38) #14
  store i8 0, ptr %130, align 1
  br label %164

148:                                              ; preds = %143
  %149 = load ptr, ptr %69, align 4
  %150 = getelementptr i8, ptr %149, i32 1024
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %150) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %152 = load i8, ptr %73, align 8, !range !10
  %153 = icmp eq i8 %152, 0
  %154 = tail call i32 @llvm.bswap.i32(i32 %151) #13
  %155 = select i1 %153, i32 %151, i32 %154
  %156 = or i32 %155, 8388608
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %153, label %161, label %157

157:                                              ; preds = %148
  %158 = tail call i32 @llvm.bswap.i32(i32 %156) #13
  %159 = load ptr, ptr %69, align 4
  %160 = getelementptr i8, ptr %159, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 %158) #13, !srcloc !11
  br label %164

161:                                              ; preds = %148
  %162 = load ptr, ptr %69, align 4
  %163 = getelementptr i8, ptr %162, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %163, i32 %156) #13, !srcloc !11
  br label %164

164:                                              ; preds = %161, %157, %145, %129
  %165 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 6
  %166 = load i8, ptr %165, align 1, !range !10
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %290, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 4
  %170 = load i32, ptr %169, align 4
  %171 = lshr i32 %170, 4
  %172 = and i32 %171, 65535
  %173 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 38
  %174 = load i16, ptr %173, align 2
  %175 = zext i16 %174 to i32
  %176 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 39
  %177 = load i16, ptr %176, align 4
  %178 = zext i16 %177 to i32
  %179 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 40
  %180 = load i16, ptr %179, align 2
  %181 = zext i16 %180 to i32
  %182 = add nuw nsw i32 %178, %175
  %183 = add nuw nsw i32 %182, %181
  %184 = icmp ult i32 %172, %183
  br i1 %184, label %185, label %192

185:                                              ; preds = %168
  %186 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 3
  %187 = load i32, ptr %186, align 4
  %188 = lshr i32 %187, 11
  %189 = and i32 %188, 31
  %190 = add nuw nsw i32 %189, 516
  %191 = trunc i32 %190 to i16
  store i16 %191, ptr %173, align 2
  store i16 256, ptr %176, align 4
  store i16 768, ptr %179, align 2
  br label %192

192:                                              ; preds = %185, %168
  %193 = phi i32 [ %190, %185 ], [ %175, %168 ]
  %194 = phi i32 [ 256, %185 ], [ %178, %168 ]
  %195 = phi i32 [ 768, %185 ], [ %181, %168 ]
  %196 = add nuw nsw i32 %194, %193
  %197 = add nuw nsw i32 %196, %195
  %198 = icmp ult i32 %172, %197
  br i1 %198, label %199, label %201, !prof !12

199:                                              ; preds = %192
  %200 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %200, ptr noundef nonnull @.str.40) #14
  br label %201

201:                                              ; preds = %199, %192
  %202 = load ptr, ptr %69, align 4
  %203 = getelementptr i8, ptr %202, i32 36
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %203) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %205 = load i8, ptr %73, align 8, !range !10
  %206 = icmp eq i8 %205, 0
  %207 = tail call i32 @llvm.bswap.i32(i32 %204) #13
  %208 = select i1 %206, i32 %204, i32 %207
  %209 = and i32 %208, -65536
  %210 = load i16, ptr %173, align 2
  %211 = zext i16 %210 to i32
  %212 = or i32 %209, %211
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %206, label %217, label %213

213:                                              ; preds = %201
  %214 = tail call i32 @llvm.bswap.i32(i32 %212) #13
  %215 = load ptr, ptr %69, align 4
  %216 = getelementptr i8, ptr %215, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %216, i32 %214) #13, !srcloc !11
  br label %220

217:                                              ; preds = %201
  %218 = load ptr, ptr %69, align 4
  %219 = getelementptr i8, ptr %218, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %219, i32 %212) #13, !srcloc !11
  br label %220

220:                                              ; preds = %217, %213
  %221 = load i16, ptr %176, align 4
  %222 = zext i16 %221 to i32
  %223 = shl nuw i32 %222, 16
  %224 = load i16, ptr %173, align 2
  %225 = zext i16 %224 to i32
  %226 = or i32 %223, %225
  %227 = load i8, ptr %73, align 8, !range !10
  %228 = icmp eq i8 %227, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %228, label %233, label %229

229:                                              ; preds = %220
  %230 = tail call i32 @llvm.bswap.i32(i32 %226) #13
  %231 = load ptr, ptr %69, align 4
  %232 = getelementptr i8, ptr %231, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %232, i32 %230) #13, !srcloc !11
  br label %236

233:                                              ; preds = %220
  %234 = load ptr, ptr %69, align 4
  %235 = getelementptr i8, ptr %234, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %235, i32 %226) #13, !srcloc !11
  br label %236

236:                                              ; preds = %233, %229
  %237 = load i16, ptr %179, align 2
  %238 = zext i16 %237 to i32
  %239 = shl nuw i32 %238, 16
  %240 = load i16, ptr %173, align 2
  %241 = zext i16 %240 to i32
  %242 = load i16, ptr %176, align 4
  %243 = zext i16 %242 to i32
  %244 = add nuw nsw i32 %243, %241
  %245 = and i32 %244, 65535
  %246 = or i32 %245, %239
  %247 = load i8, ptr %73, align 8, !range !10
  %248 = icmp eq i8 %247, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %248, label %253, label %249

249:                                              ; preds = %236
  %250 = tail call i32 @llvm.bswap.i32(i32 %246) #13
  %251 = load ptr, ptr %69, align 4
  %252 = getelementptr i8, ptr %251, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %252, i32 %250) #13, !srcloc !11
  br label %256

253:                                              ; preds = %236
  %254 = load ptr, ptr %69, align 4
  %255 = getelementptr i8, ptr %254, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %255, i32 %246) #13, !srcloc !11
  br label %256

256:                                              ; preds = %253, %249
  %257 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 7
  %258 = load i8, ptr %257, align 4, !range !10
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %290, label %260

260:                                              ; preds = %256
  %261 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 5
  %262 = load i32, ptr %261, align 8
  %263 = icmp ugt i32 %262, 1330915609
  br i1 %263, label %264, label %290

264:                                              ; preds = %260
  %265 = load ptr, ptr %69, align 4
  %266 = getelementptr i8, ptr %265, i32 92
  %267 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %266) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %268 = load i8, ptr %73, align 8, !range !10
  %269 = icmp eq i8 %268, 0
  %270 = tail call i32 @llvm.bswap.i32(i32 %267) #13
  %271 = select i1 %269, i32 %267, i32 %270
  %272 = and i32 %271, 65535
  %273 = load i16, ptr %173, align 2
  %274 = zext i16 %273 to i32
  %275 = load i16, ptr %176, align 4
  %276 = zext i16 %275 to i32
  %277 = add nuw nsw i32 %276, %274
  %278 = load i16, ptr %179, align 2
  %279 = zext i16 %278 to i32
  %280 = add nuw nsw i32 %277, %279
  %281 = shl i32 %280, 16
  %282 = or i32 %281, %272
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %269, label %287, label %283

283:                                              ; preds = %264
  %284 = tail call i32 @llvm.bswap.i32(i32 %282) #13
  %285 = load ptr, ptr %69, align 4
  %286 = getelementptr i8, ptr %285, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %286, i32 %284) #13, !srcloc !11
  br label %290

287:                                              ; preds = %264
  %288 = load ptr, ptr %69, align 4
  %289 = getelementptr i8, ptr %288, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %289, i32 %282) #13, !srcloc !11
  br label %290

290:                                              ; preds = %287, %283, %260, %256, %164
  %291 = load ptr, ptr %69, align 4
  %292 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %291) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %293 = load i8, ptr %73, align 8, !range !10
  %294 = icmp eq i8 %293, 0
  %295 = tail call i32 @llvm.bswap.i32(i32 %292) #13
  %296 = select i1 %294, i32 %292, i32 %295
  %297 = and i32 %296, -1025
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %294, label %301, label %298

298:                                              ; preds = %290
  %299 = tail call i32 @llvm.bswap.i32(i32 %297) #13
  %300 = load ptr, ptr %69, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %300, i32 %299) #13, !srcloc !11
  br label %303

301:                                              ; preds = %290
  %302 = load ptr, ptr %69, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %302, i32 %297) #13, !srcloc !11
  br label %303

303:                                              ; preds = %301, %298
  tail call void @dwc2_flush_tx_fifo(ptr noundef %0, i32 noundef 16) #13
  tail call void @dwc2_flush_rx_fifo(ptr noundef %0) #13
  %304 = load ptr, ptr %69, align 4
  %305 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %304) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %306 = load i8, ptr %73, align 8, !range !10
  %307 = icmp eq i8 %306, 0
  %308 = tail call i32 @llvm.bswap.i32(i32 %305) #13
  %309 = select i1 %307, i32 %305, i32 %308
  %310 = and i32 %309, -1025
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %307, label %314, label %311

311:                                              ; preds = %303
  %312 = tail call i32 @llvm.bswap.i32(i32 %310) #13
  %313 = load ptr, ptr %69, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %313, i32 %312) #13, !srcloc !11
  br label %316

314:                                              ; preds = %303
  %315 = load ptr, ptr %69, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %315, i32 %310) #13, !srcloc !11
  br label %316

316:                                              ; preds = %314, %311
  %317 = load i8, ptr %130, align 1, !range !10
  %318 = icmp eq i8 %317, 0
  br i1 %318, label %319, label %378

319:                                              ; preds = %316
  %320 = load i8, ptr %28, align 8
  %321 = zext i8 %320 to i32
  %322 = icmp eq i8 %320, 0
  br i1 %322, label %378, label %323

323:                                              ; preds = %345, %319
  %324 = phi i32 [ %346, %345 ], [ 0, %319 ]
  %325 = shl i32 %324, 5
  %326 = add nuw nsw i32 %325, 1280
  %327 = load ptr, ptr %69, align 4
  %328 = getelementptr i8, ptr %327, i32 %326
  %329 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %328) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %330 = load i8, ptr %73, align 8, !range !10
  %331 = icmp eq i8 %330, 0
  %332 = tail call i32 @llvm.bswap.i32(i32 %329) #13
  %333 = select i1 %331, i32 %329, i32 %332
  %334 = icmp sgt i32 %333, -1
  br i1 %334, label %345, label %335

335:                                              ; preds = %323
  %336 = and i32 %333, 1073709055
  %337 = or i32 %336, 1073741824
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %331, label %342, label %338

338:                                              ; preds = %335
  %339 = tail call i32 @llvm.bswap.i32(i32 %337) #13
  %340 = load ptr, ptr %69, align 4
  %341 = getelementptr i8, ptr %340, i32 %326
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %341, i32 %339) #13, !srcloc !11
  br label %345

342:                                              ; preds = %335
  %343 = load ptr, ptr %69, align 4
  %344 = getelementptr i8, ptr %343, i32 %326
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %344, i32 %337) #13, !srcloc !11
  br label %345

345:                                              ; preds = %342, %338, %323
  %346 = add nuw nsw i32 %324, 1
  %347 = icmp eq i32 %346, %321
  br i1 %347, label %348, label %323

348:                                              ; preds = %375, %345
  %349 = phi i32 [ %376, %375 ], [ 0, %345 ]
  %350 = shl i32 %349, 5
  %351 = add nuw nsw i32 %350, 1280
  %352 = load ptr, ptr %69, align 4
  %353 = getelementptr i8, ptr %352, i32 %351
  %354 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %353) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %355 = load i8, ptr %73, align 8, !range !10
  %356 = icmp eq i8 %355, 0
  %357 = tail call i32 @llvm.bswap.i32(i32 %354) #13
  %358 = select i1 %356, i32 %354, i32 %357
  %359 = icmp sgt i32 %358, -1
  br i1 %359, label %375, label %360

360:                                              ; preds = %348
  %361 = and i32 %358, 1073709055
  %362 = or i32 %361, -1073741824
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %356, label %367, label %363

363:                                              ; preds = %360
  %364 = tail call i32 @llvm.bswap.i32(i32 %362) #13
  %365 = load ptr, ptr %69, align 4
  %366 = getelementptr i8, ptr %365, i32 %351
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %366, i32 %364) #13, !srcloc !11
  br label %370

367:                                              ; preds = %360
  %368 = load ptr, ptr %69, align 4
  %369 = getelementptr i8, ptr %368, i32 %351
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %369, i32 %362) #13, !srcloc !11
  br label %370

370:                                              ; preds = %367, %363
  %371 = tail call i32 @dwc2_hsotg_wait_bit_clear(ptr noundef %0, i32 noundef %351, i32 noundef -2147483648, i32 noundef 1000) #13
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %375, label %373

373:                                              ; preds = %370
  %374 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %374, ptr noundef nonnull @.str.39, i32 noundef %349) #14
  br label %375

375:                                              ; preds = %373, %370, %348
  %376 = add nuw nsw i32 %349, 1
  %377 = icmp eq i32 %376, %321
  br i1 %377, label %378, label %348

378:                                              ; preds = %375, %319, %316
  tail call void @dwc2_enable_acg(ptr noundef %0) #13
  %379 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 4
  %380 = load i32, ptr %379, align 8
  %381 = icmp eq i32 %380, 9
  br i1 %381, label %382, label %402

382:                                              ; preds = %378
  %383 = load ptr, ptr %69, align 4
  %384 = getelementptr i8, ptr %383, i32 1088
  %385 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %384) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %386 = load i8, ptr %73, align 8, !range !10
  %387 = icmp eq i8 %386, 0
  %388 = tail call i32 @llvm.bswap.i32(i32 %385) #13
  %389 = select i1 %387, i32 %385, i32 %388
  %390 = and i32 %389, 4096
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %402

392:                                              ; preds = %382
  %393 = and i32 %389, -4143
  %394 = or i32 %393, 4096
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %387, label %399, label %395

395:                                              ; preds = %392
  %396 = tail call i32 @llvm.bswap.i32(i32 %394) #13
  %397 = load ptr, ptr %69, align 4
  %398 = getelementptr i8, ptr %397, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %398, i32 %396) #13, !srcloc !11
  br label %402

399:                                              ; preds = %392
  %400 = load ptr, ptr %69, align 4
  %401 = getelementptr i8, ptr %400, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %401, i32 %394) #13, !srcloc !11
  br label %402

402:                                              ; preds = %399, %395, %382, %378
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  %403 = load ptr, ptr %69, align 4
  %404 = getelementptr i8, ptr %403, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %404, i32 0) #13
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  %405 = load ptr, ptr %69, align 4
  %406 = getelementptr i8, ptr %405, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %406, i32 0) #13
  tail call fastcc void @dwc2_enable_common_interrupts(ptr noundef %0) #13
  %407 = load ptr, ptr %69, align 4
  %408 = getelementptr i8, ptr %407, i32 24
  %409 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %408) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %410 = load i8, ptr %73, align 8, !range !10
  %411 = icmp eq i8 %410, 0
  %412 = tail call i32 @llvm.bswap.i32(i32 %409) #13
  %413 = select i1 %411, i32 %409, i32 %412
  %414 = or i32 %413, 587202560
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  br i1 %411, label %419, label %415

415:                                              ; preds = %402
  %416 = tail call i32 @llvm.bswap.i32(i32 %414) #13
  %417 = load ptr, ptr %69, align 4
  %418 = getelementptr i8, ptr %417, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %418, i32 %416) #13, !srcloc !11
  br label %422

419:                                              ; preds = %402
  %420 = load ptr, ptr %69, align 4
  %421 = getelementptr i8, ptr %420, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %421, i32 %414) #13, !srcloc !11
  br label %422

422:                                              ; preds = %419, %415
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_init_fs_ls_pclk_sel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_flush_tx_fifo(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_flush_rx_fifo(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hsotg_wait_bit_clear(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_enable_acg(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_gadget_exit_clock_gating(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dwc2_hcd_qh_create(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_link_urb_to_ep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hcd_qh_unlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hcd_qh_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hcd_qtd_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hcd_qtd_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_check_unlink_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hcd_qh_deactivate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_map_urb_for_dma(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_unmap_urb_for_dma(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hsotg_core_init_disconnected(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hsotg_core_connect(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hsotg_disconnect(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_qh_list_free(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %60, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 18
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #13
  %8 = load ptr, ptr %1, align 4
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %58, label %12

10:                                               ; preds = %18, %12
  %11 = icmp eq ptr %14, %1
  br i1 %11, label %27, label %12

12:                                               ; preds = %10, %5
  %13 = phi ptr [ %14, %10 ], [ %8, %5 ]
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %13, i32 -12
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %10, label %18

18:                                               ; preds = %18, %12
  %19 = phi ptr [ %21, %18 ], [ %16, %12 ]
  %20 = getelementptr i8, ptr %19, i32 -36
  %21 = load ptr, ptr %19, align 4
  tail call void @dwc2_host_complete(ptr noundef %0, ptr noundef %20, i32 noundef -104) #13
  %22 = getelementptr i8, ptr %19, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %19, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %23, ptr %25, align 4
  store volatile ptr %24, ptr %23, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %19, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %22, align 4
  tail call void @kfree(ptr noundef %20) #13
  %26 = icmp eq ptr %21, %15
  br i1 %26, label %10, label %18

27:                                               ; preds = %10
  %28 = load ptr, ptr %1, align 4
  %29 = icmp eq ptr %28, %1
  br i1 %29, label %58, label %30

30:                                               ; preds = %55, %27
  %31 = phi ptr [ %34, %55 ], [ %28, %27 ]
  %32 = phi i32 [ %56, %55 ], [ %7, %27 ]
  %33 = getelementptr i8, ptr %31, i32 -124
  %34 = load ptr, ptr %31, align 4
  tail call void @dwc2_hcd_qh_unlink(ptr noundef %0, ptr noundef %33) #13
  %35 = getelementptr i8, ptr %31, i32 -12
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq ptr %36, %35
  br i1 %37, label %46, label %38

38:                                               ; preds = %38, %30
  %39 = phi ptr [ %41, %38 ], [ %36, %30 ]
  %40 = getelementptr i8, ptr %39, i32 -36
  %41 = load ptr, ptr %39, align 4
  %42 = getelementptr i8, ptr %39, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %43, ptr %44, align 4
  store volatile ptr %41, ptr %43, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %39, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %42, align 4
  tail call void @kfree(ptr noundef %40) #13
  %45 = icmp eq ptr %41, %35
  br i1 %45, label %46, label %38

46:                                               ; preds = %38, %30
  %47 = getelementptr i8, ptr %31, i32 -4
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.dwc2_host_chan, ptr %48, i32 0, i32 24
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, %33
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store ptr null, ptr %51, align 4
  br label %55

55:                                               ; preds = %54, %50, %46
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %32) #13
  tail call void @dwc2_hcd_qh_free(ptr noundef %0, ptr noundef %33) #13
  %56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #13
  %57 = icmp eq ptr %34, %1
  br i1 %57, label %58, label %30

58:                                               ; preds = %55, %27, %5
  %59 = phi i32 [ %7, %27 ], [ %7, %5 ], [ %56, %55 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %59) #13
  br label %60

60:                                               ; preds = %58, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }

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
!8 = !{i64 3625386}
!9 = !{i64 2154621704}
!10 = !{i8 0, i8 2}
!11 = !{i64 3624968}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"auto-init"}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2149092680}
!16 = !{i64 2149088504}
!17 = !{i64 2149088579, i64 2149088606, i64 2149088653, i64 2149088675, i64 2149088703, i64 2149088723}
!18 = !{i64 2149115683}
