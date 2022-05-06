; ModuleID = '/llk/IR/drivers/pci/host-bridge.c_pt.bc'
source_filename = "../drivers/pci/host-bridge.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_find_host_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_find_host_bridge\22\09\09\09\09\09"
module asm "__kstrtabns_pci_find_host_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_set_host_bridge_release:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_set_host_bridge_release\22\09\09\09\09\09"
module asm "__kstrtabns_pci_set_host_bridge_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcibios_resource_to_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22pcibios_resource_to_bus\22\09\09\09\09\09"
module asm "__kstrtabns_pcibios_resource_to_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcibios_bus_to_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22pcibios_bus_to_resource\22\09\09\09\09\09"
module asm "__kstrtabns_pcibios_bus_to_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [40 x i8], [0 x i32] }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.pci_bus_region = type { i32, i32 }

@__kstrtab_pci_find_host_bridge = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_find_host_bridge = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_find_host_bridge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_find_host_bridge to i32), ptr @__kstrtab_pci_find_host_bridge, ptr @__kstrtabns_pci_find_host_bridge }, section "___ksymtab_gpl+pci_find_host_bridge", align 4
@__kstrtab_pci_set_host_bridge_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_set_host_bridge_release = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_set_host_bridge_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_set_host_bridge_release to i32), ptr @__kstrtab_pci_set_host_bridge_release, ptr @__kstrtabns_pci_set_host_bridge_release }, section "___ksymtab_gpl+pci_set_host_bridge_release", align 4
@__kstrtab_pcibios_resource_to_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcibios_resource_to_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_pcibios_resource_to_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcibios_resource_to_bus to i32), ptr @__kstrtab_pcibios_resource_to_bus, ptr @__kstrtabns_pcibios_resource_to_bus }, section "___ksymtab+pcibios_resource_to_bus", align 4
@__kstrtab_pcibios_bus_to_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcibios_bus_to_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_pcibios_bus_to_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcibios_bus_to_resource to i32), ptr @__kstrtab_pcibios_bus_to_resource, ptr @__kstrtabns_pcibios_bus_to_resource }, section "___ksymtab+pcibios_bus_to_resource", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_pci_find_host_bridge, ptr @__ksymtab_pci_set_host_bridge_release, ptr @__ksymtab_pcibios_bus_to_resource, ptr @__ksymtab_pcibios_resource_to_bus], section "llvm.metadata"

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @pci_find_host_bridge(ptr nocapture noundef readonly %0) #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %2

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 20
  %9 = load ptr, ptr %8, align 8
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_get_host_bridge_device(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %3, %1 ], [ %7, %4 ]
  %6 = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 20
  %11 = load ptr, ptr %10, align 8
  %12 = tail call ptr @kobject_get(ptr noundef %11) #6
  ret ptr %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_put_host_bridge_device(ptr noundef %0) local_unnamed_addr #1 {
  tail call void @kobject_put(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @pci_set_host_bridge_release(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = getelementptr inbounds %struct.pci_host_bridge, ptr %0, i32 0, i32 11
  store ptr %1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.pci_host_bridge, ptr %0, i32 0, i32 12
  store ptr %2, ptr %5, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pcibios_resource_to_bus(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #4 {
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi ptr [ %0, %3 ], [ %7, %4 ]
  %6 = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 20
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.pci_host_bridge, ptr %11, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %48, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 536870912
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  br label %21

21:                                               ; preds = %42, %15
  %22 = phi ptr [ %13, %15 ], [ %43, %42 ]
  %23 = getelementptr inbounds %struct.resource_entry, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.resource, ptr %24, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = xor i32 %17, %26
  %28 = and i32 %27, 7936
  %29 = and i32 %26, 536870912
  %30 = or i32 %28, %29
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i1 %19, i1 false
  br i1 %32, label %33, label %42

33:                                               ; preds = %21
  %34 = load i32, ptr %24, align 4
  %35 = load i32, ptr %2, align 4
  %36 = icmp ugt i32 %34, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.resource, ptr %24, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = load i32, ptr %20, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37, %33, %21
  %43 = load ptr, ptr %22, align 4
  %44 = icmp eq ptr %43, %12
  br i1 %44, label %48, label %21

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.resource_entry, ptr %22, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  br label %48

48:                                               ; preds = %45, %42, %9
  %49 = phi i32 [ %47, %45 ], [ 0, %9 ], [ 0, %42 ]
  %50 = load i32, ptr %2, align 4
  %51 = sub i32 %50, %49
  store i32 %51, ptr %1, align 4
  %52 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = sub i32 %53, %49
  %55 = getelementptr inbounds %struct.pci_bus_region, ptr %1, i32 0, i32 1
  store i32 %54, ptr %55, align 4
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pcibios_bus_to_resource(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #5 {
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi ptr [ %0, %3 ], [ %7, %4 ]
  %6 = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 20
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.pci_host_bridge, ptr %11, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %44, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.pci_bus_region, ptr %2, i32 0, i32 1
  br label %19

19:                                               ; preds = %41, %15
  %20 = phi ptr [ %13, %15 ], [ %42, %41 ]
  %21 = getelementptr inbounds %struct.resource_entry, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.resource, ptr %22, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = xor i32 %24, %17
  %26 = and i32 %25, 7936
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %19
  %29 = load i32, ptr %22, align 4
  %30 = getelementptr inbounds %struct.resource_entry, ptr %20, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = sub i32 %29, %31
  %33 = load i32, ptr %2, align 4
  %34 = icmp ugt i32 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.resource, ptr %22, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = sub i32 %37, %31
  %39 = load i32, ptr %18, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35, %28, %19
  %42 = load ptr, ptr %20, align 4
  %43 = icmp eq ptr %42, %12
  br i1 %43, label %44, label %19

44:                                               ; preds = %41, %35, %9
  %45 = phi i32 [ 0, %9 ], [ %31, %35 ], [ 0, %41 ]
  %46 = load i32, ptr %2, align 4
  %47 = add i32 %46, %45
  store i32 %47, ptr %1, align 4
  %48 = getelementptr inbounds %struct.pci_bus_region, ptr %2, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, %45
  %51 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  store i32 %50, ptr %51, align 4
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }

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
