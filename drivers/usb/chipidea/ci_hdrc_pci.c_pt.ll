; ModuleID = '/llk/IR/drivers/usb/chipidea/ci_hdrc_pci.c_pt.bc'
source_filename = "../drivers/usb/chipidea/ci_hdrc_pci.c"
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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ci_hdrc_platform_data = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, %struct.usb_otg_caps, i8, i32, i32, i32, i32, %struct.ci_hdrc_cable, %struct.ci_hdrc_cable, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.ci_hdrc_cable = type { i8, i8, i8, ptr, ptr, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.ci_hdrc_pci = type { ptr, ptr }

@__initcall__kmod_ci_hdrc_pci__256_165_ci_hdrc_pci_driver_init6 = internal global ptr @ci_hdrc_pci_driver_init, section ".initcall6.init", align 4
@ci_hdrc_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @ci_hdrc_pci_id_table, ptr @ci_hdrc_pci_probe, ptr @ci_hdrc_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 4
@__exitcall_ci_hdrc_pci_driver_exit = internal global ptr @ci_hdrc_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author257 = internal constant [63 x i8] c"ci_hdrc_pci.author=MIPS - David Lopo <dlopo@chipidea.mips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description258 = internal constant [63 x i8] c"ci_hdrc_pci.description=MIPS CI13XXX USB Peripheral Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file259 = internal constant [50 x i8] c"ci_hdrc_pci.file=drivers/usb/chipidea/ci_hdrc_pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license260 = internal constant [24 x i8] c"ci_hdrc_pci.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias261 = internal constant [39 x i8] c"ci_hdrc_pci.alias=platform:ci13xxx_pci\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"ci_hdrc_pci\00", align 1
@ci_hdrc_pci_id_table = internal constant [6 x %struct.pci_device_id] [%struct.pci_device_id { i32 5439, i32 4100, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @pci_platdata to i32), i32 0 }, %struct.pci_device_id { i32 5439, i32 4102, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @pci_platdata to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2065, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @langwell_pci_platdata to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2089, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @penwell_pci_platdata to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 57350, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @penwell_pci_platdata to i32), i32 0 }, %struct.pci_device_id zeroinitializer], align 4
@pci_platdata = internal global %struct.ci_hdrc_platform_data { ptr @.str, i32 256, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, ptr null, ptr null, %struct.usb_otg_caps zeroinitializer, i8 0, i32 0, i32 0, i32 0, i32 0, %struct.ci_hdrc_cable zeroinitializer, %struct.ci_hdrc_cable zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@langwell_pci_platdata = internal global %struct.ci_hdrc_platform_data { ptr @.str, i32 0, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, ptr null, ptr null, %struct.usb_otg_caps zeroinitializer, i8 0, i32 0, i32 0, i32 0, i32 0, %struct.ci_hdrc_cable zeroinitializer, %struct.ci_hdrc_cable zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@penwell_pci_platdata = internal global %struct.ci_hdrc_platform_data { ptr @.str, i32 0, i32 200, ptr null, ptr null, i32 0, i32 0, i32 0, ptr null, ptr null, %struct.usb_otg_caps zeroinitializer, i8 0, i32 0, i32 0, i32 0, i32 0, %struct.ci_hdrc_cable zeroinitializer, %struct.ci_hdrc_cable zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"device doesn't provide driver data\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"No IRQ, check BIOS/PCI setup!\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"ci_hdrc_add_device failed!\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias261, ptr @__UNIQUE_ID_author257, ptr @__UNIQUE_ID_description258, ptr @__UNIQUE_ID_file259, ptr @__UNIQUE_ID_license260, ptr @__exitcall_ci_hdrc_pci_driver_exit, ptr @__initcall__kmod_ci_hdrc_pci__256_165_ci_hdrc_pci_driver_init6, ptr @ci_hdrc_pci_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ci_hdrc_pci_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @ci_hdrc_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ci_hdrc_pci_driver_exit() #0 section ".exit.text" {
  tail call void @pci_unregister_driver(ptr noundef nonnull @ci_hdrc_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_hdrc_pci_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [3 x %struct.resource], align 4
  %4 = getelementptr inbounds %struct.pci_device_id, ptr %1, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #6
  %7 = icmp eq i32 %5, 0
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  br i1 %7, label %9, label %10

9:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.1) #7
  br label %45

10:                                               ; preds = %2
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 8, i32 noundef 3520) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %45, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @pcim_enable_device(ptr noundef %0) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 46
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.2) #7
  br label %45

21:                                               ; preds = %16
  tail call void @pci_set_master(ptr noundef %0) #6
  %22 = tail call i32 @pci_try_set_mwi(ptr noundef %0) #6
  %23 = tail call ptr @usb_phy_generic_register() #6
  %24 = getelementptr inbounds %struct.ci_hdrc_pci, ptr %11, i32 0, i32 1
  store ptr %23, ptr %24, align 4
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = ptrtoint ptr %23 to i32
  br label %45

28:                                               ; preds = %21
  %29 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %29, i8 0, i32 88, i1 false)
  %30 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %31 = load i32, ptr %30, align 8
  store i32 %31, ptr %3, align 4
  %32 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 3
  store i32 512, ptr %35, align 4
  %36 = load i32, ptr %17, align 4
  %37 = getelementptr inbounds [3 x %struct.resource], ptr %3, i32 0, i32 1
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds [3 x %struct.resource], ptr %3, i32 0, i32 1, i32 3
  store i32 1024, ptr %38, align 4
  %39 = call ptr @ci_hdrc_add_device(ptr noundef %8, ptr noundef nonnull %3, i32 noundef 2, ptr noundef nonnull %6) #6
  store ptr %39, ptr %11, align 4
  %40 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.3) #7
  call void @usb_phy_generic_unregister(ptr noundef %23) #6
  %42 = ptrtoint ptr %39 to i32
  br label %45

43:                                               ; preds = %28
  %44 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  store ptr %11, ptr %44, align 8
  br label %45

45:                                               ; preds = %43, %41, %26, %20, %13, %10, %9
  %46 = phi i32 [ %27, %26 ], [ %42, %41 ], [ 0, %43 ], [ -19, %20 ], [ -19, %9 ], [ -12, %10 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #6
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ci_hdrc_pci_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  tail call void @ci_hdrc_remove_device(ptr noundef %4) #6
  %5 = getelementptr inbounds %struct.ci_hdrc_pci, ptr %3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void @usb_phy_generic_unregister(ptr noundef %6) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_try_set_mwi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_phy_generic_register() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ci_hdrc_add_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_phy_generic_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ci_hdrc_remove_device(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
