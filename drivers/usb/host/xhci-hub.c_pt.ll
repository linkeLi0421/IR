; ModuleID = '/llk/IR/drivers/usb/host/xhci-hub.c_pt.bc'
source_filename = "../drivers/usb/host/xhci-hub.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.64, i32 }
%union.anon.64 = type { ptr }
%struct.xhci_hcd = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, i32, %struct.delayed_work, %struct.completion, ptr, ptr, %struct.xhci_erst, ptr, %struct.list_head, %struct.mutex, ptr, [256 x ptr], ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.s3_save, i64, i32, i32, ptr, %struct.xhci_hub, %struct.xhci_hub, i8, ptr, i32, ptr, i32, %struct.timer_list, i32, i16, ptr, ptr, %struct.list_head, ptr, [0 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xhci_erst = type { ptr, i32, i32, i32 }
%struct.s3_save = type { i32, i32, i64, i32, i32, i32, i32, i64, i64 }
%struct.xhci_hub = type { ptr, i32, ptr, %struct.xhci_bus_state, i8, i8 }
%struct.xhci_bus_state = type { i32, i32, i32, i32, i32, [31 x i32], i32, i32, [31 x %struct.completion], [31 x %struct.completion] }
%struct.xhci_virt_device = type { i32, ptr, ptr, ptr, [31 x %struct.xhci_virt_ep], i8, i8, ptr, ptr, i32, i16, ptr }
%struct.xhci_virt_ep = type { ptr, i32, ptr, ptr, ptr, i32, %struct.list_head, %struct.timer_list, ptr, ptr, ptr, i8, %struct.xhci_bw_info, %struct.list_head, i32, i8 }
%struct.xhci_bw_info = type { i32, i32, i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
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
%struct.xhci_stream_info = type { ptr, i32, ptr, i32, i32, %struct.xarray, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.xhci_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr }
%struct.usb_hub_descriptor = type <{ i8, i8, i8, i16, i8, i8, %union.anon.69 }>
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { [4 x i8], [4 x i8] }
%struct.usb_bos_descriptor = type <{ i8, i8, i16, i8 }>
%struct.xhci_port_cap = type { ptr, i8, i8, i8, i8 }
%struct.xhci_cap_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xhci_port = type { ptr, i32, i32, ptr, ptr }
%struct.xhci_command = type { ptr, i32, i32, ptr, ptr, %struct.list_head }

@.str = private unnamed_addr constant [39 x i8] c"get ext port status invalid parameter\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"USB core suspending port %d-%d not in U0/U1/U2\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"slot_id is zero\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Can't set compliance mode when port is connected\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Cannot set port %d-%d link state %d\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.5 = private unnamed_addr constant [31 x i8] c"port %d-%d resume PLC timeout\0A\00", align 1
@ssp_cap_default_ssa = internal unnamed_addr constant [8 x i32] [i32 327732, i32 327860, i32 671797, i32 671925, i32 344118, i32 344246, i32 671799, i32 671927], align 4
@__tracepoint_xhci_get_port_status = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"All USB3 ports have entered U0 already!\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Compliance Mode Recovery Timer Deleted.\00", align 1
@__tracepoint_xhci_dbg_quirks = external dso_local global %struct.tracepoint, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"Port resume timed out, port %d-%d: 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"Timeout while waiting for stop endpoint command\0A\00", align 1
@__tracepoint_xhci_stop_device = external dso_local global %struct.tracepoint, align 4
@.str.11 = private unnamed_addr constant [55 x i8] c"Failed to disable slot %d, %d. Enter test mode anyway\0A\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"Not in test mode, do nothing.\0A\00", align 1
@__tracepoint_xhci_hub_status_data = external dso_local global %struct.tracepoint, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @xhci_port_state_to_neutral(i32 noundef %0) local_unnamed_addr #0 {
  %2 = and i32 %0, 1308688361
  ret i32 %2
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @xhci_find_slot_id_by_port(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 3
  br label %5

5:                                                ; preds = %26, %3
  %6 = phi i32 [ 0, %3 ], [ %27, %26 ]
  %7 = getelementptr %struct.xhci_hcd, ptr %1, i32 0, i32 42, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.xhci_virt_device, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %16, 5
  %18 = load i32, ptr %4, align 8
  %19 = icmp sgt i32 %18, 63
  %20 = xor i1 %17, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.xhci_virt_device, ptr %8, i32 0, i32 5
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i16
  %25 = icmp eq i16 %24, %2
  br i1 %25, label %29, label %26

26:                                               ; preds = %21, %14, %10, %5
  %27 = add nuw nsw i32 %6, 1
  %28 = icmp eq i32 %27, 256
  br i1 %28, label %29, label %5

29:                                               ; preds = %26, %21
  %30 = phi i32 [ 0, %26 ], [ %6, %21 ]
  ret i32 %30
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_ring_device(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 42, i32 %1
  br label %4

4:                                                ; preds = %33, %2
  %5 = phi i32 [ 0, %2 ], [ %34, %33 ]
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr %struct.xhci_virt_device, ptr %6, i32 0, i32 4, i32 %5, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %4
  %12 = getelementptr %struct.xhci_virt_device, ptr %6, i32 0, i32 4, i32 %5, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.xhci_stream_info, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, 1
  br i1 %16, label %17, label %33

17:                                               ; preds = %17, %11
  %18 = phi i32 [ %19, %17 ], [ 1, %11 ]
  tail call void @xhci_ring_ep_doorbell(ptr noundef %0, i32 noundef %1, i32 noundef %5, i32 noundef %18) #11
  %19 = add nuw i32 %18, 1
  %20 = load ptr, ptr %12, align 4
  %21 = getelementptr inbounds %struct.xhci_stream_info, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %17, label %33

24:                                               ; preds = %4
  %25 = getelementptr %struct.xhci_virt_device, ptr %6, i32 0, i32 4, i32 %5, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.xhci_ring, ptr %26, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @xhci_ring_ep_doorbell(ptr noundef %0, i32 noundef %1, i32 noundef %5, i32 noundef 0) #11
  br label %33

33:                                               ; preds = %32, %28, %24, %17, %11
  %34 = add nuw nsw i32 %5, 1
  %35 = icmp eq i32 %34, 31
  br i1 %35, label %36, label %4

36:                                               ; preds = %33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_ring_ep_doorbell(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xhci_get_rhub(ptr noundef %0) local_unnamed_addr #3 {
  %2 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %6, %4 ], [ %0, %1 ]
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 8
  %11 = icmp sgt i32 %10, 63
  %12 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 8, i32 0, i32 10, i32 0, i32 3
  %13 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 4, i32 21, i32 4
  %14 = select i1 %11, ptr %12, ptr %13
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_set_link_state(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = load ptr, ptr %1, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %6 = and i32 %5, 1308687881
  %7 = or i32 %6, %2
  %8 = or i32 %7, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %9 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #11, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_test_and_clear_bit(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = load ptr, ptr %1, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %6 = and i32 %5, %2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = and i32 %5, 1308688361
  %10 = or i32 %9, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  tail call void @arm_heavy_mb() #11
  %11 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #11, !srcloc !11
  br label %12

12:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_hub_control(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, ptr noundef %4, i16 noundef zeroext %5) local_unnamed_addr #3 {
  %7 = alloca [4 x i8], align 4
  %8 = alloca i32, align 4
  %9 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %6
  %15 = phi ptr [ %13, %11 ], [ %0, %6 ]
  %16 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  %17 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi ptr [ %21, %19 ], [ %0, %14 ]
  %24 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 3
  %25 = load i32, ptr %24, align 8
  %26 = icmp sgt i32 %25, 63
  %27 = getelementptr inbounds %struct.usb_hcd, ptr %23, i32 8, i32 0, i32 10, i32 0, i32 3
  %28 = getelementptr inbounds %struct.usb_hcd, ptr %23, i32 4, i32 21, i32 4
  %29 = select i1 %26, ptr %27, ptr %28
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.xhci_hub, ptr %29, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 1, i32 0, i32 10
  %34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %33) #11
  store i32 %34, ptr %8, align 4
  switch i16 %1, label %1060 [
    i16 -24576, label %35
    i16 -24570, label %36
    i16 -32762, label %140
    i16 -23808, label %374
    i16 8963, label %752
    i16 8961, label %984
  ]

35:                                               ; preds = %22
  store i32 0, ptr %4, align 1
  br label %1060

36:                                               ; preds = %22
  %37 = load i32, ptr %24, align 8
  %38 = icmp sgt i32 %37, 63
  br i1 %38, label %39, label %80

39:                                               ; preds = %36
  %40 = icmp ult i16 %5, 12
  %41 = icmp ne i16 %2, 10752
  %42 = or i1 %41, %40
  br i1 %42, label %1060, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 8, i32 0, i32 10, i32 0, i32 3
  %45 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 8, i32 0, i32 11
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 5
  store i8 0, ptr %47, align 1
  %48 = trunc i32 %46 to i8
  %49 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 2
  store i8 %48, ptr %49, align 1
  %50 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 1, i32 0, i32 9, i32 3
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 8
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i16 10, i16 9
  %55 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 3
  store i16 %54, ptr %55, align 1
  %56 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 1
  store i8 42, ptr %56, align 1
  store i8 12, ptr %4, align 1
  %57 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 4
  store i8 50, ptr %57, align 1
  %58 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 6
  store i8 0, ptr %58, align 1
  %59 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 6, i32 0, i32 0, i32 1
  store i16 0, ptr %59, align 1
  %60 = icmp eq i32 %46, 0
  br i1 %60, label %77, label %61

61:                                               ; preds = %61, %43
  %62 = phi i16 [ %75, %61 ], [ 0, %43 ]
  %63 = phi i32 [ %71, %61 ], [ 0, %43 ]
  %64 = load ptr, ptr %44, align 4
  %65 = getelementptr ptr, ptr %64, i32 %63
  %66 = load ptr, ptr %65, align 4
  %67 = load ptr, ptr %66, align 4
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %69 = and i32 %68, 1073741824
  %70 = icmp eq i32 %69, 0
  %71 = add nuw i32 %63, 1
  %72 = shl i32 2, %63
  %73 = trunc i32 %72 to i16
  %74 = select i1 %70, i16 0, i16 %73
  %75 = or i16 %74, %62
  %76 = icmp eq i32 %71, %46
  br i1 %76, label %77, label %61

77:                                               ; preds = %61, %43
  %78 = phi i16 [ 0, %43 ], [ %75, %61 ]
  %79 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 6, i32 0, i32 0, i32 3
  store i16 %78, ptr %79, align 1
  br label %1060

80:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  %81 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 4, i32 21, i32 4
  %82 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 4, i32 22
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 5
  store i8 0, ptr %84, align 1
  %85 = trunc i32 %83 to i8
  %86 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 2
  store i8 %85, ptr %86, align 1
  %87 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 1, i32 0, i32 9, i32 3
  %88 = load i32, ptr %87, align 8
  %89 = and i32 %88, 8
  %90 = icmp eq i32 %89, 0
  %91 = select i1 %90, i16 10, i16 9
  %92 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 3
  store i16 %91, ptr %92, align 1
  %93 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 1
  store i8 41, ptr %93, align 1
  %94 = sdiv i32 %83, 8
  %95 = trunc i32 %94 to i8
  %96 = shl i8 %95, 1
  %97 = add i8 %96, 9
  store i8 %97, ptr %4, align 1
  %98 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 4
  store i8 10, ptr %98, align 1
  store i32 0, ptr %7, align 4
  %99 = icmp eq i32 %83, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %80
  %101 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 6
  store i32 -1, ptr %101, align 1
  %102 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 6, i32 0, i32 1
  store i32 -1, ptr %102, align 1
  br label %127

103:                                              ; preds = %121, %80
  %104 = phi i32 [ %112, %121 ], [ 0, %80 ]
  %105 = load ptr, ptr %81, align 4
  %106 = getelementptr ptr, ptr %105, i32 %104
  %107 = load ptr, ptr %106, align 4
  %108 = load ptr, ptr %107, align 4
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !15
  %110 = and i32 %109, 1073741824
  %111 = icmp eq i32 %110, 0
  %112 = add nuw i32 %104, 1
  br i1 %111, label %121, label %113

113:                                              ; preds = %103
  %114 = and i32 %112, 7
  %115 = shl nuw nsw i32 1, %114
  %116 = lshr i32 %112, 3
  %117 = getelementptr [4 x i8], ptr %7, i32 0, i32 %116
  %118 = load i8, ptr %117, align 1
  %119 = trunc i32 %115 to i8
  %120 = or i8 %118, %119
  store i8 %120, ptr %117, align 1
  br label %121

121:                                              ; preds = %113, %103
  %122 = icmp eq i32 %112, %83
  br i1 %122, label %123, label %103

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 6
  store i32 -1, ptr %124, align 1
  %125 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 6, i32 0, i32 1
  store i32 -1, ptr %125, align 1
  %126 = icmp ugt i32 %83, -16
  br i1 %126, label %139, label %127

127:                                              ; preds = %123, %100
  %128 = add nuw i32 %83, 8
  %129 = sdiv i32 %128, 8
  %130 = tail call i32 @llvm.umax.i32(i32 %129, i32 1) #11
  %131 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 6
  br label %132

132:                                              ; preds = %132, %127
  %133 = phi i32 [ %137, %132 ], [ 0, %127 ]
  %134 = getelementptr [4 x i8], ptr %131, i32 0, i32 %133
  %135 = getelementptr [4 x i8], ptr %7, i32 0, i32 %133
  %136 = load i8, ptr %135, align 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(1) %134, i8 %136, i32 1, i1 false) #11
  %137 = add nuw i32 %133, 1
  %138 = icmp eq i32 %137, %130
  br i1 %138, label %139, label %132

139:                                              ; preds = %132, %123
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  br label %1060

140:                                              ; preds = %22
  %141 = and i16 %2, -256
  %142 = icmp eq i16 %141, 3840
  br i1 %142, label %143, label %1060

143:                                              ; preds = %140
  %144 = load i32, ptr %24, align 8
  %145 = icmp slt i32 %144, 64
  br i1 %145, label %1060, label %146

146:                                              ; preds = %143
  store i8 5, ptr %4, align 1
  %147 = getelementptr inbounds %struct.usb_bos_descriptor, ptr %4, i32 0, i32 1
  store i8 15, ptr %147, align 1
  %148 = getelementptr inbounds %struct.usb_bos_descriptor, ptr %4, i32 0, i32 2
  store i16 15, ptr %148, align 1
  %149 = getelementptr inbounds %struct.usb_bos_descriptor, ptr %4, i32 0, i32 3
  store i8 1, ptr %149, align 1
  %150 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 11, i32 9
  %151 = load i32, ptr %150, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %216, label %153

153:                                              ; preds = %146
  %154 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 11, i32 8, i32 2
  %155 = load ptr, ptr %154, align 8
  br label %156

156:                                              ; preds = %156, %153
  %157 = phi ptr [ null, %153 ], [ %173, %156 ]
  %158 = phi i16 [ 0, %153 ], [ %172, %156 ]
  %159 = phi i32 [ 0, %153 ], [ %174, %156 ]
  %160 = getelementptr %struct.xhci_port_cap, ptr %155, i32 %159, i32 3
  %161 = load i8, ptr %160, align 2
  %162 = getelementptr %struct.xhci_port_cap, ptr %155, i32 %159, i32 4
  %163 = load i8, ptr %162, align 1
  %164 = zext i8 %161 to i16
  %165 = shl nuw i16 %164, 8
  %166 = zext i8 %163 to i16
  %167 = or i16 %165, %166
  %168 = icmp eq i32 %159, 0
  %169 = icmp ult i16 %158, %167
  %170 = select i1 %168, i1 true, i1 %169
  %171 = getelementptr %struct.xhci_port_cap, ptr %155, i32 %159
  %172 = select i1 %170, i16 %167, i16 %158
  %173 = select i1 %170, ptr %171, ptr %157
  %174 = add nuw i32 %159, 1
  %175 = icmp eq i32 %174, %151
  br i1 %175, label %176, label %156

176:                                              ; preds = %156
  %177 = icmp ugt i16 %172, 783
  br i1 %177, label %178, label %216

178:                                              ; preds = %176
  %179 = getelementptr inbounds %struct.xhci_port_cap, ptr %173, i32 0, i32 1
  %180 = load i8, ptr %179, align 4
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %201, label %182

182:                                              ; preds = %178
  %183 = zext i8 %180 to i32
  %184 = load ptr, ptr %173, align 4
  br label %185

185:                                              ; preds = %185, %182
  %186 = phi i32 [ 0, %182 ], [ %194, %185 ]
  %187 = phi i8 [ 0, %182 ], [ %193, %185 ]
  %188 = getelementptr i32, ptr %184, i32 %186
  %189 = load i32, ptr %188, align 4
  %190 = and i32 %189, 192
  %191 = icmp eq i32 %190, 0
  %192 = zext i1 %191 to i8
  %193 = add i8 %187, %192
  %194 = add nuw nsw i32 %186, 1
  %195 = icmp eq i32 %194, %183
  br i1 %195, label %196, label %185

196:                                              ; preds = %185
  %197 = add i8 %180, -1
  %198 = add i8 %197, %193
  %199 = getelementptr inbounds %struct.xhci_port_cap, ptr %173, i32 0, i32 2
  %200 = load i8, ptr %199, align 1
  br label %206

201:                                              ; preds = %178
  %202 = icmp ugt i16 %172, 799
  %203 = select i1 %202, i8 7, i8 3
  %204 = add nuw nsw i8 %203, 1
  %205 = lshr exact i8 %204, 1
  br label %206

206:                                              ; preds = %201, %196
  %207 = phi i8 [ %200, %196 ], [ %205, %201 ]
  %208 = phi i8 [ %198, %196 ], [ %203, %201 ]
  %209 = add i8 %207, 15
  store i8 2, ptr %149, align 1
  %210 = zext i8 %208 to i16
  %211 = shl nuw nsw i16 %210, 2
  %212 = add nuw nsw i16 %211, 31
  store i16 %212, ptr %148, align 1
  %213 = zext i8 %209 to i32
  %214 = shl nuw nsw i32 %213, 5
  %215 = and i32 %214, 480
  br label %216

216:                                              ; preds = %206, %176, %146
  %217 = phi ptr [ %173, %206 ], [ %173, %176 ], [ null, %146 ]
  %218 = phi i16 [ %172, %206 ], [ %172, %176 ], [ 0, %146 ]
  %219 = phi i32 [ %215, %206 ], [ 0, %176 ], [ 0, %146 ]
  %220 = phi i8 [ %208, %206 ], [ 0, %176 ], [ 0, %146 ]
  %221 = icmp ult i16 %5, 15
  br i1 %221, label %371, label %222

222:                                              ; preds = %216
  %223 = getelementptr i8, ptr %4, i32 5
  store i8 10, ptr %223, align 1
  %224 = getelementptr i8, ptr %4, i32 6
  store i8 16, ptr %224, align 1
  %225 = getelementptr i8, ptr %4, i32 7
  store i8 3, ptr %225, align 1
  %226 = getelementptr i8, ptr %4, i32 8
  store i8 0, ptr %226, align 1
  %227 = getelementptr i8, ptr %4, i32 9
  store i16 8, ptr %227, align 1
  %228 = getelementptr i8, ptr %4, i32 11
  store i8 1, ptr %228, align 1
  %229 = getelementptr i8, ptr %4, i32 12
  store i8 0, ptr %229, align 1
  %230 = getelementptr i8, ptr %4, i32 13
  store i16 0, ptr %230, align 1
  %231 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 1, i32 0, i32 2
  %232 = load ptr, ptr %231, align 8
  %233 = getelementptr inbounds %struct.xhci_cap_regs, ptr %232, i32 0, i32 4
  %234 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %233) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !16
  %235 = and i32 %234, 64
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %222
  %238 = load i8, ptr %226, align 1
  %239 = or i8 %238, 2
  store i8 %239, ptr %226, align 1
  br label %240

240:                                              ; preds = %237, %222
  %241 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 4, i32 21, i32 3, i32 1
  %242 = load i64, ptr %241, align 8
  %243 = and i64 %242, 2048
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %252, label %245

245:                                              ; preds = %240
  %246 = load ptr, ptr %231, align 8
  %247 = getelementptr inbounds %struct.xhci_cap_regs, ptr %246, i32 0, i32 3
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %247) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !17
  %249 = trunc i32 %248 to i8
  store i8 %249, ptr %229, align 1
  %250 = lshr i32 %248, 16
  %251 = trunc i32 %250 to i16
  store i16 %251, ptr %230, align 1
  br label %252

252:                                              ; preds = %245, %240
  %253 = load i16, ptr %148, align 1
  %254 = icmp ugt i16 %253, %5
  br i1 %254, label %371, label %255

255:                                              ; preds = %252
  %256 = icmp ult i16 %218, 784
  br i1 %256, label %371, label %257

257:                                              ; preds = %255
  %258 = getelementptr i8, ptr %4, i32 15
  %259 = zext i8 %220 to i32
  %260 = shl i8 %220, 2
  %261 = add i8 %260, 16
  store i8 %261, ptr %258, align 1
  %262 = getelementptr i8, ptr %4, i32 16
  store i8 16, ptr %262, align 1
  %263 = getelementptr i8, ptr %4, i32 17
  store i8 10, ptr %263, align 1
  %264 = getelementptr i8, ptr %4, i32 18
  store i8 0, ptr %264, align 1
  %265 = getelementptr i8, ptr %4, i32 25
  store i16 0, ptr %265, align 1
  %266 = and i32 %259, 31
  %267 = or i32 %266, %219
  %268 = getelementptr i8, ptr %4, i32 19
  store i32 %267, ptr %268, align 1
  %269 = getelementptr inbounds %struct.xhci_port_cap, ptr %217, i32 0, i32 1
  %270 = load i8, ptr %269, align 4
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %275, label %272

272:                                              ; preds = %257
  %273 = icmp eq i16 %218, 800
  %274 = getelementptr i8, ptr %4, i32 27
  br label %279

275:                                              ; preds = %257
  %276 = getelementptr i8, ptr %4, i32 27
  %277 = shl nuw nsw i32 %259, 2
  %278 = add nuw nsw i32 %277, 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %276, ptr noundef nonnull align 4 @ssp_cap_default_ssa, i32 %278, i1 false) #11
  br label %365

279:                                              ; preds = %356, %272
  %280 = phi i8 [ %270, %272 ], [ %357, %356 ]
  %281 = phi i32 [ 0, %272 ], [ %306, %356 ]
  %282 = phi i8 [ 0, %272 ], [ %305, %356 ]
  %283 = phi i32 [ 0, %272 ], [ %358, %356 ]
  %284 = phi i32 [ 0, %272 ], [ %359, %356 ]
  %285 = load ptr, ptr %217, align 4
  %286 = getelementptr i32, ptr %285, i32 %284
  %287 = load i32, ptr %286, align 4
  %288 = trunc i32 %287 to i8
  %289 = and i8 %288, 15
  %290 = and i32 %287, 49152
  %291 = lshr i8 %288, 4
  %292 = and i8 %291, 3
  %293 = lshr i32 %287, 16
  %294 = trunc i32 %293 to i16
  %295 = and i32 %287, 192
  %296 = icmp eq i8 %292, 3
  %297 = udiv i16 %294, 1000
  %298 = icmp ult i8 %292, 2
  %299 = select i1 %298, i16 0, i16 %297
  %300 = select i1 %296, i16 %294, i16 %299
  %301 = icmp eq i32 %281, 0
  %302 = zext i16 %300 to i32
  %303 = icmp ugt i32 %281, %302
  %304 = select i1 %301, i1 true, i1 %303
  %305 = select i1 %304, i8 %289, i8 %282
  %306 = select i1 %304, i32 %302, i32 %281
  %307 = icmp ugt i16 %300, 9
  %308 = icmp eq i32 %295, 0
  %309 = select i1 %273, i1 %308, i1 false
  br i1 %309, label %310, label %330

310:                                              ; preds = %279
  %311 = icmp eq i8 %289, 6
  %312 = icmp eq i16 %300, 10
  %313 = select i1 %311, i1 %312, i1 false
  %314 = icmp ne i32 %284, 0
  %315 = select i1 %313, i1 %314, i1 false
  br i1 %315, label %316, label %324

316:                                              ; preds = %310
  %317 = add nsw i32 %284, -1
  %318 = getelementptr i32, ptr %285, i32 %317
  %319 = load i32, ptr %318, align 4
  %320 = and i32 %319, -65281
  %321 = icmp eq i32 %320, 655413
  %322 = select i1 %321, i8 3, i8 %292
  %323 = select i1 %321, i32 5, i32 %293
  br label %324

324:                                              ; preds = %316, %310
  %325 = phi i8 [ %322, %316 ], [ %292, %310 ]
  %326 = phi i32 [ %323, %316 ], [ %293, %310 ]
  %327 = icmp ugt i16 %300, 10
  %328 = select i1 %327, i8 3, i8 %325
  %329 = select i1 %327, i32 10, i32 %326
  br label %330

330:                                              ; preds = %324, %279
  %331 = phi i8 [ %292, %279 ], [ %328, %324 ]
  %332 = phi i32 [ %293, %279 ], [ %329, %324 ]
  %333 = and i32 %287, 15
  %334 = select i1 %307, i32 16384, i32 %290
  %335 = or i32 %334, %333
  %336 = zext i8 %331 to i32
  %337 = shl nuw nsw i32 %336, 4
  %338 = and i32 %337, 48
  %339 = or i32 %335, %338
  %340 = shl i32 %332, 16
  %341 = and i32 %340, 16711680
  %342 = or i32 %339, %341
  %343 = trunc i32 %295 to i8
  switch i8 %343, label %356 [
    i8 0, label %344
    i8 -128, label %348
    i8 -64, label %347
  ]

344:                                              ; preds = %330
  %345 = add i32 %283, 1
  %346 = getelementptr [1 x i32], ptr %274, i32 0, i32 %283
  store i32 %342, ptr %346, align 1
  br label %348

347:                                              ; preds = %330
  br label %348

348:                                              ; preds = %347, %344, %330
  %349 = phi i32 [ 192, %347 ], [ 128, %344 ], [ 64, %330 ]
  %350 = phi i32 [ 1, %347 ], [ 2, %344 ], [ 1, %330 ]
  %351 = phi i32 [ %283, %347 ], [ %345, %344 ], [ %283, %330 ]
  %352 = or i32 %349, %342
  %353 = add i32 %350, %283
  %354 = getelementptr [1 x i32], ptr %274, i32 0, i32 %351
  store i32 %352, ptr %354, align 1
  %355 = load i8, ptr %269, align 4
  br label %356

356:                                              ; preds = %348, %330
  %357 = phi i8 [ %280, %330 ], [ %355, %348 ]
  %358 = phi i32 [ %283, %330 ], [ %353, %348 ]
  %359 = add nuw nsw i32 %284, 1
  %360 = zext i8 %357 to i32
  %361 = icmp ult i32 %359, %360
  br i1 %361, label %279, label %362

362:                                              ; preds = %356
  %363 = and i8 %305, 15
  %364 = load i16, ptr %148, align 1
  br label %365

365:                                              ; preds = %362, %275
  %366 = phi i16 [ %253, %275 ], [ %364, %362 ]
  %367 = phi i8 [ 4, %275 ], [ %363, %362 ]
  %368 = zext i8 %367 to i16
  %369 = or i16 %368, 4352
  %370 = getelementptr i8, ptr %4, i32 23
  store i16 %369, ptr %370, align 1
  br label %371

371:                                              ; preds = %365, %255, %252, %216
  %372 = phi i16 [ %366, %365 ], [ %5, %216 ], [ %5, %252 ], [ %253, %255 ]
  %373 = zext i16 %372 to i32
  br label %1063

374:                                              ; preds = %22
  %375 = icmp eq i16 %3, 0
  %376 = zext i16 %3 to i32
  %377 = icmp slt i32 %32, %376
  %378 = select i1 %375, i1 true, i1 %377
  br i1 %378, label %1060, label %379

379:                                              ; preds = %374
  %380 = add i16 %3, -1
  %381 = zext i16 %380 to i32
  %382 = getelementptr ptr, ptr %30, i32 %381
  %383 = load ptr, ptr %382, align 4
  %384 = load ptr, ptr %383, align 4
  %385 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %384) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !18
  %386 = icmp eq i32 %385, -1
  br i1 %386, label %387, label %388

387:                                              ; preds = %379
  tail call void @xhci_hc_died(ptr noundef %16) #11
  br label %1060

388:                                              ; preds = %379
  %389 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_get_port_status, i32 0, i32 1), align 4
  %390 = icmp sgt i32 %389, 0
  br i1 %390, label %391, label %404

391:                                              ; preds = %388
  %392 = tail call ptr @llvm.thread.pointer() #11
  %393 = getelementptr inbounds %struct.thread_info, ptr %392, i32 0, i32 2
  %394 = load i32, ptr %393, align 8
  %395 = lshr i32 %394, 5
  %396 = getelementptr i32, ptr @__cpu_online_mask, i32 %395
  %397 = load volatile i32, ptr %396, align 4
  %398 = and i32 %394, 31
  %399 = shl nuw i32 1, %398
  %400 = and i32 %399, %397
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %404, label %402

402:                                              ; preds = %391
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  %403 = tail call i32 @__traceiter_xhci_get_port_status(ptr noundef null, i32 noundef %381, i32 noundef %385) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  br label %404

404:                                              ; preds = %402, %391, %388
  %405 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #11
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %407, label %410

407:                                              ; preds = %404
  %408 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %409 = load ptr, ptr %408, align 4
  br label %410

410:                                              ; preds = %407, %404
  %411 = phi ptr [ %409, %407 ], [ %0, %404 ]
  %412 = load i32, ptr %24, align 8
  %413 = icmp sgt i32 %412, 63
  %414 = getelementptr inbounds %struct.usb_hcd, ptr %411, i32 8, i32 0, i32 10, i32 0, i32 3
  %415 = getelementptr inbounds %struct.usb_hcd, ptr %411, i32 4, i32 21, i32 4
  %416 = select i1 %413, ptr %414, ptr %415
  %417 = load ptr, ptr %416, align 4
  %418 = getelementptr ptr, ptr %417, i32 %381
  %419 = load ptr, ptr %418, align 4
  %420 = lshr i32 %385, 1
  %421 = and i32 %420, 1769472
  %422 = and i32 %385, 1
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %431, label %424

424:                                              ; preds = %410
  %425 = and i32 %385, 15360
  %426 = icmp eq i32 %425, 3072
  %427 = icmp eq i32 %425, 2048
  %428 = select i1 %426, i32 1025, i32 1
  %429 = select i1 %427, i32 513, i32 %428
  %430 = or i32 %429, %421
  br label %431

431:                                              ; preds = %424, %410
  %432 = phi i32 [ %421, %410 ], [ %430, %424 ]
  %433 = and i32 %385, 26
  %434 = or i32 %432, %433
  %435 = getelementptr inbounds %struct.xhci_port, ptr %419, i32 0, i32 3
  %436 = load ptr, ptr %435, align 4
  br i1 %413, label %437, label %532

437:                                              ; preds = %431
  %438 = getelementptr inbounds %struct.xhci_hub, ptr %436, i32 0, i32 2
  %439 = load ptr, ptr %438, align 4
  %440 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %439) #11
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %442, label %445

442:                                              ; preds = %437
  %443 = getelementptr inbounds %struct.usb_hcd, ptr %439, i32 0, i32 25
  %444 = load ptr, ptr %443, align 4
  br label %445

445:                                              ; preds = %442, %437
  %446 = phi ptr [ %444, %442 ], [ %439, %437 ]
  %447 = getelementptr inbounds %struct.usb_hcd, ptr %446, i32 0, i32 29
  %448 = load ptr, ptr %435, align 4
  %449 = getelementptr inbounds %struct.xhci_hub, ptr %448, i32 0, i32 2
  %450 = load ptr, ptr %449, align 4
  %451 = and i32 %385, 480
  %452 = getelementptr inbounds %struct.xhci_port, ptr %419, i32 0, i32 2
  %453 = load i32, ptr %452, align 4
  %454 = and i32 %385, 4194304
  %455 = icmp ne i32 %454, 0
  %456 = icmp ne i32 %451, 480
  %457 = and i1 %455, %456
  %458 = or i32 %434, 4194304
  %459 = select i1 %457, i32 %458, i32 %434
  %460 = shl i32 %385, 2
  %461 = and i32 %460, 2097152
  %462 = and i32 %385, 8388608
  %463 = or i32 %461, %462
  %464 = or i32 %463, %459
  %465 = and i32 %385, 512
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %476, label %467

467:                                              ; preds = %445
  %468 = or i32 %464, 512
  %469 = icmp eq i32 %451, 0
  br i1 %469, label %470, label %476

470:                                              ; preds = %467
  %471 = shl nuw i32 1, %453
  %472 = xor i32 %471, -1
  %473 = getelementptr inbounds %struct.xhci_hub, ptr %436, i32 0, i32 3, i32 3
  %474 = load i32, ptr %473, align 4
  %475 = and i32 %474, %472
  store i32 %475, ptr %473, align 4
  br label %476

476:                                              ; preds = %470, %467, %445
  %477 = phi i32 [ %464, %445 ], [ %468, %470 ], [ %468, %467 ]
  %478 = getelementptr inbounds %struct.xhci_hub, ptr %436, i32 0, i32 3, i32 4
  %479 = load i32, ptr %478, align 4
  %480 = shl nuw i32 1, %453
  %481 = and i32 %479, %480
  %482 = freeze i32 %481
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %488, label %484

484:                                              ; preds = %476
  switch i32 %451, label %485 [
    i32 480, label %488
    i32 256, label %488
  ]

485:                                              ; preds = %484
  %486 = xor i32 %480, -1
  %487 = and i32 %479, %486
  store i32 %487, ptr %478, align 4
  tail call void @usb_hcd_end_port_resume(ptr noundef %450, i32 noundef %453) #11
  br label %488

488:                                              ; preds = %485, %484, %484, %476
  %489 = and i32 %385, 16777216
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %497, label %491

491:                                              ; preds = %488
  %492 = icmp ne i32 %451, 320
  %493 = icmp ne i32 %451, 192
  %494 = and i1 %492, %493
  %495 = or i32 %451, 1
  %496 = select i1 %494, i32 321, i32 %495
  br label %507

497:                                              ; preds = %488
  %498 = icmp eq i32 %451, 480
  br i1 %498, label %507, label %499

499:                                              ; preds = %497
  %500 = getelementptr inbounds %struct.usb_hcd, ptr %446, i32 4, i32 21, i32 3, i32 1
  %501 = load i64, ptr %500, align 8
  %502 = and i64 %501, 16384
  %503 = icmp ne i64 %502, 0
  %504 = icmp eq i32 %451, 320
  %505 = and i1 %504, %503
  %506 = select i1 %505, i32 321, i32 %451
  br label %507

507:                                              ; preds = %499, %497, %491
  %508 = phi i32 [ 96, %497 ], [ %496, %491 ], [ %506, %499 ]
  %509 = or i32 %508, %477
  %510 = getelementptr inbounds %struct.usb_hcd, ptr %446, i32 8, i32 0, i32 11
  %511 = load i32, ptr %510, align 4
  %512 = shl nsw i32 -1, %511
  %513 = xor i32 %512, -1
  %514 = getelementptr inbounds %struct.usb_hcd, ptr %446, i32 4, i32 21, i32 3, i32 1
  %515 = load i64, ptr %514, align 8
  %516 = and i64 %515, 16384
  %517 = icmp eq i64 %516, 0
  br i1 %517, label %701, label %518

518:                                              ; preds = %507
  %519 = icmp ne i32 %451, 0
  %520 = getelementptr inbounds %struct.usb_hcd, ptr %446, i32 11, i32 15
  %521 = load i32, ptr %520, align 4
  %522 = icmp eq i32 %521, %513
  %523 = or i1 %519, %522
  br i1 %523, label %701, label %524

524:                                              ; preds = %518
  %525 = and i32 %453, 65535
  %526 = shl nuw i32 1, %525
  %527 = or i32 %521, %526
  store i32 %527, ptr %520, align 4
  %528 = icmp eq i32 %527, %513
  br i1 %528, label %529, label %701

529:                                              ; preds = %524
  %530 = getelementptr inbounds %struct.usb_hcd, ptr %446, i32 11, i32 10
  %531 = tail call i32 @del_timer_sync(ptr noundef %530) #11
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %447, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.7) #11
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %447, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.8) #11
  br label %701

532:                                              ; preds = %431
  %533 = getelementptr inbounds %struct.xhci_port, ptr %419, i32 0, i32 2
  %534 = load i32, ptr %533, align 4
  %535 = and i32 %385, 512
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %701, label %537

537:                                              ; preds = %532
  %538 = and i32 %385, 480
  %539 = icmp eq i32 %538, 96
  %540 = select i1 %539, i32 260, i32 256
  %541 = or i32 %434, %540
  switch i32 %538, label %701 [
    i32 64, label %542
    i32 0, label %544
    i32 480, label %558
  ]

542:                                              ; preds = %537
  %543 = or i32 %541, 32
  br label %701

544:                                              ; preds = %537
  %545 = getelementptr %struct.xhci_hub, ptr %436, i32 0, i32 3, i32 5, i32 %534
  store i32 0, ptr %545, align 4
  %546 = getelementptr inbounds %struct.xhci_hub, ptr %436, i32 0, i32 3, i32 6
  tail call void @_clear_bit(i32 noundef %534, ptr noundef %546) #11
  %547 = getelementptr inbounds %struct.xhci_hub, ptr %436, i32 0, i32 3, i32 3
  %548 = load i32, ptr %547, align 4
  %549 = shl nuw i32 1, %534
  %550 = and i32 %548, %549
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %701, label %552

552:                                              ; preds = %544
  %553 = xor i32 %549, -1
  %554 = and i32 %548, %553
  store i32 %554, ptr %547, align 4
  %555 = getelementptr inbounds %struct.xhci_hub, ptr %436, i32 0, i32 3, i32 2
  %556 = load i32, ptr %555, align 4
  %557 = or i32 %556, %549
  store i32 %557, ptr %555, align 4
  br label %701

558:                                              ; preds = %537
  %559 = getelementptr inbounds %struct.xhci_hub, ptr %436, i32 0, i32 2
  %560 = load ptr, ptr %559, align 4
  %561 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %560) #11
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %563, label %566

563:                                              ; preds = %558
  %564 = getelementptr inbounds %struct.usb_hcd, ptr %560, i32 0, i32 25
  %565 = load ptr, ptr %564, align 4
  br label %566

566:                                              ; preds = %563, %558
  %567 = phi ptr [ %565, %563 ], [ %560, %558 ]
  %568 = getelementptr inbounds %struct.usb_hcd, ptr %567, i32 0, i32 29
  %569 = load i32, ptr %533, align 4
  %570 = and i32 %385, 18
  %571 = icmp eq i32 %570, 2
  br i1 %571, label %572, label %701

572:                                              ; preds = %566
  %573 = getelementptr %struct.xhci_hub, ptr %436, i32 0, i32 3, i32 5, i32 %569
  %574 = load i32, ptr %573, align 4
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %576, label %590

576:                                              ; preds = %572
  %577 = getelementptr inbounds %struct.xhci_hub, ptr %436, i32 0, i32 3, i32 6
  %578 = lshr i32 %569, 5
  %579 = getelementptr i32, ptr %577, i32 %578
  %580 = load volatile i32, ptr %579, align 4
  %581 = and i32 %569, 31
  %582 = shl nuw i32 1, %581
  %583 = and i32 %580, %582
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %585, label %701

585:                                              ; preds = %576
  %586 = load volatile i32, ptr @jiffies, align 64
  %587 = add i32 %586, 4
  tail call void @_set_bit(i32 noundef %569, ptr noundef %577) #11
  store i32 %587, ptr %573, align 4
  %588 = getelementptr inbounds %struct.usb_hcd, ptr %560, i32 0, i32 5
  %589 = tail call i32 @mod_timer(ptr noundef %588, i32 noundef %587) #11
  tail call void @usb_hcd_start_port_resume(ptr noundef %560, i32 noundef %569) #11
  br label %701

590:                                              ; preds = %572
  %591 = load volatile i32, ptr @jiffies, align 64
  %592 = sub i32 %591, %574
  %593 = icmp sgt i32 %592, -1
  br i1 %593, label %594, label %699

594:                                              ; preds = %590
  store i32 0, ptr %573, align 4
  %595 = getelementptr inbounds %struct.xhci_hub, ptr %436, i32 0, i32 3, i32 6
  tail call void @_clear_bit(i32 noundef %569, ptr noundef %595) #11
  %596 = getelementptr inbounds %struct.xhci_hub, ptr %436, i32 0, i32 3, i32 7
  tail call void @_set_bit(i32 noundef %569, ptr noundef %596) #11
  %597 = load ptr, ptr %419, align 4
  %598 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %597) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %599 = and i32 %598, 4194304
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %605, label %601

601:                                              ; preds = %594
  %602 = and i32 %598, 1308688361
  %603 = or i32 %602, 4194304
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  tail call void @arm_heavy_mb() #11
  %604 = load ptr, ptr %419, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %604, i32 %603) #11, !srcloc !11
  br label %605

605:                                              ; preds = %601, %594
  %606 = load ptr, ptr %419, align 4
  %607 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %606) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %608 = and i32 %607, 1308687881
  %609 = or i32 %608, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %610 = load ptr, ptr %419, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %610, i32 %609) #11, !srcloc !11
  %611 = getelementptr inbounds %struct.usb_hcd, ptr %567, i32 1, i32 0, i32 10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %611, i32 noundef %34) #11
  %612 = getelementptr %struct.xhci_hub, ptr %436, i32 0, i32 3, i32 8, i32 %569
  %613 = tail call i32 @wait_for_completion_timeout(ptr noundef %612, i32 noundef 2) #11
  %614 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %611) #11
  store i32 %614, ptr %8, align 4
  %615 = icmp eq i32 %613, 0
  br i1 %615, label %680, label %616

616:                                              ; preds = %605
  %617 = trunc i32 %569 to i16
  %618 = add i16 %617, 1
  %619 = getelementptr inbounds %struct.usb_hcd, ptr %560, i32 0, i32 3
  br label %620

620:                                              ; preds = %641, %616
  %621 = phi i32 [ 0, %616 ], [ %642, %641 ]
  %622 = getelementptr %struct.xhci_hcd, ptr %568, i32 0, i32 42, i32 %621
  %623 = load ptr, ptr %622, align 4
  %624 = icmp eq ptr %623, null
  br i1 %624, label %641, label %625

625:                                              ; preds = %620
  %626 = getelementptr inbounds %struct.xhci_virt_device, ptr %623, i32 0, i32 1
  %627 = load ptr, ptr %626, align 4
  %628 = icmp eq ptr %627, null
  br i1 %628, label %641, label %629

629:                                              ; preds = %625
  %630 = getelementptr inbounds %struct.usb_device, ptr %627, i32 0, i32 4
  %631 = load i32, ptr %630, align 4
  %632 = icmp ult i32 %631, 5
  %633 = load i32, ptr %619, align 8
  %634 = icmp sgt i32 %633, 63
  %635 = xor i1 %632, %634
  br i1 %635, label %636, label %641

636:                                              ; preds = %629
  %637 = getelementptr inbounds %struct.xhci_virt_device, ptr %623, i32 0, i32 5
  %638 = load i8, ptr %637, align 4
  %639 = zext i8 %638 to i16
  %640 = icmp eq i16 %618, %639
  br i1 %640, label %644, label %641

641:                                              ; preds = %636, %629, %625, %620
  %642 = add nuw nsw i32 %621, 1
  %643 = icmp eq i32 %642, 256
  br i1 %643, label %701, label %620

644:                                              ; preds = %636
  %645 = icmp eq i32 %621, 0
  br i1 %645, label %701, label %646

646:                                              ; preds = %678, %644
  %647 = phi ptr [ %679, %678 ], [ %623, %644 ]
  %648 = phi i32 [ %676, %678 ], [ 0, %644 ]
  %649 = getelementptr %struct.xhci_virt_device, ptr %647, i32 0, i32 4, i32 %648, i32 5
  %650 = load i32, ptr %649, align 4
  %651 = and i32 %650, 16
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %666, label %653

653:                                              ; preds = %646
  %654 = getelementptr %struct.xhci_virt_device, ptr %647, i32 0, i32 4, i32 %648, i32 3
  %655 = load ptr, ptr %654, align 4
  %656 = getelementptr inbounds %struct.xhci_stream_info, ptr %655, i32 0, i32 1
  %657 = load i32, ptr %656, align 4
  %658 = icmp ugt i32 %657, 1
  br i1 %658, label %659, label %675

659:                                              ; preds = %659, %653
  %660 = phi i32 [ %661, %659 ], [ 1, %653 ]
  tail call void @xhci_ring_ep_doorbell(ptr noundef %568, i32 noundef %621, i32 noundef %648, i32 noundef %660) #11
  %661 = add nuw i32 %660, 1
  %662 = load ptr, ptr %654, align 4
  %663 = getelementptr inbounds %struct.xhci_stream_info, ptr %662, i32 0, i32 1
  %664 = load i32, ptr %663, align 4
  %665 = icmp ult i32 %661, %664
  br i1 %665, label %659, label %675

666:                                              ; preds = %646
  %667 = getelementptr %struct.xhci_virt_device, ptr %647, i32 0, i32 4, i32 %648, i32 2
  %668 = load ptr, ptr %667, align 4
  %669 = icmp eq ptr %668, null
  br i1 %669, label %675, label %670

670:                                              ; preds = %666
  %671 = getelementptr inbounds %struct.xhci_ring, ptr %668, i32 0, i32 4
  %672 = load ptr, ptr %671, align 4
  %673 = icmp eq ptr %672, null
  br i1 %673, label %675, label %674

674:                                              ; preds = %670
  tail call void @xhci_ring_ep_doorbell(ptr noundef %568, i32 noundef %621, i32 noundef %648, i32 noundef 0) #11
  br label %675

675:                                              ; preds = %674, %670, %666, %659, %653
  %676 = add nuw nsw i32 %648, 1
  %677 = icmp eq i32 %676, 31
  br i1 %677, label %689, label %678

678:                                              ; preds = %675
  %679 = load ptr, ptr %622, align 4
  br label %646

680:                                              ; preds = %605
  %681 = load ptr, ptr %419, align 4
  %682 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %681) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !21
  %683 = load ptr, ptr %568, align 8
  %684 = load ptr, ptr %683, align 8
  %685 = getelementptr inbounds %struct.usb_bus, ptr %560, i32 0, i32 2
  %686 = load i32, ptr %685, align 8
  %687 = add i32 %569, 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %684, ptr noundef nonnull @.str.9, i32 noundef %686, i32 noundef %687, i32 noundef %682) #12
  %688 = or i32 %434, 260
  tail call void @_clear_bit(i32 noundef %569, ptr noundef %596) #11
  br label %689

689:                                              ; preds = %680, %675
  %690 = phi i32 [ %688, %680 ], [ %541, %675 ]
  tail call void @usb_hcd_end_port_resume(ptr noundef %560, i32 noundef %569) #11
  %691 = shl nuw i32 1, %569
  %692 = getelementptr inbounds %struct.xhci_hub, ptr %436, i32 0, i32 3, i32 2
  %693 = load i32, ptr %692, align 4
  %694 = or i32 %693, %691
  store i32 %694, ptr %692, align 4
  %695 = xor i32 %691, -1
  %696 = getelementptr inbounds %struct.xhci_hub, ptr %436, i32 0, i32 3, i32 3
  %697 = load i32, ptr %696, align 4
  %698 = and i32 %697, %695
  store i32 %698, ptr %696, align 4
  br label %701

699:                                              ; preds = %590
  %700 = or i32 %434, 260
  br label %701

701:                                              ; preds = %699, %689, %644, %641, %585, %576, %566, %552, %544, %542, %537, %532, %529, %524, %518, %507
  %702 = phi i32 [ %509, %507 ], [ %509, %518 ], [ %509, %524 ], [ %509, %529 ], [ %434, %532 ], [ %541, %537 ], [ %541, %585 ], [ %541, %576 ], [ %690, %689 ], [ %700, %699 ], [ %541, %544 ], [ %541, %552 ], [ %543, %542 ], [ -1, %566 ], [ -1, %644 ], [ -1, %641 ]
  %703 = getelementptr %struct.xhci_hub, ptr %29, i32 0, i32 3, i32 5, i32 %381
  %704 = load i32, ptr %703, align 4
  %705 = icmp eq i32 %704, 0
  br i1 %705, label %706, label %715

706:                                              ; preds = %701
  %707 = getelementptr inbounds %struct.xhci_hub, ptr %29, i32 0, i32 3, i32 6
  %708 = lshr i32 %381, 5
  %709 = getelementptr i32, ptr %707, i32 %708
  %710 = load volatile i32, ptr %709, align 4
  %711 = and i32 %381, 31
  %712 = shl nuw i32 1, %711
  %713 = and i32 %710, %712
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %719, label %715

715:                                              ; preds = %706, %701
  %716 = and i32 %385, 480
  switch i32 %716, label %717 [
    i32 96, label %719
    i32 480, label %719
  ]

717:                                              ; preds = %715
  store i32 0, ptr %703, align 4
  %718 = getelementptr inbounds %struct.xhci_hub, ptr %29, i32 0, i32 3, i32 6
  tail call void @_clear_bit(i32 noundef %381, ptr noundef %718) #11
  tail call void @usb_hcd_end_port_resume(ptr noundef %0, i32 noundef %381) #11
  br label %719

719:                                              ; preds = %717, %715, %715, %706
  %720 = getelementptr inbounds %struct.xhci_hub, ptr %29, i32 0, i32 3, i32 2
  %721 = load i32, ptr %720, align 4
  %722 = shl nuw i32 1, %381
  %723 = and i32 %721, %722
  %724 = icmp eq i32 %723, 0
  %725 = or i32 %702, 262144
  %726 = select i1 %724, i32 %702, i32 %725
  %727 = icmp eq i32 %726, -1
  br i1 %727, label %1060, label %728

728:                                              ; preds = %719
  store i32 %726, ptr %4, align 1
  %729 = icmp eq i16 %2, 2
  br i1 %729, label %730, label %1060

730:                                              ; preds = %728
  %731 = load i32, ptr %24, align 8
  %732 = icmp slt i32 %731, 80
  %733 = icmp ne i16 %5, 8
  %734 = or i1 %733, %732
  br i1 %734, label %735, label %738

735:                                              ; preds = %730
  %736 = load ptr, ptr %16, align 8
  %737 = load ptr, ptr %736, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %737, ptr noundef nonnull @.str) #12
  br label %1060

738:                                              ; preds = %730
  %739 = load ptr, ptr %382, align 4
  %740 = load ptr, ptr %739, align 4
  %741 = getelementptr i32, ptr %740, i32 2
  %742 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %741) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !22
  %743 = lshr i32 %385, 10
  %744 = and i32 %743, 15
  %745 = mul nuw nsw i32 %744, 17
  %746 = lshr i32 %742, 8
  %747 = and i32 %746, 3840
  %748 = or i32 %747, %745
  %749 = and i32 %746, 61440
  %750 = or i32 %748, %749
  %751 = getelementptr i8, ptr %4, i32 4
  store i32 %750, ptr %751, align 1
  br label %1060

752:                                              ; preds = %22
  %753 = icmp eq i16 %2, 5
  %754 = lshr i16 %3, 3
  %755 = and i16 %754, 8160
  %756 = select i1 %753, i16 %755, i16 0
  %757 = zext i16 %756 to i32
  %758 = icmp eq i16 %2, 27
  %759 = and i16 %3, -256
  %760 = select i1 %758, i16 %759, i16 0
  %761 = icmp eq i16 %2, 21
  %762 = lshr i16 %3, 8
  %763 = select i1 %761, i16 %762, i16 0
  %764 = and i16 %3, 255
  %765 = icmp eq i16 %764, 0
  %766 = zext i16 %764 to i32
  %767 = icmp slt i32 %32, %766
  %768 = select i1 %765, i1 true, i1 %767
  br i1 %768, label %1060, label %769

769:                                              ; preds = %752
  %770 = add nsw i16 %764, -1
  %771 = zext i16 %770 to i32
  %772 = getelementptr ptr, ptr %30, i32 %771
  %773 = load ptr, ptr %772, align 4
  %774 = load ptr, ptr %773, align 4
  %775 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %774) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !23
  %776 = icmp eq i32 %775, -1
  br i1 %776, label %777, label %778

777:                                              ; preds = %769
  tail call void @xhci_hc_died(ptr noundef %16) #11
  br label %1060

778:                                              ; preds = %769
  %779 = and i32 %775, 1308688361
  switch i16 %2, label %1060 [
    i16 2, label %780
    i16 5, label %827
    i16 8, label %923
    i16 4, label %924
    i16 27, label %931
    i16 28, label %936
    i16 23, label %943
    i16 24, label %957
    i16 21, label %971
  ]

780:                                              ; preds = %778
  %781 = load ptr, ptr %772, align 4
  %782 = load ptr, ptr %781, align 4
  %783 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %782) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !24
  %784 = and i32 %783, 480
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %794, label %786

786:                                              ; preds = %780
  %787 = load ptr, ptr %772, align 4
  %788 = load ptr, ptr %787, align 4
  %789 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %788) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %790 = and i32 %789, 1308687881
  %791 = or i32 %790, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %792 = load ptr, ptr %787, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %792, i32 %791) #11, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %34) #11
  tail call void @msleep(i32 noundef 10) #11
  %793 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %33) #11
  store i32 %793, ptr %8, align 4
  br label %794

794:                                              ; preds = %786, %780
  %795 = phi i32 [ %793, %786 ], [ %34, %780 ]
  %796 = load ptr, ptr %772, align 4
  %797 = load ptr, ptr %796, align 4
  %798 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %797) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !25
  %799 = and i32 %798, 18
  %800 = icmp ne i32 %799, 2
  %801 = and i32 %798, 480
  %802 = icmp ugt i32 %801, 95
  %803 = or i1 %800, %802
  br i1 %803, label %804, label %810

804:                                              ; preds = %794
  %805 = load ptr, ptr %16, align 8
  %806 = load ptr, ptr %805, align 8
  %807 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 2
  %808 = load i32, ptr %807, align 8
  %809 = add nuw nsw i32 %771, 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %806, ptr noundef nonnull @.str.1, i32 noundef %808, i32 noundef %809) #12
  br label %1060

810:                                              ; preds = %794
  %811 = tail call i32 @xhci_find_slot_id_by_port(ptr noundef %0, ptr noundef %16, i16 noundef zeroext %764)
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %813, label %816

813:                                              ; preds = %810
  %814 = load ptr, ptr %16, align 8
  %815 = load ptr, ptr %814, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %815, ptr noundef nonnull @.str.2) #12
  br label %1060

816:                                              ; preds = %810
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %795) #11
  tail call fastcc void @xhci_stop_device(ptr noundef %16, i32 noundef %811)
  %817 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %33) #11
  %818 = load ptr, ptr %772, align 4
  tail call void @xhci_set_link_state(ptr undef, ptr noundef %818, i32 noundef 96)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %817) #11
  tail call void @msleep(i32 noundef 10) #11
  %819 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %33) #11
  store i32 %819, ptr %8, align 4
  %820 = load ptr, ptr %772, align 4
  %821 = load ptr, ptr %820, align 4
  %822 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %821) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !26
  %823 = shl nuw i32 1, %771
  %824 = getelementptr inbounds %struct.xhci_hub, ptr %29, i32 0, i32 3, i32 3
  %825 = load i32, ptr %824, align 4
  %826 = or i32 %825, %823
  store i32 %826, ptr %824, align 4
  br label %979

827:                                              ; preds = %778
  %828 = load ptr, ptr %772, align 4
  %829 = load ptr, ptr %828, align 4
  %830 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %829) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !27
  switch i32 %757, label %860 [
    i32 128, label %831
    i32 160, label %839
    i32 320, label %844
  ]

831:                                              ; preds = %827
  %832 = and i32 %830, 1308688361
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !28
  tail call void @arm_heavy_mb() #11
  %833 = or i32 %832, 16646146
  %834 = load ptr, ptr %772, align 4
  %835 = load ptr, ptr %834, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %835, i32 %833) #11, !srcloc !11
  %836 = load ptr, ptr %772, align 4
  %837 = load ptr, ptr %836, align 4
  %838 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %837) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !29
  br label %979

839:                                              ; preds = %827
  %840 = load ptr, ptr %772, align 4
  tail call void @xhci_set_link_state(ptr undef, ptr noundef %840, i32 noundef 160)
  %841 = load ptr, ptr %772, align 4
  %842 = load ptr, ptr %841, align 4
  %843 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %842) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !30
  br label %979

844:                                              ; preds = %827
  %845 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 1, i32 0, i32 9, i32 3, i32 1
  %846 = load i32, ptr %845, align 4
  %847 = and i32 %846, 8
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %979, label %849

849:                                              ; preds = %844
  %850 = and i32 %830, 1
  %851 = icmp eq i32 %850, 0
  br i1 %851, label %855, label %852

852:                                              ; preds = %849
  %853 = load ptr, ptr %16, align 8
  %854 = load ptr, ptr %853, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %854, ptr noundef nonnull @.str.3) #12
  br label %1060

855:                                              ; preds = %849
  %856 = load ptr, ptr %772, align 4
  tail call void @xhci_set_link_state(ptr undef, ptr noundef %856, i32 noundef 320)
  %857 = load ptr, ptr %772, align 4
  %858 = load ptr, ptr %857, align 4
  %859 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %858) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !31
  br label %979

860:                                              ; preds = %827
  %861 = and i32 %830, 2
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %979, label %863

863:                                              ; preds = %860
  %864 = icmp ugt i16 %756, 96
  br i1 %864, label %865, label %871

865:                                              ; preds = %863
  %866 = load ptr, ptr %16, align 8
  %867 = load ptr, ptr %866, align 8
  %868 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 2
  %869 = load i32, ptr %868, align 8
  %870 = add nuw nsw i32 %771, 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %867, ptr noundef nonnull @.str.4, i32 noundef %869, i32 noundef %870, i32 noundef %757) #12
  br label %1060

871:                                              ; preds = %863
  switch i32 %757, label %979 [
    i32 0, label %872
    i32 96, label %896
  ]

872:                                              ; preds = %871
  %873 = and i32 %830, 480
  switch i32 %873, label %876 [
    i32 0, label %979
    i32 480, label %874
    i32 256, label %874
    i32 96, label %874
  ]

874:                                              ; preds = %872, %872, %872
  %875 = getelementptr %struct.xhci_hub, ptr %29, i32 0, i32 3, i32 9, i32 %771
  store i32 0, ptr %875, align 4
  br label %876

876:                                              ; preds = %874, %872
  %877 = icmp ult i32 %873, 97
  br i1 %877, label %878, label %885

878:                                              ; preds = %876
  %879 = load ptr, ptr %772, align 4
  %880 = load ptr, ptr %879, align 4
  %881 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %880) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %882 = and i32 %881, 1308687881
  %883 = or i32 %882, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %884 = load ptr, ptr %879, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %884, i32 %883) #11, !srcloc !11
  br label %885

885:                                              ; preds = %878, %876
  switch i32 %873, label %886 [
    i32 480, label %888
    i32 256, label %888
    i32 96, label %888
  ]

886:                                              ; preds = %885
  %887 = icmp ugt i32 %873, 96
  br i1 %887, label %1060, label %979

888:                                              ; preds = %885, %885, %885
  %889 = load i32, ptr %8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %889) #11
  %890 = getelementptr %struct.xhci_hub, ptr %29, i32 0, i32 3, i32 9, i32 %771
  %891 = tail call i32 @wait_for_completion_timeout(ptr noundef %890, i32 noundef 10) #11
  %892 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %33) #11
  store i32 %892, ptr %8, align 4
  %893 = load ptr, ptr %772, align 4
  %894 = load ptr, ptr %893, align 4
  %895 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %894) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !32
  br label %979

896:                                              ; preds = %871
  %897 = tail call i32 @xhci_find_slot_id_by_port(ptr noundef %0, ptr noundef %16, i16 noundef zeroext %764)
  %898 = icmp eq i32 %897, 0
  br i1 %898, label %901, label %899

899:                                              ; preds = %896
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %34) #11
  tail call fastcc void @xhci_stop_device(ptr noundef %16, i32 noundef %897)
  %900 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %33) #11
  br label %901

901:                                              ; preds = %899, %896
  %902 = phi i32 [ %900, %899 ], [ %34, %896 ]
  %903 = load ptr, ptr %772, align 4
  tail call void @xhci_set_link_state(ptr undef, ptr noundef %903, i32 noundef 96)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %902) #11
  br label %904

904:                                              ; preds = %907, %901
  %905 = phi i32 [ 16, %901 ], [ %908, %907 ]
  %906 = icmp eq i32 %905, 0
  br i1 %906, label %914, label %907

907:                                              ; preds = %904
  %908 = add nsw i32 %905, -1
  tail call void @usleep_range_state(i32 noundef 4000, i32 noundef 8000, i32 noundef 2) #11
  %909 = load ptr, ptr %772, align 4
  %910 = load ptr, ptr %909, align 4
  %911 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %910) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !33
  %912 = and i32 %911, 480
  %913 = icmp eq i32 %912, 96
  br i1 %913, label %914, label %904

914:                                              ; preds = %907, %904
  %915 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %33) #11
  store i32 %915, ptr %8, align 4
  %916 = load ptr, ptr %772, align 4
  %917 = load ptr, ptr %916, align 4
  %918 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %917) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !34
  %919 = shl nuw i32 1, %771
  %920 = getelementptr inbounds %struct.xhci_hub, ptr %29, i32 0, i32 3, i32 3
  %921 = load i32, ptr %920, align 4
  %922 = or i32 %921, %919
  store i32 %922, ptr %920, align 4
  br label %979

923:                                              ; preds = %778
  call fastcc void @xhci_set_port_power(ptr noundef %16, ptr noundef %0, i16 noundef zeroext %770, i1 noundef zeroext true, ptr noundef nonnull %8)
  br label %979

924:                                              ; preds = %778
  %925 = or i32 %779, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !35
  tail call void @arm_heavy_mb() #11
  %926 = load ptr, ptr %772, align 4
  %927 = load ptr, ptr %926, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %927, i32 %925) #11, !srcloc !11
  %928 = load ptr, ptr %772, align 4
  %929 = load ptr, ptr %928, align 4
  %930 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %929) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !36
  br label %979

931:                                              ; preds = %778
  %932 = load ptr, ptr %772, align 4
  tail call fastcc void @xhci_set_remote_wake_mask(ptr noundef %932, i16 noundef zeroext %760)
  %933 = load ptr, ptr %772, align 4
  %934 = load ptr, ptr %933, align 4
  %935 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %934) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !37
  br label %979

936:                                              ; preds = %778
  %937 = or i32 %779, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !38
  tail call void @arm_heavy_mb() #11
  %938 = load ptr, ptr %772, align 4
  %939 = load ptr, ptr %938, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %939, i32 %937) #11, !srcloc !11
  %940 = load ptr, ptr %772, align 4
  %941 = load ptr, ptr %940, align 4
  %942 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %941) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !39
  br label %979

943:                                              ; preds = %778
  %944 = load i32, ptr %24, align 8
  %945 = icmp slt i32 %944, 64
  br i1 %945, label %1060, label %946

946:                                              ; preds = %943
  %947 = load ptr, ptr %772, align 4
  %948 = load ptr, ptr %947, align 4
  %949 = getelementptr i32, ptr %948, i32 1
  %950 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %949) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !40
  %951 = and i32 %950, -256
  %952 = zext i16 %762 to i32
  %953 = or i32 %951, %952
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !41
  tail call void @arm_heavy_mb() #11
  %954 = load ptr, ptr %772, align 4
  %955 = load ptr, ptr %954, align 4
  %956 = getelementptr i32, ptr %955, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %956, i32 %953) #11, !srcloc !11
  br label %979

957:                                              ; preds = %778
  %958 = load i32, ptr %24, align 8
  %959 = icmp slt i32 %958, 64
  br i1 %959, label %1060, label %960

960:                                              ; preds = %957
  %961 = load ptr, ptr %772, align 4
  %962 = load ptr, ptr %961, align 4
  %963 = getelementptr i32, ptr %962, i32 1
  %964 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %963) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !42
  %965 = and i32 %964, -65281
  %966 = zext i16 %759 to i32
  %967 = or i32 %965, %966
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !43
  tail call void @arm_heavy_mb() #11
  %968 = load ptr, ptr %772, align 4
  %969 = load ptr, ptr %968, align 4
  %970 = getelementptr i32, ptr %969, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %970, i32 %967) #11, !srcloc !11
  br label %979

971:                                              ; preds = %778
  %972 = load i32, ptr %24, align 8
  %973 = icmp ne i32 %972, 32
  %974 = add nsw i16 %763, -6
  %975 = icmp ult i16 %974, -5
  %976 = select i1 %973, i1 true, i1 %975
  br i1 %976, label %1060, label %977

977:                                              ; preds = %971
  %978 = call fastcc i32 @xhci_enter_test_mode(ptr noundef %16, i16 noundef zeroext %763, i16 noundef zeroext %770, ptr noundef nonnull %8)
  br label %979

979:                                              ; preds = %977, %960, %946, %936, %931, %924, %923, %914, %888, %886, %872, %871, %860, %855, %844, %839, %831, %816
  %980 = phi i32 [ %978, %977 ], [ 0, %960 ], [ 0, %946 ], [ 0, %936 ], [ 0, %931 ], [ 0, %924 ], [ 0, %923 ], [ 0, %831 ], [ 0, %839 ], [ 0, %855 ], [ 0, %844 ], [ 0, %914 ], [ 0, %816 ], [ -19, %860 ], [ 0, %871 ], [ 0, %888 ], [ %873, %872 ], [ 0, %886 ]
  %981 = load ptr, ptr %772, align 4
  %982 = load ptr, ptr %981, align 4
  %983 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %982) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !44
  br label %1060

984:                                              ; preds = %22
  %985 = icmp eq i16 %3, 0
  %986 = zext i16 %3 to i32
  %987 = icmp slt i32 %32, %986
  %988 = select i1 %985, i1 true, i1 %987
  br i1 %988, label %1060, label %989

989:                                              ; preds = %984
  %990 = add i16 %3, -1
  %991 = zext i16 %990 to i32
  %992 = getelementptr ptr, ptr %30, i32 %991
  %993 = load ptr, ptr %992, align 4
  %994 = load ptr, ptr %993, align 4
  %995 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %994) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !45
  %996 = icmp eq i32 %995, -1
  br i1 %996, label %997, label %998

997:                                              ; preds = %989
  tail call void @xhci_hc_died(ptr noundef %16) #11
  br label %1060

998:                                              ; preds = %989
  %999 = and i32 %995, 1308688361
  switch i16 %2, label %1060 [
    i16 2, label %1000
    i16 18, label %1030
    i16 20, label %1038
    i16 29, label %1038
    i16 16, label %1038
    i16 19, label %1038
    i16 17, label %1038
    i16 25, label %1038
    i16 26, label %1038
    i16 1, label %1054
    i16 8, label %1057
    i16 21, label %1058
  ]

1000:                                             ; preds = %998
  %1001 = load ptr, ptr %992, align 4
  %1002 = load ptr, ptr %1001, align 4
  %1003 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1002) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !46
  %1004 = and i32 %1003, 16
  %1005 = icmp eq i32 %1004, 0
  br i1 %1005, label %1006, label %1060

1006:                                             ; preds = %1000
  %1007 = and i32 %1003, 480
  %1008 = icmp eq i32 %1007, 96
  br i1 %1008, label %1009, label %1022

1009:                                             ; preds = %1006
  %1010 = and i32 %1003, 2
  %1011 = icmp eq i32 %1010, 0
  br i1 %1011, label %1060, label %1012

1012:                                             ; preds = %1009
  %1013 = getelementptr inbounds %struct.xhci_hub, ptr %29, i32 0, i32 3, i32 6
  tail call void @_set_bit(i32 noundef %991, ptr noundef %1013) #11
  tail call void @usb_hcd_start_port_resume(ptr noundef %0, i32 noundef %991) #11
  %1014 = load ptr, ptr %992, align 4
  tail call void @xhci_set_link_state(ptr undef, ptr noundef %1014, i32 noundef 480)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %34) #11
  tail call void @msleep(i32 noundef 40) #11
  %1015 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %33) #11
  store i32 %1015, ptr %8, align 4
  %1016 = load ptr, ptr %992, align 4
  %1017 = load ptr, ptr %1016, align 4
  %1018 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1017) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %1019 = and i32 %1018, 1308687881
  %1020 = or i32 %1019, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %1021 = load ptr, ptr %1016, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1021, i32 %1020) #11, !srcloc !11
  tail call void @_clear_bit(i32 noundef %991, ptr noundef %1013) #11
  tail call void @usb_hcd_end_port_resume(ptr noundef %0, i32 noundef %991) #11
  br label %1022

1022:                                             ; preds = %1012, %1006
  %1023 = shl nuw i32 1, %991
  %1024 = getelementptr inbounds %struct.xhci_hub, ptr %29, i32 0, i32 3, i32 2
  %1025 = load i32, ptr %1024, align 4
  %1026 = or i32 %1025, %1023
  store i32 %1026, ptr %1024, align 4
  %1027 = tail call i32 @xhci_find_slot_id_by_port(ptr noundef %0, ptr noundef %16, i16 noundef zeroext %3)
  %1028 = icmp eq i32 %1027, 0
  br i1 %1028, label %1060, label %1029

1029:                                             ; preds = %1022
  tail call void @xhci_ring_device(ptr noundef %16, i32 noundef %1027)
  br label %1060

1030:                                             ; preds = %998
  %1031 = shl nuw i32 1, %991
  %1032 = xor i32 %1031, -1
  %1033 = getelementptr inbounds %struct.xhci_hub, ptr %29, i32 0, i32 3, i32 2
  %1034 = load i32, ptr %1033, align 4
  %1035 = and i32 %1034, %1032
  store i32 %1035, ptr %1033, align 4
  %1036 = load ptr, ptr %992, align 4
  %1037 = load ptr, ptr %1036, align 4
  br label %1045

1038:                                             ; preds = %998, %998, %998, %998, %998, %998, %998
  %1039 = load ptr, ptr %992, align 4
  %1040 = load ptr, ptr %1039, align 4
  switch i16 %2, label %1060 [
    i16 20, label %1049
    i16 29, label %1041
    i16 16, label %1042
    i16 19, label %1043
    i16 17, label %1044
    i16 18, label %1045
    i16 25, label %1047
    i16 26, label %1048
  ]

1041:                                             ; preds = %1038
  br label %1049

1042:                                             ; preds = %1038
  br label %1049

1043:                                             ; preds = %1038
  br label %1049

1044:                                             ; preds = %1038
  br label %1049

1045:                                             ; preds = %1038, %1030
  %1046 = phi ptr [ %1037, %1030 ], [ %1040, %1038 ]
  br label %1049

1047:                                             ; preds = %1038
  br label %1049

1048:                                             ; preds = %1038
  br label %1049

1049:                                             ; preds = %1048, %1047, %1045, %1044, %1043, %1042, %1041, %1038
  %1050 = phi ptr [ %1040, %1048 ], [ %1040, %1047 ], [ %1046, %1045 ], [ %1040, %1044 ], [ %1040, %1043 ], [ %1040, %1042 ], [ %1040, %1041 ], [ %1040, %1038 ]
  %1051 = phi i32 [ 8388608, %1048 ], [ 4194304, %1047 ], [ 4194304, %1045 ], [ 262144, %1044 ], [ 1048576, %1043 ], [ 131072, %1042 ], [ 524288, %1041 ], [ 2097152, %1038 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !47
  tail call void @arm_heavy_mb() #11
  %1052 = or i32 %1051, %999
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1050, i32 %1052) #11, !srcloc !11
  %1053 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1050) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !48
  br label %1060

1054:                                             ; preds = %998
  %1055 = load ptr, ptr %992, align 4
  %1056 = load ptr, ptr %1055, align 4
  tail call fastcc void @xhci_disable_port(ptr noundef %0, ptr noundef %16, ptr noundef %1056, i32 noundef %999)
  br label %1060

1057:                                             ; preds = %998
  call fastcc void @xhci_set_port_power(ptr noundef %16, ptr noundef %0, i16 noundef zeroext %990, i1 noundef zeroext false, ptr noundef nonnull %8)
  br label %1060

1058:                                             ; preds = %998
  %1059 = tail call fastcc i32 @xhci_exit_test_mode(ptr noundef %16)
  br label %1060

1060:                                             ; preds = %1058, %1057, %1054, %1049, %1038, %1029, %1022, %1009, %1000, %998, %997, %984, %979, %971, %957, %943, %886, %865, %852, %813, %804, %778, %777, %752, %738, %735, %728, %719, %387, %374, %143, %140, %139, %77, %39, %35, %22
  %1061 = phi i32 [ -19, %997 ], [ %1059, %1058 ], [ 0, %1057 ], [ 0, %1054 ], [ 0, %1029 ], [ -19, %777 ], [ %980, %979 ], [ -19, %387 ], [ 0, %728 ], [ 0, %35 ], [ -22, %735 ], [ 0, %738 ], [ -32, %22 ], [ -32, %998 ], [ -32, %1022 ], [ -32, %1009 ], [ -32, %1000 ], [ -32, %984 ], [ -32, %778 ], [ -32, %971 ], [ -32, %957 ], [ -32, %943 ], [ -32, %752 ], [ -32, %719 ], [ -32, %374 ], [ -32, %143 ], [ -32, %140 ], [ -32, %39 ], [ -32, %865 ], [ -32, %852 ], [ -32, %813 ], [ -32, %804 ], [ 0, %77 ], [ 0, %139 ], [ -32, %886 ], [ 0, %1038 ], [ 0, %1049 ]
  %1062 = load i32, ptr %8, align 4
  br label %1063

1063:                                             ; preds = %1060, %371
  %1064 = phi i32 [ %1062, %1060 ], [ %34, %371 ]
  %1065 = phi i32 [ %1061, %1060 ], [ %373, %371 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %1064) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  ret i32 %1065
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_hc_died(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xhci_stop_device(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 42, i32 %1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %70, label %6

6:                                                ; preds = %2
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_stop_device, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = tail call ptr @llvm.thread.pointer() #11
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !49
  %21 = tail call i32 @__traceiter_xhci_stop_device(ptr noundef null, ptr noundef nonnull %4) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !50
  br label %22

22:                                               ; preds = %20, %9, %6
  %23 = tail call ptr @xhci_alloc_command(ptr noundef %0, i1 noundef zeroext true, i32 noundef 3072) #11
  %24 = icmp eq ptr %23, null
  br i1 %24, label %70, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 12
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #11
  %28 = getelementptr inbounds %struct.xhci_virt_device, ptr %4, i32 0, i32 2
  br label %29

29:                                               ; preds = %52, %25
  %30 = phi i32 [ 30, %25 ], [ %53, %52 ]
  %31 = getelementptr %struct.xhci_virt_device, ptr %4, i32 0, i32 4, i32 %30, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %52, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.xhci_ring, ptr %32, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %52, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %28, align 4
  %40 = tail call ptr @xhci_get_ep_ctx(ptr noundef %0, ptr noundef %39, i32 noundef %30) #11
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 7
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = tail call ptr @xhci_alloc_command(ptr noundef %0, i1 noundef zeroext false, i32 noundef 2048) #11
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #11
  br label %69

48:                                               ; preds = %44
  %49 = tail call i32 @xhci_queue_stop_endpoint(ptr noundef %0, ptr noundef nonnull %45, i32 noundef %1, i32 noundef %30, i32 noundef 1) #11
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #11
  tail call void @xhci_free_command(ptr noundef %0, ptr noundef nonnull %45) #11
  br label %69

52:                                               ; preds = %48, %38, %34, %29
  %53 = add nsw i32 %30, -1
  %54 = icmp ugt i32 %30, 1
  br i1 %54, label %29, label %55

55:                                               ; preds = %52
  %56 = tail call i32 @xhci_queue_stop_endpoint(ptr noundef %0, ptr noundef nonnull %23, i32 noundef %1, i32 noundef 0, i32 noundef 1) #11
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #11
  br label %69

59:                                               ; preds = %55
  tail call void @xhci_ring_cmd_db(ptr noundef %0) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #11
  %60 = getelementptr inbounds %struct.xhci_command, ptr %23, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  tail call void @wait_for_completion(ptr noundef %61) #11
  %62 = getelementptr inbounds %struct.xhci_command, ptr %23, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, -2
  %65 = icmp eq i32 %64, 24
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load ptr, ptr %0, align 8
  %68 = load ptr, ptr %67, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %68, ptr noundef nonnull @.str.10) #12
  br label %69

69:                                               ; preds = %66, %59, %58, %51, %47
  tail call void @xhci_free_command(ptr noundef %0, ptr noundef nonnull %23) #11
  br label %70

70:                                               ; preds = %69, %22, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xhci_set_port_power(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, i1 noundef zeroext %3, ptr nocapture noundef %4) unnamed_addr #3 {
  %6 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %1) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 25
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %5
  %12 = phi ptr [ %10, %8 ], [ %1, %5 ]
  %13 = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 3
  %14 = load i32, ptr %13, align 8
  %15 = icmp sgt i32 %14, 63
  %16 = getelementptr inbounds %struct.usb_hcd, ptr %12, i32 8, i32 0, i32 10, i32 0, i32 3
  %17 = getelementptr inbounds %struct.usb_hcd, ptr %12, i32 4, i32 21, i32 4
  %18 = select i1 %15, ptr %16, ptr %17
  %19 = load ptr, ptr %18, align 4
  %20 = zext i16 %2 to i32
  %21 = getelementptr ptr, ptr %19, i32 %20
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !51
  br i1 %3, label %25, label %31

25:                                               ; preds = %11
  %26 = and i32 %24, 1308687849
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !52
  tail call void @arm_heavy_mb() #11
  %27 = or i32 %26, 512
  %28 = load ptr, ptr %22, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %27) #11, !srcloc !11
  %29 = load ptr, ptr %22, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !53
  br label %34

31:                                               ; preds = %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !54
  tail call void @arm_heavy_mb() #11
  %32 = and i32 %24, 1308687849
  %33 = load ptr, ptr %22, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %32) #11, !srcloc !11
  br label %34

34:                                               ; preds = %31, %25
  %35 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 12
  %36 = load i32, ptr %4, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %35, i32 noundef %36) #11
  %37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %35) #11
  store i32 %37, ptr %4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xhci_set_remote_wake_mask(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) unnamed_addr #3 {
  %3 = load ptr, ptr %0, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !55
  %5 = and i32 %4, 1275133929
  %6 = zext i16 %1 to i32
  %7 = shl i32 %6, 17
  %8 = and i32 %7, 33554432
  %9 = or i32 %8, %5
  %10 = and i32 %6, 512
  %11 = icmp eq i32 %10, 0
  %12 = or i32 %9, 67108864
  %13 = and i32 %9, 1241579497
  %14 = select i1 %11, i32 %13, i32 %12
  %15 = and i32 %6, 1024
  %16 = icmp eq i32 %15, 0
  %17 = or i32 %14, 134217728
  %18 = and i32 %14, 1174470633
  %19 = select i1 %16, i32 %18, i32 %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %20 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %19) #11, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xhci_enter_test_mode(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef %3) unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 12
  %6 = load i32, ptr %3, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #11
  %7 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %22, %4
  %12 = phi i32 [ %23, %22 ], [ 1, %4 ]
  %13 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 42, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = tail call i32 @xhci_disable_slot(ptr noundef %0, i32 noundef %12) #11
  tail call void @xhci_free_virt_device(ptr noundef %0, i32 noundef %12) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %0, align 8
  %21 = load ptr, ptr %20, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.11, i32 noundef %12, i32 noundef %17) #12
  br label %22

22:                                               ; preds = %19, %16, %11
  %23 = add nuw nsw i32 %12, 1
  %24 = load i32, ptr %7, align 4
  %25 = and i32 %24, 255
  %26 = icmp ult i32 %12, %25
  br i1 %26, label %11, label %27

27:                                               ; preds = %22, %4
  %28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #11
  store i32 %28, ptr %3, align 4
  %29 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 56, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 1
  br label %38

34:                                               ; preds = %46, %27
  %35 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 55, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %96, label %67

38:                                               ; preds = %46, %32
  %39 = phi i32 [ 0, %32 ], [ %64, %46 ]
  %40 = load ptr, ptr %33, align 4
  %41 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %40) #11
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.usb_hcd, ptr %40, i32 0, i32 25
  %45 = load ptr, ptr %44, align 4
  br label %46

46:                                               ; preds = %43, %38
  %47 = phi ptr [ %45, %43 ], [ %40, %38 ]
  %48 = getelementptr inbounds %struct.usb_hcd, ptr %40, i32 0, i32 3
  %49 = load i32, ptr %48, align 8
  %50 = icmp sgt i32 %49, 63
  %51 = getelementptr inbounds %struct.usb_hcd, ptr %47, i32 8, i32 0, i32 10, i32 0, i32 3
  %52 = getelementptr inbounds %struct.usb_hcd, ptr %47, i32 4, i32 21, i32 4
  %53 = select i1 %50, ptr %51, ptr %52
  %54 = load ptr, ptr %53, align 4
  %55 = and i32 %39, 65535
  %56 = getelementptr ptr, ptr %54, i32 %55
  %57 = load ptr, ptr %56, align 4
  %58 = load ptr, ptr %57, align 4
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !51
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !54
  tail call void @arm_heavy_mb() #11
  %60 = and i32 %59, 1308687849
  %61 = load ptr, ptr %57, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %60) #11, !srcloc !11
  %62 = load i32, ptr %3, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %62) #11
  %63 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #11
  store i32 %63, ptr %3, align 4
  %64 = add nuw i32 %39, 1
  %65 = load i32, ptr %29, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %38, label %34

67:                                               ; preds = %75, %34
  %68 = phi i32 [ %93, %75 ], [ 0, %34 ]
  %69 = load ptr, ptr %0, align 8
  %70 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %69) #11
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.usb_hcd, ptr %69, i32 0, i32 25
  %74 = load ptr, ptr %73, align 4
  br label %75

75:                                               ; preds = %72, %67
  %76 = phi ptr [ %74, %72 ], [ %69, %67 ]
  %77 = getelementptr inbounds %struct.usb_hcd, ptr %69, i32 0, i32 3
  %78 = load i32, ptr %77, align 8
  %79 = icmp sgt i32 %78, 63
  %80 = getelementptr inbounds %struct.usb_hcd, ptr %76, i32 8, i32 0, i32 10, i32 0, i32 3
  %81 = getelementptr inbounds %struct.usb_hcd, ptr %76, i32 4, i32 21, i32 4
  %82 = select i1 %79, ptr %80, ptr %81
  %83 = load ptr, ptr %82, align 4
  %84 = and i32 %68, 65535
  %85 = getelementptr ptr, ptr %83, i32 %84
  %86 = load ptr, ptr %85, align 4
  %87 = load ptr, ptr %86, align 4
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !51
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !54
  tail call void @arm_heavy_mb() #11
  %89 = and i32 %88, 1308687849
  %90 = load ptr, ptr %86, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %89) #11, !srcloc !11
  %91 = load i32, ptr %3, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %91) #11
  %92 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #11
  store i32 %92, ptr %3, align 4
  %93 = add nuw i32 %68, 1
  %94 = load i32, ptr %35, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %67, label %96

96:                                               ; preds = %75, %34
  %97 = tail call i32 @xhci_halt(ptr noundef %0) #11
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %119

99:                                               ; preds = %96
  %100 = load ptr, ptr %0, align 8
  %101 = load ptr, ptr %100, align 8
  tail call void @pm_runtime_forbid(ptr noundef %101) #11
  %102 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 55
  %103 = load ptr, ptr %102, align 4
  %104 = zext i16 %2 to i32
  %105 = getelementptr ptr, ptr %103, i32 %104
  %106 = load ptr, ptr %105, align 4
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr i32, ptr %107, i32 1
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !57
  %110 = zext i16 %1 to i32
  %111 = shl i32 %110, 28
  %112 = or i32 %109, %111
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !58
  tail call void @arm_heavy_mb() #11
  %113 = load ptr, ptr %106, align 4
  %114 = getelementptr i32, ptr %113, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %112) #11, !srcloc !11
  %115 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 64
  store i16 %1, ptr %115, align 8
  %116 = icmp eq i16 %1, 5
  br i1 %116, label %117, label %119

117:                                              ; preds = %99
  %118 = tail call i32 @xhci_start(ptr noundef %0) #11
  br label %119

119:                                              ; preds = %117, %99, %96
  ret i32 %97
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_start_port_resume(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_end_port_resume(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xhci_disable_port(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 8
  %7 = icmp sgt i32 %6, 63
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 33554432
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !59
  tail call void @arm_heavy_mb() #11
  %14 = or i32 %3, 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %14) #11, !srcloc !11
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !60
  br label %16

16:                                               ; preds = %13, %8, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xhci_exit_test_mode(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 64
  %3 = load i16, ptr %2, align 8
  switch i16 %3, label %15 [
    i16 0, label %4
    i16 5, label %7
  ]

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8
  %6 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.20) #12
  br label %19

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 48
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = tail call i32 @xhci_halt(ptr noundef %0) #11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12, %7, %1
  %16 = load ptr, ptr %0, align 8
  %17 = load ptr, ptr %16, align 8
  tail call void @pm_runtime_allow(ptr noundef %17) #11
  store i16 0, ptr %2, align 8
  %18 = tail call i32 @xhci_reset(ptr noundef %0) #11
  br label %19

19:                                               ; preds = %15, %12, %4
  %20 = phi i32 [ %18, %15 ], [ 0, %4 ], [ %13, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_hub_status_data(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #3 {
  %3 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #11
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %7, %5 ], [ %0, %2 ]
  %10 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 29
  %11 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %8
  %17 = phi ptr [ %15, %13 ], [ %0, %8 ]
  %18 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 8
  %20 = icmp sgt i32 %19, 63
  %21 = getelementptr inbounds %struct.usb_hcd, ptr %17, i32 8, i32 0, i32 10, i32 0, i32 3
  %22 = getelementptr inbounds %struct.usb_hcd, ptr %17, i32 4, i32 21, i32 4
  %23 = select i1 %20, ptr %21, ptr %22
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.xhci_hub, ptr %23, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 8
  %28 = sdiv i32 %27, 8
  tail call void @llvm.memset.p0.i32(ptr align 1 %1, i8 0, i32 %28, i1 false)
  %29 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 1, i32 0, i32 10
  %30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %29) #11
  %31 = getelementptr inbounds %struct.xhci_hub, ptr %23, i32 0, i32 3, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = icmp sgt i32 %26, 0
  br i1 %33, label %34, label %97

34:                                               ; preds = %16
  %35 = getelementptr inbounds %struct.xhci_hub, ptr %23, i32 0, i32 3, i32 2
  br label %36

36:                                               ; preds = %87, %34
  %37 = phi i32 [ %32, %34 ], [ %94, %87 ]
  %38 = phi i32 [ 0, %34 ], [ %95, %87 ]
  %39 = phi i1 [ false, %34 ], [ %91, %87 ]
  %40 = getelementptr ptr, ptr %24, i32 %38
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !61
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  tail call void @xhci_hc_died(ptr noundef %10) #11
  br label %97

46:                                               ; preds = %36
  %47 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_hub_status_data, i32 0, i32 1), align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = tail call ptr @llvm.thread.pointer() #11
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !62
  %61 = tail call i32 @__traceiter_xhci_hub_status_data(ptr noundef null, i32 noundef %38, i32 noundef %43) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !63
  br label %62

62:                                               ; preds = %60, %49, %46
  %63 = and i32 %43, 14548992
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = load i32, ptr %35, align 4
  %67 = shl nuw i32 1, %38
  %68 = and i32 %66, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = getelementptr %struct.xhci_hub, ptr %23, i32 0, i32 3, i32 5, i32 %38
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %87, label %74

74:                                               ; preds = %70
  %75 = load volatile i32, ptr @jiffies, align 64
  %76 = sub i32 %75, %72
  %77 = icmp sgt i32 %76, -1
  br i1 %77, label %78, label %87

78:                                               ; preds = %74, %65, %62
  %79 = add nuw nsw i32 %38, 1
  %80 = and i32 %79, 7
  %81 = shl nuw nsw i32 1, %80
  %82 = lshr i32 %79, 3
  %83 = getelementptr i8, ptr %1, i32 %82
  %84 = load i8, ptr %83, align 1
  %85 = trunc i32 %81 to i8
  %86 = or i8 %84, %85
  store i8 %86, ptr %83, align 1
  br label %87

87:                                               ; preds = %78, %74, %70
  %88 = phi i32 [ 1, %78 ], [ %37, %74 ], [ %37, %70 ]
  %89 = and i32 %43, 2097152
  %90 = icmp ne i32 %89, 0
  %91 = select i1 %90, i1 true, i1 %39
  %92 = and i32 %43, 8
  %93 = icmp eq i32 %92, 0
  %94 = select i1 %93, i32 %88, i32 1
  %95 = add nuw nsw i32 %38, 1
  %96 = icmp eq i32 %95, %26
  br i1 %96, label %97, label %36

97:                                               ; preds = %87, %45, %16
  %98 = phi i1 [ %39, %45 ], [ false, %16 ], [ %91, %87 ]
  %99 = phi i32 [ %37, %45 ], [ %32, %16 ], [ %94, %87 ]
  %100 = phi i32 [ -19, %45 ], [ %28, %16 ], [ %28, %87 ]
  %101 = icmp ne i32 %99, 0
  %102 = select i1 %101, i1 true, i1 %98
  %103 = select i1 %101, i32 %100, i32 0
  br i1 %102, label %106, label %104

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %105) #11
  br label %106

106:                                              ; preds = %104, %97
  %107 = phi i32 [ 0, %104 ], [ %103, %97 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %30) #11
  ret i32 %107
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_bus_suspend(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca [31 x i32], align 4
  %3 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #11
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %7, %5 ], [ %0, %1 ]
  %10 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(124) %2, i8 0, i32 124, i1 false), !annotation !64
  %11 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %8
  %17 = phi ptr [ %15, %13 ], [ %0, %8 ]
  %18 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 8
  %20 = icmp sgt i32 %19, 63
  %21 = getelementptr inbounds %struct.usb_hcd, ptr %17, i32 8, i32 0, i32 10, i32 0, i32 3
  %22 = getelementptr inbounds %struct.usb_hcd, ptr %17, i32 4, i32 21, i32 4
  %23 = select i1 %20, ptr %21, ptr %22
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.xhci_hub, ptr %23, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.xhci_hub, ptr %23, i32 0, i32 3
  %28 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 11
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 40
  %31 = load i8, ptr %30, align 8
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  %34 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 1, i32 0, i32 10
  %35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %34) #11
  br i1 %33, label %45, label %36

36:                                               ; preds = %16
  %37 = getelementptr inbounds %struct.xhci_hub, ptr %23, i32 0, i32 3, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.xhci_hub, ptr %23, i32 0, i32 3, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40, %36
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %35) #11
  br label %184

45:                                               ; preds = %40, %16
  store i32 0, ptr %27, align 4
  %46 = icmp eq i32 %26, 0
  br i1 %46, label %120, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 4, i32 21, i32 3, i32 1
  br label %49

49:                                               ; preds = %118, %47
  %50 = phi i32 [ %26, %47 ], [ %52, %118 ]
  %51 = phi i32 [ %35, %47 ], [ %78, %118 ]
  %52 = add i32 %50, -1
  %53 = getelementptr ptr, ptr %24, i32 %52
  %54 = load ptr, ptr %53, align 4
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !65
  %57 = getelementptr [31 x i32], ptr %2, i32 0, i32 %52
  store i32 0, ptr %57, align 4
  %58 = load i32, ptr %18, align 8
  %59 = icmp sgt i32 %58, 63
  br i1 %59, label %60, label %76

60:                                               ; preds = %68, %49
  %61 = phi i32 [ %73, %68 ], [ %56, %49 ]
  %62 = phi i32 [ %70, %68 ], [ %51, %49 ]
  %63 = phi i32 [ %69, %68 ], [ 10, %49 ]
  %64 = icmp ne i32 %63, 0
  %65 = and i32 %61, 480
  %66 = icmp eq i32 %65, 224
  %67 = select i1 %64, i1 %66, i1 false
  br i1 %67, label %68, label %76

68:                                               ; preds = %60
  %69 = add nsw i32 %63, -1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %62) #11
  tail call void @msleep(i32 noundef 36) #11
  %70 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %34) #11
  %71 = load ptr, ptr %53, align 4
  %72 = load ptr, ptr %71, align 4
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !65
  store i32 0, ptr %57, align 4
  %74 = load i32, ptr %18, align 8
  %75 = icmp sgt i32 %74, 63
  br i1 %75, label %60, label %76

76:                                               ; preds = %68, %60, %49
  %77 = phi i32 [ %56, %49 ], [ %61, %60 ], [ %73, %68 ]
  %78 = phi i32 [ %51, %49 ], [ %62, %60 ], [ %70, %68 ]
  %79 = and i32 %77, 1308688361
  %80 = and i32 %77, 8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %76
  store i32 0, ptr %27, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %78) #11
  br label %184

83:                                               ; preds = %76
  %84 = and i32 %77, 482
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = and i32 %77, 131072
  %88 = icmp eq i32 %87, 0
  %89 = select i1 %88, i1 true, i1 %33
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  store i32 0, ptr %27, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %78) #11
  br label %184

91:                                               ; preds = %86
  %92 = and i32 %77, 1308687881
  %93 = or i32 %92, 65632
  tail call void @_set_bit(i32 noundef %52, ptr noundef %27) #11
  br label %94

94:                                               ; preds = %91, %83
  %95 = phi i32 [ %93, %91 ], [ %79, %83 ]
  br i1 %33, label %112, label %96

96:                                               ; preds = %94
  %97 = and i32 %77, 1
  %98 = icmp eq i32 %97, 0
  %99 = and i32 %95, -234881025
  %100 = select i1 %98, i32 167772160, i32 201326592
  %101 = or i32 %99, %100
  %102 = load i64, ptr %48, align 8
  %103 = and i64 %102, 134217728
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %114, label %105

105:                                              ; preds = %96
  %106 = load i32, ptr %18, align 8
  %107 = icmp slt i32 %106, 64
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load ptr, ptr %0, align 8
  %110 = tail call zeroext i1 @usb_amd_pt_check_port(ptr noundef %109, i32 noundef %52) #11
  %111 = select i1 %110, i32 %99, i32 %101
  br label %114

112:                                              ; preds = %94
  %113 = and i32 %95, -234881025
  br label %114

114:                                              ; preds = %112, %108, %105, %96
  %115 = phi i32 [ %101, %105 ], [ %101, %96 ], [ %113, %112 ], [ %111, %108 ]
  %116 = icmp eq i32 %79, %115
  br i1 %116, label %118, label %117

117:                                              ; preds = %114
  store i32 %115, ptr %57, align 4
  br label %118

118:                                              ; preds = %117, %114
  %119 = icmp eq i32 %52, 0
  br i1 %119, label %120, label %49

120:                                              ; preds = %118, %45
  %121 = phi i32 [ %35, %45 ], [ %78, %118 ]
  br label %173

122:                                              ; preds = %173, %125
  %123 = phi i32 [ %126, %125 ], [ %175, %173 ]
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %176, label %125

125:                                              ; preds = %122
  %126 = add i32 %123, -1
  %127 = getelementptr [31 x i32], ptr %2, i32 0, i32 %126
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %122, label %130

130:                                              ; preds = %125
  %131 = lshr i32 %126, 5
  %132 = getelementptr i32, ptr %27, i32 %131
  %133 = load volatile i32, ptr %132, align 4
  %134 = and i32 %126, 31
  %135 = shl nuw i32 1, %134
  %136 = and i32 %133, %135
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %168, label %138

138:                                              ; preds = %130
  %139 = trunc i32 %123 to i16
  br label %140

140:                                              ; preds = %161, %138
  %141 = phi i32 [ 0, %138 ], [ %162, %161 ]
  %142 = getelementptr %struct.xhci_hcd, ptr %10, i32 0, i32 42, i32 %141
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %161, label %145

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.xhci_virt_device, ptr %143, i32 0, i32 1
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %161, label %149

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.usb_device, ptr %147, i32 0, i32 4
  %151 = load i32, ptr %150, align 4
  %152 = icmp ult i32 %151, 5
  %153 = load i32, ptr %18, align 8
  %154 = icmp sgt i32 %153, 63
  %155 = xor i1 %152, %154
  br i1 %155, label %156, label %161

156:                                              ; preds = %149
  %157 = getelementptr inbounds %struct.xhci_virt_device, ptr %143, i32 0, i32 5
  %158 = load i8, ptr %157, align 4
  %159 = zext i8 %158 to i16
  %160 = icmp eq i16 %159, %139
  br i1 %160, label %164, label %161

161:                                              ; preds = %156, %149, %145, %140
  %162 = add nuw nsw i32 %141, 1
  %163 = icmp eq i32 %162, 256
  br i1 %163, label %168, label %140

164:                                              ; preds = %156
  %165 = icmp eq i32 %141, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %164
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %174) #11
  tail call fastcc void @xhci_stop_device(ptr noundef %10, i32 noundef %141)
  %167 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %34) #11
  br label %168

168:                                              ; preds = %166, %164, %161, %130
  %169 = phi i32 [ %174, %130 ], [ %167, %166 ], [ %174, %164 ], [ %174, %161 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  %170 = getelementptr ptr, ptr %24, i32 %126
  %171 = load ptr, ptr %170, align 4
  %172 = load ptr, ptr %171, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %172, i32 %128) #11, !srcloc !11
  br label %173

173:                                              ; preds = %168, %120
  %174 = phi i32 [ %169, %168 ], [ %121, %120 ]
  %175 = phi i32 [ %126, %168 ], [ %26, %120 ]
  br label %122

176:                                              ; preds = %122
  %177 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 27
  store i32 4, ptr %177, align 8
  %178 = load volatile i32, ptr @jiffies, align 64
  %179 = add i32 %178, 1
  %180 = getelementptr inbounds %struct.xhci_hub, ptr %23, i32 0, i32 3, i32 1
  store i32 %179, ptr %180, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %174) #11
  %181 = load i32, ptr %27, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %176
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #11
  br label %184

184:                                              ; preds = %183, %176, %90, %82, %44
  %185 = phi i32 [ -16, %44 ], [ -16, %90 ], [ -16, %82 ], [ 0, %183 ], [ 0, %176 ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %2) #11
  ret i32 %185
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @usb_amd_pt_check_port(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_bus_resume(ptr noundef %0) local_unnamed_addr #3 {
  %2 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %6, %4 ], [ %0, %1 ]
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 0, i32 29
  %10 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi ptr [ %14, %12 ], [ %0, %7 ]
  %17 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 3
  %18 = load i32, ptr %17, align 8
  %19 = icmp sgt i32 %18, 63
  %20 = getelementptr inbounds %struct.usb_hcd, ptr %16, i32 8, i32 0, i32 10, i32 0, i32 3
  %21 = getelementptr inbounds %struct.usb_hcd, ptr %16, i32 4, i32 21, i32 4
  %22 = select i1 %19, ptr %20, ptr %21
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.xhci_hub, ptr %22, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.xhci_hub, ptr %22, i32 0, i32 3
  %27 = load volatile i32, ptr @jiffies, align 64
  %28 = getelementptr inbounds %struct.xhci_hub, ptr %22, i32 0, i32 3, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = sub i32 %27, %29
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %15
  tail call void @msleep(i32 noundef 5) #11
  br label %33

33:                                               ; preds = %32, %15
  %34 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 1, i32 0, i32 10
  %35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %34) #11
  %36 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 12
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %242, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 1, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !67
  %44 = and i32 %43, -5
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !68
  tail call void @arm_heavy_mb() #11
  %45 = load ptr, ptr %41, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %44) #11, !srcloc !11
  %46 = load i32, ptr %17, align 8
  %47 = icmp sgt i32 %46, 63
  %48 = select i1 %47, i32 65536, i32 66016
  %49 = icmp eq i32 %25, 0
  br i1 %49, label %102, label %50

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 4, i32 21, i32 3, i32 1
  br label %52

52:                                               ; preds = %79, %50
  %53 = phi i32 [ %25, %50 ], [ %54, %79 ]
  %54 = add i32 %53, -1
  %55 = getelementptr ptr, ptr %23, i32 %54
  %56 = load ptr, ptr %55, align 4
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !69
  %59 = load i64, ptr %51, align 8
  %60 = and i64 %59, 16777216
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %81, label %62

62:                                               ; preds = %52
  %63 = load i32, ptr %17, align 8
  %64 = icmp sgt i32 %63, 63
  br i1 %64, label %65, label %81

65:                                               ; preds = %62
  %66 = load ptr, ptr %55, align 4
  %67 = load ptr, ptr %66, align 4
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !70
  %69 = and i32 %68, 16777217
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %65
  %72 = and i32 %68, 480
  switch i32 %72, label %81 [
    i32 224, label %73
    i32 320, label %73
  ]

73:                                               ; preds = %71, %71
  %74 = and i32 %68, 1895956477
  %75 = or i32 %74, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !71
  tail call void @arm_heavy_mb() #11
  %76 = load ptr, ptr %66, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %75) #11, !srcloc !11
  %77 = load ptr, ptr %66, align 4
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !72
  tail call void @_clear_bit(i32 noundef %54, ptr noundef %26) #11
  br label %79

79:                                               ; preds = %95, %73
  %80 = icmp eq i32 %54, 0
  br i1 %80, label %100, label %52

81:                                               ; preds = %71, %65, %62, %52
  %82 = lshr i32 %54, 5
  %83 = getelementptr i32, ptr %26, i32 %82
  %84 = load volatile i32, ptr %83, align 4
  %85 = and i32 %54, 31
  %86 = shl nuw i32 1, %85
  %87 = and i32 %84, %86
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %81
  %90 = and i32 %58, 480
  switch i32 %90, label %94 [
    i32 96, label %91
    i32 480, label %95
  ]

91:                                               ; preds = %89
  %92 = and i32 %58, 1308687881
  %93 = or i32 %92, %48
  br label %95

94:                                               ; preds = %89
  tail call void @_clear_bit(i32 noundef %54, ptr noundef %26) #11
  br label %95

95:                                               ; preds = %94, %91, %89, %81
  %96 = phi i32 [ %58, %94 ], [ %58, %89 ], [ %93, %91 ], [ %58, %81 ]
  %97 = and i32 %96, -251527171
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !73
  tail call void @arm_heavy_mb() #11
  %98 = load ptr, ptr %55, align 4
  %99 = load ptr, ptr %98, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %97) #11, !srcloc !11
  br label %79

100:                                              ; preds = %79
  %101 = load i32, ptr %17, align 8
  br label %102

102:                                              ; preds = %100, %40
  %103 = phi i32 [ %101, %100 ], [ %46, %40 ]
  %104 = icmp slt i32 %103, 64
  br i1 %104, label %105, label %136

105:                                              ; preds = %102
  %106 = load i32, ptr %26, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %35) #11
  tail call void @msleep(i32 noundef 40) #11
  %109 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %34) #11
  br label %110

110:                                              ; preds = %108, %105
  %111 = phi i32 [ %109, %108 ], [ %35, %105 ]
  %112 = tail call i32 @_find_next_bit_le(ptr noundef %26, i32 noundef 32, i32 noundef 0) #11
  %113 = icmp slt i32 %112, 32
  br i1 %113, label %114, label %136

114:                                              ; preds = %126, %110
  %115 = phi i32 [ %134, %126 ], [ %112, %110 ]
  %116 = getelementptr ptr, ptr %23, i32 %115
  %117 = load ptr, ptr %116, align 4
  %118 = load ptr, ptr %117, align 4
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %120 = and i32 %119, 4194304
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %114
  %123 = and i32 %119, 1308688361
  %124 = or i32 %123, 4194304
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  tail call void @arm_heavy_mb() #11
  %125 = load ptr, ptr %117, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %124) #11, !srcloc !11
  br label %126

126:                                              ; preds = %122, %114
  %127 = load ptr, ptr %116, align 4
  %128 = load ptr, ptr %127, align 4
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %128) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %130 = and i32 %129, 1308687881
  %131 = or i32 %130, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %132 = load ptr, ptr %127, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %131) #11, !srcloc !11
  %133 = add nsw i32 %115, 1
  %134 = tail call i32 @_find_next_bit_le(ptr noundef %26, i32 noundef 32, i32 noundef %133) #11
  %135 = icmp slt i32 %134, 32
  br i1 %135, label %114, label %136

136:                                              ; preds = %126, %110, %102
  %137 = phi i32 [ %35, %102 ], [ %111, %110 ], [ %111, %126 ]
  %138 = tail call i32 @_find_next_bit_le(ptr noundef %26, i32 noundef 32, i32 noundef 0) #11
  %139 = icmp slt i32 %138, 32
  br i1 %139, label %140, label %231

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 2
  br label %142

142:                                              ; preds = %227, %140
  %143 = phi i32 [ %138, %140 ], [ %229, %227 ]
  %144 = getelementptr ptr, ptr %23, i32 %143
  %145 = load ptr, ptr %144, align 4
  %146 = load ptr, ptr %145, align 4
  %147 = tail call i32 @xhci_handshake(ptr noundef %146, i32 noundef 4194304, i32 noundef 4194304, i32 noundef 10000) #11
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %142
  %150 = load ptr, ptr %9, align 8
  %151 = load ptr, ptr %150, align 8
  %152 = load i32, ptr %141, align 8
  %153 = add nsw i32 %143, 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %151, ptr noundef nonnull @.str.5, i32 noundef %152, i32 noundef %153) #12
  br label %227

154:                                              ; preds = %142
  %155 = load ptr, ptr %144, align 4
  %156 = load ptr, ptr %155, align 4
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %156) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %158 = and i32 %157, 4194304
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %154
  %161 = and i32 %157, 1308688361
  %162 = or i32 %161, 4194304
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  tail call void @arm_heavy_mb() #11
  %163 = load ptr, ptr %155, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %163, i32 %162) #11, !srcloc !11
  br label %164

164:                                              ; preds = %160, %154
  %165 = trunc i32 %143 to i16
  %166 = add i16 %165, 1
  br label %167

167:                                              ; preds = %188, %164
  %168 = phi i32 [ 0, %164 ], [ %189, %188 ]
  %169 = getelementptr %struct.xhci_hcd, ptr %9, i32 0, i32 42, i32 %168
  %170 = load ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %188, label %172

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.xhci_virt_device, ptr %170, i32 0, i32 1
  %174 = load ptr, ptr %173, align 4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %188, label %176

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.usb_device, ptr %174, i32 0, i32 4
  %178 = load i32, ptr %177, align 4
  %179 = icmp ult i32 %178, 5
  %180 = load i32, ptr %17, align 8
  %181 = icmp sgt i32 %180, 63
  %182 = xor i1 %179, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %176
  %184 = getelementptr inbounds %struct.xhci_virt_device, ptr %170, i32 0, i32 5
  %185 = load i8, ptr %184, align 4
  %186 = zext i8 %185 to i16
  %187 = icmp eq i16 %166, %186
  br i1 %187, label %191, label %188

188:                                              ; preds = %183, %176, %172, %167
  %189 = add nuw nsw i32 %168, 1
  %190 = icmp eq i32 %189, 256
  br i1 %190, label %227, label %167

191:                                              ; preds = %183
  %192 = icmp eq i32 %168, 0
  br i1 %192, label %227, label %193

193:                                              ; preds = %225, %191
  %194 = phi ptr [ %226, %225 ], [ %170, %191 ]
  %195 = phi i32 [ %223, %225 ], [ 0, %191 ]
  %196 = getelementptr %struct.xhci_virt_device, ptr %194, i32 0, i32 4, i32 %195, i32 5
  %197 = load i32, ptr %196, align 4
  %198 = and i32 %197, 16
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %213, label %200

200:                                              ; preds = %193
  %201 = getelementptr %struct.xhci_virt_device, ptr %194, i32 0, i32 4, i32 %195, i32 3
  %202 = load ptr, ptr %201, align 4
  %203 = getelementptr inbounds %struct.xhci_stream_info, ptr %202, i32 0, i32 1
  %204 = load i32, ptr %203, align 4
  %205 = icmp ugt i32 %204, 1
  br i1 %205, label %206, label %222

206:                                              ; preds = %206, %200
  %207 = phi i32 [ %208, %206 ], [ 1, %200 ]
  tail call void @xhci_ring_ep_doorbell(ptr noundef %9, i32 noundef %168, i32 noundef %195, i32 noundef %207) #11
  %208 = add nuw i32 %207, 1
  %209 = load ptr, ptr %201, align 4
  %210 = getelementptr inbounds %struct.xhci_stream_info, ptr %209, i32 0, i32 1
  %211 = load i32, ptr %210, align 4
  %212 = icmp ult i32 %208, %211
  br i1 %212, label %206, label %222

213:                                              ; preds = %193
  %214 = getelementptr %struct.xhci_virt_device, ptr %194, i32 0, i32 4, i32 %195, i32 2
  %215 = load ptr, ptr %214, align 4
  %216 = icmp eq ptr %215, null
  br i1 %216, label %222, label %217

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.xhci_ring, ptr %215, i32 0, i32 4
  %219 = load ptr, ptr %218, align 4
  %220 = icmp eq ptr %219, null
  br i1 %220, label %222, label %221

221:                                              ; preds = %217
  tail call void @xhci_ring_ep_doorbell(ptr noundef %9, i32 noundef %168, i32 noundef %195, i32 noundef 0) #11
  br label %222

222:                                              ; preds = %221, %217, %213, %206, %200
  %223 = add nuw nsw i32 %195, 1
  %224 = icmp eq i32 %223, 31
  br i1 %224, label %227, label %225

225:                                              ; preds = %222
  %226 = load ptr, ptr %169, align 4
  br label %193

227:                                              ; preds = %222, %191, %188, %149
  %228 = add i32 %143, 1
  %229 = tail call i32 @_find_next_bit_le(ptr noundef %26, i32 noundef 32, i32 noundef %228) #11
  %230 = icmp slt i32 %229, 32
  br i1 %230, label %142, label %231

231:                                              ; preds = %227, %136
  %232 = load ptr, ptr %41, align 4
  %233 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %232) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !74
  %234 = load volatile i32, ptr @jiffies, align 64
  %235 = add i32 %234, 1
  store i32 %235, ptr %28, align 4
  %236 = load ptr, ptr %41, align 4
  %237 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %236) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !75
  %238 = or i32 %237, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !76
  tail call void @arm_heavy_mb() #11
  %239 = load ptr, ptr %41, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %239, i32 %238) #11, !srcloc !11
  %240 = load ptr, ptr %41, align 4
  %241 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %240) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !77
  br label %242

242:                                              ; preds = %231, %33
  %243 = phi i32 [ %137, %231 ], [ %35, %33 ]
  %244 = phi i32 [ 0, %231 ], [ -108, %33 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %243) #11
  ret i32 %244
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_handshake(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_get_resuming_ports(ptr noundef %0) local_unnamed_addr #3 {
  %2 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %6, %4 ], [ %0, %1 ]
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 8
  %11 = icmp sgt i32 %10, 63
  %12 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 8, i32 0, i32 10, i32 0, i32 3
  %13 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 4, i32 21, i32 4
  %14 = select i1 %11, ptr %12, ptr %13
  %15 = getelementptr inbounds %struct.xhci_hub, ptr %14, i32 0, i32 3, i32 6
  %16 = load i32, ptr %15, align 4
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_is_primary_hcd(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_get_port_status(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_dbg_trace(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_xhci_dbg_quirks(ptr noundef %0) #8 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_quirks, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #11
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !78
  %16 = tail call i32 @__traceiter_xhci_dbg_quirks(ptr noundef null, ptr noundef %0) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !79
  br label %17

17:                                               ; preds = %15, %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_dbg_quirks(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xhci_alloc_command(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xhci_get_ep_ctx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_queue_stop_endpoint(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_free_command(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_ring_cmd_db(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_stop_device(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_disable_slot(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_free_virt_device(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_halt(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_start(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_reset(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_hub_status_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { nounwind }
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
!8 = !{i64 3560165}
!9 = !{i64 2154698530}
!10 = !{i64 2154698730}
!11 = !{i64 3559747}
!12 = !{i64 2154700992}
!13 = !{i64 2154701171}
!14 = !{i64 2154682694}
!15 = !{i64 2154682302}
!16 = !{i64 2154476708}
!17 = !{i64 2154477199}
!18 = !{i64 2154708819}
!19 = !{i64 2154337945}
!20 = !{i64 2154338127}
!21 = !{i64 2154704604}
!22 = !{i64 2154711379}
!23 = !{i64 2154711915}
!24 = !{i64 2154712260}
!25 = !{i64 2154712987}
!26 = !{i64 2154715690}
!27 = !{i64 2154716032}
!28 = !{i64 2154717101}
!29 = !{i64 2154717596}
!30 = !{i64 2154718720}
!31 = !{i64 2154721984}
!32 = !{i64 2154724681}
!33 = !{i64 2154725389}
!34 = !{i64 2154726105}
!35 = !{i64 2154726306}
!36 = !{i64 2154726779}
!37 = !{i64 2154728134}
!38 = !{i64 2154729424}
!39 = !{i64 2154729897}
!40 = !{i64 2154730261}
!41 = !{i64 2154730481}
!42 = !{i64 2154730982}
!43 = !{i64 2154731216}
!44 = !{i64 2154731707}
!45 = !{i64 2154732237}
!46 = !{i64 2154732582}
!47 = !{i64 2154688452}
!48 = !{i64 2154688897}
!49 = !{i64 2153883815}
!50 = !{i64 2153883967}
!51 = !{i64 2154690163}
!52 = !{i64 2154691351}
!53 = !{i64 2154691810}
!54 = !{i64 2154692011}
!55 = !{i64 2154700288}
!56 = !{i64 2154700555}
!57 = !{i64 2154692846}
!58 = !{i64 2154693034}
!59 = !{i64 2154686789}
!60 = !{i64 2154687238}
!61 = !{i64 2154736164}
!62 = !{i64 2154354449}
!63 = !{i64 2154354631}
!64 = !{!"auto-init"}
!65 = !{i64 2154739248}
!66 = !{i64 2154744307}
!67 = !{i64 2154746963}
!68 = !{i64 2154747177}
!69 = !{i64 2154747695}
!70 = !{i64 2154744810}
!71 = !{i64 2154745300}
!72 = !{i64 2154745741}
!73 = !{i64 2154749394}
!74 = !{i64 2154751935}
!75 = !{i64 2154752287}
!76 = !{i64 2154752501}
!77 = !{i64 2154752990}
!78 = !{i64 2153581272}
!79 = !{i64 2153581420}
