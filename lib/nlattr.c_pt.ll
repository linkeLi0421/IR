; ModuleID = '/llk/IR/lib/nlattr.c_pt.bc'
source_filename = "../lib/nlattr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___nla_validate:\09\09\09\09\09"
module asm "\09.asciz \09\22__nla_validate\22\09\09\09\09\09"
module asm "__kstrtabns___nla_validate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nla_policy_len:\09\09\09\09\09"
module asm "\09.asciz \09\22nla_policy_len\22\09\09\09\09\09"
module asm "__kstrtabns_nla_policy_len:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___nla_parse:\09\09\09\09\09"
module asm "\09.asciz \09\22__nla_parse\22\09\09\09\09\09"
module asm "__kstrtabns___nla_parse:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nla_find:\09\09\09\09\09"
module asm "\09.asciz \09\22nla_find\22\09\09\09\09\09"
module asm "__kstrtabns_nla_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nla_strscpy:\09\09\09\09\09"
module asm "\09.asciz \09\22nla_strscpy\22\09\09\09\09\09"
module asm "__kstrtabns_nla_strscpy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nla_strdup:\09\09\09\09\09"
module asm "\09.asciz \09\22nla_strdup\22\09\09\09\09\09"
module asm "__kstrtabns_nla_strdup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nla_memcpy:\09\09\09\09\09"
module asm "\09.asciz \09\22nla_memcpy\22\09\09\09\09\09"
module asm "__kstrtabns_nla_memcpy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nla_memcmp:\09\09\09\09\09"
module asm "\09.asciz \09\22nla_memcmp\22\09\09\09\09\09"
module asm "__kstrtabns_nla_memcmp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nla_strcmp:\09\09\09\09\09"
module asm "\09.asciz \09\22nla_strcmp\22\09\09\09\09\09"
module asm "__kstrtabns_nla_strcmp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___nla_reserve:\09\09\09\09\09"
module asm "\09.asciz \09\22__nla_reserve\22\09\09\09\09\09"
module asm "__kstrtabns___nla_reserve:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___nla_reserve_64bit:\09\09\09\09\09"
module asm "\09.asciz \09\22__nla_reserve_64bit\22\09\09\09\09\09"
module asm "__kstrtabns___nla_reserve_64bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___nla_reserve_nohdr:\09\09\09\09\09"
module asm "\09.asciz \09\22__nla_reserve_nohdr\22\09\09\09\09\09"
module asm "__kstrtabns___nla_reserve_nohdr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nla_reserve:\09\09\09\09\09"
module asm "\09.asciz \09\22nla_reserve\22\09\09\09\09\09"
module asm "__kstrtabns_nla_reserve:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nla_reserve_64bit:\09\09\09\09\09"
module asm "\09.asciz \09\22nla_reserve_64bit\22\09\09\09\09\09"
module asm "__kstrtabns_nla_reserve_64bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nla_reserve_nohdr:\09\09\09\09\09"
module asm "\09.asciz \09\22nla_reserve_nohdr\22\09\09\09\09\09"
module asm "__kstrtabns_nla_reserve_nohdr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___nla_put:\09\09\09\09\09"
module asm "\09.asciz \09\22__nla_put\22\09\09\09\09\09"
module asm "__kstrtabns___nla_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___nla_put_64bit:\09\09\09\09\09"
module asm "\09.asciz \09\22__nla_put_64bit\22\09\09\09\09\09"
module asm "__kstrtabns___nla_put_64bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___nla_put_nohdr:\09\09\09\09\09"
module asm "\09.asciz \09\22__nla_put_nohdr\22\09\09\09\09\09"
module asm "__kstrtabns___nla_put_nohdr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nla_put:\09\09\09\09\09"
module asm "\09.asciz \09\22nla_put\22\09\09\09\09\09"
module asm "__kstrtabns_nla_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nla_put_64bit:\09\09\09\09\09"
module asm "\09.asciz \09\22nla_put_64bit\22\09\09\09\09\09"
module asm "__kstrtabns_nla_put_64bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nla_put_nohdr:\09\09\09\09\09"
module asm "\09.asciz \09\22nla_put_nohdr\22\09\09\09\09\09"
module asm "__kstrtabns_nla_put_nohdr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nla_append:\09\09\09\09\09"
module asm "\09.asciz \09\22nla_append\22\09\09\09\09\09"
module asm "__kstrtabns_nla_append:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.20 }
%union.anon.20 = type { i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.anon = type { i16, i16 }
%struct.netlink_range_validation = type { i64, i64 }
%struct.netlink_range_validation_signed = type { i64, i64 }
%struct.nlattr = type { i16, i16 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.82, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.21 }
%struct.llist_node = type { ptr }
%union.anon.21 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.63 }
%union.anon.63 = type { %struct.anon.64 }
%struct.anon.64 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.atomic_t = type { i32 }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.29 }
%union.anon.29 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.82 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.sk_buff = type { %union.anon.0, %union.anon.3, %union.anon.4, [48 x i8], %union.anon.5, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.7, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, %union.anon.2 }
%union.anon.2 = type { ptr }
%union.anon.3 = type { ptr }
%union.anon.4 = type { i64 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i32, ptr }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.9, i32, i32, i32, i16, i16, %union.anon.11, %union.anon.12, %union.anon.13, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.9 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i32 }
%union.anon.13 = type { i16 }

@nla_get_range_unsigned.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [13 x i8] c"lib/nlattr.c\00", align 1
@nla_get_range_unsigned.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@nla_get_range_signed.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab___nla_validate = external dso_local constant [0 x i8], align 1
@__kstrtabns___nla_validate = external dso_local constant [0 x i8], align 1
@__ksymtab___nla_validate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__nla_validate to i32), ptr @__kstrtab___nla_validate, ptr @__kstrtabns___nla_validate }, section "___ksymtab+__nla_validate", align 4
@nla_attr_len = internal unnamed_addr constant [18 x i8] c"\00\01\02\04\08\00\00\00\00\00\00\00\01\02\04\08\00\00", align 1
@nla_attr_minlen = internal unnamed_addr constant [18 x i8] c"\00\01\02\04\08\00\00\08\04\00\00\00\01\02\04\08\00\00", align 1
@__kstrtab_nla_policy_len = external dso_local constant [0 x i8], align 1
@__kstrtabns_nla_policy_len = external dso_local constant [0 x i8], align 1
@__ksymtab_nla_policy_len = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nla_policy_len to i32), ptr @__kstrtab_nla_policy_len, ptr @__kstrtabns_nla_policy_len }, section "___ksymtab+nla_policy_len", align 4
@__kstrtab___nla_parse = external dso_local constant [0 x i8], align 1
@__kstrtabns___nla_parse = external dso_local constant [0 x i8], align 1
@__ksymtab___nla_parse = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__nla_parse to i32), ptr @__kstrtab___nla_parse, ptr @__kstrtabns___nla_parse }, section "___ksymtab+__nla_parse", align 4
@__kstrtab_nla_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_nla_find = external dso_local constant [0 x i8], align 1
@__ksymtab_nla_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nla_find to i32), ptr @__kstrtab_nla_find, ptr @__kstrtabns_nla_find }, section "___ksymtab+nla_find", align 4
@nla_strscpy.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_nla_strscpy = external dso_local constant [0 x i8], align 1
@__kstrtabns_nla_strscpy = external dso_local constant [0 x i8], align 1
@__ksymtab_nla_strscpy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nla_strscpy to i32), ptr @__kstrtab_nla_strscpy, ptr @__kstrtabns_nla_strscpy }, section "___ksymtab+nla_strscpy", align 4
@__kstrtab_nla_strdup = external dso_local constant [0 x i8], align 1
@__kstrtabns_nla_strdup = external dso_local constant [0 x i8], align 1
@__ksymtab_nla_strdup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nla_strdup to i32), ptr @__kstrtab_nla_strdup, ptr @__kstrtabns_nla_strdup }, section "___ksymtab+nla_strdup", align 4
@__kstrtab_nla_memcpy = external dso_local constant [0 x i8], align 1
@__kstrtabns_nla_memcpy = external dso_local constant [0 x i8], align 1
@__ksymtab_nla_memcpy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nla_memcpy to i32), ptr @__kstrtab_nla_memcpy, ptr @__kstrtabns_nla_memcpy }, section "___ksymtab+nla_memcpy", align 4
@__kstrtab_nla_memcmp = external dso_local constant [0 x i8], align 1
@__kstrtabns_nla_memcmp = external dso_local constant [0 x i8], align 1
@__ksymtab_nla_memcmp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nla_memcmp to i32), ptr @__kstrtab_nla_memcmp, ptr @__kstrtabns_nla_memcmp }, section "___ksymtab+nla_memcmp", align 4
@__kstrtab_nla_strcmp = external dso_local constant [0 x i8], align 1
@__kstrtabns_nla_strcmp = external dso_local constant [0 x i8], align 1
@__ksymtab_nla_strcmp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nla_strcmp to i32), ptr @__kstrtab_nla_strcmp, ptr @__kstrtabns_nla_strcmp }, section "___ksymtab+nla_strcmp", align 4
@__kstrtab___nla_reserve = external dso_local constant [0 x i8], align 1
@__kstrtabns___nla_reserve = external dso_local constant [0 x i8], align 1
@__ksymtab___nla_reserve = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__nla_reserve to i32), ptr @__kstrtab___nla_reserve, ptr @__kstrtabns___nla_reserve }, section "___ksymtab+__nla_reserve", align 4
@__kstrtab___nla_reserve_64bit = external dso_local constant [0 x i8], align 1
@__kstrtabns___nla_reserve_64bit = external dso_local constant [0 x i8], align 1
@__ksymtab___nla_reserve_64bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__nla_reserve_64bit to i32), ptr @__kstrtab___nla_reserve_64bit, ptr @__kstrtabns___nla_reserve_64bit }, section "___ksymtab+__nla_reserve_64bit", align 4
@__kstrtab___nla_reserve_nohdr = external dso_local constant [0 x i8], align 1
@__kstrtabns___nla_reserve_nohdr = external dso_local constant [0 x i8], align 1
@__ksymtab___nla_reserve_nohdr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__nla_reserve_nohdr to i32), ptr @__kstrtab___nla_reserve_nohdr, ptr @__kstrtabns___nla_reserve_nohdr }, section "___ksymtab+__nla_reserve_nohdr", align 4
@__kstrtab_nla_reserve = external dso_local constant [0 x i8], align 1
@__kstrtabns_nla_reserve = external dso_local constant [0 x i8], align 1
@__ksymtab_nla_reserve = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nla_reserve to i32), ptr @__kstrtab_nla_reserve, ptr @__kstrtabns_nla_reserve }, section "___ksymtab+nla_reserve", align 4
@__kstrtab_nla_reserve_64bit = external dso_local constant [0 x i8], align 1
@__kstrtabns_nla_reserve_64bit = external dso_local constant [0 x i8], align 1
@__ksymtab_nla_reserve_64bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nla_reserve_64bit to i32), ptr @__kstrtab_nla_reserve_64bit, ptr @__kstrtabns_nla_reserve_64bit }, section "___ksymtab+nla_reserve_64bit", align 4
@__kstrtab_nla_reserve_nohdr = external dso_local constant [0 x i8], align 1
@__kstrtabns_nla_reserve_nohdr = external dso_local constant [0 x i8], align 1
@__ksymtab_nla_reserve_nohdr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nla_reserve_nohdr to i32), ptr @__kstrtab_nla_reserve_nohdr, ptr @__kstrtabns_nla_reserve_nohdr }, section "___ksymtab+nla_reserve_nohdr", align 4
@__kstrtab___nla_put = external dso_local constant [0 x i8], align 1
@__kstrtabns___nla_put = external dso_local constant [0 x i8], align 1
@__ksymtab___nla_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__nla_put to i32), ptr @__kstrtab___nla_put, ptr @__kstrtabns___nla_put }, section "___ksymtab+__nla_put", align 4
@__kstrtab___nla_put_64bit = external dso_local constant [0 x i8], align 1
@__kstrtabns___nla_put_64bit = external dso_local constant [0 x i8], align 1
@__ksymtab___nla_put_64bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__nla_put_64bit to i32), ptr @__kstrtab___nla_put_64bit, ptr @__kstrtabns___nla_put_64bit }, section "___ksymtab+__nla_put_64bit", align 4
@__kstrtab___nla_put_nohdr = external dso_local constant [0 x i8], align 1
@__kstrtabns___nla_put_nohdr = external dso_local constant [0 x i8], align 1
@__ksymtab___nla_put_nohdr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__nla_put_nohdr to i32), ptr @__kstrtab___nla_put_nohdr, ptr @__kstrtabns___nla_put_nohdr }, section "___ksymtab+__nla_put_nohdr", align 4
@__kstrtab_nla_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_nla_put = external dso_local constant [0 x i8], align 1
@__ksymtab_nla_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nla_put to i32), ptr @__kstrtab_nla_put, ptr @__kstrtabns_nla_put }, section "___ksymtab+nla_put", align 4
@__kstrtab_nla_put_64bit = external dso_local constant [0 x i8], align 1
@__kstrtabns_nla_put_64bit = external dso_local constant [0 x i8], align 1
@__ksymtab_nla_put_64bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nla_put_64bit to i32), ptr @__kstrtab_nla_put_64bit, ptr @__kstrtabns_nla_put_64bit }, section "___ksymtab+nla_put_64bit", align 4
@__kstrtab_nla_put_nohdr = external dso_local constant [0 x i8], align 1
@__kstrtabns_nla_put_nohdr = external dso_local constant [0 x i8], align 1
@__ksymtab_nla_put_nohdr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nla_put_nohdr to i32), ptr @__kstrtab_nla_put_nohdr, ptr @__kstrtabns_nla_put_nohdr }, section "___ksymtab+nla_put_nohdr", align 4
@__kstrtab_nla_append = external dso_local constant [0 x i8], align 1
@__kstrtabns_nla_append = external dso_local constant [0 x i8], align 1
@__ksymtab_nla_append = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nla_append to i32), ptr @__kstrtab_nla_append, ptr @__kstrtabns_nla_append }, section "___ksymtab+nla_append", align 4
@__nla_validate_parse.__msg = internal constant [40 x i8] c"allowed policy recursion depth exceeded\00", align 1
@__nla_validate_parse.__msg.2 = internal constant [23 x i8] c"Unknown attribute type\00", align 1
@__nla_validate_parse._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.__nla_validate_parse = private unnamed_addr constant [21 x i8] c"__nla_validate_parse\00", align 1
@.str.3 = private unnamed_addr constant [72 x i8] c"\014netlink: %d bytes leftover after parsing attributes in process `%s'.\0A\00", align 1
@__nla_validate_parse.__msg.4 = internal constant [40 x i8] c"bytes leftover after parsing attributes\00", align 1
@validate_nla._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.validate_nla = private unnamed_addr constant [13 x i8] c"validate_nla\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"\014netlink: '%s': attribute type %d has an invalid length.\0A\00", align 1
@validate_nla.__msg = internal constant [25 x i8] c"invalid attribute length\00", align 1
@validate_nla.__msg.6 = internal constant [24 x i8] c"NLA_F_NESTED is missing\00", align 1
@validate_nla.__msg.7 = internal constant [26 x i8] c"NLA_F_NESTED not expected\00", align 1
@validate_nla.__msg.8 = internal constant [22 x i8] c"Unsupported attribute\00", align 1
@validate_nla.__msg.9 = internal constant [35 x i8] c"Attribute failed policy validation\00", align 1
@nla_validate_array.__msg = internal constant [24 x i8] c"Array element too short\00", align 1
@nla_validate_range_unsigned._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.nla_validate_range_unsigned = private unnamed_addr constant [28 x i8] c"nla_validate_range_unsigned\00", align 1
@nla_validate_range_unsigned.__msg = internal constant [25 x i8] c"invalid attribute length\00", align 1
@nla_validate_range_unsigned.__msg.10 = internal constant [35 x i8] c"binary attribute size out of range\00", align 1
@nla_validate_range_unsigned.__msg.11 = internal constant [21 x i8] c"integer out of range\00", align 1
@nla_validate_int_range_signed.__msg = internal constant [21 x i8] c"integer out of range\00", align 1
@nla_validate_mask.__msg = internal constant [17 x i8] c"reserved bit set\00", align 1
@llvm.compiler.used = appending global [22 x ptr] [ptr @__ksymtab___nla_parse, ptr @__ksymtab___nla_put, ptr @__ksymtab___nla_put_64bit, ptr @__ksymtab___nla_put_nohdr, ptr @__ksymtab___nla_reserve, ptr @__ksymtab___nla_reserve_64bit, ptr @__ksymtab___nla_reserve_nohdr, ptr @__ksymtab___nla_validate, ptr @__ksymtab_nla_append, ptr @__ksymtab_nla_find, ptr @__ksymtab_nla_memcmp, ptr @__ksymtab_nla_memcpy, ptr @__ksymtab_nla_policy_len, ptr @__ksymtab_nla_put, ptr @__ksymtab_nla_put_64bit, ptr @__ksymtab_nla_put_nohdr, ptr @__ksymtab_nla_reserve, ptr @__ksymtab_nla_reserve_64bit, ptr @__ksymtab_nla_reserve_nohdr, ptr @__ksymtab_nla_strcmp, ptr @__ksymtab_nla_strdup, ptr @__ksymtab_nla_strscpy], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nla_get_range_unsigned(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nla_policy, ptr %0, i32 0, i32 1
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 6
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nla_policy, ptr %0, i32 0, i32 3
  %8 = load i16, ptr %7, align 4
  %9 = icmp slt i16 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 1
  %12 = load i16, ptr %11, align 2
  %13 = icmp slt i16 %12, 0
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi i1 [ true, %6 ], [ %13, %10 ]
  %16 = load i1, ptr @nla_get_range_unsigned.__already_done, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !8

19:                                               ; preds = %14
  store i1 true, ptr @nla_get_range_unsigned.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 118, i32 noundef 9, ptr noundef null) #15
  br label %20

20:                                               ; preds = %19, %14, %2
  store i64 0, ptr %1, align 8
  %21 = load i8, ptr %0, align 4
  switch i8 %21, label %25 [
    i8 1, label %28
    i8 2, label %22
    i8 11, label %22
    i8 3, label %23
    i8 4, label %24
    i8 7, label %24
  ]

22:                                               ; preds = %20, %20
  br label %28

23:                                               ; preds = %20
  br label %28

24:                                               ; preds = %20, %20
  br label %28

25:                                               ; preds = %20
  %26 = load i1, ptr @nla_get_range_unsigned.__already_done.1, align 1
  br i1 %26, label %53, label %27, !prof !9

27:                                               ; preds = %25
  store i1 true, ptr @nla_get_range_unsigned.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 138, i32 noundef 9, ptr noundef null) #15
  br label %53

28:                                               ; preds = %24, %23, %22, %20
  %29 = phi i64 [ -1, %24 ], [ 4294967295, %23 ], [ 65535, %22 ], [ 255, %20 ]
  %30 = getelementptr inbounds %struct.netlink_range_validation, ptr %1, i32 0, i32 1
  store i64 %29, ptr %30, align 8
  %31 = load i8, ptr %3, align 1
  switch i8 %31, label %53 [
    i8 1, label %32
    i8 2, label %32
    i8 6, label %40
    i8 3, label %43
    i8 4, label %47
  ]

32:                                               ; preds = %28, %28
  %33 = getelementptr inbounds %struct.nla_policy, ptr %0, i32 0, i32 3
  %34 = load i16, ptr %33, align 4
  %35 = sext i16 %34 to i64
  store i64 %35, ptr %1, align 8
  %36 = getelementptr inbounds %struct.anon, ptr %33, i32 0, i32 1
  %37 = load i16, ptr %36, align 2
  %38 = sext i16 %37 to i64
  %39 = getelementptr inbounds %struct.netlink_range_validation, ptr %1, i32 0, i32 1
  store i64 %38, ptr %39, align 8
  br label %53

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.nla_policy, ptr %0, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %1, ptr noundef align 8 dereferenceable(16) %42, i32 16, i1 false)
  br label %53

43:                                               ; preds = %28
  %44 = getelementptr inbounds %struct.nla_policy, ptr %0, i32 0, i32 3
  %45 = load i16, ptr %44, align 4
  %46 = sext i16 %45 to i64
  store i64 %46, ptr %1, align 8
  br label %53

47:                                               ; preds = %28
  %48 = getelementptr inbounds %struct.nla_policy, ptr %0, i32 0, i32 3
  %49 = getelementptr inbounds %struct.anon, ptr %48, i32 0, i32 1
  %50 = load i16, ptr %49, align 2
  %51 = sext i16 %50 to i64
  %52 = getelementptr inbounds %struct.netlink_range_validation, ptr %1, i32 0, i32 1
  store i64 %51, ptr %52, align 8
  br label %53

53:                                               ; preds = %47, %43, %40, %32, %28, %27, %25
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nla_get_range_signed(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load i8, ptr %0, align 4
  switch i8 %3, label %7 [
    i8 12, label %10
    i8 13, label %4
    i8 14, label %5
    i8 15, label %6
  ]

4:                                                ; preds = %2
  br label %10

5:                                                ; preds = %2
  br label %10

6:                                                ; preds = %2
  br label %10

7:                                                ; preds = %2
  %8 = load i1, ptr @nla_get_range_signed.__already_done, align 1
  br i1 %8, label %37, label %9, !prof !9

9:                                                ; preds = %7
  store i1 true, ptr @nla_get_range_signed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 244, i32 noundef 9, ptr noundef null) #15
  br label %37

10:                                               ; preds = %6, %5, %4, %2
  %11 = phi i64 [ -9223372036854775808, %6 ], [ -2147483648, %5 ], [ -32768, %4 ], [ -128, %2 ]
  %12 = phi i64 [ 9223372036854775807, %6 ], [ 2147483647, %5 ], [ 32767, %4 ], [ 127, %2 ]
  store i64 %11, ptr %1, align 8
  %13 = getelementptr inbounds %struct.netlink_range_validation_signed, ptr %1, i32 0, i32 1
  store i64 %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.nla_policy, ptr %0, i32 0, i32 1
  %15 = load i8, ptr %14, align 1
  switch i8 %15, label %37 [
    i8 1, label %16
    i8 6, label %24
    i8 3, label %27
    i8 4, label %31
  ]

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.nla_policy, ptr %0, i32 0, i32 3
  %18 = load i16, ptr %17, align 4
  %19 = sext i16 %18 to i64
  store i64 %19, ptr %1, align 8
  %20 = getelementptr inbounds %struct.anon, ptr %17, i32 0, i32 1
  %21 = load i16, ptr %20, align 2
  %22 = sext i16 %21 to i64
  %23 = getelementptr inbounds %struct.netlink_range_validation_signed, ptr %1, i32 0, i32 1
  store i64 %22, ptr %23, align 8
  br label %37

24:                                               ; preds = %10
  %25 = getelementptr inbounds %struct.nla_policy, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %1, ptr noundef align 8 dereferenceable(16) %26, i32 16, i1 false)
  br label %37

27:                                               ; preds = %10
  %28 = getelementptr inbounds %struct.nla_policy, ptr %0, i32 0, i32 3
  %29 = load i16, ptr %28, align 4
  %30 = sext i16 %29 to i64
  store i64 %30, ptr %1, align 8
  br label %37

31:                                               ; preds = %10
  %32 = getelementptr inbounds %struct.nla_policy, ptr %0, i32 0, i32 3
  %33 = getelementptr inbounds %struct.anon, ptr %32, i32 0, i32 1
  %34 = load i16, ptr %33, align 2
  %35 = sext i16 %34 to i64
  %36 = getelementptr inbounds %struct.netlink_range_validation_signed, ptr %1, i32 0, i32 1
  store i64 %35, ptr %36, align 8
  br label %37

37:                                               ; preds = %31, %27, %24, %16, %10, %9, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__nla_validate(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) #0 {
  %7 = tail call fastcc i32 @__nla_validate_parse(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef null, i32 noundef 0)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__nla_validate_parse(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef writeonly %6, i32 noundef %7) unnamed_addr #0 {
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.netlink_range_validation, align 8
  %12 = alloca i64, align 8
  %13 = icmp ugt i32 %7, 9
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nla_validate_parse.__msg) #15
  %15 = icmp eq ptr %5, null
  br i1 %15, label %509, label %16

16:                                               ; preds = %14
  store ptr @__nla_validate_parse.__msg, ptr %5, align 4
  br label %509

17:                                               ; preds = %8
  %18 = icmp eq ptr %6, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %17
  %20 = shl i32 %2, 2
  %21 = add i32 %20, 4
  tail call void @llvm.memset.p0.i32(ptr nonnull align 4 %6, i8 0, i32 %21, i1 false)
  br label %22

22:                                               ; preds = %19, %17
  %23 = icmp sgt i32 %1, 3
  br i1 %23, label %24, label %491

24:                                               ; preds = %22
  %25 = icmp eq ptr %3, null
  %26 = getelementptr inbounds %struct.nla_policy, ptr %3, i32 0, i32 3
  %27 = or i32 %4, 31
  %28 = add nuw nsw i32 %7, 1
  %29 = getelementptr inbounds %struct.netlink_range_validation, ptr %11, i32 0, i32 1
  %30 = and i32 %4, 2
  %31 = icmp eq i32 %30, 0
  br label %32

32:                                               ; preds = %483, %24
  %33 = phi ptr [ %0, %24 ], [ %489, %483 ]
  %34 = phi i32 [ %1, %24 ], [ %488, %483 ]
  %35 = load i16, ptr %33, align 2
  %36 = icmp ult i16 %35, 4
  %37 = zext i16 %35 to i32
  %38 = icmp ult i32 %34, %37
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %494, label %40

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.nlattr, ptr %33, i32 0, i32 1
  %42 = load i16, ptr %41, align 2
  %43 = and i16 %42, 16383
  %44 = zext i16 %43 to i32
  %45 = icmp eq i16 %43, 0
  %46 = icmp sgt i32 %44, %2
  %47 = or i1 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  br i1 %31, label %483, label %49

49:                                               ; preds = %48
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nla_validate_parse.__msg.2) #15
  %50 = icmp eq ptr %5, null
  br i1 %50, label %509, label %51

51:                                               ; preds = %49
  store ptr @__nla_validate_parse.__msg.2, ptr %5, align 4
  %52 = getelementptr inbounds %struct.netlink_ext_ack, ptr %5, i32 0, i32 1
  store ptr %33, ptr %52, align 4
  %53 = getelementptr inbounds %struct.netlink_ext_ack, ptr %5, i32 0, i32 2
  store ptr null, ptr %53, align 4
  br label %509

54:                                               ; preds = %40
  br i1 %25, label %480, label %55

55:                                               ; preds = %54
  %56 = load i16, ptr %26, align 4
  %57 = add nsw i32 %37, -4
  %58 = icmp eq i16 %56, 0
  %59 = icmp ult i16 %43, %56
  %60 = select i1 %58, i1 true, i1 %59
  %61 = select i1 %60, i32 %4, i32 %27
  %62 = getelementptr %struct.nla_policy, ptr %3, i32 %44
  %63 = load i8, ptr %62, align 4
  %64 = icmp ugt i8 %63, 17
  br i1 %64, label %65, label %66, !prof !8

65:                                               ; preds = %55
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/nlattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 374, 0\0A.popsection", ""() #15, !srcloc !10
  unreachable

66:                                               ; preds = %55
  %67 = zext i8 %63 to i32
  %68 = lshr i32 200673, %67
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %93

71:                                               ; preds = %66
  %72 = getelementptr [18 x i8], ptr @nla_attr_len, i32 0, i32 %67
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp eq i32 %57, %74
  br i1 %75, label %93, label %76

76:                                               ; preds = %71
  %77 = tail call i32 @___ratelimit(ptr noundef nonnull @validate_nla._rs, ptr noundef nonnull @__func__.validate_nla) #15
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = tail call ptr @llvm.thread.pointer() #15
  %81 = getelementptr inbounds %struct.task_struct, ptr %80, i32 0, i32 85
  %82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %81, i32 noundef %44) #16
  br label %83

83:                                               ; preds = %79, %76
  %84 = and i32 %61, 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i8, ptr %62, align 4
  br label %93

88:                                               ; preds = %83
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @validate_nla.__msg) #15
  %89 = icmp eq ptr %5, null
  br i1 %89, label %509, label %90

90:                                               ; preds = %88
  store ptr @validate_nla.__msg, ptr %5, align 4
  %91 = getelementptr inbounds %struct.netlink_ext_ack, ptr %5, i32 0, i32 1
  store ptr %33, ptr %91, align 4
  %92 = getelementptr inbounds %struct.netlink_ext_ack, ptr %5, i32 0, i32 2
  store ptr %62, ptr %92, align 4
  br label %509

93:                                               ; preds = %86, %71, %66
  %94 = phi i8 [ %87, %86 ], [ %63, %71 ], [ %63, %66 ]
  %95 = and i32 %61, 16
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %117, label %97

97:                                               ; preds = %93
  %98 = and i8 %94, -2
  %99 = icmp eq i8 %98, 8
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load i16, ptr %41, align 2
  %102 = icmp sgt i16 %101, -1
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @validate_nla.__msg.6) #15
  %104 = icmp eq ptr %5, null
  br i1 %104, label %509, label %105

105:                                              ; preds = %103
  store ptr @validate_nla.__msg.6, ptr %5, align 4
  %106 = getelementptr inbounds %struct.netlink_ext_ack, ptr %5, i32 0, i32 1
  store ptr %33, ptr %106, align 4
  %107 = getelementptr inbounds %struct.netlink_ext_ack, ptr %5, i32 0, i32 2
  store ptr %62, ptr %107, align 4
  br label %509

108:                                              ; preds = %100, %97
  switch i8 %94, label %109 [
    i8 8, label %117
    i8 9, label %117
    i8 0, label %117
  ]

109:                                              ; preds = %108
  %110 = load i16, ptr %41, align 2
  %111 = icmp sgt i16 %110, -1
  br i1 %111, label %117, label %112

112:                                              ; preds = %109
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @validate_nla.__msg.7) #15
  %113 = icmp eq ptr %5, null
  br i1 %113, label %509, label %114

114:                                              ; preds = %112
  store ptr @validate_nla.__msg.7, ptr %5, align 4
  %115 = getelementptr inbounds %struct.netlink_ext_ack, ptr %5, i32 0, i32 1
  store ptr %33, ptr %115, align 4
  %116 = getelementptr inbounds %struct.netlink_ext_ack, ptr %5, i32 0, i32 2
  store ptr %62, ptr %116, align 4
  br label %509

117:                                              ; preds = %109, %108, %108, %108, %93
  %118 = zext i8 %94 to i32
  switch i8 %94, label %270 [
    i8 17, label %119
    i8 6, label %131
    i8 16, label %133
    i8 10, label %154
    i8 5, label %167
    i8 11, label %182
    i8 8, label %189
    i8 9, label %207
    i8 0, label %257
  ]

119:                                              ; preds = %117
  %120 = icmp eq ptr %5, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %119
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @validate_nla.__msg.9) #15
  br label %509

122:                                              ; preds = %119
  %123 = getelementptr %struct.nla_policy, ptr %3, i32 %44, i32 3
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @validate_nla.__msg.9) #15
  br label %476

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.netlink_ext_ack, ptr %5, i32 0, i32 1
  store ptr %33, ptr %128, align 4
  %129 = getelementptr inbounds %struct.netlink_ext_ack, ptr %5, i32 0, i32 2
  store ptr null, ptr %129, align 4
  %130 = load ptr, ptr %123, align 4
  store ptr %130, ptr %5, align 4
  br label %509

131:                                              ; preds = %117
  %132 = icmp ugt i16 %35, 4
  br i1 %132, label %473, label %283

133:                                              ; preds = %117
  %134 = icmp eq i32 %57, 8
  br i1 %134, label %135, label %473

135:                                              ; preds = %133
  %136 = getelementptr %struct.nla_policy, ptr %3, i32 %44, i32 3
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr i8, ptr %33, i32 4
  %139 = icmp eq i32 %137, 0
  br i1 %139, label %473, label %140

140:                                              ; preds = %135
  %141 = getelementptr i8, ptr %33, i32 8
  %142 = load i32, ptr %141, align 4
  %143 = xor i32 %137, -1
  %144 = and i32 %142, %143
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %473

146:                                              ; preds = %140
  %147 = load i32, ptr %138, align 4
  %148 = and i32 %147, %143
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %473

150:                                              ; preds = %146
  %151 = xor i32 %142, -1
  %152 = and i32 %147, %151
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %283, label %473

154:                                              ; preds = %117
  %155 = getelementptr %struct.nla_policy, ptr %3, i32 %44, i32 2
  %156 = load i16, ptr %155, align 2
  %157 = icmp eq i16 %156, 0
  %158 = zext i16 %156 to i32
  %159 = add nuw nsw i32 %158, 1
  %160 = tail call i32 @llvm.smin.i32(i32 %57, i32 %159) #15
  %161 = select i1 %157, i32 %57, i32 %160
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %473, label %163

163:                                              ; preds = %154
  %164 = getelementptr i8, ptr %33, i32 4
  %165 = tail call ptr @memchr(ptr noundef %164, i32 noundef 0, i32 noundef %161) #15
  %166 = icmp eq ptr %165, null
  br i1 %166, label %473, label %167

167:                                              ; preds = %163, %117
  %168 = icmp ult i16 %35, 5
  br i1 %168, label %473, label %169

169:                                              ; preds = %167
  %170 = getelementptr %struct.nla_policy, ptr %3, i32 %44, i32 2
  %171 = load i16, ptr %170, align 2
  %172 = icmp eq i16 %171, 0
  br i1 %172, label %283, label %173

173:                                              ; preds = %169
  %174 = getelementptr i8, ptr %33, i32 4
  %175 = add nsw i32 %37, -5
  %176 = getelementptr i8, ptr %174, i32 %175
  %177 = load i8, ptr %176, align 1
  %178 = icmp eq i8 %177, 0
  %179 = select i1 %178, i32 %175, i32 %57
  %180 = zext i16 %171 to i32
  %181 = icmp ugt i32 %179, %180
  br i1 %181, label %473, label %283

182:                                              ; preds = %117
  %183 = getelementptr %struct.nla_policy, ptr %3, i32 %44, i32 2
  %184 = load i16, ptr %183, align 2
  %185 = icmp ne i16 %184, 0
  %186 = zext i16 %184 to i32
  %187 = icmp sgt i32 %57, %186
  %188 = select i1 %185, i1 %187, i1 false
  br i1 %188, label %473, label %283

189:                                              ; preds = %117
  %190 = icmp eq i32 %57, 0
  br i1 %190, label %283, label %191

191:                                              ; preds = %189
  %192 = icmp ult i16 %35, 8
  br i1 %192, label %473, label %193

193:                                              ; preds = %191
  %194 = getelementptr %struct.nla_policy, ptr %3, i32 %44, i32 3
  %195 = load ptr, ptr %194, align 4
  %196 = icmp eq ptr %195, null
  br i1 %196, label %283, label %197

197:                                              ; preds = %193
  %198 = getelementptr i8, ptr %33, i32 4
  %199 = load i16, ptr %33, align 2
  %200 = zext i16 %199 to i32
  %201 = add nsw i32 %200, -4
  %202 = getelementptr %struct.nla_policy, ptr %3, i32 %44, i32 2
  %203 = load i16, ptr %202, align 2
  %204 = zext i16 %203 to i32
  %205 = tail call fastcc i32 @__nla_validate_parse(ptr noundef %198, i32 noundef %201, i32 noundef %204, ptr noundef nonnull %195, i32 noundef %61, ptr noundef %5, ptr noundef null, i32 noundef %28) #15
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %509, label %283

207:                                              ; preds = %117
  %208 = icmp eq i32 %57, 0
  br i1 %208, label %283, label %209

209:                                              ; preds = %207
  %210 = icmp ult i16 %35, 8
  br i1 %210, label %473, label %211

211:                                              ; preds = %209
  %212 = getelementptr %struct.nla_policy, ptr %3, i32 %44, i32 3
  %213 = load ptr, ptr %212, align 4
  %214 = icmp eq ptr %213, null
  br i1 %214, label %283, label %215

215:                                              ; preds = %211
  %216 = load i16, ptr %33, align 2
  %217 = getelementptr %struct.nla_policy, ptr %3, i32 %44, i32 2
  %218 = load i16, ptr %217, align 2
  %219 = zext i16 %218 to i32
  %220 = icmp ugt i16 %216, 7
  br i1 %220, label %221, label %283

221:                                              ; preds = %215
  %222 = zext i16 %216 to i32
  %223 = add nsw i32 %222, -4
  %224 = getelementptr i8, ptr %33, i32 4
  br label %225

225:                                              ; preds = %250, %221
  %226 = phi ptr [ %255, %250 ], [ %224, %221 ]
  %227 = phi i32 [ %254, %250 ], [ %223, %221 ]
  %228 = load i16, ptr %226, align 2
  %229 = icmp ult i16 %228, 4
  %230 = zext i16 %228 to i32
  %231 = icmp ult i32 %227, %230
  %232 = select i1 %229, i1 true, i1 %231
  br i1 %232, label %283, label %233

233:                                              ; preds = %225
  %234 = add nsw i32 %230, -4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %250, label %236

236:                                              ; preds = %233
  %237 = icmp ult i16 %228, 8
  br i1 %237, label %238, label %243

238:                                              ; preds = %236
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_validate_array.__msg) #15
  %239 = icmp eq ptr %5, null
  br i1 %239, label %509, label %240

240:                                              ; preds = %238
  store ptr @nla_validate_array.__msg, ptr %5, align 4
  %241 = getelementptr inbounds %struct.netlink_ext_ack, ptr %5, i32 0, i32 1
  store ptr %226, ptr %241, align 4
  %242 = getelementptr inbounds %struct.netlink_ext_ack, ptr %5, i32 0, i32 2
  store ptr %213, ptr %242, align 4
  br label %509

243:                                              ; preds = %236
  %244 = getelementptr i8, ptr %226, i32 4
  %245 = tail call fastcc i32 @__nla_validate_parse(ptr noundef %244, i32 noundef %234, i32 noundef %219, ptr noundef nonnull %213, i32 noundef %61, ptr noundef %5, ptr noundef null, i32 noundef %28) #15
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %509, label %247

247:                                              ; preds = %243
  %248 = load i16, ptr %226, align 2
  %249 = zext i16 %248 to i32
  br label %250

250:                                              ; preds = %247, %233
  %251 = phi i32 [ %249, %247 ], [ 4, %233 ]
  %252 = add nuw nsw i32 %251, 3
  %253 = and i32 %252, 131068
  %254 = sub nsw i32 %227, %253
  %255 = getelementptr i8, ptr %226, i32 %253
  %256 = icmp sgt i32 %254, 3
  br i1 %256, label %225, label %283

257:                                              ; preds = %117
  %258 = and i32 %61, 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %265, label %260

260:                                              ; preds = %257
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @validate_nla.__msg.8) #15
  %261 = icmp eq ptr %5, null
  br i1 %261, label %509, label %262

262:                                              ; preds = %260
  store ptr @validate_nla.__msg.8, ptr %5, align 4
  %263 = getelementptr inbounds %struct.netlink_ext_ack, ptr %5, i32 0, i32 1
  store ptr %33, ptr %263, align 4
  %264 = getelementptr inbounds %struct.netlink_ext_ack, ptr %5, i32 0, i32 2
  store ptr null, ptr %264, align 4
  br label %509

265:                                              ; preds = %257
  %266 = getelementptr %struct.nla_policy, ptr %3, i32 %44, i32 2
  %267 = load i16, ptr %266, align 2
  %268 = zext i16 %267 to i32
  %269 = icmp slt i32 %57, %268
  br i1 %269, label %473, label %283

270:                                              ; preds = %117
  %271 = getelementptr %struct.nla_policy, ptr %3, i32 %44, i32 2
  %272 = load i16, ptr %271, align 2
  %273 = icmp eq i16 %272, 0
  br i1 %273, label %276, label %274

274:                                              ; preds = %270
  %275 = zext i16 %272 to i32
  br label %280

276:                                              ; preds = %270
  %277 = getelementptr [18 x i8], ptr @nla_attr_minlen, i32 0, i32 %118
  %278 = load i8, ptr %277, align 1
  %279 = zext i8 %278 to i32
  br label %280

280:                                              ; preds = %276, %274
  %281 = phi i32 [ %275, %274 ], [ %279, %276 ]
  %282 = icmp slt i32 %57, %281
  br i1 %282, label %473, label %283

283:                                              ; preds = %280, %265, %250, %225, %215, %211, %207, %197, %193, %189, %182, %173, %169, %150, %131
  %284 = getelementptr %struct.nla_policy, ptr %3, i32 %44, i32 1
  %285 = load i8, ptr %284, align 1
  switch i8 %285, label %480 [
    i8 7, label %466
    i8 6, label %286
    i8 1, label %286
    i8 2, label %286
    i8 3, label %286
    i8 4, label %286
    i8 5, label %427
  ]

286:                                              ; preds = %283, %283, %283, %283, %283
  %287 = load i8, ptr %62, align 4
  switch i8 %287, label %423 [
    i8 1, label %288
    i8 2, label %288
    i8 3, label %288
    i8 4, label %288
    i8 7, label %288
    i8 11, label %288
    i8 12, label %362
    i8 13, label %376
    i8 14, label %380
    i8 15, label %366
  ]

288:                                              ; preds = %286, %286, %286, %286, %286, %286
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i32 16, i1 false) #15, !annotation !11
  switch i8 %287, label %424 [
    i8 1, label %289
    i8 2, label %293
    i8 3, label %297
    i8 4, label %301
    i8 7, label %301
    i8 11, label %313
  ]

289:                                              ; preds = %288
  %290 = getelementptr i8, ptr %33, i32 4
  %291 = load i8, ptr %290, align 1
  %292 = zext i8 %291 to i64
  br label %318

293:                                              ; preds = %288
  %294 = getelementptr i8, ptr %33, i32 4
  %295 = load i16, ptr %294, align 2
  %296 = zext i16 %295 to i64
  br label %318

297:                                              ; preds = %288
  %298 = getelementptr i8, ptr %33, i32 4
  %299 = load i32, ptr %298, align 4
  %300 = zext i32 %299 to i64
  br label %318

301:                                              ; preds = %288, %288
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #15
  store i64 0, ptr %10, align 8, !annotation !11
  %302 = load i16, ptr %33, align 2
  %303 = zext i16 %302 to i32
  %304 = tail call i32 @llvm.smin.i32(i32 %303, i32 12) #15
  %305 = add nsw i32 %304, -4
  %306 = getelementptr i8, ptr %33, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %10, ptr align 1 %306, i32 %305, i1 false) #15
  %307 = icmp ult i16 %302, 12
  br i1 %307, label %308, label %311

308:                                              ; preds = %301
  %309 = getelementptr i8, ptr %10, i32 %305
  %310 = sub nuw nsw i32 12, %304
  call void @llvm.memset.p0.i32(ptr align 1 %309, i8 0, i32 %310, i1 false) #15
  br label %311

311:                                              ; preds = %308, %301
  %312 = load i64, ptr %10, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #15
  br label %318

313:                                              ; preds = %288
  %314 = load i16, ptr %33, align 2
  %315 = zext i16 %314 to i32
  %316 = add nsw i32 %315, -4
  %317 = sext i32 %316 to i64
  br label %318

318:                                              ; preds = %313, %311, %297, %293, %289
  %319 = phi i64 [ %317, %313 ], [ %312, %311 ], [ %300, %297 ], [ %296, %293 ], [ %292, %289 ]
  call void @nla_get_range_unsigned(ptr noundef %62, ptr noundef nonnull %11) #15
  %320 = load i8, ptr %284, align 1
  %321 = icmp eq i8 %320, 2
  br i1 %321, label %324, label %322

322:                                              ; preds = %318
  %323 = load i64, ptr %29, align 8
  br label %344

324:                                              ; preds = %318
  %325 = load i8, ptr %62, align 4
  %326 = icmp eq i8 %325, 11
  %327 = load i64, ptr %29, align 8
  %328 = icmp ugt i64 %319, %327
  %329 = select i1 %326, i1 %328, i1 false
  br i1 %329, label %330, label %344

330:                                              ; preds = %324
  %331 = tail call i32 @___ratelimit(ptr noundef nonnull @nla_validate_range_unsigned._rs, ptr noundef nonnull @__func__.nla_validate_range_unsigned) #15
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %339, label %333

333:                                              ; preds = %330
  %334 = tail call ptr @llvm.thread.pointer() #15
  %335 = getelementptr inbounds %struct.task_struct, ptr %334, i32 0, i32 85
  %336 = load i8, ptr %62, align 4
  %337 = zext i8 %336 to i32
  %338 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %335, i32 noundef %337) #16
  br label %339

339:                                              ; preds = %333, %330
  %340 = and i32 %61, 8
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %426, label %342

342:                                              ; preds = %339
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_validate_range_unsigned.__msg) #15
  %343 = icmp eq ptr %5, null
  br i1 %343, label %424, label %357

344:                                              ; preds = %324, %322
  %345 = phi i64 [ %323, %322 ], [ %327, %324 ]
  %346 = load i64, ptr %11, align 8
  %347 = icmp ult i64 %319, %346
  %348 = icmp ugt i64 %319, %345
  %349 = select i1 %347, i1 true, i1 %348
  br i1 %349, label %350, label %426

350:                                              ; preds = %344
  %351 = load i8, ptr %62, align 4
  %352 = icmp eq i8 %351, 11
  br i1 %352, label %353, label %355

353:                                              ; preds = %350
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_validate_range_unsigned.__msg.10) #15
  %354 = icmp eq ptr %5, null
  br i1 %354, label %424, label %357

355:                                              ; preds = %350
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_validate_range_unsigned.__msg.11) #15
  %356 = icmp eq ptr %5, null
  br i1 %356, label %424, label %357

357:                                              ; preds = %355, %353, %342
  %358 = phi ptr [ @nla_validate_range_unsigned.__msg, %342 ], [ @nla_validate_range_unsigned.__msg.10, %353 ], [ @nla_validate_range_unsigned.__msg.11, %355 ]
  %359 = phi i32 [ -22, %342 ], [ -34, %353 ], [ -34, %355 ]
  store ptr %358, ptr %5, align 4
  %360 = getelementptr inbounds %struct.netlink_ext_ack, ptr %5, i32 0, i32 1
  store ptr %33, ptr %360, align 4
  %361 = getelementptr inbounds %struct.netlink_ext_ack, ptr %5, i32 0, i32 2
  store ptr %62, ptr %361, align 4
  br label %424

362:                                              ; preds = %286
  %363 = getelementptr i8, ptr %33, i32 4
  %364 = load i8, ptr %363, align 1
  %365 = sext i8 %364 to i64
  br label %386

366:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  store i64 0, ptr %9, align 8, !annotation !11
  %367 = load i16, ptr %33, align 2
  %368 = zext i16 %367 to i32
  %369 = tail call i32 @llvm.smin.i32(i32 %368, i32 12) #15
  %370 = add nsw i32 %369, -4
  %371 = getelementptr i8, ptr %33, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %9, ptr align 1 %371, i32 %370, i1 false) #15
  %372 = icmp ult i16 %367, 12
  br i1 %372, label %373, label %384

373:                                              ; preds = %366
  %374 = getelementptr i8, ptr %9, i32 %370
  %375 = sub nuw nsw i32 12, %369
  call void @llvm.memset.p0.i32(ptr align 1 %374, i8 0, i32 %375, i1 false) #15
  br label %384

376:                                              ; preds = %286
  %377 = getelementptr i8, ptr %33, i32 4
  %378 = load i16, ptr %377, align 2
  %379 = sext i16 %378 to i64
  br label %386

380:                                              ; preds = %286
  %381 = getelementptr i8, ptr %33, i32 4
  %382 = load i32, ptr %381, align 4
  %383 = sext i32 %382 to i64
  br label %386

384:                                              ; preds = %373, %366
  %385 = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  br label %386

386:                                              ; preds = %384, %380, %376, %362
  %387 = phi i64 [ %385, %384 ], [ %383, %380 ], [ %379, %376 ], [ %365, %362 ]
  %388 = phi i64 [ -9223372036854775808, %384 ], [ -2147483648, %380 ], [ -32768, %376 ], [ -128, %362 ]
  %389 = phi i64 [ 9223372036854775807, %384 ], [ 2147483647, %380 ], [ 32767, %376 ], [ 127, %362 ]
  switch i8 %285, label %412 [
    i8 1, label %390
    i8 6, label %397
    i8 3, label %403
    i8 4, label %407
  ]

390:                                              ; preds = %386
  %391 = getelementptr %struct.nla_policy, ptr %3, i32 %44, i32 3
  %392 = load i16, ptr %391, align 4
  %393 = sext i16 %392 to i64
  %394 = getelementptr inbounds %struct.anon, ptr %391, i32 0, i32 1
  %395 = load i16, ptr %394, align 2
  %396 = sext i16 %395 to i64
  br label %412

397:                                              ; preds = %386
  %398 = getelementptr %struct.nla_policy, ptr %3, i32 %44, i32 3
  %399 = load ptr, ptr %398, align 4
  %400 = load i64, ptr %399, align 8
  %401 = getelementptr inbounds i8, ptr %399, i32 8
  %402 = load i64, ptr %401, align 8
  br label %412

403:                                              ; preds = %386
  %404 = getelementptr %struct.nla_policy, ptr %3, i32 %44, i32 3
  %405 = load i16, ptr %404, align 4
  %406 = sext i16 %405 to i64
  br label %412

407:                                              ; preds = %386
  %408 = getelementptr %struct.nla_policy, ptr %3, i32 %44, i32 3
  %409 = getelementptr inbounds %struct.anon, ptr %408, i32 0, i32 1
  %410 = load i16, ptr %409, align 2
  %411 = sext i16 %410 to i64
  br label %412

412:                                              ; preds = %407, %403, %397, %390, %386
  %413 = phi i64 [ %388, %386 ], [ %388, %407 ], [ %406, %403 ], [ %400, %397 ], [ %393, %390 ]
  %414 = phi i64 [ %389, %386 ], [ %411, %407 ], [ %389, %403 ], [ %402, %397 ], [ %396, %390 ]
  %415 = icmp slt i64 %387, %413
  %416 = icmp sgt i64 %387, %414
  %417 = select i1 %415, i1 true, i1 %416
  br i1 %417, label %418, label %480

418:                                              ; preds = %412
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_validate_int_range_signed.__msg) #15
  %419 = icmp eq ptr %5, null
  br i1 %419, label %509, label %420

420:                                              ; preds = %418
  store ptr @nla_validate_int_range_signed.__msg, ptr %5, align 4
  %421 = getelementptr inbounds %struct.netlink_ext_ack, ptr %5, i32 0, i32 1
  store ptr %33, ptr %421, align 4
  %422 = getelementptr inbounds %struct.netlink_ext_ack, ptr %5, i32 0, i32 2
  store ptr %62, ptr %422, align 4
  br label %509

423:                                              ; preds = %286
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 321, i32 noundef 9, ptr noundef null) #15
  br label %509

424:                                              ; preds = %357, %355, %353, %342, %288
  %425 = phi i32 [ %359, %357 ], [ -34, %353 ], [ -34, %355 ], [ -22, %342 ], [ -22, %288 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #15
  br label %509

426:                                              ; preds = %344, %339
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #15
  br label %480

427:                                              ; preds = %283
  %428 = load i8, ptr %62, align 4
  switch i8 %428, label %509 [
    i8 1, label %429
    i8 2, label %433
    i8 3, label %437
    i8 4, label %441
  ]

429:                                              ; preds = %427
  %430 = getelementptr i8, ptr %33, i32 4
  %431 = load i8, ptr %430, align 1
  %432 = zext i8 %431 to i64
  br label %453

433:                                              ; preds = %427
  %434 = getelementptr i8, ptr %33, i32 4
  %435 = load i16, ptr %434, align 2
  %436 = zext i16 %435 to i64
  br label %453

437:                                              ; preds = %427
  %438 = getelementptr i8, ptr %33, i32 4
  %439 = load i32, ptr %438, align 4
  %440 = zext i32 %439 to i64
  br label %453

441:                                              ; preds = %427
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #15
  store i64 0, ptr %12, align 8, !annotation !11
  %442 = load i16, ptr %33, align 2
  %443 = zext i16 %442 to i32
  %444 = tail call i32 @llvm.smin.i32(i32 %443, i32 12) #15
  %445 = add nsw i32 %444, -4
  %446 = getelementptr i8, ptr %33, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %12, ptr align 1 %446, i32 %445, i1 false) #15
  %447 = icmp ult i16 %442, 12
  br i1 %447, label %448, label %451

448:                                              ; preds = %441
  %449 = getelementptr i8, ptr %12, i32 %445
  %450 = sub nuw nsw i32 12, %444
  call void @llvm.memset.p0.i32(ptr align 1 %449, i8 0, i32 %450, i1 false) #15
  br label %451

451:                                              ; preds = %448, %441
  %452 = load i64, ptr %12, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #15
  br label %453

453:                                              ; preds = %451, %437, %433, %429
  %454 = phi i64 [ %452, %451 ], [ %440, %437 ], [ %436, %433 ], [ %432, %429 ]
  %455 = getelementptr %struct.nla_policy, ptr %3, i32 %44, i32 3
  %456 = load i32, ptr %455, align 4
  %457 = zext i32 %456 to i64
  %458 = xor i64 %457, -1
  %459 = and i64 %454, %458
  %460 = icmp eq i64 %459, 0
  br i1 %460, label %480, label %461

461:                                              ; preds = %453
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_validate_mask.__msg) #15
  %462 = icmp eq ptr %5, null
  br i1 %462, label %509, label %463

463:                                              ; preds = %461
  store ptr @nla_validate_mask.__msg, ptr %5, align 4
  %464 = getelementptr inbounds %struct.netlink_ext_ack, ptr %5, i32 0, i32 1
  store ptr %33, ptr %464, align 4
  %465 = getelementptr inbounds %struct.netlink_ext_ack, ptr %5, i32 0, i32 2
  store ptr null, ptr %465, align 4
  br label %509

466:                                              ; preds = %283
  %467 = getelementptr %struct.nla_policy, ptr %3, i32 %44, i32 3
  %468 = load ptr, ptr %467, align 4
  %469 = icmp eq ptr %468, null
  br i1 %469, label %480, label %470

470:                                              ; preds = %466
  %471 = tail call i32 %468(ptr noundef %33, ptr noundef %5) #15
  %472 = icmp slt i32 %471, 0
  br i1 %472, label %509, label %480

473:                                              ; preds = %280, %265, %209, %191, %182, %173, %167, %163, %154, %150, %146, %140, %135, %133, %131
  %474 = phi i32 [ -34, %280 ], [ -34, %265 ], [ -34, %209 ], [ -34, %191 ], [ -34, %167 ], [ -34, %173 ], [ -34, %133 ], [ -34, %131 ], [ -22, %163 ], [ -22, %154 ], [ -34, %182 ], [ -22, %135 ], [ -22, %140 ], [ -22, %146 ], [ -22, %150 ]
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @validate_nla.__msg.9) #15
  %475 = icmp eq ptr %5, null
  br i1 %475, label %509, label %476

476:                                              ; preds = %473, %126
  %477 = phi i32 [ -22, %126 ], [ %474, %473 ]
  store ptr @validate_nla.__msg.9, ptr %5, align 4
  %478 = getelementptr inbounds %struct.netlink_ext_ack, ptr %5, i32 0, i32 1
  store ptr %33, ptr %478, align 4
  %479 = getelementptr inbounds %struct.netlink_ext_ack, ptr %5, i32 0, i32 2
  store ptr %62, ptr %479, align 4
  br label %509

480:                                              ; preds = %470, %466, %453, %426, %412, %283, %54
  br i1 %18, label %483, label %481

481:                                              ; preds = %480
  %482 = getelementptr ptr, ptr %6, i32 %44
  store ptr %33, ptr %482, align 4
  br label %483

483:                                              ; preds = %481, %480, %48
  %484 = load i16, ptr %33, align 2
  %485 = zext i16 %484 to i32
  %486 = add nuw nsw i32 %485, 3
  %487 = and i32 %486, 131068
  %488 = sub i32 %34, %487
  %489 = getelementptr i8, ptr %33, i32 %487
  %490 = icmp sgt i32 %488, 3
  br i1 %490, label %32, label %491

491:                                              ; preds = %483, %22
  %492 = phi i32 [ %1, %22 ], [ %488, %483 ]
  %493 = icmp sgt i32 %492, 0
  br i1 %493, label %494, label %508, !prof !8

494:                                              ; preds = %491, %32
  %495 = phi i32 [ %492, %491 ], [ %34, %32 ]
  %496 = tail call i32 @___ratelimit(ptr noundef nonnull @__nla_validate_parse._rs, ptr noundef nonnull @__func__.__nla_validate_parse) #15
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %502, label %498

498:                                              ; preds = %494
  %499 = tail call ptr @llvm.thread.pointer() #15
  %500 = getelementptr inbounds %struct.task_struct, ptr %499, i32 0, i32 85
  %501 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %495, ptr noundef %500) #16
  br label %502

502:                                              ; preds = %498, %494
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nla_validate_parse.__msg.4) #15
  %503 = icmp eq ptr %5, null
  br i1 %503, label %505, label %504

504:                                              ; preds = %502
  store ptr @__nla_validate_parse.__msg.4, ptr %5, align 4
  br label %505

505:                                              ; preds = %504, %502
  %506 = and i32 %4, 1
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %508, label %509

508:                                              ; preds = %505, %491
  br label %509

509:                                              ; preds = %508, %505, %476, %473, %470, %463, %461, %427, %424, %423, %420, %418, %262, %260, %243, %240, %238, %197, %127, %121, %114, %112, %105, %103, %90, %88, %51, %49, %16, %14
  %510 = phi i32 [ 0, %508 ], [ -22, %16 ], [ -22, %14 ], [ -22, %505 ], [ -22, %49 ], [ -22, %51 ], [ -22, %121 ], [ %425, %424 ], [ %474, %473 ], [ %477, %476 ], [ -22, %260 ], [ -22, %262 ], [ -22, %112 ], [ -22, %114 ], [ -22, %103 ], [ -22, %105 ], [ -22, %88 ], [ -22, %90 ], [ -22, %127 ], [ -34, %238 ], [ -34, %240 ], [ -34, %418 ], [ -34, %420 ], [ -22, %423 ], [ -22, %463 ], [ -22, %461 ], [ %245, %243 ], [ %205, %197 ], [ -22, %427 ], [ %471, %470 ]
  ret i32 %510
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @nla_policy_len(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %45

4:                                                ; preds = %40, %2
  %5 = phi i32 [ %41, %40 ], [ 0, %2 ]
  %6 = phi i32 [ %42, %40 ], [ 0, %2 ]
  %7 = phi ptr [ %43, %40 ], [ %0, %2 ]
  %8 = getelementptr inbounds %struct.nla_policy, ptr %7, i32 0, i32 2
  %9 = load i16, ptr %8, align 2
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %4
  %12 = zext i16 %9 to i32
  %13 = add nuw nsw i32 %12, 7
  %14 = and i32 %13, 131068
  %15 = add i32 %14, %5
  br label %40

16:                                               ; preds = %4
  %17 = load i8, ptr %7, align 4
  %18 = zext i8 %17 to i32
  %19 = lshr i32 200673, %18
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = getelementptr [18 x i8], ptr @nla_attr_len, i32 0, i32 %18
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = add nuw nsw i32 %25, 7
  %27 = and i32 %26, 508
  %28 = add i32 %27, %5
  br label %40

29:                                               ; preds = %16
  %30 = lshr i32 200289, %18
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = getelementptr [18 x i8], ptr @nla_attr_minlen, i32 0, i32 %18
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = add nuw nsw i32 %36, 7
  %38 = and i32 %37, 508
  %39 = add i32 %38, %5
  br label %40

40:                                               ; preds = %33, %29, %22, %11
  %41 = phi i32 [ %15, %11 ], [ %28, %22 ], [ %39, %33 ], [ %5, %29 ]
  %42 = add nuw nsw i32 %6, 1
  %43 = getelementptr %struct.nla_policy, ptr %7, i32 1
  %44 = icmp eq i32 %42, %1
  br i1 %44, label %45, label %4

45:                                               ; preds = %40, %2
  %46 = phi i32 [ 0, %2 ], [ %41, %40 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__nla_parse(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) #0 {
  %8 = tail call fastcc i32 @__nla_validate_parse(ptr noundef %2, i32 noundef %3, i32 noundef %1, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %0, i32 noundef 0)
  ret i32 %8
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @nla_find(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = icmp sgt i32 %1, 3
  br i1 %4, label %5, label %25

5:                                                ; preds = %19, %3
  %6 = phi ptr [ %23, %19 ], [ %0, %3 ]
  %7 = phi i32 [ %22, %19 ], [ %1, %3 ]
  %8 = load i16, ptr %6, align 2
  %9 = icmp ult i16 %8, 4
  %10 = zext i16 %8 to i32
  %11 = icmp ult i32 %7, %10
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %25, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.nlattr, ptr %6, i32 0, i32 1
  %15 = load i16, ptr %14, align 2
  %16 = and i16 %15, 16383
  %17 = zext i16 %16 to i32
  %18 = icmp eq i32 %17, %2
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = add nuw nsw i32 %10, 3
  %21 = and i32 %20, 131068
  %22 = sub nsw i32 %7, %21
  %23 = getelementptr i8, ptr %6, i32 %21
  %24 = icmp sgt i32 %22, 3
  br i1 %24, label %5, label %25

25:                                               ; preds = %19, %13, %5, %3
  %26 = phi ptr [ null, %3 ], [ null, %19 ], [ null, %5 ], [ %6, %13 ]
  ret ptr %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nla_strscpy(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = load i16, ptr %1, align 2
  %5 = zext i16 %4 to i32
  %6 = add nsw i32 %5, -4
  %7 = getelementptr i8, ptr %1, i32 4
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %32, label %9

9:                                                ; preds = %3
  %10 = icmp ugt i32 %2, 65535
  %11 = load i1, ptr @nla_strscpy.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !8

14:                                               ; preds = %9
  store i1 true, ptr @nla_strscpy.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 732, i32 noundef 9, ptr noundef null) #15
  br label %15

15:                                               ; preds = %14, %9
  br i1 %10, label %32, label %16

16:                                               ; preds = %15
  %17 = icmp eq i32 %6, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = add nsw i32 %5, -5
  %20 = getelementptr i8, ptr %7, i32 %19
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, i32 %19, i32 %6
  br label %24

24:                                               ; preds = %18, %16
  %25 = phi i32 [ 0, %16 ], [ %23, %18 ]
  %26 = icmp ult i32 %25, %2
  %27 = add nsw i32 %2, -1
  %28 = select i1 %26, i32 %25, i32 -7
  %29 = select i1 %26, i32 %25, i32 %27
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %0, ptr align 1 %7, i32 %29, i1 false)
  %30 = getelementptr i8, ptr %0, i32 %29
  %31 = sub nsw i32 %2, %29
  tail call void @llvm.memset.p0.i32(ptr align 1 %30, i8 0, i32 %31, i1 false)
  br label %32

32:                                               ; preds = %24, %15, %3
  %33 = phi i32 [ %28, %24 ], [ -7, %15 ], [ -7, %3 ]
  ret i32 %33
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nla_strdup(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load i16, ptr %0, align 2
  %4 = zext i16 %3 to i32
  %5 = add nsw i32 %4, -4
  %6 = getelementptr i8, ptr %0, i32 4
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = add nsw i32 %4, -5
  %10 = getelementptr i8, ptr %6, i32 %9
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, i32 %9, i32 %5
  br label %14

14:                                               ; preds = %8, %2
  %15 = phi i32 [ 0, %2 ], [ %13, %8 ]
  %16 = add nsw i32 %15, 1
  %17 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %16, i32 noundef %1) #17
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %17, ptr align 1 %6, i32 %15, i1 false)
  %20 = getelementptr i8, ptr %17, i32 %15
  store i8 0, ptr %20, align 1
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %17, %19 ], [ null, %14 ]
  ret ptr %22
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @nla_memcpy(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #7 {
  %4 = load i16, ptr %1, align 2
  %5 = zext i16 %4 to i32
  %6 = add nsw i32 %5, -4
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 %2)
  %8 = getelementptr i8, ptr %1, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %0, ptr align 1 %8, i32 %7, i1 false)
  %9 = icmp slt i32 %6, %2
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %0, i32 %7
  %12 = sub i32 %2, %7
  tail call void @llvm.memset.p0.i32(ptr align 1 %11, i8 0, i32 %12, i1 false)
  br label %13

13:                                               ; preds = %10, %3
  ret i32 %7
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @nla_memcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #8 {
  %4 = load i16, ptr %0, align 2
  %5 = zext i16 %4 to i32
  %6 = sub i32 -4, %2
  %7 = add i32 %6, %5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %0, i32 4
  %11 = tail call i32 @memcmp(ptr noundef %10, ptr noundef %1, i32 noundef %2)
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi i32 [ %11, %9 ], [ %7, %3 ]
  ret i32 %13
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @nla_strcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = tail call i32 @strlen(ptr noundef %1)
  %4 = getelementptr i8, ptr %0, i32 4
  %5 = load i16, ptr %0, align 2
  %6 = zext i16 %5 to i32
  %7 = add nsw i32 %6, -4
  %8 = call i32 @llvm.smin.i32(i32 %7, i32 0)
  br label %9

9:                                                ; preds = %12, %2
  %10 = phi i32 [ %7, %2 ], [ %13, %12 ]
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = add nsw i32 %10, -1
  %14 = getelementptr i8, ptr %4, i32 %13
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %9, label %17

17:                                               ; preds = %12, %9
  %18 = phi i32 [ %8, %9 ], [ %10, %12 ]
  %19 = sub i32 %18, %3
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = tail call i32 @memcmp(ptr noundef %4, ptr noundef %1, i32 noundef %3)
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i32 [ %22, %21 ], [ %19, %17 ]
  ret i32 %24
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__nla_reserve(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = add i32 %2, 7
  %5 = and i32 %4, -4
  %6 = tail call ptr @skb_put(ptr noundef %0, i32 noundef %5) #15
  %7 = trunc i32 %1 to i16
  %8 = getelementptr inbounds %struct.nlattr, ptr %6, i32 0, i32 1
  store i16 %7, ptr %8, align 2
  %9 = add i32 %2, 4
  %10 = trunc i32 %9 to i16
  store i16 %10, ptr %6, align 2
  %11 = and i32 %9, 65535
  %12 = getelementptr i8, ptr %6, i32 %11
  %13 = sub i32 -4, %2
  %14 = add i32 %13, %5
  tail call void @llvm.memset.p0.i32(ptr align 1 %12, i8 0, i32 %14, i1 false)
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__nla_reserve_64bit(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 %3) #0 {
  %5 = add i32 %2, 7
  %6 = and i32 %5, -4
  %7 = tail call ptr @skb_put(ptr noundef %0, i32 noundef %6) #15
  %8 = trunc i32 %1 to i16
  %9 = getelementptr inbounds %struct.nlattr, ptr %7, i32 0, i32 1
  store i16 %8, ptr %9, align 2
  %10 = add i32 %2, 4
  %11 = trunc i32 %10 to i16
  store i16 %11, ptr %7, align 2
  %12 = and i32 %10, 65535
  %13 = getelementptr i8, ptr %7, i32 %12
  %14 = sub i32 -4, %2
  %15 = add i32 %14, %6
  tail call void @llvm.memset.p0.i32(ptr align 1 %13, i8 0, i32 %15, i1 false) #15
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__nla_reserve_nohdr(ptr noundef %0, i32 noundef %1) #0 {
  %3 = add i32 %1, 3
  %4 = and i32 %3, -4
  %5 = tail call ptr @skb_put(ptr noundef %0, i32 noundef %4) #15
  tail call void @llvm.memset.p0.i32(ptr align 1 %5, i8 0, i32 %4, i1 false) #15
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nla_reserve(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %11 = load ptr, ptr %10, align 8
  %12 = ptrtoint ptr %9 to i32
  %13 = ptrtoint ptr %11 to i32
  %14 = sub i32 %12, %13
  br label %15

15:                                               ; preds = %7, %3
  %16 = phi i32 [ %14, %7 ], [ 0, %3 ]
  %17 = add i32 %2, 7
  %18 = and i32 %17, -4
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %30, label %20, !prof !8

20:                                               ; preds = %15
  %21 = tail call ptr @skb_put(ptr noundef %0, i32 noundef %18) #15
  %22 = trunc i32 %1 to i16
  %23 = getelementptr inbounds %struct.nlattr, ptr %21, i32 0, i32 1
  store i16 %22, ptr %23, align 2
  %24 = add i32 %2, 4
  %25 = trunc i32 %24 to i16
  store i16 %25, ptr %21, align 2
  %26 = and i32 %24, 65535
  %27 = getelementptr i8, ptr %21, i32 %26
  %28 = sub i32 -4, %2
  %29 = add i32 %28, %18
  tail call void @llvm.memset.p0.i32(ptr align 1 %27, i8 0, i32 %29, i1 false) #15
  br label %30

30:                                               ; preds = %20, %15
  %31 = phi ptr [ %21, %20 ], [ null, %15 ]
  ret ptr %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nla_reserve_64bit(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 %3) #0 {
  %5 = add i32 %2, 7
  %6 = and i32 %5, -4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %14 = load ptr, ptr %13, align 8
  %15 = ptrtoint ptr %12 to i32
  %16 = ptrtoint ptr %14 to i32
  %17 = sub i32 %15, %16
  br label %18

18:                                               ; preds = %10, %4
  %19 = phi i32 [ %17, %10 ], [ 0, %4 ]
  %20 = icmp ult i32 %19, %6
  br i1 %20, label %31, label %21, !prof !8

21:                                               ; preds = %18
  %22 = tail call ptr @skb_put(ptr noundef %0, i32 noundef %6) #15
  %23 = trunc i32 %1 to i16
  %24 = getelementptr inbounds %struct.nlattr, ptr %22, i32 0, i32 1
  store i16 %23, ptr %24, align 2
  %25 = add i32 %2, 4
  %26 = trunc i32 %25 to i16
  store i16 %26, ptr %22, align 2
  %27 = and i32 %25, 65535
  %28 = getelementptr i8, ptr %22, i32 %27
  %29 = sub i32 -4, %2
  %30 = add i32 %29, %6
  tail call void @llvm.memset.p0.i32(ptr align 1 %28, i8 0, i32 %30, i1 false) #15
  br label %31

31:                                               ; preds = %21, %18
  %32 = phi ptr [ %22, %21 ], [ null, %18 ]
  ret ptr %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nla_reserve_nohdr(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %10 = load ptr, ptr %9, align 8
  %11 = ptrtoint ptr %8 to i32
  %12 = ptrtoint ptr %10 to i32
  %13 = sub i32 %11, %12
  br label %14

14:                                               ; preds = %6, %2
  %15 = phi i32 [ %13, %6 ], [ 0, %2 ]
  %16 = add i32 %1, 3
  %17 = and i32 %16, -4
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %21, label %19, !prof !8

19:                                               ; preds = %14
  %20 = tail call ptr @skb_put(ptr noundef %0, i32 noundef %17) #15
  tail call void @llvm.memset.p0.i32(ptr align 1 %20, i8 0, i32 %17, i1 false) #15
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %20, %19 ], [ null, %14 ]
  ret ptr %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__nla_put(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = add i32 %2, 7
  %6 = and i32 %5, -4
  %7 = tail call ptr @skb_put(ptr noundef %0, i32 noundef %6) #15
  %8 = trunc i32 %1 to i16
  %9 = getelementptr inbounds %struct.nlattr, ptr %7, i32 0, i32 1
  store i16 %8, ptr %9, align 2
  %10 = add i32 %2, 4
  %11 = trunc i32 %10 to i16
  store i16 %11, ptr %7, align 2
  %12 = and i32 %10, 65535
  %13 = getelementptr i8, ptr %7, i32 %12
  %14 = sub i32 -4, %2
  %15 = add i32 %14, %6
  tail call void @llvm.memset.p0.i32(ptr align 1 %13, i8 0, i32 %15, i1 false) #15
  %16 = getelementptr i8, ptr %7, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %16, ptr align 1 %3, i32 %2, i1 false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__nla_put_64bit(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 %4) #0 {
  %6 = add i32 %2, 7
  %7 = and i32 %6, -4
  %8 = tail call ptr @skb_put(ptr noundef %0, i32 noundef %7) #15
  %9 = trunc i32 %1 to i16
  %10 = getelementptr inbounds %struct.nlattr, ptr %8, i32 0, i32 1
  store i16 %9, ptr %10, align 2
  %11 = add i32 %2, 4
  %12 = trunc i32 %11 to i16
  store i16 %12, ptr %8, align 2
  %13 = and i32 %11, 65535
  %14 = getelementptr i8, ptr %8, i32 %13
  %15 = sub i32 -4, %2
  %16 = add i32 %15, %7
  tail call void @llvm.memset.p0.i32(ptr align 1 %14, i8 0, i32 %16, i1 false) #15
  %17 = getelementptr i8, ptr %8, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %17, ptr align 1 %3, i32 %2, i1 false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__nla_put_nohdr(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = add i32 %1, 3
  %5 = and i32 %4, -4
  %6 = tail call ptr @skb_put(ptr noundef %0, i32 noundef %5) #15
  tail call void @llvm.memset.p0.i32(ptr align 1 %6, i8 0, i32 %5, i1 false) #15
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %6, ptr align 1 %2, i32 %1, i1 false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nla_put(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %12 = load ptr, ptr %11, align 8
  %13 = ptrtoint ptr %10 to i32
  %14 = ptrtoint ptr %12 to i32
  %15 = sub i32 %13, %14
  br label %16

16:                                               ; preds = %8, %4
  %17 = phi i32 [ %15, %8 ], [ 0, %4 ]
  %18 = add i32 %2, 7
  %19 = and i32 %18, -4
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %32, label %21, !prof !8

21:                                               ; preds = %16
  %22 = tail call ptr @skb_put(ptr noundef %0, i32 noundef %19) #15
  %23 = trunc i32 %1 to i16
  %24 = getelementptr inbounds %struct.nlattr, ptr %22, i32 0, i32 1
  store i16 %23, ptr %24, align 2
  %25 = add i32 %2, 4
  %26 = trunc i32 %25 to i16
  store i16 %26, ptr %22, align 2
  %27 = and i32 %25, 65535
  %28 = getelementptr i8, ptr %22, i32 %27
  %29 = sub i32 -4, %2
  %30 = add i32 %29, %19
  tail call void @llvm.memset.p0.i32(ptr align 1 %28, i8 0, i32 %30, i1 false) #15
  %31 = getelementptr i8, ptr %22, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %31, ptr align 1 %3, i32 %2, i1 false) #15
  br label %32

32:                                               ; preds = %21, %16
  %33 = phi i32 [ 0, %21 ], [ -90, %16 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nla_put_64bit(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 %4) #0 {
  %6 = add i32 %2, 7
  %7 = and i32 %6, -4
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %15 = load ptr, ptr %14, align 8
  %16 = ptrtoint ptr %13 to i32
  %17 = ptrtoint ptr %15 to i32
  %18 = sub i32 %16, %17
  br label %19

19:                                               ; preds = %11, %5
  %20 = phi i32 [ %18, %11 ], [ 0, %5 ]
  %21 = icmp ult i32 %20, %7
  br i1 %21, label %33, label %22, !prof !8

22:                                               ; preds = %19
  %23 = tail call ptr @skb_put(ptr noundef %0, i32 noundef %7) #15
  %24 = trunc i32 %1 to i16
  %25 = getelementptr inbounds %struct.nlattr, ptr %23, i32 0, i32 1
  store i16 %24, ptr %25, align 2
  %26 = add i32 %2, 4
  %27 = trunc i32 %26 to i16
  store i16 %27, ptr %23, align 2
  %28 = and i32 %26, 65535
  %29 = getelementptr i8, ptr %23, i32 %28
  %30 = sub i32 -4, %2
  %31 = add i32 %30, %7
  tail call void @llvm.memset.p0.i32(ptr align 1 %29, i8 0, i32 %31, i1 false) #15
  %32 = getelementptr i8, ptr %23, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %32, ptr align 1 %3, i32 %2, i1 false) #15
  br label %33

33:                                               ; preds = %22, %19
  %34 = phi i32 [ 0, %22 ], [ -90, %19 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nla_put_nohdr(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %11 = load ptr, ptr %10, align 8
  %12 = ptrtoint ptr %9 to i32
  %13 = ptrtoint ptr %11 to i32
  %14 = sub i32 %12, %13
  br label %15

15:                                               ; preds = %7, %3
  %16 = phi i32 [ %14, %7 ], [ 0, %3 ]
  %17 = add i32 %1, 3
  %18 = and i32 %17, -4
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %22, label %20, !prof !8

20:                                               ; preds = %15
  %21 = tail call ptr @skb_put(ptr noundef %0, i32 noundef %18) #15
  tail call void @llvm.memset.p0.i32(ptr align 1 %21, i8 0, i32 %18, i1 false) #15
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %21, ptr align 1 %2, i32 %1, i1 false) #15
  br label %22

22:                                               ; preds = %20, %15
  %23 = phi i32 [ 0, %20 ], [ -90, %15 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nla_append(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %11 = load ptr, ptr %10, align 8
  %12 = ptrtoint ptr %9 to i32
  %13 = ptrtoint ptr %11 to i32
  %14 = sub i32 %12, %13
  br label %15

15:                                               ; preds = %7, %3
  %16 = phi i32 [ %14, %7 ], [ 0, %3 ]
  %17 = add i32 %1, 3
  %18 = and i32 %17, -4
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %22, label %20, !prof !8

20:                                               ; preds = %15
  %21 = tail call ptr @skb_put(ptr noundef %0, i32 noundef %1) #15
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %21, ptr align 1 %2, i32 %1, i1 false) #15
  br label %22

22:                                               ; preds = %20, %15
  %23 = phi i32 [ 0, %20 ], [ -90, %15 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #14

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2153588318, i64 2153588795, i64 2153588355, i64 2153588411, i64 2153588445, i64 2153588469, i64 2153588510, i64 2153588531, i64 2153588559, i64 2153588593}
!11 = !{!"auto-init"}
