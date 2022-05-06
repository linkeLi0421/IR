; ModuleID = '/llk/IR/drivers/pci/controller/pci-host-common.c_pt.bc'
source_filename = "../drivers/pci/controller/pci-host-common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_host_common_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_host_common_probe\22\09\09\09\09\09"
module asm "__kstrtabns_pci_host_common_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_host_common_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_host_common_remove\22\09\09\09\09\09"
module asm "__kstrtabns_pci_host_common_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [40 x i8], [0 x i32] }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.pci_ecam_ops = type { i32, %struct.pci_ops, ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }

@__kstrtab_pci_host_common_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_host_common_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_host_common_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_host_common_probe to i32), ptr @__kstrtab_pci_host_common_probe, ptr @__kstrtabns_pci_host_common_probe }, section "___ksymtab_gpl+pci_host_common_probe", align 4
@__kstrtab_pci_host_common_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_host_common_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_host_common_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_host_common_remove to i32), ptr @__kstrtab_pci_host_common_remove, ptr @__kstrtabns_pci_host_common_remove }, section "___ksymtab_gpl+pci_host_common_remove", align 4
@__UNIQUE_ID_file228 = internal constant [60 x i8] c"pci_host_common.file=drivers/pci/controller/pci-host-common\00", section ".modinfo", align 1
@__UNIQUE_ID_license229 = internal constant [31 x i8] c"pci_host_common.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [24 x i8] c"missing \22reg\22 property\0A\00", align 1
@pci_flags = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_file228, ptr @__UNIQUE_ID_license229, ptr @__ksymtab_pci_host_common_probe, ptr @__ksymtab_pci_host_common_remove], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_host_common_probe(ptr noundef %0) #0 {
  %2 = alloca %struct.resource, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call ptr @of_device_get_match_data(ptr noundef %3) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %61, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @devm_pci_alloc_host_bridge(ptr noundef %3, i32 noundef 0) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %61, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %10, align 8
  tail call void @of_pci_check_probe_only() #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false) #5, !annotation !8
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %12 = load ptr, ptr %11, align 8
  %13 = call i32 @of_address_to_resource(ptr noundef %12, i32 noundef 0, ptr noundef nonnull %2) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str) #6
  %16 = inttoptr i32 %13 to ptr
  br label %41

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 0, i32 7
  br label %19

19:                                               ; preds = %23, %17
  %20 = phi ptr [ %18, %17 ], [ %21, %23 ]
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %18
  br i1 %22, label %40, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.resource_entry, ptr %21, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.resource, ptr %25, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 7936
  %29 = icmp eq i32 %28, 4096
  br i1 %29, label %30, label %19

30:                                               ; preds = %23
  %31 = icmp eq ptr %21, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %30
  %33 = call ptr @pci_ecam_create(ptr noundef %3, ptr noundef nonnull %2, ptr noundef %25, ptr noundef nonnull %4) #5
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = call i32 @devm_add_action(ptr noundef %3, ptr noundef nonnull @gen_pci_unmap_cfg, ptr noundef %33) #5
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  call void @pci_ecam_free(ptr noundef %33) #5
  %39 = inttoptr i32 %36 to ptr
  br label %41

40:                                               ; preds = %30, %19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #5
  br label %44

41:                                               ; preds = %38, %35, %32, %15
  %42 = phi ptr [ %16, %15 ], [ %39, %38 ], [ %33, %32 ], [ %33, %35 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #5
  %43 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %47

44:                                               ; preds = %41, %40
  %45 = phi ptr [ inttoptr (i32 -19 to ptr), %40 ], [ %42, %41 ]
  %46 = ptrtoint ptr %45 to i32
  br label %61

47:                                               ; preds = %41
  %48 = load i32, ptr @pci_flags, align 4
  %49 = and i32 %48, 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = or i32 %48, 2
  store i32 %52, ptr @pci_flags, align 4
  br label %53

53:                                               ; preds = %51, %47
  %54 = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 0, i32 4
  store ptr %42, ptr %54, align 4
  %55 = getelementptr inbounds %struct.pci_ecam_ops, ptr %4, i32 0, i32 1
  %56 = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 0, i32 2
  store ptr %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 0, i32 13
  %58 = load i16, ptr %57, align 16
  %59 = or i16 %58, 1024
  store i16 %59, ptr %57, align 16
  %60 = call i32 @pci_host_probe(ptr noundef nonnull %7) #5
  br label %61

61:                                               ; preds = %53, %44, %6, %1
  %62 = phi i32 [ %46, %44 ], [ %60, %53 ], [ -19, %1 ], [ -12, %6 ]
  ret i32 %62
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_alloc_host_bridge(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_pci_check_probe_only() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_host_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_host_common_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @pci_lock_rescan_remove() #5
  %4 = getelementptr inbounds %struct.pci_host_bridge, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  tail call void @pci_stop_root_bus(ptr noundef %5) #5
  %6 = load ptr, ptr %4, align 8
  tail call void @pci_remove_root_bus(ptr noundef %6) #5
  tail call void @pci_unlock_rescan_remove() #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_lock_rescan_remove() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_stop_root_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_remove_root_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unlock_rescan_remove() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ecam_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gen_pci_unmap_cfg(ptr noundef %0) #0 {
  tail call void @pci_ecam_free(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_ecam_free(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{!"auto-init"}
