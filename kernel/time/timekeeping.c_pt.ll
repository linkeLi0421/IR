; ModuleID = '/llk/IR/kernel/time/timekeeping.c_pt.bc'
source_filename = "../kernel/time/timekeeping.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_get_mono_fast_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_get_mono_fast_ns\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_get_mono_fast_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_get_raw_fast_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_get_raw_fast_ns\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_get_raw_fast_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_get_boot_fast_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_get_boot_fast_ns\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_get_boot_fast_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_get_real_fast_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_get_real_fast_ns\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_get_real_fast_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pvclock_gtod_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22pvclock_gtod_register_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_pvclock_gtod_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pvclock_gtod_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22pvclock_gtod_unregister_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_pvclock_gtod_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_get_real_ts64:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_get_real_ts64\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_get_real_ts64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_get:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_get\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_get_resolution_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_get_resolution_ns\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_get_resolution_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_get_with_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_get_with_offset\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_get_with_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_get_coarse_with_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_get_coarse_with_offset\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_get_coarse_with_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_mono_to_any:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_mono_to_any\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_mono_to_any:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_get_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_get_raw\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_get_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_get_ts64:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_get_ts64\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_get_ts64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_get_seconds:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_get_seconds\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_get_seconds:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_get_real_seconds:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_get_real_seconds\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_get_real_seconds:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_get_snapshot:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_get_snapshot\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_get_snapshot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_device_system_crosststamp:\09\09\09\09\09"
module asm "\09.asciz \09\22get_device_system_crosststamp\22\09\09\09\09\09"
module asm "__kstrtabns_get_device_system_crosststamp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_do_settimeofday64:\09\09\09\09\09"
module asm "\09.asciz \09\22do_settimeofday64\22\09\09\09\09\09"
module asm "__kstrtabns_do_settimeofday64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_get_raw_ts64:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_get_raw_ts64\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_get_raw_ts64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_getboottime64:\09\09\09\09\09"
module asm "\09.asciz \09\22getboottime64\22\09\09\09\09\09"
module asm "__kstrtabns_getboottime64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_get_coarse_real_ts64:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_get_coarse_real_ts64\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_get_coarse_real_ts64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_get_coarse_ts64:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_get_coarse_ts64\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_get_coarse_ts64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.tk_fast = type { %struct.seqcount_latch_t, [2 x %struct.tk_read_base] }
%struct.seqcount_latch_t = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.tk_read_base = type { ptr, i64, i64, i32, i32, i64, i64, i64 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.anon.65 = type { %struct.seqcount_raw_spinlock, %struct.timekeeper }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.timekeeper = type { %struct.tk_read_base, %struct.tk_read_base, i64, i32, %struct.timespec64, i64, i64, i64, i32, i32, i8, i64, i64, %struct.timespec64, i64, i64, i64, i64, i64, i64, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.timezone = type { i32, i32 }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.ktime_timestamps = type { i64, i64, i64 }
%struct.system_time_snapshot = type { i64, i64, i64, i32, i32, i8 }
%struct.system_counterval_t = type { i64, ptr }
%struct.system_device_crosststamp = type { i64, i64, i64 }
%struct.audit_ntp_data = type {}
%struct.__kernel_timex = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64, i64, %struct.__kernel_timex_timeval, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i32, [44 x i8] }
%struct.__kernel_timex_timeval = type { i64, i64 }

@timekeeper_lock = dso_local global %struct.raw_spinlock zeroinitializer, align 4
@tk_fast_mono = internal global %struct.tk_fast { %struct.seqcount_latch_t zeroinitializer, [2 x %struct.tk_read_base] [%struct.tk_read_base { ptr @dummy_clock, i64 -1, i64 0, i32 1, i32 0, i64 0, i64 0, i64 0 }, %struct.tk_read_base { ptr @dummy_clock, i64 -1, i64 0, i32 1, i32 0, i64 0, i64 0, i64 0 }] }, align 64
@__kstrtab_ktime_get_mono_fast_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_get_mono_fast_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_get_mono_fast_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_get_mono_fast_ns to i32), ptr @__kstrtab_ktime_get_mono_fast_ns, ptr @__kstrtabns_ktime_get_mono_fast_ns }, section "___ksymtab_gpl+ktime_get_mono_fast_ns", align 4
@tk_fast_raw = internal global %struct.tk_fast { %struct.seqcount_latch_t zeroinitializer, [2 x %struct.tk_read_base] [%struct.tk_read_base { ptr @dummy_clock, i64 -1, i64 0, i32 1, i32 0, i64 0, i64 0, i64 0 }, %struct.tk_read_base { ptr @dummy_clock, i64 -1, i64 0, i32 1, i32 0, i64 0, i64 0, i64 0 }] }, align 64
@__kstrtab_ktime_get_raw_fast_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_get_raw_fast_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_get_raw_fast_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_get_raw_fast_ns to i32), ptr @__kstrtab_ktime_get_raw_fast_ns, ptr @__kstrtabns_ktime_get_raw_fast_ns }, section "___ksymtab_gpl+ktime_get_raw_fast_ns", align 4
@tk_core = internal global %struct.anon.65 zeroinitializer, align 64
@__kstrtab_ktime_get_boot_fast_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_get_boot_fast_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_get_boot_fast_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_get_boot_fast_ns to i32), ptr @__kstrtab_ktime_get_boot_fast_ns, ptr @__kstrtabns_ktime_get_boot_fast_ns }, section "___ksymtab_gpl+ktime_get_boot_fast_ns", align 4
@__kstrtab_ktime_get_real_fast_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_get_real_fast_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_get_real_fast_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_get_real_fast_ns to i32), ptr @__kstrtab_ktime_get_real_fast_ns, ptr @__kstrtabns_ktime_get_real_fast_ns }, section "___ksymtab_gpl+ktime_get_real_fast_ns", align 4
@pvclock_gtod_chain = internal global %struct.raw_notifier_head zeroinitializer, align 4
@__kstrtab_pvclock_gtod_register_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_pvclock_gtod_register_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_pvclock_gtod_register_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pvclock_gtod_register_notifier to i32), ptr @__kstrtab_pvclock_gtod_register_notifier, ptr @__kstrtabns_pvclock_gtod_register_notifier }, section "___ksymtab_gpl+pvclock_gtod_register_notifier", align 4
@__kstrtab_pvclock_gtod_unregister_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_pvclock_gtod_unregister_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_pvclock_gtod_unregister_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pvclock_gtod_unregister_notifier to i32), ptr @__kstrtab_pvclock_gtod_unregister_notifier, ptr @__kstrtabns_pvclock_gtod_unregister_notifier }, section "___ksymtab_gpl+pvclock_gtod_unregister_notifier", align 4
@timekeeping_suspended = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@.str = private unnamed_addr constant [26 x i8] c"kernel/time/timekeeping.c\00", align 1
@__kstrtab_ktime_get_real_ts64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_get_real_ts64 = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_get_real_ts64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_get_real_ts64 to i32), ptr @__kstrtab_ktime_get_real_ts64, ptr @__kstrtabns_ktime_get_real_ts64 }, section "___ksymtab+ktime_get_real_ts64", align 4
@__kstrtab_ktime_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_get = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_get to i32), ptr @__kstrtab_ktime_get, ptr @__kstrtabns_ktime_get }, section "___ksymtab_gpl+ktime_get", align 4
@__kstrtab_ktime_get_resolution_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_get_resolution_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_get_resolution_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_get_resolution_ns to i32), ptr @__kstrtab_ktime_get_resolution_ns, ptr @__kstrtabns_ktime_get_resolution_ns }, section "___ksymtab_gpl+ktime_get_resolution_ns", align 4
@offsets = internal unnamed_addr constant [3 x ptr] [ptr getelementptr (i8, ptr @tk_core, i64 152), ptr getelementptr (i8, ptr @tk_core, i64 160), ptr getelementptr (i8, ptr @tk_core, i64 168)], align 4
@__kstrtab_ktime_get_with_offset = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_get_with_offset = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_get_with_offset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_get_with_offset to i32), ptr @__kstrtab_ktime_get_with_offset, ptr @__kstrtabns_ktime_get_with_offset }, section "___ksymtab_gpl+ktime_get_with_offset", align 4
@__kstrtab_ktime_get_coarse_with_offset = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_get_coarse_with_offset = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_get_coarse_with_offset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_get_coarse_with_offset to i32), ptr @__kstrtab_ktime_get_coarse_with_offset, ptr @__kstrtabns_ktime_get_coarse_with_offset }, section "___ksymtab_gpl+ktime_get_coarse_with_offset", align 4
@__kstrtab_ktime_mono_to_any = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_mono_to_any = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_mono_to_any = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_mono_to_any to i32), ptr @__kstrtab_ktime_mono_to_any, ptr @__kstrtabns_ktime_mono_to_any }, section "___ksymtab_gpl+ktime_mono_to_any", align 4
@__kstrtab_ktime_get_raw = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_get_raw = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_get_raw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_get_raw to i32), ptr @__kstrtab_ktime_get_raw, ptr @__kstrtabns_ktime_get_raw }, section "___ksymtab_gpl+ktime_get_raw", align 4
@__kstrtab_ktime_get_ts64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_get_ts64 = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_get_ts64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_get_ts64 to i32), ptr @__kstrtab_ktime_get_ts64, ptr @__kstrtabns_ktime_get_ts64 }, section "___ksymtab_gpl+ktime_get_ts64", align 4
@__kstrtab_ktime_get_seconds = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_get_seconds = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_get_seconds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_get_seconds to i32), ptr @__kstrtab_ktime_get_seconds, ptr @__kstrtabns_ktime_get_seconds }, section "___ksymtab_gpl+ktime_get_seconds", align 4
@__kstrtab_ktime_get_real_seconds = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_get_real_seconds = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_get_real_seconds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_get_real_seconds to i32), ptr @__kstrtab_ktime_get_real_seconds, ptr @__kstrtabns_ktime_get_real_seconds }, section "___ksymtab_gpl+ktime_get_real_seconds", align 4
@ktime_get_snapshot.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ktime_get_snapshot = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_get_snapshot = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_get_snapshot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_get_snapshot to i32), ptr @__kstrtab_ktime_get_snapshot, ptr @__kstrtabns_ktime_get_snapshot }, section "___ksymtab_gpl+ktime_get_snapshot", align 4
@__kstrtab_get_device_system_crosststamp = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_device_system_crosststamp = external dso_local constant [0 x i8], align 1
@__ksymtab_get_device_system_crosststamp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_device_system_crosststamp to i32), ptr @__kstrtab_get_device_system_crosststamp, ptr @__kstrtabns_get_device_system_crosststamp }, section "___ksymtab_gpl+get_device_system_crosststamp", align 4
@__kstrtab_do_settimeofday64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_do_settimeofday64 = external dso_local constant [0 x i8], align 1
@__ksymtab_do_settimeofday64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @do_settimeofday64 to i32), ptr @__kstrtab_do_settimeofday64, ptr @__kstrtabns_do_settimeofday64 }, section "___ksymtab+do_settimeofday64", align 4
@sys_tz = external dso_local local_unnamed_addr global %struct.timezone, align 4
@persistent_clock_is_local = dso_local local_unnamed_addr global i32 0, align 4
@__kstrtab_ktime_get_raw_ts64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_get_raw_ts64 = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_get_raw_ts64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_get_raw_ts64 to i32), ptr @__kstrtab_ktime_get_raw_ts64, ptr @__kstrtabns_ktime_get_raw_ts64 }, section "___ksymtab+ktime_get_raw_ts64", align 4
@persistent_clock_exists = internal unnamed_addr global i1 false, align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"\014Persistent clock returned invalid value\00", align 1
@suspend_timing_needed = internal unnamed_addr global i1 false, align 1
@timekeeping_suspend_time = internal global %struct.timespec64 zeroinitializer, align 8
@timekeeping_suspend.old_delta.0 = internal unnamed_addr global i64 0, align 8
@timekeeping_suspend.old_delta.1 = internal unnamed_addr global i64 0, align 8
@__initcall__kmod_timekeeping__229_1898_timekeeping_init_ops6 = internal global ptr @timekeeping_init_ops, section ".initcall6.init", align 4
@__kstrtab_getboottime64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_getboottime64 = external dso_local constant [0 x i8], align 1
@__ksymtab_getboottime64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @getboottime64 to i32), ptr @__kstrtab_getboottime64, ptr @__kstrtabns_getboottime64 }, section "___ksymtab_gpl+getboottime64", align 4
@__kstrtab_ktime_get_coarse_real_ts64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_get_coarse_real_ts64 = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_get_coarse_real_ts64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_get_coarse_real_ts64 to i32), ptr @__kstrtab_ktime_get_coarse_real_ts64, ptr @__kstrtabns_ktime_get_coarse_real_ts64 }, section "___ksymtab+ktime_get_coarse_real_ts64", align 4
@__kstrtab_ktime_get_coarse_ts64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_get_coarse_ts64 = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_get_coarse_ts64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_get_coarse_ts64 to i32), ptr @__kstrtab_ktime_get_coarse_ts64, ptr @__kstrtabns_ktime_get_coarse_ts64 }, section "___ksymtab+ktime_get_coarse_ts64", align 4
@jiffies_64 = external dso_local local_unnamed_addr global i64, section ".data..cacheline_aligned", align 64
@dummy_clock = internal global %struct.clocksource { ptr @dummy_clock_read, i64 0, i32 0, i32 0, i64 0, i32 0, i32 0, i64 0, ptr null, %struct.list_head zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@cycles_at_suspend = internal unnamed_addr global i64 0, align 8
@tk_set_wall_to_mono.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@shadow_timekeeper = internal global %struct.timekeeper zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [62 x i8] c"\014__timekeeping_inject_sleeptime: Invalid sleep delta value!\0A\00", align 1
@halt_fast_timekeeper.tkr_dummy = internal unnamed_addr global %struct.tk_read_base zeroinitializer, align 8
@timekeeping_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @timekeeping_suspend, ptr @timekeeping_resume, ptr null }, align 4
@timekeeping_adjust.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"\014Adjusting %s more than 11%% (%ld vs %ld)\0A\00", align 1
@timekeeping_apply_adjustment.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [24 x ptr] [ptr @__initcall__kmod_timekeeping__229_1898_timekeeping_init_ops6, ptr @__ksymtab_do_settimeofday64, ptr @__ksymtab_get_device_system_crosststamp, ptr @__ksymtab_getboottime64, ptr @__ksymtab_ktime_get, ptr @__ksymtab_ktime_get_boot_fast_ns, ptr @__ksymtab_ktime_get_coarse_real_ts64, ptr @__ksymtab_ktime_get_coarse_ts64, ptr @__ksymtab_ktime_get_coarse_with_offset, ptr @__ksymtab_ktime_get_mono_fast_ns, ptr @__ksymtab_ktime_get_raw, ptr @__ksymtab_ktime_get_raw_fast_ns, ptr @__ksymtab_ktime_get_raw_ts64, ptr @__ksymtab_ktime_get_real_fast_ns, ptr @__ksymtab_ktime_get_real_seconds, ptr @__ksymtab_ktime_get_real_ts64, ptr @__ksymtab_ktime_get_resolution_ns, ptr @__ksymtab_ktime_get_seconds, ptr @__ksymtab_ktime_get_snapshot, ptr @__ksymtab_ktime_get_ts64, ptr @__ksymtab_ktime_get_with_offset, ptr @__ksymtab_ktime_mono_to_any, ptr @__ksymtab_pvclock_gtod_register_notifier, ptr @__ksymtab_pvclock_gtod_unregister_notifier], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @ktime_get_mono_fast_ns() #0 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = load volatile i32, ptr @tk_fast_mono, align 64
  %3 = and i32 %2, 1
  %4 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %3
  %5 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %3, i32 6
  %6 = load i64, ptr %5, align 8
  %7 = load volatile ptr, ptr %4, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i64 %8(ptr noundef %7) #10
  %10 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %3, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %3, i32 1
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %3, i32 3
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %3, i32 5
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %3, i32 4
  %19 = load i32, ptr %18, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %20 = load volatile i32, ptr @tk_fast_mono, align 64
  %21 = icmp eq i32 %20, %2
  br i1 %21, label %22, label %1

22:                                               ; preds = %1
  %23 = sub i64 %9, %11
  %24 = and i64 %23, %13
  %25 = zext i32 %15 to i64
  %26 = mul i64 %24, %25
  %27 = add i64 %26, %17
  %28 = zext i32 %19 to i64
  %29 = lshr i64 %27, %28
  %30 = add i64 %29, %6
  ret i64 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @ktime_get_raw_fast_ns() #0 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = load volatile i32, ptr @tk_fast_raw, align 64
  %3 = and i32 %2, 1
  %4 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_raw, i32 0, i32 1), i32 %3
  %5 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_raw, i32 0, i32 1), i32 %3, i32 6
  %6 = load i64, ptr %5, align 8
  %7 = load volatile ptr, ptr %4, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i64 %8(ptr noundef %7) #10
  %10 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_raw, i32 0, i32 1), i32 %3, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_raw, i32 0, i32 1), i32 %3, i32 1
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_raw, i32 0, i32 1), i32 %3, i32 3
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_raw, i32 0, i32 1), i32 %3, i32 5
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_raw, i32 0, i32 1), i32 %3, i32 4
  %19 = load i32, ptr %18, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %20 = load volatile i32, ptr @tk_fast_raw, align 64
  %21 = icmp eq i32 %20, %2
  br i1 %21, label %22, label %1

22:                                               ; preds = %1
  %23 = sub i64 %9, %11
  %24 = and i64 %23, %13
  %25 = zext i32 %15 to i64
  %26 = mul i64 %24, %25
  %27 = add i64 %26, %17
  %28 = zext i32 %19 to i64
  %29 = lshr i64 %27, %28
  %30 = add i64 %29, %6
  ret i64 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @ktime_get_boot_fast_ns() #0 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = load volatile i32, ptr @tk_fast_mono, align 64
  %3 = and i32 %2, 1
  %4 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %3
  %5 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %3, i32 6
  %6 = load i64, ptr %5, align 8
  %7 = load volatile ptr, ptr %4, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i64 %8(ptr noundef %7) #10
  %10 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %3, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %3, i32 1
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %3, i32 3
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %3, i32 5
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %3, i32 4
  %19 = load i32, ptr %18, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %20 = load volatile i32, ptr @tk_fast_mono, align 64
  %21 = icmp eq i32 %20, %2
  br i1 %21, label %22, label %1

22:                                               ; preds = %1
  %23 = sub i64 %9, %11
  %24 = and i64 %23, %13
  %25 = zext i32 %15 to i64
  %26 = mul i64 %24, %25
  %27 = add i64 %26, %17
  %28 = zext i32 %19 to i64
  %29 = lshr i64 %27, %28
  %30 = add i64 %29, %6
  %31 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 6), align 32
  %32 = add i64 %30, %31
  ret i64 %32
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @ktime_get_real_fast_ns() #0 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = load volatile i32, ptr @tk_fast_mono, align 64
  %3 = and i32 %2, 1
  %4 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %3
  %5 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %3, i32 7
  %6 = load i64, ptr %5, align 8
  %7 = load volatile ptr, ptr %4, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i64 %8(ptr noundef %7) #10
  %10 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %3, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %3, i32 1
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %3, i32 3
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %3, i32 5
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %3, i32 4
  %19 = load i32, ptr %18, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %20 = load volatile i32, ptr @tk_fast_mono, align 64
  %21 = icmp eq i32 %20, %2
  br i1 %21, label %22, label %1

22:                                               ; preds = %1
  %23 = sub i64 %9, %11
  %24 = and i64 %23, %13
  %25 = zext i32 %15 to i64
  %26 = mul i64 %24, %25
  %27 = add i64 %26, %17
  %28 = zext i32 %19 to i64
  %29 = lshr i64 %27, %28
  %30 = add i64 %29, %6
  ret i64 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ktime_get_fast_timestamps(ptr noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = load volatile i32, ptr @tk_fast_mono, align 64
  %4 = and i32 %3, 1
  %5 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %4
  %6 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %4, i32 6
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %4, i32 7
  %9 = load i64, ptr %8, align 8
  %10 = load volatile ptr, ptr %5, align 8
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i64 %11(ptr noundef %10) #10
  %13 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %4, i32 2
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %4, i32 1
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %4, i32 3
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %4, i32 5
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %4, i32 4
  %22 = load i32, ptr %21, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %23 = load volatile i32, ptr @tk_fast_mono, align 64
  %24 = icmp eq i32 %23, %3
  br i1 %24, label %25, label %2

25:                                               ; preds = %2
  %26 = sub i64 %12, %14
  %27 = and i64 %26, %16
  %28 = zext i32 %18 to i64
  %29 = mul i64 %27, %28
  %30 = add i64 %29, %20
  %31 = zext i32 %22 to i64
  %32 = lshr i64 %30, %31
  %33 = icmp eq ptr %0, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i64, ptr null, align 2147483648
  br label %38

36:                                               ; preds = %25
  %37 = add i64 %32, %7
  store i64 %37, ptr %0, align 8
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i64 [ %35, %34 ], [ %37, %36 ]
  %40 = add i64 %32, %9
  %41 = getelementptr inbounds %struct.ktime_timestamps, ptr %0, i32 0, i32 2
  store i64 %40, ptr %41, align 8
  %42 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 6), align 32
  %43 = add i64 %42, %39
  %44 = getelementptr inbounds %struct.ktime_timestamps, ptr %0, i32 0, i32 1
  store i64 %43, ptr %44, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pvclock_gtod_register_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @timekeeper_lock) #10
  %3 = tail call i32 @raw_notifier_chain_register(ptr noundef nonnull @pvclock_gtod_chain, ptr noundef %0) #10
  %4 = tail call i32 @raw_notifier_call_chain(ptr noundef nonnull @pvclock_gtod_chain, i32 noundef 1, ptr noundef getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1)) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @timekeeper_lock, i32 noundef %2) #10
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pvclock_gtod_unregister_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @timekeeper_lock) #10
  %3 = tail call i32 @raw_notifier_chain_unregister(ptr noundef nonnull @pvclock_gtod_chain, ptr noundef %0) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @timekeeper_lock, i32 noundef %2) #10
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ktime_get_real_ts64(ptr nocapture noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = load i32, ptr @timekeeping_suspended, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !9

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 802, i32 noundef 9, ptr noundef null) #10
  br label %6

6:                                                ; preds = %5, %1
  br label %7

7:                                                ; preds = %15, %6
  %8 = load volatile i32, ptr @tk_core, align 64
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %11, %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !11
  %12 = load volatile i32, ptr @tk_core, align 64
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %11

15:                                               ; preds = %11, %7
  %16 = phi i32 [ %8, %7 ], [ %12, %11 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  %17 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  store i64 %17, ptr %0, align 8
  %18 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), align 8
  %19 = load ptr, ptr %18, align 8
  %20 = tail call i64 %19(ptr noundef %18) #10
  %21 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  %22 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 1), align 16
  %23 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 3), align 32
  %24 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %25 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %26 = load volatile i32, ptr @tk_core, align 64
  %27 = icmp eq i32 %26, %16
  br i1 %27, label %28, label %7

28:                                               ; preds = %15
  %29 = sub i64 %20, %21
  %30 = and i64 %29, %22
  %31 = zext i32 %23 to i64
  %32 = mul i64 %30, %31
  %33 = add i64 %32, %24
  %34 = zext i32 %25 to i64
  %35 = lshr i64 %33, %34
  %36 = getelementptr inbounds %struct.timespec64, ptr %0, i32 0, i32 1
  store i32 0, ptr %36, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  store i64 %35, ptr %2, align 8
  %37 = icmp ugt i64 %35, 999999999
  %38 = trunc i64 %35 to i32
  br i1 %37, label %39, label %48

39:                                               ; preds = %39, %28
  %40 = phi i32 [ %44, %39 ], [ 0, %28 ]
  %41 = phi i64 [ %43, %39 ], [ %35, %28 ]
  call void asm "", "=*rm,0"(ptr nonnull elementtype(i64) %2, i64 %41) #10, !srcloc !13
  %42 = load i64, ptr %2, align 8
  %43 = add i64 %42, -1000000000
  store i64 %43, ptr %2, align 8
  %44 = add i32 %40, 1
  %45 = icmp ugt i64 %43, 999999999
  br i1 %45, label %39, label %46

46:                                               ; preds = %39
  %47 = trunc i64 %43 to i32
  br label %48

48:                                               ; preds = %46, %28
  %49 = phi i32 [ %38, %28 ], [ %47, %46 ]
  %50 = phi i32 [ 0, %28 ], [ %44, %46 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  %51 = zext i32 %50 to i64
  %52 = load i64, ptr %0, align 8
  %53 = add i64 %52, %51
  store i64 %53, ptr %0, align 8
  store i32 %49, ptr %36, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @ktime_get() #0 {
  %1 = load i32, ptr @timekeeping_suspended, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3, !prof !9

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 824, i32 noundef 9, ptr noundef null) #10
  br label %4

4:                                                ; preds = %3, %0
  br label %5

5:                                                ; preds = %13, %4
  %6 = load volatile i32, ptr @tk_core, align 64
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %9, %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !15
  %10 = load volatile i32, ptr @tk_core, align 64
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %9

13:                                               ; preds = %9, %5
  %14 = phi i32 [ %6, %5 ], [ %10, %9 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %15 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 6), align 16
  %16 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), align 8
  %17 = load ptr, ptr %16, align 8
  %18 = tail call i64 %17(ptr noundef %16) #10
  %19 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  %20 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 1), align 16
  %21 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 3), align 32
  %22 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %23 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %24 = load volatile i32, ptr @tk_core, align 64
  %25 = icmp eq i32 %24, %14
  br i1 %25, label %26, label %5

26:                                               ; preds = %13
  %27 = sub i64 %18, %19
  %28 = and i64 %27, %20
  %29 = zext i32 %21 to i64
  %30 = mul i64 %28, %29
  %31 = add i64 %30, %22
  %32 = zext i32 %23 to i64
  %33 = lshr i64 %31, %32
  %34 = add i64 %33, %15
  ret i64 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ktime_get_resolution_ns() #0 {
  %1 = load i32, ptr @timekeeping_suspended, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3, !prof !9

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 843, i32 noundef 9, ptr noundef null) #10
  br label %4

4:                                                ; preds = %3, %0
  br label %5

5:                                                ; preds = %13, %4
  %6 = load volatile i32, ptr @tk_core, align 64
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %9, %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !18
  %10 = load volatile i32, ptr @tk_core, align 64
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %9

13:                                               ; preds = %9, %5
  %14 = phi i32 [ %6, %5 ], [ %10, %9 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  %15 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 3), align 32
  %16 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %17 = load volatile i32, ptr @tk_core, align 64
  %18 = icmp eq i32 %17, %14
  br i1 %18, label %19, label %5

19:                                               ; preds = %13
  %20 = lshr i32 %15, %16
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @ktime_get_with_offset(i32 noundef %0) #0 {
  %2 = getelementptr [3 x ptr], ptr @offsets, i32 0, i32 %0
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @timekeeping_suspended, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !9

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 867, i32 noundef 9, ptr noundef null) #10
  br label %7

7:                                                ; preds = %6, %1
  br label %8

8:                                                ; preds = %16, %7
  %9 = load volatile i32, ptr @tk_core, align 64
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %12, %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !21
  %13 = load volatile i32, ptr @tk_core, align 64
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %12

16:                                               ; preds = %12, %8
  %17 = phi i32 [ %9, %8 ], [ %13, %12 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !22
  %18 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 6), align 16
  %19 = load i64, ptr %3, align 8
  %20 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), align 8
  %21 = load ptr, ptr %20, align 8
  %22 = tail call i64 %21(ptr noundef %20) #10
  %23 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  %24 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 1), align 16
  %25 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 3), align 32
  %26 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %27 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %28 = load volatile i32, ptr @tk_core, align 64
  %29 = icmp eq i32 %28, %17
  br i1 %29, label %30, label %8

30:                                               ; preds = %16
  %31 = sub i64 %22, %23
  %32 = and i64 %31, %24
  %33 = zext i32 %25 to i64
  %34 = mul i64 %32, %33
  %35 = add i64 %34, %26
  %36 = zext i32 %27 to i64
  %37 = lshr i64 %35, %36
  %38 = add i64 %19, %18
  %39 = add i64 %38, %37
  ret i64 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @ktime_get_coarse_with_offset(i32 noundef %0) #0 {
  %2 = getelementptr [3 x ptr], ptr @offsets, i32 0, i32 %0
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @timekeeping_suspended, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !9

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 888, i32 noundef 9, ptr noundef null) #10
  br label %7

7:                                                ; preds = %6, %1
  br label %8

8:                                                ; preds = %16, %7
  %9 = load volatile i32, ptr @tk_core, align 64
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %12, %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !23
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !24
  %13 = load volatile i32, ptr @tk_core, align 64
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %12

16:                                               ; preds = %12, %8
  %17 = phi i32 [ %9, %8 ], [ %13, %12 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !25
  %18 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 6), align 16
  %19 = load i64, ptr %3, align 8
  %20 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %21 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %22 = load volatile i32, ptr @tk_core, align 64
  %23 = icmp eq i32 %22, %17
  br i1 %23, label %24, label %8

24:                                               ; preds = %16
  %25 = zext i32 %21 to i64
  %26 = lshr i64 %20, %25
  %27 = add i64 %19, %18
  %28 = add i64 %27, %26
  ret i64 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @ktime_mono_to_any(i64 noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr [3 x ptr], ptr @offsets, i32 0, i32 %1
  %4 = load ptr, ptr %3, align 4
  br label %5

5:                                                ; preds = %13, %2
  %6 = load volatile i32, ptr @tk_core, align 64
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %9, %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !26
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !27
  %10 = load volatile i32, ptr @tk_core, align 64
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %9

13:                                               ; preds = %9, %5
  %14 = phi i32 [ %6, %5 ], [ %10, %9 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !28
  %15 = load i64, ptr %4, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %16 = load volatile i32, ptr @tk_core, align 64
  %17 = icmp eq i32 %16, %14
  br i1 %17, label %18, label %5

18:                                               ; preds = %13
  %19 = add i64 %15, %0
  ret i64 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @ktime_get_raw() #0 {
  br label %1

1:                                                ; preds = %9, %0
  %2 = load volatile i32, ptr @tk_core, align 64
  %3 = and i32 %2, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %5, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !29
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !30
  %6 = load volatile i32, ptr @tk_core, align 64
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %5

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %2, %1 ], [ %6, %5 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !31
  %11 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 6), align 8
  %12 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1), align 64
  %13 = load ptr, ptr %12, align 8
  %14 = tail call i64 %13(ptr noundef %12) #10
  %15 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 2), align 16
  %16 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 1), align 8
  %17 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 3), align 8
  %18 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 32
  %19 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 4), align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %20 = load volatile i32, ptr @tk_core, align 64
  %21 = icmp eq i32 %20, %10
  br i1 %21, label %22, label %1

22:                                               ; preds = %9
  %23 = sub i64 %14, %15
  %24 = and i64 %23, %16
  %25 = zext i32 %17 to i64
  %26 = mul i64 %24, %25
  %27 = add i64 %26, %18
  %28 = zext i32 %19 to i64
  %29 = lshr i64 %27, %28
  %30 = add i64 %29, %11
  ret i64 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ktime_get_ts64(ptr nocapture noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = load i32, ptr @timekeeping_suspended, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !9

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 957, i32 noundef 9, ptr noundef null) #10
  br label %6

6:                                                ; preds = %5, %1
  br label %7

7:                                                ; preds = %15, %6
  %8 = load volatile i32, ptr @tk_core, align 64
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %11, %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !32
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !33
  %12 = load volatile i32, ptr @tk_core, align 64
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %11

15:                                               ; preds = %11, %7
  %16 = phi i32 [ %8, %7 ], [ %12, %11 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !34
  %17 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  store i64 %17, ptr %0, align 8
  %18 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), align 8
  %19 = load ptr, ptr %18, align 8
  %20 = tail call i64 %19(ptr noundef %18) #10
  %21 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  %22 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 1), align 16
  %23 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 3), align 32
  %24 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %25 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  %26 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 4), align 8
  %27 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 4, i32 1), align 16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %28 = load volatile i32, ptr @tk_core, align 64
  %29 = icmp eq i32 %28, %16
  br i1 %29, label %30, label %7

30:                                               ; preds = %15
  %31 = sub i64 %20, %21
  %32 = and i64 %31, %22
  %33 = zext i32 %23 to i64
  %34 = mul i64 %32, %33
  %35 = add i64 %34, %24
  %36 = zext i32 %25 to i64
  %37 = lshr i64 %35, %36
  %38 = load i64, ptr %0, align 8
  %39 = add i64 %38, %26
  store i64 %39, ptr %0, align 8
  %40 = getelementptr inbounds %struct.timespec64, ptr %0, i32 0, i32 1
  store i32 0, ptr %40, align 8
  %41 = sext i32 %27 to i64
  %42 = add i64 %37, %41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  store i64 %42, ptr %2, align 8
  %43 = icmp ugt i64 %42, 999999999
  %44 = trunc i64 %42 to i32
  br i1 %43, label %45, label %55

45:                                               ; preds = %45, %30
  %46 = phi i32 [ %50, %45 ], [ 0, %30 ]
  %47 = phi i64 [ %49, %45 ], [ %42, %30 ]
  call void asm "", "=*rm,0"(ptr nonnull elementtype(i64) %2, i64 %47) #10, !srcloc !13
  %48 = load i64, ptr %2, align 8
  %49 = add i64 %48, -1000000000
  store i64 %49, ptr %2, align 8
  %50 = add i32 %46, 1
  %51 = icmp ugt i64 %49, 999999999
  br i1 %51, label %45, label %52

52:                                               ; preds = %45
  %53 = trunc i64 %49 to i32
  %54 = load i64, ptr %0, align 8
  br label %55

55:                                               ; preds = %52, %30
  %56 = phi i64 [ %39, %30 ], [ %54, %52 ]
  %57 = phi i32 [ %44, %30 ], [ %53, %52 ]
  %58 = phi i32 [ 0, %30 ], [ %50, %52 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  %59 = zext i32 %58 to i64
  %60 = add i64 %56, %59
  store i64 %60, ptr %0, align 8
  store i32 %57, ptr %40, align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @ktime_get_seconds() #0 {
  %1 = load i32, ptr @timekeeping_suspended, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3, !prof !9

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 986, i32 noundef 9, ptr noundef null) #10
  br label %4

4:                                                ; preds = %3, %0
  %5 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 3), align 64
  %6 = zext i32 %5 to i64
  ret i64 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @ktime_get_real_seconds() #0 {
  br label %1

1:                                                ; preds = %9, %0
  %2 = load volatile i32, ptr @tk_core, align 64
  %3 = and i32 %2, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %5, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !35
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !36
  %6 = load volatile i32, ptr @tk_core, align 64
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %5

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %2, %1 ], [ %6, %5 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !37
  %11 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %12 = load volatile i32, ptr @tk_core, align 64
  %13 = icmp eq i32 %12, %10
  br i1 %13, label %14, label %1

14:                                               ; preds = %9
  ret i64 %11
}

; Function Attrs: mustprogress nofree noinline noprofile norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i64 @__ktime_get_real_seconds() local_unnamed_addr #5 section ".noinstr.text" {
  %1 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  ret i64 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ktime_get_snapshot(ptr nocapture noundef writeonly %0) #0 {
  %2 = load i32, ptr @timekeeping_suspended, align 4
  %3 = icmp ne i32 %2, 0
  %4 = load i1, ptr @ktime_get_snapshot.__already_done, align 1
  %5 = xor i1 %4, true
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %8, !prof !38

7:                                                ; preds = %1
  store i1 true, ptr @ktime_get_snapshot.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1046, i32 noundef 9, ptr noundef null) #10
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.system_time_snapshot, ptr %0, i32 0, i32 3
  %10 = getelementptr inbounds %struct.system_time_snapshot, ptr %0, i32 0, i32 5
  %11 = getelementptr inbounds %struct.system_time_snapshot, ptr %0, i32 0, i32 4
  br label %12

12:                                               ; preds = %20, %8
  %13 = load volatile i32, ptr @tk_core, align 64
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %16, %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !39
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !40
  %17 = load volatile i32, ptr @tk_core, align 64
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %16

20:                                               ; preds = %16, %12
  %21 = phi i32 [ %13, %12 ], [ %17, %16 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !41
  %22 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), align 8
  %23 = load ptr, ptr %22, align 8
  %24 = tail call i64 %23(ptr noundef %22) #10
  %25 = load ptr, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), align 8
  %26 = getelementptr inbounds %struct.clocksource, ptr %25, i32 0, i32 11
  %27 = load i32, ptr %26, align 8
  store i32 %27, ptr %9, align 8
  %28 = load i8, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 10), align 8
  store i8 %28, ptr %10, align 8
  %29 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 9), align 4
  store i32 %29, ptr %11, align 4
  %30 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 6), align 16
  %31 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 5), align 8
  %32 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 6), align 8
  %33 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  %34 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 1), align 16
  %35 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 3), align 32
  %36 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %37 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  %38 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 2), align 16
  %39 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 1), align 8
  %40 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 3), align 8
  %41 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 32
  %42 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 4), align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %43 = load volatile i32, ptr @tk_core, align 64
  %44 = icmp eq i32 %43, %21
  br i1 %44, label %45, label %12

45:                                               ; preds = %20
  %46 = sub i64 %24, %38
  %47 = and i64 %46, %39
  %48 = zext i32 %40 to i64
  %49 = mul i64 %47, %48
  %50 = add i64 %49, %41
  %51 = zext i32 %42 to i64
  %52 = lshr i64 %50, %51
  %53 = sub i64 %24, %33
  %54 = and i64 %53, %34
  %55 = zext i32 %35 to i64
  %56 = mul i64 %54, %55
  %57 = add i64 %56, %36
  %58 = zext i32 %37 to i64
  %59 = lshr i64 %57, %58
  %60 = add i64 %31, %30
  store i64 %24, ptr %0, align 8
  %61 = add i64 %60, %59
  %62 = getelementptr inbounds %struct.system_time_snapshot, ptr %0, i32 0, i32 1
  store i64 %61, ptr %62, align 8
  %63 = add i64 %52, %32
  %64 = getelementptr inbounds %struct.system_time_snapshot, ptr %0, i32 0, i32 2
  store i64 %63, ptr %64, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_device_system_crosststamp(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.system_counterval_t, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i32 16, i1 false), !annotation !42
  %8 = getelementptr inbounds %struct.system_counterval_t, ptr %7, i32 0, i32 1
  br label %9

9:                                                ; preds = %43, %4
  %10 = phi i32 [ 0, %4 ], [ %44, %43 ]
  %11 = phi i8 [ 0, %4 ], [ %46, %43 ]
  %12 = load volatile i32, ptr @tk_core, align 64
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %15, %9
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !43
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !44
  %16 = load volatile i32, ptr @tk_core, align 64
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %15

19:                                               ; preds = %15, %9
  %20 = phi i32 [ %12, %9 ], [ %16, %15 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !45
  %21 = call i32 %0(ptr noundef %3, ptr noundef nonnull %7, ptr noundef %1) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %194

23:                                               ; preds = %19
  %24 = load ptr, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), align 8
  %25 = load ptr, ptr %8, align 8
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %27, label %194

27:                                               ; preds = %23
  %28 = load i64, ptr %7, align 8
  %29 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), align 8
  %30 = load ptr, ptr %29, align 8
  %31 = call i64 %30(ptr noundef %29) #10
  %32 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  %33 = icmp ugt i64 %28, %32
  %34 = icmp ult i64 %28, %31
  %35 = and i1 %34, %33
  br i1 %35, label %42, label %36

36:                                               ; preds = %27
  %37 = icmp ult i64 %28, %32
  %38 = icmp ugt i64 %32, %31
  %39 = and i1 %37, %38
  %40 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 9), align 4
  %41 = load i8, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 10), align 8
  br i1 %39, label %42, label %43

42:                                               ; preds = %36, %27
  br label %43

43:                                               ; preds = %42, %36
  %44 = phi i32 [ %10, %42 ], [ %40, %36 ]
  %45 = phi i1 [ true, %42 ], [ false, %36 ]
  %46 = phi i8 [ %11, %42 ], [ %41, %36 ]
  %47 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 6), align 16
  %48 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 5), align 8
  %49 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 6), align 8
  %50 = load i64, ptr %7, align 8
  %51 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 1), align 16
  %52 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 3), align 32
  %53 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %54 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  %55 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 2), align 16
  %56 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 1), align 8
  %57 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 3), align 8
  %58 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 32
  %59 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 4), align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %60 = load volatile i32, ptr @tk_core, align 64
  %61 = icmp eq i32 %60, %20
  br i1 %61, label %62, label %9

62:                                               ; preds = %43
  %63 = select i1 %45, i64 %28, i64 %32
  %64 = sub i64 %50, %55
  %65 = and i64 %64, %56
  %66 = zext i32 %57 to i64
  %67 = mul i64 %65, %66
  %68 = add i64 %67, %58
  %69 = zext i32 %59 to i64
  %70 = lshr i64 %68, %69
  %71 = sub i64 %50, %32
  %72 = and i64 %71, %51
  %73 = zext i32 %52 to i64
  %74 = mul i64 %72, %73
  %75 = add i64 %74, %53
  %76 = zext i32 %54 to i64
  %77 = lshr i64 %75, %76
  %78 = add i64 %48, %47
  %79 = add i64 %78, %77
  %80 = getelementptr inbounds %struct.system_device_crosststamp, ptr %3, i32 0, i32 1
  store i64 %79, ptr %80, align 8
  %81 = add i64 %70, %49
  %82 = getelementptr inbounds %struct.system_device_crosststamp, ptr %3, i32 0, i32 2
  store i64 %81, ptr %82, align 8
  br i1 %45, label %194, label %83

83:                                               ; preds = %62
  %84 = icmp eq ptr %2, null
  br i1 %84, label %194, label %85

85:                                               ; preds = %83
  %86 = load i64, ptr %2, align 8
  %87 = load i64, ptr %7, align 8
  %88 = icmp ugt i64 %87, %86
  %89 = icmp ugt i64 %63, %87
  %90 = and i1 %88, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %85
  %92 = icmp ult i64 %87, %86
  %93 = icmp ult i64 %63, %86
  %94 = and i1 %93, %92
  br i1 %94, label %95, label %194

95:                                               ; preds = %91, %85
  %96 = getelementptr inbounds %struct.system_time_snapshot, ptr %2, i32 0, i32 5
  %97 = load i8, ptr %96, align 8
  %98 = icmp eq i8 %97, %46
  br i1 %98, label %99, label %194

99:                                               ; preds = %95
  %100 = sub i64 %63, %86
  %101 = getelementptr inbounds %struct.system_time_snapshot, ptr %2, i32 0, i32 4
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, %44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  %104 = icmp eq i64 %63, %86
  %105 = icmp eq i64 %63, %87
  %106 = or i1 %104, %105
  br i1 %106, label %191, label %107

107:                                              ; preds = %99
  %108 = sub i64 %63, %87
  %109 = lshr i64 %100, 1
  %110 = icmp ult i64 %109, %108
  %111 = sub i64 %100, %108
  %112 = select i1 %110, i64 %111, i64 %108
  %113 = getelementptr inbounds %struct.system_time_snapshot, ptr %2, i32 0, i32 2
  %114 = load i64, ptr %113, align 8
  %115 = sub i64 %81, %114
  store i64 %115, ptr %5, align 8
  %116 = call fastcc i32 @scale64_check_overflow(i64 noundef %112, i64 noundef %100, ptr noundef nonnull %5) #10
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %192

118:                                              ; preds = %107
  br i1 %103, label %166, label %119

119:                                              ; preds = %118
  %120 = load i64, ptr %5, align 8
  %121 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 3), align 32
  %122 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 3), align 8
  %123 = lshr i64 %120, 32
  %124 = and i64 %120, 4294967295
  %125 = zext i32 %121 to i64
  %126 = mul nuw i64 %124, %125
  %127 = lshr i64 %126, 32
  %128 = mul nuw i64 %123, %125
  %129 = add nuw i64 %127, %128
  %130 = icmp ult i64 %129, 4294967296
  br i1 %130, label %131, label %138, !prof !9

131:                                              ; preds = %119
  %132 = trunc i64 %129 to i32
  %133 = freeze i32 %132
  %134 = freeze i32 %122
  %135 = udiv i32 %133, %134
  %136 = mul i32 %135, %134
  %137 = sub i32 %133, %136
  br label %145

138:                                              ; preds = %119
  %139 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %122, i64 %129) #11, !srcloc !46
  %140 = extractvalue { i64, i64 } %139, 0
  %141 = extractvalue { i64, i64 } %139, 1
  %142 = lshr i64 %140, 32
  %143 = trunc i64 %142 to i32
  %144 = trunc i64 %141 to i32
  br label %145

145:                                              ; preds = %138, %131
  %146 = phi i32 [ %135, %131 ], [ %144, %138 ]
  %147 = phi i32 [ %137, %131 ], [ %143, %138 ]
  %148 = zext i32 %147 to i64
  %149 = shl nuw i64 %148, 32
  %150 = and i64 %126, 4294967295
  %151 = or i64 %149, %150
  %152 = icmp ult i64 %151, 4294967296
  br i1 %152, label %153, label %156, !prof !9

153:                                              ; preds = %145
  %154 = trunc i64 %126 to i32
  %155 = udiv i32 %154, %122
  br label %160

156:                                              ; preds = %145
  %157 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %122, i64 %151) #11, !srcloc !46
  %158 = extractvalue { i64, i64 } %157, 1
  %159 = trunc i64 %158 to i32
  br label %160

160:                                              ; preds = %156, %153
  %161 = phi i32 [ %155, %153 ], [ %159, %156 ]
  %162 = zext i32 %146 to i64
  %163 = shl nuw i64 %162, 32
  %164 = zext i32 %161 to i64
  %165 = or i64 %163, %164
  store i64 %165, ptr %6, align 8
  br label %173

166:                                              ; preds = %118
  %167 = load i64, ptr %80, align 8
  %168 = getelementptr inbounds %struct.system_time_snapshot, ptr %2, i32 0, i32 1
  %169 = load i64, ptr %168, align 8
  %170 = sub i64 %167, %169
  store i64 %170, ptr %6, align 8
  %171 = call fastcc i32 @scale64_check_overflow(i64 noundef %112, i64 noundef %100, ptr noundef nonnull %6) #10
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %192

173:                                              ; preds = %166, %160
  br i1 %110, label %174, label %182

174:                                              ; preds = %173
  %175 = load i64, ptr %113, align 8
  %176 = load i64, ptr %5, align 8
  %177 = add i64 %176, %175
  store i64 %177, ptr %82, align 8
  %178 = getelementptr inbounds %struct.system_time_snapshot, ptr %2, i32 0, i32 1
  %179 = load i64, ptr %178, align 8
  %180 = load i64, ptr %6, align 8
  %181 = add i64 %180, %179
  br label %189

182:                                              ; preds = %173
  %183 = load i64, ptr %82, align 8
  %184 = load i64, ptr %5, align 8
  %185 = sub i64 %183, %184
  store i64 %185, ptr %82, align 8
  %186 = load i64, ptr %80, align 8
  %187 = load i64, ptr %6, align 8
  %188 = sub i64 %186, %187
  br label %189

189:                                              ; preds = %182, %174
  %190 = phi i64 [ %188, %182 ], [ %181, %174 ]
  store i64 %190, ptr %80, align 8
  br label %191

191:                                              ; preds = %189, %99
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %194

192:                                              ; preds = %166, %107
  %193 = phi i32 [ %116, %107 ], [ %171, %166 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %194

194:                                              ; preds = %192, %191, %95, %91, %83, %62, %23, %19
  %195 = phi i32 [ %193, %192 ], [ 0, %191 ], [ 0, %62 ], [ -22, %95 ], [ -22, %91 ], [ -22, %83 ], [ -19, %23 ], [ %21, %19 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  ret i32 %195
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_settimeofday64(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.timespec64, align 8
  %3 = alloca %struct.timespec64, align 8
  %4 = load i64, ptr %0, align 8
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %107, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.timespec64, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = icmp ult i32 %8, 1000000000
  %10 = icmp ult i64 %4, 8277292036
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %107

12:                                               ; preds = %6
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @timekeeper_lock) #10
  %14 = load i32, ptr @tk_core, align 64
  %15 = add i32 %14, 1
  store i32 %15, ptr @tk_core, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !47
  %16 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), align 8
  %17 = load ptr, ptr %16, align 8
  %18 = tail call i64 %17(ptr noundef %16) #10
  %19 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  %20 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 1), align 16
  %21 = sub i64 %18, %19
  %22 = and i64 %21, %20
  store i64 %18, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  store i64 %18, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 2), align 16
  %23 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 3), align 32
  %24 = zext i32 %23 to i64
  %25 = mul i64 %22, %24
  %26 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %27 = add i64 %25, %26
  store i64 %27, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %28 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 3), align 8
  %29 = zext i32 %28 to i64
  %30 = mul i64 %22, %29
  %31 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 32
  %32 = add i64 %30, %31
  store i64 %32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 32
  %33 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  %34 = zext i32 %33 to i64
  %35 = shl i64 1000000000, %34
  %36 = icmp ult i64 %27, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %12
  %38 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  br label %48

39:                                               ; preds = %48
  store i64 %51, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  store i64 %52, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  br label %40

40:                                               ; preds = %39, %12
  %41 = phi i64 [ %51, %39 ], [ %27, %12 ]
  %42 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 4), align 4
  %43 = zext i32 %42 to i64
  %44 = shl i64 1000000000, %43
  %45 = icmp ult i64 %32, %44
  br i1 %45, label %61, label %46

46:                                               ; preds = %40
  %47 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 12), align 8
  br label %54

48:                                               ; preds = %48, %37
  %49 = phi i64 [ %51, %48 ], [ %27, %37 ]
  %50 = phi i64 [ %52, %48 ], [ %38, %37 ]
  %51 = sub i64 %49, %35
  %52 = add i64 %50, 1
  %53 = icmp ult i64 %51, %35
  br i1 %53, label %39, label %48

54:                                               ; preds = %54, %46
  %55 = phi i64 [ %57, %54 ], [ %32, %46 ]
  %56 = phi i64 [ %58, %54 ], [ %47, %46 ]
  %57 = sub i64 %55, %44
  %58 = add i64 %56, 1
  %59 = icmp ult i64 %57, %44
  br i1 %59, label %60, label %54

60:                                               ; preds = %54
  store i64 %57, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 32
  store i64 %58, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 12), align 8
  br label %61

61:                                               ; preds = %60, %40
  %62 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 2), align 8, !noalias !48
  %63 = lshr i64 %41, %34
  %64 = trunc i64 %63 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  %65 = load i64, ptr %0, align 8
  %66 = load i64, ptr %7, align 8
  %67 = trunc i64 %66 to i32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i32 16, i1 false) #10, !alias.scope !51, !annotation !42
  %68 = sub i64 %65, %62
  %69 = sub i32 %67, %64
  %70 = sext i32 %69 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %2, i64 noundef %68, i64 noundef %70) #10
  %71 = load i64, ptr %2, align 8
  %72 = getelementptr inbounds i8, ptr %2, i32 8
  %73 = load i64, ptr %72, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  %74 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 4), align 8
  %75 = icmp slt i64 %74, %71
  br i1 %75, label %76, label %78

76:                                               ; preds = %61
  %77 = trunc i64 %73 to i32
  br label %85

78:                                               ; preds = %61
  %79 = icmp sgt i64 %74, %71
  br i1 %79, label %103, label %80

80:                                               ; preds = %78
  %81 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 4, i32 1), align 16
  %82 = trunc i64 %73 to i32
  %83 = sub i32 %81, %82
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %103, label %85

85:                                               ; preds = %80, %76
  %86 = phi i32 [ %77, %76 ], [ %82, %80 ]
  %87 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 4, i32 1), align 16
  %88 = trunc i64 %87 to i32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #10, !alias.scope !54, !annotation !42
  %89 = sub i64 %74, %71
  %90 = sub i32 %88, %86
  %91 = sext i32 %90 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %3, i64 noundef %89, i64 noundef %91) #10
  %92 = load i64, ptr %3, align 8
  %93 = insertvalue [2 x i64] poison, i64 %92, 0
  %94 = getelementptr inbounds [2 x i64], ptr %3, i32 0, i32 1
  %95 = load i64, ptr %94, align 8
  %96 = insertvalue [2 x i64] %93, i64 %95, 1
  call fastcc void @tk_set_wall_to_mono(ptr noundef getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), [2 x i64] %96)
  %97 = load i64, ptr %0, align 8
  store i64 %97, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  %98 = load i32, ptr %7, align 8
  %99 = sext i32 %98 to i64
  %100 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  %101 = zext i32 %100 to i64
  %102 = shl i64 %99, %101
  store i64 %102, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  br label %103

103:                                              ; preds = %85, %80, %78
  %104 = phi i32 [ 0, %85 ], [ -22, %80 ], [ -22, %78 ]
  call fastcc void @timekeeping_update(ptr noundef getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), i32 noundef 7)
  call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !57
  %105 = load i32, ptr @tk_core, align 64
  %106 = add i32 %105, 1
  store i32 %106, ptr @tk_core, align 64
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @timekeeper_lock, i32 noundef %13) #10
  call void @clock_was_set(i32 noundef 170) #10
  br label %107

107:                                              ; preds = %103, %6, %1
  %108 = phi i32 [ -22, %6 ], [ %104, %103 ], [ -22, %1 ]
  ret i32 %108
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tk_set_wall_to_mono(ptr nocapture noundef %0, [2 x i64] %1) unnamed_addr #0 {
  %3 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !42
  %4 = getelementptr inbounds %struct.timekeeper, ptr %0, i32 0, i32 4
  %5 = load i64, ptr %4, align 8
  %6 = sub i64 0, %5
  %7 = getelementptr inbounds %struct.timekeeper, ptr %0, i32 0, i32 4, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = sub i32 0, %8
  %10 = sext i32 %9 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %3, i64 noundef %6, i64 noundef %10) #10
  %11 = getelementptr inbounds %struct.timekeeper, ptr %0, i32 0, i32 5
  %12 = load i64, ptr %11, align 8
  %13 = load i64, ptr %3, align 8
  %14 = getelementptr inbounds [2 x i64], ptr %3, i32 0, i32 1
  %15 = icmp sgt i64 %13, 9223372035
  br i1 %15, label %21, label %16, !prof !38

16:                                               ; preds = %2
  %17 = load i64, ptr %14, align 8
  %18 = mul i64 %13, 1000000000
  %19 = and i64 %17, 4294967295
  %20 = add i64 %19, %18
  br label %21

21:                                               ; preds = %16, %2
  %22 = phi i64 [ %20, %16 ], [ 9223372036854775807, %2 ]
  %23 = icmp ne i64 %12, %22
  %24 = load i1, ptr @tk_set_wall_to_mono.__already_done, align 1
  %25 = xor i1 %24, true
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %28, !prof !38

27:                                               ; preds = %21
  store i1 true, ptr @tk_set_wall_to_mono.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 159, i32 noundef 9, ptr noundef null) #10
  br label %28

28:                                               ; preds = %27, %21
  %29 = extractvalue [2 x i64] %1, 1
  %30 = extractvalue [2 x i64] %1, 0
  store i64 %30, ptr %4, align 8
  store i64 %29, ptr %7, align 8
  %31 = sub i64 0, %30
  %32 = trunc i64 %29 to i32
  %33 = sub i32 0, %32
  %34 = sext i32 %33 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %3, i64 noundef %31, i64 noundef %34) #10
  %35 = load i64, ptr %3, align 8
  %36 = icmp sgt i64 %35, 9223372035
  br i1 %36, label %42, label %37, !prof !38

37:                                               ; preds = %28
  %38 = load i64, ptr %14, align 8
  %39 = mul i64 %35, 1000000000
  %40 = and i64 %38, 4294967295
  %41 = add i64 %40, %39
  br label %42

42:                                               ; preds = %37, %28
  %43 = phi i64 [ %41, %37 ], [ 9223372036854775807, %28 ]
  store i64 %43, ptr %11, align 8
  %44 = getelementptr inbounds %struct.timekeeper, ptr %0, i32 0, i32 8
  %45 = load i32, ptr %44, align 8
  %46 = sext i32 %45 to i64
  %47 = mul nsw i64 %46, 1000000000
  %48 = add i64 %47, %43
  %49 = getelementptr inbounds %struct.timekeeper, ptr %0, i32 0, i32 7
  store i64 %48, ptr %49, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @timekeeping_update(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.timekeeper, ptr %0, i32 0, i32 19
  store i64 0, ptr %6, align 8
  tail call void @ntp_clear() #10
  br label %7

7:                                                ; preds = %5, %2
  %8 = tail call i64 @ntp_get_next_leap() #10
  %9 = getelementptr inbounds %struct.timekeeper, ptr %0, i32 0, i32 11
  store i64 %8, ptr %9, align 8
  %10 = icmp eq i64 %8, 9223372036854775807
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.timekeeper, ptr %0, i32 0, i32 5
  %13 = load i64, ptr %12, align 8
  %14 = sub i64 %8, %13
  store i64 %14, ptr %9, align 8
  br label %15

15:                                               ; preds = %11, %7
  %16 = getelementptr inbounds %struct.timekeeper, ptr %0, i32 0, i32 2
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds %struct.timekeeper, ptr %0, i32 0, i32 4
  %19 = load i64, ptr %18, align 8
  %20 = add i64 %19, %17
  %21 = getelementptr inbounds %struct.timekeeper, ptr %0, i32 0, i32 4, i32 1
  %22 = load i32, ptr %21, align 8
  %23 = mul i64 %20, 1000000000
  %24 = zext i32 %22 to i64
  %25 = add i64 %23, %24
  %26 = getelementptr inbounds %struct.tk_read_base, ptr %0, i32 0, i32 6
  store i64 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.tk_read_base, ptr %0, i32 0, i32 5
  %28 = load i64, ptr %27, align 8
  %29 = getelementptr inbounds %struct.tk_read_base, ptr %0, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = zext i32 %30 to i64
  %32 = lshr i64 %28, %31
  %33 = trunc i64 %32 to i32
  %34 = add i32 %22, %33
  %35 = icmp ugt i32 %34, 999999999
  %36 = trunc i64 %20 to i32
  %37 = zext i1 %35 to i32
  %38 = add i32 %37, %36
  %39 = getelementptr inbounds %struct.timekeeper, ptr %0, i32 0, i32 3
  store i32 %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.timekeeper, ptr %0, i32 0, i32 12
  %41 = load i64, ptr %40, align 8
  %42 = mul i64 %41, 1000000000
  %43 = getelementptr inbounds %struct.timekeeper, ptr %0, i32 0, i32 1, i32 6
  store i64 %42, ptr %43, align 8
  tail call void @update_vsyscall(ptr noundef %0) #10
  %44 = and i32 %1, 4
  %45 = icmp eq i32 %44, 0
  %46 = lshr exact i32 %44, 2
  %47 = tail call i32 @raw_notifier_call_chain(ptr noundef nonnull @pvclock_gtod_chain, i32 noundef %46, ptr noundef %0) #10
  %48 = load i64, ptr %26, align 8
  %49 = getelementptr inbounds %struct.timekeeper, ptr %0, i32 0, i32 5
  %50 = load i64, ptr %49, align 8
  %51 = add i64 %50, %48
  %52 = getelementptr inbounds %struct.tk_read_base, ptr %0, i32 0, i32 7
  store i64 %51, ptr %52, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !58
  %53 = load i32, ptr @tk_fast_mono, align 64
  %54 = add i32 %53, 1
  store i32 %54, ptr @tk_fast_mono, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !59
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(56) getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), ptr noundef align 8 dereferenceable(56) %0, i32 56, i1 false) #10
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !58
  %55 = load i32, ptr @tk_fast_mono, align 64
  %56 = add i32 %55, 1
  store i32 %56, ptr @tk_fast_mono, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !59
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 64 dereferenceable(56) getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1, i32 1), ptr noundef align 8 dereferenceable(56) getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 56, i1 false) #10
  %57 = getelementptr inbounds %struct.timekeeper, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !58
  %58 = load i32, ptr @tk_fast_raw, align 64
  %59 = add i32 %58, 1
  store i32 %59, ptr @tk_fast_raw, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !59
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(56) getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_raw, i32 0, i32 1), ptr noundef align 8 dereferenceable(56) %57, i32 56, i1 false) #10
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !58
  %60 = load i32, ptr @tk_fast_raw, align 64
  %61 = add i32 %60, 1
  store i32 %61, ptr @tk_fast_raw, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !59
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 64 dereferenceable(56) getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_raw, i32 0, i32 1, i32 1), ptr noundef align 8 dereferenceable(56) getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_raw, i32 0, i32 1), i32 56, i1 false) #10
  br i1 %45, label %66, label %62

62:                                               ; preds = %15
  %63 = getelementptr inbounds %struct.timekeeper, ptr %0, i32 0, i32 9
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %63, align 4
  br label %66

66:                                               ; preds = %62, %15
  %67 = and i32 %1, 2
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(280) @shadow_timekeeper, ptr noundef align 8 dereferenceable(280) getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), i32 280, i1 false)
  br label %70

70:                                               ; preds = %69, %66
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clock_was_set(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @timekeeping_warp_clock() local_unnamed_addr #0 {
  %1 = alloca %struct.timespec64, align 8
  %2 = load i32, ptr @sys_tz, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #10
  %5 = getelementptr inbounds i8, ptr %1, i32 8
  store i64 0, ptr %5, align 8, !annotation !42
  store i32 1, ptr @persistent_clock_is_local, align 4
  %6 = mul i32 %2, 60
  %7 = sext i32 %6 to i64
  store i64 %7, ptr %1, align 8
  %8 = call fastcc i32 @timekeeping_inject_offset(ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #10
  br label %9

9:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @timekeeping_inject_offset(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.timespec64, align 8
  %3 = alloca %struct.timespec64, align 8
  %4 = getelementptr inbounds %struct.timespec64, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = icmp ugt i32 %5, 999999999
  br i1 %6, label %139, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @timekeeper_lock) #10
  %9 = load i32, ptr @tk_core, align 64
  %10 = add i32 %9, 1
  store i32 %10, ptr @tk_core, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !47
  %11 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), align 8
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i64 %12(ptr noundef %11) #10
  %14 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  %15 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 1), align 16
  %16 = sub i64 %13, %14
  %17 = and i64 %16, %15
  store i64 %13, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  store i64 %13, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 2), align 16
  %18 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 3), align 32
  %19 = zext i32 %18 to i64
  %20 = mul i64 %17, %19
  %21 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %22 = add i64 %20, %21
  store i64 %22, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %23 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 3), align 8
  %24 = zext i32 %23 to i64
  %25 = mul i64 %17, %24
  %26 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 32
  %27 = add i64 %25, %26
  store i64 %27, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 32
  %28 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  %29 = zext i32 %28 to i64
  %30 = shl i64 1000000000, %29
  %31 = icmp ult i64 %22, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %7
  %33 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  br label %43

34:                                               ; preds = %43
  store i64 %46, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  store i64 %47, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  br label %35

35:                                               ; preds = %34, %7
  %36 = phi i64 [ %46, %34 ], [ %22, %7 ]
  %37 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 4), align 4
  %38 = zext i32 %37 to i64
  %39 = shl i64 1000000000, %38
  %40 = icmp ult i64 %27, %39
  br i1 %40, label %56, label %41

41:                                               ; preds = %35
  %42 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 12), align 8
  br label %49

43:                                               ; preds = %43, %32
  %44 = phi i64 [ %46, %43 ], [ %22, %32 ]
  %45 = phi i64 [ %47, %43 ], [ %33, %32 ]
  %46 = sub i64 %44, %30
  %47 = add i64 %45, 1
  %48 = icmp ult i64 %46, %30
  br i1 %48, label %34, label %43

49:                                               ; preds = %49, %41
  %50 = phi i64 [ %52, %49 ], [ %27, %41 ]
  %51 = phi i64 [ %53, %49 ], [ %42, %41 ]
  %52 = sub i64 %50, %39
  %53 = add i64 %51, 1
  %54 = icmp ult i64 %52, %39
  br i1 %54, label %55, label %49

55:                                               ; preds = %49
  store i64 %52, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 32
  store i64 %53, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 12), align 8
  br label %56

56:                                               ; preds = %55, %35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  %57 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 2), align 8, !noalias !60
  %58 = lshr i64 %36, %29
  %59 = trunc i64 %58 to i32
  %60 = load i64, ptr %0, align 8
  %61 = load i64, ptr %4, align 8
  %62 = trunc i64 %61 to i32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i32 16, i1 false) #10, !alias.scope !63, !annotation !42
  %63 = add i64 %60, %57
  %64 = add i32 %62, %59
  %65 = sext i32 %64 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %2, i64 noundef %63, i64 noundef %65) #10
  %66 = load i64, ptr %2, align 8
  %67 = getelementptr inbounds i8, ptr %2, i32 8
  %68 = load i32, ptr %67, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  %69 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 4), align 8
  %70 = load i64, ptr %0, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %81, label %72

72:                                               ; preds = %56
  %73 = icmp sgt i64 %69, %70
  br i1 %73, label %135, label %74

74:                                               ; preds = %72
  %75 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 4, i32 1), align 16
  %76 = load i32, ptr %4, align 8
  %77 = sub i32 %75, %76
  %78 = icmp sgt i32 %77, 0
  %79 = icmp slt i64 %66, 0
  %80 = select i1 %78, i1 true, i1 %79
  br i1 %80, label %135, label %83

81:                                               ; preds = %56
  %82 = icmp slt i64 %66, 0
  br i1 %82, label %135, label %83

83:                                               ; preds = %81, %74
  %84 = icmp ult i32 %68, 1000000000
  %85 = icmp ult i64 %66, 8277292036
  %86 = select i1 %84, i1 %85, i1 false
  br i1 %86, label %87, label %135

87:                                               ; preds = %83
  %88 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  %89 = add i64 %88, %70
  store i64 %89, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  %90 = load i32, ptr %4, align 8
  %91 = sext i32 %90 to i64
  %92 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  %93 = zext i32 %92 to i64
  %94 = shl i64 %91, %93
  %95 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %96 = add i64 %94, %95
  store i64 %96, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %97 = shl i64 1000000000, %93
  %98 = icmp ult i64 %96, %97
  br i1 %98, label %100, label %108

99:                                               ; preds = %108
  store i64 %111, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  store i64 %112, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  br label %100

100:                                              ; preds = %99, %87
  %101 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 4), align 4
  %102 = zext i32 %101 to i64
  %103 = shl i64 1000000000, %102
  %104 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 32
  %105 = icmp ult i64 %104, %103
  br i1 %105, label %121, label %106

106:                                              ; preds = %100
  %107 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 12), align 8
  br label %114

108:                                              ; preds = %108, %87
  %109 = phi i64 [ %111, %108 ], [ %96, %87 ]
  %110 = phi i64 [ %112, %108 ], [ %89, %87 ]
  %111 = sub i64 %109, %97
  %112 = add i64 %110, 1
  %113 = icmp ult i64 %111, %97
  br i1 %113, label %99, label %108

114:                                              ; preds = %114, %106
  %115 = phi i64 [ %117, %114 ], [ %104, %106 ]
  %116 = phi i64 [ %118, %114 ], [ %107, %106 ]
  %117 = sub i64 %115, %103
  %118 = add i64 %116, 1
  %119 = icmp ult i64 %117, %103
  br i1 %119, label %120, label %114

120:                                              ; preds = %114
  store i64 %117, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 32
  store i64 %118, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 12), align 8
  br label %121

121:                                              ; preds = %120, %100
  %122 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 4, i32 1), align 16
  %123 = load i64, ptr %0, align 8
  %124 = load i64, ptr %4, align 8
  %125 = trunc i64 %122 to i32
  %126 = trunc i64 %124 to i32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #10, !alias.scope !66, !annotation !42
  %127 = sub i64 %69, %123
  %128 = sub i32 %125, %126
  %129 = sext i32 %128 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %3, i64 noundef %127, i64 noundef %129) #10
  %130 = load i64, ptr %3, align 8
  %131 = insertvalue [2 x i64] poison, i64 %130, 0
  %132 = getelementptr inbounds [2 x i64], ptr %3, i32 0, i32 1
  %133 = load i64, ptr %132, align 8
  %134 = insertvalue [2 x i64] %131, i64 %133, 1
  call fastcc void @tk_set_wall_to_mono(ptr noundef getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), [2 x i64] %134)
  br label %135

135:                                              ; preds = %121, %83, %81, %74, %72
  %136 = phi i32 [ 0, %121 ], [ -22, %83 ], [ -22, %74 ], [ -22, %72 ], [ -22, %81 ]
  call fastcc void @timekeeping_update(ptr noundef getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), i32 noundef 7)
  call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !57
  %137 = load i32, ptr @tk_core, align 64
  %138 = add i32 %137, 1
  store i32 %138, ptr @tk_core, align 64
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @timekeeper_lock, i32 noundef %8) #10
  call void @clock_was_set(i32 noundef 170) #10
  br label %139

139:                                              ; preds = %135, %1
  %140 = phi i32 [ %136, %135 ], [ -22, %1 ]
  ret i32 %140
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @timekeeping_notify(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), align 8
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @stop_machine(ptr noundef nonnull @change_clocksource, ptr noundef %0, ptr noundef null) #10
  tail call void @tick_clock_notify() #10
  %6 = load ptr, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), align 8
  %7 = icmp ne ptr %6, %0
  %8 = sext i1 %7 to i32
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i32 [ %8, %4 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stop_machine(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @change_clocksource(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 20
  %3 = load ptr, ptr %2, align 4
  %4 = tail call zeroext i1 @try_module_get(ptr noundef %3) #10
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = tail call i32 %7(ptr noundef %0) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %2, align 4
  tail call void @module_put(ptr noundef %13) #10
  br label %14

14:                                               ; preds = %12, %9, %5, %1
  %15 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], [ true, %5 ]
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @timekeeper_lock) #10
  %17 = load i32, ptr @tk_core, align 64
  %18 = add i32 %17, 1
  store i32 %18, ptr @tk_core, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !47
  %19 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), align 8
  %20 = load ptr, ptr %19, align 8
  %21 = tail call i64 %20(ptr noundef %19) #10
  %22 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  %23 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 1), align 16
  %24 = sub i64 %21, %22
  %25 = and i64 %24, %23
  store i64 %21, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  store i64 %21, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 2), align 16
  %26 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 3), align 32
  %27 = zext i32 %26 to i64
  %28 = mul i64 %25, %27
  %29 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %30 = add i64 %28, %29
  store i64 %30, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %31 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 3), align 8
  %32 = zext i32 %31 to i64
  %33 = mul i64 %25, %32
  %34 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 32
  %35 = add i64 %33, %34
  store i64 %35, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 32
  %36 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  %37 = zext i32 %36 to i64
  %38 = shl i64 1000000000, %37
  %39 = icmp ult i64 %30, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %14
  %41 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  br label %50

42:                                               ; preds = %50
  store i64 %53, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  store i64 %54, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  br label %43

43:                                               ; preds = %42, %14
  %44 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 4), align 4
  %45 = zext i32 %44 to i64
  %46 = shl i64 1000000000, %45
  %47 = icmp ult i64 %35, %46
  br i1 %47, label %63, label %48

48:                                               ; preds = %43
  %49 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 12), align 8
  br label %56

50:                                               ; preds = %50, %40
  %51 = phi i64 [ %53, %50 ], [ %30, %40 ]
  %52 = phi i64 [ %54, %50 ], [ %41, %40 ]
  %53 = sub i64 %51, %38
  %54 = add i64 %52, 1
  %55 = icmp ult i64 %53, %38
  br i1 %55, label %42, label %50

56:                                               ; preds = %56, %48
  %57 = phi i64 [ %59, %56 ], [ %35, %48 ]
  %58 = phi i64 [ %60, %56 ], [ %49, %48 ]
  %59 = sub i64 %57, %46
  %60 = add i64 %58, 1
  %61 = icmp ult i64 %59, %46
  br i1 %61, label %62, label %56

62:                                               ; preds = %56
  store i64 %59, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 32
  store i64 %60, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 12), align 8
  br label %63

63:                                               ; preds = %62, %43
  br i1 %15, label %64, label %66

64:                                               ; preds = %63
  %65 = load ptr, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), align 8
  tail call fastcc void @tk_setup_internals(ptr noundef %0)
  br label %66

66:                                               ; preds = %64, %63
  %67 = phi ptr [ %65, %64 ], [ null, %63 ]
  tail call fastcc void @timekeeping_update(ptr noundef getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), i32 noundef 7)
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !57
  %68 = load i32, ptr @tk_core, align 64
  %69 = add i32 %68, 1
  store i32 %69, ptr @tk_core, align 64
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @timekeeper_lock, i32 noundef %16) #10
  %70 = icmp eq ptr %67, null
  br i1 %70, label %79, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.clocksource, ptr %67, i32 0, i32 15
  %73 = load ptr, ptr %72, align 8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  tail call void %73(ptr noundef nonnull %67) #10
  br label %76

76:                                               ; preds = %75, %71
  %77 = getelementptr inbounds %struct.clocksource, ptr %67, i32 0, i32 20
  %78 = load ptr, ptr %77, align 4
  tail call void @module_put(ptr noundef %78) #10
  br label %79

79:                                               ; preds = %76, %66
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_clock_notify() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ktime_get_raw_ts64(ptr nocapture noundef %0) #0 {
  %2 = alloca i64, align 8
  br label %3

3:                                                ; preds = %11, %1
  %4 = load volatile i32, ptr @tk_core, align 64
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %7, %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !69
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !70
  %8 = load volatile i32, ptr @tk_core, align 64
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %7

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %4, %3 ], [ %8, %7 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !71
  %13 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 12), align 8
  store i64 %13, ptr %0, align 8
  %14 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1), align 64
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i64 %15(ptr noundef %14) #10
  %17 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 2), align 16
  %18 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 1), align 8
  %19 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 3), align 8
  %20 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 32
  %21 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 4), align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %22 = load volatile i32, ptr @tk_core, align 64
  %23 = icmp eq i32 %22, %12
  br i1 %23, label %24, label %3

24:                                               ; preds = %11
  %25 = sub i64 %16, %17
  %26 = and i64 %25, %18
  %27 = zext i32 %19 to i64
  %28 = mul i64 %26, %27
  %29 = add i64 %28, %20
  %30 = zext i32 %21 to i64
  %31 = lshr i64 %29, %30
  %32 = getelementptr inbounds %struct.timespec64, ptr %0, i32 0, i32 1
  store i32 0, ptr %32, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  store i64 %31, ptr %2, align 8
  %33 = icmp ugt i64 %31, 999999999
  %34 = trunc i64 %31 to i32
  br i1 %33, label %35, label %44

35:                                               ; preds = %35, %24
  %36 = phi i32 [ %40, %35 ], [ 0, %24 ]
  %37 = phi i64 [ %39, %35 ], [ %31, %24 ]
  call void asm "", "=*rm,0"(ptr nonnull elementtype(i64) %2, i64 %37) #10, !srcloc !13
  %38 = load i64, ptr %2, align 8
  %39 = add i64 %38, -1000000000
  store i64 %39, ptr %2, align 8
  %40 = add i32 %36, 1
  %41 = icmp ugt i64 %39, 999999999
  br i1 %41, label %35, label %42

42:                                               ; preds = %35
  %43 = trunc i64 %39 to i32
  br label %44

44:                                               ; preds = %42, %24
  %45 = phi i32 [ %34, %24 ], [ %43, %42 ]
  %46 = phi i32 [ 0, %24 ], [ %40, %42 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  %47 = zext i32 %46 to i64
  %48 = load i64, ptr %0, align 8
  %49 = add i64 %48, %47
  store i64 %49, ptr %0, align 8
  store i32 %45, ptr %32, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @timekeeping_valid_for_hres() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %9, %0
  %2 = load volatile i32, ptr @tk_core, align 64
  %3 = and i32 %2, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %5, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !72
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !73
  %6 = load volatile i32, ptr @tk_core, align 64
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %5

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %2, %1 ], [ %6, %5 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !74
  %11 = load ptr, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), align 8
  %12 = getelementptr inbounds %struct.clocksource, ptr %11, i32 0, i32 13
  %13 = load i32, ptr %12, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %14 = load volatile i32, ptr @tk_core, align 64
  %15 = icmp eq i32 %14, %10
  br i1 %15, label %16, label %1

16:                                               ; preds = %9
  %17 = and i32 %13, 32
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @timekeeping_max_deferment() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %9, %0
  %2 = load volatile i32, ptr @tk_core, align 64
  %3 = and i32 %2, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %5, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !75
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !76
  %6 = load volatile i32, ptr @tk_core, align 64
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %5

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %2, %1 ], [ %6, %5 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !77
  %11 = load ptr, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), align 8
  %12 = getelementptr inbounds %struct.clocksource, ptr %11, i32 0, i32 4
  %13 = load i64, ptr %12, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %14 = load volatile i32, ptr @tk_core, align 64
  %15 = icmp eq i32 %14, %10
  br i1 %15, label %16, label %1

16:                                               ; preds = %9
  ret i64 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @read_persistent_clock64(ptr noundef %0) local_unnamed_addr #0 {
  store i64 0, ptr %0, align 8
  %2 = getelementptr inbounds %struct.timespec64, ptr %0, i32 0, i32 1
  store i32 0, ptr %2, align 8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define weak dso_local void @read_persistent_wall_and_boot_offset(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 section ".init.text" {
  %3 = alloca %struct.timespec64, align 8
  tail call void @read_persistent_clock64(ptr noundef %0)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %4 = tail call i64 @sched_clock() #10
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %3, i64 noundef %4) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @timekeeping_init() local_unnamed_addr #6 section ".init.text" {
  %1 = alloca %struct.timespec64, align 8
  %2 = alloca %struct.timespec64, align 8
  %3 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i32 16, i1 false), !annotation !42
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !42
  call void @read_persistent_wall_and_boot_offset(ptr noundef nonnull %1, ptr noundef nonnull %2) #12
  %4 = load i64, ptr %1, align 8
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.timespec64, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = icmp ult i32 %8, 1000000000
  %10 = icmp ult i64 %4, 8277292036
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = mul nuw nsw i64 %4, 1000000000
  %14 = zext i32 %8 to i64
  %15 = sub nsw i64 0, %14
  %16 = icmp eq i64 %13, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  store i1 true, ptr @persistent_clock_exists, align 1
  br label %34

18:                                               ; preds = %6
  %19 = icmp ugt i64 %4, 9223372035
  br i1 %19, label %31, label %25

20:                                               ; preds = %0
  %21 = icmp ult i64 %4, -9223372035
  br i1 %21, label %31, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.timespec64, ptr %1, i32 0, i32 1
  %24 = load i32, ptr %23, align 8
  br label %25

25:                                               ; preds = %22, %18, %12
  %26 = phi i32 [ %24, %22 ], [ %8, %18 ], [ %8, %12 ]
  %27 = mul nsw i64 %4, 1000000000
  %28 = sext i32 %26 to i64
  %29 = sub nsw i64 0, %28
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %25, %20, %18
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #13
  store i64 0, ptr %1, align 8
  %33 = getelementptr inbounds i8, ptr %1, i32 8
  store i32 0, ptr %33, align 8
  br label %34

34:                                               ; preds = %31, %25, %17
  %35 = phi i32 [ %26, %25 ], [ 0, %31 ], [ %8, %17 ]
  %36 = phi i64 [ %4, %25 ], [ 0, %31 ], [ %4, %17 ]
  %37 = load i64, ptr %2, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %46, label %39

39:                                               ; preds = %34
  %40 = icmp sgt i64 %36, %37
  br i1 %40, label %48, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.timespec64, ptr %2, i32 0, i32 1
  %43 = load i32, ptr %42, align 8
  %44 = sub i32 %35, %43
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41, %34
  store i64 0, ptr %2, align 8
  %47 = getelementptr inbounds i8, ptr %2, i32 8
  store i32 0, ptr %47, align 8
  br label %48

48:                                               ; preds = %46, %41, %39
  %49 = phi i64 [ %37, %39 ], [ 0, %46 ], [ %37, %41 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %50 = getelementptr inbounds [2 x i64], ptr %2, i32 0, i32 1
  %51 = load i64, ptr %50, align 8
  %52 = getelementptr inbounds [2 x i64], ptr %1, i32 0, i32 1
  %53 = load i64, ptr %52, align 8
  %54 = trunc i64 %51 to i32
  %55 = trunc i64 %53 to i32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #10, !alias.scope !78, !annotation !42
  %56 = sub i64 %49, %36
  %57 = sub i32 %54, %55
  %58 = sext i32 %57 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %3, i64 noundef %56, i64 noundef %58) #10
  %59 = load i64, ptr %3, align 8
  %60 = getelementptr inbounds i8, ptr %3, i32 8
  %61 = load i64, ptr %60, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  %62 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @timekeeper_lock) #10
  %63 = load i32, ptr @tk_core, align 64
  %64 = add i32 %63, 1
  store i32 %64, ptr @tk_core, align 64
  call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !47
  call void @ntp_init() #10
  %65 = call ptr @clocksource_default_clock() #13
  %66 = getelementptr inbounds %struct.clocksource, ptr %65, i32 0, i32 14
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %48
  %70 = call i32 %67(ptr noundef %65) #10
  br label %71

71:                                               ; preds = %69, %48
  call fastcc void @tk_setup_internals(ptr noundef %65)
  %72 = load i64, ptr %1, align 8
  store i64 %72, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  %73 = load i32, ptr %52, align 8
  %74 = sext i32 %73 to i64
  %75 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  %76 = zext i32 %75 to i64
  %77 = shl i64 %74, %76
  store i64 %77, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  store i64 0, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 12), align 8
  %78 = insertvalue [2 x i64] poison, i64 %59, 0
  %79 = insertvalue [2 x i64] %78, i64 %61, 1
  call fastcc void @tk_set_wall_to_mono(ptr noundef getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), [2 x i64] %79)
  call fastcc void @timekeeping_update(ptr noundef getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), i32 noundef 6)
  call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !57
  %80 = load i32, ptr @tk_core, align 64
  %81 = add i32 %80, 1
  store i32 %81, ptr @tk_core, align 64
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @timekeeper_lock, i32 noundef %62) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntp_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @clocksource_default_clock() local_unnamed_addr #7 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tk_setup_internals(ptr noundef %0) unnamed_addr #0 {
  %2 = load i8, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 10), align 8
  %3 = add i8 %2, 1
  store i8 %3, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 10), align 8
  %4 = load ptr, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), align 8
  store ptr %0, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), align 8
  %5 = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 8
  store i64 %6, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 1), align 16
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), align 8
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i64 %8(ptr noundef %7) #10
  store i64 %9, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  store ptr %0, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1), align 64
  %10 = load i64, ptr %5, align 8
  store i64 %10, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 1), align 8
  store i64 %9, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 2), align 16
  %11 = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = zext i32 %12 to i64
  %14 = shl i64 10000000, %13
  %15 = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = add i64 %14, %18
  %20 = icmp ult i64 %19, 4294967296
  br i1 %20, label %21, label %25, !prof !9

21:                                               ; preds = %1
  %22 = trunc i64 %19 to i32
  %23 = udiv i32 %22, %16
  %24 = zext i32 %23 to i64
  br label %28

25:                                               ; preds = %1
  %26 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %16, i64 %19) #11, !srcloc !46
  %27 = extractvalue { i64, i64 } %26, 1
  br label %28

28:                                               ; preds = %25, %21
  %29 = phi i64 [ %24, %21 ], [ %27, %25 ]
  %30 = icmp eq i64 %29, 0
  %31 = select i1 %30, i64 1, i64 %29
  store i64 %31, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 14), align 32
  %32 = load i32, ptr %15, align 8
  %33 = zext i32 %32 to i64
  %34 = mul i64 %31, %33
  store i64 %34, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 15), align 8
  %35 = sub i64 %14, %34
  store i64 %35, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 16), align 16
  %36 = load i32, ptr %15, align 8
  %37 = zext i32 %36 to i64
  %38 = mul i64 %31, %37
  store i64 %38, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 17), align 8
  %39 = icmp eq ptr %4, null
  br i1 %39, label %61, label %40

40:                                               ; preds = %28
  %41 = load i32, ptr %11, align 4
  %42 = getelementptr inbounds %struct.clocksource, ptr %4, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = sub i32 %41, %43
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = sub i32 0, %44
  %48 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %49 = zext i32 %47 to i64
  %50 = lshr i64 %48, %49
  store i64 %50, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %51 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 32
  %52 = lshr i64 %51, %49
  br label %59

53:                                               ; preds = %40
  %54 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %55 = zext i32 %44 to i64
  %56 = shl i64 %54, %55
  store i64 %56, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %57 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 32
  %58 = shl i64 %57, %55
  br label %59

59:                                               ; preds = %53, %46
  %60 = phi i64 [ %52, %46 ], [ %58, %53 ]
  store i64 %60, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 32
  br label %61

61:                                               ; preds = %59, %28
  %62 = load i32, ptr %11, align 4
  store i32 %62, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  %63 = load i32, ptr %11, align 4
  store i32 %63, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 4), align 4
  store i64 0, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 19), align 8
  %64 = load i32, ptr %11, align 4
  %65 = sub i32 32, %64
  store i32 %65, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 20), align 16
  %66 = zext i32 %65 to i64
  %67 = shl i64 %14, %66
  store i64 %67, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 18), align 64
  %68 = load i32, ptr %15, align 8
  store i32 %68, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 3), align 32
  %69 = load i32, ptr %15, align 8
  store i32 %69, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 3), align 8
  store i32 0, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 21), align 4
  store i32 0, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 22), align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @timekeeping_rtc_skipresume() local_unnamed_addr #8 {
  %1 = load i1, ptr @suspend_timing_needed, align 1
  %2 = xor i1 %1, true
  ret i1 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @timekeeping_rtc_skipsuspend() local_unnamed_addr #8 {
  %1 = load i1, ptr @persistent_clock_exists, align 1
  ret i1 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @timekeeping_inject_sleeptime64(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @timekeeper_lock) #10
  %3 = load i32, ptr @tk_core, align 64
  %4 = add i32 %3, 1
  store i32 %4, ptr @tk_core, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !47
  store i1 false, ptr @suspend_timing_needed, align 1
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), align 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i64 %6(ptr noundef %5) #10
  %8 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  %9 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 1), align 16
  %10 = sub i64 %7, %8
  %11 = and i64 %10, %9
  store i64 %7, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  store i64 %7, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 2), align 16
  %12 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 3), align 32
  %13 = zext i32 %12 to i64
  %14 = mul i64 %11, %13
  %15 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %16 = add i64 %14, %15
  store i64 %16, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %17 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 3), align 8
  %18 = zext i32 %17 to i64
  %19 = mul i64 %11, %18
  %20 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 32
  %21 = add i64 %19, %20
  store i64 %21, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 32
  %22 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  %23 = zext i32 %22 to i64
  %24 = shl i64 1000000000, %23
  %25 = icmp ult i64 %16, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  br label %36

28:                                               ; preds = %36
  store i64 %39, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  store i64 %40, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  br label %29

29:                                               ; preds = %28, %1
  %30 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 4), align 4
  %31 = zext i32 %30 to i64
  %32 = shl i64 1000000000, %31
  %33 = icmp ult i64 %21, %32
  br i1 %33, label %49, label %34

34:                                               ; preds = %29
  %35 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 12), align 8
  br label %42

36:                                               ; preds = %36, %26
  %37 = phi i64 [ %39, %36 ], [ %16, %26 ]
  %38 = phi i64 [ %40, %36 ], [ %27, %26 ]
  %39 = sub i64 %37, %24
  %40 = add i64 %38, 1
  %41 = icmp ult i64 %39, %24
  br i1 %41, label %28, label %36

42:                                               ; preds = %42, %34
  %43 = phi i64 [ %45, %42 ], [ %21, %34 ]
  %44 = phi i64 [ %46, %42 ], [ %35, %34 ]
  %45 = sub i64 %43, %32
  %46 = add i64 %44, 1
  %47 = icmp ult i64 %45, %32
  br i1 %47, label %48, label %42

48:                                               ; preds = %42
  store i64 %45, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 32
  store i64 %46, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 12), align 8
  br label %49

49:                                               ; preds = %48, %29
  tail call fastcc void @__timekeeping_inject_sleeptime(ptr noundef %0)
  tail call fastcc void @timekeeping_update(ptr noundef getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), i32 noundef 7)
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !57
  %50 = load i32, ptr @tk_core, align 64
  %51 = add i32 %50, 1
  store i32 %51, ptr @tk_core, align 64
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @timekeeper_lock, i32 noundef %2) #10
  tail call void @clock_was_set(i32 noundef 238) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__timekeeping_inject_sleeptime(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.timespec64, align 8
  %3 = alloca %struct.timespec64, align 8
  %4 = load i64, ptr %0, align 8
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.timespec64, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = icmp ult i32 %8, 1000000000
  %10 = icmp ult i64 %4, 9223372036
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %14, label %12

12:                                               ; preds = %6, %1
  %13 = tail call i32 (ptr, ...) @_printk_deferred(ptr noundef nonnull @.str.2) #13
  br label %74

14:                                               ; preds = %6
  %15 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  %16 = add i64 %15, %4
  store i64 %16, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  %17 = load i32, ptr %7, align 8
  %18 = sext i32 %17 to i64
  %19 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  %20 = zext i32 %19 to i64
  %21 = shl i64 %18, %20
  %22 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %23 = add i64 %21, %22
  store i64 %23, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %24 = shl i64 1000000000, %20
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %27, label %35

26:                                               ; preds = %35
  store i64 %38, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  store i64 %39, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  br label %27

27:                                               ; preds = %26, %14
  %28 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 4), align 4
  %29 = zext i32 %28 to i64
  %30 = shl i64 1000000000, %29
  %31 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 32
  %32 = icmp ult i64 %31, %30
  br i1 %32, label %48, label %33

33:                                               ; preds = %27
  %34 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 12), align 8
  br label %41

35:                                               ; preds = %35, %14
  %36 = phi i64 [ %38, %35 ], [ %23, %14 ]
  %37 = phi i64 [ %39, %35 ], [ %16, %14 ]
  %38 = sub i64 %36, %24
  %39 = add i64 %37, 1
  %40 = icmp ult i64 %38, %24
  br i1 %40, label %26, label %35

41:                                               ; preds = %41, %33
  %42 = phi i64 [ %44, %41 ], [ %31, %33 ]
  %43 = phi i64 [ %45, %41 ], [ %34, %33 ]
  %44 = sub i64 %42, %30
  %45 = add i64 %43, 1
  %46 = icmp ult i64 %44, %30
  br i1 %46, label %47, label %41

47:                                               ; preds = %41
  store i64 %44, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 32
  store i64 %45, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 12), align 8
  br label %48

48:                                               ; preds = %47, %27
  %49 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 4), align 8
  %50 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 4, i32 1), align 16
  %51 = load i64, ptr %0, align 8
  %52 = load i64, ptr %7, align 8
  %53 = trunc i64 %50 to i32
  %54 = trunc i64 %52 to i32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #10, !alias.scope !81, !annotation !42
  %55 = sub i64 %49, %51
  %56 = sub i32 %53, %54
  %57 = sext i32 %56 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %3, i64 noundef %55, i64 noundef %57) #10
  %58 = load i64, ptr %3, align 8
  %59 = insertvalue [2 x i64] poison, i64 %58, 0
  %60 = getelementptr inbounds [2 x i64], ptr %3, i32 0, i32 1
  %61 = load i64, ptr %60, align 8
  %62 = insertvalue [2 x i64] %59, i64 %61, 1
  call fastcc void @tk_set_wall_to_mono(ptr noundef getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), [2 x i64] %62)
  %63 = load i64, ptr %0, align 8
  %64 = icmp sgt i64 %63, 9223372035
  br i1 %64, label %70, label %65, !prof !38

65:                                               ; preds = %48
  %66 = load i64, ptr %7, align 8
  %67 = mul i64 %63, 1000000000
  %68 = and i64 %66, 4294967295
  %69 = add i64 %68, %67
  br label %70

70:                                               ; preds = %65, %48
  %71 = phi i64 [ %69, %65 ], [ 9223372036854775807, %48 ]
  %72 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 6), align 32
  %73 = add i64 %72, %71
  store i64 %73, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 6), align 32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %2, i64 noundef %73) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 16 dereferenceable(16) getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 13), ptr noundef nonnull align 8 dereferenceable(16) %2, i32 16, i1 false) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  call void @tk_debug_account_sleep_time(ptr noundef %0) #10
  br label %74

74:                                               ; preds = %70, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @timekeeping_resume() #0 {
  %1 = alloca %struct.timespec64, align 8
  %2 = alloca %struct.timespec64, align 8
  %3 = alloca %struct.timespec64, align 8
  %4 = load ptr, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i32 16, i1 false), !annotation !42
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !42
  call void @read_persistent_clock64(ptr noundef nonnull %1)
  call void @clockevents_resume() #10
  call void @clocksource_resume() #10
  %5 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @timekeeper_lock) #10
  %6 = load i32, ptr @tk_core, align 64
  %7 = add i32 %6, 1
  store i32 %7, ptr @tk_core, align 64
  call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !47
  %8 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), align 8
  %9 = load ptr, ptr %8, align 8
  %10 = call i64 %9(ptr noundef %8) #10
  %11 = call i64 @clocksource_stop_suspend_timing(ptr noundef %4, i64 noundef %10) #10
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %0
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %2, i64 noundef %11) #10
  br label %35

14:                                               ; preds = %0
  %15 = load i64, ptr %1, align 8
  %16 = load i64, ptr @timekeeping_suspend_time, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %36, label %18

18:                                               ; preds = %14
  %19 = icmp sgt i64 %15, %16
  br i1 %19, label %26, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.timespec64, ptr %1, i32 0, i32 1
  %22 = load i32, ptr %21, align 8
  %23 = load i32, ptr getelementptr inbounds (%struct.timespec64, ptr @timekeeping_suspend_time, i32 0, i32 1), align 8
  %24 = sub i32 %22, %23
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %20, %18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %27 = getelementptr inbounds [2 x i64], ptr %1, i32 0, i32 1
  %28 = load i64, ptr %27, align 8
  %29 = load i64, ptr getelementptr inbounds (%struct.timespec64, ptr @timekeeping_suspend_time, i32 0, i32 1), align 8
  %30 = trunc i64 %28 to i32
  %31 = trunc i64 %29 to i32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #10, !alias.scope !84, !annotation !42
  %32 = sub i64 %15, %16
  %33 = sub i32 %30, %31
  %34 = sext i32 %33 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %3, i64 noundef %32, i64 noundef %34) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  br label %35

35:                                               ; preds = %26, %13
  store i1 false, ptr @suspend_timing_needed, align 1
  call fastcc void @__timekeeping_inject_sleeptime(ptr noundef nonnull %2)
  br label %36

36:                                               ; preds = %35, %20, %14
  store i64 %10, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  store i64 %10, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 2), align 16
  store i64 0, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 19), align 8
  store i32 0, ptr @timekeeping_suspended, align 4
  call fastcc void @timekeeping_update(ptr noundef getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), i32 noundef 6)
  call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !57
  %37 = load i32, ptr @tk_core, align 64
  %38 = add i32 %37, 1
  store i32 %38, ptr @tk_core, align 64
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @timekeeper_lock, i32 noundef %5) #10
  call void @tick_resume() #10
  call void @timerfd_resume() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_resume() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clocksource_resume() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_stop_suspend_timing(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_resume() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @timerfd_resume() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @timekeeping_suspend() #0 {
  %1 = alloca %struct.timespec64, align 8
  %2 = alloca %struct.timespec64, align 8
  %3 = alloca %struct.timespec64, align 8
  tail call void @read_persistent_clock64(ptr noundef nonnull @timekeeping_suspend_time)
  %4 = load i64, ptr @timekeeping_suspend_time, align 8
  %5 = icmp ne i64 %4, 0
  %6 = load i32, ptr getelementptr inbounds (%struct.timespec64, ptr @timekeeping_suspend_time, i32 0, i32 1), align 8
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i1 true, ptr @persistent_clock_exists, align 1
  br label %10

10:                                               ; preds = %9, %0
  store i1 true, ptr @suspend_timing_needed, align 1
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @timekeeper_lock) #10
  %12 = load i32, ptr @tk_core, align 64
  %13 = add i32 %12, 1
  store i32 %13, ptr @tk_core, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !47
  %14 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), align 8
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i64 %15(ptr noundef %14) #10
  %17 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  %18 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 1), align 16
  %19 = sub i64 %16, %17
  %20 = and i64 %19, %18
  store i64 %16, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  store i64 %16, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 2), align 16
  %21 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 3), align 32
  %22 = zext i32 %21 to i64
  %23 = mul i64 %20, %22
  %24 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %25 = add i64 %23, %24
  store i64 %25, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %26 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 3), align 8
  %27 = zext i32 %26 to i64
  %28 = mul i64 %20, %27
  %29 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 32
  %30 = add i64 %28, %29
  store i64 %30, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 32
  %31 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  %32 = zext i32 %31 to i64
  %33 = shl i64 1000000000, %32
  %34 = icmp ult i64 %25, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %10
  %36 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  br label %45

37:                                               ; preds = %45
  store i64 %48, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  store i64 %49, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  br label %38

38:                                               ; preds = %37, %10
  %39 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 4), align 4
  %40 = zext i32 %39 to i64
  %41 = shl i64 1000000000, %40
  %42 = icmp ult i64 %30, %41
  br i1 %42, label %58, label %43

43:                                               ; preds = %38
  %44 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 12), align 8
  br label %51

45:                                               ; preds = %45, %35
  %46 = phi i64 [ %48, %45 ], [ %25, %35 ]
  %47 = phi i64 [ %49, %45 ], [ %36, %35 ]
  %48 = sub i64 %46, %33
  %49 = add i64 %47, 1
  %50 = icmp ult i64 %48, %33
  br i1 %50, label %37, label %45

51:                                               ; preds = %51, %43
  %52 = phi i64 [ %54, %51 ], [ %30, %43 ]
  %53 = phi i64 [ %55, %51 ], [ %44, %43 ]
  %54 = sub i64 %52, %41
  %55 = add i64 %53, 1
  %56 = icmp ult i64 %54, %41
  br i1 %56, label %57, label %51

57:                                               ; preds = %51
  store i64 %54, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 32
  store i64 %55, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 12), align 8
  br label %58

58:                                               ; preds = %57, %38
  store i32 1, ptr @timekeeping_suspended, align 4
  %59 = load ptr, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), align 8
  tail call void @clocksource_start_suspend_timing(ptr noundef %59, i64 noundef %16) #10
  %60 = load i1, ptr @persistent_clock_exists, align 1
  br i1 %60, label %61, label %98

61:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #10
  %62 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 2), align 8, !noalias !87
  %63 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8, !noalias !87
  %64 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4, !noalias !87
  %65 = zext i32 %64 to i64
  %66 = lshr i64 %63, %65
  %67 = trunc i64 %66 to i32
  %68 = load i64, ptr @timekeeping_suspend_time, align 8
  %69 = load i64, ptr getelementptr inbounds (%struct.timespec64, ptr @timekeeping_suspend_time, i32 0, i32 1), align 8
  %70 = trunc i64 %69 to i32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i32 16, i1 false) #10, !alias.scope !90, !annotation !42
  %71 = sub i64 %62, %68
  %72 = sub i32 %67, %70
  %73 = sext i32 %72 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %1, i64 noundef %71, i64 noundef %73) #10
  %74 = load i64, ptr %1, align 8
  %75 = getelementptr inbounds i8, ptr %1, i32 8
  %76 = load i64, ptr %75, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  %77 = load i64, ptr @timekeeping_suspend.old_delta.0, align 8
  %78 = load i64, ptr @timekeeping_suspend.old_delta.1, align 8
  %79 = trunc i64 %76 to i32
  %80 = trunc i64 %78 to i32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i32 16, i1 false) #10, !alias.scope !93, !annotation !42
  %81 = sub i64 %74, %77
  %82 = sub i32 %79, %80
  %83 = sext i32 %82 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %2, i64 noundef %81, i64 noundef %83) #10
  %84 = load i64, ptr %2, align 8
  %85 = getelementptr inbounds i8, ptr %2, i32 8
  %86 = load i64, ptr %85, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  %87 = call i64 @llvm.abs.i64(i64 %84, i1 false)
  %88 = icmp sgt i64 %87, 1
  br i1 %88, label %89, label %90

89:                                               ; preds = %61
  store i64 %74, ptr @timekeeping_suspend.old_delta.0, align 8
  store i64 %76, ptr @timekeeping_suspend.old_delta.1, align 8
  br label %98

90:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %91 = load i64, ptr @timekeeping_suspend_time, align 8
  %92 = load i64, ptr getelementptr inbounds (%struct.timespec64, ptr @timekeeping_suspend_time, i32 0, i32 1), align 8
  %93 = trunc i64 %92 to i32
  %94 = trunc i64 %86 to i32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #10, !alias.scope !96, !annotation !42
  %95 = add i64 %91, %84
  %96 = add i32 %93, %94
  %97 = sext i32 %96 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %3, i64 noundef %95, i64 noundef %97) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) @timekeeping_suspend_time, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  br label %98

98:                                               ; preds = %90, %89, %58
  call fastcc void @timekeeping_update(ptr noundef getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), i32 noundef 2)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) @halt_fast_timekeeper.tkr_dummy, ptr noundef align 8 dereferenceable(56) getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), i32 56, i1 false) #10
  %99 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), align 8
  %100 = load ptr, ptr %99, align 8
  %101 = call i64 %100(ptr noundef %99) #10
  store i64 %101, ptr @cycles_at_suspend, align 8
  store ptr @dummy_clock, ptr @halt_fast_timekeeper.tkr_dummy, align 8
  %102 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 6), align 16
  %103 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 5), align 8
  %104 = add i64 %103, %102
  store i64 %104, ptr getelementptr inbounds (%struct.tk_read_base, ptr @halt_fast_timekeeper.tkr_dummy, i32 0, i32 7), align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !58
  %105 = load i32, ptr @tk_fast_mono, align 64
  %106 = add i32 %105, 1
  store i32 %106, ptr @tk_fast_mono, align 64
  call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !59
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(56) getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), ptr noundef nonnull align 8 dereferenceable(56) @halt_fast_timekeeper.tkr_dummy, i32 56, i1 false) #10
  call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !58
  %107 = load i32, ptr @tk_fast_mono, align 64
  %108 = add i32 %107, 1
  store i32 %108, ptr @tk_fast_mono, align 64
  call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !59
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 64 dereferenceable(56) getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1, i32 1), ptr noundef align 8 dereferenceable(56) getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 56, i1 false) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) @halt_fast_timekeeper.tkr_dummy, ptr noundef align 64 dereferenceable(56) getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 1), i32 56, i1 false) #10
  store ptr @dummy_clock, ptr @halt_fast_timekeeper.tkr_dummy, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !58
  %109 = load i32, ptr @tk_fast_raw, align 64
  %110 = add i32 %109, 1
  store i32 %110, ptr @tk_fast_raw, align 64
  call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !59
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(56) getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_raw, i32 0, i32 1), ptr noundef nonnull align 8 dereferenceable(56) @halt_fast_timekeeper.tkr_dummy, i32 56, i1 false) #10
  call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !58
  %111 = load i32, ptr @tk_fast_raw, align 64
  %112 = add i32 %111, 1
  store i32 %112, ptr @tk_fast_raw, align 64
  call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !59
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 64 dereferenceable(56) getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_raw, i32 0, i32 1, i32 1), ptr noundef align 8 dereferenceable(56) getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_raw, i32 0, i32 1), i32 56, i1 false) #10
  call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !57
  %113 = load i32, ptr @tk_core, align 64
  %114 = add i32 %113, 1
  store i32 %114, ptr @tk_core, align 64
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @timekeeper_lock, i32 noundef %11) #10
  call void @tick_suspend() #10
  call void @clocksource_suspend() #10
  call void @clockevents_suspend() #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clocksource_start_suspend_timing(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_suspend() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clocksource_suspend() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_suspend() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @timekeeping_init_ops() #6 section ".init.text" {
  tail call void @register_syscore_ops(ptr noundef nonnull @timekeeping_syscore_ops) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @update_wall_time() local_unnamed_addr #0 {
  %1 = tail call fastcc zeroext i1 @timekeeping_advance(i32 noundef 0)
  br i1 %1, label %2, label %3

2:                                                ; preds = %0
  tail call void @clock_was_set_delayed() #10
  br label %3

3:                                                ; preds = %2, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @timekeeping_advance(i32 noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.timespec64, align 8
  %3 = alloca %struct.timespec64, align 8
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @timekeeper_lock) #10
  %5 = load i32, ptr @timekeeping_suspended, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %303, !prof !9

7:                                                ; preds = %1
  %8 = load volatile ptr, ptr @shadow_timekeeper, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i64 %9(ptr noundef %8) #10
  %11 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 2), align 8
  %12 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 1), align 8
  %13 = sub i64 %10, %11
  %14 = and i64 %13, %12
  %15 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 14), align 32
  %16 = icmp ult i64 %14, %15
  %17 = icmp eq i32 %0, 0
  %18 = and i1 %17, %16
  br i1 %18, label %303, label %19

19:                                               ; preds = %7
  %20 = lshr i64 %14, 32
  %21 = trunc i64 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = tail call i32 @llvm.ctlz.i32(i32 %21, i1 true) #10, !range !99
  %25 = sub nuw nsw i32 64, %24
  br label %32

26:                                               ; preds = %19
  %27 = trunc i64 %14 to i32
  %28 = icmp eq i32 %27, 0
  %29 = tail call i32 @llvm.ctlz.i32(i32 %27, i1 false) #10, !range !99
  %30 = sub nuw nsw i32 32, %29
  %31 = select i1 %28, i32 0, i32 %30
  br label %32

32:                                               ; preds = %26, %23
  %33 = phi i32 [ %25, %23 ], [ %31, %26 ]
  %34 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 14), align 8
  %35 = lshr i64 %34, 32
  %36 = trunc i64 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = tail call i32 @llvm.ctlz.i32(i32 %36, i1 true) #10, !range !99
  %40 = or i32 %39, -64
  br label %47

41:                                               ; preds = %32
  %42 = trunc i64 %34 to i32
  %43 = icmp eq i32 %42, 0
  %44 = tail call i32 @llvm.ctlz.i32(i32 %42, i1 false) #10, !range !99
  %45 = add nsw i32 %44, -32
  %46 = select i1 %43, i32 0, i32 %45
  br label %47

47:                                               ; preds = %41, %38
  %48 = phi i32 [ %40, %38 ], [ %46, %41 ]
  %49 = add nsw i32 %48, %33
  %50 = tail call i32 @llvm.smax.i32(i32 %49, i32 0)
  %51 = tail call i64 @ntp_tick_length() #10
  %52 = lshr i64 %51, 32
  %53 = trunc i64 %52 to i32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %47
  %56 = tail call i32 @llvm.ctlz.i32(i32 %53, i1 true) #10, !range !99
  %57 = or i32 %56, -64
  br label %64

58:                                               ; preds = %47
  %59 = trunc i64 %51 to i32
  %60 = icmp eq i32 %59, 0
  %61 = tail call i32 @llvm.ctlz.i32(i32 %59, i1 false) #10, !range !99
  %62 = add nsw i32 %61, -32
  %63 = select i1 %60, i32 0, i32 %62
  br label %64

64:                                               ; preds = %58, %55
  %65 = phi i32 [ %57, %55 ], [ %63, %58 ]
  %66 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 14), align 8
  %67 = icmp ult i64 %14, %66
  br i1 %67, label %173, label %68

68:                                               ; preds = %64
  %69 = add nsw i32 %65, 63
  %70 = tail call i32 @llvm.smin.i32(i32 %50, i32 %69)
  %71 = getelementptr inbounds [2 x i64], ptr %3, i32 0, i32 1
  br label %72

72:                                               ; preds = %164, %68
  %73 = phi i64 [ %66, %68 ], [ %166, %164 ]
  %74 = phi i64 [ %14, %68 ], [ %168, %164 ]
  %75 = phi i32 [ %70, %68 ], [ %171, %164 ]
  %76 = phi i32 [ 0, %68 ], [ %167, %164 ]
  %77 = zext i32 %75 to i64
  %78 = shl i64 %73, %77
  %79 = icmp ult i64 %74, %78
  br i1 %79, label %164, label %80

80:                                               ; preds = %72
  %81 = sub i64 %74, %78
  %82 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 2), align 8
  %83 = add i64 %82, %78
  store i64 %83, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 2), align 8
  %84 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 1, i32 2), align 8
  %85 = add i64 %84, %78
  store i64 %85, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 1, i32 2), align 8
  %86 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 15), align 8
  %87 = shl i64 %86, %77
  %88 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 5), align 8
  %89 = add i64 %88, %87
  store i64 %89, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 5), align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %90 = load i32, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 4), align 4
  %91 = zext i32 %90 to i64
  %92 = shl i64 1000000000, %91
  %93 = icmp ult i64 %89, %92
  br i1 %93, label %129, label %94

94:                                               ; preds = %125, %80
  %95 = phi i64 [ %127, %125 ], [ %89, %80 ]
  %96 = phi i32 [ %126, %125 ], [ 0, %80 ]
  %97 = sub i64 %95, %92
  store i64 %97, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 5), align 8
  %98 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 2), align 8
  %99 = add i64 %98, 1
  store i64 %99, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 2), align 8
  %100 = load i32, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 22), align 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %103, label %102, !prof !9

102:                                              ; preds = %94
  store i32 0, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 22), align 8
  br label %125

103:                                              ; preds = %94
  %104 = call i32 @second_overflow(i64 noundef %99) #10
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %125, label %106, !prof !9

106:                                              ; preds = %103
  %107 = sext i32 %104 to i64
  %108 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 2), align 8
  %109 = add i64 %108, %107
  store i64 %109, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 2), align 8
  %110 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 4), align 8
  %111 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 4, i32 1), align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #10, !alias.scope !100, !annotation !42
  %112 = sub i64 %110, %107
  %113 = shl i64 %111, 32
  %114 = ashr exact i64 %113, 32
  call void @set_normalized_timespec64(ptr noundef nonnull %3, i64 noundef %112, i64 noundef %114) #10
  %115 = load i64, ptr %3, align 8
  %116 = insertvalue [2 x i64] poison, i64 %115, 0
  %117 = load i64, ptr %71, align 8
  %118 = insertvalue [2 x i64] %116, i64 %117, 1
  call fastcc void @tk_set_wall_to_mono(ptr noundef nonnull @shadow_timekeeper, [2 x i64] %118) #10
  %119 = load i32, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 8), align 8
  %120 = sub i32 %119, %104
  store i32 %120, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 8), align 8
  %121 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 5), align 8
  %122 = sext i32 %120 to i64
  %123 = mul nsw i64 %122, 1000000000
  %124 = add i64 %123, %121
  store i64 %124, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 7), align 8
  br label %125

125:                                              ; preds = %106, %103, %102
  %126 = phi i32 [ %96, %102 ], [ 4, %106 ], [ %96, %103 ]
  %127 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 5), align 8
  %128 = icmp ult i64 %127, %92
  br i1 %128, label %129, label %94

129:                                              ; preds = %125, %80
  %130 = phi i32 [ 0, %80 ], [ %126, %125 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  %131 = or i32 %130, %76
  %132 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 17), align 8
  %133 = shl i64 %132, %77
  %134 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 1, i32 5), align 8
  %135 = add i64 %134, %133
  store i64 %135, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 1, i32 5), align 8
  %136 = load i32, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 1, i32 4), align 4
  %137 = zext i32 %136 to i64
  %138 = shl i64 1000000000, %137
  %139 = icmp ult i64 %135, %138
  br i1 %139, label %149, label %140

140:                                              ; preds = %129
  %141 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 12), align 8
  br label %142

142:                                              ; preds = %142, %140
  %143 = phi i64 [ %145, %142 ], [ %135, %140 ]
  %144 = phi i64 [ %146, %142 ], [ %141, %140 ]
  %145 = sub i64 %143, %138
  %146 = add i64 %144, 1
  %147 = icmp ult i64 %145, %138
  br i1 %147, label %148, label %142

148:                                              ; preds = %142
  store i64 %145, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 1, i32 5), align 8
  store i64 %146, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 12), align 8
  br label %149

149:                                              ; preds = %148, %129
  %150 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 18), align 8
  %151 = shl i64 %150, %77
  %152 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 19), align 8
  %153 = add i64 %152, %151
  %154 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 15), align 8
  %155 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 16), align 8
  %156 = add i64 %155, %154
  %157 = load i32, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 20), align 8
  %158 = add i32 %157, %75
  %159 = zext i32 %158 to i64
  %160 = shl i64 %156, %159
  %161 = sub i64 %153, %160
  store i64 %161, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 19), align 8
  %162 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 14), align 8
  %163 = shl i64 %162, %77
  br label %164

164:                                              ; preds = %149, %72
  %165 = phi i64 [ %78, %72 ], [ %163, %149 ]
  %166 = phi i64 [ %73, %72 ], [ %162, %149 ]
  %167 = phi i32 [ %76, %72 ], [ %131, %149 ]
  %168 = phi i64 [ %74, %72 ], [ %81, %149 ]
  %169 = icmp ult i64 %168, %165
  %170 = sext i1 %169 to i32
  %171 = add i32 %75, %170
  %172 = icmp ult i64 %168, %166
  br i1 %172, label %173, label %72

173:                                              ; preds = %164, %64
  %174 = phi i32 [ 0, %64 ], [ %167, %164 ]
  %175 = phi i64 [ %14, %64 ], [ %168, %164 ]
  %176 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 18), align 8
  %177 = call i64 @ntp_tick_length() #10
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %183, !prof !9

179:                                              ; preds = %173
  %180 = load i32, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 3), align 8
  %181 = load i32, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 21), align 4
  %182 = sub i32 %180, %181
  br label %194

183:                                              ; preds = %173
  %184 = call i64 @ntp_tick_length() #10
  store i64 %184, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 18), align 8
  %185 = load i32, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 20), align 8
  %186 = zext i32 %185 to i64
  %187 = lshr i64 %184, %186
  %188 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 16), align 8
  %189 = sub i64 %187, %188
  %190 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 14), align 8
  %191 = call i64 @div64_u64(i64 noundef %189, i64 noundef %190) #10
  %192 = trunc i64 %191 to i32
  %193 = load i32, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 3), align 8
  br label %194

194:                                              ; preds = %183, %179
  %195 = phi i32 [ %180, %179 ], [ %193, %183 ]
  %196 = phi i32 [ %182, %179 ], [ %192, %183 ]
  %197 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 19), align 8
  %198 = icmp sgt i64 %197, 0
  %199 = zext i1 %198 to i32
  store i32 %199, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 21), align 4
  %200 = add i32 %196, %199
  %201 = sub i32 %200, %195
  %202 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 14), align 8
  switch i32 %201, label %206 [
    i32 0, label %226
    i32 -1, label %203
    i32 1, label %211
  ]

203:                                              ; preds = %194
  %204 = sub i64 0, %202
  %205 = sub i64 0, %175
  br label %219

206:                                              ; preds = %194
  %207 = sext i32 %201 to i64
  %208 = mul i64 %202, %207
  %209 = mul i64 %175, %207
  %210 = icmp sgt i32 %201, 0
  br i1 %210, label %211, label %219

211:                                              ; preds = %206, %194
  %212 = phi i64 [ %209, %206 ], [ %175, %194 ]
  %213 = phi i64 [ %208, %206 ], [ %202, %194 ]
  %214 = xor i32 %201, -1
  %215 = icmp ugt i32 %195, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %211
  %217 = load i1, ptr @timekeeping_apply_adjustment.__already_done, align 1
  br i1 %217, label %226, label %218, !prof !9

218:                                              ; preds = %216
  store i1 true, ptr @timekeeping_apply_adjustment.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1968, i32 noundef 9, ptr noundef null) #10
  br label %226

219:                                              ; preds = %211, %206, %203
  %220 = phi i64 [ %212, %211 ], [ %209, %206 ], [ %205, %203 ]
  %221 = phi i64 [ %213, %211 ], [ %208, %206 ], [ %204, %203 ]
  store i32 %200, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 3), align 8
  %222 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 15), align 8
  %223 = add i64 %222, %221
  store i64 %223, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 15), align 8
  %224 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 5), align 8
  %225 = sub i64 %224, %220
  store i64 %225, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 5), align 8
  br label %226

226:                                              ; preds = %219, %218, %216, %194
  %227 = load ptr, ptr @shadow_timekeeper, align 8
  %228 = getelementptr inbounds %struct.clocksource, ptr %227, i32 0, i32 5
  %229 = load i32, ptr %228, align 8
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %245, label %231

231:                                              ; preds = %226
  %232 = load i32, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 3), align 8
  %233 = getelementptr inbounds %struct.clocksource, ptr %227, i32 0, i32 2
  %234 = load i32, ptr %233, align 8
  %235 = sub i32 %232, %234
  %236 = call i32 @llvm.abs.i32(i32 %235, i1 false) #10
  %237 = icmp ugt i32 %236, %229
  br i1 %237, label %238, label %245, !prof !38

238:                                              ; preds = %231
  %239 = load i1, ptr @timekeeping_adjust.__already_done, align 1
  br i1 %239, label %245, label %240, !prof !9

240:                                              ; preds = %238
  store i1 true, ptr @timekeeping_adjust.__already_done, align 1
  %241 = getelementptr inbounds %struct.clocksource, ptr %227, i32 0, i32 8
  %242 = load ptr, ptr %241, align 8
  %243 = add i32 %234, %229
  %244 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %242, i32 noundef %232, i32 noundef %243) #13
  br label %245

245:                                              ; preds = %240, %238, %231, %226
  %246 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 5), align 8
  %247 = icmp slt i64 %246, 0
  %248 = load i32, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 4), align 4
  %249 = zext i32 %248 to i64
  %250 = shl i64 1000000000, %249
  br i1 %247, label %251, label %255, !prof !38

251:                                              ; preds = %245
  %252 = add i64 %250, %246
  store i64 %252, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 5), align 8
  %253 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 2), align 8
  %254 = add i64 %253, -1
  store i64 %254, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 2), align 8
  store i32 1, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 22), align 8
  br label %255

255:                                              ; preds = %251, %245
  %256 = phi i64 [ %252, %251 ], [ %246, %245 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2)
  %257 = icmp ult i64 %256, %250
  br i1 %257, label %295, label %258

258:                                              ; preds = %255
  %259 = getelementptr inbounds [2 x i64], ptr %2, i32 0, i32 1
  br label %260

260:                                              ; preds = %291, %258
  %261 = phi i64 [ %256, %258 ], [ %293, %291 ]
  %262 = phi i32 [ 0, %258 ], [ %292, %291 ]
  %263 = sub i64 %261, %250
  store i64 %263, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 5), align 8
  %264 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 2), align 8
  %265 = add i64 %264, 1
  store i64 %265, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 2), align 8
  %266 = load i32, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 22), align 8
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %269, label %268, !prof !9

268:                                              ; preds = %260
  store i32 0, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 22), align 8
  br label %291

269:                                              ; preds = %260
  %270 = call i32 @second_overflow(i64 noundef %265) #10
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %291, label %272, !prof !9

272:                                              ; preds = %269
  %273 = sext i32 %270 to i64
  %274 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 2), align 8
  %275 = add i64 %274, %273
  store i64 %275, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 2), align 8
  %276 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 4), align 8
  %277 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 4, i32 1), align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i32 16, i1 false) #10, !alias.scope !103, !annotation !42
  %278 = sub i64 %276, %273
  %279 = shl i64 %277, 32
  %280 = ashr exact i64 %279, 32
  call void @set_normalized_timespec64(ptr noundef nonnull %2, i64 noundef %278, i64 noundef %280) #10
  %281 = load i64, ptr %2, align 8
  %282 = insertvalue [2 x i64] poison, i64 %281, 0
  %283 = load i64, ptr %259, align 8
  %284 = insertvalue [2 x i64] %282, i64 %283, 1
  call fastcc void @tk_set_wall_to_mono(ptr noundef nonnull @shadow_timekeeper, [2 x i64] %284) #10
  %285 = load i32, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 8), align 8
  %286 = sub i32 %285, %270
  store i32 %286, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 8), align 8
  %287 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 5), align 8
  %288 = sext i32 %286 to i64
  %289 = mul nsw i64 %288, 1000000000
  %290 = add i64 %289, %287
  store i64 %290, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 7), align 8
  br label %291

291:                                              ; preds = %272, %269, %268
  %292 = phi i32 [ %262, %268 ], [ 4, %272 ], [ %262, %269 ]
  %293 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 5), align 8
  %294 = icmp ult i64 %293, %250
  br i1 %294, label %295, label %260

295:                                              ; preds = %291, %255
  %296 = phi i32 [ 0, %255 ], [ %292, %291 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2)
  %297 = or i32 %296, %174
  %298 = load i32, ptr @tk_core, align 64
  %299 = add i32 %298, 1
  store i32 %299, ptr @tk_core, align 64
  call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !47
  call fastcc void @timekeeping_update(ptr noundef nonnull @shadow_timekeeper, i32 noundef %297)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(280) getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), ptr noundef nonnull align 8 dereferenceable(280) @shadow_timekeeper, i32 280, i1 false)
  call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !57
  %300 = load i32, ptr @tk_core, align 64
  %301 = add i32 %300, 1
  store i32 %301, ptr @tk_core, align 64
  %302 = icmp ne i32 %297, 0
  br label %303

303:                                              ; preds = %295, %7, %1
  %304 = phi i1 [ false, %7 ], [ %302, %295 ], [ false, %1 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @timekeeper_lock, i32 noundef %4) #10
  ret i1 %304
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clock_was_set_delayed() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @getboottime64(ptr nocapture noundef writeonly %0) #0 {
  %2 = alloca %struct.timespec64, align 8
  %3 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 5), align 8
  %4 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 6), align 32
  %5 = sub i64 %3, %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %2, i64 noundef %5) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ktime_get_coarse_real_ts64(ptr nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i32 8
  br label %3

3:                                                ; preds = %11, %1
  %4 = load volatile i32, ptr @tk_core, align 64
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %7, %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !106
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !107
  %8 = load volatile i32, ptr @tk_core, align 64
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %7

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %4, %3 ], [ %8, %7 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !108
  %13 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 2), align 8, !noalias !109
  %14 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8, !noalias !109
  %15 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4, !noalias !109
  %16 = zext i32 %15 to i64
  %17 = lshr i64 %14, %16
  %18 = and i64 %17, 4294967295
  store i64 %13, ptr %0, align 8
  store i64 %18, ptr %2, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %19 = load volatile i32, ptr @tk_core, align 64
  %20 = icmp eq i32 %19, %12
  br i1 %20, label %21, label %3

21:                                               ; preds = %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ktime_get_coarse_ts64(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %10, %1
  %3 = load volatile i32, ptr @tk_core, align 64
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %6, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !112
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !113
  %7 = load volatile i32, ptr @tk_core, align 64
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %6

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %3, %2 ], [ %7, %6 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !114
  %12 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 2), align 8, !noalias !115
  %13 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8, !noalias !115
  %14 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4, !noalias !115
  %15 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 4), align 8
  %16 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 4, i32 1), align 16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %17 = load volatile i32, ptr @tk_core, align 64
  %18 = icmp eq i32 %17, %11
  br i1 %18, label %19, label %2

19:                                               ; preds = %10
  %20 = zext i32 %14 to i64
  %21 = lshr i64 %13, %20
  %22 = trunc i64 %21 to i32
  %23 = add i64 %15, %12
  %24 = add i32 %16, %22
  %25 = sext i32 %24 to i64
  tail call void @set_normalized_timespec64(ptr noundef %0, i64 noundef %23, i64 noundef %25) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @do_timer(i32 noundef %0) local_unnamed_addr #0 {
  %2 = zext i32 %0 to i64
  %3 = load i64, ptr @jiffies_64, align 64
  %4 = add i64 %3, %2
  store i64 %4, ptr @jiffies_64, align 64
  tail call void @calc_global_load() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @calc_global_load() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @ktime_get_update_offsets_now(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  br label %5

5:                                                ; preds = %45, %4
  %6 = load volatile i32, ptr @tk_core, align 64
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %9, %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !118
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !119
  %10 = load volatile i32, ptr @tk_core, align 64
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %9

13:                                               ; preds = %9, %5
  %14 = phi i32 [ %6, %5 ], [ %10, %9 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !120
  %15 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 6), align 16
  %16 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), align 8
  %17 = load ptr, ptr %16, align 8
  %18 = tail call i64 %17(ptr noundef %16) #10
  %19 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  %20 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 1), align 16
  %21 = sub i64 %18, %19
  %22 = and i64 %21, %20
  %23 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 3), align 32
  %24 = zext i32 %23 to i64
  %25 = mul i64 %22, %24
  %26 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %27 = add i64 %25, %26
  %28 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  %29 = zext i32 %28 to i64
  %30 = lshr i64 %27, %29
  %31 = add i64 %30, %15
  %32 = load i32, ptr %0, align 4
  %33 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 9), align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %13
  store i32 %33, ptr %0, align 4
  %36 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 5), align 8
  store i64 %36, ptr %1, align 8
  %37 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 6), align 32
  store i64 %37, ptr %2, align 8
  %38 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 7), align 8
  store i64 %38, ptr %3, align 8
  br label %39

39:                                               ; preds = %35, %13
  %40 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 11), align 64
  %41 = icmp slt i64 %31, %40
  br i1 %41, label %45, label %42, !prof !9

42:                                               ; preds = %39
  %43 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 5), align 8
  %44 = add i64 %43, -1000000000
  store i64 %44, ptr %1, align 8
  br label %45

45:                                               ; preds = %42, %39
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %46 = load volatile i32, ptr @tk_core, align 64
  %47 = icmp eq i32 %46, %14
  br i1 %47, label %48, label %5

48:                                               ; preds = %45
  ret i64 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_adjtimex(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.audit_ntp_data, align 1
  %3 = alloca %struct.timespec64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 32768
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = and i32 %6, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %100, label %12

12:                                               ; preds = %9
  %13 = and i32 %6, 8192
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %12
  %16 = tail call zeroext i1 @capable(i32 noundef 25) #10
  br i1 %16, label %17, label %100

17:                                               ; preds = %15
  %18 = load i32, ptr %0, align 8
  br label %32

19:                                               ; preds = %1
  %20 = icmp eq i32 %6, 0
  br i1 %20, label %68, label %21

21:                                               ; preds = %19
  %22 = tail call zeroext i1 @capable(i32 noundef 25) #10
  br i1 %22, label %23, label %100

23:                                               ; preds = %21
  %24 = load i32, ptr %0, align 8
  %25 = and i32 %24, 16384
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 12
  %29 = load i64, ptr %28, align 8
  %30 = add i64 %29, -11001
  %31 = icmp ult i64 %30, -2001
  br i1 %31, label %100, label %32

32:                                               ; preds = %27, %23, %17, %12
  %33 = phi i32 [ %18, %17 ], [ %24, %27 ], [ %24, %23 ], [ %6, %12 ]
  %34 = and i32 %33, 256
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %32
  %37 = tail call zeroext i1 @capable(i32 noundef 25) #10
  br i1 %37, label %38, label %100

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 11, i32 1
  %40 = load i64, ptr %39, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %100, label %42

42:                                               ; preds = %38
  %43 = load i32, ptr %0, align 8
  %44 = and i32 %43, 8192
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = icmp ugt i64 %40, 999999999
  br i1 %47, label %100, label %50

48:                                               ; preds = %42
  %49 = icmp ugt i64 %40, 999999
  br i1 %49, label %100, label %50

50:                                               ; preds = %48, %46, %32
  %51 = phi i32 [ %43, %48 ], [ %43, %46 ], [ %33, %32 ]
  %52 = and i32 %51, 256
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  %55 = getelementptr inbounds i8, ptr %5, i32 8
  store i64 0, ptr %55, align 8, !annotation !42
  %56 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 11
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %5, align 8
  %58 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 11, i32 1
  %59 = load i64, ptr %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = getelementptr inbounds %struct.timespec64, ptr %5, i32 0, i32 1
  %62 = and i32 %51, 8192
  %63 = icmp eq i32 %62, 0
  %64 = mul i32 %60, 1000
  %65 = select i1 %63, i32 %64, i32 %60
  store i32 %65, ptr %61, align 8
  %66 = call fastcc i32 @timekeeping_inject_offset(ptr noundef nonnull %5)
  %67 = icmp eq i32 %66, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  br i1 %67, label %68, label %100

68:                                               ; preds = %54, %50, %19
  call void @ktime_get_real_ts64(ptr noundef nonnull %3)
  %69 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @timekeeper_lock) #10
  %70 = load i32, ptr @tk_core, align 64
  %71 = add i32 %70, 1
  store i32 %71, ptr @tk_core, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !47
  %72 = load i32, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 8), align 16
  store i32 %72, ptr %4, align 4
  %73 = call i32 @__do_adjtimex(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %2) #10
  %74 = load i32, ptr %4, align 4
  %75 = icmp eq i32 %74, %72
  br i1 %75, label %81, label %76

76:                                               ; preds = %68
  store i32 %74, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 8), align 16
  %77 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 5), align 8
  %78 = sext i32 %74 to i64
  %79 = mul nsw i64 %78, 1000000000
  %80 = add i64 %77, %79
  store i64 %80, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 7), align 8
  call fastcc void @timekeeping_update(ptr noundef getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1), i32 noundef 6)
  br label %81

81:                                               ; preds = %76, %68
  %82 = xor i1 %75, true
  %83 = call i64 @ntp_get_next_leap() #10
  store i64 %83, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 11), align 64
  %84 = icmp eq i64 %83, 9223372036854775807
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = load i64, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 5), align 8
  %87 = sub i64 %83, %86
  store i64 %87, ptr getelementptr inbounds (%struct.anon.65, ptr @tk_core, i32 0, i32 1, i32 11), align 64
  br label %88

88:                                               ; preds = %85, %81
  call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !57
  %89 = load i32, ptr @tk_core, align 64
  %90 = add i32 %89, 1
  store i32 %90, ptr @tk_core, align 64
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @timekeeper_lock, i32 noundef %69) #10
  %91 = load i32, ptr %0, align 8
  %92 = and i32 %91, 16386
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %88
  %95 = call fastcc zeroext i1 @timekeeping_advance(i32 noundef 1)
  %96 = or i1 %95, %82
  br i1 %96, label %98, label %99

97:                                               ; preds = %88
  br i1 %75, label %99, label %98

98:                                               ; preds = %97, %94
  call void @clock_was_set(i32 noundef 0) #10
  br label %99

99:                                               ; preds = %98, %97, %94
  call void @ntp_notify_cmos_timer() #10
  br label %100

100:                                              ; preds = %99, %54, %48, %46, %38, %36, %27, %21, %15, %9
  %101 = phi i32 [ %73, %99 ], [ -22, %48 ], [ -22, %46 ], [ -22, %38 ], [ -1, %36 ], [ -22, %27 ], [ -1, %21 ], [ -1, %15 ], [ -22, %9 ], [ %66, %54 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %2) #10
  ret i32 %101
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__do_adjtimex(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntp_notify_cmos_timer() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @dummy_clock_read(ptr nocapture noundef readnone %0) #0 {
  %2 = load i32, ptr @timekeeping_suspended, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i64, ptr @cycles_at_suspend, align 8
  br label %8

6:                                                ; preds = %1
  %7 = tail call i64 @sched_clock() #10
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i64 [ %5, %4 ], [ %7, %6 ]
  ret i64 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scale64_check_overflow(i64 noundef %0, i64 noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store i64 0, ptr %4, align 8, !annotation !42
  %5 = load i64, ptr %2, align 8
  %6 = call i64 @div64_u64_rem(i64 noundef %5, i64 noundef %1, ptr noundef nonnull %4) #10
  %7 = lshr i64 %0, 32
  %8 = trunc i64 %7 to i32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = call i32 @llvm.ctlz.i32(i32 %8, i1 true) #10, !range !99
  %12 = or i32 %11, -64
  br label %19

13:                                               ; preds = %3
  %14 = trunc i64 %0 to i32
  %15 = icmp eq i32 %14, 0
  %16 = call i32 @llvm.ctlz.i32(i32 %14, i1 false) #10, !range !99
  %17 = add nsw i32 %16, -32
  %18 = select i1 %15, i32 0, i32 %17
  br label %19

19:                                               ; preds = %13, %10
  %20 = phi i32 [ %12, %10 ], [ %18, %13 ]
  %21 = add nsw i32 %20, 64
  %22 = lshr i64 %6, 32
  %23 = trunc i64 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = call i32 @llvm.ctlz.i32(i32 %23, i1 true) #10, !range !99
  %27 = sub nuw nsw i32 64, %26
  br label %34

28:                                               ; preds = %19
  %29 = trunc i64 %6 to i32
  %30 = icmp eq i32 %29, 0
  %31 = call i32 @llvm.ctlz.i32(i32 %29, i1 false) #10, !range !99
  %32 = sub nuw nsw i32 32, %31
  %33 = select i1 %30, i32 0, i32 %32
  br label %34

34:                                               ; preds = %28, %25
  %35 = phi i32 [ %27, %25 ], [ %33, %28 ]
  %36 = icmp ult i32 %21, %35
  br i1 %36, label %71, label %37

37:                                               ; preds = %34
  br i1 %9, label %41, label %38

38:                                               ; preds = %37
  %39 = call i32 @llvm.ctlz.i32(i32 %8, i1 true) #10, !range !99
  %40 = or i32 %39, -64
  br label %47

41:                                               ; preds = %37
  %42 = trunc i64 %0 to i32
  %43 = icmp eq i32 %42, 0
  %44 = call i32 @llvm.ctlz.i32(i32 %42, i1 false) #10, !range !99
  %45 = add nsw i32 %44, -32
  %46 = select i1 %43, i32 0, i32 %45
  br label %47

47:                                               ; preds = %41, %38
  %48 = phi i32 [ %40, %38 ], [ %46, %41 ]
  %49 = add nsw i32 %48, 64
  %50 = load i64, ptr %4, align 8
  %51 = lshr i64 %50, 32
  %52 = trunc i64 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  %55 = call i32 @llvm.ctlz.i32(i32 %52, i1 true) #10, !range !99
  %56 = sub nuw nsw i32 64, %55
  br label %63

57:                                               ; preds = %47
  %58 = trunc i64 %50 to i32
  %59 = icmp eq i32 %58, 0
  %60 = call i32 @llvm.ctlz.i32(i32 %58, i1 false) #10, !range !99
  %61 = sub nuw nsw i32 32, %60
  %62 = select i1 %59, i32 0, i32 %61
  br label %63

63:                                               ; preds = %57, %54
  %64 = phi i32 [ %56, %54 ], [ %62, %57 ]
  %65 = icmp ult i32 %49, %64
  br i1 %65, label %71, label %66

66:                                               ; preds = %63
  %67 = mul i64 %6, %0
  %68 = mul i64 %50, %0
  %69 = call i64 @div64_u64(i64 noundef %68, i64 noundef %1) #10
  %70 = add i64 %69, %67
  store i64 %70, ptr %2, align 8
  br label %71

71:                                               ; preds = %66, %63, %34
  %72 = phi i32 [ 0, %66 ], [ -75, %63 ], [ -75, %34 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64_rem(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntp_clear() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_vsyscall(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk_deferred(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @tk_debug_account_sleep_time(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ntp_tick_length() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @second_overflow(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ntp_get_next_leap() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { mustprogress nofree noinline noprofile norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { cold }
attributes #13 = { cold nounwind }

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
!8 = !{i64 2149433604}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2153224868}
!11 = !{i64 2153224710}
!12 = !{i64 2153225012}
!13 = !{i64 906794}
!14 = !{i64 2153230046}
!15 = !{i64 2153229888}
!16 = !{i64 2153230190}
!17 = !{i64 2153239117}
!18 = !{i64 2153238959}
!19 = !{i64 2153239261}
!20 = !{i64 2153244407}
!21 = !{i64 2153244249}
!22 = !{i64 2153244551}
!23 = !{i64 2153249723}
!24 = !{i64 2153249565}
!25 = !{i64 2153249867}
!26 = !{i64 2153258744}
!27 = !{i64 2153258586}
!28 = !{i64 2153258888}
!29 = !{i64 2153263422}
!30 = !{i64 2153263264}
!31 = !{i64 2153263566}
!32 = !{i64 2153272581}
!33 = !{i64 2153272423}
!34 = !{i64 2153272725}
!35 = !{i64 2153279651}
!36 = !{i64 2153279493}
!37 = !{i64 2153279795}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{i64 2153285685}
!40 = !{i64 2153285527}
!41 = !{i64 2153285829}
!42 = !{!"auto-init"}
!43 = !{i64 2153294812}
!44 = !{i64 2153294654}
!45 = !{i64 2153294956}
!46 = !{i64 2147798824, i64 2147799104, i64 2147799438, i64 2147799772}
!47 = !{i64 2149433903}
!48 = !{!49}
!49 = distinct !{!49, !50, !"tk_xtime: argument 0"}
!50 = distinct !{!50, !"tk_xtime"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"timespec64_sub: argument 0"}
!53 = distinct !{!53, !"timespec64_sub"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"timespec64_sub: argument 0"}
!56 = distinct !{!56, !"timespec64_sub"}
!57 = !{i64 2149434204}
!58 = !{i64 2149440655}
!59 = !{i64 2149440787}
!60 = !{!61}
!61 = distinct !{!61, !62, !"tk_xtime: argument 0"}
!62 = distinct !{!62, !"tk_xtime"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"timespec64_add: argument 0"}
!65 = distinct !{!65, !"timespec64_add"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"timespec64_sub: argument 0"}
!68 = distinct !{!68, !"timespec64_sub"}
!69 = !{i64 2153332094}
!70 = !{i64 2153331936}
!71 = !{i64 2153332238}
!72 = !{i64 2153336740}
!73 = !{i64 2153336582}
!74 = !{i64 2153336884}
!75 = !{i64 2153344185}
!76 = !{i64 2153344027}
!77 = !{i64 2153344329}
!78 = !{!79}
!79 = distinct !{!79, !80, !"timespec64_sub: argument 0"}
!80 = distinct !{!80, !"timespec64_sub"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"timespec64_sub: argument 0"}
!83 = distinct !{!83, !"timespec64_sub"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"timespec64_sub: argument 0"}
!86 = distinct !{!86, !"timespec64_sub"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"tk_xtime: argument 0"}
!89 = distinct !{!89, !"tk_xtime"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"timespec64_sub: argument 0"}
!92 = distinct !{!92, !"timespec64_sub"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"timespec64_sub: argument 0"}
!95 = distinct !{!95, !"timespec64_sub"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"timespec64_add: argument 0"}
!98 = distinct !{!98, !"timespec64_add"}
!99 = !{i32 0, i32 33}
!100 = !{!101}
!101 = distinct !{!101, !102, !"timespec64_sub: argument 0"}
!102 = distinct !{!102, !"timespec64_sub"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"timespec64_sub: argument 0"}
!105 = distinct !{!105, !"timespec64_sub"}
!106 = !{i64 2153427268}
!107 = !{i64 2153427110}
!108 = !{i64 2153427412}
!109 = !{!110}
!110 = distinct !{!110, !111, !"tk_xtime: argument 0"}
!111 = distinct !{!111, !"tk_xtime"}
!112 = !{i64 2153432090}
!113 = !{i64 2153431932}
!114 = !{i64 2153432234}
!115 = !{!116}
!116 = distinct !{!116, !117, !"tk_xtime: argument 0"}
!117 = distinct !{!117, !"tk_xtime"}
!118 = !{i64 2153436802}
!119 = !{i64 2153436644}
!120 = !{i64 2153436946}
