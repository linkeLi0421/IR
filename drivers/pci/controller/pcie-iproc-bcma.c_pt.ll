; ModuleID = '/llk/IR/drivers/pci/controller/pcie-iproc-bcma.c_pt.bc'
source_filename = "../drivers/pci/controller/pcie-iproc-bcma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_fixup = type { i16, i16, i32, i32, ptr }
%struct.bcma_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bcma_device_id = type { i16, i16, i8, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.list_head = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.bcma_device = type { ptr, %struct.bcma_device_id, %struct.device, ptr, i32, i8, i8, i8, i32, [8 x i32], i32, ptr, ptr, ptr, %struct.list_head }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [40 x i8], [0 x i32] }

@__pci_fixup_bcma_pcie2_fixup_class23 = internal constant %struct.pci_fixup { i16 5348, i16 -32751, i32 -1, i32 0, ptr @bcma_pcie2_fixup_class }, section ".pci_fixup_early", align 4
@__pci_fixup_bcma_pcie2_fixup_class24 = internal constant %struct.pci_fixup { i16 5348, i16 -32750, i32 -1, i32 0, ptr @bcma_pcie2_fixup_class }, section ".pci_fixup_early", align 4
@__initcall__kmod_pcie_iproc_bcma__252_93_iproc_bcma_pcie_driver_init6 = internal global ptr @iproc_bcma_pcie_driver_init, section ".initcall6.init", align 4
@iproc_bcma_pcie_driver = internal global %struct.bcma_driver { ptr @.str, ptr @iproc_bcma_pcie_table, ptr @iproc_bcma_pcie_probe, ptr @iproc_bcma_pcie_remove, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, align 4
@__exitcall_iproc_bcma_pcie_driver_exit = internal global ptr @iproc_bcma_pcie_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author253 = internal constant [38 x i8] c"pcie_iproc_bcma.author=Hauke Mehrtens\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [60 x i8] c"pcie_iproc_bcma.description=Broadcom iProc PCIe BCMA driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file255 = internal constant [60 x i8] c"pcie_iproc_bcma.file=drivers/pci/controller/pcie-iproc-bcma\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [31 x i8] c"pcie_iproc_bcma.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [16 x i8] c"pcie_iproc_bcma\00", align 1
@iproc_bcma_pcie_table = internal constant [2 x %struct.bcma_device_id] [%struct.bcma_device_id { i16 1215, i16 1281, i8 -1, i8 -1 }, %struct.bcma_device_id zeroinitializer], align 2
@.str.1 = private unnamed_addr constant [25 x i8] c"no controller registers\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"PCIe MEM space\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_file255, ptr @__UNIQUE_ID_license256, ptr @__exitcall_iproc_bcma_pcie_driver_exit, ptr @__initcall__kmod_pcie_iproc_bcma__252_93_iproc_bcma_pcie_driver_init6, ptr @__pci_fixup_bcma_pcie2_fixup_class23, ptr @__pci_fixup_bcma_pcie2_fixup_class24, ptr @iproc_bcma_pcie_driver_exit], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @bcma_pcie2_fixup_class(ptr nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11
  store i32 394240, ptr %2, align 8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @iproc_bcma_pcie_driver_init() #1 section ".init.text" {
  %1 = tail call i32 @__bcma_driver_register(ptr noundef nonnull @iproc_bcma_pcie_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @iproc_bcma_pcie_driver_exit() #1 section ".exit.text" {
  tail call void @bcma_driver_unregister(ptr noundef nonnull @iproc_bcma_pcie_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bcma_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_bcma_pcie_probe(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 2
  %3 = tail call ptr @devm_pci_alloc_host_bridge(ptr noundef %2, i32 noundef 100) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_host_bridge, ptr %3, i32 0, i32 16
  store ptr %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.pci_host_bridge, ptr %3, i32 1, i32 0, i32 0, i32 1
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.pci_host_bridge, ptr %3, i32 1, i32 0, i32 0, i32 2
  store ptr %9, ptr %10, align 4
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  br label %32

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.pci_host_bridge, ptr %3, i32 1, i32 0, i32 0, i32 3
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 9
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.pci_host_bridge, ptr %3, i32 1, i32 0, i32 0, i32 4
  store i32 %18, ptr %19, align 4
  %20 = load i32, ptr %17, align 8
  %21 = add i32 %20, 134217727
  %22 = getelementptr inbounds %struct.pci_host_bridge, ptr %3, i32 1, i32 0, i32 0, i32 5
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.pci_host_bridge, ptr %3, i32 1, i32 0, i32 0, i32 6
  store ptr @.str.2, ptr %23, align 4
  %24 = getelementptr inbounds %struct.pci_host_bridge, ptr %3, i32 1, i32 0, i32 0, i32 7
  store i32 512, ptr %24, align 4
  %25 = getelementptr inbounds %struct.pci_host_bridge, ptr %3, i32 0, i32 7
  tail call void @pci_add_resource(ptr noundef %25, ptr noundef %19) #5
  %26 = tail call i32 @devm_request_pci_bus_resources(ptr noundef %2, ptr noundef %25) #5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %13
  %29 = getelementptr inbounds %struct.pci_host_bridge, ptr %3, i32 1, i32 0, i32 6
  store ptr @iproc_bcma_pcie_map_irq, ptr %29, align 4
  %30 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 13
  store ptr %6, ptr %30, align 4
  %31 = tail call i32 @iproc_pcie_setup(ptr noundef %6, ptr noundef %25) #5
  br label %32

32:                                               ; preds = %28, %13, %12, %1
  %33 = phi i32 [ %31, %28 ], [ -12, %12 ], [ -12, %1 ], [ %26, %13 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @iproc_bcma_pcie_remove(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @iproc_pcie_remove(ptr noundef %3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_alloc_host_bridge(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_add_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_pci_bus_resources(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_bcma_pcie_map_irq(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #3 {
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 -16
  %8 = tail call i32 @bcma_core_irq(ptr noundef %7, i32 noundef 5) #5
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iproc_pcie_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_core_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iproc_pcie_remove(ptr noundef) local_unnamed_addr #2

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
