; ModuleID = '/llk/IR/drivers/usb/host/ohci-pci.c_pt.bc'
source_filename = "../drivers/usb/host/ohci-pci.c"
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
%struct.ohci_driver_overrides = type { ptr, i32, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.65, i32 }
%union.anon.65 = type { ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }

@__initcall__kmod_ohci_pci__233_321_ohci_pci_init6 = internal global ptr @ohci_pci_init, section ".initcall6.init", align 4
@ohci_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, ptr @hcd_name, ptr @pci_ids, ptr @ohci_pci_probe, ptr @usb_hcd_pci_remove, ptr null, ptr null, ptr @usb_hcd_pci_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usb_hcd_pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, align 4
@__exitcall_ohci_pci_cleanup = internal global ptr @ohci_pci_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_description234 = internal constant [46 x i8] c"ohci_pci.description=OHCI PCI platform driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [40 x i8] c"ohci_pci.file=drivers/usb/host/ohci-pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [21 x i8] c"ohci_pci.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep237 = internal constant [31 x i8] c"ohci_pci.softdep=pre: ehci_pci\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [32 x i8] c"\016%s: OHCI PCI platform driver\0A\00", align 1
@hcd_name = internal constant [9 x i8] c"ohci-pci\00", align 1
@ohci_pci_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@pci_overrides = internal constant %struct.ohci_driver_overrides { ptr @.str.2, i32 0, ptr @ohci_pci_reset }, section ".init.rodata", align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"ohci_pci\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"OHCI PCI host controller\00", align 1
@ohci_pci_quirks = internal constant [13 x %struct.pci_device_id] [%struct.pci_device_id { i32 4130, i32 29708, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @ohci_quirk_amd756 to i32), i32 0 }, %struct.pci_device_id { i32 4165, i32 51297, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @ohci_quirk_opti to i32), i32 0 }, %struct.pci_device_id { i32 4107, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @ohci_quirk_ns to i32), i32 0 }, %struct.pci_device_id { i32 3601, i32 41208, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @ohci_quirk_zfmicro to i32), i32 0 }, %struct.pci_device_id { i32 4143, i32 438, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @ohci_quirk_toshiba_scc to i32), i32 0 }, %struct.pci_device_id { i32 4147, i32 53, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @ohci_quirk_nec to i32), i32 0 }, %struct.pci_device_id { i32 4281, i32 21047, i32 4473, i32 4, i32 0, i32 0, i32 ptrtoint (ptr @broken_suspend to i32), i32 0 }, %struct.pci_device_id { i32 4739, i32 33106, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @broken_suspend to i32), i32 0 }, %struct.pci_device_id { i32 4098, i32 17303, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @ohci_quirk_amd700 to i32), i32 0 }, %struct.pci_device_id { i32 4098, i32 17304, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @ohci_quirk_amd700 to i32), i32 0 }, %struct.pci_device_id { i32 4098, i32 17305, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @ohci_quirk_amd700 to i32), i32 0 }, %struct.pci_device_id { i32 4203, i32 63, i32 6900, i32 4352, i32 0, i32 0, i32 ptrtoint (ptr @ohci_quirk_qemu to i32), i32 0 }, %struct.pci_device_id zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"unsupported big endian Toshiba quirk\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Restarting NEC controller failed in %s, %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"ohci_restart\00", align 1
@pci_ids = internal constant [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 787216, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4170, i32 52225, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], align 4
@usb_hcd_pci_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__UNIQUE_ID_softdep237, ptr @__exitcall_ohci_pci_cleanup, ptr @__initcall__kmod_ohci_pci__233_321_ohci_pci_init6, ptr @ohci_pci_cleanup], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ohci_pci_init() #0 section ".init.text" {
  %1 = tail call i32 @usb_disabled() #7
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @hcd_name) #8
  tail call void @ohci_init_driver(ptr noundef nonnull @ohci_pci_hc_driver, ptr noundef nonnull @pci_overrides) #7
  store ptr @ohci_suspend, ptr getelementptr inbounds (%struct.hc_driver, ptr @ohci_pci_hc_driver, i32 0, i32 7), align 4
  store ptr @ohci_resume, ptr getelementptr inbounds (%struct.hc_driver, ptr @ohci_pci_hc_driver, i32 0, i32 8), align 4
  %5 = tail call i32 @__pci_register_driver(ptr noundef nonnull @ohci_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #7
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi i32 [ %5, %3 ], [ -19, %0 ]
  ret i32 %7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ohci_pci_cleanup() #0 section ".exit.text" {
  tail call void @pci_unregister_driver(ptr noundef nonnull @ohci_pci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ohci_init_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ohci_suspend(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ohci_resume(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ohci_pci_reset(ptr noundef %0) #3 {
  %2 = load ptr, ptr %0, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %2, i32 -136
  %6 = tail call ptr @pci_match_id(ptr noundef nonnull @ohci_pci_quirks, ptr noundef %5) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.pci_device_id, ptr %6, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 %11(ptr noundef %0) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8, %4, %1
  %15 = tail call i32 @ohci_setup(ptr noundef %0) #7
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi i32 [ %15, %14 ], [ %12, %8 ]
  %18 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 11, i32 1
  %19 = load i16, ptr %18, align 4
  %20 = and i16 %19, 1
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = or i32 %24, 512
  store i32 %25, ptr %23, align 8
  br label %26

26:                                               ; preds = %22, %16
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ohci_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ohci_quirk_amd756(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 3, i32 2
  store i32 1, ptr %2, align 8
  %3 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15
  %6 = tail call i32 @device_init_wakeup(ptr noundef %5, i1 noundef zeroext false) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ohci_quirk_opti(ptr nocapture noundef readnone %0) #4 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ohci_quirk_ns(ptr nocapture noundef %0) #3 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 -128
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %2, i32 -108
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 248
  %8 = or i32 %7, 1
  %9 = tail call ptr @pci_get_slot(ptr noundef %4, i32 noundef %8) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 8
  %13 = load i16, ptr %12, align 2
  %14 = icmp eq i16 %13, 14
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 7
  %17 = load i16, ptr %16, align 8
  %18 = icmp eq i16 %17, 4107
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 3, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = or i32 %21, 2
  store i32 %22, ptr %20, align 8
  br label %23

23:                                               ; preds = %19, %15, %11, %1
  tail call void @pci_dev_put(ptr noundef %9) #7
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @ohci_quirk_zfmicro(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 3, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = or i32 %3, 32
  store i32 %4, ptr %2, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ohci_quirk_toshiba_scc(ptr nocapture noundef readonly %0) #3 {
  %2 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #8
  ret i32 -6
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ohci_quirk_nec(ptr noundef %0) #6 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 3, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = or i32 %3, 64
  store i32 %4, ptr %2, align 8
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 21, i32 3, i32 1
  store i32 -32, ptr %5, align 8
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 21, i32 3, i32 2
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 21, i32 3, i32 3
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 21, i32 3, i32 4
  store ptr @ohci_quirk_nec_worker, ptr %8, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @broken_suspend(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %5 = tail call i32 @device_init_wakeup(ptr noundef %4, i1 noundef zeroext false) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ohci_quirk_amd700(ptr nocapture noundef %0) #3 {
  %2 = tail call zeroext i1 @usb_amd_quirk_pll_check() #7
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 3, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = or i32 %5, 512
  store i32 %6, ptr %4, align 8
  br label %7

7:                                                ; preds = %3, %1
  %8 = tail call zeroext i1 @usb_amd_prefetch_quirk() #7
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 3, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = or i32 %10, 1024
  %12 = select i1 %8, i32 %11, i32 %10
  %13 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 3, i32 2
  %14 = or i32 %12, 2048
  store i32 %14, ptr %13, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @ohci_quirk_qemu(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 3, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = or i32 %3, 4096
  store i32 %4, ptr %2, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_slot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ohci_quirk_nec_worker(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -640
  %3 = tail call i32 @ohci_restart(ptr noundef %2) #7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -992
  %7 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %3) #8
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ohci_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @usb_amd_quirk_pll_check() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @usb_amd_prefetch_quirk() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ohci_pci_probe(ptr noundef %0, ptr noundef %1) #3 {
  %3 = tail call i32 @usb_hcd_pci_probe(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @ohci_pci_hc_driver) #7
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_pci_remove(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_pci_shutdown(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_pci_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
