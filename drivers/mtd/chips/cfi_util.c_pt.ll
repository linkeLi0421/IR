; ModuleID = '/llk/IR/drivers/mtd/chips/cfi_util.c_pt.bc'
source_filename = "../drivers/mtd/chips/cfi_util.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfi_udelay:\09\09\09\09\09"
module asm "\09.asciz \09\22cfi_udelay\22\09\09\09\09\09"
module asm "__kstrtabns_cfi_udelay:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfi_build_cmd_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22cfi_build_cmd_addr\22\09\09\09\09\09"
module asm "__kstrtabns_cfi_build_cmd_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfi_build_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22cfi_build_cmd\22\09\09\09\09\09"
module asm "__kstrtabns_cfi_build_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfi_merge_status:\09\09\09\09\09"
module asm "\09.asciz \09\22cfi_merge_status\22\09\09\09\09\09"
module asm "__kstrtabns_cfi_merge_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfi_send_gen_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22cfi_send_gen_cmd\22\09\09\09\09\09"
module asm "__kstrtabns_cfi_send_gen_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfi_qry_present:\09\09\09\09\09"
module asm "\09.asciz \09\22cfi_qry_present\22\09\09\09\09\09"
module asm "__kstrtabns_cfi_qry_present:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfi_qry_mode_on:\09\09\09\09\09"
module asm "\09.asciz \09\22cfi_qry_mode_on\22\09\09\09\09\09"
module asm "__kstrtabns_cfi_qry_mode_on:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfi_qry_mode_off:\09\09\09\09\09"
module asm "\09.asciz \09\22cfi_qry_mode_off\22\09\09\09\09\09"
module asm "__kstrtabns_cfi_qry_mode_off:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfi_read_pri:\09\09\09\09\09"
module asm "\09.asciz \09\22cfi_read_pri\22\09\09\09\09\09"
module asm "__kstrtabns_cfi_read_pri:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfi_fixup:\09\09\09\09\09"
module asm "\09.asciz \09\22cfi_fixup\22\09\09\09\09\09"
module asm "__kstrtabns_cfi_fixup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfi_varsize_frob:\09\09\09\09\09"
module asm "\09.asciz \09\22cfi_varsize_frob\22\09\09\09\09\09"
module asm "__kstrtabns_cfi_varsize_frob:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.map_info = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.cfi_private = type { i16, ptr, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, %union.map_word, i32, ptr, [0 x %struct.flchip] }
%union.map_word = type { [1 x i32] }
%struct.flchip = type { i32, i32, i32, i32, i8, i32, i32, %struct.mutex, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.cfi_fixup = type { i16, i16, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.5 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.5 = type { %struct.mtd_part, [16 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.mtd_erase_region_info = type { i64, i32, i32, ptr }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__kstrtab_cfi_udelay = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfi_udelay = external dso_local constant [0 x i8], align 1
@__ksymtab_cfi_udelay = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfi_udelay to i32), ptr @__kstrtab_cfi_udelay, ptr @__kstrtabns_cfi_udelay }, section "___ksymtab+cfi_udelay", align 4
@__kstrtab_cfi_build_cmd_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfi_build_cmd_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_cfi_build_cmd_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfi_build_cmd_addr to i32), ptr @__kstrtab_cfi_build_cmd_addr, ptr @__kstrtabns_cfi_build_cmd_addr }, section "___ksymtab+cfi_build_cmd_addr", align 4
@__kstrtab_cfi_build_cmd = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfi_build_cmd = external dso_local constant [0 x i8], align 1
@__ksymtab_cfi_build_cmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfi_build_cmd to i32), ptr @__kstrtab_cfi_build_cmd, ptr @__kstrtabns_cfi_build_cmd }, section "___ksymtab+cfi_build_cmd", align 4
@__kstrtab_cfi_merge_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfi_merge_status = external dso_local constant [0 x i8], align 1
@__ksymtab_cfi_merge_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfi_merge_status to i32), ptr @__kstrtab_cfi_merge_status, ptr @__kstrtabns_cfi_merge_status }, section "___ksymtab+cfi_merge_status", align 4
@__kstrtab_cfi_send_gen_cmd = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfi_send_gen_cmd = external dso_local constant [0 x i8], align 1
@__ksymtab_cfi_send_gen_cmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfi_send_gen_cmd to i32), ptr @__kstrtab_cfi_send_gen_cmd, ptr @__kstrtabns_cfi_send_gen_cmd }, section "___ksymtab+cfi_send_gen_cmd", align 4
@__kstrtab_cfi_qry_present = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfi_qry_present = external dso_local constant [0 x i8], align 1
@__ksymtab_cfi_qry_present = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfi_qry_present to i32), ptr @__kstrtab_cfi_qry_present, ptr @__kstrtabns_cfi_qry_present }, section "___ksymtab_gpl+cfi_qry_present", align 4
@__kstrtab_cfi_qry_mode_on = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfi_qry_mode_on = external dso_local constant [0 x i8], align 1
@__ksymtab_cfi_qry_mode_on = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfi_qry_mode_on to i32), ptr @__kstrtab_cfi_qry_mode_on, ptr @__kstrtabns_cfi_qry_mode_on }, section "___ksymtab_gpl+cfi_qry_mode_on", align 4
@__kstrtab_cfi_qry_mode_off = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfi_qry_mode_off = external dso_local constant [0 x i8], align 1
@__ksymtab_cfi_qry_mode_off = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfi_qry_mode_off to i32), ptr @__kstrtab_cfi_qry_mode_off, ptr @__kstrtabns_cfi_qry_mode_off }, section "___ksymtab_gpl+cfi_qry_mode_off", align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"\016%s Extended Query Table at 0x%4.4X\0A\00", align 1
@__kstrtab_cfi_read_pri = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfi_read_pri = external dso_local constant [0 x i8], align 1
@__ksymtab_cfi_read_pri = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfi_read_pri to i32), ptr @__kstrtab_cfi_read_pri, ptr @__kstrtabns_cfi_read_pri }, section "___ksymtab+cfi_read_pri", align 4
@__kstrtab_cfi_fixup = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfi_fixup = external dso_local constant [0 x i8], align 1
@__ksymtab_cfi_fixup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfi_fixup to i32), ptr @__kstrtab_cfi_fixup, ptr @__kstrtabns_cfi_fixup }, section "___ksymtab+cfi_fixup", align 4
@__kstrtab_cfi_varsize_frob = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfi_varsize_frob = external dso_local constant [0 x i8], align 1
@__ksymtab_cfi_varsize_frob = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfi_varsize_frob to i32), ptr @__kstrtab_cfi_varsize_frob, ptr @__kstrtabns_cfi_varsize_frob }, section "___ksymtab+cfi_varsize_frob", align 4
@__UNIQUE_ID_file172 = internal constant [41 x i8] c"cfi_util.file=drivers/mtd/chips/cfi_util\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [21 x i8] c"cfi_util.license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173, ptr @__ksymtab_cfi_build_cmd, ptr @__ksymtab_cfi_build_cmd_addr, ptr @__ksymtab_cfi_fixup, ptr @__ksymtab_cfi_merge_status, ptr @__ksymtab_cfi_qry_mode_off, ptr @__ksymtab_cfi_qry_mode_on, ptr @__ksymtab_cfi_qry_present, ptr @__ksymtab_cfi_read_pri, ptr @__ksymtab_cfi_send_gen_cmd, ptr @__ksymtab_cfi_udelay, ptr @__ksymtab_cfi_varsize_frob], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfi_udelay(i32 noundef %0) #0 {
  %2 = icmp sgt i32 %0, 999
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = add nuw i32 %0, 999
  %5 = sdiv i32 %4, 1000
  tail call void @msleep(i32 noundef %5) #6
  br label %9

6:                                                ; preds = %1
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %7(i32 noundef %0) #6
  %8 = tail call i32 @__cond_resched() #6
  br label %9

9:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @cfi_build_cmd_addr(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cfi_private, ptr %2, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cfi_private, ptr %2, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = mul i32 %9, %7
  %11 = mul i32 %10, %0
  %12 = icmp ugt i32 %10, %5
  %13 = and i32 %0, 255
  %14 = icmp eq i32 %13, 170
  %15 = and i1 %14, %12
  %16 = lshr i32 %9, 1
  %17 = mul i32 %16, %7
  %18 = select i1 %15, i32 %17, i32 0
  %19 = or i32 %18, %11
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cfi_build_cmd(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cfi_private, ptr %2, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = sdiv i32 %5, %7
  %9 = mul i32 %7, %5
  %10 = sdiv i32 %9, %5
  switch i32 %8, label %11 [
    i32 1, label %32
    i32 2, label %12
    i32 4, label %24
  ]

11:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/chips/cfi_util.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 92, 0\0A.popsection", ""() #6, !srcloc !8
  unreachable

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %32, label %16

16:                                               ; preds = %12
  %17 = icmp eq i32 %14, 3
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = trunc i32 %0 to i16
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %21 = zext i16 %20 to i32
  br label %32

22:                                               ; preds = %16
  %23 = and i32 %0, 65535
  br label %32

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %26, 2
  %28 = icmp eq i32 %26, 3
  %29 = tail call i32 @llvm.bswap.i32(i32 %0)
  %30 = select i1 %28, i32 %29, i32 %0
  %31 = select i1 %27, i32 %0, i32 %30
  br label %32

32:                                               ; preds = %24, %22, %18, %12, %3
  %33 = phi i32 [ %31, %24 ], [ %0, %3 ], [ %21, %18 ], [ %23, %22 ], [ %0, %12 ]
  switch i32 %10, label %34 [
    i32 4, label %35
    i32 2, label %39
    i32 1, label %44
  ]

34:                                               ; preds = %32
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/chips/cfi_util.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

35:                                               ; preds = %32
  %36 = shl nuw nsw i32 %8, 4
  %37 = shl i32 %33, %36
  %38 = or i32 %37, %33
  br label %39

39:                                               ; preds = %35, %32
  %40 = phi i32 [ %33, %32 ], [ %38, %35 ]
  %41 = shl nuw nsw i32 %8, 3
  %42 = shl i32 %40, %41
  %43 = or i32 %42, %40
  br label %44

44:                                               ; preds = %39, %32
  %45 = phi i32 [ %33, %32 ], [ %43, %39 ]
  ret i32 %45
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cfi_merge_status([1 x i32] %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = extractvalue [1 x i32] %0, 0
  %5 = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cfi_private, ptr %2, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = sdiv i32 %6, %8
  %10 = mul i32 %8, %6
  %11 = sdiv i32 %10, %6
  switch i32 %11, label %12 [
    i32 4, label %13
    i32 2, label %17
    i32 1, label %22
  ]

12:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/chips/cfi_util.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 163, 0\0A.popsection", ""() #6, !srcloc !10
  unreachable

13:                                               ; preds = %3
  %14 = shl i32 %9, 4
  %15 = lshr i32 %4, %14
  %16 = or i32 %15, %4
  br label %17

17:                                               ; preds = %13, %3
  %18 = phi i32 [ %4, %3 ], [ %16, %13 ]
  %19 = shl i32 %9, 3
  %20 = lshr i32 %4, %19
  %21 = or i32 %18, %20
  br label %22

22:                                               ; preds = %17, %3
  %23 = phi i32 [ %4, %3 ], [ %21, %17 ]
  switch i32 %9, label %44 [
    i32 1, label %45
    i32 2, label %24
    i32 4, label %36
  ]

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %26, 2
  br i1 %27, label %45, label %28

28:                                               ; preds = %24
  %29 = icmp eq i32 %26, 3
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  %31 = trunc i32 %23 to i16
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %33 = zext i16 %32 to i32
  br label %45

34:                                               ; preds = %28
  %35 = and i32 %23, 65535
  br label %45

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 5
  %38 = load i32, ptr %37, align 4
  %39 = icmp ult i32 %38, 2
  %40 = icmp eq i32 %38, 3
  %41 = tail call i32 @llvm.bswap.i32(i32 %23)
  %42 = select i1 %40, i32 %41, i32 %23
  %43 = select i1 %39, i32 %23, i32 %42
  br label %45

44:                                               ; preds = %22
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/chips/cfi_util.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 190, 0\0A.popsection", ""() #6, !srcloc !11
  unreachable

45:                                               ; preds = %36, %34, %30, %24, %22
  %46 = phi i32 [ %43, %36 ], [ %23, %22 ], [ %33, %30 ], [ %35, %34 ], [ %23, %24 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cfi_send_gen_cmd(i8 noundef zeroext %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 %5, ptr noundef writeonly %6) #0 {
  %8 = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.cfi_private, ptr %4, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.cfi_private, ptr %4, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = mul i32 %13, %11
  %15 = mul i32 %14, %1
  %16 = icmp ugt i32 %14, %9
  %17 = and i32 %1, 255
  %18 = icmp eq i32 %17, 170
  %19 = and i1 %18, %16
  %20 = lshr i32 %13, 1
  %21 = mul i32 %20, %11
  %22 = select i1 %19, i32 %21, i32 0
  %23 = or i32 %22, %15
  %24 = add i32 %23, %2
  %25 = zext i8 %0 to i32
  %26 = sdiv i32 %9, %11
  %27 = mul i32 %11, %9
  %28 = sdiv i32 %27, %9
  switch i32 %26, label %29 [
    i32 1, label %44
    i32 2, label %30
    i32 4, label %36
  ]

29:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/chips/cfi_util.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 92, 0\0A.popsection", ""() #6, !srcloc !8
  unreachable

30:                                               ; preds = %7
  %31 = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 3
  %34 = shl nuw nsw i32 %25, 8
  %35 = select i1 %33, i32 %34, i32 %25
  br label %44

36:                                               ; preds = %7
  %37 = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 5
  %38 = load i32, ptr %37, align 4
  %39 = icmp ult i32 %38, 2
  %40 = icmp eq i32 %38, 3
  %41 = shl nuw i32 %25, 24
  %42 = select i1 %40, i32 %41, i32 %25
  %43 = select i1 %39, i32 %25, i32 %42
  br label %44

44:                                               ; preds = %36, %30, %7
  %45 = phi i32 [ %43, %36 ], [ %25, %7 ], [ %35, %30 ]
  switch i32 %28, label %46 [
    i32 4, label %47
    i32 2, label %51
    i32 1, label %56
  ]

46:                                               ; preds = %44
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/chips/cfi_util.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

47:                                               ; preds = %44
  %48 = shl nuw nsw i32 %26, 4
  %49 = shl i32 %45, %48
  %50 = or i32 %49, %45
  br label %51

51:                                               ; preds = %47, %44
  %52 = phi i32 [ %45, %44 ], [ %50, %47 ]
  %53 = shl nuw nsw i32 %26, 3
  %54 = shl i32 %52, %53
  %55 = or i32 %54, %52
  br label %56

56:                                               ; preds = %51, %44
  %57 = phi i32 [ %45, %44 ], [ %55, %51 ]
  %58 = icmp eq ptr %6, null
  br i1 %58, label %81, label %59

59:                                               ; preds = %56
  switch i32 %9, label %77 [
    i32 1, label %60
    i32 2, label %66
    i32 4, label %72
  ]

60:                                               ; preds = %59
  %61 = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr i8, ptr %62, i32 %24
  %64 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %63) #6, !srcloc !12
  %65 = zext i8 %64 to i32
  br label %78

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 %24
  %70 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %69) #6, !srcloc !13
  %71 = zext i16 %70 to i32
  br label %78

72:                                               ; preds = %59
  %73 = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr i8, ptr %74, i32 %24
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #6, !srcloc !14
  br label %78

77:                                               ; preds = %59
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 406, 0\0A.popsection", ""() #6, !srcloc !15
  unreachable

78:                                               ; preds = %72, %66, %60
  %79 = phi i32 [ %65, %60 ], [ %71, %66 ], [ %76, %72 ]
  store i32 %79, ptr %6, align 4
  %80 = load i32, ptr %8, align 4
  br label %81

81:                                               ; preds = %78, %56
  %82 = phi i32 [ %80, %78 ], [ %9, %56 ]
  switch i32 %82, label %97 [
    i32 1, label %83
    i32 2, label %88
    i32 4, label %93
  ]

83:                                               ; preds = %81
  %84 = trunc i32 %57 to i8
  %85 = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 3
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr i8, ptr %86, i32 %24
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %87, i8 %84) #6, !srcloc !16
  br label %98

88:                                               ; preds = %81
  %89 = trunc i32 %57 to i16
  %90 = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr i8, ptr %91, i32 %24
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %92, i16 %89) #6, !srcloc !17
  br label %98

93:                                               ; preds = %81
  %94 = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 3
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr i8, ptr %95, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %57) #6, !srcloc !18
  br label %98

97:                                               ; preds = %81
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #6, !srcloc !19
  unreachable

98:                                               ; preds = %93, %88, %83
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !20
  tail call void @arm_heavy_mb() #6
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cfi_qry_present(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.cfi_private, ptr %2, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cfi_private, ptr %2, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = mul i32 %7, %5
  %9 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = sdiv i32 %10, %5
  %12 = mul i32 %10, %5
  %13 = sdiv i32 %12, %10
  switch i32 %11, label %14 [
    i32 1, label %29
    i32 2, label %15
    i32 4, label %22
  ]

14:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/chips/cfi_util.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 92, 0\0A.popsection", ""() #6, !srcloc !8
  unreachable

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %29, label %19

19:                                               ; preds = %15
  %20 = icmp eq i32 %17, 3
  %21 = select i1 %20, i32 20736, i32 81
  br label %29

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = icmp ult i32 %24, 2
  %26 = icmp eq i32 %24, 3
  %27 = select i1 %26, i32 1358954496, i32 81
  %28 = select i1 %25, i32 81, i32 %27
  br label %29

29:                                               ; preds = %22, %19, %15, %3
  %30 = phi i32 [ %28, %22 ], [ 81, %3 ], [ 81, %15 ], [ %21, %19 ]
  switch i32 %13, label %31 [
    i32 4, label %32
    i32 2, label %36
    i32 1, label %41
  ]

31:                                               ; preds = %29
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/chips/cfi_util.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

32:                                               ; preds = %29
  %33 = shl nuw nsw i32 %11, 4
  %34 = shl i32 %30, %33
  %35 = or i32 %34, %30
  br label %36

36:                                               ; preds = %32, %29
  %37 = phi i32 [ %30, %29 ], [ %35, %32 ]
  %38 = shl nuw nsw i32 %11, 3
  %39 = shl i32 %37, %38
  %40 = or i32 %39, %37
  br label %41

41:                                               ; preds = %36, %29
  %42 = phi i32 [ %30, %29 ], [ %40, %36 ]
  switch i32 %11, label %43 [
    i32 1, label %58
    i32 2, label %44
    i32 4, label %51
  ]

43:                                               ; preds = %41
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/chips/cfi_util.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 92, 0\0A.popsection", ""() #6, !srcloc !8
  unreachable

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = icmp ult i32 %46, 2
  br i1 %47, label %58, label %48

48:                                               ; preds = %44
  %49 = icmp eq i32 %46, 3
  %50 = select i1 %49, i32 20992, i32 82
  br label %58

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 5
  %53 = load i32, ptr %52, align 4
  %54 = icmp ult i32 %53, 2
  %55 = icmp eq i32 %53, 3
  %56 = select i1 %55, i32 1375731712, i32 82
  %57 = select i1 %54, i32 82, i32 %56
  br label %58

58:                                               ; preds = %51, %48, %44, %41
  %59 = phi i32 [ %57, %51 ], [ 82, %41 ], [ 82, %44 ], [ %50, %48 ]
  switch i32 %13, label %60 [
    i32 4, label %61
    i32 2, label %65
    i32 1, label %70
  ]

60:                                               ; preds = %58
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/chips/cfi_util.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

61:                                               ; preds = %58
  %62 = shl nuw nsw i32 %11, 4
  %63 = shl i32 %59, %62
  %64 = or i32 %63, %59
  br label %65

65:                                               ; preds = %61, %58
  %66 = phi i32 [ %59, %58 ], [ %64, %61 ]
  %67 = shl nuw nsw i32 %11, 3
  %68 = shl i32 %66, %67
  %69 = or i32 %68, %66
  br label %70

70:                                               ; preds = %65, %58
  %71 = phi i32 [ %59, %58 ], [ %69, %65 ]
  switch i32 %11, label %72 [
    i32 1, label %87
    i32 2, label %73
    i32 4, label %80
  ]

72:                                               ; preds = %70
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/chips/cfi_util.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 92, 0\0A.popsection", ""() #6, !srcloc !8
  unreachable

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 5
  %75 = load i32, ptr %74, align 4
  %76 = icmp ult i32 %75, 2
  br i1 %76, label %87, label %77

77:                                               ; preds = %73
  %78 = icmp eq i32 %75, 3
  %79 = select i1 %78, i32 22784, i32 89
  br label %87

80:                                               ; preds = %70
  %81 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 5
  %82 = load i32, ptr %81, align 4
  %83 = icmp ult i32 %82, 2
  %84 = icmp eq i32 %82, 3
  %85 = select i1 %84, i32 1493172224, i32 89
  %86 = select i1 %83, i32 89, i32 %85
  br label %87

87:                                               ; preds = %80, %77, %73, %70
  %88 = phi i32 [ %86, %80 ], [ 89, %70 ], [ 89, %73 ], [ %79, %77 ]
  switch i32 %13, label %89 [
    i32 4, label %90
    i32 2, label %94
    i32 1, label %99
  ]

89:                                               ; preds = %87
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/chips/cfi_util.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

90:                                               ; preds = %87
  %91 = shl nuw nsw i32 %11, 4
  %92 = shl i32 %88, %91
  %93 = or i32 %92, %88
  br label %94

94:                                               ; preds = %90, %87
  %95 = phi i32 [ %88, %87 ], [ %93, %90 ]
  %96 = shl nuw nsw i32 %11, 3
  %97 = shl i32 %95, %96
  %98 = or i32 %97, %95
  br label %99

99:                                               ; preds = %94, %87
  %100 = phi i32 [ %88, %87 ], [ %98, %94 ]
  %101 = shl i32 %8, 4
  %102 = add i32 %101, %1
  switch i32 %10, label %120 [
    i32 1, label %103
    i32 2, label %109
    i32 4, label %115
  ]

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr i8, ptr %105, i32 %102
  %107 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %106) #6, !srcloc !12
  %108 = zext i8 %107 to i32
  br label %121

109:                                              ; preds = %99
  %110 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr i8, ptr %111, i32 %102
  %113 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %112) #6, !srcloc !13
  %114 = zext i16 %113 to i32
  br label %121

115:                                              ; preds = %99
  %116 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr i8, ptr %117, i32 %102
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #6, !srcloc !14
  br label %121

120:                                              ; preds = %99
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 406, 0\0A.popsection", ""() #6, !srcloc !15
  unreachable

121:                                              ; preds = %115, %109, %103
  %122 = phi i32 [ %108, %103 ], [ %114, %109 ], [ %119, %115 ]
  %123 = mul i32 %8, 17
  %124 = add i32 %123, %1
  %125 = load i32, ptr %9, align 4
  switch i32 %125, label %143 [
    i32 1, label %126
    i32 2, label %132
    i32 4, label %138
  ]

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr i8, ptr %128, i32 %124
  %130 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %129) #6, !srcloc !12
  %131 = zext i8 %130 to i32
  br label %144

132:                                              ; preds = %121
  %133 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr i8, ptr %134, i32 %124
  %136 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %135) #6, !srcloc !13
  %137 = zext i16 %136 to i32
  br label %144

138:                                              ; preds = %121
  %139 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr i8, ptr %140, i32 %124
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %141) #6, !srcloc !14
  br label %144

143:                                              ; preds = %121
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 406, 0\0A.popsection", ""() #6, !srcloc !15
  unreachable

144:                                              ; preds = %138, %132, %126
  %145 = phi i32 [ %131, %126 ], [ %137, %132 ], [ %142, %138 ]
  %146 = mul i32 %8, 18
  %147 = add i32 %146, %1
  %148 = load i32, ptr %9, align 4
  switch i32 %148, label %166 [
    i32 1, label %149
    i32 2, label %155
    i32 4, label %161
  ]

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr i8, ptr %151, i32 %147
  %153 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %152) #6, !srcloc !12
  %154 = zext i8 %153 to i32
  br label %167

155:                                              ; preds = %144
  %156 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr i8, ptr %157, i32 %147
  %159 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %158) #6, !srcloc !13
  %160 = zext i16 %159 to i32
  br label %167

161:                                              ; preds = %144
  %162 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr i8, ptr %163, i32 %147
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %164) #6, !srcloc !14
  br label %167

166:                                              ; preds = %144
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 406, 0\0A.popsection", ""() #6, !srcloc !15
  unreachable

167:                                              ; preds = %161, %155, %149
  %168 = phi i32 [ %154, %149 ], [ %160, %155 ], [ %165, %161 ]
  %169 = icmp eq i32 %42, %122
  %170 = icmp eq i32 %71, %145
  %171 = select i1 %169, i1 %170, i1 false
  %172 = icmp eq i32 %100, %168
  %173 = select i1 %171, i1 %172, i1 false
  %174 = zext i1 %173 to i32
  ret i32 %174
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cfi_qry_mode_on(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -16, i32 noundef 0, i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 undef, ptr noundef null)
  %5 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -104, i32 noundef 85, i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 undef, ptr noundef null)
  %6 = tail call i32 @cfi_qry_present(ptr noundef %1, i32 noundef %0, ptr noundef %2)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %34

8:                                                ; preds = %3
  %9 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -16, i32 noundef 0, i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 undef, ptr noundef null)
  %10 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -1, i32 noundef 0, i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 undef, ptr noundef null)
  %11 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -104, i32 noundef 85, i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 undef, ptr noundef null)
  %12 = tail call i32 @cfi_qry_present(ptr noundef %1, i32 noundef %0, ptr noundef %2)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %8
  %15 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -16, i32 noundef 0, i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 undef, ptr noundef null)
  %16 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -104, i32 noundef 1365, i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 undef, ptr noundef null)
  %17 = tail call i32 @cfi_qry_present(ptr noundef %1, i32 noundef %0, ptr noundef %2)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -16, i32 noundef 0, i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 undef, ptr noundef null)
  %21 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -86, i32 noundef 21845, i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 undef, ptr noundef null)
  %22 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext 85, i32 noundef 10922, i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 undef, ptr noundef null)
  %23 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -104, i32 noundef 21845, i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 undef, ptr noundef null)
  %24 = tail call i32 @cfi_qry_present(ptr noundef %1, i32 noundef %0, ptr noundef %2)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -16, i32 noundef 0, i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 undef, ptr noundef null)
  %28 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -86, i32 noundef 1365, i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 undef, ptr noundef null)
  %29 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext 85, i32 noundef 682, i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 undef, ptr noundef null)
  %30 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -104, i32 noundef 1365, i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 undef, ptr noundef null)
  %31 = tail call i32 @cfi_qry_present(ptr noundef %1, i32 noundef %0, ptr noundef %2)
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i32
  br label %34

34:                                               ; preds = %26, %19, %14, %8, %3
  %35 = phi i32 [ 1, %3 ], [ 1, %8 ], [ 1, %14 ], [ 1, %19 ], [ %33, %26 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfi_qry_mode_off(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -16, i32 noundef 0, i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 undef, ptr noundef null)
  %5 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -1, i32 noundef 0, i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 undef, ptr noundef null)
  %6 = getelementptr inbounds %struct.cfi_private, ptr %2, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 32
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.cfi_private, ptr %2, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %14 [
    i32 8830, label %12
    i32 126, label %12
  ]

12:                                               ; preds = %9, %9
  %13 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -16, i32 noundef 0, i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 undef, ptr noundef null)
  br label %14

14:                                               ; preds = %12, %9, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cfi_read_pri(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cfi_private, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.cfi_private, ptr %6, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = mul i32 %10, %8
  %12 = icmp eq i16 %1, 0
  br i1 %12, label %84, label %13

13:                                               ; preds = %4
  %14 = zext i16 %1 to i32
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %3, i32 noundef %14) #7
  %16 = zext i16 %2 to i32
  %17 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %16, i32 noundef 3264) #8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %84, label %19

19:                                               ; preds = %13
  %20 = tail call i32 @cfi_qry_mode_on(i32 noundef 0, ptr noundef %0, ptr noundef %6)
  %21 = icmp eq i16 %2, 0
  br i1 %21, label %73, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %25 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 5
  br label %26

26:                                               ; preds = %67, %22
  %27 = phi i32 [ 0, %22 ], [ %71, %67 ]
  %28 = add nuw nsw i32 %27, %14
  %29 = mul i32 %11, %28
  %30 = load i32, ptr %23, align 4
  switch i32 %30, label %45 [
    i32 1, label %31
    i32 2, label %36
    i32 4, label %41
  ]

31:                                               ; preds = %26
  %32 = load ptr, ptr %24, align 4
  %33 = getelementptr i8, ptr %32, i32 %29
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %33) #6, !srcloc !12
  %35 = zext i8 %34 to i32
  br label %46

36:                                               ; preds = %26
  %37 = load ptr, ptr %24, align 4
  %38 = getelementptr i8, ptr %37, i32 %29
  %39 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %38) #6, !srcloc !13
  %40 = zext i16 %39 to i32
  br label %46

41:                                               ; preds = %26
  %42 = load ptr, ptr %24, align 4
  %43 = getelementptr i8, ptr %42, i32 %29
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #6, !srcloc !14
  br label %46

45:                                               ; preds = %26
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 406, 0\0A.popsection", ""() #6, !srcloc !15
  unreachable

46:                                               ; preds = %41, %36, %31
  %47 = phi i32 [ %35, %31 ], [ %40, %36 ], [ %44, %41 ]
  %48 = load i32, ptr %23, align 4
  switch i32 %48, label %60 [
    i32 1, label %67
    i32 2, label %49
  ]

49:                                               ; preds = %46
  %50 = load i32, ptr %25, align 4
  %51 = icmp ult i32 %50, 2
  br i1 %51, label %67, label %52

52:                                               ; preds = %49
  %53 = icmp eq i32 %50, 3
  br i1 %53, label %54, label %58

54:                                               ; preds = %52
  %55 = trunc i32 %47 to i16
  %56 = tail call i16 @llvm.bswap.i16(i16 %55) #6
  %57 = zext i16 %56 to i32
  br label %67

58:                                               ; preds = %52
  %59 = and i32 %47, 65535
  br label %67

60:                                               ; preds = %46
  %61 = load i32, ptr %25, align 4
  %62 = icmp ult i32 %61, 2
  %63 = icmp eq i32 %61, 3
  %64 = tail call i32 @llvm.bswap.i32(i32 %47) #6
  %65 = select i1 %63, i32 %64, i32 %47
  %66 = select i1 %62, i32 %47, i32 %65
  br label %67

67:                                               ; preds = %60, %58, %54, %49, %46
  %68 = phi i32 [ %66, %60 ], [ %47, %46 ], [ %57, %54 ], [ %59, %58 ], [ %47, %49 ]
  %69 = trunc i32 %68 to i8
  %70 = getelementptr i8, ptr %17, i32 %27
  store i8 %69, ptr %70, align 1
  %71 = add nuw nsw i32 %27, 1
  %72 = icmp eq i32 %71, %16
  br i1 %72, label %73, label %26

73:                                               ; preds = %67, %19
  %74 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -16, i32 noundef 0, i32 noundef 0, ptr noundef %0, ptr noundef %6, i32 undef, ptr noundef null) #6
  %75 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -1, i32 noundef 0, i32 noundef 0, ptr noundef %0, ptr noundef %6, i32 undef, ptr noundef null) #6
  %76 = getelementptr inbounds %struct.cfi_private, ptr %6, i32 0, i32 9
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 32
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.cfi_private, ptr %6, i32 0, i32 10
  %81 = load i32, ptr %80, align 4
  switch i32 %81, label %84 [
    i32 8830, label %82
    i32 126, label %82
  ]

82:                                               ; preds = %79, %79
  %83 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -16, i32 noundef 0, i32 noundef 0, ptr noundef %0, ptr noundef %6, i32 undef, ptr noundef null) #6
  br label %84

84:                                               ; preds = %82, %79, %73, %13, %4
  %85 = phi ptr [ null, %13 ], [ null, %4 ], [ %17, %73 ], [ %17, %79 ], [ %17, %82 ]
  ret ptr %85
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfi_fixup(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.cfi_fixup, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %36, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 54
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.map_info, ptr %8, i32 0, i32 13
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.cfi_private, ptr %10, i32 0, i32 9
  %12 = getelementptr inbounds %struct.cfi_private, ptr %10, i32 0, i32 10
  br label %13

13:                                               ; preds = %31, %6
  %14 = phi ptr [ %4, %6 ], [ %34, %31 ]
  %15 = phi ptr [ %1, %6 ], [ %32, %31 ]
  %16 = load i16, ptr %15, align 4
  %17 = icmp eq i16 %16, -1
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = zext i16 %16 to i32
  %20 = load i32, ptr %11, align 4
  %21 = icmp eq i32 %20, %19
  br i1 %21, label %22, label %31

22:                                               ; preds = %18, %13
  %23 = getelementptr inbounds %struct.cfi_fixup, ptr %15, i32 0, i32 1
  %24 = load i16, ptr %23, align 2
  %25 = icmp eq i16 %24, -1
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = zext i16 %24 to i32
  %28 = load i32, ptr %12, align 4
  %29 = icmp eq i32 %28, %27
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %22
  tail call void %14(ptr noundef %0) #6
  br label %31

31:                                               ; preds = %30, %26, %18
  %32 = getelementptr %struct.cfi_fixup, ptr %15, i32 1
  %33 = getelementptr %struct.cfi_fixup, ptr %15, i32 1, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %13

36:                                               ; preds = %31, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cfi_varsize_frob(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 54
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.map_info, ptr %7, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 20
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 19
  %13 = load i32, ptr %12, align 8
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %20, %5
  %16 = phi i32 [ %21, %20 ], [ 0, %5 ]
  %17 = getelementptr %struct.mtd_erase_region_info, ptr %11, i32 %16
  %18 = load i64, ptr %17, align 8
  %19 = icmp ugt i64 %18, %2
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = add nuw nsw i32 %16, 1
  %22 = icmp eq i32 %21, %13
  br i1 %22, label %23, label %15

23:                                               ; preds = %20, %15, %5
  %24 = phi i32 [ 0, %5 ], [ %13, %20 ], [ %16, %15 ]
  %25 = add nsw i32 %24, -1
  %26 = getelementptr %struct.mtd_erase_region_info, ptr %11, i32 %25, i32 1
  %27 = load i32, ptr %26, align 8
  %28 = add i32 %27, -1
  %29 = zext i32 %28 to i64
  %30 = and i64 %29, %2
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %106

32:                                               ; preds = %23
  %33 = zext i32 %3 to i64
  %34 = add i64 %33, %2
  %35 = icmp sgt i32 %24, %13
  br i1 %35, label %44, label %36

36:                                               ; preds = %41, %32
  %37 = phi i32 [ %42, %41 ], [ %25, %32 ]
  %38 = getelementptr %struct.mtd_erase_region_info, ptr %11, i32 %37
  %39 = load i64, ptr %38, align 8
  %40 = icmp ult i64 %34, %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = add nsw i32 %37, 1
  %43 = icmp eq i32 %42, %13
  br i1 %43, label %44, label %36

44:                                               ; preds = %41, %36, %32
  %45 = phi i32 [ %25, %32 ], [ %13, %41 ], [ %37, %36 ]
  %46 = add i32 %45, -1
  %47 = getelementptr %struct.mtd_erase_region_info, ptr %11, i32 %46, i32 1
  %48 = load i32, ptr %47, align 8
  %49 = add i32 %48, -1
  %50 = zext i32 %49 to i64
  %51 = and i64 %34, %50
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %106

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.cfi_private, ptr %9, i32 0, i32 13
  %55 = icmp eq i32 %3, 0
  br i1 %55, label %106, label %56

56:                                               ; preds = %53
  %57 = trunc i64 %2 to i32
  %58 = load i32, ptr %54, align 4
  %59 = zext i32 %58 to i64
  %60 = ashr i64 %2, %59
  %61 = trunc i64 %60 to i32
  %62 = shl i32 %61, %58
  %63 = sub i32 %57, %62
  %64 = getelementptr inbounds %struct.cfi_private, ptr %9, i32 0, i32 11
  %65 = getelementptr %struct.cfi_private, ptr %9, i32 0, i32 15, i32 %61
  %66 = tail call i32 %1(ptr noundef %7, ptr noundef %65, i32 noundef %63, i32 noundef %27, ptr noundef %4) #6
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %106

68:                                               ; preds = %100, %56
  %69 = phi i64 [ %78, %100 ], [ %2, %56 ]
  %70 = phi i32 [ %79, %100 ], [ %3, %56 ]
  %71 = phi i32 [ %97, %100 ], [ %63, %56 ]
  %72 = phi i32 [ %98, %100 ], [ %61, %56 ]
  %73 = phi i32 [ %88, %100 ], [ %25, %56 ]
  %74 = phi i32 [ %102, %100 ], [ %27, %56 ]
  %75 = getelementptr %struct.mtd_erase_region_info, ptr %11, i32 %73
  %76 = add i32 %74, %71
  %77 = sext i32 %74 to i64
  %78 = add i64 %69, %77
  %79 = sub i32 %70, %74
  %80 = load i64, ptr %75, align 8
  %81 = getelementptr %struct.mtd_erase_region_info, ptr %11, i32 %73, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = mul i32 %82, %74
  %84 = zext i32 %83 to i64
  %85 = add i64 %80, %84
  %86 = icmp eq i64 %78, %85
  %87 = zext i1 %86 to i32
  %88 = add i32 %73, %87
  %89 = load i32, ptr %54, align 4
  %90 = lshr i32 %76, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %68
  %93 = add i32 %72, 1
  %94 = load i32, ptr %64, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %92, %68
  %97 = phi i32 [ 0, %92 ], [ %76, %68 ]
  %98 = phi i32 [ %93, %92 ], [ %72, %68 ]
  %99 = icmp eq i32 %79, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %96
  %101 = getelementptr %struct.mtd_erase_region_info, ptr %11, i32 %88, i32 1
  %102 = load i32, ptr %101, align 8
  %103 = getelementptr %struct.cfi_private, ptr %9, i32 0, i32 15, i32 %98
  %104 = tail call i32 %1(ptr noundef %7, ptr noundef %103, i32 noundef %97, i32 noundef %102, ptr noundef %4) #6
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %68, label %106

106:                                              ; preds = %100, %96, %92, %56, %53, %44, %23
  %107 = phi i32 [ -22, %23 ], [ -22, %44 ], [ 0, %53 ], [ %66, %56 ], [ 0, %96 ], [ %104, %100 ], [ 0, %92 ]
  ret i32 %107
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(0) }

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
!8 = !{i64 2151785858, i64 2151786350, i64 2151785895, i64 2151785951, i64 2151785985, i64 2151786009, i64 2151786050, i64 2151786071, i64 2151786099, i64 2151786133}
!9 = !{i64 2151788010, i64 2151788503, i64 2151788047, i64 2151788103, i64 2151788137, i64 2151788161, i64 2151788202, i64 2151788223, i64 2151788251, i64 2151788285}
!10 = !{i64 2151790321, i64 2151790814, i64 2151790358, i64 2151790414, i64 2151790448, i64 2151790472, i64 2151790513, i64 2151790534, i64 2151790562, i64 2151790596}
!11 = !{i64 2151792607, i64 2151793100, i64 2151792644, i64 2151792700, i64 2151792734, i64 2151792758, i64 2151792799, i64 2151792820, i64 2151792848, i64 2151792882}
!12 = !{i64 2879911}
!13 = !{i64 2879293}
!14 = !{i64 2880131}
!15 = !{i64 2151761820, i64 2151762308, i64 2151761857, i64 2151761913, i64 2151761947, i64 2151761971, i64 2151762012, i64 2151762033, i64 2151762061, i64 2151762095}
!16 = !{i64 2879516}
!17 = !{i64 2879093}
!18 = !{i64 2879713}
!19 = !{i64 2151763184, i64 2151763672, i64 2151763221, i64 2151763277, i64 2151763311, i64 2151763335, i64 2151763376, i64 2151763397, i64 2151763425, i64 2151763459}
!20 = !{i64 2151764011}
