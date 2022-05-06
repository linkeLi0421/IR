; ModuleID = '/llk/IR/drivers/usb/host/xhci-pci.c_pt.bc'
source_filename = "../drivers/usb/host/xhci-pci.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xhci_driver_overrides = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xhci_driver_data = type { i64, ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_devmap = type { [4 x i32] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.68, i32 }
%union.anon.68 = type { ptr }
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
%struct.xhci_hcd = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, i32, %struct.delayed_work, %struct.completion, ptr, ptr, %struct.xhci_erst, ptr, %struct.list_head, %struct.mutex, ptr, [256 x ptr], ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.s3_save, i64, i32, i32, ptr, %struct.xhci_hub, %struct.xhci_hub, i8, ptr, i32, ptr, i32, %struct.timer_list, i32, i16, ptr, ptr, %struct.list_head, ptr, [0 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.xhci_erst = type { ptr, i32, i32, i32 }
%struct.s3_save = type { i32, i32, i64, i32, i32, i32, i32, i64, i64 }
%struct.xhci_hub = type { ptr, i32, ptr, %struct.xhci_bus_state, i8, i8 }
%struct.xhci_bus_state = type { i32, i32, i32, i32, i32, [31 x i32], i32, i32, [31 x %struct.completion], [31 x %struct.completion] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }

@__initcall__kmod_xhci_pci__340_700_xhci_pci_init6 = internal global ptr @xhci_pci_init, section ".initcall6.init", align 4
@xhci_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, ptr @hcd_name, ptr @pci_ids, ptr @xhci_pci_probe, ptr @xhci_pci_remove, ptr null, ptr null, ptr @usb_hcd_pci_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usb_hcd_pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, align 4
@__exitcall_xhci_pci_exit = internal global ptr @xhci_pci_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description341 = internal constant [53 x i8] c"xhci_pci.description=xHCI PCI Host Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file342 = internal constant [40 x i8] c"xhci_pci.file=drivers/usb/host/xhci-pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license343 = internal constant [21 x i8] c"xhci_pci.license=GPL\00", section ".modinfo", align 1
@xhci_pci_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@xhci_pci_overrides = internal constant %struct.xhci_driver_overrides { i32 0, ptr @xhci_pci_setup, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".init.rodata", align 4
@.str = private unnamed_addr constant [9 x i8] c"xhci_pci\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"QUIRK: Fresco Logic xHC needs configure endpoint cmd after reset endpoint\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"QUIRK: Fresco Logic xHC revision %umust be suspended extra slowly\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"QUIRK: Fresco Logic revision %u has broken MSI implementation\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"QUIRK: Resetting on resume\00", align 1
@__tracepoint_xhci_dbg_quirks = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@hcd_name = internal constant [9 x i8] c"xhci_hcd\00", align 1
@pci_ids = internal constant [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 6418, i32 20, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @reneses_data to i32), i32 0 }, %struct.pci_device_id { i32 6418, i32 21, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @reneses_data to i32), i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 787248, i32 -1, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], align 4
@usb_hcd_pci_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@reneses_data = internal constant %struct.xhci_driver_data { i64 68719476736, ptr @.str.6 }, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"renesas_usb_fw.mem\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description341, ptr @__UNIQUE_ID_file342, ptr @__UNIQUE_ID_license343, ptr @__exitcall_xhci_pci_exit, ptr @__initcall__kmod_xhci_pci__340_700_xhci_pci_init6, ptr @xhci_pci_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @xhci_pci_init() #0 section ".init.text" {
  tail call void @xhci_init_driver(ptr noundef nonnull @xhci_pci_hc_driver, ptr noundef nonnull @xhci_pci_overrides) #5
  store ptr @xhci_pci_suspend, ptr getelementptr inbounds (%struct.hc_driver, ptr @xhci_pci_hc_driver, i32 0, i32 7), align 4
  store ptr @xhci_pci_resume, ptr getelementptr inbounds (%struct.hc_driver, ptr @xhci_pci_hc_driver, i32 0, i32 8), align 4
  store ptr @xhci_pci_shutdown, ptr getelementptr inbounds (%struct.hc_driver, ptr @xhci_pci_hc_driver, i32 0, i32 10), align 4
  %1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @xhci_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @xhci_pci_exit() #0 section ".exit.text" {
  tail call void @pci_unregister_driver(ptr noundef nonnull @xhci_pci_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_init_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_pci_suspend(ptr noundef %0, i1 noundef zeroext %1) #2 {
  %3 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %7, %5 ], [ %0, %2 ]
  %10 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 4, i32 21, i32 3, i32 1
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 2199023271936
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr i8, ptr %16, i32 -136
  tail call void @pci_d3cold_disable(ptr noundef %17) #5
  %18 = load i64, ptr %11, align 8
  br label %19

19:                                               ; preds = %15, %8
  %20 = phi i64 [ %18, %15 ], [ %12, %8 ]
  %21 = and i64 %20, 1048576
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %19
  %24 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %28 = load ptr, ptr %27, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi ptr [ %28, %26 ], [ %0, %23 ]
  %31 = getelementptr inbounds %struct.usb_hcd, ptr %30, i32 1, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr i8, ptr %32, i32 32932
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %35 = or i32 %34, 268435456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %35) #5, !srcloc !11
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %37 = load i64, ptr %11, align 8
  br label %38

38:                                               ; preds = %29, %19
  %39 = phi i64 [ %37, %29 ], [ %20, %19 ]
  %40 = and i64 %39, 4194304
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  tail call fastcc void @xhci_ssic_port_unused_quirk(ptr noundef %0, i1 noundef zeroext true)
  %43 = load i64, ptr %11, align 8
  br label %44

44:                                               ; preds = %42, %38
  %45 = phi i64 [ %43, %42 ], [ %39, %38 ]
  %46 = and i64 %45, 274877906944
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 16
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr i8, ptr %50, i32 49452
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %53 = and i32 %52, -131073
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %54 = load ptr, ptr %49, align 8
  %55 = getelementptr i8, ptr %54, i32 49452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #5, !srcloc !11
  br label %56

56:                                               ; preds = %48, %44
  %57 = tail call i32 @xhci_suspend(ptr noundef %10, i1 noundef zeroext %1) #5
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %56
  %60 = load i64, ptr %11, align 8
  %61 = and i64 %60, 4194304
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  tail call fastcc void @xhci_ssic_port_unused_quirk(ptr noundef %0, i1 noundef zeroext false)
  br label %64

64:                                               ; preds = %63, %59, %56
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_pci_resume(ptr noundef %0, i1 noundef zeroext %1) #2 {
  %3 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %7, %5 ], [ %0, %2 ]
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 1, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @reset_control_reset(ptr noundef %12) #5
  %14 = getelementptr i8, ptr %10, i32 -104
  %15 = load i16, ptr %14, align 8
  %16 = icmp eq i16 %15, -32634
  br i1 %16, label %17, label %19

17:                                               ; preds = %8
  %18 = getelementptr i8, ptr %10, i32 -136
  tail call void @usb_enable_intel_xhci_ports(ptr noundef %18) #5
  br label %19

19:                                               ; preds = %17, %8
  %20 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 4, i32 21, i32 3, i32 1
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 4194304
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  tail call fastcc void @xhci_ssic_port_unused_quirk(ptr noundef %0, i1 noundef zeroext false)
  %25 = load i64, ptr %20, align 8
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi i64 [ %25, %24 ], [ %21, %19 ]
  %28 = and i64 %27, 1048576
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %26
  %31 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #5
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %35 = load ptr, ptr %34, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi ptr [ %35, %33 ], [ %0, %30 ]
  %38 = getelementptr inbounds %struct.usb_hcd, ptr %37, i32 1, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr i8, ptr %39, i32 32932
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %42 = or i32 %41, 268435456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %42) #5, !srcloc !11
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  br label %44

44:                                               ; preds = %36, %26
  %45 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 29
  %46 = tail call i32 @xhci_resume(ptr noundef %45, i1 noundef zeroext %1) #5
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xhci_pci_shutdown(ptr noundef %0) #2 {
  %2 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %6, %4 ], [ %0, %1 ]
  %9 = load ptr, ptr %0, align 8
  tail call void @xhci_shutdown(ptr noundef %0) #5
  %10 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 4, i32 21, i32 3, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 262144
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = getelementptr i8, ptr %9, i32 -136
  %16 = tail call i32 @pci_set_power_state(ptr noundef %15, i32 noundef 3) #5
  br label %17

17:                                               ; preds = %14, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_pci_setup(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 -136
  %4 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %8, %6 ], [ %0, %1 ]
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 1, i32 0, i32 10, i32 0, i32 1
  %12 = load i8, ptr %11, align 4
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = tail call i32 @pci_read_config_byte(ptr noundef %3, i32 noundef 96, ptr noundef %11) #5
  br label %16

16:                                               ; preds = %14, %9
  %17 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 1, i32 0, i32 10, i32 0, i32 3
  store i32 40000, ptr %17, align 4
  %18 = tail call i32 @xhci_gen_setup(ptr noundef %0, ptr noundef nonnull @xhci_pci_quirks) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @pci_set_mwi(ptr noundef %3) #5
  br label %25

25:                                               ; preds = %23, %20, %16
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_gen_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xhci_pci_quirks(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -136
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  %7 = getelementptr i8, ptr %5, i32 -60
  %8 = select i1 %6, ptr null, ptr %7
  %9 = getelementptr inbounds %struct.pci_driver, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @pci_match_id(ptr noundef %10, ptr noundef %3) #5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.pci_device_id, ptr %11, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = inttoptr i32 %15 to ptr
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %21 = load i64, ptr %20, align 8
  %22 = or i64 %21, %19
  store i64 %22, ptr %20, align 8
  br label %23

23:                                               ; preds = %17, %13, %2
  %24 = getelementptr i8, ptr %0, i32 -104
  %25 = load i16, ptr %24, align 8
  %26 = icmp eq i16 %25, 7027
  br i1 %26, label %27, label %86

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %0, i32 -102
  %29 = load i16, ptr %28, align 2
  switch i16 %29, label %69 [
    i16 4096, label %30
    i16 5120, label %56
  ]

30:                                               ; preds = %27
  %31 = getelementptr i8, ptr %0, i32 -92
  %32 = load i8, ptr %31, align 4
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %36 = load i64, ptr %35, align 8
  %37 = or i64 %36, 2
  store i64 %37, ptr %35, align 8
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %1, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.1) #5
  %38 = load i16, ptr %28, align 2
  %39 = icmp eq i16 %38, 4096
  br i1 %39, label %40, label %56

40:                                               ; preds = %34, %30
  %41 = getelementptr i8, ptr %0, i32 -92
  %42 = load i8, ptr %41, align 4
  %43 = icmp eq i8 %42, 4
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %46 = load i64, ptr %45, align 8
  %47 = or i64 %46, 131072
  store i64 %47, ptr %45, align 8
  %48 = load i8, ptr %41, align 4
  %49 = zext i8 %48 to i32
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %1, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.2, i32 noundef %49) #5
  %50 = load i16, ptr %28, align 2
  %51 = icmp eq i16 %50, 4096
  br i1 %51, label %52, label %56

52:                                               ; preds = %44, %40
  %53 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %54 = load i64, ptr %53, align 8
  %55 = or i64 %54, 524288
  store i64 %55, ptr %53, align 8
  br label %56

56:                                               ; preds = %52, %44, %34, %27
  %57 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %58 = load i64, ptr %57, align 8
  %59 = or i64 %58, 64
  store i64 %59, ptr %57, align 8
  %60 = getelementptr i8, ptr %0, i32 -92
  %61 = load i8, ptr %60, align 4
  %62 = zext i8 %61 to i32
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %1, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.3, i32 noundef %62) #5
  %63 = load i64, ptr %57, align 8
  %64 = or i64 %63, 1024
  store i64 %64, ptr %57, align 8
  %65 = load i16, ptr %24, align 8
  %66 = icmp eq i16 %65, 7027
  br i1 %66, label %67, label %86

67:                                               ; preds = %56
  %68 = load i16, ptr %28, align 2
  br label %69

69:                                               ; preds = %67, %27
  %70 = phi i16 [ %68, %67 ], [ %29, %27 ]
  %71 = icmp eq i16 %70, 4105
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %74 = load i64, ptr %73, align 8
  %75 = or i64 %74, 524288
  store i64 %75, ptr %73, align 8
  %76 = load i16, ptr %24, align 8
  %77 = icmp eq i16 %76, 7027
  br i1 %77, label %78, label %86

78:                                               ; preds = %72, %69
  %79 = load i16, ptr %28, align 2
  %80 = icmp eq i16 %79, 4352
  br i1 %80, label %81, label %394

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %83 = load i64, ptr %82, align 8
  %84 = or i64 %83, 1024
  store i64 %84, ptr %82, align 8
  %85 = load i16, ptr %24, align 8
  br label %86

86:                                               ; preds = %81, %72, %56, %23
  %87 = phi i16 [ %76, %72 ], [ %25, %23 ], [ %65, %56 ], [ %85, %81 ]
  %88 = icmp eq i16 %87, 4147
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %91 = load i64, ptr %90, align 8
  %92 = or i64 %91, 4
  store i64 %92, ptr %90, align 8
  %93 = load i16, ptr %24, align 8
  br label %94

94:                                               ; preds = %89, %86
  %95 = phi i16 [ %93, %89 ], [ %87, %86 ]
  %96 = icmp eq i16 %95, 4130
  br i1 %96, label %97, label %169

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 14
  %99 = load i16, ptr %98, align 2
  %100 = icmp eq i16 %99, 150
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %103 = load i64, ptr %102, align 8
  %104 = or i64 %103, 512
  store i64 %104, ptr %102, align 8
  %105 = load i16, ptr %24, align 8
  %106 = icmp eq i16 %105, 4130
  br i1 %106, label %107, label %169

107:                                              ; preds = %101, %97
  %108 = tail call zeroext i1 @usb_amd_quirk_pll_check() #5
  br i1 %108, label %109, label %113

109:                                              ; preds = %107
  %110 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %111 = load i64, ptr %110, align 8
  %112 = or i64 %111, 8
  store i64 %112, ptr %110, align 8
  br label %113

113:                                              ; preds = %109, %107
  %114 = load i16, ptr %24, align 8
  %115 = icmp eq i16 %114, 4130
  br i1 %115, label %116, label %169

116:                                              ; preds = %113
  %117 = getelementptr i8, ptr %0, i32 -102
  %118 = load i16, ptr %117, align 2
  switch i16 %118, label %127 [
    i16 5212, label %119
    i16 5600, label %119
    i16 5601, label %119
    i16 17339, label %119
  ]

119:                                              ; preds = %116, %116, %116, %116
  %120 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %121 = load i64, ptr %120, align 8
  %122 = or i64 %121, 1073741824
  store i64 %122, ptr %120, align 8
  %123 = load i16, ptr %24, align 8
  %124 = icmp eq i16 %123, 4130
  br i1 %124, label %125, label %169

125:                                              ; preds = %119
  %126 = load i16, ptr %117, align 2
  br label %127

127:                                              ; preds = %125, %116
  %128 = phi i16 [ %126, %125 ], [ %118, %116 ]
  %129 = and i16 %128, -2
  %130 = icmp eq i16 %129, 5600
  br i1 %130, label %131, label %137

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %133 = load i64, ptr %132, align 8
  %134 = or i64 %133, 34359738368
  store i64 %134, ptr %132, align 8
  %135 = load i16, ptr %24, align 8
  %136 = icmp eq i16 %135, 4130
  br i1 %136, label %137, label %169

137:                                              ; preds = %131, %127
  %138 = load i16, ptr %117, align 2
  %139 = icmp eq i16 %138, 5605
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %142 = load i64, ptr %141, align 8
  %143 = or i64 %142, 274877907072
  store i64 %143, ptr %141, align 8
  %144 = load i16, ptr %24, align 8
  %145 = icmp eq i16 %144, 4130
  br i1 %145, label %146, label %169

146:                                              ; preds = %140, %137
  %147 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %148 = load i64, ptr %147, align 8
  %149 = or i64 %148, 1024
  store i64 %149, ptr %147, align 8
  %150 = load i16, ptr %24, align 8
  %151 = icmp eq i16 %150, 4130
  br i1 %151, label %152, label %169

152:                                              ; preds = %146
  %153 = load i16, ptr %117, align 2
  %154 = add i16 %153, -17337
  %155 = icmp ult i16 %154, 4
  br i1 %155, label %156, label %162

156:                                              ; preds = %152
  %157 = or i64 %148, 134218752
  store i64 %157, ptr %147, align 8
  %158 = load i16, ptr %24, align 8
  %159 = icmp eq i16 %158, 4130
  br i1 %159, label %160, label %169

160:                                              ; preds = %156
  %161 = load i16, ptr %117, align 2
  br label %162

162:                                              ; preds = %160, %152
  %163 = phi i16 [ %161, %160 ], [ %153, %152 ]
  %164 = phi i64 [ %157, %160 ], [ %149, %152 ]
  %165 = icmp eq i16 %163, 5689
  br i1 %165, label %166, label %378

166:                                              ; preds = %162
  %167 = or i64 %164, 2199023255552
  store i64 %167, ptr %147, align 8
  %168 = load i16, ptr %24, align 8
  br label %169

169:                                              ; preds = %166, %156, %146, %140, %131, %119, %113, %101, %94
  %170 = phi i16 [ %158, %156 ], [ %150, %146 ], [ %144, %140 ], [ %135, %131 ], [ %95, %94 ], [ %105, %101 ], [ %114, %113 ], [ %123, %119 ], [ %168, %166 ]
  %171 = icmp eq i16 %170, -32634
  br i1 %171, label %172, label %245

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %174 = load i64, ptr %173, align 8
  %175 = or i64 %174, 38912
  store i64 %175, ptr %173, align 8
  %176 = load i16, ptr %24, align 8
  %177 = icmp eq i16 %176, -32634
  br i1 %177, label %178, label %245

178:                                              ; preds = %172
  %179 = getelementptr i8, ptr %0, i32 -102
  %180 = load i16, ptr %179, align 2
  %181 = icmp eq i16 %180, 7729
  br i1 %181, label %182, label %191

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %184 = load i64, ptr %183, align 8
  %185 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 53
  store i32 64, ptr %185, align 4
  %186 = or i64 %184, 8480
  store i64 %186, ptr %183, align 8
  %187 = load i16, ptr %24, align 8
  %188 = icmp eq i16 %187, -32634
  br i1 %188, label %189, label %245

189:                                              ; preds = %182
  %190 = load i16, ptr %179, align 2
  br label %191

191:                                              ; preds = %189, %178
  %192 = phi i16 [ %190, %189 ], [ %180, %178 ]
  switch i16 %192, label %201 [
    i16 -25551, label %193
    i16 -25423, label %193
  ]

193:                                              ; preds = %191, %191
  %194 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %195 = load i64, ptr %194, align 8
  %196 = or i64 %195, 270336
  store i64 %196, ptr %194, align 8
  %197 = load i16, ptr %24, align 8
  %198 = icmp eq i16 %197, -32634
  br i1 %198, label %199, label %245

199:                                              ; preds = %193
  %200 = load i16, ptr %179, align 2
  br label %201

201:                                              ; preds = %199, %191
  %202 = phi i16 [ %200, %199 ], [ %192, %191 ]
  switch i16 %202, label %209 [
    i16 -25297, label %203
    i16 -24273, label %203
    i16 8885, label %203
    i16 2728, label %203
    i16 6824, label %203
    i16 23208, label %203
    i16 6608, label %203
    i16 -23633, label %203
  ]

203:                                              ; preds = %201, %201, %201, %201, %201, %201, %201, %201
  %204 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %205 = load i64, ptr %204, align 8
  %206 = or i64 %205, 1048576
  store i64 %206, ptr %204, align 8
  %207 = load i16, ptr %24, align 8
  %208 = icmp eq i16 %207, -32634
  br i1 %208, label %209, label %245

209:                                              ; preds = %203, %201
  %210 = load i16, ptr %179, align 2
  %211 = icmp eq i16 %210, 8885
  br i1 %211, label %212, label %220

212:                                              ; preds = %209
  %213 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %214 = load i64, ptr %213, align 8
  %215 = or i64 %214, 4194304
  store i64 %215, ptr %213, align 8
  %216 = load i16, ptr %24, align 8
  %217 = icmp eq i16 %216, -32634
  br i1 %217, label %218, label %245

218:                                              ; preds = %212
  %219 = load i16, ptr %179, align 2
  br label %220

220:                                              ; preds = %218, %209
  %221 = phi i16 [ %219, %218 ], [ %210, %209 ]
  switch i16 %221, label %230 [
    i16 8885, label %222
    i16 -25297, label %222
    i16 23208, label %222
  ]

222:                                              ; preds = %220, %220, %220
  %223 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %224 = load i64, ptr %223, align 8
  %225 = or i64 %224, 2147483648
  store i64 %225, ptr %223, align 8
  %226 = load i16, ptr %24, align 8
  %227 = icmp eq i16 %226, -32634
  br i1 %227, label %228, label %245

228:                                              ; preds = %222
  %229 = load i16, ptr %179, align 2
  br label %230

230:                                              ; preds = %228, %220
  %231 = phi i16 [ %229, %228 ], [ %221, %220 ]
  switch i16 %231, label %238 [
    i16 8885, label %232
    i16 -25297, label %232
    i16 -24273, label %232
    i16 23208, label %232
    i16 6608, label %232
  ]

232:                                              ; preds = %230, %230, %230, %230, %230
  %233 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %234 = load i64, ptr %233, align 8
  %235 = or i64 %234, 16777216
  store i64 %235, ptr %233, align 8
  %236 = load i16, ptr %24, align 8
  %237 = icmp eq i16 %236, -32634
  br i1 %237, label %238, label %245

238:                                              ; preds = %232, %230
  %239 = load i16, ptr %179, align 2
  switch i16 %239, label %394 [
    i16 5557, label %240
    i16 5558, label %240
    i16 5569, label %240
    i16 5595, label %240
    i16 5588, label %240
    i16 5609, label %240
    i16 5612, label %240
    i16 5616, label %240
    i16 -30189, label %240
    i16 -26093, label %240
    i16 4408, label %240
    i16 17950, label %240
  ]

240:                                              ; preds = %238, %238, %238, %238, %238, %238, %238, %238, %238, %238, %238, %238
  %241 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %242 = load i64, ptr %241, align 8
  %243 = or i64 %242, 8589934592
  store i64 %243, ptr %241, align 8
  %244 = load i16, ptr %24, align 8
  br label %245

245:                                              ; preds = %240, %232, %222, %212, %203, %193, %182, %172, %169
  %246 = phi i16 [ %236, %232 ], [ %176, %172 ], [ %187, %182 ], [ %207, %203 ], [ %197, %193 ], [ %216, %212 ], [ %226, %222 ], [ %244, %240 ], [ %170, %169 ]
  %247 = icmp eq i16 %246, 7023
  br i1 %247, label %248, label %257

248:                                              ; preds = %245
  %249 = getelementptr i8, ptr %0, i32 -102
  %250 = load i16, ptr %249, align 2
  %251 = icmp eq i16 %250, 28707
  br i1 %251, label %252, label %394

252:                                              ; preds = %248
  %253 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %254 = load i64, ptr %253, align 8
  %255 = or i64 %254, 525440
  store i64 %255, ptr %253, align 8
  %256 = load i16, ptr %24, align 8
  br label %257

257:                                              ; preds = %252, %245
  %258 = phi i16 [ %256, %252 ], [ %246, %245 ]
  %259 = icmp eq i16 %258, 6418
  br i1 %259, label %260, label %280

260:                                              ; preds = %257
  %261 = getelementptr i8, ptr %0, i32 -102
  %262 = load i16, ptr %261, align 2
  %263 = icmp eq i16 %262, 20
  br i1 %263, label %264, label %272

264:                                              ; preds = %260
  %265 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %266 = load i64, ptr %265, align 8
  %267 = or i64 %266, 4294968320
  store i64 %267, ptr %265, align 8
  %268 = load i16, ptr %24, align 8
  %269 = icmp eq i16 %268, 6418
  br i1 %269, label %270, label %280

270:                                              ; preds = %264
  %271 = load i16, ptr %261, align 2
  br label %272

272:                                              ; preds = %270, %260
  %273 = phi i16 [ %271, %270 ], [ %262, %260 ]
  %274 = icmp eq i16 %273, 21
  br i1 %274, label %275, label %394

275:                                              ; preds = %272
  %276 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %277 = load i64, ptr %276, align 8
  %278 = or i64 %277, 4294967424
  store i64 %278, ptr %276, align 8
  %279 = load i16, ptr %24, align 8
  br label %280

280:                                              ; preds = %275, %264, %257
  %281 = phi i16 [ %268, %264 ], [ %258, %257 ], [ %279, %275 ]
  %282 = icmp eq i16 %281, 4358
  br i1 %282, label %283, label %309

283:                                              ; preds = %280
  %284 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %285 = load i64, ptr %284, align 8
  %286 = or i64 %285, 128
  store i64 %286, ptr %284, align 8
  %287 = load i16, ptr %24, align 8
  %288 = icmp eq i16 %287, 4358
  br i1 %288, label %289, label %309

289:                                              ; preds = %283
  %290 = getelementptr i8, ptr %0, i32 -102
  %291 = load i16, ptr %290, align 2
  %292 = icmp eq i16 %291, 13362
  br i1 %292, label %293, label %301

293:                                              ; preds = %289
  %294 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %295 = load i64, ptr %294, align 8
  %296 = or i64 %295, 524288
  store i64 %296, ptr %294, align 8
  %297 = load i16, ptr %24, align 8
  %298 = icmp eq i16 %297, 4358
  br i1 %298, label %299, label %309

299:                                              ; preds = %293
  %300 = load i16, ptr %290, align 2
  br label %301

301:                                              ; preds = %299, %289
  %302 = phi i16 [ %300, %299 ], [ %291, %289 ]
  %303 = icmp eq i16 %302, 13443
  br i1 %303, label %304, label %394

304:                                              ; preds = %301
  %305 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %306 = load i64, ptr %305, align 8
  %307 = or i64 %306, 4398046513152
  store i64 %307, ptr %305, align 8
  %308 = load i16, ptr %24, align 8
  br label %309

309:                                              ; preds = %304, %293, %283, %280
  %310 = phi i16 [ %297, %293 ], [ %287, %283 ], [ %308, %304 ], [ %281, %280 ]
  %311 = icmp eq i16 %310, 6945
  br i1 %311, label %312, label %352

312:                                              ; preds = %309
  %313 = getelementptr i8, ptr %0, i32 -102
  %314 = load i16, ptr %313, align 2
  %315 = icmp eq i16 %314, 4162
  br i1 %315, label %316, label %322

316:                                              ; preds = %312
  %317 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %318 = load i64, ptr %317, align 8
  %319 = or i64 %318, 524288
  store i64 %319, ptr %317, align 8
  %320 = load i16, ptr %24, align 8
  %321 = icmp eq i16 %320, 6945
  br i1 %321, label %322, label %352

322:                                              ; preds = %316, %312
  %323 = getelementptr i8, ptr %0, i32 -102
  %324 = load i16, ptr %323, align 2
  %325 = icmp eq i16 %324, 4418
  br i1 %325, label %326, label %334

326:                                              ; preds = %322
  %327 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %328 = load i64, ptr %327, align 8
  %329 = or i64 %328, 8389632
  store i64 %329, ptr %327, align 8
  %330 = load i16, ptr %24, align 8
  %331 = icmp eq i16 %330, 6945
  br i1 %331, label %332, label %352

332:                                              ; preds = %326
  %333 = load i16, ptr %323, align 2
  br label %334

334:                                              ; preds = %332, %322
  %335 = phi i16 [ %333, %332 ], [ %324, %322 ]
  switch i16 %335, label %344 [
    i16 4674, label %336
    i16 8514, label %336
    i16 12866, label %336
  ]

336:                                              ; preds = %334, %334, %334
  %337 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %338 = load i64, ptr %337, align 8
  %339 = or i64 %338, 8388608
  store i64 %339, ptr %337, align 8
  %340 = load i16, ptr %24, align 8
  %341 = icmp eq i16 %340, 6945
  br i1 %341, label %342, label %352

342:                                              ; preds = %336
  %343 = load i16, ptr %323, align 2
  br label %344

344:                                              ; preds = %342, %334
  %345 = phi i16 [ %343, %342 ], [ %335, %334 ]
  %346 = icmp eq i16 %345, 4418
  br i1 %346, label %347, label %394

347:                                              ; preds = %344
  %348 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %349 = load i64, ptr %348, align 8
  %350 = or i64 %349, 268435456
  store i64 %350, ptr %348, align 8
  %351 = load i16, ptr %24, align 8
  br label %352

352:                                              ; preds = %347, %336, %326, %316, %309
  %353 = phi i16 [ %340, %336 ], [ %320, %316 ], [ %330, %326 ], [ %351, %347 ], [ %310, %309 ]
  %354 = icmp eq i16 %353, 4172
  br i1 %354, label %355, label %364

355:                                              ; preds = %352
  %356 = getelementptr i8, ptr %0, i32 -102
  %357 = load i16, ptr %356, align 2
  %358 = icmp eq i16 %357, -32191
  br i1 %358, label %359, label %394

359:                                              ; preds = %355
  %360 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %361 = load i64, ptr %360, align 8
  %362 = or i64 %361, 67108864
  store i64 %362, ptr %360, align 8
  %363 = load i16, ptr %24, align 8
  br label %364

364:                                              ; preds = %359, %352
  %365 = phi i16 [ %363, %359 ], [ %353, %352 ]
  switch i16 %365, label %375 [
    i16 5348, label %366
    i16 6013, label %366
  ]

366:                                              ; preds = %364, %364
  %367 = getelementptr i8, ptr %0, i32 -102
  %368 = load i16, ptr %367, align 2
  %369 = icmp eq i16 %368, -28634
  br i1 %369, label %370, label %394

370:                                              ; preds = %366
  %371 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %372 = load i64, ptr %371, align 8
  %373 = or i64 %372, 17179869184
  store i64 %373, ptr %371, align 8
  %374 = load i16, ptr %24, align 8
  br label %375

375:                                              ; preds = %370, %364
  %376 = phi i16 [ %365, %364 ], [ %374, %370 ]
  %377 = icmp eq i16 %376, 4130
  br i1 %377, label %378, label %394

378:                                              ; preds = %375, %162
  %379 = getelementptr i8, ptr %0, i32 -102
  %380 = load i16, ptr %379, align 2
  switch i16 %380, label %387 [
    i16 17339, label %381
    i16 17337, label %381
  ]

381:                                              ; preds = %378, %378
  %382 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %383 = load i64, ptr %382, align 8
  %384 = or i64 %383, 1099511627776
  store i64 %384, ptr %382, align 8
  %385 = load i16, ptr %24, align 8
  %386 = icmp eq i16 %385, 4130
  br i1 %386, label %387, label %394

387:                                              ; preds = %381, %378
  %388 = getelementptr i8, ptr %0, i32 -102
  %389 = load i16, ptr %388, align 2
  switch i16 %389, label %394 [
    i16 5658, label %390
    i16 5659, label %390
    i16 5661, label %390
    i16 5662, label %390
    i16 5590, label %390
    i16 5591, label %390
    i16 5660, label %390
    i16 5663, label %390
  ]

390:                                              ; preds = %387, %387, %387, %387, %387, %387, %387, %387
  %391 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %392 = load i64, ptr %391, align 8
  %393 = or i64 %392, 8589934592
  store i64 %393, ptr %391, align 8
  br label %394

394:                                              ; preds = %390, %387, %381, %375, %366, %355, %344, %301, %272, %248, %238, %78
  %395 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %396 = load i64, ptr %395, align 8
  %397 = and i64 %396, 128
  %398 = icmp eq i64 %397, 0
  br i1 %398, label %400, label %399

399:                                              ; preds = %394
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %1, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.4) #5
  br label %400

400:                                              ; preds = %399, %394
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_is_primary_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_dbg_trace(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_xhci_dbg_quirks(ptr noundef %0) #3 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_quirks, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #5
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
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %16 = tail call i32 @__traceiter_xhci_dbg_quirks(ptr noundef null, ptr noundef %0) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  br label %17

17:                                               ; preds = %15, %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @usb_amd_quirk_pll_check() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_dbg_quirks(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_mwi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_d3cold_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xhci_ssic_port_unused_quirk(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %7, %5 ], [ %0, %2 ]
  %10 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 1, i32 0, i32 2
  %11 = select i1 %1, i32 -2147483648, i32 0
  %12 = load ptr, ptr %10, align 8
  %13 = getelementptr i8, ptr %12, i32 34828
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %15 = and i32 %14, -1073741825
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %15) #5, !srcloc !11
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !19
  %17 = and i32 %16, 2147483647
  %18 = or i32 %17, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %18) #5, !srcloc !11
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !21
  %20 = or i32 %19, 1073741824
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %20) #5, !srcloc !11
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !23
  %22 = load ptr, ptr %10, align 8
  %23 = getelementptr i8, ptr %22, i32 34876
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %25 = and i32 %24, -1073741825
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %25) #5, !srcloc !11
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !19
  %27 = and i32 %26, 2147483647
  %28 = or i32 %27, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %28) #5, !srcloc !11
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !21
  %30 = or i32 %29, 1073741824
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %30) #5, !srcloc !11
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_enable_intel_xhci_ports(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_pci_probe(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %4 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #5
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = ptrtoint ptr %4 to i32
  br label %83

8:                                                ; preds = %2
  %9 = tail call i32 @reset_control_reset(ptr noundef %4) #5
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #5, !srcloc !24
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #5, !srcloc !25
  %12 = tail call i32 @usb_hcd_pci_probe(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @xhci_pci_hc_driver) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %77

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  %16 = load ptr, ptr %15, align 8
  %17 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %16) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.usb_hcd, ptr %16, i32 0, i32 25
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi ptr [ %21, %19 ], [ %16, %14 ]
  %24 = getelementptr inbounds %struct.usb_hcd, ptr %23, i32 0, i32 29
  %25 = getelementptr inbounds %struct.usb_hcd, ptr %23, i32 1, i32 2
  store ptr %4, ptr %25, align 4
  %26 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load ptr, ptr %3, align 4
  br label %31

31:                                               ; preds = %29, %22
  %32 = phi ptr [ %30, %29 ], [ %27, %22 ]
  %33 = tail call ptr @usb_create_shared_hcd(ptr noundef nonnull @xhci_pci_hc_driver, ptr noundef %3, ptr noundef %32, ptr noundef %16) #5
  %34 = getelementptr inbounds %struct.usb_hcd, ptr %23, i32 1, i32 0, i32 1
  store ptr %33, ptr %34, align 4
  %35 = icmp eq ptr %33, null
  br i1 %35, label %75, label %36

36:                                               ; preds = %31
  %37 = tail call i32 @xhci_ext_cap_init(ptr noundef %24) #5
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %72

39:                                               ; preds = %36
  %40 = load ptr, ptr %34, align 4
  %41 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 46
  %42 = load i32, ptr %41, align 4
  %43 = tail call i32 @usb_add_hcd(ptr noundef %40, i32 noundef %42, i32 noundef 128) #5
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %72

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.usb_hcd, ptr %23, i32 4, i32 21, i32 3, i32 1
  %47 = load i64, ptr %46, align 8
  %48 = and i64 %47, 524288
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.usb_hcd, ptr %23, i32 1, i32 0, i32 9, i32 3
  %52 = load i32, ptr %51, align 8
  %53 = lshr i32 %52, 12
  %54 = and i32 %53, 15
  %55 = shl nuw nsw i32 2, %54
  %56 = icmp ugt i32 %55, 3
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load ptr, ptr %34, align 4
  %59 = getelementptr inbounds %struct.usb_hcd, ptr %58, i32 0, i32 14
  %60 = load i16, ptr %59, align 8
  %61 = or i16 %60, 512
  store i16 %61, ptr %59, align 8
  br label %62

62:                                               ; preds = %57, %50, %45
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #5, !srcloc !24
  %63 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 0, i32 -1, ptr elementtype(i32) %10) #5, !srcloc !27
  %64 = extractvalue { i32, i32, i32 } %63, 0
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !28
  br label %67

67:                                               ; preds = %66, %62
  %68 = load i64, ptr %46, align 8
  %69 = and i64 %68, 8589934592
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %67
  tail call void @pm_runtime_allow(ptr noundef %3) #5
  br label %83

72:                                               ; preds = %39, %36
  %73 = phi i32 [ %37, %36 ], [ %43, %39 ]
  %74 = load ptr, ptr %34, align 4
  tail call void @usb_put_hcd(ptr noundef %74) #5
  br label %75

75:                                               ; preds = %72, %31
  %76 = phi i32 [ %73, %72 ], [ -12, %31 ]
  tail call void @usb_hcd_pci_remove(ptr noundef %0) #5
  br label %77

77:                                               ; preds = %75, %8
  %78 = phi i32 [ %12, %8 ], [ %76, %75 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #5, !srcloc !24
  %79 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 0, i32 -1, ptr elementtype(i32) %10) #5, !srcloc !27
  %80 = extractvalue { i32, i32, i32 } %79, 0
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !28
  br label %83

83:                                               ; preds = %82, %77, %71, %67, %6
  %84 = phi i32 [ %7, %6 ], [ 0, %71 ], [ 0, %67 ], [ %78, %77 ], [ %78, %82 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xhci_pci_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %3) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 25
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %8, %6 ], [ %3, %1 ]
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 4, i32 20, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 4
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 4, i32 21, i32 3, i32 1
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 8589934592
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void @pm_runtime_forbid(ptr noundef %19) #5
  br label %20

20:                                               ; preds = %18, %9
  %21 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 1, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  tail call void @usb_remove_hcd(ptr noundef nonnull %22) #5
  %25 = load ptr, ptr %21, align 4
  tail call void @usb_put_hcd(ptr noundef %25) #5
  store ptr null, ptr %21, align 4
  br label %26

26:                                               ; preds = %24, %20
  %27 = load i64, ptr %14, align 8
  %28 = and i64 %27, 262144
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call i32 @pci_set_power_state(ptr noundef %0, i32 noundef 3) #5
  br label %32

32:                                               ; preds = %30, %26
  tail call void @usb_hcd_pci_remove(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_pci_shutdown(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_pci_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_shared_hcd(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_ext_cap_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_pci_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind }

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
!8 = !{i64 3836798}
!9 = !{i64 2155387218}
!10 = !{i64 2155387496}
!11 = !{i64 3836380}
!12 = !{i64 2155387965}
!13 = !{i64 2155388309}
!14 = !{i64 2155388581}
!15 = !{i64 2154477770}
!16 = !{i64 2154477918}
!17 = !{i64 2155385152}
!18 = !{i64 2155385333}
!19 = !{i64 2155385740}
!20 = !{i64 2155385931}
!21 = !{i64 2155386338}
!22 = !{i64 2155386519}
!23 = !{i64 2155386926}
!24 = !{i64 820704, i64 2148310675, i64 2148310701, i64 2148310748, i64 2148310770, i64 2148310798, i64 2148310818}
!25 = !{i64 2148322887, i64 2148322913, i64 2148322942, i64 2148322976, i64 2148323007, i64 2148323030}
!26 = !{i64 2148322394}
!27 = !{i64 807273, i64 807298, i64 807320, i64 807336, i64 807348, i64 807368, i64 807392, i64 807408, i64 807420}
!28 = !{i64 2148322520}
