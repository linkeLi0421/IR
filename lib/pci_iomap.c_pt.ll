; ModuleID = '/llk/IR/lib/pci_iomap.c_pt.bc'
source_filename = "../lib/pci_iomap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_iomap_range:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_iomap_range\22\09\09\09\09\09"
module asm "__kstrtabns_pci_iomap_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_iomap_wc_range:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_iomap_wc_range\22\09\09\09\09\09"
module asm "__kstrtabns_pci_iomap_wc_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_iomap:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_iomap\22\09\09\09\09\09"
module asm "__kstrtabns_pci_iomap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_iomap_wc:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_iomap_wc\22\09\09\09\09\09"
module asm "__kstrtabns_pci_iomap_wc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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

@__kstrtab_pci_iomap_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_iomap_range = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_iomap_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_iomap_range to i32), ptr @__kstrtab_pci_iomap_range, ptr @__kstrtabns_pci_iomap_range }, section "___ksymtab+pci_iomap_range", align 4
@__kstrtab_pci_iomap_wc_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_iomap_wc_range = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_iomap_wc_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_iomap_wc_range to i32), ptr @__kstrtab_pci_iomap_wc_range, ptr @__kstrtabns_pci_iomap_wc_range }, section "___ksymtab_gpl+pci_iomap_wc_range", align 4
@__kstrtab_pci_iomap = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_iomap = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_iomap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_iomap to i32), ptr @__kstrtab_pci_iomap, ptr @__kstrtabns_pci_iomap }, section "___ksymtab+pci_iomap", align 4
@__kstrtab_pci_iomap_wc = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_iomap_wc = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_iomap_wc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_iomap_wc to i32), ptr @__kstrtab_pci_iomap_wc, ptr @__kstrtabns_pci_iomap_wc }, section "___ksymtab_gpl+pci_iomap_wc", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_pci_iomap, ptr @__ksymtab_pci_iomap_range, ptr @__ksymtab_pci_iomap_wc, ptr @__ksymtab_pci_iomap_wc_range], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_iomap_range(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %1
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %1, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = sub i32 1, %6
  %11 = add i32 %10, %8
  %12 = select i1 %9, i32 0, i32 %11
  %13 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %1, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %12, %2
  %16 = icmp ne i32 %6, 0
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %34

18:                                               ; preds = %4
  %19 = sub i32 %12, %2
  %20 = add i32 %6, %2
  %21 = icmp ne i32 %3, 0
  %22 = icmp ugt i32 %19, %3
  %23 = select i1 %21, i1 %22, i1 false
  %24 = select i1 %23, i32 %3, i32 %19
  %25 = and i32 %14, 256
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %18
  %28 = tail call ptr @ioport_map(i32 noundef %20, i32 noundef %24) #2
  br label %34

29:                                               ; preds = %18
  %30 = and i32 %14, 512
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call ptr @ioremap(i32 noundef %20, i32 noundef %24) #2
  br label %34

34:                                               ; preds = %32, %29, %27, %4
  %35 = phi ptr [ %28, %27 ], [ %33, %32 ], [ null, %4 ], [ null, %29 ]
  ret ptr %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioport_map(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_iomap_wc_range(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %1
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %1, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = sub i32 1, %6
  %11 = add i32 %10, %8
  %12 = select i1 %9, i32 0, i32 %11
  %13 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %1, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %4
  %18 = icmp ule i32 %12, %2
  %19 = icmp eq i32 %6, 0
  %20 = select i1 %18, i1 true, i1 %19
  %21 = and i32 %14, 512
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %17
  %25 = icmp ne i32 %3, 0
  %26 = sub i32 %12, %2
  %27 = icmp ugt i32 %26, %3
  %28 = select i1 %25, i1 %27, i1 false
  %29 = select i1 %28, i32 %3, i32 %26
  %30 = add i32 %6, %2
  %31 = tail call ptr @ioremap_wc(i32 noundef %30, i32 noundef %29) #2
  br label %32

32:                                               ; preds = %24, %17, %4
  %33 = phi ptr [ %31, %24 ], [ null, %4 ], [ null, %17 ]
  ret ptr %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_iomap(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %1
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %1, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  %9 = sub i32 1, %5
  %10 = add i32 %9, %7
  %11 = select i1 %8, i32 0, i32 %10
  %12 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %1, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp ne i32 %11, 0
  %15 = icmp ne i32 %5, 0
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %31

17:                                               ; preds = %3
  %18 = icmp ne i32 %2, 0
  %19 = icmp ugt i32 %11, %2
  %20 = select i1 %18, i1 %19, i1 false
  %21 = select i1 %20, i32 %2, i32 %11
  %22 = and i32 %13, 256
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = tail call ptr @ioport_map(i32 noundef %5, i32 noundef %21) #2
  br label %31

26:                                               ; preds = %17
  %27 = and i32 %13, 512
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = tail call ptr @ioremap(i32 noundef %5, i32 noundef %21) #2
  br label %31

31:                                               ; preds = %29, %26, %24, %3
  %32 = phi ptr [ %25, %24 ], [ %30, %29 ], [ null, %3 ], [ null, %26 ]
  ret ptr %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_iomap_wc(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %1
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %1, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  %9 = sub i32 1, %5
  %10 = add i32 %9, %7
  %11 = select i1 %8, i32 0, i32 %10
  %12 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %1, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 256
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %3
  %17 = icmp eq i32 %11, 0
  %18 = icmp eq i32 %5, 0
  %19 = select i1 %17, i1 true, i1 %18
  %20 = and i32 %13, 512
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %16
  %24 = icmp ne i32 %2, 0
  %25 = icmp ugt i32 %11, %2
  %26 = select i1 %24, i1 %25, i1 false
  %27 = select i1 %26, i32 %2, i32 %11
  %28 = tail call ptr @ioremap_wc(i32 noundef %5, i32 noundef %27) #2
  br label %29

29:                                               ; preds = %23, %16, %3
  %30 = phi ptr [ %28, %23 ], [ null, %3 ], [ null, %16 ]
  ret ptr %30
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
