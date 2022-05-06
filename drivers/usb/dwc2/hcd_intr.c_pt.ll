; ModuleID = '/llk/IR/drivers/usb/dwc2/hcd_intr.c_pt.bc'
source_filename = "../drivers/usb/dwc2/hcd_intr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.dwc2_qh = type { ptr, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, [8 x %struct.dwc2_hs_transfer_time], i32, i16, ptr, i32, %struct.list_head, ptr, %struct.list_head, ptr, i32, i32, ptr, %struct.timer_list, %struct.hrtimer, ptr, i32, i8 }
%struct.dwc2_hs_transfer_time = type { i32, i16 }
%struct.dwc2_qtd = type { i32, i8, i8, i8, i8, i16, i16, i16, i16, i32, i8, i8, i16, i16, ptr, ptr, %struct.list_head }
%struct.dwc2_hcd_urb = type { ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i16, %struct.dwc2_hcd_pipe_info, [0 x %struct.dwc2_hcd_iso_packet_desc] }
%struct.dwc2_hcd_pipe_info = type { i8, i8, i8, i8, i16, i16 }
%struct.dwc2_hcd_iso_packet_desc = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
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

@.str = private unnamed_addr constant [28 x i8] c"drivers/usb/dwc2/hcd_intr.c\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"chan->qh must be specified for non-control eps\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"qtd must be specified for control eps\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Controller is dead\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Unable to get corresponding channel\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"RxFIFO Level Interrupt: Unknown status %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"## hc_ptr_array for channel is NULL ##\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Interrupt on disabled channel\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Unhandled halt_status (%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"%s: Channel %d - ChHltd set, but reason is unknown\0A\00", align 1
@__func__.dwc2_hc_chhltd_intr_dma = private unnamed_addr constant [24 x i8] c"dwc2_hc_chhltd_intr_dma\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"hcint 0x%08x, intsts 0x%08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"NYET/NAK/ACK/other in non-error case, 0x%08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"%s(): trimming xfer length\0A\00", align 1
@__func__.dwc2_update_urb_state_abn = private unnamed_addr constant [26 x i8] c"dwc2_update_urb_state_abn\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"AHB ERROR, Channel %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"  hcchar 0x%08x, hcsplt 0x%08x\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"  hctsiz 0x%08x, hc_dma 0x%08x\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"  Device address: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"  Endpoint: %d, %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"OUT\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"CONTROL\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"BULK\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"INTERRUPT\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"ISOCHRONOUS\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"  Endpoint type: %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"HIGH\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"FULL\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"LOW\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"  Speed: %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"  Max packet size: %d (mult %d)\0A\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"  Data buffer length: %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [44 x i8] c"  Transfer buffer: %p, Transfer DMA: %08lx\0A\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"  Setup buffer: %p, Setup DMA: %08lx\0A\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"  Interval: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [34 x i8] c"NACK interrupt for ISOC transfer\0A\00", align 1
@.str.36 = private unnamed_addr constant [47 x i8] c"Data Toggle Error on OUT transfer, channel %d\0A\00", align 1
@switch.table.dwc2_hc_ahberr_intr = private unnamed_addr constant [4 x ptr] [ptr @.str.20, ptr @.str.23, ptr @.str.21, ptr @.str.22], align 4
@switch.table.dwc2_hc_ahberr_intr.37 = private unnamed_addr constant [3 x ptr] [ptr @.str.28, ptr @.str.27, ptr @.str.26], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_hcd_save_data_toggle(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = shl i32 %2, 5
  %6 = add i32 %5, 1296
  %7 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 %6
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %11 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %12 = load i8, ptr %11, align 8, !range !10
  %13 = icmp eq i8 %12, 0
  %14 = shl i32 %10, 24
  %15 = select i1 %13, i32 %10, i32 %14
  %16 = lshr i32 %15, 29
  %17 = and i32 %16, 3
  %18 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %19 = load i24, ptr %18, align 1
  %20 = and i24 %19, 196608
  %21 = icmp eq i24 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %4
  %23 = icmp eq ptr %1, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 24
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29, !prof !11

28:                                               ; preds = %24, %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 549, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %42

29:                                               ; preds = %24
  %30 = icmp eq i32 %17, 0
  %31 = getelementptr inbounds %struct.dwc2_qh, ptr %26, i32 0, i32 6
  br i1 %30, label %32, label %33

32:                                               ; preds = %29
  store i8 0, ptr %31, align 1
  br label %42

33:                                               ; preds = %29
  store i8 2, ptr %31, align 1
  br label %42

34:                                               ; preds = %4
  %35 = icmp eq ptr %3, null
  br i1 %35, label %36, label %37, !prof !11

36:                                               ; preds = %34
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 558, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %42

37:                                               ; preds = %34
  %38 = icmp eq i32 %17, 0
  %39 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 2
  br i1 %38, label %40, label %41

40:                                               ; preds = %37
  store i8 0, ptr %39, align 1
  br label %42

41:                                               ; preds = %37
  store i8 2, ptr %39, align 1
  br label %42

42:                                               ; preds = %41, %40, %36, %33, %32, %28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_handle_hcd_intr(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call zeroext i1 @dwc2_is_controller_alive(ptr noundef %0) #5
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.3) #6
  br label %384

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %6) #5
  %7 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 20
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %11 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %12 = load i8, ptr %11, align 8, !range !10
  %13 = icmp eq i8 %12, 0
  %14 = lshr i32 %10, 24
  %15 = select i1 %13, i32 %10, i32 %14
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %380, label %18

18:                                               ; preds = %5
  %19 = load ptr, ptr %7, align 4
  %20 = getelementptr i8, ptr %19, i32 20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %22 = load i8, ptr %11, align 8, !range !10
  %23 = icmp eq i8 %22, 0
  %24 = tail call i32 @llvm.bswap.i32(i32 %21) #5
  %25 = select i1 %23, i32 %21, i32 %24
  %26 = load ptr, ptr %7, align 4
  %27 = getelementptr i8, ptr %26, i32 24
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %29 = load i8, ptr %11, align 8, !range !10
  %30 = icmp eq i8 %29, 0
  %31 = tail call i32 @llvm.bswap.i32(i32 %28) #5
  %32 = select i1 %30, i32 %28, i32 %31
  %33 = and i32 %32, %25
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  %36 = load i16, ptr %6, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  br label %384

38:                                               ; preds = %18
  %39 = and i32 %33, 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %81, label %41

41:                                               ; preds = %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %42 = load ptr, ptr %7, align 4
  %43 = getelementptr i8, ptr %42, i32 20
  br i1 %30, label %45, label %44

44:                                               ; preds = %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 134217728) #5, !srcloc !16
  br label %46

45:                                               ; preds = %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 8) #5, !srcloc !16
  br label %46

46:                                               ; preds = %45, %44
  %47 = tail call i32 @dwc2_hcd_get_frame_number(ptr noundef %0) #5
  %48 = trunc i32 %47 to i16
  %49 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 11
  store i16 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 49
  store i16 %48, ptr %50, align 8
  %51 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 40
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, %51
  br i1 %53, label %77, label %54

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 41
  %56 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 41, i32 1
  br label %57

57:                                               ; preds = %75, %54
  %58 = phi i16 [ %48, %54 ], [ %76, %75 ]
  %59 = phi ptr [ %52, %54 ], [ %60, %75 ]
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i8, ptr %59, i32 -100
  %62 = load i16, ptr %61, align 8
  %63 = zext i16 %58 to i32
  %64 = zext i16 %62 to i32
  %65 = sub nsw i32 %63, %64
  %66 = and i32 %65, 8192
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %57
  %69 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  store ptr %70, ptr %71, align 4
  store volatile ptr %60, ptr %70, align 4
  %72 = load ptr, ptr %56, align 4
  store ptr %59, ptr %56, align 4
  store ptr %55, ptr %59, align 4
  store ptr %72, ptr %69, align 4
  store volatile ptr %59, ptr %72, align 4
  br label %73

73:                                               ; preds = %68, %57
  %74 = icmp eq ptr %60, %51
  br i1 %74, label %77, label %75

75:                                               ; preds = %73
  %76 = load i16, ptr %49, align 4
  br label %57

77:                                               ; preds = %73, %46
  %78 = tail call i32 @dwc2_hcd_select_transactions(ptr noundef %0) #5
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  tail call void @dwc2_hcd_queue_transactions(ptr noundef %0, i32 noundef %78) #5
  br label %81

81:                                               ; preds = %80, %77, %38
  %82 = and i32 %33, 16
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %116, label %84

84:                                               ; preds = %81
  %85 = load ptr, ptr %7, align 4
  %86 = getelementptr i8, ptr %85, i32 32
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %88 = load i8, ptr %11, align 8, !range !10
  %89 = icmp eq i8 %88, 0
  %90 = tail call i32 @llvm.bswap.i32(i32 %87) #5
  %91 = select i1 %89, i32 %87, i32 %90
  %92 = and i32 %91, 15
  %93 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 54, i32 %92
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %84
  %97 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.4) #6
  br label %116

98:                                               ; preds = %84
  %99 = lshr i32 %91, 4
  %100 = and i32 %99, 2047
  %101 = lshr i32 %91, 17
  %102 = and i32 %101, 15
  switch i32 %102, label %114 [
    i32 2, label %103
    i32 3, label %116
    i32 5, label %116
    i32 7, label %116
  ]

103:                                              ; preds = %98
  %104 = icmp eq i32 %100, 0
  br i1 %104, label %116, label %105

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.dwc2_host_chan, ptr %94, i32 0, i32 3
  %107 = load ptr, ptr %106, align 4
  %108 = trunc i32 %100 to i16
  tail call void @dwc2_read_packet(ptr noundef %0, ptr noundef %107, i16 noundef zeroext %108) #5
  %109 = getelementptr inbounds %struct.dwc2_host_chan, ptr %94, i32 0, i32 7
  %110 = load i32, ptr %109, align 4
  %111 = add i32 %110, %100
  store i32 %111, ptr %109, align 4
  %112 = load ptr, ptr %106, align 4
  %113 = getelementptr i8, ptr %112, i32 %100
  store ptr %113, ptr %106, align 4
  br label %116

114:                                              ; preds = %98
  %115 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.5, i32 noundef %102) #6
  br label %116

116:                                              ; preds = %114, %105, %103, %98, %98, %98, %96, %81
  %117 = and i32 %33, 32
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %116
  tail call void @dwc2_hcd_queue_transactions(ptr noundef %0, i32 noundef 2) #5
  br label %120

120:                                              ; preds = %119, %116
  %121 = and i32 %33, 16777216
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %328, label %123

123:                                              ; preds = %120
  %124 = load ptr, ptr %7, align 4
  %125 = getelementptr i8, ptr %124, i32 1088
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %125) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %127 = load i8, ptr %11, align 8, !range !10
  %128 = icmp eq i8 %127, 0
  %129 = tail call i32 @llvm.bswap.i32(i32 %126) #5
  %130 = select i1 %128, i32 %126, i32 %129
  %131 = and i32 %130, -47
  %132 = and i32 %130, 2
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %144, label %134

134:                                              ; preds = %123
  %135 = or i32 %131, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %128, label %140, label %136

136:                                              ; preds = %134
  %137 = tail call i32 @llvm.bswap.i32(i32 %135) #5
  %138 = load ptr, ptr %7, align 4
  %139 = getelementptr i8, ptr %138, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %137) #5, !srcloc !16
  br label %143

140:                                              ; preds = %134
  %141 = load ptr, ptr %7, align 4
  %142 = getelementptr i8, ptr %141, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 %135) #5, !srcloc !16
  br label %143

143:                                              ; preds = %140, %136
  tail call void @dwc2_hcd_connect(ptr noundef %0) #5
  br label %144

144:                                              ; preds = %143, %123
  %145 = and i32 %130, 8
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %309, label %147

147:                                              ; preds = %144
  %148 = or i32 %131, 8
  %149 = load i8, ptr %11, align 8, !range !10
  %150 = icmp eq i8 %149, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %150, label %155, label %151

151:                                              ; preds = %147
  %152 = tail call i32 @llvm.bswap.i32(i32 %148) #5
  %153 = load ptr, ptr %7, align 4
  %154 = getelementptr i8, ptr %153, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 %152) #5, !srcloc !16
  br label %158

155:                                              ; preds = %147
  %156 = load ptr, ptr %7, align 4
  %157 = getelementptr i8, ptr %156, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 %148) #5, !srcloc !16
  br label %158

158:                                              ; preds = %155, %151
  %159 = and i32 %130, 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %284, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 48
  store i8 1, ptr %162, align 2
  %163 = load ptr, ptr %7, align 4
  %164 = getelementptr i8, ptr %163, i32 1028
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %164) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %166 = load i8, ptr %11, align 8, !range !10
  %167 = icmp eq i8 %166, 0
  %168 = tail call i32 @llvm.bswap.i32(i32 %165) #5
  %169 = select i1 %167, i32 %165, i32 %168
  %170 = and i32 %169, -65536
  %171 = tail call i32 @dwc2_calc_frame_interval(ptr noundef %0) #5
  %172 = and i32 %171, 65535
  %173 = or i32 %170, %172
  %174 = load i8, ptr %11, align 8, !range !10
  %175 = icmp eq i8 %174, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %175, label %180, label %176

176:                                              ; preds = %161
  %177 = tail call i32 @llvm.bswap.i32(i32 %173) #5
  %178 = load ptr, ptr %7, align 4
  %179 = getelementptr i8, ptr %178, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %179, i32 %177) #5, !srcloc !16
  br label %183

180:                                              ; preds = %161
  %181 = load ptr, ptr %7, align 4
  %182 = getelementptr i8, ptr %181, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %182, i32 %173) #5, !srcloc !16
  br label %183

183:                                              ; preds = %180, %176
  %184 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 34
  %185 = load i8, ptr %184, align 1, !range !10
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 35
  %189 = load i32, ptr %188, align 4
  %190 = or i32 %189, 4
  store i32 %190, ptr %188, align 4
  br label %309

191:                                              ; preds = %183
  %192 = load ptr, ptr %7, align 4
  %193 = getelementptr i8, ptr %192, i32 12
  %194 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %193) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %195 = load i8, ptr %11, align 8, !range !10
  %196 = icmp eq i8 %195, 0
  %197 = tail call i32 @llvm.bswap.i32(i32 %194) #5
  %198 = select i1 %196, i32 %194, i32 %197
  %199 = lshr i32 %130, 17
  %200 = and i32 %199, 3
  %201 = icmp eq i32 %200, 2
  %202 = add nsw i32 %200, -1
  %203 = icmp ult i32 %202, 2
  %204 = and i32 %198, 32768
  %205 = icmp eq i32 %204, 0
  br i1 %203, label %206, label %253

206:                                              ; preds = %191
  br i1 %205, label %207, label %216

207:                                              ; preds = %206
  %208 = or i32 %198, 32768
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %196, label %213, label %209

209:                                              ; preds = %207
  %210 = tail call i32 @llvm.bswap.i32(i32 %208) #5
  %211 = load ptr, ptr %7, align 4
  %212 = getelementptr i8, ptr %211, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %212, i32 %210) #5, !srcloc !16
  br label %216

213:                                              ; preds = %207
  %214 = load ptr, ptr %7, align 4
  %215 = getelementptr i8, ptr %214, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %215, i32 %208) #5, !srcloc !16
  br label %216

216:                                              ; preds = %213, %209, %206
  %217 = load ptr, ptr %7, align 4
  %218 = getelementptr i8, ptr %217, i32 1024
  %219 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %218) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %220 = load i8, ptr %11, align 8, !range !10
  %221 = icmp eq i8 %220, 0
  %222 = tail call i32 @llvm.bswap.i32(i32 %219) #5
  %223 = select i1 %221, i32 %219, i32 %222
  %224 = and i32 %223, 3
  br i1 %201, label %225, label %241

225:                                              ; preds = %216
  %226 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 35
  %227 = load i8, ptr %226, align 2, !range !10
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %241, label %229

229:                                              ; preds = %225
  %230 = icmp eq i32 %224, 2
  br i1 %230, label %263, label %231

231:                                              ; preds = %229
  %232 = and i32 %223, -4
  %233 = or i32 %232, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %221, label %238, label %234

234:                                              ; preds = %231
  %235 = tail call i32 @llvm.bswap.i32(i32 %233) #5
  %236 = load ptr, ptr %7, align 4
  %237 = getelementptr i8, ptr %236, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %237, i32 %235) #5, !srcloc !16
  br label %264

238:                                              ; preds = %231
  %239 = load ptr, ptr %7, align 4
  %240 = getelementptr i8, ptr %239, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %240, i32 %233) #5, !srcloc !16
  br label %264

241:                                              ; preds = %225, %216
  %242 = icmp eq i32 %224, 1
  br i1 %242, label %263, label %243

243:                                              ; preds = %241
  %244 = and i32 %223, -4
  %245 = or i32 %244, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %221, label %250, label %246

246:                                              ; preds = %243
  %247 = tail call i32 @llvm.bswap.i32(i32 %245) #5
  %248 = load ptr, ptr %7, align 4
  %249 = getelementptr i8, ptr %248, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %249, i32 %247) #5, !srcloc !16
  br label %264

250:                                              ; preds = %243
  %251 = load ptr, ptr %7, align 4
  %252 = getelementptr i8, ptr %251, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %252, i32 %245) #5, !srcloc !16
  br label %264

253:                                              ; preds = %191
  br i1 %205, label %280, label %254

254:                                              ; preds = %253
  %255 = and i32 %198, -32769
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %196, label %260, label %256

256:                                              ; preds = %254
  %257 = tail call i32 @llvm.bswap.i32(i32 %255) #5
  %258 = load ptr, ptr %7, align 4
  %259 = getelementptr i8, ptr %258, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %259, i32 %257) #5, !srcloc !16
  br label %264

260:                                              ; preds = %254
  %261 = load ptr, ptr %7, align 4
  %262 = getelementptr i8, ptr %261, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %262, i32 %255) #5, !srcloc !16
  br label %264

263:                                              ; preds = %241, %229
  br i1 %205, label %264, label %280

264:                                              ; preds = %263, %260, %256, %250, %246, %238, %234
  %265 = or i32 %131, 256
  %266 = load i8, ptr %11, align 8, !range !10
  %267 = icmp eq i8 %266, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %267, label %272, label %268

268:                                              ; preds = %264
  %269 = tail call i32 @llvm.bswap.i32(i32 %265) #5
  %270 = load ptr, ptr %7, align 4
  %271 = getelementptr i8, ptr %270, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %271, i32 %269) #5, !srcloc !16
  br label %275

272:                                              ; preds = %264
  %273 = load ptr, ptr %7, align 4
  %274 = getelementptr i8, ptr %273, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %274, i32 %265) #5, !srcloc !16
  br label %275

275:                                              ; preds = %272, %268
  %276 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 25
  %277 = load ptr, ptr %276, align 8
  %278 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 58
  %279 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %277, ptr noundef %278, i32 noundef 6) #5
  br label %309

280:                                              ; preds = %263, %253
  %281 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 35
  %282 = load i32, ptr %281, align 4
  %283 = or i32 %282, 4
  store i32 %283, ptr %281, align 4
  br label %309

284:                                              ; preds = %158
  %285 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 35
  %286 = load i32, ptr %285, align 4
  %287 = or i32 %286, 8
  store i32 %287, ptr %285, align 4
  %288 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 33
  %289 = load i8, ptr %288, align 4, !range !10
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %309, label %291

291:                                              ; preds = %284
  %292 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 32
  store i8 0, ptr %292, align 1
  %293 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 48
  store i8 0, ptr %293, align 2
  %294 = load ptr, ptr %7, align 4
  %295 = getelementptr i8, ptr %294, i32 1024
  %296 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %295) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %297 = load i8, ptr %11, align 8, !range !10
  %298 = icmp eq i8 %297, 0
  %299 = tail call i32 @llvm.bswap.i32(i32 %296) #5
  %300 = select i1 %298, i32 %296, i32 %299
  %301 = and i32 %300, -8388609
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %298, label %306, label %302

302:                                              ; preds = %291
  %303 = tail call i32 @llvm.bswap.i32(i32 %301) #5
  %304 = load ptr, ptr %7, align 4
  %305 = getelementptr i8, ptr %304, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %305, i32 %303) #5, !srcloc !16
  br label %309

306:                                              ; preds = %291
  %307 = load ptr, ptr %7, align 4
  %308 = getelementptr i8, ptr %307, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %308, i32 %301) #5, !srcloc !16
  br label %309

309:                                              ; preds = %306, %302, %284, %280, %275, %187, %144
  %310 = phi i32 [ %131, %144 ], [ %131, %284 ], [ %131, %187 ], [ %265, %275 ], [ %131, %280 ], [ %131, %302 ], [ %131, %306 ]
  %311 = and i32 %130, 32
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %328, label %313

313:                                              ; preds = %309
  %314 = or i32 %310, 32
  %315 = load i8, ptr %11, align 8, !range !10
  %316 = icmp eq i8 %315, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %316, label %321, label %317

317:                                              ; preds = %313
  %318 = tail call i32 @llvm.bswap.i32(i32 %314) #5
  %319 = load ptr, ptr %7, align 4
  %320 = getelementptr i8, ptr %319, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %320, i32 %318) #5, !srcloc !16
  br label %324

321:                                              ; preds = %313
  %322 = load ptr, ptr %7, align 4
  %323 = getelementptr i8, ptr %322, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %323, i32 %314) #5, !srcloc !16
  br label %324

324:                                              ; preds = %321, %317
  %325 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 35
  %326 = load i32, ptr %325, align 4
  %327 = or i32 %326, 32
  store i32 %327, ptr %325, align 4
  br label %328

328:                                              ; preds = %324, %309, %120
  %329 = and i32 %33, 33554432
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %376, label %331

331:                                              ; preds = %328
  %332 = load ptr, ptr %7, align 4
  %333 = getelementptr i8, ptr %332, i32 1044
  %334 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %333) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %335 = load i8, ptr %11, align 8, !range !10
  %336 = icmp eq i8 %335, 0
  %337 = tail call i32 @llvm.bswap.i32(i32 %334) #5
  %338 = select i1 %336, i32 %334, i32 %337
  %339 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 44
  %340 = load ptr, ptr %339, align 4
  %341 = icmp eq ptr %340, %339
  br i1 %341, label %342, label %347

342:                                              ; preds = %360, %331
  %343 = phi i32 [ %338, %331 ], [ %361, %360 ]
  %344 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 37
  %345 = load i8, ptr %344, align 8
  %346 = icmp eq i8 %345, 0
  br i1 %346, label %376, label %363

347:                                              ; preds = %360, %331
  %348 = phi i32 [ %361, %360 ], [ %338, %331 ]
  %349 = phi ptr [ %350, %360 ], [ %340, %331 ]
  %350 = load ptr, ptr %349, align 4
  %351 = getelementptr i8, ptr %349, i32 -72
  %352 = load i8, ptr %351, align 4
  %353 = zext i8 %352 to i32
  %354 = shl nuw i32 1, %353
  %355 = and i32 %354, %348
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %360, label %357

357:                                              ; preds = %347
  tail call fastcc void @dwc2_hc_n_intr(ptr noundef %0, i32 noundef %353) #5
  %358 = xor i32 %354, -1
  %359 = and i32 %348, %358
  br label %360

360:                                              ; preds = %357, %347
  %361 = phi i32 [ %359, %357 ], [ %348, %347 ]
  %362 = icmp eq ptr %350, %339
  br i1 %362, label %342, label %347

363:                                              ; preds = %371, %342
  %364 = phi i8 [ %372, %371 ], [ %345, %342 ]
  %365 = phi i32 [ %373, %371 ], [ 0, %342 ]
  %366 = shl nuw i32 1, %365
  %367 = and i32 %366, %343
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %371, label %369

369:                                              ; preds = %363
  tail call fastcc void @dwc2_hc_n_intr(ptr noundef %0, i32 noundef %365) #5
  %370 = load i8, ptr %344, align 8
  br label %371

371:                                              ; preds = %369, %363
  %372 = phi i8 [ %364, %363 ], [ %370, %369 ]
  %373 = add nuw nsw i32 %365, 1
  %374 = zext i8 %372 to i32
  %375 = icmp ult i32 %373, %374
  br i1 %375, label %363, label %376

376:                                              ; preds = %371, %342, %328
  %377 = and i32 %33, 67108864
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %380, label %379

379:                                              ; preds = %376
  tail call void @dwc2_hcd_queue_transactions(ptr noundef %0, i32 noundef 1) #5
  br label %380

380:                                              ; preds = %379, %376, %5
  %381 = phi i32 [ 0, %5 ], [ 1, %379 ], [ 1, %376 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  %382 = load i16, ptr %6, align 4
  %383 = add i16 %382, 1
  store i16 %383, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  br label %384

384:                                              ; preds = %380, %35, %3
  %385 = phi i32 [ %381, %380 ], [ 0, %35 ], [ 0, %3 ]
  ret i32 %385
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dwc2_is_controller_alive(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hcd_get_frame_number(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hcd_select_transactions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hcd_queue_transactions(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_read_packet(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hcd_connect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_calc_frame_interval(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_hc_n_intr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 54, i32 %1
  %4 = load ptr, ptr %3, align 4
  %5 = shl i32 %1, 5
  %6 = add i32 %5, 1288
  %7 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 %6
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %11 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %12 = load i8, ptr %11, align 8, !range !10
  %13 = icmp eq i8 %12, 0
  %14 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  %15 = select i1 %13, i32 %10, i32 %14
  %16 = add i32 %5, 1292
  %17 = load ptr, ptr %7, align 4
  %18 = getelementptr i8, ptr %17, i32 %16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %20 = load i8, ptr %11, align 8, !range !10
  %21 = icmp eq i8 %20, 0
  %22 = tail call i32 @llvm.bswap.i32(i32 %19) #5
  %23 = select i1 %21, i32 %19, i32 %22
  %24 = icmp eq ptr %4, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %2
  %26 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.6) #6
  %27 = load i8, ptr %11, align 8, !range !10
  %28 = icmp eq i8 %27, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  %31 = load ptr, ptr %7, align 4
  %32 = getelementptr i8, ptr %31, i32 %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #5, !srcloc !16
  br label %410

33:                                               ; preds = %25
  %34 = load ptr, ptr %7, align 4
  %35 = getelementptr i8, ptr %34, i32 %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %15) #5, !srcloc !16
  br label %410

36:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %21, label %41, label %37

37:                                               ; preds = %36
  %38 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  %39 = load ptr, ptr %7, align 4
  %40 = getelementptr i8, ptr %39, i32 %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #5, !srcloc !16
  br label %44

41:                                               ; preds = %36
  %42 = load ptr, ptr %7, align 4
  %43 = getelementptr i8, ptr %42, i32 %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %15) #5, !srcloc !16
  br label %44

44:                                               ; preds = %41, %37
  %45 = getelementptr inbounds %struct.dwc2_host_chan, ptr %4, i32 0, i32 24
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %49, ptr noundef nonnull @.str.7) #6
  br label %410

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.dwc2_host_chan, ptr %4, i32 0, i32 23
  store i32 %15, ptr %51, align 4
  %52 = and i32 %23, %15
  %53 = getelementptr inbounds %struct.dwc2_host_chan, ptr %4, i32 0, i32 22
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 13
  br i1 %55, label %56, label %66

56:                                               ; preds = %50
  %57 = icmp eq i32 %52, 2
  br i1 %57, label %59, label %58, !prof !17

58:                                               ; preds = %56
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2092, i32 noundef 9, ptr noundef null) #5
  br label %59

59:                                               ; preds = %58, %56
  %60 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 32
  %61 = load i8, ptr %60, align 1, !range !10
  %62 = icmp eq i8 %61, 0
  %63 = load i32, ptr %53, align 4
  br i1 %62, label %65, label %64

64:                                               ; preds = %59
  tail call void @dwc2_hcd_complete_xfer_ddma(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %1, i32 noundef %63) #5
  br label %410

65:                                               ; preds = %59
  tail call fastcc void @dwc2_release_channel(ptr noundef %0, ptr noundef nonnull %4, ptr noundef null, i32 noundef %63)
  br label %410

66:                                               ; preds = %50
  %67 = getelementptr inbounds %struct.dwc2_qh, ptr %46, i32 0, i32 23
  %68 = load volatile ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, %67
  br i1 %69, label %70, label %87

70:                                               ; preds = %66
  store i32 0, ptr %53, align 4
  %71 = load ptr, ptr %7, align 4
  %72 = getelementptr i8, ptr %71, i32 %16
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %74 = load i8, ptr %11, align 8, !range !10
  %75 = icmp eq i8 %74, 0
  %76 = tail call i32 @llvm.bswap.i32(i32 %73) #5
  %77 = select i1 %75, i32 %73, i32 %76
  %78 = and i32 %77, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %75, label %83, label %79

79:                                               ; preds = %70
  %80 = tail call i32 @llvm.bswap.i32(i32 %78) #5
  %81 = load ptr, ptr %7, align 4
  %82 = getelementptr i8, ptr %81, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %80) #5, !srcloc !16
  br label %86

83:                                               ; preds = %70
  %84 = load ptr, ptr %7, align 4
  %85 = getelementptr i8, ptr %84, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %78) #5, !srcloc !16
  br label %86

86:                                               ; preds = %83, %79
  store i32 0, ptr %51, align 4
  br label %410

87:                                               ; preds = %66
  %88 = getelementptr i8, ptr %68, i32 -36
  %89 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 31
  %90 = load i8, ptr %89, align 2, !range !10
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = and i32 %52, 2
  %94 = icmp ne i32 %93, 0
  %95 = icmp ne i32 %52, 2
  %96 = and i1 %95, %94
  %97 = and i32 %52, -3
  %98 = select i1 %96, i32 %97, i32 %52
  br label %99

99:                                               ; preds = %92, %87
  %100 = phi i32 [ %52, %87 ], [ %98, %92 ]
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %99
  tail call fastcc void @dwc2_hc_xfercomp_intr(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %1, ptr noundef %88)
  %104 = and i32 %100, -65
  br label %105

105:                                              ; preds = %103, %99
  %106 = phi i32 [ %104, %103 ], [ %100, %99 ]
  %107 = and i32 %106, 2
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %322, label %109

109:                                              ; preds = %105
  %110 = load i8, ptr %89, align 2, !range !10
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %313, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 5
  %114 = load i32, ptr %113, align 8
  %115 = icmp ugt i32 %114, 1330915097
  br i1 %115, label %116, label %124

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.dwc2_host_chan, ptr %4, i32 0, i32 1
  %118 = load i24, ptr %117, align 1
  %119 = and i24 %118, 63488
  %120 = icmp eq i24 %119, 12288
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = and i24 %118, 65536
  %123 = icmp ne i24 %122, 0
  br label %124

124:                                              ; preds = %121, %116, %112
  %125 = phi i1 [ true, %116 ], [ true, %112 ], [ %123, %121 ]
  %126 = load i32, ptr %53, align 4
  switch i32 %126, label %137 [
    i32 13, label %131
    i32 11, label %127
  ]

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 32
  %129 = load i8, ptr %128, align 1, !range !10
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %136, label %137

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 32
  %133 = load i8, ptr %132, align 1, !range !10
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %131
  tail call void @dwc2_hcd_complete_xfer_ddma(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %1, i32 noundef 13) #5
  br label %315

136:                                              ; preds = %131, %127
  tail call fastcc void @dwc2_release_channel(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %88, i32 noundef %126) #5
  br label %315

137:                                              ; preds = %127, %124
  %138 = load ptr, ptr %7, align 4
  %139 = getelementptr i8, ptr %138, i32 %16
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %141 = load i8, ptr %11, align 8, !range !10
  %142 = icmp eq i8 %141, 0
  %143 = tail call i32 @llvm.bswap.i32(i32 %140) #5
  %144 = select i1 %142, i32 %140, i32 %143
  %145 = load i32, ptr %51, align 4
  %146 = and i32 %145, 1
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %155, label %148

148:                                              ; preds = %137
  %149 = getelementptr inbounds %struct.dwc2_host_chan, ptr %4, i32 0, i32 1
  %150 = load i24, ptr %149, align 1
  %151 = and i24 %150, 198656
  %152 = icmp eq i24 %151, 65536
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  tail call fastcc void @dwc2_hc_ack_intr(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %1, ptr noundef %88) #5
  br label %154

154:                                              ; preds = %153, %148
  tail call fastcc void @dwc2_hc_xfercomp_intr(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %1, ptr noundef %88) #5
  br label %315

155:                                              ; preds = %137
  %156 = and i32 %145, 8
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %155
  tail call fastcc void @dwc2_hc_stall_intr(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %1, ptr noundef %88) #5
  br label %315

159:                                              ; preds = %155
  %160 = and i32 %145, 128
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %173, label %162

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 32
  %164 = load i8, ptr %163, align 1, !range !10
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %162
  %167 = and i32 %145, 112
  %168 = icmp eq i32 %167, 0
  %169 = select i1 %125, i1 true, i1 %168
  br i1 %169, label %172, label %170

170:                                              ; preds = %166
  %171 = getelementptr i8, ptr %68, i32 -16
  store i8 0, ptr %171, align 4
  br label %172

172:                                              ; preds = %170, %166
  tail call fastcc void @dwc2_hc_xacterr_intr(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %1, ptr noundef %88) #5
  br label %315

173:                                              ; preds = %162, %159
  %174 = and i32 %145, 4096
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %181, label %176

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 32
  %178 = load i8, ptr %177, align 1, !range !10
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %176
  tail call fastcc void @dwc2_hc_xacterr_intr(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %1, ptr noundef %88) #5
  br label %315

181:                                              ; preds = %176, %173
  %182 = and i32 %145, 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %189, label %184

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 32
  %186 = load i8, ptr %185, align 1, !range !10
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %184
  tail call fastcc void @dwc2_hc_ahberr_intr(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %1, ptr noundef %88) #5
  br label %315

189:                                              ; preds = %184, %181
  %190 = and i32 %145, 256
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %189
  tail call fastcc void @dwc2_hc_babble_intr(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %1, ptr noundef %88) #5
  br label %315

193:                                              ; preds = %189
  %194 = and i32 %145, 512
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %193
  tail call fastcc void @dwc2_hc_frmovrun_intr(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %1, ptr noundef %88) #5
  br label %315

197:                                              ; preds = %193
  br i1 %125, label %198, label %233

198:                                              ; preds = %197
  %199 = and i32 %145, 64
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %198
  tail call fastcc void @dwc2_hc_nyet_intr(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %1, ptr noundef %88) #5
  br label %315

202:                                              ; preds = %198
  %203 = and i32 %145, 16
  %204 = icmp ne i32 %203, 0
  %205 = and i32 %144, 16
  %206 = icmp eq i32 %205, 0
  %207 = select i1 %204, i1 %206, i1 false
  br i1 %207, label %208, label %209

208:                                              ; preds = %202
  tail call fastcc void @dwc2_hc_nak_intr(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %1, ptr noundef %88) #5
  br label %315

209:                                              ; preds = %202
  %210 = and i32 %145, 32
  %211 = icmp ne i32 %210, 0
  %212 = and i32 %144, 32
  %213 = icmp eq i32 %212, 0
  %214 = select i1 %211, i1 %213, i1 false
  br i1 %214, label %215, label %216

215:                                              ; preds = %209
  tail call fastcc void @dwc2_hc_ack_intr(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %1, ptr noundef %88) #5
  br label %315

216:                                              ; preds = %209
  %217 = getelementptr inbounds %struct.dwc2_host_chan, ptr %4, i32 0, i32 1
  %218 = load i24, ptr %217, align 1
  %219 = lshr i24 %218, 16
  %220 = trunc i24 %219 to i2
  switch i2 %220, label %222 [
    i2 -1, label %221
    i2 1, label %221
  ]

221:                                              ; preds = %216, %216
  tail call fastcc void @dwc2_halt_channel(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %88, i32 noundef 12) #5
  br label %315

222:                                              ; preds = %216
  %223 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %223, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.dwc2_hc_chhltd_intr_dma, i32 noundef %1) #6
  %224 = load ptr, ptr %0, align 8
  %225 = load i32, ptr %51, align 4
  %226 = load ptr, ptr %7, align 4
  %227 = getelementptr i8, ptr %226, i32 20
  %228 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %227) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %229 = load i8, ptr %11, align 8, !range !10
  %230 = icmp eq i8 %229, 0
  %231 = tail call i32 @llvm.bswap.i32(i32 %228) #5
  %232 = select i1 %230, i32 %228, i32 %231
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %224, ptr noundef nonnull @.str.10, i32 noundef %225, i32 noundef %232) #6
  br label %235

233:                                              ; preds = %197
  %234 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %234, ptr noundef nonnull @.str.11, i32 noundef %145) #6
  br label %235

235:                                              ; preds = %233, %222
  %236 = getelementptr i8, ptr %68, i32 -16
  %237 = load i8, ptr %236, align 4
  %238 = add i8 %237, 1
  store i8 %238, ptr %236, align 4
  %239 = getelementptr i8, ptr %68, i32 -8
  %240 = load ptr, ptr %239, align 4
  %241 = add i32 %5, 1296
  %242 = load ptr, ptr %7, align 4
  %243 = getelementptr i8, ptr %242, i32 %241
  %244 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %243) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %245 = load i8, ptr %11, align 8, !range !10
  %246 = icmp eq i8 %245, 0
  %247 = tail call i32 @llvm.bswap.i32(i32 %244) #5
  %248 = select i1 %246, i32 %244, i32 %247
  %249 = lshr i32 %248, 19
  %250 = and i32 %249, 1023
  %251 = getelementptr inbounds %struct.dwc2_host_chan, ptr %4, i32 0, i32 8
  %252 = load i16, ptr %251, align 4
  %253 = zext i16 %252 to i32
  %254 = sub nsw i32 %253, %250
  %255 = getelementptr inbounds %struct.dwc2_host_chan, ptr %4, i32 0, i32 2
  %256 = load i16, ptr %255, align 4
  %257 = and i16 %256, 2047
  %258 = zext i16 %257 to i32
  %259 = mul nsw i32 %254, %258
  %260 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %240, i32 0, i32 7
  %261 = load i32, ptr %260, align 4
  %262 = add i32 %259, %261
  %263 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %240, i32 0, i32 6
  %264 = load i32, ptr %263, align 4
  %265 = icmp ugt i32 %262, %264
  br i1 %265, label %266, label %269

266:                                              ; preds = %235
  %267 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %267, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.dwc2_update_urb_state_abn) #6
  %268 = load i32, ptr %263, align 4
  br label %269

269:                                              ; preds = %266, %235
  %270 = phi i32 [ %268, %266 ], [ %262, %235 ]
  store i32 %270, ptr %260, align 4
  %271 = load ptr, ptr %7, align 4
  %272 = getelementptr i8, ptr %271, i32 %241
  %273 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %272) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %274 = load ptr, ptr %239, align 4
  %275 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %274, i32 0, i32 7
  %276 = load i32, ptr %275, align 4
  %277 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %274, i32 0, i32 6
  %278 = load i32, ptr %277, align 4
  %279 = icmp ult i32 %276, %278
  br i1 %279, label %281, label %280

280:                                              ; preds = %269
  store i8 3, ptr %236, align 4
  br label %281

281:                                              ; preds = %280, %269
  %282 = load ptr, ptr %7, align 4
  %283 = getelementptr i8, ptr %282, i32 %241
  %284 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %283) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %285 = load i8, ptr %11, align 8, !range !10
  %286 = icmp eq i8 %285, 0
  %287 = shl i32 %284, 24
  %288 = select i1 %286, i32 %284, i32 %287
  %289 = lshr i32 %288, 29
  %290 = and i32 %289, 3
  %291 = getelementptr inbounds %struct.dwc2_host_chan, ptr %4, i32 0, i32 1
  %292 = load i24, ptr %291, align 1
  %293 = and i24 %292, 196608
  %294 = icmp eq i24 %293, 0
  br i1 %294, label %304, label %295

295:                                              ; preds = %281
  %296 = load ptr, ptr %45, align 4
  %297 = icmp eq ptr %296, null
  br i1 %297, label %298, label %299, !prof !11

298:                                              ; preds = %295
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 549, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %312

299:                                              ; preds = %295
  %300 = icmp eq i32 %290, 0
  %301 = getelementptr inbounds %struct.dwc2_qh, ptr %296, i32 0, i32 6
  br i1 %300, label %302, label %303

302:                                              ; preds = %299
  store i8 0, ptr %301, align 1
  br label %312

303:                                              ; preds = %299
  store i8 2, ptr %301, align 1
  br label %312

304:                                              ; preds = %281
  %305 = icmp eq ptr %88, null
  br i1 %305, label %306, label %307, !prof !11

306:                                              ; preds = %304
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 558, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %312

307:                                              ; preds = %304
  %308 = icmp eq i32 %290, 0
  %309 = getelementptr i8, ptr %68, i32 -31
  br i1 %308, label %310, label %311

310:                                              ; preds = %307
  store i8 0, ptr %309, align 1
  br label %312

311:                                              ; preds = %307
  store i8 2, ptr %309, align 1
  br label %312

312:                                              ; preds = %311, %310, %306, %303, %302, %298
  tail call fastcc void @dwc2_halt_channel(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %88, i32 noundef 7) #5
  br label %315

313:                                              ; preds = %109
  %314 = load i32, ptr %53, align 4
  tail call fastcc void @dwc2_release_channel(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %88, i32 noundef %314) #5
  br label %315

315:                                              ; preds = %313, %312, %221, %215, %208, %201, %196, %192, %188, %180, %172, %158, %154, %136, %135
  %316 = load ptr, ptr %45, align 4
  %317 = icmp eq ptr %316, null
  br i1 %317, label %409, label %318

318:                                              ; preds = %315
  %319 = getelementptr inbounds %struct.dwc2_qh, ptr %316, i32 0, i32 23
  %320 = load ptr, ptr %319, align 8
  %321 = icmp eq ptr %320, %68
  br i1 %321, label %322, label %409

322:                                              ; preds = %318, %105
  %323 = and i32 %106, 4
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %332, label %325

325:                                              ; preds = %322
  tail call fastcc void @dwc2_hc_ahberr_intr(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %1, ptr noundef %88)
  %326 = load ptr, ptr %45, align 4
  %327 = icmp eq ptr %326, null
  br i1 %327, label %409, label %328

328:                                              ; preds = %325
  %329 = getelementptr inbounds %struct.dwc2_qh, ptr %326, i32 0, i32 23
  %330 = load ptr, ptr %329, align 8
  %331 = icmp eq ptr %330, %68
  br i1 %331, label %332, label %409

332:                                              ; preds = %328, %322
  %333 = and i32 %106, 8
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %342, label %335

335:                                              ; preds = %332
  tail call fastcc void @dwc2_hc_stall_intr(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %1, ptr noundef %88)
  %336 = load ptr, ptr %45, align 4
  %337 = icmp eq ptr %336, null
  br i1 %337, label %409, label %338

338:                                              ; preds = %335
  %339 = getelementptr inbounds %struct.dwc2_qh, ptr %336, i32 0, i32 23
  %340 = load ptr, ptr %339, align 8
  %341 = icmp eq ptr %340, %68
  br i1 %341, label %342, label %409

342:                                              ; preds = %338, %332
  %343 = and i32 %106, 16
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %352, label %345

345:                                              ; preds = %342
  tail call fastcc void @dwc2_hc_nak_intr(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %1, ptr noundef %88)
  %346 = load ptr, ptr %45, align 4
  %347 = icmp eq ptr %346, null
  br i1 %347, label %409, label %348

348:                                              ; preds = %345
  %349 = getelementptr inbounds %struct.dwc2_qh, ptr %346, i32 0, i32 23
  %350 = load ptr, ptr %349, align 8
  %351 = icmp eq ptr %350, %68
  br i1 %351, label %352, label %409

352:                                              ; preds = %348, %342
  %353 = and i32 %106, 32
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %362, label %355

355:                                              ; preds = %352
  tail call fastcc void @dwc2_hc_ack_intr(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %1, ptr noundef %88)
  %356 = load ptr, ptr %45, align 4
  %357 = icmp eq ptr %356, null
  br i1 %357, label %409, label %358

358:                                              ; preds = %355
  %359 = getelementptr inbounds %struct.dwc2_qh, ptr %356, i32 0, i32 23
  %360 = load ptr, ptr %359, align 8
  %361 = icmp eq ptr %360, %68
  br i1 %361, label %362, label %409

362:                                              ; preds = %358, %352
  %363 = and i32 %106, 64
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %372, label %365

365:                                              ; preds = %362
  tail call fastcc void @dwc2_hc_nyet_intr(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %1, ptr noundef %88)
  %366 = load ptr, ptr %45, align 4
  %367 = icmp eq ptr %366, null
  br i1 %367, label %409, label %368

368:                                              ; preds = %365
  %369 = getelementptr inbounds %struct.dwc2_qh, ptr %366, i32 0, i32 23
  %370 = load ptr, ptr %369, align 8
  %371 = icmp eq ptr %370, %68
  br i1 %371, label %372, label %409

372:                                              ; preds = %368, %362
  %373 = and i32 %106, 128
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %382, label %375

375:                                              ; preds = %372
  tail call fastcc void @dwc2_hc_xacterr_intr(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %1, ptr noundef %88)
  %376 = load ptr, ptr %45, align 4
  %377 = icmp eq ptr %376, null
  br i1 %377, label %409, label %378

378:                                              ; preds = %375
  %379 = getelementptr inbounds %struct.dwc2_qh, ptr %376, i32 0, i32 23
  %380 = load ptr, ptr %379, align 8
  %381 = icmp eq ptr %380, %68
  br i1 %381, label %382, label %409

382:                                              ; preds = %378, %372
  %383 = and i32 %106, 256
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %392, label %385

385:                                              ; preds = %382
  tail call fastcc void @dwc2_hc_babble_intr(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %1, ptr noundef %88)
  %386 = load ptr, ptr %45, align 4
  %387 = icmp eq ptr %386, null
  br i1 %387, label %409, label %388

388:                                              ; preds = %385
  %389 = getelementptr inbounds %struct.dwc2_qh, ptr %386, i32 0, i32 23
  %390 = load ptr, ptr %389, align 8
  %391 = icmp eq ptr %390, %68
  br i1 %391, label %392, label %409

392:                                              ; preds = %388, %382
  %393 = and i32 %106, 512
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %405, label %395

395:                                              ; preds = %392
  tail call fastcc void @dwc2_hc_frmovrun_intr(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %1, ptr noundef %88)
  %396 = load ptr, ptr %45, align 4
  %397 = icmp eq ptr %396, null
  br i1 %397, label %409, label %398

398:                                              ; preds = %395
  %399 = getelementptr inbounds %struct.dwc2_qh, ptr %396, i32 0, i32 23
  %400 = load ptr, ptr %399, align 8
  %401 = icmp ne ptr %400, %68
  %402 = and i32 %106, 1024
  %403 = icmp eq i32 %402, 0
  %404 = select i1 %401, i1 true, i1 %403
  br i1 %404, label %409, label %408

405:                                              ; preds = %392
  %406 = and i32 %106, 1024
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %409, label %408

408:                                              ; preds = %405, %398
  tail call fastcc void @dwc2_hc_datatglerr_intr(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %1, ptr noundef %88)
  br label %409

409:                                              ; preds = %408, %405, %398, %395, %388, %385, %378, %375, %368, %365, %358, %355, %348, %345, %338, %335, %328, %325, %318, %315
  store i32 0, ptr %51, align 4
  br label %410

410:                                              ; preds = %409, %86, %65, %64, %48, %33, %29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hcd_complete_xfer_ddma(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_release_channel(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  switch i32 %3, label %15 [
    i32 2, label %5
    i32 11, label %6
    i32 6, label %6
    i32 9, label %6
    i32 7, label %7
    i32 13, label %42
    i32 12, label %14
  ]

5:                                                ; preds = %4
  br label %15

6:                                                ; preds = %4, %4, %4
  br label %15

7:                                                ; preds = %4
  %8 = icmp eq ptr %2, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.dwc2_qtd, ptr %2, i32 0, i32 10
  %11 = load i8, ptr %10, align 4
  %12 = icmp ugt i8 %11, 2
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  tail call void @dwc2_host_complete(ptr noundef %0, ptr noundef nonnull %2, i32 noundef -71) #5
  br label %15

14:                                               ; preds = %4
  tail call void @dwc2_host_complete(ptr noundef %0, ptr noundef %2, i32 noundef -5) #5
  br label %15

15:                                               ; preds = %14, %13, %9, %7, %6, %5, %4
  %16 = phi i1 [ true, %4 ], [ true, %7 ], [ true, %9 ], [ false, %13 ], [ false, %14 ], [ false, %6 ], [ false, %5 ]
  %17 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 24
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dwc2_qh, ptr %18, i32 0, i32 23
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %39, label %22

22:                                               ; preds = %15
  %23 = getelementptr i8, ptr %20, i32 -36
  %24 = getelementptr i8, ptr %20, i32 -30
  %25 = load i8, ptr %24, align 2
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = getelementptr i8, ptr %20, i32 -29
  %29 = load i8, ptr %28, align 1
  %30 = icmp ult i8 %29, 2
  %31 = zext i1 %30 to i32
  br label %32

32:                                               ; preds = %27, %22
  %33 = phi i32 [ 1, %22 ], [ %31, %27 ]
  br i1 %16, label %39, label %34

34:                                               ; preds = %32
  %35 = getelementptr i8, ptr %20, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %20, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %36, ptr %38, align 4
  store volatile ptr %37, ptr %36, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %20, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %35, align 4
  tail call void @kfree(ptr noundef %23) #5
  br label %39

39:                                               ; preds = %34, %32, %15
  %40 = phi i32 [ 0, %15 ], [ 0, %34 ], [ %33, %32 ]
  %41 = getelementptr inbounds %struct.dwc2_qh, ptr %18, i32 0, i32 24
  store ptr null, ptr %41, align 8
  tail call void @dwc2_hcd_qh_deactivate(ptr noundef %0, ptr noundef %18, i32 noundef %40) #5
  br label %42

42:                                               ; preds = %39, %4
  %43 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 25
  %44 = load volatile ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, %43
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 25, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  store ptr %48, ptr %49, align 4
  store volatile ptr %44, ptr %48, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %43, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %47, align 4
  br label %50

50:                                               ; preds = %46, %42
  tail call void @dwc2_hc_cleanup(ptr noundef %0, ptr noundef %1) #5
  %51 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 50
  %52 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 50, i32 1
  %53 = load ptr, ptr %52, align 4
  store ptr %43, ptr %52, align 4
  store ptr %51, ptr %43, align 4
  %54 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 25, i32 1
  store ptr %53, ptr %54, align 4
  store volatile ptr %43, ptr %53, align 4
  %55 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 13
  %56 = load i8, ptr %55, align 2, !range !10
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 53
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, 1
  store i32 %61, ptr %59, align 4
  br label %72

62:                                               ; preds = %50
  %63 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %64 = load i24, ptr %63, align 1
  %65 = lshr i24 %64, 16
  %66 = and i24 %65, 3
  %67 = zext i24 %66 to i32
  switch i32 %67, label %72 [
    i32 0, label %68
    i32 2, label %68
  ]

68:                                               ; preds = %62, %62
  %69 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 52
  %70 = load i32, ptr %69, align 8
  %71 = add i32 %70, -1
  store i32 %71, ptr %69, align 8
  br label %72

72:                                               ; preds = %68, %62, %58
  %73 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr i8, ptr %74, i32 1048
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %77 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %78 = load i8, ptr %77, align 8, !range !10
  %79 = icmp eq i8 %78, 0
  %80 = tail call i32 @llvm.bswap.i32(i32 %76) #5
  %81 = select i1 %79, i32 %76, i32 %80
  %82 = load i8, ptr %1, align 4
  %83 = zext i8 %82 to i32
  %84 = shl nuw i32 1, %83
  %85 = xor i32 %84, -1
  %86 = and i32 %81, %85
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %79, label %91, label %87

87:                                               ; preds = %72
  %88 = tail call i32 @llvm.bswap.i32(i32 %86) #5
  %89 = load ptr, ptr %73, align 4
  %90 = getelementptr i8, ptr %89, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %88) #5, !srcloc !16
  br label %94

91:                                               ; preds = %72
  %92 = load ptr, ptr %73, align 4
  %93 = getelementptr i8, ptr %92, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %86) #5, !srcloc !16
  br label %94

94:                                               ; preds = %91, %87
  %95 = tail call i32 @dwc2_hcd_select_transactions(ptr noundef %0) #5
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %94
  tail call void @dwc2_hcd_queue_transactions(ptr noundef %0, i32 noundef %95) #5
  br label %98

98:                                               ; preds = %97, %94
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_hc_xfercomp_intr(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %371, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %6, i32 0, i32 13, i32 2
  %10 = load i8, ptr %9, align 2
  %11 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 32
  %12 = load i8, ptr %11, align 1, !range !10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  tail call void @dwc2_hcd_complete_xfer_ddma(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1) #5
  %15 = icmp eq i8 %10, 1
  br i1 %15, label %391, label %371

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 24
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dwc2_qh, ptr %18, i32 0, i32 8
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %138, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %24 = load i24, ptr %23, align 1
  %25 = and i24 %24, 198656
  %26 = icmp eq i24 %25, 67584
  br i1 %26, label %27, label %134

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 31
  %29 = load i8, ptr %28, align 2, !range !10
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %134, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 3
  %33 = load i8, ptr %32, align 2
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %138, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 5
  %37 = load i16, ptr %36, align 4
  %38 = zext i16 %37 to i32
  %39 = shl i32 %2, 5
  %40 = add i32 %39, 1296
  %41 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %42, i32 %40
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %45 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %46 = load i24, ptr %23, align 1
  %47 = and i24 %46, 2048
  %48 = icmp eq i24 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %35
  %50 = load i8, ptr %45, align 8, !range !10
  %51 = icmp eq i8 %50, 0
  %52 = tail call i32 @llvm.bswap.i32(i32 %44) #5
  %53 = select i1 %51, i32 %44, i32 %52
  %54 = and i32 %53, 524287
  %55 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = sub i32 %56, %54
  br label %69

58:                                               ; preds = %35
  %59 = load ptr, ptr %17, align 4
  %60 = getelementptr inbounds %struct.dwc2_qh, ptr %59, i32 0, i32 8
  %61 = load i8, ptr %60, align 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 9
  %65 = load i32, ptr %64, align 4
  br label %69

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 6
  %68 = load i32, ptr %67, align 4
  br label %69

69:                                               ; preds = %66, %63, %49
  %70 = phi i32 [ %57, %49 ], [ %65, %63 ], [ %68, %66 ]
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 6
  %74 = load i16, ptr %73, align 2
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %136, label %76

76:                                               ; preds = %72, %69
  %77 = getelementptr %struct.dwc2_hcd_urb, ptr %6, i32 0, i32 14, i32 %38, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %78, %70
  store i32 %79, ptr %77, align 4
  %80 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 5
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %100, label %83

83:                                               ; preds = %76
  %84 = load ptr, ptr %0, align 8
  %85 = load ptr, ptr %17, align 4
  %86 = getelementptr inbounds %struct.dwc2_qh, ptr %85, i32 0, i32 22
  %87 = load i32, ptr %86, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %84, i32 noundef %87, i32 noundef 1024, i32 noundef 2, i32 noundef 0) #5
  %88 = load ptr, ptr %5, align 4
  %89 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %88, i32 0, i32 2
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 4
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %88, i32 0, i32 3
  %94 = load i32, ptr %93, align 4
  %95 = sub i32 %92, %94
  %96 = getelementptr i8, ptr %90, i32 %95
  %97 = load ptr, ptr %17, align 4
  %98 = getelementptr inbounds %struct.dwc2_qh, ptr %97, i32 0, i32 21
  %99 = load ptr, ptr %98, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %96, ptr align 1 %99, i32 %70, i1 false) #5
  br label %100

100:                                              ; preds = %83, %76
  %101 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 6
  %102 = load i16, ptr %101, align 2
  %103 = trunc i32 %70 to i16
  %104 = add i16 %102, %103
  store i16 %104, ptr %101, align 2
  %105 = load ptr, ptr %41, align 4
  %106 = getelementptr i8, ptr %105, i32 %40
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %108 = load i8, ptr %45, align 8, !range !10
  %109 = icmp eq i8 %108, 0
  %110 = shl i32 %107, 24
  %111 = select i1 %109, i32 %107, i32 %110
  %112 = load i32, ptr %77, align 4
  %113 = getelementptr %struct.dwc2_hcd_urb, ptr %6, i32 0, i32 14, i32 %38, i32 1
  %114 = load i32, ptr %113, align 4
  %115 = icmp uge i32 %112, %114
  %116 = and i32 %111, 1610612736
  %117 = icmp eq i32 %116, 0
  %118 = select i1 %115, i1 true, i1 %117
  br i1 %118, label %121, label %119

119:                                              ; preds = %100
  %120 = load i16, ptr %36, align 4
  br label %125

121:                                              ; preds = %100
  %122 = getelementptr %struct.dwc2_hcd_urb, ptr %6, i32 0, i32 14, i32 %38, i32 3
  store i32 0, ptr %122, align 4
  %123 = load i16, ptr %36, align 4
  %124 = add i16 %123, 1
  store i16 %124, ptr %36, align 4
  store i8 0, ptr %32, align 2
  store i16 0, ptr %101, align 2
  br label %125

125:                                              ; preds = %121, %119
  %126 = phi i16 [ %120, %119 ], [ %124, %121 ]
  %127 = zext i16 %126 to i32
  %128 = load ptr, ptr %5, align 4
  %129 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %128, i32 0, i32 10
  %130 = load i32, ptr %129, align 4
  %131 = icmp eq i32 %130, %127
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  tail call void @dwc2_host_complete(ptr noundef %0, ptr noundef %3, i32 noundef 0) #5
  tail call fastcc void @dwc2_release_channel(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef 2) #5
  br label %371

133:                                              ; preds = %125
  tail call fastcc void @dwc2_release_channel(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef 0) #5
  br label %371

134:                                              ; preds = %27, %22
  %135 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 3
  br label %136

136:                                              ; preds = %134, %72
  %137 = phi ptr [ %135, %134 ], [ %32, %72 ]
  store i8 0, ptr %137, align 2
  br label %138

138:                                              ; preds = %136, %31, %16
  switch i8 %10, label %371 [
    i8 0, label %139
    i8 2, label %175
    i8 3, label %234
    i8 1, label %295
  ]

139:                                              ; preds = %138
  %140 = load i32, ptr %3, align 4
  switch i32 %140, label %158 [
    i32 0, label %141
    i32 1, label %146
    i32 2, label %151
  ]

141:                                              ; preds = %139
  %142 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %6, i32 0, i32 6
  %143 = load i32, ptr %142, align 4
  %144 = icmp eq i32 %143, 0
  %145 = select i1 %144, i32 2, i32 1
  store i32 %145, ptr %3, align 4
  br label %158

146:                                              ; preds = %139
  %147 = tail call fastcc i32 @dwc2_update_urb_state(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %6, ptr noundef %3)
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %146
  store i32 2, ptr %3, align 4
  br label %158

150:                                              ; preds = %146
  tail call void @dwc2_hcd_save_data_toggle(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  br label %158

151:                                              ; preds = %139
  %152 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %6, i32 0, i32 8
  %153 = load i32, ptr %152, align 4
  %154 = icmp eq i32 %153, -115
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  store i32 0, ptr %152, align 4
  br label %156

156:                                              ; preds = %155, %151
  %157 = phi i32 [ 0, %155 ], [ %153, %151 ]
  tail call void @dwc2_host_complete(ptr noundef %0, ptr noundef %3, i32 noundef %157) #5
  br label %158

158:                                              ; preds = %156, %150, %149, %141, %139
  %159 = phi i32 [ 1, %139 ], [ 2, %156 ], [ 1, %141 ], [ 1, %150 ], [ 1, %149 ]
  %160 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 10
  store i8 0, ptr %160, align 4
  %161 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 23
  %162 = load i32, ptr %161, align 4
  %163 = and i32 %162, 64
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %158
  %166 = load ptr, ptr %17, align 4
  %167 = getelementptr inbounds %struct.dwc2_qh, ptr %166, i32 0, i32 7
  store i8 1, ptr %167, align 4
  br label %168

168:                                              ; preds = %165, %158
  %169 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %170 = load i24, ptr %169, align 1
  %171 = and i24 %170, 2048
  %172 = icmp eq i24 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %168
  tail call fastcc void @dwc2_halt_channel(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef %159) #5
  br label %371

174:                                              ; preds = %168
  tail call fastcc void @dwc2_release_channel(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef %159) #5
  br label %371

175:                                              ; preds = %138
  %176 = tail call fastcc i32 @dwc2_update_urb_state(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %6, ptr noundef %3)
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %6, i32 0, i32 8
  %180 = load i32, ptr %179, align 4
  tail call void @dwc2_host_complete(ptr noundef %0, ptr noundef %3, i32 noundef %180) #5
  br label %181

181:                                              ; preds = %178, %175
  %182 = phi i32 [ 2, %178 ], [ 1, %175 ]
  %183 = shl i32 %2, 5
  %184 = add i32 %183, 1296
  %185 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %186 = load ptr, ptr %185, align 4
  %187 = getelementptr i8, ptr %186, i32 %184
  %188 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %187) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %189 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %190 = load i8, ptr %189, align 8, !range !10
  %191 = icmp eq i8 %190, 0
  %192 = shl i32 %188, 24
  %193 = select i1 %191, i32 %188, i32 %192
  %194 = lshr i32 %193, 29
  %195 = and i32 %194, 3
  %196 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %197 = load i24, ptr %196, align 1
  %198 = and i24 %197, 196608
  %199 = icmp eq i24 %198, 0
  br i1 %199, label %211, label %200

200:                                              ; preds = %181
  %201 = icmp eq ptr %1, null
  br i1 %201, label %205, label %202

202:                                              ; preds = %200
  %203 = load ptr, ptr %17, align 4
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %206, !prof !11

205:                                              ; preds = %202, %200
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 549, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %219

206:                                              ; preds = %202
  %207 = icmp eq i32 %195, 0
  %208 = getelementptr inbounds %struct.dwc2_qh, ptr %203, i32 0, i32 6
  br i1 %207, label %209, label %210

209:                                              ; preds = %206
  store i8 0, ptr %208, align 1
  br label %219

210:                                              ; preds = %206
  store i8 2, ptr %208, align 1
  br label %219

211:                                              ; preds = %181
  %212 = icmp eq ptr %3, null
  br i1 %212, label %213, label %214, !prof !11

213:                                              ; preds = %211
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 558, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %219

214:                                              ; preds = %211
  %215 = icmp eq i32 %195, 0
  %216 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 2
  br i1 %215, label %217, label %218

217:                                              ; preds = %214
  store i8 0, ptr %216, align 1
  br label %219

218:                                              ; preds = %214
  store i8 2, ptr %216, align 1
  br label %219

219:                                              ; preds = %218, %217, %213, %210, %209, %205
  %220 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 10
  store i8 0, ptr %220, align 4
  %221 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 23
  %222 = load i32, ptr %221, align 4
  %223 = and i32 %222, 64
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %219
  %226 = load ptr, ptr %17, align 4
  %227 = getelementptr inbounds %struct.dwc2_qh, ptr %226, i32 0, i32 7
  store i8 1, ptr %227, align 4
  br label %228

228:                                              ; preds = %225, %219
  %229 = load i24, ptr %196, align 1
  %230 = and i24 %229, 2048
  %231 = icmp eq i24 %230, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %228
  tail call fastcc void @dwc2_halt_channel(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef %182) #5
  br label %371

233:                                              ; preds = %228
  tail call fastcc void @dwc2_release_channel(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef %182) #5
  br label %371

234:                                              ; preds = %138
  %235 = tail call fastcc i32 @dwc2_update_urb_state(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %6, ptr noundef %3)
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %234
  %238 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %6, i32 0, i32 8
  %239 = load i32, ptr %238, align 4
  tail call void @dwc2_host_complete(ptr noundef %0, ptr noundef %3, i32 noundef %239) #5
  br label %240

240:                                              ; preds = %237, %234
  %241 = phi i32 [ 2, %237 ], [ 1, %234 ]
  %242 = shl i32 %2, 5
  %243 = add i32 %242, 1296
  %244 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %245 = load ptr, ptr %244, align 4
  %246 = getelementptr i8, ptr %245, i32 %243
  %247 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %246) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %248 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %249 = load i8, ptr %248, align 8, !range !10
  %250 = icmp eq i8 %249, 0
  %251 = shl i32 %247, 24
  %252 = select i1 %250, i32 %247, i32 %251
  %253 = lshr i32 %252, 29
  %254 = and i32 %253, 3
  %255 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %256 = load i24, ptr %255, align 1
  %257 = and i24 %256, 196608
  %258 = icmp eq i24 %257, 0
  br i1 %258, label %270, label %259

259:                                              ; preds = %240
  %260 = icmp eq ptr %1, null
  br i1 %260, label %264, label %261

261:                                              ; preds = %259
  %262 = load ptr, ptr %17, align 4
  %263 = icmp eq ptr %262, null
  br i1 %263, label %264, label %265, !prof !11

264:                                              ; preds = %261, %259
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 549, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %278

265:                                              ; preds = %261
  %266 = icmp eq i32 %254, 0
  %267 = getelementptr inbounds %struct.dwc2_qh, ptr %262, i32 0, i32 6
  br i1 %266, label %268, label %269

268:                                              ; preds = %265
  store i8 0, ptr %267, align 1
  br label %278

269:                                              ; preds = %265
  store i8 2, ptr %267, align 1
  br label %278

270:                                              ; preds = %240
  %271 = icmp eq ptr %3, null
  br i1 %271, label %272, label %273, !prof !11

272:                                              ; preds = %270
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 558, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %278

273:                                              ; preds = %270
  %274 = icmp eq i32 %254, 0
  %275 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 2
  br i1 %274, label %276, label %277

276:                                              ; preds = %273
  store i8 0, ptr %275, align 1
  br label %278

277:                                              ; preds = %273
  store i8 2, ptr %275, align 1
  br label %278

278:                                              ; preds = %277, %276, %272, %269, %268, %264
  %279 = load ptr, ptr %244, align 4
  %280 = getelementptr i8, ptr %279, i32 %243
  %281 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %280) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %282 = load i8, ptr %248, align 8, !range !10
  %283 = icmp eq i8 %282, 0
  %284 = tail call i32 @llvm.bswap.i32(i32 %281) #5
  %285 = select i1 %283, i32 %281, i32 %284
  %286 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 10
  store i8 0, ptr %286, align 4
  %287 = load i24, ptr %255, align 1
  %288 = and i24 %287, 2048
  %289 = icmp eq i24 %288, 0
  %290 = and i32 %285, 536346624
  %291 = icmp eq i32 %290, 0
  %292 = select i1 %289, i1 true, i1 %291
  br i1 %292, label %293, label %294

293:                                              ; preds = %278
  tail call fastcc void @dwc2_release_channel(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef %241) #5
  br label %371

294:                                              ; preds = %278
  tail call fastcc void @dwc2_halt_channel(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef %241) #5
  br label %371

295:                                              ; preds = %138
  %296 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 4
  %297 = load i8, ptr %296, align 1
  %298 = icmp eq i8 %297, 3
  br i1 %298, label %299, label %348

299:                                              ; preds = %295
  %300 = load ptr, ptr %5, align 4
  %301 = icmp eq ptr %300, null
  br i1 %301, label %348, label %302

302:                                              ; preds = %299
  %303 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 5
  %304 = load i16, ptr %303, align 4
  %305 = zext i16 %304 to i32
  %306 = getelementptr %struct.dwc2_hcd_urb, ptr %300, i32 0, i32 14, i32 %305, i32 3
  store i32 0, ptr %306, align 4
  %307 = shl i32 %2, 5
  %308 = add i32 %307, 1296
  %309 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %310 = load ptr, ptr %309, align 4
  %311 = getelementptr i8, ptr %310, i32 %308
  %312 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %311) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %313 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %314 = load i24, ptr %313, align 1
  %315 = and i24 %314, 2048
  %316 = icmp eq i24 %315, 0
  br i1 %316, label %327, label %317

317:                                              ; preds = %302
  %318 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %319 = load i8, ptr %318, align 8, !range !10
  %320 = icmp eq i8 %319, 0
  %321 = tail call i32 @llvm.bswap.i32(i32 %312) #5
  %322 = select i1 %320, i32 %312, i32 %321
  %323 = and i32 %322, 524287
  %324 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 6
  %325 = load i32, ptr %324, align 4
  %326 = sub i32 %325, %323
  br label %338

327:                                              ; preds = %302
  %328 = load ptr, ptr %17, align 4
  %329 = getelementptr inbounds %struct.dwc2_qh, ptr %328, i32 0, i32 8
  %330 = load i8, ptr %329, align 1
  %331 = icmp eq i8 %330, 0
  br i1 %331, label %335, label %332

332:                                              ; preds = %327
  %333 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 9
  %334 = load i32, ptr %333, align 4
  br label %338

335:                                              ; preds = %327
  %336 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 6
  %337 = load i32, ptr %336, align 4
  br label %338

338:                                              ; preds = %335, %332, %317
  %339 = phi i32 [ %326, %317 ], [ %334, %332 ], [ %337, %335 ]
  %340 = getelementptr %struct.dwc2_hcd_urb, ptr %300, i32 0, i32 14, i32 %305, i32 2
  store i32 %339, ptr %340, align 4
  %341 = load i16, ptr %303, align 4
  %342 = add i16 %341, 1
  store i16 %342, ptr %303, align 4
  %343 = zext i16 %342 to i32
  %344 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %300, i32 0, i32 10
  %345 = load i32, ptr %344, align 4
  %346 = icmp eq i32 %345, %343
  br i1 %346, label %347, label %348

347:                                              ; preds = %338
  tail call void @dwc2_host_complete(ptr noundef %0, ptr noundef %3, i32 noundef 0) #5
  br label %348

348:                                              ; preds = %347, %338, %299, %295
  %349 = phi i32 [ 1, %295 ], [ 0, %299 ], [ 2, %347 ], [ 1, %338 ]
  %350 = shl i32 %2, 5
  %351 = add i32 %350, 1296
  %352 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %353 = load ptr, ptr %352, align 4
  %354 = getelementptr i8, ptr %353, i32 %351
  %355 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %354) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %356 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %357 = load i8, ptr %356, align 8, !range !10
  %358 = icmp eq i8 %357, 0
  %359 = tail call i32 @llvm.bswap.i32(i32 %355) #5
  %360 = select i1 %358, i32 %355, i32 %359
  %361 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 10
  store i8 0, ptr %361, align 4
  %362 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %363 = load i24, ptr %362, align 1
  %364 = and i24 %363, 2048
  %365 = icmp eq i24 %364, 0
  %366 = and i32 %360, 536346624
  %367 = icmp eq i32 %366, 0
  %368 = select i1 %365, i1 true, i1 %367
  br i1 %368, label %369, label %370

369:                                              ; preds = %348
  tail call fastcc void @dwc2_release_channel(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef %349) #5
  br label %371

370:                                              ; preds = %348
  tail call fastcc void @dwc2_halt_channel(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef %349) #5
  br label %371

371:                                              ; preds = %370, %369, %294, %293, %233, %232, %174, %173, %138, %133, %132, %14, %4
  %372 = shl i32 %2, 5
  %373 = add i32 %372, 1292
  %374 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %375 = load ptr, ptr %374, align 4
  %376 = getelementptr i8, ptr %375, i32 %373
  %377 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %376) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %378 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %379 = load i8, ptr %378, align 8, !range !10
  %380 = icmp eq i8 %379, 0
  %381 = tail call i32 @llvm.bswap.i32(i32 %377) #5
  %382 = select i1 %380, i32 %377, i32 %381
  %383 = and i32 %382, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %380, label %388, label %384

384:                                              ; preds = %371
  %385 = tail call i32 @llvm.bswap.i32(i32 %383) #5
  %386 = load ptr, ptr %374, align 4
  %387 = getelementptr i8, ptr %386, i32 %373
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %387, i32 %385) #5, !srcloc !16
  br label %391

388:                                              ; preds = %371
  %389 = load ptr, ptr %374, align 4
  %390 = getelementptr i8, ptr %389, i32 %373
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %390, i32 %383) #5, !srcloc !16
  br label %391

391:                                              ; preds = %388, %384, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_hc_ahberr_intr(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = shl i32 %2, 5
  br label %153

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 19
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.usb_bus, ptr %12, i32 0, i32 11
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 24
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %50, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.dwc2_qh, ptr %16, i32 0, i32 5
  %20 = load i8, ptr %19, align 2
  %21 = icmp eq i8 %20, 3
  br i1 %21, label %50, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %6, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %50, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %50, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.usb_device, ptr %27, i32 0, i32 8
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %50, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %31, align 4
  %35 = icmp eq ptr %34, %14
  br i1 %35, label %50, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %6, i32 0, i32 8
  %38 = load i32, ptr %37, align 4
  switch i32 %38, label %39 [
    i32 -32, label %50
    i32 -121, label %50
  ]

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.dwc2_qh, ptr %16, i32 0, i32 34
  %41 = load i8, ptr %40, align 8
  %42 = or i8 %41, 1
  store i8 %42, ptr %40, align 8
  %43 = tail call i32 @usb_hub_clear_tt_buffer(ptr noundef nonnull %23) #5
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = load ptr, ptr %15, align 4
  %47 = getelementptr inbounds %struct.dwc2_qh, ptr %46, i32 0, i32 34
  %48 = load i8, ptr %47, align 8
  %49 = and i8 %48, -2
  store i8 %49, ptr %47, align 8
  br label %50

50:                                               ; preds = %45, %39, %36, %36, %33, %29, %25, %22, %18, %10
  %51 = shl i32 %2, 5
  %52 = add i32 %51, 1280
  %53 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %54, i32 %52
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %57 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %58 = load i8, ptr %57, align 8, !range !10
  %59 = icmp eq i8 %58, 0
  %60 = tail call i32 @llvm.bswap.i32(i32 %56) #5
  %61 = select i1 %59, i32 %56, i32 %60
  %62 = add i32 %51, 1284
  %63 = load ptr, ptr %53, align 4
  %64 = getelementptr i8, ptr %63, i32 %62
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %66 = load i8, ptr %57, align 8, !range !10
  %67 = icmp eq i8 %66, 0
  %68 = tail call i32 @llvm.bswap.i32(i32 %65) #5
  %69 = select i1 %67, i32 %65, i32 %68
  %70 = add i32 %51, 1296
  %71 = load ptr, ptr %53, align 4
  %72 = getelementptr i8, ptr %71, i32 %70
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %74 = load i8, ptr %57, align 8, !range !10
  %75 = icmp eq i8 %74, 0
  %76 = tail call i32 @llvm.bswap.i32(i32 %73) #5
  %77 = select i1 %75, i32 %73, i32 %76
  %78 = add i32 %51, 1300
  %79 = load ptr, ptr %53, align 4
  %80 = getelementptr i8, ptr %79, i32 %78
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %82 = load i8, ptr %57, align 8, !range !10
  %83 = icmp eq i8 %82, 0
  %84 = tail call i32 @llvm.bswap.i32(i32 %81) #5
  %85 = select i1 %83, i32 %81, i32 %84
  %86 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.13, i32 noundef %2) #6
  %87 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.14, i32 noundef %61, i32 noundef %69) #6
  %88 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.15, i32 noundef %77, i32 noundef %85) #6
  %89 = load ptr, ptr %0, align 8
  %90 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %6, i32 0, i32 13
  %91 = load i8, ptr %90, align 2
  %92 = zext i8 %91 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.16, i32 noundef %92) #6
  %93 = load ptr, ptr %0, align 8
  %94 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %6, i32 0, i32 13, i32 1
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i32
  %97 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %6, i32 0, i32 13, i32 3
  %98 = load i8, ptr %97, align 1
  %99 = icmp eq i8 %98, -128
  %100 = select i1 %99, ptr @.str.18, ptr @.str.19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.17, i32 noundef %96, ptr noundef nonnull %100) #6
  %101 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %6, i32 0, i32 13, i32 2
  %102 = load i8, ptr %101, align 2
  %103 = icmp ult i8 %102, 4
  br i1 %103, label %104, label %108

104:                                              ; preds = %50
  %105 = sext i8 %102 to i32
  %106 = getelementptr inbounds [4 x ptr], ptr @switch.table.dwc2_hc_ahberr_intr, i32 0, i32 %105
  %107 = load ptr, ptr %106, align 4
  br label %108

108:                                              ; preds = %104, %50
  %109 = phi ptr [ %107, %104 ], [ @.str.24, %50 ]
  %110 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.25, ptr noundef nonnull %109) #6
  %111 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %112 = load i24, ptr %111, align 1
  %113 = lshr i24 %112, 12
  %114 = and i24 %113, 15
  %115 = zext i24 %114 to i32
  %116 = add nsw i32 %115, -1
  %117 = icmp ult i32 %116, 3
  br i1 %117, label %118, label %121

118:                                              ; preds = %108
  %119 = getelementptr inbounds [3 x ptr], ptr @switch.table.dwc2_hc_ahberr_intr.37, i32 0, i32 %116
  %120 = load ptr, ptr %119, align 4
  br label %121

121:                                              ; preds = %118, %108
  %122 = phi ptr [ %120, %118 ], [ @.str.24, %108 ]
  %123 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.29, ptr noundef nonnull %122) #6
  %124 = load ptr, ptr %0, align 8
  %125 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %6, i32 0, i32 13, i32 4
  %126 = load i16, ptr %125, align 2
  %127 = zext i16 %126 to i32
  %128 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %6, i32 0, i32 13, i32 5
  %129 = load i16, ptr %128, align 2
  %130 = zext i16 %129 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.30, i32 noundef %127, i32 noundef %130) #6
  %131 = load ptr, ptr %0, align 8
  %132 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %6, i32 0, i32 6
  %133 = load i32, ptr %132, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.31, i32 noundef %133) #6
  %134 = load ptr, ptr %0, align 8
  %135 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %6, i32 0, i32 2
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %6, i32 0, i32 3
  %138 = load i32, ptr %137, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %134, ptr noundef nonnull @.str.32, ptr noundef %136, i32 noundef %138) #6
  %139 = load ptr, ptr %0, align 8
  %140 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %6, i32 0, i32 4
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %6, i32 0, i32 5
  %143 = load i32, ptr %142, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %139, ptr noundef nonnull @.str.33, ptr noundef %141, i32 noundef %143) #6
  %144 = load ptr, ptr %0, align 8
  %145 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %6, i32 0, i32 12
  %146 = load i16, ptr %145, align 4
  %147 = zext i16 %146 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %144, ptr noundef nonnull @.str.34, i32 noundef %147) #6
  %148 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 32
  %149 = load i8, ptr %148, align 1, !range !10
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %121
  tail call void @dwc2_hcd_complete_xfer_ddma(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 11) #5
  br label %155

152:                                              ; preds = %121
  tail call void @dwc2_host_complete(ptr noundef %0, ptr noundef %3, i32 noundef -5) #5
  br label %153

153:                                              ; preds = %152, %8
  %154 = phi i32 [ %9, %8 ], [ %51, %152 ]
  tail call void @dwc2_hc_halt(ptr noundef %0, ptr noundef %1, i32 noundef 11) #5
  br label %155

155:                                              ; preds = %153, %151
  %156 = phi i32 [ %154, %153 ], [ %51, %151 ]
  %157 = add i32 %156, 1292
  %158 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %159 = load ptr, ptr %158, align 4
  %160 = getelementptr i8, ptr %159, i32 %157
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %160) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %162 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %163 = load i8, ptr %162, align 8, !range !10
  %164 = icmp eq i8 %163, 0
  %165 = tail call i32 @llvm.bswap.i32(i32 %161) #5
  %166 = select i1 %164, i32 %161, i32 %165
  %167 = and i32 %166, -5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %164, label %172, label %168

168:                                              ; preds = %155
  %169 = tail call i32 @llvm.bswap.i32(i32 %167) #5
  %170 = load ptr, ptr %158, align 4
  %171 = getelementptr i8, ptr %170, i32 %157
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %171, i32 %169) #5, !srcloc !16
  br label %175

172:                                              ; preds = %155
  %173 = load ptr, ptr %158, align 4
  %174 = getelementptr i8, ptr %173, i32 %157
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 %167) #5, !srcloc !16
  br label %175

175:                                              ; preds = %172, %168
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_hc_stall_intr(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 32
  %8 = load i8, ptr %7, align 1, !range !10
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  tail call void @dwc2_hcd_complete_xfer_ddma(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 6) #5
  br label %26

11:                                               ; preds = %4
  %12 = icmp eq ptr %6, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %6, i32 0, i32 13, i32 2
  %15 = load i8, ptr %14, align 2
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void @dwc2_host_complete(ptr noundef %0, ptr noundef %3, i32 noundef -32) #5
  br label %25

18:                                               ; preds = %13
  %19 = and i8 %15, -2
  %20 = icmp eq i8 %19, 2
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  tail call void @dwc2_host_complete(ptr noundef %0, ptr noundef %3, i32 noundef -32) #5
  %22 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 24
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.dwc2_qh, ptr %23, i32 0, i32 6
  store i8 0, ptr %24, align 1
  br label %25

25:                                               ; preds = %21, %18, %17, %11
  tail call fastcc void @dwc2_halt_channel(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef 6)
  br label %26

26:                                               ; preds = %25, %10
  %27 = shl i32 %2, 5
  %28 = add i32 %27, 1292
  %29 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 %28
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %33 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %34 = load i8, ptr %33, align 8, !range !10
  %35 = icmp eq i8 %34, 0
  %36 = tail call i32 @llvm.bswap.i32(i32 %32) #5
  %37 = select i1 %35, i32 %32, i32 %36
  %38 = and i32 %37, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %35, label %43, label %39

39:                                               ; preds = %26
  %40 = tail call i32 @llvm.bswap.i32(i32 %38) #5
  %41 = load ptr, ptr %29, align 4
  %42 = getelementptr i8, ptr %41, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #5, !srcloc !16
  br label %46

43:                                               ; preds = %26
  %44 = load ptr, ptr %29, align 4
  %45 = getelementptr i8, ptr %44, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %38) #5, !srcloc !16
  br label %46

46:                                               ; preds = %43, %39
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_hc_nak_intr(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %98, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %98, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 14
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %44, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 15
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 10
  store i8 0, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 3
  store i8 0, ptr %21, align 2
  %22 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 13
  %23 = load i16, ptr %22, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %22, align 4
  %25 = icmp ugt i16 %24, 2
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %28 = load i24, ptr %27, align 1
  %29 = and i24 %28, 196608
  %30 = icmp eq i24 %29, 0
  %31 = lshr i24 %28, 8
  %32 = trunc i24 %31 to i8
  %33 = and i8 %32, 8
  %34 = xor i8 %33, 8
  %35 = select i1 %30, i8 %34, i8 8
  br label %36

36:                                               ; preds = %26, %20
  %37 = phi i8 [ 0, %20 ], [ %35, %26 ]
  %38 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 15
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.dwc2_qh, ptr %39, i32 0, i32 34
  %41 = load i8, ptr %40, align 8
  %42 = and i8 %41, -9
  %43 = or i8 %42, %37
  store i8 %43, ptr %40, align 8
  tail call fastcc void @dwc2_halt_channel(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 4)
  br label %78

44:                                               ; preds = %10
  %45 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %8, i32 0, i32 13, i32 2
  %46 = load i8, ptr %45, align 2
  switch i8 %46, label %78 [
    i8 0, label %47
    i8 2, label %47
    i8 3, label %74
    i8 1, label %76
  ]

47:                                               ; preds = %44, %44
  %48 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 31
  %49 = load i8, ptr %48, align 2, !range !10
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %53 = load i24, ptr %52, align 1
  %54 = and i24 %53, 2048
  %55 = icmp eq i24 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 10
  store i8 0, ptr %57, align 4
  br label %78

58:                                               ; preds = %51, %47
  %59 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 10
  store i8 0, ptr %59, align 4
  %60 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 24
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.dwc2_qh, ptr %61, i32 0, i32 7
  %63 = load i8, ptr %62, align 4
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  tail call fastcc void @dwc2_update_urb_state_abn(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %8, ptr noundef nonnull %3, i32 noundef 4)
  tail call void @dwc2_hcd_save_data_toggle(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3)
  %66 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %67 = load i24, ptr %66, align 1
  %68 = and i24 %67, 61440
  %69 = icmp eq i24 %68, 12288
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load ptr, ptr %60, align 4
  %72 = getelementptr inbounds %struct.dwc2_qh, ptr %71, i32 0, i32 7
  store i8 1, ptr %72, align 4
  br label %73

73:                                               ; preds = %70, %65, %58
  tail call fastcc void @dwc2_halt_channel(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 4)
  br label %78

74:                                               ; preds = %44
  %75 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 10
  store i8 0, ptr %75, align 4
  tail call fastcc void @dwc2_halt_channel(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 4)
  br label %78

76:                                               ; preds = %44
  %77 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.35) #6
  br label %78

78:                                               ; preds = %76, %74, %73, %56, %44, %36
  %79 = shl i32 %2, 5
  %80 = add i32 %79, 1292
  %81 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr i8, ptr %82, i32 %80
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %85 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %86 = load i8, ptr %85, align 8, !range !10
  %87 = icmp eq i8 %86, 0
  %88 = tail call i32 @llvm.bswap.i32(i32 %84) #5
  %89 = select i1 %87, i32 %84, i32 %88
  %90 = and i32 %89, -17
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %87, label %95, label %91

91:                                               ; preds = %78
  %92 = tail call i32 @llvm.bswap.i32(i32 %90) #5
  %93 = load ptr, ptr %81, align 4
  %94 = getelementptr i8, ptr %93, i32 %80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %92) #5, !srcloc !16
  br label %98

95:                                               ; preds = %78
  %96 = load ptr, ptr %81, align 4
  %97 = getelementptr i8, ptr %96, i32 %80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %90) #5, !srcloc !16
  br label %98

98:                                               ; preds = %95, %91, %6, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_hc_ack_intr(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 14
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %52, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %10 = load i24, ptr %9, align 1
  %11 = and i24 %10, 2048
  %12 = icmp eq i24 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 2
  %15 = load i16, ptr %14, align 4
  %16 = and i16 %15, 6144
  %17 = icmp eq i16 %16, 6144
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 9
  store i32 %20, ptr %21, align 4
  %22 = load i24, ptr %9, align 1
  br label %23

23:                                               ; preds = %18, %13, %8
  %24 = phi i24 [ %22, %18 ], [ %10, %13 ], [ %10, %8 ]
  %25 = and i24 %24, 198656
  %26 = icmp eq i24 %25, 65536
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 3
  store i8 1, ptr %28, align 2
  tail call fastcc void @dwc2_halt_channel(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef 3)
  br label %60

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 18
  %31 = load i8, ptr %30, align 1
  switch i8 %31, label %60 [
    i8 0, label %35
    i8 1, label %32
    i8 2, label %35
  ]

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 4
  store i8 3, ptr %33, align 1
  %34 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 6
  store i16 0, ptr %34, align 2
  br label %60

35:                                               ; preds = %29, %29
  %36 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 14
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 5
  %39 = load i16, ptr %38, align 4
  %40 = zext i16 %39 to i32
  %41 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 6
  %42 = load i16, ptr %41, align 2
  %43 = add i16 %42, 188
  store i16 %43, ptr %41, align 2
  %44 = getelementptr %struct.dwc2_hcd_urb, ptr %37, i32 0, i32 14, i32 %40, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = zext i16 %43 to i32
  %47 = sub i32 %45, %46
  %48 = icmp ult i32 %47, 189
  %49 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 4
  br i1 %48, label %50, label %51

50:                                               ; preds = %35
  store i8 1, ptr %49, align 1
  br label %60

51:                                               ; preds = %35
  store i8 0, ptr %49, align 1
  br label %60

52:                                               ; preds = %4
  %53 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 10
  store i8 0, ptr %53, align 4
  %54 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 24
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.dwc2_qh, ptr %55, i32 0, i32 7
  %57 = load i8, ptr %56, align 4
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  store i8 0, ptr %56, align 4
  tail call fastcc void @dwc2_halt_channel(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef 3)
  br label %60

60:                                               ; preds = %59, %52, %51, %50, %32, %29, %27
  %61 = shl i32 %2, 5
  %62 = add i32 %61, 1292
  %63 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %64, i32 %62
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %67 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %68 = load i8, ptr %67, align 8, !range !10
  %69 = icmp eq i8 %68, 0
  %70 = tail call i32 @llvm.bswap.i32(i32 %66) #5
  %71 = select i1 %69, i32 %66, i32 %70
  %72 = and i32 %71, -33
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %69, label %77, label %73

73:                                               ; preds = %60
  %74 = tail call i32 @llvm.bswap.i32(i32 %72) #5
  %75 = load ptr, ptr %63, align 4
  %76 = getelementptr i8, ptr %75, i32 %62
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %74) #5, !srcloc !16
  br label %80

77:                                               ; preds = %60
  %78 = load ptr, ptr %63, align 4
  %79 = getelementptr i8, ptr %78, i32 %62
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %72) #5, !srcloc !16
  br label %80

80:                                               ; preds = %77, %73
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_hc_nyet_intr(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 14
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %81, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 15
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %81, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %14 = load i24, ptr %13, align 1
  %15 = and i24 %14, 198656
  %16 = icmp eq i24 %15, 67584
  br i1 %16, label %17, label %37

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 31
  %19 = load i8, ptr %18, align 2, !range !10
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 3
  store i8 0, ptr %22, align 2
  %23 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 6
  store i16 0, ptr %23, align 2
  %24 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 5
  %25 = load i16, ptr %24, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 14
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %21
  %31 = zext i16 %26 to i32
  %32 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %28, i32 0, i32 10
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, %31
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  tail call void @dwc2_host_complete(ptr noundef %0, ptr noundef %3, i32 noundef 0) #5
  tail call fastcc void @dwc2_release_channel(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef 2)
  br label %157

36:                                               ; preds = %30, %21
  tail call fastcc void @dwc2_release_channel(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef 0)
  br label %157

37:                                               ; preds = %17, %12
  %38 = lshr i24 %14, 16
  %39 = trunc i24 %38 to i2
  switch i2 %39, label %80 [
    i2 -1, label %40
    i2 1, label %40
  ]

40:                                               ; preds = %37, %37
  %41 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 24
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 13
  %44 = load i8, ptr %43, align 2, !range !10
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %70, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.dwc2_qh, ptr %42, i32 0, i32 16
  %48 = load i16, ptr %47, align 2
  %49 = getelementptr inbounds %struct.dwc2_qh, ptr %42, i32 0, i32 17
  %50 = load i16, ptr %49, align 4
  %51 = add i16 %50, %48
  %52 = getelementptr inbounds %struct.dwc2_qh, ptr %42, i32 0, i32 1
  %53 = load i8, ptr %52, align 4
  %54 = icmp eq i8 %53, 1
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.dwc2_qh, ptr %42, i32 0, i32 2
  %57 = load i8, ptr %56, align 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55, %46
  %60 = add i16 %51, 1
  br label %61

61:                                               ; preds = %59, %55
  %62 = phi i16 [ %60, %59 ], [ %51, %55 ]
  %63 = getelementptr inbounds %struct.dwc2_qh, ptr %42, i32 0, i32 15
  %64 = load i16, ptr %63, align 8
  %65 = zext i16 %64 to i32
  %66 = zext i16 %62 to i32
  %67 = sub nsw i32 %65, %66
  %68 = and i32 %67, 8192
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %78, label %80

70:                                               ; preds = %40
  %71 = tail call i32 @dwc2_hcd_get_frame_number(ptr noundef %0) #5
  %72 = trunc i32 %71 to i16
  %73 = getelementptr inbounds %struct.dwc2_qh, ptr %42, i32 0, i32 15
  %74 = load i16, ptr %73, align 8
  %75 = xor i16 %74, %72
  %76 = and i16 %75, 16376
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %70, %61
  %79 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 3
  store i8 0, ptr %79, align 2
  tail call fastcc void @dwc2_halt_channel(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef 7)
  br label %157

80:                                               ; preds = %70, %61, %37
  tail call fastcc void @dwc2_halt_channel(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef 5)
  br label %157

81:                                               ; preds = %8, %4
  %82 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 24
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.dwc2_qh, ptr %83, i32 0, i32 7
  store i8 1, ptr %84, align 4
  %85 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 10
  store i8 0, ptr %85, align 4
  %86 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 14
  %87 = load ptr, ptr %86, align 4
  %88 = shl i32 %2, 5
  %89 = add i32 %88, 1296
  %90 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr i8, ptr %91, i32 %89
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %94 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %95 = load i8, ptr %94, align 8, !range !10
  %96 = icmp eq i8 %95, 0
  %97 = tail call i32 @llvm.bswap.i32(i32 %93) #5
  %98 = select i1 %96, i32 %93, i32 %97
  %99 = lshr i32 %98, 19
  %100 = and i32 %99, 1023
  %101 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 8
  %102 = load i16, ptr %101, align 4
  %103 = zext i16 %102 to i32
  %104 = sub nsw i32 %103, %100
  %105 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 2
  %106 = load i16, ptr %105, align 4
  %107 = and i16 %106, 2047
  %108 = zext i16 %107 to i32
  %109 = mul nsw i32 %104, %108
  %110 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %87, i32 0, i32 7
  %111 = load i32, ptr %110, align 4
  %112 = add i32 %109, %111
  %113 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %87, i32 0, i32 6
  %114 = load i32, ptr %113, align 4
  %115 = icmp ugt i32 %112, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %81
  %117 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %117, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.dwc2_update_urb_state_abn) #6
  %118 = load i32, ptr %113, align 4
  br label %119

119:                                              ; preds = %116, %81
  %120 = phi i32 [ %118, %116 ], [ %112, %81 ]
  store i32 %120, ptr %110, align 4
  %121 = load ptr, ptr %90, align 4
  %122 = getelementptr i8, ptr %121, i32 %89
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %122) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %124 = load ptr, ptr %90, align 4
  %125 = getelementptr i8, ptr %124, i32 %89
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %125) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %127 = load i8, ptr %94, align 8, !range !10
  %128 = icmp eq i8 %127, 0
  %129 = shl i32 %126, 24
  %130 = select i1 %128, i32 %126, i32 %129
  %131 = lshr i32 %130, 29
  %132 = and i32 %131, 3
  %133 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %134 = load i24, ptr %133, align 1
  %135 = and i24 %134, 196608
  %136 = icmp eq i24 %135, 0
  br i1 %136, label %148, label %137

137:                                              ; preds = %119
  %138 = icmp eq ptr %1, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %137
  %140 = load ptr, ptr %82, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %143, !prof !11

142:                                              ; preds = %139, %137
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 549, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %156

143:                                              ; preds = %139
  %144 = icmp eq i32 %132, 0
  %145 = getelementptr inbounds %struct.dwc2_qh, ptr %140, i32 0, i32 6
  br i1 %144, label %146, label %147

146:                                              ; preds = %143
  store i8 0, ptr %145, align 1
  br label %156

147:                                              ; preds = %143
  store i8 2, ptr %145, align 1
  br label %156

148:                                              ; preds = %119
  %149 = icmp eq ptr %3, null
  br i1 %149, label %150, label %151, !prof !11

150:                                              ; preds = %148
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 558, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %156

151:                                              ; preds = %148
  %152 = icmp eq i32 %132, 0
  %153 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 2
  br i1 %152, label %154, label %155

154:                                              ; preds = %151
  store i8 0, ptr %153, align 1
  br label %156

155:                                              ; preds = %151
  store i8 2, ptr %153, align 1
  br label %156

156:                                              ; preds = %155, %154, %150, %147, %146, %142
  tail call fastcc void @dwc2_halt_channel(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef 5)
  br label %157

157:                                              ; preds = %156, %80, %78, %36, %35
  %158 = shl i32 %2, 5
  %159 = add i32 %158, 1292
  %160 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr i8, ptr %161, i32 %159
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %162) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %164 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %165 = load i8, ptr %164, align 8, !range !10
  %166 = icmp eq i8 %165, 0
  %167 = tail call i32 @llvm.bswap.i32(i32 %163) #5
  %168 = select i1 %166, i32 %163, i32 %167
  %169 = and i32 %168, -65
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %166, label %174, label %170

170:                                              ; preds = %157
  %171 = tail call i32 @llvm.bswap.i32(i32 %169) #5
  %172 = load ptr, ptr %160, align 4
  %173 = getelementptr i8, ptr %172, i32 %159
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 %171) #5, !srcloc !16
  br label %177

174:                                              ; preds = %157
  %175 = load ptr, ptr %160, align 4
  %176 = getelementptr i8, ptr %175, i32 %159
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %176, i32 %169) #5, !srcloc !16
  br label %177

177:                                              ; preds = %174, %170
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_hc_xacterr_intr(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 19
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.usb_bus, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 24
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %48, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.dwc2_qh, ptr %10, i32 0, i32 5
  %14 = load i8, ptr %13, align 2
  %15 = icmp eq i8 %14, 3
  br i1 %15, label %48, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 14
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %48, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %48, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %48, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %48, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %29, align 4
  %33 = icmp eq ptr %32, %8
  br i1 %33, label %48, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %18, i32 0, i32 8
  %36 = load i32, ptr %35, align 4
  switch i32 %36, label %37 [
    i32 -32, label %48
    i32 -121, label %48
  ]

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.dwc2_qh, ptr %10, i32 0, i32 34
  %39 = load i8, ptr %38, align 8
  %40 = or i8 %39, 1
  store i8 %40, ptr %38, align 8
  %41 = tail call i32 @usb_hub_clear_tt_buffer(ptr noundef nonnull %21) #5
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %37
  %44 = load ptr, ptr %9, align 4
  %45 = getelementptr inbounds %struct.dwc2_qh, ptr %44, i32 0, i32 34
  %46 = load i8, ptr %45, align 8
  %47 = and i8 %46, -2
  store i8 %47, ptr %45, align 8
  br label %48

48:                                               ; preds = %43, %37, %34, %34, %31, %27, %23, %20, %16, %12, %4
  %49 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 32
  %50 = load i8, ptr %49, align 1, !range !10
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void @dwc2_hcd_complete_xfer_ddma(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 7) #5
  br label %159

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 14
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %55, i32 0, i32 13, i32 2
  %57 = load i8, ptr %56, align 2
  switch i8 %57, label %159 [
    i8 0, label %58
    i8 2, label %58
    i8 3, label %143
    i8 1, label %157
  ]

58:                                               ; preds = %53, %53
  %59 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 10
  %60 = load i8, ptr %59, align 4
  %61 = add i8 %60, 1
  store i8 %61, ptr %59, align 4
  %62 = load ptr, ptr %9, align 4
  %63 = getelementptr inbounds %struct.dwc2_qh, ptr %62, i32 0, i32 7
  %64 = load i8, ptr %63, align 4
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %142

66:                                               ; preds = %58
  %67 = shl i32 %2, 5
  %68 = add i32 %67, 1296
  %69 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i8, ptr %70, i32 %68
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %73 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %74 = load i8, ptr %73, align 8, !range !10
  %75 = icmp eq i8 %74, 0
  %76 = tail call i32 @llvm.bswap.i32(i32 %72) #5
  %77 = select i1 %75, i32 %72, i32 %76
  %78 = lshr i32 %77, 19
  %79 = and i32 %78, 1023
  %80 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 8
  %81 = load i16, ptr %80, align 4
  %82 = zext i16 %81 to i32
  %83 = sub nsw i32 %82, %79
  %84 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 2
  %85 = load i16, ptr %84, align 4
  %86 = and i16 %85, 2047
  %87 = zext i16 %86 to i32
  %88 = mul nsw i32 %83, %87
  %89 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %55, i32 0, i32 7
  %90 = load i32, ptr %89, align 4
  %91 = add i32 %88, %90
  %92 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %55, i32 0, i32 6
  %93 = load i32, ptr %92, align 4
  %94 = icmp ugt i32 %91, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %66
  %96 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %96, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.dwc2_update_urb_state_abn) #6
  %97 = load i32, ptr %92, align 4
  br label %98

98:                                               ; preds = %95, %66
  %99 = phi i32 [ %97, %95 ], [ %91, %66 ]
  store i32 %99, ptr %89, align 4
  %100 = load ptr, ptr %69, align 4
  %101 = getelementptr i8, ptr %100, i32 %68
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %103 = load ptr, ptr %69, align 4
  %104 = getelementptr i8, ptr %103, i32 %68
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %106 = load i8, ptr %73, align 8, !range !10
  %107 = icmp eq i8 %106, 0
  %108 = shl i32 %105, 24
  %109 = select i1 %107, i32 %105, i32 %108
  %110 = lshr i32 %109, 29
  %111 = and i32 %110, 3
  %112 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %113 = load i24, ptr %112, align 1
  %114 = and i24 %113, 196608
  %115 = icmp eq i24 %114, 0
  br i1 %115, label %127, label %116

116:                                              ; preds = %98
  %117 = icmp eq ptr %1, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %116
  %119 = load ptr, ptr %9, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %122, !prof !11

121:                                              ; preds = %118, %116
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 549, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %135

122:                                              ; preds = %118
  %123 = icmp eq i32 %111, 0
  %124 = getelementptr inbounds %struct.dwc2_qh, ptr %119, i32 0, i32 6
  br i1 %123, label %125, label %126

125:                                              ; preds = %122
  store i8 0, ptr %124, align 1
  br label %135

126:                                              ; preds = %122
  store i8 2, ptr %124, align 1
  br label %135

127:                                              ; preds = %98
  %128 = icmp eq ptr %3, null
  br i1 %128, label %129, label %130, !prof !11

129:                                              ; preds = %127
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 558, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %135

130:                                              ; preds = %127
  %131 = icmp eq i32 %111, 0
  %132 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 2
  br i1 %131, label %133, label %134

133:                                              ; preds = %130
  store i8 0, ptr %132, align 1
  br label %135

134:                                              ; preds = %130
  store i8 2, ptr %132, align 1
  br label %135

135:                                              ; preds = %134, %133, %129, %126, %125, %121
  %136 = load i24, ptr %112, align 1
  %137 = and i24 %136, 63488
  %138 = icmp eq i24 %137, 12288
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load ptr, ptr %9, align 4
  %141 = getelementptr inbounds %struct.dwc2_qh, ptr %140, i32 0, i32 7
  store i8 1, ptr %141, align 4
  br label %142

142:                                              ; preds = %139, %135, %58
  tail call fastcc void @dwc2_halt_channel(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef 7)
  br label %159

143:                                              ; preds = %53
  %144 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 10
  %145 = load i8, ptr %144, align 4
  %146 = add i8 %145, 1
  store i8 %146, ptr %144, align 4
  %147 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 14
  %148 = load i8, ptr %147, align 1
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %156, label %150

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 15
  %152 = load i8, ptr %151, align 4
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 3
  store i8 0, ptr %155, align 2
  br label %156

156:                                              ; preds = %154, %150, %143
  tail call fastcc void @dwc2_halt_channel(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef 7)
  br label %159

157:                                              ; preds = %53
  %158 = tail call fastcc i32 @dwc2_update_isoc_urb_state(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef 7), !range !18
  tail call fastcc void @dwc2_halt_channel(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef %158)
  br label %159

159:                                              ; preds = %157, %156, %142, %53, %52
  %160 = shl i32 %2, 5
  %161 = add i32 %160, 1292
  %162 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr i8, ptr %163, i32 %161
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %164) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %166 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %167 = load i8, ptr %166, align 8, !range !10
  %168 = icmp eq i8 %167, 0
  %169 = tail call i32 @llvm.bswap.i32(i32 %165) #5
  %170 = select i1 %168, i32 %165, i32 %169
  %171 = and i32 %170, -129
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %168, label %176, label %172

172:                                              ; preds = %159
  %173 = tail call i32 @llvm.bswap.i32(i32 %171) #5
  %174 = load ptr, ptr %162, align 4
  %175 = getelementptr i8, ptr %174, i32 %161
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %175, i32 %173) #5, !srcloc !16
  br label %179

176:                                              ; preds = %159
  %177 = load ptr, ptr %162, align 4
  %178 = getelementptr i8, ptr %177, i32 %161
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %178, i32 %171) #5, !srcloc !16
  br label %179

179:                                              ; preds = %176, %172
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_hc_babble_intr(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 19
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.usb_bus, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 24
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %48, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.dwc2_qh, ptr %10, i32 0, i32 5
  %14 = load i8, ptr %13, align 2
  %15 = icmp eq i8 %14, 3
  br i1 %15, label %48, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 14
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %48, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %48, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %48, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %48, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %29, align 4
  %33 = icmp eq ptr %32, %8
  br i1 %33, label %48, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %18, i32 0, i32 8
  %36 = load i32, ptr %35, align 4
  switch i32 %36, label %37 [
    i32 -32, label %48
    i32 -121, label %48
  ]

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.dwc2_qh, ptr %10, i32 0, i32 34
  %39 = load i8, ptr %38, align 8
  %40 = or i8 %39, 1
  store i8 %40, ptr %38, align 8
  %41 = tail call i32 @usb_hub_clear_tt_buffer(ptr noundef nonnull %21) #5
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %37
  %44 = load ptr, ptr %9, align 4
  %45 = getelementptr inbounds %struct.dwc2_qh, ptr %44, i32 0, i32 34
  %46 = load i8, ptr %45, align 8
  %47 = and i8 %46, -2
  store i8 %47, ptr %45, align 8
  br label %48

48:                                               ; preds = %43, %37, %34, %34, %31, %27, %23, %20, %16, %12, %4
  %49 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 32
  %50 = load i8, ptr %49, align 1, !range !10
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void @dwc2_hcd_complete_xfer_ddma(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 9) #5
  br label %80

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %55 = load i24, ptr %54, align 1
  %56 = and i24 %55, 196608
  %57 = icmp eq i24 %56, 65536
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  tail call void @dwc2_host_complete(ptr noundef %0, ptr noundef %3, i32 noundef -75) #5
  tail call fastcc void @dwc2_halt_channel(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef 9)
  br label %80

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 14
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %78, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 5
  %65 = load i16, ptr %64, align 4
  %66 = zext i16 %65 to i32
  %67 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %61, i32 0, i32 9
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, 1
  store i32 %69, ptr %67, align 4
  %70 = getelementptr %struct.dwc2_hcd_urb, ptr %61, i32 0, i32 14, i32 %66, i32 3
  store i32 -75, ptr %70, align 4
  %71 = load i16, ptr %64, align 4
  %72 = add i16 %71, 1
  store i16 %72, ptr %64, align 4
  %73 = zext i16 %72 to i32
  %74 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %61, i32 0, i32 10
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, %73
  br i1 %76, label %77, label %78

77:                                               ; preds = %63
  tail call void @dwc2_host_complete(ptr noundef %0, ptr noundef %3, i32 noundef 0) #5
  br label %78

78:                                               ; preds = %77, %63, %59
  %79 = phi i32 [ 0, %59 ], [ 2, %77 ], [ 1, %63 ]
  tail call fastcc void @dwc2_halt_channel(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef %79)
  br label %80

80:                                               ; preds = %78, %58, %52
  %81 = shl i32 %2, 5
  %82 = add i32 %81, 1292
  %83 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr i8, ptr %84, i32 %82
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %87 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %88 = load i8, ptr %87, align 8, !range !10
  %89 = icmp eq i8 %88, 0
  %90 = tail call i32 @llvm.bswap.i32(i32 %86) #5
  %91 = select i1 %89, i32 %86, i32 %90
  %92 = and i32 %91, -257
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %89, label %97, label %93

93:                                               ; preds = %80
  %94 = tail call i32 @llvm.bswap.i32(i32 %92) #5
  %95 = load ptr, ptr %83, align 4
  %96 = getelementptr i8, ptr %95, i32 %82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %94) #5, !srcloc !16
  br label %100

97:                                               ; preds = %80
  %98 = load ptr, ptr %83, align 4
  %99 = getelementptr i8, ptr %98, i32 %82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %92) #5, !srcloc !16
  br label %100

100:                                              ; preds = %97, %93
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_hc_frmovrun_intr(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 19
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.usb_bus, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 24
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %48, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.dwc2_qh, ptr %10, i32 0, i32 5
  %14 = load i8, ptr %13, align 2
  %15 = icmp eq i8 %14, 3
  br i1 %15, label %48, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 14
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %48, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %48, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %48, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %48, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %29, align 4
  %33 = icmp eq ptr %32, %8
  br i1 %33, label %48, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %18, i32 0, i32 8
  %36 = load i32, ptr %35, align 4
  switch i32 %36, label %37 [
    i32 -32, label %48
    i32 -121, label %48
  ]

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.dwc2_qh, ptr %10, i32 0, i32 34
  %39 = load i8, ptr %38, align 8
  %40 = or i8 %39, 1
  store i8 %40, ptr %38, align 8
  %41 = tail call i32 @usb_hub_clear_tt_buffer(ptr noundef nonnull %21) #5
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %37
  %44 = load ptr, ptr %9, align 4
  %45 = getelementptr inbounds %struct.dwc2_qh, ptr %44, i32 0, i32 34
  %46 = load i8, ptr %45, align 8
  %47 = and i8 %46, -2
  store i8 %47, ptr %45, align 8
  br label %48

48:                                               ; preds = %43, %37, %34, %34, %31, %27, %23, %20, %16, %12, %4
  %49 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 14
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %50, i32 0, i32 13, i32 2
  %52 = load i8, ptr %51, align 2
  switch i8 %52, label %78 [
    i8 1, label %53
    i8 3, label %76
  ]

53:                                               ; preds = %48
  %54 = icmp eq ptr %50, null
  br i1 %54, label %76, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 5
  %57 = load i16, ptr %56, align 4
  %58 = zext i16 %57 to i32
  %59 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %50, i32 0, i32 9
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, 1
  store i32 %61, ptr %59, align 4
  %62 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %63 = load i24, ptr %62, align 1
  %64 = and i24 %63, 2048
  %65 = icmp eq i24 %64, 0
  %66 = select i1 %65, i32 -70, i32 -63
  %67 = getelementptr %struct.dwc2_hcd_urb, ptr %50, i32 0, i32 14, i32 %58, i32 3
  store i32 %66, ptr %67, align 4
  %68 = getelementptr %struct.dwc2_hcd_urb, ptr %50, i32 0, i32 14, i32 %58, i32 2
  store i32 0, ptr %68, align 4
  %69 = load i16, ptr %56, align 4
  %70 = add i16 %69, 1
  store i16 %70, ptr %56, align 4
  %71 = zext i16 %70 to i32
  %72 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %50, i32 0, i32 10
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, %71
  br i1 %74, label %75, label %76

75:                                               ; preds = %55
  tail call void @dwc2_host_complete(ptr noundef %0, ptr noundef %3, i32 noundef 0) #5
  br label %76

76:                                               ; preds = %75, %55, %53, %48
  %77 = phi i32 [ 8, %48 ], [ 0, %53 ], [ 2, %75 ], [ 1, %55 ]
  tail call fastcc void @dwc2_halt_channel(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef %77)
  br label %78

78:                                               ; preds = %76, %48
  %79 = shl i32 %2, 5
  %80 = add i32 %79, 1292
  %81 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr i8, ptr %82, i32 %80
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %85 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %86 = load i8, ptr %85, align 8, !range !10
  %87 = icmp eq i8 %86, 0
  %88 = tail call i32 @llvm.bswap.i32(i32 %84) #5
  %89 = select i1 %87, i32 %84, i32 %88
  %90 = and i32 %89, -513
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %87, label %95, label %91

91:                                               ; preds = %78
  %92 = tail call i32 @llvm.bswap.i32(i32 %90) #5
  %93 = load ptr, ptr %81, align 4
  %94 = getelementptr i8, ptr %93, i32 %80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %92) #5, !srcloc !16
  br label %98

95:                                               ; preds = %78
  %96 = load ptr, ptr %81, align 4
  %97 = getelementptr i8, ptr %96, i32 %80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %90) #5, !srcloc !16
  br label %98

98:                                               ; preds = %95, %91
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_hc_datatglerr_intr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %6 = load i24, ptr %5, align 1
  %7 = and i24 %6, 2048
  %8 = icmp eq i24 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 10
  store i8 0, ptr %10, align 4
  br label %13

11:                                               ; preds = %4
  %12 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.36, i32 noundef %2) #6
  br label %13

13:                                               ; preds = %11, %9
  %14 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 19
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.usb_bus, ptr %15, i32 0, i32 11
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 24
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %57, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.dwc2_qh, ptr %19, i32 0, i32 5
  %23 = load i8, ptr %22, align 2
  %24 = icmp eq i8 %23, 3
  br i1 %24, label %57, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 14
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %57, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %27, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %57, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.urb, ptr %30, i32 0, i32 8
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %57, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.usb_device, ptr %34, i32 0, i32 8
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %57, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %38, align 4
  %42 = icmp eq ptr %41, %17
  br i1 %42, label %57, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %27, i32 0, i32 8
  %45 = load i32, ptr %44, align 4
  switch i32 %45, label %46 [
    i32 -32, label %57
    i32 -121, label %57
  ]

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.dwc2_qh, ptr %19, i32 0, i32 34
  %48 = load i8, ptr %47, align 8
  %49 = or i8 %48, 1
  store i8 %49, ptr %47, align 8
  %50 = tail call i32 @usb_hub_clear_tt_buffer(ptr noundef nonnull %30) #5
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %46
  %53 = load ptr, ptr %18, align 4
  %54 = getelementptr inbounds %struct.dwc2_qh, ptr %53, i32 0, i32 34
  %55 = load i8, ptr %54, align 8
  %56 = and i8 %55, -2
  store i8 %56, ptr %54, align 8
  br label %57

57:                                               ; preds = %52, %46, %43, %43, %40, %36, %32, %29, %25, %21, %13
  %58 = shl i32 %2, 5
  %59 = add i32 %58, 1292
  %60 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr i8, ptr %61, i32 %59
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %64 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %65 = load i8, ptr %64, align 8, !range !10
  %66 = icmp eq i8 %65, 0
  %67 = tail call i32 @llvm.bswap.i32(i32 %63) #5
  %68 = select i1 %66, i32 %63, i32 %67
  %69 = and i32 %68, -1025
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %66, label %74, label %70

70:                                               ; preds = %57
  %71 = tail call i32 @llvm.bswap.i32(i32 %69) #5
  %72 = load ptr, ptr %60, align 4
  %73 = getelementptr i8, ptr %72, i32 %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %71) #5, !srcloc !16
  br label %77

74:                                               ; preds = %57
  %75 = load ptr, ptr %60, align 4
  %76 = getelementptr i8, ptr %75, i32 %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %69) #5, !srcloc !16
  br label %77

77:                                               ; preds = %74, %70
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_host_complete(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hc_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hcd_qh_deactivate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwc2_update_urb_state(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = shl i32 %2, 5
  %7 = add i32 %6, 1296
  %8 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 %7
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %12 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %13 = load i24, ptr %12, align 1
  %14 = and i24 %13, 2048
  %15 = icmp eq i24 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %18 = load i8, ptr %17, align 8, !range !10
  %19 = icmp eq i8 %18, 0
  %20 = tail call i32 @llvm.bswap.i32(i32 %11) #5
  %21 = select i1 %19, i32 %11, i32 %20
  %22 = and i32 %21, 524287
  %23 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = sub i32 %24, %22
  %26 = icmp ne i32 %22, 0
  %27 = zext i1 %26 to i32
  br label %40

28:                                               ; preds = %5
  %29 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 24
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.dwc2_qh, ptr %30, i32 0, i32 8
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.dwc2_qtd, ptr %4, i32 0, i32 9
  %36 = load i32, ptr %35, align 4
  br label %40

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  br label %40

40:                                               ; preds = %37, %34, %16
  %41 = phi i32 [ 0, %37 ], [ 0, %34 ], [ %27, %16 ]
  %42 = phi i32 [ %39, %37 ], [ %36, %34 ], [ %25, %16 ]
  %43 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %3, i32 0, i32 7
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, %42
  %46 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %3, i32 0, i32 6
  %47 = load i32, ptr %46, align 4
  %48 = icmp ugt i32 %45, %47
  %49 = sub i32 %47, %44
  %50 = select i1 %48, i32 %49, i32 %42
  %51 = add i32 %50, %44
  store i32 %51, ptr %43, align 4
  %52 = icmp eq i32 %50, 0
  br i1 %52, label %71, label %53

53:                                               ; preds = %40
  %54 = load i24, ptr %12, align 1
  %55 = and i24 %54, 196608
  %56 = icmp eq i24 %55, 131072
  br i1 %56, label %57, label %71

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %3, i32 0, i32 11
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 2
  %61 = icmp eq i32 %60, 0
  %62 = icmp ult i32 %51, %47
  %63 = select i1 %61, i1 true, i1 %62
  br i1 %63, label %71, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 2
  %66 = load i16, ptr %65, align 4
  %67 = and i16 %66, 2047
  %68 = zext i16 %67 to i32
  %69 = urem i32 %47, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %64, %57, %53, %40
  %72 = icmp eq i32 %41, 0
  %73 = icmp ult i32 %51, %47
  %74 = select i1 %72, i1 %73, i1 false
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %3, i32 0, i32 8
  store i32 0, ptr %76, align 4
  br label %77

77:                                               ; preds = %75, %71, %64
  %78 = phi i32 [ 1, %75 ], [ 0, %64 ], [ 0, %71 ]
  %79 = load ptr, ptr %8, align 4
  %80 = getelementptr i8, ptr %79, i32 %7
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwc2_update_isoc_urb_state(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %121, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 5
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  switch i32 %4, label %111 [
    i32 1, label %13
    i32 8, label %50
    i32 9, label %61
    i32 7, label %66
  ]

13:                                               ; preds = %9
  %14 = getelementptr %struct.dwc2_hcd_urb, ptr %7, i32 0, i32 14, i32 %12, i32 3
  store i32 0, ptr %14, align 4
  %15 = shl i32 %2, 5
  %16 = add i32 %15, 1296
  %17 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 %16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %21 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %22 = load i24, ptr %21, align 1
  %23 = and i24 %22, 2048
  %24 = icmp eq i24 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %27 = load i8, ptr %26, align 8, !range !10
  %28 = icmp eq i8 %27, 0
  %29 = tail call i32 @llvm.bswap.i32(i32 %20) #5
  %30 = select i1 %28, i32 %20, i32 %29
  %31 = and i32 %30, 524287
  %32 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = sub i32 %33, %31
  br label %47

35:                                               ; preds = %13
  %36 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 24
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.dwc2_qh, ptr %37, i32 0, i32 8
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 9
  %43 = load i32, ptr %42, align 4
  br label %47

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 6
  %46 = load i32, ptr %45, align 4
  br label %47

47:                                               ; preds = %44, %41, %25
  %48 = phi i32 [ %34, %25 ], [ %43, %41 ], [ %46, %44 ]
  %49 = getelementptr %struct.dwc2_hcd_urb, ptr %7, i32 0, i32 14, i32 %12, i32 2
  store i32 %48, ptr %49, align 4
  br label %113

50:                                               ; preds = %9
  %51 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %7, i32 0, i32 9
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr %51, align 4
  %54 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %55 = load i24, ptr %54, align 1
  %56 = and i24 %55, 2048
  %57 = icmp eq i24 %56, 0
  %58 = select i1 %57, i32 -70, i32 -63
  %59 = getelementptr %struct.dwc2_hcd_urb, ptr %7, i32 0, i32 14, i32 %12, i32 3
  store i32 %58, ptr %59, align 4
  %60 = getelementptr %struct.dwc2_hcd_urb, ptr %7, i32 0, i32 14, i32 %12, i32 2
  store i32 0, ptr %60, align 4
  br label %113

61:                                               ; preds = %9
  %62 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %7, i32 0, i32 9
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr %62, align 4
  %65 = getelementptr %struct.dwc2_hcd_urb, ptr %7, i32 0, i32 14, i32 %12, i32 3
  store i32 -75, ptr %65, align 4
  br label %113

66:                                               ; preds = %9
  %67 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %7, i32 0, i32 9
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, 1
  store i32 %69, ptr %67, align 4
  %70 = getelementptr %struct.dwc2_hcd_urb, ptr %7, i32 0, i32 14, i32 %12, i32 3
  store i32 -71, ptr %70, align 4
  %71 = shl i32 %2, 5
  %72 = add i32 %71, 1296
  %73 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr i8, ptr %74, i32 %72
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %77 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %78 = load i8, ptr %77, align 8, !range !10
  %79 = icmp eq i8 %78, 0
  %80 = tail call i32 @llvm.bswap.i32(i32 %76) #5
  %81 = select i1 %79, i32 %76, i32 %80
  %82 = lshr i32 %81, 19
  %83 = and i32 %82, 1023
  %84 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 8
  %85 = load i16, ptr %84, align 4
  %86 = zext i16 %85 to i32
  %87 = sub nsw i32 %86, %83
  %88 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 2
  %89 = load i16, ptr %88, align 4
  %90 = and i16 %89, 2047
  %91 = zext i16 %90 to i32
  %92 = mul nsw i32 %87, %91
  %93 = getelementptr %struct.dwc2_hcd_urb, ptr %7, i32 0, i32 14, i32 %12, i32 2
  store i32 %92, ptr %93, align 4
  %94 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 24
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.dwc2_qh, ptr %95, i32 0, i32 8
  %97 = load i8, ptr %96, align 1
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %113, label %99

99:                                               ; preds = %66
  %100 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %101 = load i24, ptr %100, align 1
  %102 = and i24 %101, 198656
  %103 = icmp eq i24 %102, 67584
  br i1 %103, label %104, label %113

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 31
  %106 = load i8, ptr %105, align 2, !range !10
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 3
  store i8 0, ptr %109, align 2
  %110 = getelementptr inbounds %struct.dwc2_qtd, ptr %3, i32 0, i32 6
  store i16 0, ptr %110, align 2
  br label %113

111:                                              ; preds = %9
  %112 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.8, i32 noundef %4) #6
  br label %113

113:                                              ; preds = %111, %108, %104, %99, %66, %61, %50, %47
  %114 = load i16, ptr %10, align 4
  %115 = add i16 %114, 1
  store i16 %115, ptr %10, align 4
  %116 = zext i16 %115 to i32
  %117 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %7, i32 0, i32 10
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %118, %116
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  tail call void @dwc2_host_complete(ptr noundef %0, ptr noundef %3, i32 noundef 0) #5
  br label %121

121:                                              ; preds = %120, %113, %5
  %122 = phi i32 [ 0, %5 ], [ 2, %120 ], [ 1, %113 ]
  ret i32 %122
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_halt_channel(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 31
  %6 = load i8, ptr %5, align 2, !range !10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call fastcc void @dwc2_release_channel(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  br label %64

9:                                                ; preds = %4
  tail call void @dwc2_hc_halt(ptr noundef %0, ptr noundef %1, i32 noundef %3) #5
  %10 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 12
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %64, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %15 = load i24, ptr %14, align 1
  %16 = lshr i24 %15, 16
  %17 = trunc i24 %16 to i2
  switch i2 %17, label %36 [
    i2 0, label %18
    i2 -2, label %18
  ]

18:                                               ; preds = %13, %13
  %19 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 24
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %23 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %24 = load i8, ptr %23, align 8, !range !10
  %25 = icmp eq i8 %24, 0
  %26 = tail call i32 @llvm.bswap.i32(i32 %22) #5
  %27 = select i1 %25, i32 %22, i32 %26
  %28 = or i32 %27, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %25, label %33, label %29

29:                                               ; preds = %18
  %30 = tail call i32 @llvm.bswap.i32(i32 %28) #5
  %31 = load ptr, ptr %19, align 4
  %32 = getelementptr i8, ptr %31, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #5, !srcloc !16
  br label %64

33:                                               ; preds = %18
  %34 = load ptr, ptr %19, align 4
  %35 = getelementptr i8, ptr %34, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %28) #5, !srcloc !16
  br label %64

36:                                               ; preds = %13
  %37 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 24
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.dwc2_qh, ptr %38, i32 0, i32 25
  %40 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 42
  %41 = getelementptr inbounds %struct.dwc2_qh, ptr %38, i32 0, i32 25, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %39, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %42, ptr %44, align 4
  store volatile ptr %43, ptr %42, align 4
  %45 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 42, i32 1
  %46 = load ptr, ptr %45, align 4
  store ptr %39, ptr %45, align 4
  store ptr %40, ptr %39, align 4
  store ptr %46, ptr %41, align 4
  store volatile ptr %39, ptr %46, align 4
  %47 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i8, ptr %48, i32 24
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %51 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %52 = load i8, ptr %51, align 8, !range !10
  %53 = icmp eq i8 %52, 0
  %54 = tail call i32 @llvm.bswap.i32(i32 %50) #5
  %55 = select i1 %53, i32 %50, i32 %54
  %56 = or i32 %55, 67108864
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %53, label %61, label %57

57:                                               ; preds = %36
  %58 = tail call i32 @llvm.bswap.i32(i32 %56) #5
  %59 = load ptr, ptr %47, align 4
  %60 = getelementptr i8, ptr %59, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #5, !srcloc !16
  br label %64

61:                                               ; preds = %36
  %62 = load ptr, ptr %47, align 4
  %63 = getelementptr i8, ptr %62, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %56) #5, !srcloc !16
  br label %64

64:                                               ; preds = %61, %57, %33, %29, %9, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hc_halt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_update_urb_state_abn(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) unnamed_addr #0 {
  %7 = shl i32 %2, 5
  %8 = add i32 %7, 1296
  %9 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %13 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %14 = load i8, ptr %13, align 8, !range !10
  %15 = icmp eq i8 %14, 0
  %16 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  %17 = select i1 %15, i32 %12, i32 %16
  %18 = icmp eq i32 %5, 1
  br i1 %18, label %19, label %41

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %21 = load i24, ptr %20, align 1
  %22 = and i24 %21, 2048
  %23 = icmp eq i24 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = and i32 %17, 524287
  %26 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = sub i32 %27, %25
  br label %53

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 24
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.dwc2_qh, ptr %31, i32 0, i32 8
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.dwc2_qtd, ptr %4, i32 0, i32 9
  %37 = load i32, ptr %36, align 4
  br label %53

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 6
  %40 = load i32, ptr %39, align 4
  br label %53

41:                                               ; preds = %6
  %42 = lshr i32 %17, 19
  %43 = and i32 %42, 1023
  %44 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 8
  %45 = load i16, ptr %44, align 4
  %46 = zext i16 %45 to i32
  %47 = sub nsw i32 %46, %43
  %48 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 2
  %49 = load i16, ptr %48, align 4
  %50 = and i16 %49, 2047
  %51 = zext i16 %50 to i32
  %52 = mul nsw i32 %47, %51
  br label %53

53:                                               ; preds = %41, %38, %35, %24
  %54 = phi i32 [ %28, %24 ], [ %37, %35 ], [ %40, %38 ], [ %52, %41 ]
  %55 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %3, i32 0, i32 7
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, %54
  %58 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %3, i32 0, i32 6
  %59 = load i32, ptr %58, align 4
  %60 = icmp ugt i32 %57, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %62, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.dwc2_update_urb_state_abn) #6
  %63 = load i32, ptr %58, align 4
  br label %64

64:                                               ; preds = %61, %53
  %65 = phi i32 [ %63, %61 ], [ %57, %53 ]
  store i32 %65, ptr %55, align 4
  %66 = load ptr, ptr %9, align 4
  %67 = getelementptr i8, ptr %66, i32 %8
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hub_clear_tt_buffer(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{i64 3525744}
!9 = !{i64 2154508504}
!10 = !{i8 0, i8 2}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2148993038}
!13 = !{i64 2148988862}
!14 = !{i64 2148988937, i64 2148988964, i64 2148989011, i64 2148989033, i64 2148989061, i64 2148989081}
!15 = !{i64 2149016041}
!16 = !{i64 3525326}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i32 0, i32 3}
