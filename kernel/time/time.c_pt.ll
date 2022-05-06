; ModuleID = '/llk/IR/kernel/time/time.c_pt.bc'
source_filename = "../kernel/time/time.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sys_tz:\09\09\09\09\09"
module asm "\09.asciz \09\22sys_tz\22\09\09\09\09\09"
module asm "__kstrtabns_sys_tz:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jiffies_to_msecs:\09\09\09\09\09"
module asm "\09.asciz \09\22jiffies_to_msecs\22\09\09\09\09\09"
module asm "__kstrtabns_jiffies_to_msecs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jiffies_to_usecs:\09\09\09\09\09"
module asm "\09.asciz \09\22jiffies_to_usecs\22\09\09\09\09\09"
module asm "__kstrtabns_jiffies_to_usecs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mktime64:\09\09\09\09\09"
module asm "\09.asciz \09\22mktime64\22\09\09\09\09\09"
module asm "__kstrtabns_mktime64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ns_to_kernel_old_timeval:\09\09\09\09\09"
module asm "\09.asciz \09\22ns_to_kernel_old_timeval\22\09\09\09\09\09"
module asm "__kstrtabns_ns_to_kernel_old_timeval:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_normalized_timespec64:\09\09\09\09\09"
module asm "\09.asciz \09\22set_normalized_timespec64\22\09\09\09\09\09"
module asm "__kstrtabns_set_normalized_timespec64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ns_to_timespec64:\09\09\09\09\09"
module asm "\09.asciz \09\22ns_to_timespec64\22\09\09\09\09\09"
module asm "__kstrtabns_ns_to_timespec64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___msecs_to_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22__msecs_to_jiffies\22\09\09\09\09\09"
module asm "__kstrtabns___msecs_to_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___usecs_to_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22__usecs_to_jiffies\22\09\09\09\09\09"
module asm "__kstrtabns___usecs_to_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_timespec64_to_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22timespec64_to_jiffies\22\09\09\09\09\09"
module asm "__kstrtabns_timespec64_to_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jiffies_to_timespec64:\09\09\09\09\09"
module asm "\09.asciz \09\22jiffies_to_timespec64\22\09\09\09\09\09"
module asm "__kstrtabns_jiffies_to_timespec64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jiffies_to_clock_t:\09\09\09\09\09"
module asm "\09.asciz \09\22jiffies_to_clock_t\22\09\09\09\09\09"
module asm "__kstrtabns_jiffies_to_clock_t:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clock_t_to_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22clock_t_to_jiffies\22\09\09\09\09\09"
module asm "__kstrtabns_clock_t_to_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jiffies_64_to_clock_t:\09\09\09\09\09"
module asm "\09.asciz \09\22jiffies_64_to_clock_t\22\09\09\09\09\09"
module asm "__kstrtabns_jiffies_64_to_clock_t:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jiffies64_to_nsecs:\09\09\09\09\09"
module asm "\09.asciz \09\22jiffies64_to_nsecs\22\09\09\09\09\09"
module asm "__kstrtabns_jiffies64_to_nsecs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jiffies64_to_msecs:\09\09\09\09\09"
module asm "\09.asciz \09\22jiffies64_to_msecs\22\09\09\09\09\09"
module asm "__kstrtabns_jiffies64_to_msecs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nsecs_to_jiffies64:\09\09\09\09\09"
module asm "\09.asciz \09\22nsecs_to_jiffies64\22\09\09\09\09\09"
module asm "__kstrtabns_nsecs_to_jiffies64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nsecs_to_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22nsecs_to_jiffies\22\09\09\09\09\09"
module asm "__kstrtabns_nsecs_to_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_timespec64:\09\09\09\09\09"
module asm "\09.asciz \09\22get_timespec64\22\09\09\09\09\09"
module asm "__kstrtabns_get_timespec64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_timespec64:\09\09\09\09\09"
module asm "\09.asciz \09\22put_timespec64\22\09\09\09\09\09"
module asm "__kstrtabns_put_timespec64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_old_timespec32:\09\09\09\09\09"
module asm "\09.asciz \09\22get_old_timespec32\22\09\09\09\09\09"
module asm "__kstrtabns_get_old_timespec32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_old_timespec32:\09\09\09\09\09"
module asm "\09.asciz \09\22put_old_timespec32\22\09\09\09\09\09"
module asm "__kstrtabns_put_old_timespec32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_itimerspec64:\09\09\09\09\09"
module asm "\09.asciz \09\22get_itimerspec64\22\09\09\09\09\09"
module asm "__kstrtabns_get_itimerspec64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_itimerspec64:\09\09\09\09\09"
module asm "\09.asciz \09\22put_itimerspec64\22\09\09\09\09\09"
module asm "__kstrtabns_put_itimerspec64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_old_itimerspec32:\09\09\09\09\09"
module asm "\09.asciz \09\22get_old_itimerspec32\22\09\09\09\09\09"
module asm "__kstrtabns_get_old_itimerspec32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_old_itimerspec32:\09\09\09\09\09"
module asm "\09.asciz \09\22put_old_itimerspec32\22\09\09\09\09\09"
module asm "__kstrtabns_put_old_itimerspec32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.timezone = type { i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__kernel_old_timeval = type { i32, i32 }
%struct.old_timex32 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.old_timeval32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [44 x i8] }
%struct.old_timeval32 = type { i32, i32 }
%struct.__kernel_timex = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64, i64, %struct.__kernel_timex_timeval, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i32, [44 x i8] }
%struct.__kernel_timex_timeval = type { i64, i64 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.old_timespec32 = type { i32, i32 }
%struct.itimerspec64 = type { %struct.timespec64, %struct.timespec64 }
%struct.__kernel_itimerspec = type { %struct.__kernel_timespec, %struct.__kernel_timespec }
%struct.old_itimerspec32 = type { %struct.old_timespec32, %struct.old_timespec32 }

@sys_tz = dso_local global %struct.timezone zeroinitializer, align 8
@__kstrtab_sys_tz = external dso_local constant [0 x i8], align 1
@__kstrtabns_sys_tz = external dso_local constant [0 x i8], align 1
@__ksymtab_sys_tz = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sys_tz to i32), ptr @__kstrtab_sys_tz, ptr @__kstrtabns_sys_tz }, section "___ksymtab+sys_tz", align 4
@do_sys_settimeofday64.firsttime = internal unnamed_addr global i1 false, align 4
@__kstrtab_jiffies_to_msecs = external dso_local constant [0 x i8], align 1
@__kstrtabns_jiffies_to_msecs = external dso_local constant [0 x i8], align 1
@__ksymtab_jiffies_to_msecs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jiffies_to_msecs to i32), ptr @__kstrtab_jiffies_to_msecs, ptr @__kstrtabns_jiffies_to_msecs }, section "___ksymtab+jiffies_to_msecs", align 4
@__kstrtab_jiffies_to_usecs = external dso_local constant [0 x i8], align 1
@__kstrtabns_jiffies_to_usecs = external dso_local constant [0 x i8], align 1
@__ksymtab_jiffies_to_usecs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jiffies_to_usecs to i32), ptr @__kstrtab_jiffies_to_usecs, ptr @__kstrtabns_jiffies_to_usecs }, section "___ksymtab+jiffies_to_usecs", align 4
@__kstrtab_mktime64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_mktime64 = external dso_local constant [0 x i8], align 1
@__ksymtab_mktime64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mktime64 to i32), ptr @__kstrtab_mktime64, ptr @__kstrtabns_mktime64 }, section "___ksymtab+mktime64", align 4
@__kstrtab_ns_to_kernel_old_timeval = external dso_local constant [0 x i8], align 1
@__kstrtabns_ns_to_kernel_old_timeval = external dso_local constant [0 x i8], align 1
@__ksymtab_ns_to_kernel_old_timeval = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ns_to_kernel_old_timeval to i32), ptr @__kstrtab_ns_to_kernel_old_timeval, ptr @__kstrtabns_ns_to_kernel_old_timeval }, section "___ksymtab+ns_to_kernel_old_timeval", align 4
@__kstrtab_set_normalized_timespec64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_normalized_timespec64 = external dso_local constant [0 x i8], align 1
@__ksymtab_set_normalized_timespec64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_normalized_timespec64 to i32), ptr @__kstrtab_set_normalized_timespec64, ptr @__kstrtabns_set_normalized_timespec64 }, section "___ksymtab+set_normalized_timespec64", align 4
@__kstrtab_ns_to_timespec64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_ns_to_timespec64 = external dso_local constant [0 x i8], align 1
@__ksymtab_ns_to_timespec64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ns_to_timespec64 to i32), ptr @__kstrtab_ns_to_timespec64, ptr @__kstrtabns_ns_to_timespec64 }, section "___ksymtab+ns_to_timespec64", align 4
@__kstrtab___msecs_to_jiffies = external dso_local constant [0 x i8], align 1
@__kstrtabns___msecs_to_jiffies = external dso_local constant [0 x i8], align 1
@__ksymtab___msecs_to_jiffies = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__msecs_to_jiffies to i32), ptr @__kstrtab___msecs_to_jiffies, ptr @__kstrtabns___msecs_to_jiffies }, section "___ksymtab+__msecs_to_jiffies", align 4
@__kstrtab___usecs_to_jiffies = external dso_local constant [0 x i8], align 1
@__kstrtabns___usecs_to_jiffies = external dso_local constant [0 x i8], align 1
@__ksymtab___usecs_to_jiffies = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__usecs_to_jiffies to i32), ptr @__kstrtab___usecs_to_jiffies, ptr @__kstrtabns___usecs_to_jiffies }, section "___ksymtab+__usecs_to_jiffies", align 4
@__kstrtab_timespec64_to_jiffies = external dso_local constant [0 x i8], align 1
@__kstrtabns_timespec64_to_jiffies = external dso_local constant [0 x i8], align 1
@__ksymtab_timespec64_to_jiffies = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @timespec64_to_jiffies to i32), ptr @__kstrtab_timespec64_to_jiffies, ptr @__kstrtabns_timespec64_to_jiffies }, section "___ksymtab+timespec64_to_jiffies", align 4
@__kstrtab_jiffies_to_timespec64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_jiffies_to_timespec64 = external dso_local constant [0 x i8], align 1
@__ksymtab_jiffies_to_timespec64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jiffies_to_timespec64 to i32), ptr @__kstrtab_jiffies_to_timespec64, ptr @__kstrtabns_jiffies_to_timespec64 }, section "___ksymtab+jiffies_to_timespec64", align 4
@__kstrtab_jiffies_to_clock_t = external dso_local constant [0 x i8], align 1
@__kstrtabns_jiffies_to_clock_t = external dso_local constant [0 x i8], align 1
@__ksymtab_jiffies_to_clock_t = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jiffies_to_clock_t to i32), ptr @__kstrtab_jiffies_to_clock_t, ptr @__kstrtabns_jiffies_to_clock_t }, section "___ksymtab+jiffies_to_clock_t", align 4
@__kstrtab_clock_t_to_jiffies = external dso_local constant [0 x i8], align 1
@__kstrtabns_clock_t_to_jiffies = external dso_local constant [0 x i8], align 1
@__ksymtab_clock_t_to_jiffies = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clock_t_to_jiffies to i32), ptr @__kstrtab_clock_t_to_jiffies, ptr @__kstrtabns_clock_t_to_jiffies }, section "___ksymtab+clock_t_to_jiffies", align 4
@__kstrtab_jiffies_64_to_clock_t = external dso_local constant [0 x i8], align 1
@__kstrtabns_jiffies_64_to_clock_t = external dso_local constant [0 x i8], align 1
@__ksymtab_jiffies_64_to_clock_t = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jiffies_64_to_clock_t to i32), ptr @__kstrtab_jiffies_64_to_clock_t, ptr @__kstrtabns_jiffies_64_to_clock_t }, section "___ksymtab+jiffies_64_to_clock_t", align 4
@__kstrtab_jiffies64_to_nsecs = external dso_local constant [0 x i8], align 1
@__kstrtabns_jiffies64_to_nsecs = external dso_local constant [0 x i8], align 1
@__ksymtab_jiffies64_to_nsecs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jiffies64_to_nsecs to i32), ptr @__kstrtab_jiffies64_to_nsecs, ptr @__kstrtabns_jiffies64_to_nsecs }, section "___ksymtab+jiffies64_to_nsecs", align 4
@__kstrtab_jiffies64_to_msecs = external dso_local constant [0 x i8], align 1
@__kstrtabns_jiffies64_to_msecs = external dso_local constant [0 x i8], align 1
@__ksymtab_jiffies64_to_msecs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jiffies64_to_msecs to i32), ptr @__kstrtab_jiffies64_to_msecs, ptr @__kstrtabns_jiffies64_to_msecs }, section "___ksymtab+jiffies64_to_msecs", align 4
@__kstrtab_nsecs_to_jiffies64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_nsecs_to_jiffies64 = external dso_local constant [0 x i8], align 1
@__ksymtab_nsecs_to_jiffies64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nsecs_to_jiffies64 to i32), ptr @__kstrtab_nsecs_to_jiffies64, ptr @__kstrtabns_nsecs_to_jiffies64 }, section "___ksymtab+nsecs_to_jiffies64", align 4
@__kstrtab_nsecs_to_jiffies = external dso_local constant [0 x i8], align 1
@__kstrtabns_nsecs_to_jiffies = external dso_local constant [0 x i8], align 1
@__ksymtab_nsecs_to_jiffies = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nsecs_to_jiffies to i32), ptr @__kstrtab_nsecs_to_jiffies, ptr @__kstrtabns_nsecs_to_jiffies }, section "___ksymtab_gpl+nsecs_to_jiffies", align 4
@__kstrtab_get_timespec64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_timespec64 = external dso_local constant [0 x i8], align 1
@__ksymtab_get_timespec64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_timespec64 to i32), ptr @__kstrtab_get_timespec64, ptr @__kstrtabns_get_timespec64 }, section "___ksymtab_gpl+get_timespec64", align 4
@__kstrtab_put_timespec64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_timespec64 = external dso_local constant [0 x i8], align 1
@__ksymtab_put_timespec64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_timespec64 to i32), ptr @__kstrtab_put_timespec64, ptr @__kstrtabns_put_timespec64 }, section "___ksymtab_gpl+put_timespec64", align 4
@__kstrtab_get_old_timespec32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_old_timespec32 = external dso_local constant [0 x i8], align 1
@__ksymtab_get_old_timespec32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_old_timespec32 to i32), ptr @__kstrtab_get_old_timespec32, ptr @__kstrtabns_get_old_timespec32 }, section "___ksymtab_gpl+get_old_timespec32", align 4
@__kstrtab_put_old_timespec32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_old_timespec32 = external dso_local constant [0 x i8], align 1
@__ksymtab_put_old_timespec32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_old_timespec32 to i32), ptr @__kstrtab_put_old_timespec32, ptr @__kstrtabns_put_old_timespec32 }, section "___ksymtab_gpl+put_old_timespec32", align 4
@__kstrtab_get_itimerspec64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_itimerspec64 = external dso_local constant [0 x i8], align 1
@__ksymtab_get_itimerspec64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_itimerspec64 to i32), ptr @__kstrtab_get_itimerspec64, ptr @__kstrtabns_get_itimerspec64 }, section "___ksymtab_gpl+get_itimerspec64", align 4
@__kstrtab_put_itimerspec64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_itimerspec64 = external dso_local constant [0 x i8], align 1
@__ksymtab_put_itimerspec64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_itimerspec64 to i32), ptr @__kstrtab_put_itimerspec64, ptr @__kstrtabns_put_itimerspec64 }, section "___ksymtab_gpl+put_itimerspec64", align 4
@__kstrtab_get_old_itimerspec32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_old_itimerspec32 = external dso_local constant [0 x i8], align 1
@__ksymtab_get_old_itimerspec32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_old_itimerspec32 to i32), ptr @__kstrtab_get_old_itimerspec32, ptr @__kstrtabns_get_old_itimerspec32 }, section "___ksymtab_gpl+get_old_itimerspec32", align 4
@__kstrtab_put_old_itimerspec32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_old_itimerspec32 = external dso_local constant [0 x i8], align 1
@__ksymtab_put_old_itimerspec32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_old_itimerspec32 to i32), ptr @__kstrtab_put_old_itimerspec32, ptr @__kstrtabns_put_old_itimerspec32 }, section "___ksymtab_gpl+put_old_itimerspec32", align 4
@llvm.compiler.used = appending global [26 x ptr] [ptr @__ksymtab___msecs_to_jiffies, ptr @__ksymtab___usecs_to_jiffies, ptr @__ksymtab_clock_t_to_jiffies, ptr @__ksymtab_get_itimerspec64, ptr @__ksymtab_get_old_itimerspec32, ptr @__ksymtab_get_old_timespec32, ptr @__ksymtab_get_timespec64, ptr @__ksymtab_jiffies64_to_msecs, ptr @__ksymtab_jiffies64_to_nsecs, ptr @__ksymtab_jiffies_64_to_clock_t, ptr @__ksymtab_jiffies_to_clock_t, ptr @__ksymtab_jiffies_to_msecs, ptr @__ksymtab_jiffies_to_timespec64, ptr @__ksymtab_jiffies_to_usecs, ptr @__ksymtab_mktime64, ptr @__ksymtab_ns_to_kernel_old_timeval, ptr @__ksymtab_ns_to_timespec64, ptr @__ksymtab_nsecs_to_jiffies, ptr @__ksymtab_nsecs_to_jiffies64, ptr @__ksymtab_put_itimerspec64, ptr @__ksymtab_put_old_itimerspec32, ptr @__ksymtab_put_old_timespec32, ptr @__ksymtab_put_timespec64, ptr @__ksymtab_set_normalized_timespec64, ptr @__ksymtab_sys_tz, ptr @__ksymtab_timespec64_to_jiffies], section "llvm.metadata"

@sys_gettimeofday = dso_local alias i32 (ptr, ptr), ptr @__se_sys_gettimeofday
@sys_settimeofday = dso_local alias i32 (ptr, ptr), ptr @__se_sys_settimeofday
@sys_adjtimex_time32 = dso_local alias i32 (ptr), ptr @__se_sys_adjtimex_time32

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_gettimeofday(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = inttoptr i32 %0 to ptr
  %5 = inttoptr i32 %1 to ptr
  %6 = icmp eq i32 %0, 0
  br i1 %6, label %29, label %7, !prof !8

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #9, !annotation !9
  call void @ktime_get_real_ts64(ptr noundef nonnull %3) #9
  %8 = load i64, ptr %3, align 8
  %9 = trunc i64 %8 to i32
  %10 = tail call ptr @llvm.thread.pointer() #9
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #10, !srcloc !10
  %13 = and i32 %12, -13
  %14 = or i32 %13, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %15 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %4, i32 %9, i32 -1090519041) #9, !srcloc !13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.__kernel_old_timeval, ptr %4, i32 0, i32 1
  %19 = getelementptr inbounds %struct.timespec64, ptr %3, i32 0, i32 1
  %20 = load i32, ptr %19, align 8
  %21 = sdiv i32 %20, 1000
  %22 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #10, !srcloc !10
  %23 = and i32 %22, -13
  %24 = or i32 %23, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %25 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %18, i32 %21, i32 -1090519041) #9, !srcloc !14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %17, %7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  br label %44

28:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  br label %29

29:                                               ; preds = %28, %2
  %30 = icmp eq i32 %1, 0
  br i1 %30, label %43, label %31, !prof !15

31:                                               ; preds = %29
  %32 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %5, i32 8, i32 -1090519040) #11, !srcloc !16
  %33 = extractvalue { i32, i32 } %32, 0
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = tail call ptr @llvm.thread.pointer() #9
  %37 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 3
  %38 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %37) #10, !srcloc !10
  %39 = and i32 %38, -13
  %40 = or i32 %39, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %41 = call i32 @arm_copy_to_user(ptr noundef nonnull %5, ptr noundef nonnull @sys_tz, i32 noundef 8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35, %29
  br label %44

44:                                               ; preds = %43, %35, %31, %27
  %45 = phi i32 [ 0, %43 ], [ -14, %35 ], [ -14, %27 ], [ -14, %31 ]
  ret i32 %45
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_sys_settimeofday64(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %0, align 8
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.timespec64, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 8
  %10 = icmp ult i32 %9, 1000000000
  %11 = icmp ult i64 %5, 8277292036
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %30

13:                                               ; preds = %7, %2
  %14 = tail call i32 @cap_settime(ptr noundef %0, ptr noundef %1) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = icmp eq ptr %1, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %16
  %19 = load i32, ptr %1, align 4
  %20 = add i32 %19, -901
  %21 = icmp ult i32 %20, -1801
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = load i64, ptr %1, align 4
  store i64 %23, ptr @sys_tz, align 8
  tail call void @update_vsyscall_tz() #9
  %24 = load i1, ptr @do_sys_settimeofday64.firsttime, align 4
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  store i1 true, ptr @do_sys_settimeofday64.firsttime, align 4
  br i1 %3, label %26, label %28

26:                                               ; preds = %25
  tail call void @timekeeping_warp_clock() #9
  br label %30

27:                                               ; preds = %22, %16
  br i1 %3, label %30, label %28

28:                                               ; preds = %27, %25
  %29 = tail call i32 @do_settimeofday64(ptr noundef nonnull %0) #9
  br label %30

30:                                               ; preds = %28, %27, %26, %18, %13, %7, %4
  %31 = phi i32 [ %29, %28 ], [ -22, %7 ], [ %14, %13 ], [ -22, %18 ], [ 0, %26 ], [ 0, %27 ], [ -22, %4 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_vsyscall_tz() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @timekeeping_warp_clock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_settimeofday64(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_settimeofday(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = alloca %struct.timezone, align 8
  %5 = inttoptr i32 %0 to ptr
  %6 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #9, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store i64 0, ptr %4, align 8, !annotation !9
  %7 = icmp eq i32 %0, 0
  br i1 %7, label %34, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @llvm.thread.pointer() #9
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #10, !srcloc !10
  %12 = and i32 %11, -13
  %13 = or i32 %12, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %14 = tail call { i32, i64 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr nonnull %5, i32 -1090519041) #9, !srcloc !17
  %15 = extractvalue { i32, i64 } %14, 0
  %16 = extractvalue { i32, i64 } %14, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %17 = shl i64 %16, 32
  %18 = ashr exact i64 %17, 32
  store i64 %18, ptr %3, align 8
  %19 = icmp eq i32 %15, 0
  br i1 %19, label %20, label %80

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.__kernel_old_timeval, ptr %5, i32 0, i32 1
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #10, !srcloc !10
  %23 = and i32 %22, -13
  %24 = or i32 %23, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %25 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %21, i32 -1090519041) #9, !srcloc !18
  %26 = extractvalue { i32, i32 } %25, 0
  %27 = extractvalue { i32, i32 } %25, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %28 = getelementptr inbounds %struct.timespec64, ptr %3, i32 0, i32 1
  %29 = icmp eq i32 %26, 0
  br i1 %29, label %30, label %80

30:                                               ; preds = %20
  %31 = icmp ugt i32 %27, 1000000
  br i1 %31, label %80, label %32

32:                                               ; preds = %30
  %33 = mul nuw nsw i32 %27, 1000
  store i32 %33, ptr %28, align 8
  br label %34

34:                                               ; preds = %32, %2
  %35 = phi i32 [ %33, %32 ], [ 0, %2 ]
  %36 = icmp eq i32 %1, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %34
  %38 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %6, i32 8, i32 -1090519040) #11, !srcloc !19
  %39 = extractvalue { i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %49, !prof !15

41:                                               ; preds = %37
  %42 = tail call ptr @llvm.thread.pointer() #9
  %43 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 3
  %44 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %43) #10, !srcloc !10
  %45 = and i32 %44, -13
  %46 = or i32 %45, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %46) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %47 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef nonnull %6, i32 noundef 8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49, !prof !15

49:                                               ; preds = %41, %37
  %50 = phi i32 [ %47, %41 ], [ 8, %37 ]
  %51 = sub i32 8, %50
  %52 = getelementptr i8, ptr %4, i32 %51
  call void @llvm.memset.p0.i32(ptr align 1 %52, i8 0, i32 %50, i1 false) #9
  br label %80

53:                                               ; preds = %41, %34
  %54 = phi ptr [ null, %34 ], [ %4, %41 ]
  %55 = select i1 %7, ptr null, ptr %3
  br i1 %7, label %63, label %56

56:                                               ; preds = %53
  %57 = load i64, ptr %55, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %80, label %59

59:                                               ; preds = %56
  %60 = icmp ult i32 %35, 1000000000
  %61 = icmp ult i64 %57, 8277292036
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %63, label %80

63:                                               ; preds = %59, %53
  %64 = call i32 @cap_settime(ptr noundef %55, ptr noundef %54) #9
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %63
  %67 = icmp eq ptr %54, null
  br i1 %67, label %77, label %68

68:                                               ; preds = %66
  %69 = load i32, ptr %54, align 8
  %70 = add i32 %69, -901
  %71 = icmp ult i32 %70, -1801
  br i1 %71, label %80, label %72

72:                                               ; preds = %68
  %73 = load i64, ptr %54, align 8
  store i64 %73, ptr @sys_tz, align 8
  call void @update_vsyscall_tz() #9
  %74 = load i1, ptr @do_sys_settimeofday64.firsttime, align 4
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  store i1 true, ptr @do_sys_settimeofday64.firsttime, align 4
  br i1 %7, label %76, label %78

76:                                               ; preds = %75
  call void @timekeeping_warp_clock() #9
  br label %80

77:                                               ; preds = %72, %66
  br i1 %7, label %80, label %78

78:                                               ; preds = %77, %75
  %79 = call i32 @do_settimeofday64(ptr noundef nonnull %55) #9
  br label %80

80:                                               ; preds = %78, %77, %76, %68, %63, %59, %56, %49, %30, %20, %8
  %81 = phi i32 [ -14, %20 ], [ -14, %8 ], [ -22, %30 ], [ %79, %78 ], [ -22, %59 ], [ %64, %63 ], [ -22, %68 ], [ 0, %76 ], [ 0, %77 ], [ -22, %56 ], [ -14, %49 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_old_timex32(ptr noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.old_timex32, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %3, i8 0, i32 128, i1 false), !annotation !9
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(208) %0, i8 0, i32 208, i1 false)
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 128, i32 -1090519040) #11, !srcloc !19
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15, !prof !15

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #9
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #10, !srcloc !10
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %13 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 128) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !15

15:                                               ; preds = %7, %2
  %16 = phi i32 [ %13, %7 ], [ 128, %2 ]
  %17 = sub i32 128, %16
  %18 = getelementptr i8, ptr %3, i32 %17
  call void @llvm.memset.p0.i32(ptr align 1 %18, i8 0, i32 %16, i1 false) #9
  br label %95

19:                                               ; preds = %7
  %20 = load i32, ptr %3, align 4
  store i32 %20, ptr %0, align 8
  %21 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 2
  store i64 %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 3
  store i64 %27, ptr %28, align 8
  %29 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 4
  store i64 %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 5
  store i64 %35, ptr %36, align 8
  %37 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 5
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 6
  store i32 %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 8
  store i64 %42, ptr %43, align 8
  %44 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 9
  store i64 %46, ptr %47, align 8
  %48 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 8
  %49 = load i32, ptr %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 10
  store i64 %50, ptr %51, align 8
  %52 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 9
  %53 = load i32, ptr %52, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 11
  store i64 %54, ptr %55, align 8
  %56 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 9, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 11, i32 1
  store i64 %58, ptr %59, align 8
  %60 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 10
  %61 = load i32, ptr %60, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 12
  store i64 %62, ptr %63, align 8
  %64 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 11
  %65 = load i32, ptr %64, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 13
  store i64 %66, ptr %67, align 8
  %68 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 12
  %69 = load i32, ptr %68, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 14
  store i64 %70, ptr %71, align 8
  %72 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 13
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 15
  store i32 %73, ptr %74, align 8
  %75 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 14
  %76 = load i32, ptr %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 17
  store i64 %77, ptr %78, align 8
  %79 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 15
  %80 = load i32, ptr %79, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 18
  store i64 %81, ptr %82, align 8
  %83 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 16
  %84 = load i32, ptr %83, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 19
  store i64 %85, ptr %86, align 8
  %87 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 17
  %88 = load i32, ptr %87, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 20
  store i64 %89, ptr %90, align 8
  %91 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 18
  %92 = load i32, ptr %91, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 21
  store i64 %93, ptr %94, align 8
  br label %95

95:                                               ; preds = %19, %15
  %96 = phi i32 [ 0, %19 ], [ -14, %15 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #9
  ret i32 %96
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @put_old_timex32(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.old_timex32, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #9
  %4 = getelementptr inbounds i8, ptr %3, i32 84
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(44) %4, i8 0, i64 44, i1 false)
  %5 = load i32, ptr %1, align 8
  store i32 %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.__kernel_timex, ptr %1, i32 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.__kernel_timex, ptr %1, i32 0, i32 3
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 2
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.__kernel_timex, ptr %1, i32 0, i32 4
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 3
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.__kernel_timex, ptr %1, i32 0, i32 5
  %19 = load i64, ptr %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 4
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.__kernel_timex, ptr %1, i32 0, i32 6
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 5
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.__kernel_timex, ptr %1, i32 0, i32 8
  %26 = load i64, ptr %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 6
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.__kernel_timex, ptr %1, i32 0, i32 9
  %30 = load i64, ptr %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 7
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.__kernel_timex, ptr %1, i32 0, i32 10
  %34 = load i64, ptr %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 8
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.__kernel_timex, ptr %1, i32 0, i32 11
  %38 = load i64, ptr %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 9
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.__kernel_timex, ptr %1, i32 0, i32 11, i32 1
  %42 = load i64, ptr %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 9, i32 1
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.__kernel_timex, ptr %1, i32 0, i32 12
  %46 = load i64, ptr %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 10
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.__kernel_timex, ptr %1, i32 0, i32 13
  %50 = load i64, ptr %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 11
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.__kernel_timex, ptr %1, i32 0, i32 14
  %54 = load i64, ptr %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 12
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.__kernel_timex, ptr %1, i32 0, i32 15
  %58 = load i32, ptr %57, align 8
  %59 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 13
  store i32 %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.__kernel_timex, ptr %1, i32 0, i32 17
  %61 = load i64, ptr %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 14
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.__kernel_timex, ptr %1, i32 0, i32 18
  %65 = load i64, ptr %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 15
  store i32 %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.__kernel_timex, ptr %1, i32 0, i32 19
  %69 = load i64, ptr %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 16
  store i32 %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.__kernel_timex, ptr %1, i32 0, i32 20
  %73 = load i64, ptr %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 17
  store i32 %74, ptr %75, align 4
  %76 = getelementptr inbounds %struct.__kernel_timex, ptr %1, i32 0, i32 21
  %77 = load i64, ptr %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 18
  store i32 %78, ptr %79, align 4
  %80 = getelementptr inbounds %struct.__kernel_timex, ptr %1, i32 0, i32 22
  %81 = load i32, ptr %80, align 8
  %82 = getelementptr inbounds %struct.old_timex32, ptr %3, i32 0, i32 19
  store i32 %81, ptr %82, align 4
  %83 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 128, i32 -1090519040) #11, !srcloc !16
  %84 = extractvalue { i32, i32 } %83, 0
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %2
  %87 = tail call ptr @llvm.thread.pointer() #9
  %88 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 3
  %89 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %88) #10, !srcloc !10
  %90 = and i32 %89, -13
  %91 = or i32 %90, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %91) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %92 = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 128) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %89) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %93 = icmp eq i32 %92, 0
  %94 = select i1 %93, i32 0, i32 -14
  br label %95

95:                                               ; preds = %86, %2
  %96 = phi i32 [ -14, %2 ], [ %94, %86 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #9
  ret i32 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_adjtimex_time32(i32 noundef %0) #0 {
  %2 = alloca %struct.old_timex32, align 4
  %3 = alloca %struct.__kernel_timex, align 8
  %4 = inttoptr i32 %0 to ptr
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(208) %3, i8 0, i32 208, i1 false) #9, !annotation !9
  %5 = call i32 @get_old_timex32(ptr noundef nonnull %3, ptr noundef %4) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %101

7:                                                ; preds = %1
  %8 = call i32 @do_adjtimex(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #9
  %9 = getelementptr inbounds i8, ptr %2, i32 84
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(44) %9, i8 0, i64 44, i1 false) #9
  %10 = load i32, ptr %3, align 8
  store i32 %10, ptr %2, align 4
  %11 = getelementptr inbounds %struct.__kernel_timex, ptr %3, i32 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = getelementptr inbounds %struct.old_timex32, ptr %2, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.__kernel_timex, ptr %3, i32 0, i32 3
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = getelementptr inbounds %struct.old_timex32, ptr %2, i32 0, i32 2
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.__kernel_timex, ptr %3, i32 0, i32 4
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = getelementptr inbounds %struct.old_timex32, ptr %2, i32 0, i32 3
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.__kernel_timex, ptr %3, i32 0, i32 5
  %24 = load i64, ptr %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = getelementptr inbounds %struct.old_timex32, ptr %2, i32 0, i32 4
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.__kernel_timex, ptr %3, i32 0, i32 6
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr inbounds %struct.old_timex32, ptr %2, i32 0, i32 5
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.__kernel_timex, ptr %3, i32 0, i32 8
  %31 = load i64, ptr %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = getelementptr inbounds %struct.old_timex32, ptr %2, i32 0, i32 6
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.__kernel_timex, ptr %3, i32 0, i32 9
  %35 = load i64, ptr %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = getelementptr inbounds %struct.old_timex32, ptr %2, i32 0, i32 7
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.__kernel_timex, ptr %3, i32 0, i32 10
  %39 = load i64, ptr %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = getelementptr inbounds %struct.old_timex32, ptr %2, i32 0, i32 8
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.__kernel_timex, ptr %3, i32 0, i32 11
  %43 = load i64, ptr %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = getelementptr inbounds %struct.old_timex32, ptr %2, i32 0, i32 9
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.__kernel_timex, ptr %3, i32 0, i32 11, i32 1
  %47 = load i64, ptr %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = getelementptr inbounds %struct.old_timex32, ptr %2, i32 0, i32 9, i32 1
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.__kernel_timex, ptr %3, i32 0, i32 12
  %51 = load i64, ptr %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = getelementptr inbounds %struct.old_timex32, ptr %2, i32 0, i32 10
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.__kernel_timex, ptr %3, i32 0, i32 13
  %55 = load i64, ptr %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = getelementptr inbounds %struct.old_timex32, ptr %2, i32 0, i32 11
  store i32 %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.__kernel_timex, ptr %3, i32 0, i32 14
  %59 = load i64, ptr %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = getelementptr inbounds %struct.old_timex32, ptr %2, i32 0, i32 12
  store i32 %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.__kernel_timex, ptr %3, i32 0, i32 15
  %63 = load i32, ptr %62, align 8
  %64 = getelementptr inbounds %struct.old_timex32, ptr %2, i32 0, i32 13
  store i32 %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.__kernel_timex, ptr %3, i32 0, i32 17
  %66 = load i64, ptr %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = getelementptr inbounds %struct.old_timex32, ptr %2, i32 0, i32 14
  store i32 %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.__kernel_timex, ptr %3, i32 0, i32 18
  %70 = load i64, ptr %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = getelementptr inbounds %struct.old_timex32, ptr %2, i32 0, i32 15
  store i32 %71, ptr %72, align 4
  %73 = getelementptr inbounds %struct.__kernel_timex, ptr %3, i32 0, i32 19
  %74 = load i64, ptr %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = getelementptr inbounds %struct.old_timex32, ptr %2, i32 0, i32 16
  store i32 %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.__kernel_timex, ptr %3, i32 0, i32 20
  %78 = load i64, ptr %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = getelementptr inbounds %struct.old_timex32, ptr %2, i32 0, i32 17
  store i32 %79, ptr %80, align 4
  %81 = getelementptr inbounds %struct.__kernel_timex, ptr %3, i32 0, i32 21
  %82 = load i64, ptr %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = getelementptr inbounds %struct.old_timex32, ptr %2, i32 0, i32 18
  store i32 %83, ptr %84, align 4
  %85 = getelementptr inbounds %struct.__kernel_timex, ptr %3, i32 0, i32 22
  %86 = load i32, ptr %85, align 8
  %87 = getelementptr inbounds %struct.old_timex32, ptr %2, i32 0, i32 19
  store i32 %86, ptr %87, align 4
  %88 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 128, i32 -1090519040) #11, !srcloc !16
  %89 = extractvalue { i32, i32 } %88, 0
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %7
  %92 = tail call ptr @llvm.thread.pointer() #9
  %93 = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 3
  %94 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %93) #10, !srcloc !10
  %95 = and i32 %94, -13
  %96 = or i32 %95, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %96) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %97 = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %2, i32 noundef 128) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %94) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %91, %7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #9
  br label %101

100:                                              ; preds = %91
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #9
  br label %101

101:                                              ; preds = %100, %99, %1
  %102 = phi i32 [ %5, %1 ], [ %8, %100 ], [ -14, %99 ]
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %3) #9
  ret i32 %102
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @jiffies_to_msecs(i32 noundef %0) #4 {
  %2 = mul i32 %0, 10
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @jiffies_to_usecs(i32 noundef %0) #4 {
  %2 = mul i32 %0, 10000
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i64 @mktime64(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #4 {
  %7 = add i32 %1, -2
  %8 = icmp slt i32 %7, 1
  %9 = add i32 %1, 10
  %10 = select i1 %8, i32 %9, i32 %7
  %11 = sext i1 %8 to i32
  %12 = add i32 %11, %0
  %13 = lshr i32 %12, 2
  %14 = udiv i32 %12, 100
  %15 = udiv i32 %12, 400
  %16 = mul i32 %10, 367
  %17 = udiv i32 %16, 12
  %18 = sub i32 %2, %14
  %19 = add i32 %18, %13
  %20 = add i32 %19, %15
  %21 = add i32 %20, %17
  %22 = zext i32 %21 to i64
  %23 = mul i32 %12, 365
  %24 = zext i32 %23 to i64
  %25 = add nuw nsw i64 %22, %24
  %26 = mul nuw nsw i64 %25, 24
  %27 = zext i32 %3 to i64
  %28 = add nsw i64 %27, -17267976
  %29 = add nsw i64 %28, %26
  %30 = mul nsw i64 %29, 60
  %31 = zext i32 %4 to i64
  %32 = add nsw i64 %30, %31
  %33 = mul nsw i64 %32, 60
  %34 = zext i32 %5 to i64
  %35 = add nsw i64 %33, %34
  ret i64 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ns_to_kernel_old_timeval(ptr noalias nocapture writeonly sret(%struct.__kernel_old_timeval) align 4 %0, i64 noundef %1) #0 {
  %3 = icmp sgt i64 %1, 0
  br i1 %3, label %4, label %15, !prof !15

4:                                                ; preds = %2
  %5 = trunc i64 %1 to i32
  %6 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %1, i32 0) #11, !srcloc !20
  %7 = extractvalue { i64, i32 } %6, 0
  %8 = extractvalue { i64, i32 } %6, 1
  %9 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %1, i64 %7, i32 %8) #11, !srcloc !21
  %10 = extractvalue { i64, i32 } %9, 0
  %11 = lshr i64 %10, 29
  %12 = trunc i64 %11 to i32
  %13 = mul i32 %12, -1000000000
  %14 = add i32 %13, %5
  br label %31

15:                                               ; preds = %2
  %16 = icmp slt i64 %1, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %15
  %18 = xor i64 %1, -1
  %19 = trunc i64 %1 to i32
  %20 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %18, i32 0) #11, !srcloc !20
  %21 = extractvalue { i64, i32 } %20, 0
  %22 = extractvalue { i64, i32 } %20, 1
  %23 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %18, i64 %21, i32 %22) #11, !srcloc !21
  %24 = extractvalue { i64, i32 } %23, 0
  %25 = lshr i64 %24, 29
  %26 = trunc i64 %25 to i32
  %27 = mul i32 %26, 1000000000
  %28 = add i32 %19, 1000000000
  %29 = add i32 %28, %27
  %30 = xor i32 %26, -1
  br label %31

31:                                               ; preds = %17, %15, %4
  %32 = phi i32 [ 0, %15 ], [ %12, %4 ], [ %30, %17 ]
  %33 = phi i32 [ 0, %15 ], [ %14, %4 ], [ %29, %17 ]
  store i32 %32, ptr %0, align 4
  %34 = sdiv i32 %33, 1000
  %35 = getelementptr inbounds %struct.__kernel_old_timeval, ptr %0, i32 0, i32 1
  store i32 %34, ptr %35, align 4
  ret void
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync)
define dso_local void @ns_to_timespec64(ptr noalias nocapture writeonly sret(%struct.timespec64) align 8 %0, i64 noundef %1) #5 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(16) %0, i8 0, i32 16, i1 false)
  %3 = icmp sgt i64 %1, 0
  br i1 %3, label %4, label %15, !prof !15

4:                                                ; preds = %2
  %5 = trunc i64 %1 to i32
  %6 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %1, i32 0) #11, !srcloc !20
  %7 = extractvalue { i64, i32 } %6, 0
  %8 = extractvalue { i64, i32 } %6, 1
  %9 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %1, i64 %7, i32 %8) #11, !srcloc !21
  %10 = extractvalue { i64, i32 } %9, 0
  %11 = lshr i64 %10, 29
  %12 = trunc i64 %11 to i32
  %13 = mul i32 %12, -1000000000
  %14 = add i32 %13, %5
  store i64 %11, ptr %0, align 8
  br label %31

15:                                               ; preds = %2
  %16 = icmp slt i64 %1, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %15
  %18 = xor i64 %1, -1
  %19 = trunc i64 %1 to i32
  %20 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %18, i32 0) #11, !srcloc !20
  %21 = extractvalue { i64, i32 } %20, 0
  %22 = extractvalue { i64, i32 } %20, 1
  %23 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %18, i64 %21, i32 %22) #11, !srcloc !21
  %24 = extractvalue { i64, i32 } %23, 0
  %25 = lshr i64 %24, 29
  %26 = trunc i64 %25 to i32
  %27 = xor i64 %25, -1
  store i64 %27, ptr %0, align 8
  %28 = mul i32 %26, 1000000000
  %29 = add i32 %19, 1000000000
  %30 = add i32 %29, %28
  br label %31

31:                                               ; preds = %17, %4
  %32 = phi i32 [ %30, %17 ], [ %14, %4 ]
  %33 = getelementptr inbounds %struct.timespec64, ptr %0, i32 0, i32 1
  store i32 %32, ptr %33, align 8
  br label %34

34:                                               ; preds = %31, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_normalized_timespec64(ptr nocapture noundef writeonly %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i64, align 8
  store i64 %2, ptr %4, align 8
  %5 = icmp sgt i64 %2, 999999999
  br i1 %5, label %6, label %13

6:                                                ; preds = %6, %3
  %7 = phi i64 [ %11, %6 ], [ %1, %3 ]
  %8 = phi i64 [ %10, %6 ], [ %2, %3 ]
  call void asm "", "=*rm,0"(ptr nonnull elementtype(i64) %4, i64 %8) #9, !srcloc !22
  %9 = load i64, ptr %4, align 8
  %10 = add i64 %9, -1000000000
  store i64 %10, ptr %4, align 8
  %11 = add i64 %7, 1
  %12 = icmp sgt i64 %10, 999999999
  br i1 %12, label %6, label %13

13:                                               ; preds = %6, %3
  %14 = phi i64 [ %2, %3 ], [ %10, %6 ]
  %15 = phi i64 [ %1, %3 ], [ %11, %6 ]
  %16 = icmp slt i64 %14, 0
  %17 = trunc i64 %14 to i32
  br i1 %16, label %18, label %27

18:                                               ; preds = %18, %13
  %19 = phi i64 [ %23, %18 ], [ %15, %13 ]
  %20 = phi i64 [ %22, %18 ], [ %14, %13 ]
  call void asm "", "=*rm,0"(ptr nonnull elementtype(i64) %4, i64 %20) #9, !srcloc !23
  %21 = load i64, ptr %4, align 8
  %22 = add i64 %21, 1000000000
  store i64 %22, ptr %4, align 8
  %23 = add i64 %19, -1
  %24 = icmp slt i64 %22, 0
  br i1 %24, label %18, label %25

25:                                               ; preds = %18
  %26 = trunc i64 %22 to i32
  br label %27

27:                                               ; preds = %25, %13
  %28 = phi i32 [ %17, %13 ], [ %26, %25 ]
  %29 = phi i64 [ %15, %13 ], [ %23, %25 ]
  store i64 %29, ptr %0, align 8
  %30 = getelementptr inbounds %struct.timespec64, ptr %0, i32 0, i32 1
  store i32 %28, ptr %30, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @__msecs_to_jiffies(i32 noundef %0) #4 {
  %2 = icmp slt i32 %0, 0
  %3 = add nuw i32 %0, 9
  %4 = udiv i32 %3, 10
  %5 = select i1 %2, i32 1073741822, i32 %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @__usecs_to_jiffies(i32 noundef %0) #4 {
  %2 = icmp ugt i32 %0, -20000
  %3 = add nuw i32 %0, 9999
  %4 = udiv i32 %3, 10000
  %5 = select i1 %2, i32 1073741822, i32 %4
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @timespec64_to_jiffies(ptr nocapture noundef readonly %0) #6 {
  %2 = load i64, ptr %0, align 8
  %3 = getelementptr inbounds %struct.timespec64, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 8
  %5 = add i32 %4, 9999999
  %6 = icmp ugt i64 %2, 10737417
  %7 = mul nuw nsw i64 %2, 3355443200
  %8 = sext i32 %5 to i64
  %9 = mul nsw i64 %8, 1801439851
  %10 = lshr i64 %9, 29
  %11 = add i64 %10, %7
  %12 = lshr i64 %11, 25
  %13 = trunc i64 %12 to i32
  %14 = select i1 %6, i32 1073741800, i32 %13
  ret i32 %14
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync)
define dso_local void @jiffies_to_timespec64(i32 noundef %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = zext i32 %0 to i64
  %4 = mul nuw nsw i64 %3, 10000000
  %5 = trunc i64 %4 to i32
  %6 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %4, i32 0) #11, !srcloc !20
  %7 = extractvalue { i64, i32 } %6, 0
  %8 = extractvalue { i64, i32 } %6, 1
  %9 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %4, i64 %7, i32 %8) #11, !srcloc !21
  %10 = extractvalue { i64, i32 } %9, 0
  %11 = lshr i64 %10, 29
  %12 = trunc i64 %11 to i32
  %13 = mul i32 %12, -1000000000
  %14 = add i32 %13, %5
  store i64 %11, ptr %1, align 8
  %15 = getelementptr inbounds %struct.timespec64, ptr %1, i32 0, i32 1
  store i32 %14, ptr %15, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @jiffies_to_clock_t(i32 noundef returned %0) #4 {
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @clock_t_to_jiffies(i32 noundef %0) #4 {
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i64 @jiffies_64_to_clock_t(i64 noundef returned %0) #4 {
  ret i64 %0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define dso_local i64 @nsec_to_clock_t(i64 noundef %0) local_unnamed_addr #7 {
  %2 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %0) #11, !srcloc !24
  %3 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %0, i64 %2, i32 0) #11, !srcloc !21
  %4 = extractvalue { i64, i32 } %3, 0
  %5 = lshr i64 %4, 23
  ret i64 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i64 @jiffies64_to_nsecs(i64 noundef %0) #4 {
  %2 = mul i64 %0, 10000000
  ret i64 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i64 @jiffies64_to_msecs(i64 noundef %0) #4 {
  %2 = mul i64 %0, 10
  ret i64 %2
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define dso_local i64 @nsecs_to_jiffies64(i64 noundef %0) #7 {
  %2 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %0) #11, !srcloc !24
  %3 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %0, i64 %2, i32 0) #11, !srcloc !21
  %4 = extractvalue { i64, i32 } %3, 0
  %5 = lshr i64 %4, 23
  ret i64 %5
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define dso_local i32 @nsecs_to_jiffies(i64 noundef %0) #7 {
  %2 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %0) #11, !srcloc !24
  %3 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %0, i64 %2, i32 0) #11, !srcloc !21
  %4 = extractvalue { i64, i32 } %3, 0
  %5 = lshr i64 %4, 23
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @timespec64_add_safe(ptr noalias nocapture sret(%struct.timespec64) align 8 %0, [2 x i64] %1, [2 x i64] %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = extractvalue [2 x i64] %1, 0
  %6 = extractvalue [2 x i64] %1, 1
  %7 = trunc i64 %6 to i32
  %8 = extractvalue [2 x i64] %2, 0
  %9 = extractvalue [2 x i64] %2, 1
  %10 = trunc i64 %9 to i32
  %11 = getelementptr inbounds i8, ptr %0, i32 8
  store i64 0, ptr %11, align 8, !annotation !9
  %12 = add i64 %8, %5
  %13 = add i32 %10, %7
  %14 = sext i32 %13 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  store i64 %14, ptr %4, align 8
  %15 = icmp sgt i32 %13, 999999999
  br i1 %15, label %16, label %23

16:                                               ; preds = %16, %3
  %17 = phi i64 [ %21, %16 ], [ %12, %3 ]
  %18 = phi i64 [ %20, %16 ], [ %14, %3 ]
  call void asm "", "=*rm,0"(ptr nonnull elementtype(i64) %4, i64 %18) #9, !srcloc !22
  %19 = load i64, ptr %4, align 8
  %20 = add i64 %19, -1000000000
  store i64 %20, ptr %4, align 8
  %21 = add i64 %17, 1
  %22 = icmp sgt i64 %20, 999999999
  br i1 %22, label %16, label %23

23:                                               ; preds = %16, %3
  %24 = phi i64 [ %14, %3 ], [ %20, %16 ]
  %25 = phi i64 [ %12, %3 ], [ %21, %16 ]
  %26 = icmp slt i64 %24, 0
  %27 = trunc i64 %24 to i32
  br i1 %26, label %28, label %37

28:                                               ; preds = %28, %23
  %29 = phi i64 [ %33, %28 ], [ %25, %23 ]
  %30 = phi i64 [ %32, %28 ], [ %24, %23 ]
  call void asm "", "=*rm,0"(ptr nonnull elementtype(i64) %4, i64 %30) #9, !srcloc !23
  %31 = load i64, ptr %4, align 8
  %32 = add i64 %31, 1000000000
  store i64 %32, ptr %4, align 8
  %33 = add i64 %29, -1
  %34 = icmp slt i64 %32, 0
  br i1 %34, label %28, label %35

35:                                               ; preds = %28
  %36 = trunc i64 %32 to i32
  br label %37

37:                                               ; preds = %35, %23
  %38 = phi i32 [ %27, %23 ], [ %36, %35 ]
  %39 = phi i64 [ %25, %23 ], [ %33, %35 ]
  store i64 %39, ptr %0, align 8
  %40 = getelementptr inbounds %struct.timespec64, ptr %0, i32 0, i32 1
  store i32 %38, ptr %40, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  %41 = icmp slt i64 %39, %5
  %42 = icmp slt i64 %39, %8
  %43 = select i1 %41, i1 true, i1 %42, !prof !8
  br i1 %43, label %44, label %45, !prof !8

44:                                               ; preds = %37
  store i64 9223372036854775807, ptr %0, align 8
  store i32 0, ptr %40, align 8
  br label %45

45:                                               ; preds = %44, %37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_timespec64(ptr nocapture noundef writeonly %0, ptr noundef %1) #0 {
  %3 = alloca %struct.__kernel_timespec, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !9
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 16, i32 -1090519040) #11, !srcloc !19
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15, !prof !15

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #9
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #10, !srcloc !10
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %13 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 16) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !15

15:                                               ; preds = %7, %2
  %16 = phi i32 [ %13, %7 ], [ 16, %2 ]
  %17 = sub i32 16, %16
  %18 = getelementptr i8, ptr %3, i32 %17
  call void @llvm.memset.p0.i32(ptr align 1 %18, i8 0, i32 %16, i1 false) #9
  br label %25

19:                                               ; preds = %7
  %20 = load i64, ptr %3, align 8
  store i64 %20, ptr %0, align 8
  %21 = getelementptr inbounds %struct.__kernel_timespec, ptr %3, i32 0, i32 1
  %22 = load i64, ptr %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = getelementptr inbounds %struct.timespec64, ptr %0, i32 0, i32 1
  store i32 %23, ptr %24, align 8
  br label %25

25:                                               ; preds = %19, %15
  %26 = phi i32 [ 0, %19 ], [ -14, %15 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @put_timespec64(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca %struct.__kernel_timespec, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %4 = load i64, ptr %0, align 8
  store i64 %4, ptr %3, align 8
  %5 = getelementptr inbounds %struct.__kernel_timespec, ptr %3, i32 0, i32 1
  %6 = getelementptr inbounds %struct.timespec64, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 8
  %8 = sext i32 %7 to i64
  store i64 %8, ptr %5, align 8
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 16, i32 -1090519040) #11, !srcloc !16
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = tail call ptr @llvm.thread.pointer() #9
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #10, !srcloc !10
  %16 = and i32 %15, -13
  %17 = or i32 %16, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %18 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 16) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 0, i32 -14
  br label %21

21:                                               ; preds = %12, %2
  %22 = phi i32 [ -14, %2 ], [ %20, %12 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_old_timespec32(ptr nocapture noundef writeonly %0, ptr noundef %1) #0 {
  %3 = alloca %struct.old_timespec32, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store i64 0, ptr %3, align 8, !annotation !9
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 8, i32 -1090519040) #11, !srcloc !19
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15, !prof !15

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #9
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #10, !srcloc !10
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %13 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !15

15:                                               ; preds = %7, %2
  %16 = phi i32 [ %13, %7 ], [ 8, %2 ]
  %17 = sub i32 8, %16
  %18 = getelementptr i8, ptr %3, i32 %17
  call void @llvm.memset.p0.i32(ptr align 1 %18, i8 0, i32 %16, i1 false) #9
  br label %25

19:                                               ; preds = %7
  %20 = load i32, ptr %3, align 8
  %21 = sext i32 %20 to i64
  store i64 %21, ptr %0, align 8
  %22 = getelementptr inbounds %struct.old_timespec32, ptr %3, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.timespec64, ptr %0, i32 0, i32 1
  store i32 %23, ptr %24, align 8
  br label %25

25:                                               ; preds = %19, %15
  %26 = phi i32 [ 0, %19 ], [ -14, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @put_old_timespec32(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca %struct.old_timespec32, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %4 = load i64, ptr %0, align 8
  %5 = trunc i64 %4 to i32
  store i32 %5, ptr %3, align 8
  %6 = getelementptr inbounds %struct.old_timespec32, ptr %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.timespec64, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 8
  store i32 %8, ptr %6, align 4
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 8, i32 -1090519040) #11, !srcloc !16
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = tail call ptr @llvm.thread.pointer() #9
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #10, !srcloc !10
  %16 = and i32 %15, -13
  %17 = or i32 %16, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %18 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 0, i32 -14
  br label %21

21:                                               ; preds = %12, %2
  %22 = phi i32 [ -14, %2 ], [ %20, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_itimerspec64(ptr nocapture noundef writeonly %0, ptr noundef %1) #0 {
  %3 = alloca %struct.__kernel_timespec, align 8
  %4 = alloca %struct.__kernel_timespec, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false) #9, !annotation !9
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 16, i32 -1090519040) #11, !srcloc !19
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16, !prof !15

8:                                                ; preds = %2
  %9 = tail call ptr @llvm.thread.pointer() #9
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #10, !srcloc !10
  %12 = and i32 %11, -13
  %13 = or i32 %12, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %14 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 16) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16, !prof !15

16:                                               ; preds = %8, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  br label %46

17:                                               ; preds = %8
  %18 = load i64, ptr %4, align 8
  store i64 %18, ptr %0, align 8
  %19 = getelementptr inbounds %struct.__kernel_timespec, ptr %4, i32 0, i32 1
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = getelementptr inbounds %struct.timespec64, ptr %0, i32 0, i32 1
  store i32 %21, ptr %22, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  %23 = getelementptr inbounds %struct.itimerspec64, ptr %0, i32 0, i32 1
  %24 = getelementptr inbounds %struct.__kernel_itimerspec, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #9, !annotation !9
  %25 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %24, i32 16, i32 -1090519040) #11, !srcloc !19
  %26 = extractvalue { i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34, !prof !15

28:                                               ; preds = %17
  %29 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #10, !srcloc !10
  %30 = and i32 %29, -13
  %31 = or i32 %30, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %32 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %24, i32 noundef 16) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34, !prof !15

34:                                               ; preds = %28, %17
  %35 = phi i32 [ %32, %28 ], [ 16, %17 ]
  %36 = sub i32 16, %35
  %37 = getelementptr i8, ptr %3, i32 %36
  call void @llvm.memset.p0.i32(ptr align 1 %37, i8 0, i32 %35, i1 false) #9
  br label %44

38:                                               ; preds = %28
  %39 = load i64, ptr %3, align 8
  store i64 %39, ptr %23, align 8
  %40 = getelementptr inbounds %struct.__kernel_timespec, ptr %3, i32 0, i32 1
  %41 = load i64, ptr %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = getelementptr inbounds %struct.itimerspec64, ptr %0, i32 0, i32 1, i32 1
  store i32 %42, ptr %43, align 8
  br label %44

44:                                               ; preds = %38, %34
  %45 = phi i32 [ 0, %38 ], [ -14, %34 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  br label %46

46:                                               ; preds = %44, %16
  %47 = phi i32 [ %45, %44 ], [ -14, %16 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @put_itimerspec64(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca %struct.__kernel_timespec, align 8
  %4 = alloca %struct.__kernel_timespec, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %5 = load i64, ptr %0, align 8
  store i64 %5, ptr %4, align 8
  %6 = getelementptr inbounds %struct.__kernel_timespec, ptr %4, i32 0, i32 1
  %7 = getelementptr inbounds %struct.timespec64, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = sext i32 %8 to i64
  store i64 %9, ptr %6, align 8
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 16, i32 -1090519040) #11, !srcloc !16
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = tail call ptr @llvm.thread.pointer() #9
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #10, !srcloc !10
  %17 = and i32 %16, -13
  %18 = or i32 %17, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %19 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %4, i32 noundef 16) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  br label %42

22:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  %23 = getelementptr inbounds %struct.itimerspec64, ptr %0, i32 0, i32 1
  %24 = getelementptr inbounds %struct.__kernel_itimerspec, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %25 = load i64, ptr %23, align 8
  store i64 %25, ptr %3, align 8
  %26 = getelementptr inbounds %struct.__kernel_timespec, ptr %3, i32 0, i32 1
  %27 = getelementptr inbounds %struct.itimerspec64, ptr %0, i32 0, i32 1, i32 1
  %28 = load i32, ptr %27, align 8
  %29 = sext i32 %28 to i64
  store i64 %29, ptr %26, align 8
  %30 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %24, i32 16, i32 -1090519040) #11, !srcloc !16
  %31 = extractvalue { i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %22
  %34 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #10, !srcloc !10
  %35 = and i32 %34, -13
  %36 = or i32 %35, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %37 = call i32 @arm_copy_to_user(ptr noundef %24, ptr noundef nonnull %3, i32 noundef 16) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 0, i32 -14
  br label %40

40:                                               ; preds = %33, %22
  %41 = phi i32 [ -14, %22 ], [ %39, %33 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  br label %42

42:                                               ; preds = %40, %21
  %43 = phi i32 [ %41, %40 ], [ -14, %21 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_old_itimerspec32(ptr nocapture noundef writeonly %0, ptr noundef %1) #0 {
  %3 = alloca %struct.old_timespec32, align 8
  %4 = alloca %struct.old_timespec32, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store i64 0, ptr %4, align 8, !annotation !9
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 8, i32 -1090519040) #11, !srcloc !19
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16, !prof !15

8:                                                ; preds = %2
  %9 = tail call ptr @llvm.thread.pointer() #9
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #10, !srcloc !10
  %12 = and i32 %11, -13
  %13 = or i32 %12, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %14 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16, !prof !15

16:                                               ; preds = %8, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %41

17:                                               ; preds = %8
  %18 = load i32, ptr %4, align 8
  %19 = sext i32 %18 to i64
  store i64 %19, ptr %0, align 8
  %20 = getelementptr inbounds %struct.old_timespec32, ptr %4, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.timespec64, ptr %0, i32 0, i32 1
  store i32 %21, ptr %22, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  %23 = getelementptr inbounds %struct.itimerspec64, ptr %0, i32 0, i32 1
  %24 = getelementptr inbounds %struct.old_itimerspec32, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store i64 0, ptr %3, align 8, !annotation !9
  %25 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %24, i32 8, i32 -1090519040) #11, !srcloc !19
  %26 = extractvalue { i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34, !prof !15

28:                                               ; preds = %17
  %29 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #10, !srcloc !10
  %30 = and i32 %29, -13
  %31 = or i32 %30, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %32 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %24, i32 noundef 8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34, !prof !15

34:                                               ; preds = %28, %17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %41

35:                                               ; preds = %28
  %36 = load i32, ptr %3, align 8
  %37 = sext i32 %36 to i64
  store i64 %37, ptr %23, align 8
  %38 = getelementptr inbounds %struct.old_timespec32, ptr %3, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.itimerspec64, ptr %0, i32 0, i32 1, i32 1
  store i32 %39, ptr %40, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %41

41:                                               ; preds = %35, %34, %16
  %42 = phi i32 [ -14, %16 ], [ 0, %35 ], [ -14, %34 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @put_old_itimerspec32(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca %struct.old_timespec32, align 8
  %4 = alloca %struct.old_timespec32, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %5 = load i64, ptr %0, align 8
  %6 = trunc i64 %5 to i32
  store i32 %6, ptr %4, align 8
  %7 = getelementptr inbounds %struct.old_timespec32, ptr %4, i32 0, i32 1
  %8 = getelementptr inbounds %struct.timespec64, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 8
  store i32 %9, ptr %7, align 4
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 8, i32 -1090519040) #11, !srcloc !16
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = tail call ptr @llvm.thread.pointer() #9
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #10, !srcloc !10
  %17 = and i32 %16, -13
  %18 = or i32 %17, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %19 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %4, i32 noundef 8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %41

22:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  %23 = getelementptr inbounds %struct.itimerspec64, ptr %0, i32 0, i32 1
  %24 = getelementptr inbounds %struct.old_itimerspec32, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %25 = load i64, ptr %23, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, ptr %3, align 8
  %27 = getelementptr inbounds %struct.old_timespec32, ptr %3, i32 0, i32 1
  %28 = getelementptr inbounds %struct.itimerspec64, ptr %0, i32 0, i32 1, i32 1
  %29 = load i32, ptr %28, align 8
  store i32 %29, ptr %27, align 4
  %30 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %24, i32 8, i32 -1090519040) #11, !srcloc !16
  %31 = extractvalue { i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %22
  %34 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #10, !srcloc !10
  %35 = and i32 %34, -13
  %36 = or i32 %35, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %37 = call i32 @arm_copy_to_user(ptr noundef %24, ptr noundef nonnull %3, i32 noundef 8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33, %22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %41

40:                                               ; preds = %33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %41

41:                                               ; preds = %40, %39, %21
  %42 = phi i32 [ -14, %21 ], [ 0, %40 ], [ -14, %39 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_settime(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_adjtimex(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind readnone }

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
!9 = !{!"auto-init"}
!10 = !{i64 3839853}
!11 = !{i64 3840050}
!12 = !{i64 2151325329}
!13 = !{i64 2153833802, i64 2153834082, i64 2153834416, i64 2153834750}
!14 = !{i64 2153841990, i64 2153842270, i64 2153842604, i64 2153842938}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2151344319, i64 2151344344}
!17 = !{i64 2153861022, i64 2153861302, i64 2153861636, i64 2153861970}
!18 = !{i64 2153878393, i64 2153878673, i64 2153879007, i64 2153879341}
!19 = !{i64 2151343741, i64 2151343766}
!20 = !{i64 861588, i64 861615, i64 861637, i64 861665}
!21 = !{i64 861996, i64 862023, i64 862056, i64 862077, i64 862104, i64 862130}
!22 = !{i64 12534}
!23 = !{i64 12615}
!24 = !{i64 861301, i64 861328}
