; ModuleID = '/llk/IR/drivers/pci/mmap.c_pt.bc'
source_filename = "../drivers/pci/mmap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.9, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}

@pci_phys_vm_ops = internal constant %struct.vm_operations_struct zeroinitializer, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_mmap_page_range(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #3
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #3
  store i32 0, ptr %7, align 4, !annotation !8
  %8 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %1
  call void @pci_resource_to_user(ptr noundef %0, i32 noundef %1, ptr noundef %8, ptr noundef nonnull %6, ptr noundef nonnull %7) #3
  %9 = load i32, ptr %6, align 4
  %10 = lshr i32 %9, 12
  %11 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 13
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 %12, %10
  store i32 %13, ptr %11, align 4
  %14 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %1, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %5
  %18 = load i32, ptr %8, align 8
  %19 = sub i32 %15, %18
  %20 = lshr i32 %19, 12
  %21 = add nuw nsw i32 %20, 1
  br label %22

22:                                               ; preds = %17, %5
  %23 = phi i32 [ %21, %17 ], [ 1048576, %5 ]
  %24 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = load i32, ptr %2, align 4
  %27 = sub i32 %25, %26
  %28 = lshr i32 %27, 12
  %29 = add i32 %28, %13
  %30 = icmp ugt i32 %29, %23
  br i1 %30, label %46, label %31

31:                                               ; preds = %22
  %32 = icmp eq i32 %4, 0
  %33 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 7
  %34 = load i32, ptr %33, align 4
  %35 = select i1 %32, i32 -1661, i32 -61
  %36 = select i1 %32, i32 1616, i32 4
  %37 = and i32 %34, %35
  %38 = or i32 %37, %36
  store i32 %38, ptr %33, align 4
  %39 = icmp eq i32 %3, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %31
  %41 = load i32, ptr %8, align 8
  %42 = lshr i32 %41, 12
  %43 = add i32 %42, %13
  store i32 %43, ptr %11, align 4
  %44 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 12
  store ptr @pci_phys_vm_ops, ptr %44, align 4
  %45 = call i32 @remap_pfn_range(ptr noundef %2, i32 noundef %26, i32 noundef %43, i32 noundef %27, i32 noundef %38) #3
  br label %46

46:                                               ; preds = %40, %31, %22
  %47 = phi i32 [ %45, %40 ], [ -22, %22 ], [ -22, %31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #3
  ret i32 %47
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_resource_to_user(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_mmap_resource_range(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %1
  %7 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %1, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = load i32, ptr %6, align 8
  %12 = sub i32 %8, %11
  %13 = lshr i32 %12, 12
  %14 = add nuw nsw i32 %13, 1
  br label %15

15:                                               ; preds = %10, %5
  %16 = phi i32 [ %14, %10 ], [ 1048576, %5 ]
  %17 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 13
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %2, align 4
  %22 = sub i32 %20, %21
  %23 = lshr i32 %22, 12
  %24 = add i32 %23, %18
  %25 = icmp ugt i32 %24, %16
  br i1 %25, label %41, label %26

26:                                               ; preds = %15
  %27 = icmp eq i32 %4, 0
  %28 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 7
  %29 = load i32, ptr %28, align 4
  %30 = select i1 %27, i32 -1661, i32 -61
  %31 = select i1 %27, i32 1616, i32 4
  %32 = and i32 %29, %30
  %33 = or i32 %32, %31
  store i32 %33, ptr %28, align 4
  %34 = icmp eq i32 %3, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %26
  %36 = load i32, ptr %6, align 8
  %37 = lshr i32 %36, 12
  %38 = add i32 %37, %18
  store i32 %38, ptr %17, align 4
  %39 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 12
  store ptr @pci_phys_vm_ops, ptr %39, align 4
  %40 = tail call i32 @remap_pfn_range(ptr noundef %2, i32 noundef %21, i32 noundef %38, i32 noundef %22, i32 noundef %33) #3
  br label %41

41:                                               ; preds = %35, %26, %15
  %42 = phi i32 [ %40, %35 ], [ -22, %15 ], [ -22, %26 ]
  ret i32 %42
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"auto-init"}
