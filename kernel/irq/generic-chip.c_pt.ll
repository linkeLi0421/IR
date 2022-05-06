; ModuleID = '/llk/IR/kernel/irq/generic-chip.c_pt.bc'
source_filename = "../kernel/irq/generic-chip.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_gc_noop:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_gc_noop\22\09\09\09\09\09"
module asm "__kstrtabns_irq_gc_noop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_gc_mask_disable_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_gc_mask_disable_reg\22\09\09\09\09\09"
module asm "__kstrtabns_irq_gc_mask_disable_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_gc_mask_set_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_gc_mask_set_bit\22\09\09\09\09\09"
module asm "__kstrtabns_irq_gc_mask_set_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_gc_mask_clr_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_gc_mask_clr_bit\22\09\09\09\09\09"
module asm "__kstrtabns_irq_gc_mask_clr_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_gc_unmask_enable_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_gc_unmask_enable_reg\22\09\09\09\09\09"
module asm "__kstrtabns_irq_gc_unmask_enable_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_gc_ack_set_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_gc_ack_set_bit\22\09\09\09\09\09"
module asm "__kstrtabns_irq_gc_ack_set_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_gc_set_wake:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_gc_set_wake\22\09\09\09\09\09"
module asm "__kstrtabns_irq_gc_set_wake:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_alloc_generic_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_alloc_generic_chip\22\09\09\09\09\09"
module asm "__kstrtabns_irq_alloc_generic_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___irq_alloc_domain_generic_chips:\09\09\09\09\09"
module asm "\09.asciz \09\22__irq_alloc_domain_generic_chips\22\09\09\09\09\09"
module asm "__kstrtabns___irq_alloc_domain_generic_chips:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_get_domain_generic_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_get_domain_generic_chip\22\09\09\09\09\09"
module asm "__kstrtabns_irq_get_domain_generic_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_generic_chip_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_generic_chip_ops\22\09\09\09\09\09"
module asm "__kstrtabns_irq_generic_chip_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_setup_generic_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_setup_generic_chip\22\09\09\09\09\09"
module asm "__kstrtabns_irq_setup_generic_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_setup_alt_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_setup_alt_chip\22\09\09\09\09\09"
module asm "__kstrtabns_irq_setup_alt_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_remove_generic_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_remove_generic_chip\22\09\09\09\09\09"
module asm "__kstrtabns_irq_remove_generic_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x ptr] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }

@__kstrtab_irq_gc_noop = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_gc_noop = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_gc_noop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_gc_noop to i32), ptr @__kstrtab_irq_gc_noop, ptr @__kstrtabns_irq_gc_noop }, section "___ksymtab_gpl+irq_gc_noop", align 4
@__kstrtab_irq_gc_mask_disable_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_gc_mask_disable_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_gc_mask_disable_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_gc_mask_disable_reg to i32), ptr @__kstrtab_irq_gc_mask_disable_reg, ptr @__kstrtabns_irq_gc_mask_disable_reg }, section "___ksymtab_gpl+irq_gc_mask_disable_reg", align 4
@__kstrtab_irq_gc_mask_set_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_gc_mask_set_bit = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_gc_mask_set_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_gc_mask_set_bit to i32), ptr @__kstrtab_irq_gc_mask_set_bit, ptr @__kstrtabns_irq_gc_mask_set_bit }, section "___ksymtab_gpl+irq_gc_mask_set_bit", align 4
@__kstrtab_irq_gc_mask_clr_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_gc_mask_clr_bit = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_gc_mask_clr_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_gc_mask_clr_bit to i32), ptr @__kstrtab_irq_gc_mask_clr_bit, ptr @__kstrtabns_irq_gc_mask_clr_bit }, section "___ksymtab_gpl+irq_gc_mask_clr_bit", align 4
@__kstrtab_irq_gc_unmask_enable_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_gc_unmask_enable_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_gc_unmask_enable_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_gc_unmask_enable_reg to i32), ptr @__kstrtab_irq_gc_unmask_enable_reg, ptr @__kstrtabns_irq_gc_unmask_enable_reg }, section "___ksymtab_gpl+irq_gc_unmask_enable_reg", align 4
@__kstrtab_irq_gc_ack_set_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_gc_ack_set_bit = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_gc_ack_set_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_gc_ack_set_bit to i32), ptr @__kstrtab_irq_gc_ack_set_bit, ptr @__kstrtabns_irq_gc_ack_set_bit }, section "___ksymtab_gpl+irq_gc_ack_set_bit", align 4
@__kstrtab_irq_gc_set_wake = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_gc_set_wake = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_gc_set_wake = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_gc_set_wake to i32), ptr @__kstrtab_irq_gc_set_wake, ptr @__kstrtabns_irq_gc_set_wake }, section "___ksymtab_gpl+irq_gc_set_wake", align 4
@__kstrtab_irq_alloc_generic_chip = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_alloc_generic_chip = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_alloc_generic_chip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_alloc_generic_chip to i32), ptr @__kstrtab_irq_alloc_generic_chip, ptr @__kstrtabns_irq_alloc_generic_chip }, section "___ksymtab_gpl+irq_alloc_generic_chip", align 4
@gc_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@gc_list = internal global %struct.list_head { ptr @gc_list, ptr @gc_list }, align 4
@__kstrtab___irq_alloc_domain_generic_chips = external dso_local constant [0 x i8], align 1
@__kstrtabns___irq_alloc_domain_generic_chips = external dso_local constant [0 x i8], align 1
@__ksymtab___irq_alloc_domain_generic_chips = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__irq_alloc_domain_generic_chips to i32), ptr @__kstrtab___irq_alloc_domain_generic_chips, ptr @__kstrtabns___irq_alloc_domain_generic_chips }, section "___ksymtab_gpl+__irq_alloc_domain_generic_chips", align 4
@__kstrtab_irq_get_domain_generic_chip = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_get_domain_generic_chip = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_get_domain_generic_chip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_get_domain_generic_chip to i32), ptr @__kstrtab_irq_get_domain_generic_chip, ptr @__kstrtabns_irq_get_domain_generic_chip }, section "___ksymtab_gpl+irq_get_domain_generic_chip", align 4
@irq_generic_chip_ops = dso_local constant %struct.irq_domain_ops { ptr null, ptr null, ptr @irq_map_generic_chip, ptr @irq_unmap_generic_chip, ptr @irq_domain_xlate_onetwocell, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_irq_generic_chip_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_generic_chip_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_generic_chip_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_generic_chip_ops to i32), ptr @__kstrtab_irq_generic_chip_ops, ptr @__kstrtabns_irq_generic_chip_ops }, section "___ksymtab_gpl+irq_generic_chip_ops", align 4
@__kstrtab_irq_setup_generic_chip = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_setup_generic_chip = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_setup_generic_chip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_setup_generic_chip to i32), ptr @__kstrtab_irq_setup_generic_chip, ptr @__kstrtabns_irq_setup_generic_chip }, section "___ksymtab_gpl+irq_setup_generic_chip", align 4
@__kstrtab_irq_setup_alt_chip = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_setup_alt_chip = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_setup_alt_chip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_setup_alt_chip to i32), ptr @__kstrtab_irq_setup_alt_chip, ptr @__kstrtabns_irq_setup_alt_chip }, section "___ksymtab_gpl+irq_setup_alt_chip", align 4
@no_irq_chip = external dso_local global %struct.irq_chip, align 4
@__kstrtab_irq_remove_generic_chip = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_remove_generic_chip = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_remove_generic_chip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_remove_generic_chip to i32), ptr @__kstrtab_irq_remove_generic_chip, ptr @__kstrtabns_irq_remove_generic_chip }, section "___ksymtab_gpl+irq_remove_generic_chip", align 4
@__initcall__kmod_generic_chip__171_655_irq_gc_init_ops6 = internal global ptr @irq_gc_init_ops, section ".initcall6.init", align 4
@irq_gc_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @irq_gc_suspend, ptr @irq_gc_resume, ptr @irq_gc_shutdown }, align 4
@llvm.compiler.used = appending global [15 x ptr] [ptr @__initcall__kmod_generic_chip__171_655_irq_gc_init_ops6, ptr @__ksymtab___irq_alloc_domain_generic_chips, ptr @__ksymtab_irq_alloc_generic_chip, ptr @__ksymtab_irq_gc_ack_set_bit, ptr @__ksymtab_irq_gc_mask_clr_bit, ptr @__ksymtab_irq_gc_mask_disable_reg, ptr @__ksymtab_irq_gc_mask_set_bit, ptr @__ksymtab_irq_gc_noop, ptr @__ksymtab_irq_gc_set_wake, ptr @__ksymtab_irq_gc_unmask_enable_reg, ptr @__ksymtab_irq_generic_chip_ops, ptr @__ksymtab_irq_get_domain_generic_chip, ptr @__ksymtab_irq_remove_generic_chip, ptr @__ksymtab_irq_setup_alt_chip, ptr @__ksymtab_irq_setup_generic_chip], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @irq_gc_noop(ptr nocapture %0) #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_gc_mask_disable_reg(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %0, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  %7 = getelementptr inbounds %struct.irq_chip_type, ptr %5, i32 0, i32 1, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 %8
  tail call void %10(i32 noundef %6, ptr noundef %15) #10
  br label %20

16:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !8
  tail call void @arm_heavy_mb() #10
  %17 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %6) #10, !srcloc !9
  br label %20

20:                                               ; preds = %16, %12
  %21 = xor i32 %6, -1
  %22 = getelementptr inbounds %struct.irq_chip_type, ptr %5, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, ptr %23, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %26 = load i16, ptr %3, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_gc_mask_set_bit(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %0, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  %7 = getelementptr inbounds %struct.irq_chip_type, ptr %5, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, %6
  store i32 %10, ptr %8, align 4
  %11 = load ptr, ptr %7, align 4
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.irq_chip_type, ptr %5, i32 0, i32 1, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 %14
  tail call void %16(i32 noundef %12, ptr noundef %21) #10
  br label %26

22:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !8
  tail call void @arm_heavy_mb() #10
  %23 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %12) #10, !srcloc !9
  br label %26

26:                                               ; preds = %22, %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %27 = load i16, ptr %3, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_gc_mask_clr_bit(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %0, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  %7 = xor i32 %6, -1
  %8 = getelementptr inbounds %struct.irq_chip_type, ptr %5, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, %7
  store i32 %11, ptr %9, align 4
  %12 = load ptr, ptr %8, align 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.irq_chip_type, ptr %5, i32 0, i32 1, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 %15
  tail call void %17(i32 noundef %13, ptr noundef %22) #10
  br label %27

23:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !8
  tail call void @arm_heavy_mb() #10
  %24 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %13) #10, !srcloc !9
  br label %27

27:                                               ; preds = %23, %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %28 = load i16, ptr %3, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_gc_unmask_enable_reg(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %0, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  %7 = getelementptr inbounds %struct.irq_chip_type, ptr %5, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 %8
  tail call void %10(i32 noundef %6, ptr noundef %15) #10
  br label %20

16:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !8
  tail call void @arm_heavy_mb() #10
  %17 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %6) #10, !srcloc !9
  br label %20

20:                                               ; preds = %16, %12
  %21 = getelementptr inbounds %struct.irq_chip_type, ptr %5, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %22, align 4
  %24 = or i32 %23, %6
  store i32 %24, ptr %22, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %25 = load i16, ptr %3, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_gc_ack_set_bit(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %0, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  %7 = getelementptr inbounds %struct.irq_chip_type, ptr %5, i32 0, i32 1, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 %8
  tail call void %10(i32 noundef %6, ptr noundef %15) #10
  br label %20

16:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !8
  tail call void @arm_heavy_mb() #10
  %17 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %6) #10, !srcloc !9
  br label %20

20:                                               ; preds = %16, %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %21 = load i16, ptr %3, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_gc_ack_clr_bit(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %0, align 4
  %7 = xor i32 %6, -1
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  %8 = getelementptr inbounds %struct.irq_chip_type, ptr %5, i32 0, i32 1, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 %9
  tail call void %11(i32 noundef %7, ptr noundef %16) #10
  br label %21

17:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !8
  tail call void @arm_heavy_mb() #10
  %18 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %7) #10, !srcloc !9
  br label %21

21:                                               ; preds = %17, %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %22 = load i16, ptr %3, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_gc_mask_disable_and_ack_set(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %0, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  %7 = getelementptr inbounds %struct.irq_chip_type, ptr %5, i32 0, i32 1, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 %8
  tail call void %10(i32 noundef %6, ptr noundef %15) #10
  br label %20

16:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !8
  tail call void @arm_heavy_mb() #10
  %17 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %6) #10, !srcloc !9
  br label %20

20:                                               ; preds = %16, %12
  %21 = xor i32 %6, -1
  %22 = getelementptr inbounds %struct.irq_chip_type, ptr %5, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, ptr %23, align 4
  %26 = getelementptr inbounds %struct.irq_chip_type, ptr %5, i32 0, i32 1, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr %9, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 %27
  tail call void %28(i32 noundef %6, ptr noundef %33) #10
  br label %38

34:                                               ; preds = %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !8
  tail call void @arm_heavy_mb() #10
  %35 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %6) #10, !srcloc !9
  br label %38

38:                                               ; preds = %34, %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %39 = load i16, ptr %3, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_gc_eoi(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %0, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  %7 = getelementptr inbounds %struct.irq_chip_type, ptr %5, i32 0, i32 1, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 %8
  tail call void %10(i32 noundef %6, ptr noundef %15) #10
  br label %20

16:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !8
  tail call void @arm_heavy_mb() #10
  %17 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %6) #10, !srcloc !9
  br label %20

20:                                               ; preds = %16, %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %21 = load i16, ptr %3, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_gc_set_wake(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %0, align 4
  %6 = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, %5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %2
  tail call void @_raw_spin_lock(ptr noundef %4) #10
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 0, i32 12
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, %5
  store i32 %15, ptr %13, align 4
  br label %21

16:                                               ; preds = %10
  %17 = xor i32 %5, -1
  %18 = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 0, i32 12
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, %17
  store i32 %20, ptr %18, align 4
  br label %21

21:                                               ; preds = %16, %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %22 = load i16, ptr %4, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  br label %24

24:                                               ; preds = %21, %2
  %25 = phi i32 [ 0, %21 ], [ -22, %2 ]
  ret i32 %25
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @irq_init_generic_chip(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #3 {
  store i32 0, ptr %0, align 4
  %7 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 0, i32 13
  store i32 %2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 0, i32 6
  store i32 %3, ptr %8, align 4
  %9 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 0, i32 1
  store ptr %4, ptr %9, align 4
  %10 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 1, i32 1
  store ptr %1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 3, i32 1
  store ptr %5, ptr %11, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @irq_alloc_generic_chip(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #1 {
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 180) #10
  %7 = extractvalue { i32, i1 } %6, 1
  %8 = extractvalue { i32, i1 } %6, 0
  %9 = tail call i32 @llvm.uadd.sat.i32(i32 %8, i32 80) #10
  %10 = select i1 %7, i32 -1, i32 %9
  %11 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %5
  store i32 0, ptr %11, align 64
  %14 = getelementptr inbounds %struct.irq_chip_generic, ptr %11, i32 0, i32 13
  store i32 %1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.irq_chip_generic, ptr %11, i32 0, i32 6
  store i32 %2, ptr %15, align 8
  %16 = getelementptr inbounds %struct.irq_chip_generic, ptr %11, i32 0, i32 1
  store ptr %3, ptr %16, align 4
  %17 = getelementptr inbounds %struct.irq_chip_generic, ptr %11, i32 1, i32 1
  store ptr %0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.irq_chip_generic, ptr %11, i32 3, i32 1
  store ptr %4, ptr %18, align 4
  br label %19

19:                                               ; preds = %13, %5
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__irq_alloc_domain_generic_chips(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #1 {
  %9 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %66

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 11
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %1, -1
  %16 = add i32 %15, %14
  %17 = udiv i32 %16, %1
  %18 = icmp ult i32 %16, %1
  br i1 %18, label %66, label %19

19:                                               ; preds = %12
  %20 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 180) #10
  %21 = extractvalue { i32, i1 } %20, 1
  %22 = extractvalue { i32, i1 } %20, 0
  %23 = tail call i32 @llvm.uadd.sat.i32(i32 %22, i32 80) #10
  %24 = select i1 %21, i32 -1, i32 %23
  %25 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 4) #10
  %26 = extractvalue { i32, i1 } %25, 1
  %27 = extractvalue { i32, i1 } %25, 0
  %28 = tail call i32 @llvm.uadd.sat.i32(i32 %27, i32 20) #10
  %29 = select i1 %26, i32 -1, i32 %28
  %30 = mul i32 %17, %24
  %31 = add i32 %29, %30
  %32 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %31, i32 noundef 3520) #11
  %33 = icmp eq ptr %32, null
  br i1 %33, label %66, label %34

34:                                               ; preds = %19
  store i32 %1, ptr %32, align 64
  %35 = getelementptr inbounds %struct.irq_domain_chip_generic, ptr %32, i32 0, i32 1
  store i32 %17, ptr %35, align 4
  %36 = getelementptr inbounds %struct.irq_domain_chip_generic, ptr %32, i32 0, i32 3
  store i32 %6, ptr %36, align 4
  %37 = getelementptr inbounds %struct.irq_domain_chip_generic, ptr %32, i32 0, i32 2
  store i32 %5, ptr %37, align 8
  %38 = getelementptr inbounds %struct.irq_domain_chip_generic, ptr %32, i32 0, i32 4
  store i32 %7, ptr %38, align 16
  store ptr %32, ptr %9, align 4
  %39 = icmp sgt i32 %17, 0
  br i1 %39, label %40, label %66

40:                                               ; preds = %34
  %41 = getelementptr i8, ptr %32, i32 %29
  %42 = and i32 %7, 16
  %43 = icmp eq i32 %42, 0
  br label %44

44:                                               ; preds = %58, %40
  %45 = phi ptr [ %41, %40 ], [ %63, %58 ]
  %46 = phi i32 [ 0, %40 ], [ %64, %58 ]
  %47 = getelementptr %struct.irq_domain_chip_generic, ptr %32, i32 0, i32 5, i32 %46
  store ptr %45, ptr %47, align 4
  %48 = mul i32 %46, %1
  store i32 0, ptr %45, align 4
  %49 = getelementptr inbounds %struct.irq_chip_generic, ptr %45, i32 0, i32 13
  store i32 %2, ptr %49, align 4
  %50 = getelementptr inbounds %struct.irq_chip_generic, ptr %45, i32 0, i32 6
  store i32 %48, ptr %50, align 4
  %51 = getelementptr inbounds %struct.irq_chip_generic, ptr %45, i32 0, i32 1
  store ptr null, ptr %51, align 4
  %52 = getelementptr inbounds %struct.irq_chip_generic, ptr %45, i32 1, i32 1
  store ptr %3, ptr %52, align 4
  %53 = getelementptr inbounds %struct.irq_chip_generic, ptr %45, i32 3, i32 1
  store ptr %4, ptr %53, align 4
  %54 = getelementptr inbounds %struct.irq_chip_generic, ptr %45, i32 0, i32 17
  store ptr %0, ptr %54, align 4
  br i1 %43, label %58, label %55

55:                                               ; preds = %44
  %56 = getelementptr inbounds %struct.irq_chip_generic, ptr %45, i32 0, i32 2
  store ptr @irq_readl_be, ptr %56, align 4
  %57 = getelementptr inbounds %struct.irq_chip_generic, ptr %45, i32 0, i32 3
  store ptr @irq_writel_be, ptr %57, align 4
  br label %58

58:                                               ; preds = %55, %44
  %59 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gc_lock) #10
  %60 = getelementptr inbounds %struct.irq_chip_generic, ptr %45, i32 0, i32 18
  %61 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @gc_list, i32 0, i32 1), align 4
  store ptr %60, ptr getelementptr inbounds (%struct.list_head, ptr @gc_list, i32 0, i32 1), align 4
  store ptr @gc_list, ptr %60, align 4
  %62 = getelementptr inbounds %struct.irq_chip_generic, ptr %45, i32 0, i32 18, i32 1
  store ptr %61, ptr %62, align 4
  store volatile ptr %60, ptr %61, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gc_lock, i32 noundef %59) #10
  %63 = getelementptr i8, ptr %45, i32 %24
  %64 = add nuw nsw i32 %46, 1
  %65 = icmp eq i32 %64, %17
  br i1 %65, label %66, label %44

66:                                               ; preds = %58, %34, %19, %12, %8
  %67 = phi i32 [ -16, %8 ], [ -22, %12 ], [ -12, %19 ], [ 0, %34 ], [ 0, %58 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @irq_readl_be(ptr noundef %0) #1 {
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #10, !srcloc !14
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @irq_writel_be(i32 noundef %0, ptr noundef %1) #1 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !16
  tail call void @arm_heavy_mb() #10
  %3 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %3) #10, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @irq_get_domain_generic_chip(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %4, align 4
  %8 = udiv i32 %1, %7
  %9 = getelementptr inbounds %struct.irq_domain_chip_generic, ptr %4, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = getelementptr %struct.irq_domain_chip_generic, ptr %4, i32 0, i32 5, i32 %8
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %6, %2
  %16 = phi ptr [ %14, %12 ], [ inttoptr (i32 -19 to ptr), %2 ], [ inttoptr (i32 -22 to ptr), %6 ]
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  %18 = select i1 %17, ptr null, ptr %16
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_map_generic_chip(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = tail call ptr @irq_domain_get_irq_data(ptr noundef %0, i32 noundef %1) #10
  %5 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 4
  %10 = freeze i32 %9
  %11 = udiv i32 %2, %10
  %12 = getelementptr inbounds %struct.irq_domain_chip_generic, ptr %6, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = getelementptr %struct.irq_domain_chip_generic, ptr %6, i32 0, i32 5, i32 %11
  %17 = load ptr, ptr %16, align 4
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %8, %3
  %20 = phi ptr [ %17, %15 ], [ inttoptr (i32 -22 to ptr), %8 ], [ inttoptr (i32 -19 to ptr), %3 ]
  %21 = ptrtoint ptr %20 to i32
  br label %102

22:                                               ; preds = %15
  %23 = mul i32 %11, %10
  %24 = sub i32 %2, %23
  %25 = getelementptr inbounds %struct.irq_chip_generic, ptr %17, i32 0, i32 16
  %26 = lshr i32 %24, 5
  %27 = getelementptr i32, ptr %25, i32 %26
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %24, 31
  %30 = shl nuw i32 1, %29
  %31 = and i32 %30, %28
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %102

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.irq_chip_generic, ptr %17, i32 0, i32 15
  %35 = getelementptr i32, ptr %34, i32 %26
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %36, %30
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %102

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.irq_chip_generic, ptr %17, i32 0, i32 19
  %41 = load i32, ptr %34, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %88

43:                                               ; preds = %39
  %44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #10
  %45 = getelementptr inbounds %struct.irq_chip_generic, ptr %17, i32 0, i32 13
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %87, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.irq_domain_chip_generic, ptr %6, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.irq_chip_generic, ptr %17, i32 2, i32 16
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.irq_chip_generic, ptr %17, i32 0, i32 8
  %54 = and i32 %50, 4
  %55 = icmp eq i32 %54, 0
  %56 = and i32 %50, 1
  %57 = icmp eq i32 %56, 0
  %58 = getelementptr inbounds %struct.irq_chip_generic, ptr %17, i32 0, i32 2
  %59 = getelementptr inbounds %struct.irq_chip_generic, ptr %17, i32 0, i32 1
  br label %60

60:                                               ; preds = %83, %48
  %61 = phi i32 [ 0, %48 ], [ %84, %83 ]
  %62 = phi i32 [ %52, %48 ], [ %70, %83 ]
  %63 = phi ptr [ %53, %48 ], [ %69, %83 ]
  br i1 %55, label %68, label %64

64:                                               ; preds = %60
  %65 = getelementptr %struct.irq_chip_type, ptr %40, i32 %61, i32 4
  %66 = getelementptr %struct.irq_chip_type, ptr %40, i32 %61, i32 1, i32 2
  %67 = load i32, ptr %66, align 4
  br label %68

68:                                               ; preds = %64, %60
  %69 = phi ptr [ %65, %64 ], [ %63, %60 ]
  %70 = phi i32 [ %67, %64 ], [ %62, %60 ]
  %71 = getelementptr %struct.irq_chip_type, ptr %40, i32 %61, i32 5
  store ptr %69, ptr %71, align 4
  br i1 %57, label %83, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %58, align 4
  %74 = icmp eq ptr %73, null
  %75 = load ptr, ptr %59, align 4
  %76 = getelementptr i8, ptr %75, i32 %70
  br i1 %74, label %79, label %77

77:                                               ; preds = %72
  %78 = tail call i32 %73(ptr noundef %76) #10
  br label %81

79:                                               ; preds = %72
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #10, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !17
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  store i32 %82, ptr %69, align 4
  br label %83

83:                                               ; preds = %81, %68
  %84 = add nuw i32 %61, 1
  %85 = load i32, ptr %45, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %60, label %87

87:                                               ; preds = %83, %43
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %44) #10
  br label %88

88:                                               ; preds = %87, %39
  tail call void @_set_bit(i32 noundef %24, ptr noundef %34) #10
  %89 = getelementptr inbounds %struct.irq_chip_generic, ptr %17, i32 2
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  tail call void %90(ptr noundef %4) #10
  br label %95

93:                                               ; preds = %88
  %94 = shl nuw i32 1, %24
  store i32 %94, ptr %4, align 4
  br label %95

95:                                               ; preds = %93, %92
  %96 = getelementptr inbounds %struct.irq_chip_generic, ptr %17, i32 3, i32 1
  %97 = load ptr, ptr %96, align 4
  tail call void @irq_domain_set_info(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %40, ptr noundef %17, ptr noundef %97, ptr noundef null, ptr noundef null) #10
  %98 = getelementptr inbounds %struct.irq_domain_chip_generic, ptr %6, i32 0, i32 2
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr inbounds %struct.irq_domain_chip_generic, ptr %6, i32 0, i32 3
  %101 = load i32, ptr %100, align 4
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef %99, i32 noundef %101) #10
  br label %102

102:                                              ; preds = %95, %33, %22, %19
  %103 = phi i32 [ %21, %19 ], [ 0, %95 ], [ -524, %22 ], [ -16, %33 ]
  ret i32 %103
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @irq_unmap_generic_chip(ptr noundef %0, i32 noundef %1) #1 {
  %3 = tail call ptr @irq_domain_get_irq_data(ptr noundef %0, i32 noundef %1) #10
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %3, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq ptr %5, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  %10 = load i32, ptr %5, align 4
  %11 = udiv i32 %7, %10
  %12 = getelementptr inbounds %struct.irq_domain_chip_generic, ptr %5, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %9
  %16 = getelementptr %struct.irq_domain_chip_generic, ptr %5, i32 0, i32 5, i32 %11
  %17 = load ptr, ptr %16, align 4
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  %19 = icmp eq ptr %17, null
  %20 = or i1 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = load i32, ptr %5, align 4
  %23 = urem i32 %7, %22
  %24 = getelementptr inbounds %struct.irq_chip_generic, ptr %17, i32 0, i32 15
  tail call void @_clear_bit(i32 noundef %23, ptr noundef %24) #10
  tail call void @irq_domain_set_info(ptr noundef %0, i32 noundef %1, i32 noundef %7, ptr noundef nonnull @no_irq_chip, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #10
  br label %25

25:                                               ; preds = %21, %15, %9, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onetwocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_setup_generic_chip(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #1 {
  %6 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef nonnull @gc_lock) #10
  %7 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 0, i32 18
  %8 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @gc_list, i32 0, i32 1), align 4
  store ptr %7, ptr getelementptr inbounds (%struct.list_head, ptr @gc_list, i32 0, i32 1), align 4
  store ptr @gc_list, ptr %7, align 4
  %9 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 0, i32 18, i32 1
  store ptr %8, ptr %9, align 4
  store volatile ptr %7, ptr %8, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %10 = load i16, ptr @gc_lock, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr @gc_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  %12 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 0, i32 13
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %52, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 2, i32 16
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 0, i32 8
  %19 = and i32 %2, 4
  %20 = icmp eq i32 %19, 0
  %21 = and i32 %2, 1
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 0, i32 2
  %24 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 0, i32 1
  br label %25

25:                                               ; preds = %48, %15
  %26 = phi i32 [ 0, %15 ], [ %49, %48 ]
  %27 = phi i32 [ %17, %15 ], [ %35, %48 ]
  %28 = phi ptr [ %18, %15 ], [ %34, %48 ]
  br i1 %20, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr %struct.irq_chip_type, ptr %6, i32 %26, i32 4
  %31 = getelementptr %struct.irq_chip_type, ptr %6, i32 %26, i32 1, i32 2
  %32 = load i32, ptr %31, align 4
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi ptr [ %30, %29 ], [ %28, %25 ]
  %35 = phi i32 [ %32, %29 ], [ %27, %25 ]
  %36 = getelementptr %struct.irq_chip_type, ptr %6, i32 %26, i32 5
  store ptr %34, ptr %36, align 4
  br i1 %22, label %48, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %23, align 4
  %39 = icmp eq ptr %38, null
  %40 = load ptr, ptr %24, align 4
  %41 = getelementptr i8, ptr %40, i32 %35
  br i1 %39, label %44, label %42

42:                                               ; preds = %37
  %43 = tail call i32 %38(ptr noundef %41) #10
  br label %46

44:                                               ; preds = %37
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #10, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !17
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  store i32 %47, ptr %34, align 4
  br label %48

48:                                               ; preds = %46, %33
  %49 = add nuw i32 %26, 1
  %50 = load i32, ptr %12, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %25, label %52

52:                                               ; preds = %48, %5
  %53 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %1, 0
  br i1 %55, label %85, label %56

56:                                               ; preds = %52
  %57 = and i32 %2, 8
  %58 = icmp eq i32 %57, 0
  %59 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 2
  %60 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 3, i32 1
  br label %61

61:                                               ; preds = %79, %56
  %62 = phi i32 [ %54, %56 ], [ %81, %79 ]
  %63 = phi i32 [ %1, %56 ], [ %80, %79 ]
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %61
  br i1 %58, label %67, label %76

67:                                               ; preds = %66
  %68 = tail call ptr @irq_get_irq_data(i32 noundef %62) #10
  %69 = load ptr, ptr %59, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  tail call void %69(ptr noundef %68) #10
  br label %76

72:                                               ; preds = %67
  %73 = load i32, ptr %53, align 4
  %74 = sub i32 %62, %73
  %75 = shl nuw i32 1, %74
  store i32 %75, ptr %68, align 4
  br label %76

76:                                               ; preds = %72, %71, %66
  %77 = load ptr, ptr %60, align 4
  tail call void @irq_set_chip_and_handler_name(i32 noundef %62, ptr noundef %6, ptr noundef %77, ptr noundef null) #10
  %78 = tail call i32 @irq_set_chip_data(i32 noundef %62, ptr noundef %0) #10
  tail call void @irq_modify_status(i32 noundef %62, i32 noundef %3, i32 noundef %4) #10
  br label %79

79:                                               ; preds = %76, %61
  %80 = lshr i32 %63, 1
  %81 = add i32 %62, 1
  %82 = icmp ult i32 %63, 2
  br i1 %82, label %83, label %61

83:                                               ; preds = %79
  %84 = load i32, ptr %53, align 4
  br label %85

85:                                               ; preds = %83, %52
  %86 = phi i32 [ %54, %52 ], [ %84, %83 ]
  %87 = phi i32 [ %54, %52 ], [ %81, %83 ]
  %88 = sub i32 %87, %86
  %89 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 0, i32 7
  store i32 %88, ptr %89, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_setup_alt_chip(ptr nocapture noundef %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 0, i32 13
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 0, i32 19
  br label %10

10:                                               ; preds = %24, %8
  %11 = phi i32 [ %25, %24 ], [ 0, %8 ]
  %12 = phi ptr [ %26, %24 ], [ %9, %8 ]
  %13 = getelementptr inbounds %struct.irq_chip_type, ptr %12, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, %1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 4
  store ptr %12, ptr %18, align 4
  %19 = getelementptr inbounds %struct.irq_chip_type, ptr %12, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.irq_desc, ptr %22, i32 0, i32 3
  store ptr %20, ptr %23, align 4
  br label %28

24:                                               ; preds = %10
  %25 = add nuw i32 %11, 1
  %26 = getelementptr %struct.irq_chip_type, ptr %12, i32 1
  %27 = icmp eq i32 %25, %6
  br i1 %27, label %28, label %10

28:                                               ; preds = %24, %17, %2
  %29 = phi i32 [ 0, %17 ], [ -22, %2 ], [ -22, %24 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_remove_generic_chip(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @gc_lock) #10
  %7 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 0, i32 18
  %8 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 0, i32 18, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %12 = load i16, ptr @gc_lock, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr @gc_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %23, %4
  %16 = phi i32 [ %25, %23 ], [ %6, %4 ]
  %17 = phi i32 [ %24, %23 ], [ %1, %4 ]
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  tail call void @__irq_set_handler(i32 noundef %16, ptr noundef null, i32 noundef 0, ptr noundef null) #10
  %21 = tail call i32 @irq_set_chip(i32 noundef %16, ptr noundef nonnull @no_irq_chip) #10
  %22 = tail call i32 @irq_set_chip_data(i32 noundef %16, ptr noundef null) #10
  tail call void @irq_modify_status(i32 noundef %16, i32 noundef %2, i32 noundef %3) #10
  br label %23

23:                                               ; preds = %20, %15
  %24 = lshr i32 %17, 1
  %25 = add i32 %16, 1
  %26 = icmp ult i32 %17, 2
  br i1 %26, label %27, label %15

27:                                               ; preds = %23, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @irq_gc_init_ops() #7 section ".init.text" {
  tail call void @register_syscore_ops(ptr noundef nonnull @irq_gc_syscore_ops) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @irq_gc_suspend() #1 {
  %1 = alloca i32, align 4
  %2 = load ptr, ptr @gc_list, align 4
  %3 = icmp eq ptr %2, @gc_list
  br i1 %3, label %45, label %4

4:                                                ; preds = %42, %0
  %5 = phi ptr [ %43, %42 ], [ %2, %0 ]
  %6 = getelementptr i8, ptr %5, i32 -72
  %7 = getelementptr i8, ptr %5, i32 76
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %37, label %10

10:                                               ; preds = %4
  %11 = getelementptr i8, ptr %5, i32 -4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %5, i32 -48
  %16 = load i32, ptr %15, align 4
  br label %31

17:                                               ; preds = %10
  %18 = getelementptr i8, ptr %5, i32 -12
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %5, i32 -48
  %23 = load i32, ptr %22, align 4
  %24 = call i32 @llvm.cttz.i32(i32 %19, i1 true) #10, !range !18
  %25 = add i32 %23, %24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #10
  store i32 0, ptr %1, align 4, !annotation !19
  %26 = call ptr @__irq_resolve_mapping(ptr noundef nonnull %12, i32 noundef %25, ptr noundef nonnull %1) #10
  %27 = icmp eq ptr %26, null
  %28 = load i32, ptr %1, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #10
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %21, %14
  %32 = phi i32 [ %16, %14 ], [ %28, %21 ]
  %33 = call ptr @irq_get_irq_data(i32 noundef %32) #10
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %7, align 4
  call void %36(ptr noundef nonnull %33) #10
  br label %37

37:                                               ; preds = %35, %31, %21, %17, %4
  %38 = getelementptr i8, ptr %5, i32 -56
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  call void %39(ptr noundef %6) #10
  br label %42

42:                                               ; preds = %41, %37
  %43 = load ptr, ptr %5, align 4
  %44 = icmp eq ptr %43, @gc_list
  br i1 %44, label %45, label %4

45:                                               ; preds = %42, %0
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @irq_gc_resume() #1 {
  %1 = alloca i32, align 4
  %2 = load ptr, ptr @gc_list, align 4
  %3 = icmp eq ptr %2, @gc_list
  br i1 %3, label %45, label %4

4:                                                ; preds = %42, %0
  %5 = phi ptr [ %43, %42 ], [ %2, %0 ]
  %6 = getelementptr i8, ptr %5, i32 -52
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %5, i32 -72
  call void %7(ptr noundef %10) #10
  br label %11

11:                                               ; preds = %9, %4
  %12 = getelementptr i8, ptr %5, i32 80
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %42, label %15

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %5, i32 -4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %5, i32 -48
  %21 = load i32, ptr %20, align 4
  br label %36

22:                                               ; preds = %15
  %23 = getelementptr i8, ptr %5, i32 -12
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %5, i32 -48
  %28 = load i32, ptr %27, align 4
  %29 = call i32 @llvm.cttz.i32(i32 %24, i1 true) #10, !range !18
  %30 = add i32 %28, %29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #10
  store i32 0, ptr %1, align 4, !annotation !19
  %31 = call ptr @__irq_resolve_mapping(ptr noundef nonnull %17, i32 noundef %30, ptr noundef nonnull %1) #10
  %32 = icmp eq ptr %31, null
  %33 = load i32, ptr %1, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #10
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %26, %19
  %37 = phi i32 [ %21, %19 ], [ %33, %26 ]
  %38 = call ptr @irq_get_irq_data(i32 noundef %37) #10
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %12, align 4
  call void %41(ptr noundef nonnull %38) #10
  br label %42

42:                                               ; preds = %40, %36, %26, %22, %11
  %43 = load ptr, ptr %5, align 4
  %44 = icmp eq ptr %43, @gc_list
  br i1 %44, label %45, label %4

45:                                               ; preds = %42, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @irq_gc_shutdown() #1 {
  %1 = alloca i32, align 4
  %2 = load ptr, ptr @gc_list, align 4
  %3 = icmp eq ptr %2, @gc_list
  br i1 %3, label %39, label %4

4:                                                ; preds = %36, %0
  %5 = phi ptr [ %37, %36 ], [ %2, %0 ]
  %6 = getelementptr i8, ptr %5, i32 84
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %36, label %9

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %5, i32 -4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %5, i32 -48
  %15 = load i32, ptr %14, align 4
  br label %30

16:                                               ; preds = %9
  %17 = getelementptr i8, ptr %5, i32 -12
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %5, i32 -48
  %22 = load i32, ptr %21, align 4
  %23 = call i32 @llvm.cttz.i32(i32 %18, i1 true) #10, !range !18
  %24 = add i32 %22, %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #10
  store i32 0, ptr %1, align 4, !annotation !19
  %25 = call ptr @__irq_resolve_mapping(ptr noundef nonnull %11, i32 noundef %24, ptr noundef nonnull %1) #10
  %26 = icmp eq ptr %25, null
  %27 = load i32, ptr %1, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #10
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %26, i1 true, i1 %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %20, %13
  %31 = phi i32 [ %15, %13 ], [ %27, %20 ]
  %32 = call ptr @irq_get_irq_data(i32 noundef %31) #10
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %6, align 4
  call void %35(ptr noundef nonnull %32) #10
  br label %36

36:                                               ; preds = %34, %30, %20, %16, %4
  %37 = load ptr, ptr %5, align 4
  %38 = icmp eq ptr %37, @gc_list
  br i1 %38, label %39, label %4

39:                                               ; preds = %36, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }

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
!8 = !{i64 2150481247}
!9 = !{i64 375780}
!10 = !{i64 2148912406}
!11 = !{i64 2148908230}
!12 = !{i64 2148908305, i64 2148908332, i64 2148908379, i64 2148908401, i64 2148908429, i64 2148908449}
!13 = !{i64 2148935409}
!14 = !{i64 376198}
!15 = !{i64 2151749992}
!16 = !{i64 2151750191}
!17 = !{i64 2150481911}
!18 = !{i32 0, i32 33}
!19 = !{!"auto-init"}
