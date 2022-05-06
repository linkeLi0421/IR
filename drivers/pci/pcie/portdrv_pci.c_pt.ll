; ModuleID = '/llk/IR/drivers/pci/pcie/portdrv_pci.c_pt.bc'
source_filename = "../drivers/pci/pcie/portdrv_pci.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }

@__setup_str_pcie_port_setup = internal constant [12 x i8] c"pcie_ports=\00", section ".init.rodata", align 1
@__setup_pcie_port_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_pcie_port_setup, ptr @pcie_port_setup, i32 0 }, section ".init.setup", align 4
@__initcall__kmod_pcieportdrv__229_250_pcie_portdrv_init6 = internal global ptr @pcie_portdrv_init, section ".initcall6.init", align 4
@pcie_ports_disabled = dso_local local_unnamed_addr global i8 0, align 1
@pcie_ports_native = dso_local local_unnamed_addr global i8 0, align 1
@pcie_ports_dpc_native = dso_local local_unnamed_addr global i8 0, align 1
@.str = private unnamed_addr constant [7 x i8] c"compat\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"native\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"dpc-native\00", align 1
@pcie_portdrv_dmi_table = internal constant [2 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr @dmi_pcie_pme_disable_msi, ptr @.str.4, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"MICRO-STAR INTERNATIONAL CO., LTD\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"U-100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], section ".init.rodata", align 4
@pcie_portdriver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.6, ptr @port_pci_ids, ptr @pcie_portdrv_probe, ptr @pcie_portdrv_remove, ptr null, ptr null, ptr @pcie_portdrv_remove, ptr null, ptr null, ptr null, ptr @pcie_portdrv_err_handler, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcie_portdrv_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"pcieportdrv\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"MSI Wind U-100\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"\015%s detected: will not use MSI for PCIe PME signaling\0A\00", align 1
@pcie_pme_msi_disabled = external dso_local local_unnamed_addr global i8, align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"pcieport\00", align 1
@port_pci_ids = internal constant [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 394240, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 394241, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 526080, i32 -1, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], align 4
@pcie_portdrv_err_handler = internal constant %struct.pci_error_handlers { ptr @pcie_portdrv_error_detected, ptr @pcie_portdrv_mmio_enabled, ptr @pcie_portdrv_slot_reset, ptr null, ptr null, ptr null }, align 4
@pcie_portdrv_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pcie_port_device_suspend, ptr @pcie_port_device_resume, ptr @pcie_port_device_suspend, ptr @pcie_port_device_resume, ptr @pcie_port_device_suspend, ptr @pcie_port_device_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcie_port_device_resume_noirq, ptr null, ptr null, ptr null, ptr @pcie_port_device_resume_noirq, ptr @pcie_port_runtime_suspend, ptr @pcie_port_device_runtime_resume, ptr @pcie_port_runtime_idle }, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_pcieportdrv__229_250_pcie_portdrv_init6, ptr @__setup_pcie_port_setup], section "llvm.metadata"

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @pcie_port_setup(ptr nocapture noundef readonly %0) #0 section ".init.text" {
  %2 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(7) @.str, i32 noundef 6)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(7) @.str.1, i32 noundef 6)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(11) @.str.2, i32 noundef 10)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7, %4, %1
  %11 = phi ptr [ @pcie_ports_disabled, %1 ], [ @pcie_ports_native, %4 ], [ @pcie_ports_dpc_native, %7 ]
  store i8 1, ptr %11, align 1
  br label %12

12:                                               ; preds = %10, %7
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pcie_portdrv_init() #1 section ".init.text" {
  %1 = load i8, ptr @pcie_ports_disabled, align 1, !range !8
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 @pcie_pme_init() #9
  %5 = tail call i32 @dmi_check_system(ptr noundef nonnull @pcie_portdrv_dmi_table) #9
  %6 = tail call i32 @__pci_register_driver(ptr noundef nonnull @pcie_portdriver, ptr noundef null, ptr noundef nonnull @.str.3) #9
  br label %7

7:                                                ; preds = %3, %0
  %8 = phi i32 [ %6, %3 ], [ -13, %0 ]
  ret i32 %8
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmi_check_system(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_pme_init() local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dmi_pcie_pme_disable_msi(ptr nocapture noundef readonly %0) #1 section ".init.text" {
  %2 = getelementptr inbounds %struct.dmi_system_id, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %3) #10
  store i8 1, ptr @pcie_pme_msi_disabled, align 1
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcie_portdrv_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #5 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %8 = load i16, ptr %7, align 2
  %9 = lshr i16 %8, 4
  %10 = and i16 %9, 15
  %11 = zext i16 %10 to i32
  switch i32 %11, label %25 [
    i32 10, label %12
    i32 4, label %13
    i32 5, label %13
    i32 6, label %13
  ]

12:                                               ; preds = %6
  tail call void @pcie_link_rcec(ptr noundef %0) #9
  br label %13

13:                                               ; preds = %12, %6, %6, %6
  %14 = tail call i32 @pcie_port_device_register(ptr noundef %0) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = tail call i32 @pci_save_state(ptr noundef %0) #9
  %18 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 2
  store i32 5, ptr %18, align 8
  %19 = tail call zeroext i1 @pci_bridge_d3_possible(ptr noundef %0) #9
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %21, i32 noundef 100) #9
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %21, i1 noundef zeroext true) #9
  %22 = tail call i64 @ktime_get_mono_fast_ns() #9
  %23 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 22
  store volatile i64 %22, ptr %23, align 8
  %24 = tail call i32 @__pm_runtime_suspend(ptr noundef %21, i32 noundef 13) #9
  tail call void @pm_runtime_allow(ptr noundef %21) #9
  br label %25

25:                                               ; preds = %20, %16, %13, %6, %2
  %26 = phi i32 [ -19, %6 ], [ -19, %2 ], [ %14, %13 ], [ 0, %20 ], [ 0, %16 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pcie_portdrv_remove(ptr noundef %0) #5 {
  %2 = tail call zeroext i1 @pci_bridge_d3_possible(ptr noundef %0) #9
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void @pm_runtime_forbid(ptr noundef %4) #9
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #9, !srcloc !9
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #9, !srcloc !10
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %4, i1 noundef zeroext false) #9
  br label %7

7:                                                ; preds = %3, %1
  tail call void @pcie_port_device_remove(ptr noundef %0) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcie_link_rcec(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_port_device_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_bridge_d3_possible(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcie_port_device_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @pcie_portdrv_error_detected(ptr nocapture noundef readnone %0, i32 noundef %1) #7 {
  %3 = icmp eq i32 %1, 2
  %4 = select i1 %3, i32 3, i32 2
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @pcie_portdrv_mmio_enabled(ptr nocapture noundef readnone %0) #7 {
  ret i32 5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcie_portdrv_slot_reset(ptr noundef %0) #5 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 32, ptr %2, align 4
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %4 = call i32 @device_for_each_child(ptr noundef %3, ptr noundef nonnull %2, ptr noundef nonnull @pcie_port_device_iter) #9
  call void @pci_restore_state(ptr noundef %0) #9
  %5 = call i32 @pci_save_state(ptr noundef %0) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_port_device_iter(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_port_device_suspend(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_port_device_resume(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_port_device_resume_noirq(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcie_port_runtime_suspend(ptr noundef %0) #5 {
  %2 = getelementptr i8, ptr %0, i32 -30
  %3 = load i32, ptr %2, align 2
  %4 = and i32 %3, 1024
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @pcie_port_device_runtime_suspend(ptr noundef %0) #9
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i32 [ %7, %6 ], [ -16, %1 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_port_device_runtime_resume(ptr noundef) #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @pcie_port_runtime_idle(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr i8, ptr %0, i32 -30
  %3 = load i32, ptr %2, align 2
  %4 = and i32 %3, 1024
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 -16, i32 0
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_port_device_runtime_suspend(ptr noundef) local_unnamed_addr #3

attributes #0 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{i64 803962, i64 2148293933, i64 2148293959, i64 2148294006, i64 2148294028, i64 2148294056, i64 2148294076}
!10 = !{i64 2148306145, i64 2148306171, i64 2148306200, i64 2148306234, i64 2148306265, i64 2148306288}
