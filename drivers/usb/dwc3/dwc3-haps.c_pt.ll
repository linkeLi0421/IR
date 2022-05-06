; ModuleID = '/llk/IR/drivers/usb/dwc3/dwc3-haps.c_pt.bc'
source_filename = "../drivers/usb/dwc3/dwc3-haps.c"
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
%struct.software_node = type { ptr, ptr, ptr }
%struct.property_entry = type { ptr, i32, i8, i32, %union.anon.65 }
%union.anon.65 = type { %union.anon.66 }
%union.anon.66 = type { [1 x i64] }
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
%struct.dwc3_haps = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.pdev_archdata = type { ptr }

@__UNIQUE_ID_author228 = internal constant [52 x i8] c"dwc3_haps.author=Thinh Nguyen <thinhn@synopsys.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [42 x i8] c"dwc3_haps.file=drivers/usb/dwc3/dwc3-haps\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [25 x i8] c"dwc3_haps.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [51 x i8] c"dwc3_haps.description=Synopsys HAPS PCI Glue Layer\00", section ".modinfo", align 1
@__initcall__kmod_dwc3_haps__232_148_dwc3_haps_driver_init6 = internal global ptr @dwc3_haps_driver_init, section ".initcall6.init", align 4
@dwc3_haps_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @dwc3_haps_id_table, ptr @dwc3_haps_probe, ptr @dwc3_haps_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 4
@__exitcall_dwc3_haps_driver_exit = internal global ptr @dwc3_haps_driver_exit, section ".exitcall.exit", align 4
@.str = private unnamed_addr constant [10 x i8] c"dwc3_haps\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"dwc3-haps\00", align 1
@dwc3_haps_id_table = internal constant [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 5827, i32 43981, i32 -1, i32 -1, i32 787200, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 5827, i32 43982, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5827, i32 43983, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to enable pci device\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"dwc3\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"dwc_usb3\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"couldn't add resources to dwc3 device\0A\00", align 1
@dwc3_haps_swnode = internal constant %struct.software_node { ptr null, ptr null, ptr @initial_properties }, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"failed to register dwc3 device\0A\00", align 1
@initial_properties = internal constant [5 x %struct.property_entry] [%struct.property_entry { ptr @.str.7, i32 0, i8 1, i32 0, %union.anon.65 zeroinitializer }, %struct.property_entry { ptr @.str.8, i32 0, i8 1, i32 0, %union.anon.65 zeroinitializer }, %struct.property_entry { ptr @.str.9, i32 0, i8 1, i32 0, %union.anon.65 zeroinitializer }, %struct.property_entry { ptr @.str.10, i32 0, i8 1, i32 0, %union.anon.65 zeroinitializer }, %struct.property_entry zeroinitializer], align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"snps,usb3_lpm_capable\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"snps,has-lpm-erratum\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"snps,dis_enblslpm_quirk\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"linux,sysdev_is_parent\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_dwc3_haps_driver_exit, ptr @__initcall__kmod_dwc3_haps__232_148_dwc3_haps_driver_init6, ptr @dwc3_haps_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dwc3_haps_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @dwc3_haps_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @dwc3_haps_driver_exit() #0 section ".exit.text" {
  tail call void @pci_unregister_driver(ptr noundef nonnull @dwc3_haps_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_haps_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca [2 x %struct.resource], align 4
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %5 = tail call i32 @pcim_enable_device(ptr noundef %0) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #7
  br label %50

8:                                                ; preds = %2
  tail call void @pci_set_master(ptr noundef %0) #6
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 8, i32 noundef 3520) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %50, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str.3, i32 noundef -2) #6
  store ptr %12, ptr %9, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %50, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds i8, ptr %3, i32 16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %15, i8 0, i32 48, i1 false)
  %16 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %17 = load i32, ptr %16, align 8
  store i32 %17, ptr %3, align 4
  %18 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 2
  store ptr @.str.4, ptr %21, align 4
  %22 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 3
  store i32 512, ptr %22, align 4
  %23 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 46
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds [2 x %struct.resource], ptr %3, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds [2 x %struct.resource], ptr %3, i32 0, i32 1, i32 2
  store ptr @.str.4, ptr %26, align 4
  %27 = getelementptr inbounds [2 x %struct.resource], ptr %3, i32 0, i32 1, i32 3
  store i32 1024, ptr %27, align 4
  %28 = call i32 @platform_device_add_resources(ptr noundef nonnull %12, ptr noundef nonnull %3, i32 noundef 2) #6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %14
  %31 = getelementptr inbounds %struct.dwc3_haps, ptr %9, i32 0, i32 1
  store ptr %0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3, i32 1
  store ptr %4, ptr %32, align 4
  %33 = load ptr, ptr %9, align 4
  %34 = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3
  %35 = call i32 @device_add_software_node(ptr noundef %34, ptr noundef nonnull @dwc3_haps_swnode) #6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = call i32 @platform_device_add(ptr noundef %33) #6
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  store ptr %9, ptr %41, align 8
  br label %50

42:                                               ; preds = %37, %14
  %43 = phi ptr [ @.str.5, %14 ], [ @.str.6, %37 ]
  %44 = phi ptr [ %12, %14 ], [ %33, %37 ]
  %45 = phi i32 [ %28, %14 ], [ %38, %37 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull %43) #7
  br label %46

46:                                               ; preds = %42, %30
  %47 = phi ptr [ %33, %30 ], [ %44, %42 ]
  %48 = phi i32 [ %35, %30 ], [ %45, %42 ]
  %49 = getelementptr inbounds %struct.platform_device, ptr %47, i32 0, i32 3
  call void @device_remove_software_node(ptr noundef %49) #6
  call void @platform_device_put(ptr noundef %47) #6
  br label %50

50:                                               ; preds = %46, %40, %11, %8, %7
  %51 = phi i32 [ -19, %7 ], [ %48, %46 ], [ 0, %40 ], [ -12, %8 ], [ -12, %11 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwc3_haps_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  tail call void @device_remove_software_node(ptr noundef %5) #6
  %6 = load ptr, ptr %3, align 4
  tail call void @platform_device_unregister(ptr noundef %6) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_software_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_software_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

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
