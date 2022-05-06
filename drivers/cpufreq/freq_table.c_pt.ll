; ModuleID = '/llk/IR/drivers/cpufreq/freq_table.c_pt.bc'
source_filename = "../drivers/cpufreq/freq_table.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_policy_has_boost_freq:\09\09\09\09\09"
module asm "\09.asciz \09\22policy_has_boost_freq\22\09\09\09\09\09"
module asm "__kstrtabns_policy_has_boost_freq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_frequency_table_verify:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_frequency_table_verify\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_frequency_table_verify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_generic_frequency_table_verify:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_generic_frequency_table_verify\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_generic_frequency_table_verify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_table_index_unsorted:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_table_index_unsorted\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_table_index_unsorted:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_frequency_table_get_index:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_frequency_table_get_index\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_frequency_table_get_index:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_freq_attr_scaling_available_freqs:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_freq_attr_scaling_available_freqs\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_freq_attr_scaling_available_freqs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_freq_attr_scaling_boost_freqs:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_freq_attr_scaling_boost_freqs\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_freq_attr_scaling_boost_freqs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_generic_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_generic_attr\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_generic_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.freq_attr = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.cpufreq_policy = type { [1 x %struct.cpumask], [1 x %struct.cpumask], [1 x %struct.cpumask], i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpumask = type { [1 x i32] }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cpufreq_frequency_table = type { i32, i32, i32 }
%struct.cpufreq_policy_data = type { %struct.cpufreq_cpuinfo, ptr, i32, i32, i32 }

@__kstrtab_policy_has_boost_freq = external dso_local constant [0 x i8], align 1
@__kstrtabns_policy_has_boost_freq = external dso_local constant [0 x i8], align 1
@__ksymtab_policy_has_boost_freq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @policy_has_boost_freq to i32), ptr @__kstrtab_policy_has_boost_freq, ptr @__kstrtabns_policy_has_boost_freq }, section "___ksymtab_gpl+policy_has_boost_freq", align 4
@__kstrtab_cpufreq_frequency_table_verify = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_frequency_table_verify = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_frequency_table_verify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_frequency_table_verify to i32), ptr @__kstrtab_cpufreq_frequency_table_verify, ptr @__kstrtabns_cpufreq_frequency_table_verify }, section "___ksymtab_gpl+cpufreq_frequency_table_verify", align 4
@__kstrtab_cpufreq_generic_frequency_table_verify = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_generic_frequency_table_verify = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_generic_frequency_table_verify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_generic_frequency_table_verify to i32), ptr @__kstrtab_cpufreq_generic_frequency_table_verify, ptr @__kstrtabns_cpufreq_generic_frequency_table_verify }, section "___ksymtab_gpl+cpufreq_generic_frequency_table_verify", align 4
@.str = private unnamed_addr constant [29 x i8] c"drivers/cpufreq/freq_table.c\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid frequency table: %d\0A\00", align 1
@__kstrtab_cpufreq_table_index_unsorted = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_table_index_unsorted = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_table_index_unsorted = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_table_index_unsorted to i32), ptr @__kstrtab_cpufreq_table_index_unsorted, ptr @__kstrtabns_cpufreq_table_index_unsorted }, section "___ksymtab_gpl+cpufreq_table_index_unsorted", align 4
@__kstrtab_cpufreq_frequency_table_get_index = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_frequency_table_get_index = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_frequency_table_get_index = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_frequency_table_get_index to i32), ptr @__kstrtab_cpufreq_frequency_table_get_index, ptr @__kstrtabns_cpufreq_frequency_table_get_index }, section "___ksymtab_gpl+cpufreq_frequency_table_get_index", align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"scaling_available_frequencies\00", align 1
@cpufreq_freq_attr_scaling_available_freqs = dso_local global %struct.freq_attr { %struct.attribute { ptr @.str.2, i16 292 }, ptr @scaling_available_frequencies_show, ptr null }, align 4
@__kstrtab_cpufreq_freq_attr_scaling_available_freqs = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_freq_attr_scaling_available_freqs = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_freq_attr_scaling_available_freqs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_freq_attr_scaling_available_freqs to i32), ptr @__kstrtab_cpufreq_freq_attr_scaling_available_freqs, ptr @__kstrtabns_cpufreq_freq_attr_scaling_available_freqs }, section "___ksymtab_gpl+cpufreq_freq_attr_scaling_available_freqs", align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"scaling_boost_frequencies\00", align 1
@cpufreq_freq_attr_scaling_boost_freqs = dso_local global %struct.freq_attr { %struct.attribute { ptr @.str.3, i16 292 }, ptr @scaling_boost_frequencies_show, ptr null }, align 4
@__kstrtab_cpufreq_freq_attr_scaling_boost_freqs = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_freq_attr_scaling_boost_freqs = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_freq_attr_scaling_boost_freqs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_freq_attr_scaling_boost_freqs to i32), ptr @__kstrtab_cpufreq_freq_attr_scaling_boost_freqs, ptr @__kstrtabns_cpufreq_freq_attr_scaling_boost_freqs }, section "___ksymtab_gpl+cpufreq_freq_attr_scaling_boost_freqs", align 4
@cpufreq_generic_attr = dso_local global [2 x ptr] [ptr @cpufreq_freq_attr_scaling_available_freqs, ptr null], align 4
@__kstrtab_cpufreq_generic_attr = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_generic_attr = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_generic_attr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_generic_attr to i32), ptr @__kstrtab_cpufreq_generic_attr, ptr @__kstrtabns_cpufreq_generic_attr }, section "___ksymtab_gpl+cpufreq_generic_attr", align 4
@__UNIQUE_ID_author174 = internal constant [53 x i8] c"freq_table.author=Dominik Brodowski <linux@brodo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description175 = internal constant [55 x i8] c"freq_table.description=CPUfreq frequency table helpers\00", section ".modinfo", align 1
@__UNIQUE_ID_file176 = internal constant [43 x i8] c"freq_table.file=drivers/cpufreq/freq_table\00", section ".modinfo", align 1
@__UNIQUE_ID_license177 = internal constant [23 x i8] c"freq_table.license=GPL\00", section ".modinfo", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"\014freq_table: Duplicate freq-table entries: %u\0A\00", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author174, ptr @__UNIQUE_ID_description175, ptr @__UNIQUE_ID_file176, ptr @__UNIQUE_ID_license177, ptr @__ksymtab_cpufreq_freq_attr_scaling_available_freqs, ptr @__ksymtab_cpufreq_freq_attr_scaling_boost_freqs, ptr @__ksymtab_cpufreq_frequency_table_get_index, ptr @__ksymtab_cpufreq_frequency_table_verify, ptr @__ksymtab_cpufreq_generic_attr, ptr @__ksymtab_cpufreq_generic_frequency_table_verify, ptr @__ksymtab_cpufreq_table_index_unsorted, ptr @__ksymtab_policy_has_boost_freq], section "llvm.metadata"
@switch.table.cpufreq_table_index_unsorted = private unnamed_addr constant [3 x i32] [i32 0, i32 -1, i32 0], align 4
@switch.table.cpufreq_table_index_unsorted.7 = private unnamed_addr constant [3 x i32] [i32 -1, i32 0, i32 -1], align 4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @policy_has_boost_freq(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %13, %1
  %6 = phi ptr [ %14, %13 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %9 [
    i32 -2, label %15
    i32 -1, label %13
  ]

9:                                                ; preds = %5
  %10 = load i32, ptr %6, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9, %5
  %14 = getelementptr %struct.cpufreq_frequency_table, ptr %6, i32 1
  br label %5

15:                                               ; preds = %9, %5, %1
  %16 = phi i1 [ false, %1 ], [ false, %5 ], [ true, %9 ]
  ret i1 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpufreq_frequency_table_cpuinfo(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  br label %3

3:                                                ; preds = %19, %2
  %4 = phi ptr [ %1, %2 ], [ %22, %19 ]
  %5 = phi i32 [ -1, %2 ], [ %20, %19 ]
  %6 = phi i32 [ 0, %2 ], [ %21, %19 ]
  %7 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %4, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %9 [
    i32 -2, label %23
    i32 -1, label %19
  ]

9:                                                ; preds = %3
  %10 = tail call i32 @cpufreq_boost_enabled() #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %9
  %17 = tail call i32 @llvm.umin.i32(i32 %8, i32 %5)
  %18 = tail call i32 @llvm.umax.i32(i32 %8, i32 %6)
  br label %19

19:                                               ; preds = %16, %12, %3
  %20 = phi i32 [ %5, %12 ], [ %5, %3 ], [ %17, %16 ]
  %21 = phi i32 [ %6, %12 ], [ %6, %3 ], [ %18, %16 ]
  %22 = getelementptr %struct.cpufreq_frequency_table, ptr %4, i32 1
  br label %3

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 6
  %25 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 6, i32 1
  store i32 %5, ptr %25, align 4
  %26 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 7
  store i32 %5, ptr %26, align 4
  %27 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 8
  store i32 %6, ptr %27, align 4
  %28 = load i32, ptr %24, align 4
  %29 = icmp ult i32 %28, %6
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 %6, ptr %24, align 4
  br label %31

31:                                               ; preds = %30, %23
  %32 = icmp eq i32 %5, -1
  %33 = select i1 %32, i32 -22, i32 0
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_boost_enabled() local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpufreq_frequency_table_verify(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.cpufreq_cpuinfo, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = load i32, ptr %0, align 4
  %6 = getelementptr inbounds %struct.cpufreq_policy_data, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, %4
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 %4, ptr %6, align 4
  br label %10

10:                                               ; preds = %9, %2
  %11 = phi i32 [ %4, %9 ], [ %7, %2 ]
  %12 = getelementptr inbounds %struct.cpufreq_policy_data, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %13, %4
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 %4, ptr %12, align 4
  br label %16

16:                                               ; preds = %15, %10
  %17 = phi i32 [ %4, %15 ], [ %13, %10 ]
  %18 = icmp ugt i32 %11, %5
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 %5, ptr %6, align 4
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi i32 [ %5, %19 ], [ %11, %16 ]
  %22 = icmp ugt i32 %17, %5
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 %5, ptr %12, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = phi i32 [ %5, %23 ], [ %17, %20 ]
  %26 = icmp ugt i32 %21, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 %25, ptr %6, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi i32 [ %21, %24 ], [ %25, %27 ]
  br label %30

30:                                               ; preds = %46, %28
  %31 = phi i32 [ %25, %28 ], [ %47, %46 ]
  %32 = phi i32 [ %29, %28 ], [ %48, %46 ]
  %33 = phi i32 [ -1, %28 ], [ %49, %46 ]
  %34 = phi ptr [ %1, %28 ], [ %50, %46 ]
  %35 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  switch i32 %36, label %37 [
    i32 -2, label %51
    i32 -1, label %46
  ]

37:                                               ; preds = %30
  %38 = icmp ult i32 %36, %29
  %39 = icmp ugt i32 %36, %31
  %40 = select i1 %38, i1 true, i1 %39
  br i1 %40, label %41, label %70

41:                                               ; preds = %37
  %42 = icmp ugt i32 %33, %36
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = icmp ugt i32 %36, %25
  %45 = select i1 %44, i32 %36, i32 %33
  br label %46

46:                                               ; preds = %43, %41, %30
  %47 = phi i32 [ %31, %41 ], [ %25, %43 ], [ %31, %30 ]
  %48 = phi i32 [ %29, %41 ], [ %29, %43 ], [ %32, %30 ]
  %49 = phi i32 [ %33, %41 ], [ %45, %43 ], [ %33, %30 ]
  %50 = getelementptr %struct.cpufreq_frequency_table, ptr %34, i32 1
  br label %30

51:                                               ; preds = %30
  store i32 %33, ptr %12, align 4
  %52 = icmp ult i32 %32, %4
  br i1 %52, label %53, label %54

53:                                               ; preds = %51
  store i32 %4, ptr %6, align 4
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i32 [ %4, %53 ], [ %32, %51 ]
  %56 = icmp ult i32 %33, %4
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 %4, ptr %12, align 4
  br label %58

58:                                               ; preds = %57, %54
  %59 = phi i32 [ %4, %57 ], [ %33, %54 ]
  %60 = icmp ugt i32 %55, %5
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 %5, ptr %6, align 4
  br label %62

62:                                               ; preds = %61, %58
  %63 = phi i32 [ %5, %61 ], [ %55, %58 ]
  %64 = icmp ugt i32 %59, %5
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 %5, ptr %12, align 4
  br label %66

66:                                               ; preds = %65, %62
  %67 = phi i32 [ %5, %65 ], [ %59, %62 ]
  %68 = icmp ugt i32 %63, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 %67, ptr %6, align 4
  br label %70

70:                                               ; preds = %69, %66, %37
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpufreq_generic_frequency_table_verify(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.cpufreq_policy_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %73, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cpufreq_cpuinfo, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr %0, align 4
  %9 = getelementptr inbounds %struct.cpufreq_policy_data, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %10, %7
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  store i32 %7, ptr %9, align 4
  br label %13

13:                                               ; preds = %12, %5
  %14 = phi i32 [ %7, %12 ], [ %10, %5 ]
  %15 = getelementptr inbounds %struct.cpufreq_policy_data, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %16, %7
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 %7, ptr %15, align 4
  br label %19

19:                                               ; preds = %18, %13
  %20 = phi i32 [ %7, %18 ], [ %16, %13 ]
  %21 = icmp ugt i32 %14, %8
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 %8, ptr %9, align 4
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi i32 [ %8, %22 ], [ %14, %19 ]
  %25 = icmp ugt i32 %20, %8
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 %8, ptr %15, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi i32 [ %8, %26 ], [ %20, %23 ]
  %29 = icmp ugt i32 %24, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 %28, ptr %9, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi i32 [ %24, %27 ], [ %28, %30 ]
  br label %33

33:                                               ; preds = %49, %31
  %34 = phi i32 [ %28, %31 ], [ %50, %49 ]
  %35 = phi i32 [ %32, %31 ], [ %51, %49 ]
  %36 = phi i32 [ -1, %31 ], [ %52, %49 ]
  %37 = phi ptr [ %3, %31 ], [ %53, %49 ]
  %38 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %37, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  switch i32 %39, label %40 [
    i32 -2, label %54
    i32 -1, label %49
  ]

40:                                               ; preds = %33
  %41 = icmp ult i32 %39, %32
  %42 = icmp ugt i32 %39, %34
  %43 = select i1 %41, i1 true, i1 %42
  br i1 %43, label %44, label %73

44:                                               ; preds = %40
  %45 = icmp ugt i32 %36, %39
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = icmp ugt i32 %39, %28
  %48 = select i1 %47, i32 %39, i32 %36
  br label %49

49:                                               ; preds = %46, %44, %33
  %50 = phi i32 [ %34, %44 ], [ %28, %46 ], [ %34, %33 ]
  %51 = phi i32 [ %32, %44 ], [ %32, %46 ], [ %35, %33 ]
  %52 = phi i32 [ %36, %44 ], [ %48, %46 ], [ %36, %33 ]
  %53 = getelementptr %struct.cpufreq_frequency_table, ptr %37, i32 1
  br label %33

54:                                               ; preds = %33
  store i32 %36, ptr %15, align 4
  %55 = icmp ult i32 %35, %7
  br i1 %55, label %56, label %57

56:                                               ; preds = %54
  store i32 %7, ptr %9, align 4
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i32 [ %7, %56 ], [ %35, %54 ]
  %59 = icmp ult i32 %36, %7
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 %7, ptr %15, align 4
  br label %61

61:                                               ; preds = %60, %57
  %62 = phi i32 [ %7, %60 ], [ %36, %57 ]
  %63 = icmp ugt i32 %58, %8
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 %8, ptr %9, align 4
  br label %65

65:                                               ; preds = %64, %61
  %66 = phi i32 [ %8, %64 ], [ %58, %61 ]
  %67 = icmp ugt i32 %62, %8
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 %8, ptr %15, align 4
  br label %69

69:                                               ; preds = %68, %65
  %70 = phi i32 [ %8, %68 ], [ %62, %65 ]
  %71 = icmp ugt i32 %66, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 %70, ptr %9, align 4
  br label %73

73:                                               ; preds = %72, %69, %40, %1
  %74 = phi i32 [ -19, %1 ], [ 0, %69 ], [ 0, %72 ], [ 0, %40 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpufreq_table_index_unsorted(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ult i32 %2, 3
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds [3 x i32], ptr @switch.table.cpufreq_table_index_unsorted, i32 0, i32 %2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds [3 x i32], ptr @switch.table.cpufreq_table_index_unsorted.7, i32 0, i32 %2
  %11 = load i32, ptr %10, align 4
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ 0, %3 ], [ %9, %7 ]
  %14 = phi i32 [ 0, %3 ], [ %11, %7 ]
  %15 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 7
  %16 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 8
  br label %17

17:                                               ; preds = %66, %12
  %18 = phi ptr [ %5, %12 ], [ %71, %66 ]
  %19 = phi i32 [ 0, %12 ], [ %72, %66 ]
  %20 = phi i32 [ -1, %12 ], [ %67, %66 ]
  %21 = phi i32 [ %13, %12 ], [ %68, %66 ]
  %22 = phi i32 [ -1, %12 ], [ %69, %66 ]
  %23 = phi i32 [ %14, %12 ], [ %70, %66 ]
  %24 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %18, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  switch i32 %25, label %26 [
    i32 -2, label %73
    i32 -1, label %66
  ]

26:                                               ; preds = %17
  %27 = load i32, ptr %15, align 4
  %28 = icmp ult i32 %25, %27
  br i1 %28, label %66, label %29

29:                                               ; preds = %26
  %30 = load i32, ptr %16, align 4
  %31 = icmp ugt i32 %25, %30
  br i1 %31, label %66, label %32

32:                                               ; preds = %29
  %33 = icmp eq i32 %25, %1
  br i1 %33, label %80, label %34

34:                                               ; preds = %32
  switch i32 %2, label %66 [
    i32 1, label %35
    i32 0, label %45
    i32 2, label %55
  ]

35:                                               ; preds = %34
  %36 = icmp ult i32 %25, %1
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  %38 = icmp ult i32 %25, %23
  %39 = select i1 %38, i32 %22, i32 %19
  %40 = tail call i32 @llvm.umax.i32(i32 %25, i32 %23)
  br label %66

41:                                               ; preds = %35
  %42 = icmp ugt i32 %25, %21
  %43 = select i1 %42, i32 %20, i32 %19
  %44 = tail call i32 @llvm.umin.i32(i32 %25, i32 %21)
  br label %66

45:                                               ; preds = %34
  %46 = icmp ugt i32 %25, %1
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  %48 = icmp ugt i32 %25, %23
  %49 = select i1 %48, i32 %22, i32 %19
  %50 = tail call i32 @llvm.umin.i32(i32 %25, i32 %23)
  br label %66

51:                                               ; preds = %45
  %52 = icmp ult i32 %25, %21
  %53 = select i1 %52, i32 %20, i32 %19
  %54 = tail call i32 @llvm.umax.i32(i32 %25, i32 %21)
  br label %66

55:                                               ; preds = %34
  %56 = sub i32 %25, %1
  %57 = tail call i32 @llvm.abs.i32(i32 %56, i1 false)
  %58 = icmp ult i32 %57, %23
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  %60 = icmp eq i32 %57, %23
  br i1 %60, label %61, label %66

61:                                               ; preds = %59
  %62 = getelementptr %struct.cpufreq_frequency_table, ptr %5, i32 %22, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = icmp ugt i32 %25, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61, %55
  br label %66

66:                                               ; preds = %65, %61, %59, %51, %47, %41, %37, %34, %29, %26, %17
  %67 = phi i32 [ %20, %26 ], [ %20, %29 ], [ %20, %34 ], [ %20, %65 ], [ %20, %61 ], [ %20, %59 ], [ %20, %17 ], [ %20, %37 ], [ %43, %41 ], [ %20, %47 ], [ %53, %51 ]
  %68 = phi i32 [ %21, %26 ], [ %21, %29 ], [ %21, %34 ], [ %21, %65 ], [ %21, %61 ], [ %21, %59 ], [ %21, %17 ], [ %21, %37 ], [ %44, %41 ], [ %21, %47 ], [ %54, %51 ]
  %69 = phi i32 [ %22, %26 ], [ %22, %29 ], [ %22, %34 ], [ %19, %65 ], [ %22, %61 ], [ %22, %59 ], [ %22, %17 ], [ %39, %37 ], [ %22, %41 ], [ %49, %47 ], [ %22, %51 ]
  %70 = phi i32 [ %23, %26 ], [ %23, %29 ], [ %23, %34 ], [ %57, %65 ], [ %23, %61 ], [ %23, %59 ], [ %23, %17 ], [ %40, %37 ], [ %23, %41 ], [ %50, %47 ], [ %23, %51 ]
  %71 = getelementptr %struct.cpufreq_frequency_table, ptr %18, i32 1
  %72 = add i32 %19, 1
  br label %17

73:                                               ; preds = %17
  %74 = icmp ugt i32 %22, %19
  br i1 %74, label %75, label %80

75:                                               ; preds = %73
  %76 = icmp ugt i32 %20, %19
  br i1 %76, label %77, label %80

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 4
  %79 = load i32, ptr %78, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 197, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %79) #8
  br label %80

80:                                               ; preds = %77, %75, %73, %32
  %81 = phi i32 [ 0, %77 ], [ %20, %75 ], [ %22, %73 ], [ %19, %32 ]
  ret i32 %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @cpufreq_frequency_table_get_index(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6, !prof !8

6:                                                ; preds = %13, %2
  %7 = phi ptr [ %14, %13 ], [ %4, %2 ]
  %8 = phi i32 [ %15, %13 ], [ 0, %2 ]
  %9 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %7, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %11 [
    i32 -2, label %16
    i32 -1, label %13
  ]

11:                                               ; preds = %6
  %12 = icmp eq i32 %10, %1
  br i1 %12, label %16, label %13

13:                                               ; preds = %11, %6
  %14 = getelementptr %struct.cpufreq_frequency_table, ptr %7, i32 1
  %15 = add i32 %8, 1
  br label %6

16:                                               ; preds = %11, %6, %2
  %17 = phi i32 [ -2, %2 ], [ -22, %6 ], [ %8, %11 ]
  ret i32 %17
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scaling_available_frequencies_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #4 {
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %19, %2
  %7 = phi i32 [ %20, %19 ], [ 0, %2 ]
  %8 = phi ptr [ %21, %19 ], [ %4, %2 ]
  %9 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %11 [
    i32 -2, label %22
    i32 -1, label %19
  ]

11:                                               ; preds = %6
  %12 = load i32, ptr %8, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %1, i32 %7
  %17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %16, ptr noundef nonnull @.str.4, i32 noundef %10) #8
  %18 = add i32 %17, %7
  br label %19

19:                                               ; preds = %15, %11, %6
  %20 = phi i32 [ %7, %11 ], [ %18, %15 ], [ %7, %6 ]
  %21 = getelementptr %struct.cpufreq_frequency_table, ptr %8, i32 1
  br label %6

22:                                               ; preds = %6
  %23 = getelementptr i8, ptr %1, i32 %7
  store i16 10, ptr %23, align 1
  %24 = add i32 %7, 1
  br label %25

25:                                               ; preds = %22, %2
  %26 = phi i32 [ %24, %22 ], [ -19, %2 ]
  ret i32 %26
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scaling_boost_frequencies_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #4 {
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %19, %2
  %7 = phi i32 [ %20, %19 ], [ 0, %2 ]
  %8 = phi ptr [ %21, %19 ], [ %4, %2 ]
  %9 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %11 [
    i32 -2, label %22
    i32 -1, label %19
  ]

11:                                               ; preds = %6
  %12 = load i32, ptr %8, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %1, i32 %7
  %17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %16, ptr noundef nonnull @.str.4, i32 noundef %10) #8
  %18 = add i32 %17, %7
  br label %19

19:                                               ; preds = %15, %11, %6
  %20 = phi i32 [ %7, %11 ], [ %18, %15 ], [ %7, %6 ]
  %21 = getelementptr %struct.cpufreq_frequency_table, ptr %8, i32 1
  br label %6

22:                                               ; preds = %6
  %23 = getelementptr i8, ptr %1, i32 %7
  store i16 10, ptr %23, align 1
  %24 = add i32 %7, 1
  br label %25

25:                                               ; preds = %22, %2
  %26 = phi i32 [ %24, %22 ], [ -19, %2 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpufreq_table_validate_and_sort(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %69, label %5

5:                                                ; preds = %21, %1
  %6 = phi ptr [ %24, %21 ], [ %3, %1 ]
  %7 = phi i32 [ %22, %21 ], [ -1, %1 ]
  %8 = phi i32 [ %23, %21 ], [ 0, %1 ]
  %9 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %6, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %11 [
    i32 -2, label %25
    i32 -1, label %21
  ]

11:                                               ; preds = %5
  %12 = tail call i32 @cpufreq_boost_enabled() #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32, ptr %6, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14, %11
  %19 = tail call i32 @llvm.umin.i32(i32 %10, i32 %7) #8
  %20 = tail call i32 @llvm.umax.i32(i32 %10, i32 %8) #8
  br label %21

21:                                               ; preds = %18, %14, %5
  %22 = phi i32 [ %7, %14 ], [ %7, %5 ], [ %19, %18 ]
  %23 = phi i32 [ %8, %14 ], [ %8, %5 ], [ %20, %18 ]
  %24 = getelementptr %struct.cpufreq_frequency_table, ptr %6, i32 1
  br label %5

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 6
  %27 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 6, i32 1
  store i32 %7, ptr %27, align 4
  %28 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 7
  store i32 %7, ptr %28, align 4
  %29 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 8
  store i32 %8, ptr %29, align 4
  %30 = load i32, ptr %26, align 4
  %31 = icmp ult i32 %30, %8
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 %8, ptr %26, align 4
  br label %33

33:                                               ; preds = %32, %25
  %34 = icmp eq i32 %7, -1
  br i1 %34, label %69, label %35

35:                                               ; preds = %33
  %36 = load ptr, ptr %2, align 4
  %37 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 21
  store i32 0, ptr %37, align 4
  br label %38

38:                                               ; preds = %62, %35
  %39 = phi i32 [ 0, %35 ], [ %63, %62 ]
  %40 = phi ptr [ null, %35 ], [ %64, %62 ]
  %41 = phi ptr [ %36, %35 ], [ %65, %62 ]
  %42 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  switch i32 %43, label %44 [
    i32 -2, label %66
    i32 -1, label %62
  ]

44:                                               ; preds = %38
  %45 = icmp eq ptr %40, null
  br i1 %45, label %62, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %40, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %43, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %43) #9
  br label %69

52:                                               ; preds = %46
  %53 = icmp ugt i32 %43, %48
  br i1 %53, label %54, label %58

54:                                               ; preds = %52
  %55 = icmp slt i32 %39, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %54
  %57 = add nuw i32 %39, 1
  br label %62

58:                                               ; preds = %52
  %59 = icmp sgt i32 %39, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %58
  %61 = add i32 %39, -1
  br label %62

62:                                               ; preds = %60, %56, %44, %38
  %63 = phi i32 [ %39, %38 ], [ %39, %44 ], [ %57, %56 ], [ %61, %60 ]
  %64 = phi ptr [ %40, %38 ], [ %41, %44 ], [ %41, %56 ], [ %41, %60 ]
  %65 = getelementptr %struct.cpufreq_frequency_table, ptr %41, i32 1
  br label %38

66:                                               ; preds = %38
  %67 = icmp slt i32 %39, 1
  %68 = select i1 %67, i32 2, i32 1
  store i32 %68, ptr %37, align 4
  br label %69

69:                                               ; preds = %66, %58, %54, %50, %33, %1
  %70 = phi i32 [ 0, %1 ], [ -22, %33 ], [ -22, %50 ], [ 0, %66 ], [ 0, %54 ], [ 0, %58 ]
  ret i32 %70
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
