; ModuleID = '/llk/IR/drivers/iommu/of_iommu.c_pt.bc'
source_filename = "../drivers/iommu/of_iommu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.of_pci_iommu_alias_info = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.dev_iommu = type { %struct.mutex, ptr, ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.iommu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }

@pci_bus_type = external dso_local global %struct.bus_type, align 4
@.str = private unnamed_addr constant [10 x i8] c"iommu-map\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"iommu-map-mask\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"iommus\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"#iommu-cells\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_iommu_configure(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = alloca %struct.of_phandle_args, align 4
  %6 = alloca %struct.of_pci_iommu_alias_info, align 8
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 35
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.dev_iommu, ptr %8, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %1, null
  br i1 %13, label %87, label %16

14:                                               ; preds = %3
  %15 = icmp eq ptr %1, null
  br i1 %15, label %87, label %22

16:                                               ; preds = %10
  %17 = icmp eq ptr %12, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr %12, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %87

21:                                               ; preds = %18
  tail call void @iommu_fwspec_free(ptr noundef %0) #4
  br label %22

22:                                               ; preds = %21, %16, %14
  %23 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, @pci_bus_type
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #4
  store ptr %0, ptr %6, align 8
  %27 = getelementptr inbounds %struct.of_pci_iommu_alias_info, ptr %6, i32 0, i32 1
  store ptr %1, ptr %27, align 4
  tail call void @pci_request_acs() #4
  %28 = getelementptr i8, ptr %0, i32 -136
  %29 = call i32 @pci_for_each_dma_alias(ptr noundef %28, ptr noundef nonnull @of_pci_iommu_init, ptr noundef nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  br label %60

30:                                               ; preds = %22
  %31 = icmp eq ptr %2, null
  br i1 %31, label %46, label %32

32:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false) #4
  %33 = getelementptr inbounds %struct.of_phandle_args, ptr %5, i32 0, i32 1
  store i32 1, ptr %33, align 4
  %34 = load i32, ptr %2, align 4
  %35 = getelementptr inbounds %struct.of_phandle_args, ptr %5, i32 0, i32 2
  %36 = call i32 @of_map_id(ptr noundef nonnull %1, i32 noundef %34, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull %5, ptr noundef %35) #4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = icmp eq i32 %36, -19
  %40 = select i1 %39, i32 1, i32 %36
  br label %44

41:                                               ; preds = %32
  %42 = call fastcc i32 @of_iommu_xlate(ptr noundef %0, ptr noundef nonnull %5) #4
  %43 = load ptr, ptr %5, align 4
  call void @of_node_put(ptr noundef %43) #4
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi i32 [ %40, %38 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #4
  br label %60

46:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #4, !annotation !8
  %47 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %4) #4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %58

49:                                               ; preds = %53
  %50 = add i32 %54, 1
  %51 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef -1, i32 noundef %50, ptr noundef nonnull %4) #4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49, %46
  %54 = phi i32 [ %50, %49 ], [ 0, %46 ]
  %55 = call fastcc i32 @of_iommu_xlate(ptr noundef %0, ptr noundef nonnull %4) #4
  %56 = load ptr, ptr %4, align 4
  call void @of_node_put(ptr noundef %56) #4
  %57 = icmp eq i32 %55, 0
  br i1 %57, label %49, label %58

58:                                               ; preds = %53, %49, %46
  %59 = phi i32 [ 1, %46 ], [ %55, %53 ], [ 0, %49 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #4
  br label %60

60:                                               ; preds = %58, %44, %26
  %61 = phi i32 [ %29, %26 ], [ %45, %44 ], [ %59, %58 ]
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %60
  %64 = load ptr, ptr %7, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.dev_iommu, ptr %64, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  br label %69

69:                                               ; preds = %66, %63
  %70 = phi ptr [ %68, %66 ], [ null, %63 ]
  %71 = load ptr, ptr %70, align 4
  %72 = load ptr, ptr %23, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %87, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 34
  %76 = load ptr, ptr %75, align 8
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = call i32 @iommu_probe_device(ptr noundef %0) #4
  br label %80

80:                                               ; preds = %78, %60
  %81 = phi ptr [ %71, %78 ], [ null, %60 ]
  %82 = phi i32 [ %79, %78 ], [ %61, %60 ]
  %83 = icmp eq i32 %82, -517
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = icmp slt i32 %82, 0
  %86 = select i1 %85, ptr null, ptr %81
  br label %87

87:                                               ; preds = %84, %80, %74, %69, %18, %14, %10
  %88 = phi ptr [ null, %10 ], [ %19, %18 ], [ null, %14 ], [ inttoptr (i32 -517 to ptr), %80 ], [ %71, %69 ], [ %71, %74 ], [ %86, %84 ]
  ret ptr %88
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_fwspec_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_request_acs() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_for_each_dma_alias(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_pci_iommu_init(ptr nocapture noundef readnone %0, i16 noundef zeroext %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = zext i16 %1 to i32
  %6 = getelementptr inbounds %struct.of_pci_iommu_alias_info, ptr %2, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #4
  %9 = getelementptr inbounds %struct.of_phandle_args, ptr %4, i32 0, i32 1
  store i32 1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.of_phandle_args, ptr %4, i32 0, i32 2
  %11 = call i32 @of_map_id(ptr noundef %7, i32 noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull %4, ptr noundef %10) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = icmp eq i32 %11, -19
  %15 = select i1 %14, i32 1, i32 %11
  br label %19

16:                                               ; preds = %3
  %17 = call fastcc i32 @of_iommu_xlate(ptr noundef %8, ptr noundef nonnull %4) #4
  %18 = load ptr, ptr %4, align 4
  call void @of_node_put(ptr noundef %18) #4
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i32 [ %15, %13 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #4
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_probe_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_map_id(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @of_iommu_xlate(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.device_node, ptr %3, i32 0, i32 3
  %5 = tail call ptr @iommu_ops_from_fwnode(ptr noundef %4) #4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.iommu_ops, ptr %5, i32 0, i32 22
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %7, %2
  %12 = load ptr, ptr %1, align 4
  %13 = tail call zeroext i1 @of_device_is_available(ptr noundef %12) #4
  br i1 %13, label %14, label %31

14:                                               ; preds = %11
  %15 = load ptr, ptr %1, align 4
  %16 = getelementptr inbounds %struct.device_node, ptr %15, i32 0, i32 3
  %17 = tail call i32 @iommu_fwspec_init(ptr noundef %0, ptr noundef %16, ptr noundef %5) #4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  br i1 %6, label %20, label %22

20:                                               ; preds = %19
  %21 = tail call i32 @driver_deferred_probe_check_state(ptr noundef %0) #4
  br label %31

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.iommu_ops, ptr %5, i32 0, i32 40
  %24 = load ptr, ptr %23, align 4
  %25 = tail call zeroext i1 @try_module_get(ptr noundef %24) #4
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.iommu_ops, ptr %5, i32 0, i32 22
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %28(ptr noundef %0, ptr noundef %1) #4
  %30 = load ptr, ptr %23, align 4
  tail call void @module_put(ptr noundef %30) #4
  br label %31

31:                                               ; preds = %26, %22, %20, %14, %11, %7
  %32 = phi i32 [ %29, %26 ], [ %21, %20 ], [ 1, %11 ], [ 1, %7 ], [ %17, %14 ], [ -19, %22 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_ops_from_fwnode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_fwspec_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_deferred_probe_check_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind }

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
