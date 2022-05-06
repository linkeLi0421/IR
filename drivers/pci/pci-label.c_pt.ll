; ModuleID = '/llk/IR/drivers/pci/pci-label.c_pt.bc'
source_filename = "../drivers/pci/pci-label.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.dmi_device = type { %struct.list_head, i32, ptr, ptr }
%struct.dmi_dev_onboard = type { %struct.dmi_device, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }

@smbios_attrs = internal global [3 x ptr] [ptr @dev_attr_smbios_label, ptr @dev_attr_index, ptr null], align 4
@pci_dev_smbios_attr_group = dso_local local_unnamed_addr constant %struct.attribute_group { ptr null, ptr @smbios_attr_is_visible, ptr null, ptr @smbios_attrs, ptr null }, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@dev_attr_smbios_label = internal global %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292 }, ptr @smbios_label_show, ptr null }, align 4
@dev_attr_index = internal global %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292 }, ptr @index_show, ptr null }, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"index\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i16 @smbios_attr_is_visible(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -128
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 16
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 12
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  %11 = getelementptr i8, ptr %0, i32 -108
  %12 = load i32, ptr %11, align 4
  %13 = tail call ptr @dmi_find_device(i32 noundef -3, ptr noundef null, ptr noundef null) #3
  %14 = icmp eq ptr %13, null
  br i1 %14, label %43, label %15

15:                                               ; preds = %32, %3
  %16 = phi ptr [ %33, %32 ], [ %13, %3 ]
  %17 = getelementptr inbounds %struct.dmi_device, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.dmi_dev_onboard, ptr %18, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, %7
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.dmi_dev_onboard, ptr %18, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, %10
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.dmi_dev_onboard, ptr %18, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %12
  br i1 %31, label %35, label %32

32:                                               ; preds = %28, %24, %20, %15
  %33 = tail call ptr @dmi_find_device(i32 noundef -3, ptr noundef null, ptr noundef nonnull %16) #3
  %34 = icmp eq ptr %33, null
  br i1 %34, label %43, label %15

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.dmi_device, ptr %16, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = load i8, ptr %37, align 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %42 = load i16, ptr %41, align 4
  br label %43

43:                                               ; preds = %40, %35, %32, %3
  %44 = phi i16 [ %42, %40 ], [ 0, %35 ], [ 0, %3 ], [ 0, %32 ]
  ret i16 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @find_smbios_instance_string(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 16
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 12
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = tail call ptr @dmi_find_device(i32 noundef -3, ptr noundef null, ptr noundef null) #3
  %14 = icmp eq ptr %13, null
  br i1 %14, label %50, label %15

15:                                               ; preds = %47, %3
  %16 = phi ptr [ %48, %47 ], [ %13, %3 ]
  %17 = getelementptr inbounds %struct.dmi_device, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %47, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.dmi_dev_onboard, ptr %18, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, %7
  br i1 %23, label %24, label %47

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.dmi_dev_onboard, ptr %18, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, %10
  br i1 %27, label %28, label %47

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.dmi_dev_onboard, ptr %18, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %12
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = icmp eq ptr %1, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %32
  switch i32 %2, label %43 [
    i32 2, label %35
    i32 1, label %39
  ]

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.dmi_dev_onboard, ptr %18, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef nonnull %1, ptr noundef nonnull @.str, i32 noundef %37) #3
  br label %50

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.dmi_device, ptr %16, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, ptr noundef %41) #3
  br label %50

43:                                               ; preds = %34, %32
  %44 = getelementptr inbounds %struct.dmi_device, ptr %16, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 @strlen(ptr noundef %45)
  br label %50

47:                                               ; preds = %28, %24, %20, %15
  %48 = tail call ptr @dmi_find_device(i32 noundef -3, ptr noundef null, ptr noundef nonnull %16) #3
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %15

50:                                               ; preds = %47, %43, %39, %35, %3
  %51 = phi i32 [ %38, %35 ], [ %42, %39 ], [ %46, %43 ], [ 0, %3 ], [ 0, %47 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmi_find_device(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smbios_label_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -136
  %5 = tail call fastcc i32 @find_smbios_instance_string(ptr noundef %4, ptr noundef %2, i32 noundef 1)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @index_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -136
  %5 = tail call fastcc i32 @find_smbios_instance_string(ptr noundef %4, ptr noundef %2, i32 noundef 2)
  ret i32 %5
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

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
