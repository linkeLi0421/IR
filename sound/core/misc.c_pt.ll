; ModuleID = '/llk/IR/sound/core/misc.c_pt.bc'
source_filename = "../sound/core/misc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_release_and_free_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22release_and_free_resource\22\09\09\09\09\09"
module asm "__kstrtabns_release_and_free_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pci_quirk_lookup_id:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pci_quirk_lookup_id\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pci_quirk_lookup_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pci_quirk_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pci_quirk_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pci_quirk_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_pci_quirk = type { i16, i16, i16, i32 }
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

@__kstrtab_release_and_free_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_release_and_free_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_release_and_free_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @release_and_free_resource to i32), ptr @__kstrtab_release_and_free_resource, ptr @__kstrtabns_release_and_free_resource }, section "___ksymtab+release_and_free_resource", align 4
@__kstrtab_snd_pci_quirk_lookup_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pci_quirk_lookup_id = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pci_quirk_lookup_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pci_quirk_lookup_id to i32), ptr @__kstrtab_snd_pci_quirk_lookup_id, ptr @__kstrtabns_snd_pci_quirk_lookup_id }, section "___ksymtab+snd_pci_quirk_lookup_id", align 4
@__kstrtab_snd_pci_quirk_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pci_quirk_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pci_quirk_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pci_quirk_lookup to i32), ptr @__kstrtab_snd_pci_quirk_lookup, ptr @__kstrtabns_snd_pci_quirk_lookup }, section "___ksymtab+snd_pci_quirk_lookup", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_release_and_free_resource, ptr @__ksymtab_snd_pci_quirk_lookup, ptr @__ksymtab_snd_pci_quirk_lookup_id], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @release_and_free_resource(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @release_resource(ptr noundef nonnull %0) #3
  tail call void @kfree(ptr noundef nonnull %0) #3
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @snd_pci_quirk_lookup_id(i16 noundef zeroext %0, i16 noundef zeroext %1, ptr noundef readonly %2) #2 {
  br label %4

4:                                                ; preds = %23, %3
  %5 = phi ptr [ %2, %3 ], [ %24, %23 ]
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.snd_pci_quirk, ptr %5, i32 0, i32 1
  %10 = load i16, ptr %9, align 2
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %8, %4
  %13 = icmp eq i16 %6, %0
  br i1 %13, label %14, label %23

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.snd_pci_quirk, ptr %5, i32 0, i32 1
  %16 = load i16, ptr %15, align 2
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.snd_pci_quirk, ptr %5, i32 0, i32 2
  %20 = load i16, ptr %19, align 4
  %21 = and i16 %20, %1
  %22 = icmp eq i16 %21, %16
  br i1 %22, label %25, label %23

23:                                               ; preds = %18, %12
  %24 = getelementptr %struct.snd_pci_quirk, ptr %5, i32 1
  br label %4

25:                                               ; preds = %18, %14, %8
  %26 = phi ptr [ %5, %18 ], [ %5, %14 ], [ null, %8 ]
  ret ptr %26
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @snd_pci_quirk_lookup(ptr noundef readonly %0, ptr noundef readonly %1) #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 9
  %6 = load i16, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %8 = load i16, ptr %7, align 2
  br label %9

9:                                                ; preds = %28, %4
  %10 = phi ptr [ %1, %4 ], [ %29, %28 ]
  %11 = load i16, ptr %10, align 4
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.snd_pci_quirk, ptr %10, i32 0, i32 1
  %15 = load i16, ptr %14, align 2
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %13, %9
  %18 = icmp eq i16 %11, %6
  br i1 %18, label %19, label %28

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.snd_pci_quirk, ptr %10, i32 0, i32 1
  %21 = load i16, ptr %20, align 2
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.snd_pci_quirk, ptr %10, i32 0, i32 2
  %25 = load i16, ptr %24, align 4
  %26 = and i16 %25, %8
  %27 = icmp eq i16 %26, %21
  br i1 %27, label %30, label %28

28:                                               ; preds = %23, %17
  %29 = getelementptr %struct.snd_pci_quirk, ptr %10, i32 1
  br label %9

30:                                               ; preds = %23, %19, %13, %2
  %31 = phi ptr [ null, %2 ], [ null, %13 ], [ %10, %19 ], [ %10, %23 ]
  ret ptr %31
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
