; ModuleID = '/llk/IR/drivers/mtd/nand/bbt.c_pt.bc'
source_filename = "../drivers/mtd/nand/bbt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nanddev_bbt_init:\09\09\09\09\09"
module asm "\09.asciz \09\22nanddev_bbt_init\22\09\09\09\09\09"
module asm "__kstrtabns_nanddev_bbt_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nanddev_bbt_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22nanddev_bbt_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_nanddev_bbt_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nanddev_bbt_update:\09\09\09\09\09"
module asm "\09.asciz \09\22nanddev_bbt_update\22\09\09\09\09\09"
module asm "__kstrtabns_nanddev_bbt_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nanddev_bbt_get_block_status:\09\09\09\09\09"
module asm "\09.asciz \09\22nanddev_bbt_get_block_status\22\09\09\09\09\09"
module asm "__kstrtabns_nanddev_bbt_get_block_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nanddev_bbt_set_block_status:\09\09\09\09\09"
module asm "\09.asciz \09\22nanddev_bbt_set_block_status\22\09\09\09\09\09"
module asm "__kstrtabns_nanddev_bbt_set_block_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.5 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.5 = type { %struct.mtd_part, [16 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, ptr, ptr }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i32, ptr }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { ptr }

@__kstrtab_nanddev_bbt_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_nanddev_bbt_init = external dso_local constant [0 x i8], align 1
@__ksymtab_nanddev_bbt_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nanddev_bbt_init to i32), ptr @__kstrtab_nanddev_bbt_init, ptr @__kstrtabns_nanddev_bbt_init }, section "___ksymtab_gpl+nanddev_bbt_init", align 4
@__kstrtab_nanddev_bbt_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_nanddev_bbt_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_nanddev_bbt_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nanddev_bbt_cleanup to i32), ptr @__kstrtab_nanddev_bbt_cleanup, ptr @__kstrtabns_nanddev_bbt_cleanup }, section "___ksymtab_gpl+nanddev_bbt_cleanup", align 4
@__kstrtab_nanddev_bbt_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_nanddev_bbt_update = external dso_local constant [0 x i8], align 1
@__ksymtab_nanddev_bbt_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nanddev_bbt_update to i32), ptr @__kstrtab_nanddev_bbt_update, ptr @__kstrtabns_nanddev_bbt_update }, section "___ksymtab_gpl+nanddev_bbt_update", align 4
@__kstrtab_nanddev_bbt_get_block_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_nanddev_bbt_get_block_status = external dso_local constant [0 x i8], align 1
@__ksymtab_nanddev_bbt_get_block_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nanddev_bbt_get_block_status to i32), ptr @__kstrtab_nanddev_bbt_get_block_status, ptr @__kstrtabns_nanddev_bbt_get_block_status }, section "___ksymtab_gpl+nanddev_bbt_get_block_status", align 4
@__kstrtab_nanddev_bbt_set_block_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_nanddev_bbt_set_block_status = external dso_local constant [0 x i8], align 1
@__ksymtab_nanddev_bbt_set_block_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nanddev_bbt_set_block_status to i32), ptr @__kstrtab_nanddev_bbt_set_block_status, ptr @__kstrtabns_nanddev_bbt_set_block_status }, section "___ksymtab_gpl+nanddev_bbt_set_block_status", align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_nanddev_bbt_cleanup, ptr @__ksymtab_nanddev_bbt_get_block_status, ptr @__ksymtab_nanddev_bbt_init, ptr @__ksymtab_nanddev_bbt_set_block_status, ptr @__ksymtab_nanddev_bbt_update], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nanddev_bbt_init(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %3 = load i32, ptr %2, align 8
  %4 = mul i32 %3, 3
  %5 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = mul i32 %4, %6
  %8 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = mul i32 %7, %9
  %11 = add i32 %10, 31
  %12 = lshr i32 %11, 3
  %13 = and i32 %12, 536870908
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #6
  %15 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 4
  store ptr %14, ptr %15, align 8
  %16 = icmp eq ptr %14, null
  %17 = select i1 %16, i32 -12, i32 0
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nanddev_bbt_cleanup(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  tail call void @kfree(ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @nanddev_bbt_update(ptr nocapture readnone %0) #2 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @nanddev_bbt_get_block_status(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = mul i32 %1, 3
  %6 = lshr i32 %5, 5
  %7 = getelementptr i32, ptr %4, i32 %6
  %8 = and i32 %5, 31
  %9 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = mul i32 %12, %10
  %14 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 4
  %15 = load i32, ptr %14, align 8
  %16 = mul i32 %13, %15
  %17 = icmp ugt i32 %16, %1
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load i32, ptr %7, align 4
  %20 = lshr i32 %19, %8
  %21 = icmp ugt i32 %8, 29
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = getelementptr i32, ptr %7, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = sub nuw nsw i32 32, %8
  %26 = shl i32 %24, %25
  %27 = or i32 %26, %20
  br label %28

28:                                               ; preds = %22, %18
  %29 = phi i32 [ %27, %22 ], [ %20, %18 ]
  %30 = and i32 %29, 7
  br label %31

31:                                               ; preds = %28, %2
  %32 = phi i32 [ %30, %28 ], [ -34, %2 ]
  ret i32 %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @nanddev_bbt_set_block_status(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = mul i32 %1, 3
  %7 = lshr i32 %6, 5
  %8 = getelementptr i32, ptr %5, i32 %7
  %9 = and i32 %2, 7
  %10 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = mul i32 %13, %11
  %15 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = mul i32 %14, %16
  %18 = icmp ugt i32 %17, %1
  br i1 %18, label %19, label %41

19:                                               ; preds = %3
  %20 = and i32 %6, 31
  %21 = shl nsw i32 -1, %20
  %22 = sub nsw i32 29, %20
  %23 = lshr i32 -1, %22
  %24 = and i32 %23, %21
  %25 = xor i32 %24, -1
  %26 = load i32, ptr %8, align 4
  %27 = and i32 %26, %25
  %28 = shl i32 %9, %20
  %29 = or i32 %27, %28
  store i32 %29, ptr %8, align 4
  %30 = icmp ugt i32 %20, 29
  br i1 %30, label %31, label %41

31:                                               ; preds = %19
  %32 = sub nuw nsw i32 61, %20
  %33 = lshr i32 -1, %32
  %34 = xor i32 %33, -1
  %35 = getelementptr i32, ptr %8, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, %34
  %38 = sub nuw nsw i32 32, %20
  %39 = lshr i32 %9, %38
  %40 = or i32 %37, %39
  store i32 %40, ptr %35, align 4
  br label %41

41:                                               ; preds = %31, %19, %3
  %42 = phi i32 [ -34, %3 ], [ 0, %31 ], [ 0, %19 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { nounwind }

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
