; ModuleID = '/llk/IR/crypto/ahash.c_pt.bc'
source_filename = "../crypto/ahash.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_hash_walk_done:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_hash_walk_done\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_hash_walk_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_hash_walk_first:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_hash_walk_first\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_hash_walk_first:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_ahash_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_ahash_setkey\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_ahash_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_ahash_final:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_ahash_final\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_ahash_final:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_ahash_finup:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_ahash_finup\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_ahash_finup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_ahash_digest:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_ahash_digest\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_ahash_digest:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_grab_ahash:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_grab_ahash\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_grab_ahash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_alloc_ahash:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_alloc_ahash\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_alloc_ahash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_has_ahash:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_has_ahash\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_has_ahash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_register_ahash:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_register_ahash\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_register_ahash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_unregister_ahash:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_unregister_ahash\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_unregister_ahash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_register_ahashes:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_register_ahashes\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_register_ahashes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_unregister_ahashes:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_unregister_ahashes\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_unregister_ahashes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahash_register_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22ahash_register_instance\22\09\09\09\09\09"
module asm "__kstrtabns_ahash_register_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_hash_alg_has_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_hash_alg_has_setkey\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_hash_alg_has_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.crypto_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.crypto_hash_walk = type { ptr, i32, i32, ptr, i32, i32, ptr, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.44, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.15 }
%struct.llist_node = type { ptr }
%union.anon.15 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.16 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.44 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.page = type { i32, %union.anon, %union.anon.63, %struct.atomic_t }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [24 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.88, ptr, ptr, ptr, ptr, [48 x i8] }
%union.anon.88 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [28 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.ahash_request_priv = type { ptr, ptr, ptr, i32, [48 x i8], [0 x ptr] }
%struct.crypto_spawn = type { %struct.list_head, ptr, %union.anon.90, ptr, i32, i8, i8 }
%union.anon.90 = type { ptr }
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [56 x i8], %struct.crypto_alg }
%struct.ahash_instance = type { ptr, [60 x i8], %union.anon.91 }
%union.anon.91 = type { %struct.anon.92 }
%struct.anon.92 = type { [128 x i8], %struct.crypto_instance }
%struct.crypto_instance = type { %struct.crypto_alg, ptr, %union.anon.89, [52 x i8], [0 x ptr] }
%union.anon.89 = type { %struct.hlist_node }
%struct.crypto_report_hash = type { [64 x i8], i32, i32 }

@__kstrtab_crypto_hash_walk_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_hash_walk_done = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_hash_walk_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_hash_walk_done to i32), ptr @__kstrtab_crypto_hash_walk_done, ptr @__kstrtabns_crypto_hash_walk_done }, section "___ksymtab_gpl+crypto_hash_walk_done", align 4
@__kstrtab_crypto_hash_walk_first = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_hash_walk_first = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_hash_walk_first = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_hash_walk_first to i32), ptr @__kstrtab_crypto_hash_walk_first, ptr @__kstrtabns_crypto_hash_walk_first }, section "___ksymtab_gpl+crypto_hash_walk_first", align 4
@__kstrtab_crypto_ahash_setkey = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_ahash_setkey = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_ahash_setkey = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_ahash_setkey to i32), ptr @__kstrtab_crypto_ahash_setkey, ptr @__kstrtabns_crypto_ahash_setkey }, section "___ksymtab_gpl+crypto_ahash_setkey", align 4
@__kstrtab_crypto_ahash_final = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_ahash_final = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_ahash_final = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_ahash_final to i32), ptr @__kstrtab_crypto_ahash_final, ptr @__kstrtabns_crypto_ahash_final }, section "___ksymtab_gpl+crypto_ahash_final", align 4
@__kstrtab_crypto_ahash_finup = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_ahash_finup = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_ahash_finup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_ahash_finup to i32), ptr @__kstrtab_crypto_ahash_finup, ptr @__kstrtabns_crypto_ahash_finup }, section "___ksymtab_gpl+crypto_ahash_finup", align 4
@__kstrtab_crypto_ahash_digest = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_ahash_digest = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_ahash_digest = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_ahash_digest to i32), ptr @__kstrtab_crypto_ahash_digest, ptr @__kstrtabns_crypto_ahash_digest }, section "___ksymtab_gpl+crypto_ahash_digest", align 4
@crypto_ahash_type = internal constant %struct.crypto_type { ptr null, ptr @crypto_ahash_extsize, ptr null, ptr @crypto_ahash_init_tfm, ptr @crypto_ahash_show, ptr @crypto_ahash_report, ptr @crypto_ahash_free_instance, i32 15, i32 -16, i32 14, i32 64 }, align 4
@__kstrtab_crypto_grab_ahash = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_grab_ahash = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_grab_ahash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_grab_ahash to i32), ptr @__kstrtab_crypto_grab_ahash, ptr @__kstrtabns_crypto_grab_ahash }, section "___ksymtab_gpl+crypto_grab_ahash", align 4
@__kstrtab_crypto_alloc_ahash = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_alloc_ahash = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_alloc_ahash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_alloc_ahash to i32), ptr @__kstrtab_crypto_alloc_ahash, ptr @__kstrtabns_crypto_alloc_ahash }, section "___ksymtab_gpl+crypto_alloc_ahash", align 4
@__kstrtab_crypto_has_ahash = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_has_ahash = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_has_ahash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_has_ahash to i32), ptr @__kstrtab_crypto_has_ahash, ptr @__kstrtabns_crypto_has_ahash }, section "___ksymtab_gpl+crypto_has_ahash", align 4
@__kstrtab_crypto_register_ahash = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_register_ahash = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_register_ahash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_register_ahash to i32), ptr @__kstrtab_crypto_register_ahash, ptr @__kstrtabns_crypto_register_ahash }, section "___ksymtab_gpl+crypto_register_ahash", align 4
@__kstrtab_crypto_unregister_ahash = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_unregister_ahash = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_unregister_ahash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_unregister_ahash to i32), ptr @__kstrtab_crypto_unregister_ahash, ptr @__kstrtabns_crypto_unregister_ahash }, section "___ksymtab_gpl+crypto_unregister_ahash", align 4
@__kstrtab_crypto_register_ahashes = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_register_ahashes = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_register_ahashes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_register_ahashes to i32), ptr @__kstrtab_crypto_register_ahashes, ptr @__kstrtabns_crypto_register_ahashes }, section "___ksymtab_gpl+crypto_register_ahashes", align 4
@__kstrtab_crypto_unregister_ahashes = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_unregister_ahashes = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_unregister_ahashes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_unregister_ahashes to i32), ptr @__kstrtab_crypto_unregister_ahashes, ptr @__kstrtabns_crypto_unregister_ahashes }, section "___ksymtab_gpl+crypto_unregister_ahashes", align 4
@.str = private unnamed_addr constant [15 x i8] c"crypto/ahash.c\00", align 1
@__kstrtab_ahash_register_instance = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahash_register_instance = external dso_local constant [0 x i8], align 1
@__ksymtab_ahash_register_instance = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahash_register_instance to i32), ptr @__kstrtab_ahash_register_instance, ptr @__kstrtabns_ahash_register_instance }, section "___ksymtab_gpl+ahash_register_instance", align 4
@__kstrtab_crypto_hash_alg_has_setkey = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_hash_alg_has_setkey = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_hash_alg_has_setkey = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_hash_alg_has_setkey to i32), ptr @__kstrtab_crypto_hash_alg_has_setkey, ptr @__kstrtabns_crypto_hash_alg_has_setkey }, section "___ksymtab_gpl+crypto_hash_alg_has_setkey", align 4
@__UNIQUE_ID_file269 = internal constant [36 x i8] c"crypto_hash.file=crypto/crypto_hash\00", section ".modinfo", align 1
@__UNIQUE_ID_license270 = internal constant [24 x i8] c"crypto_hash.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description271 = internal constant [61 x i8] c"crypto_hash.description=Asynchronous cryptographic hash type\00", section ".modinfo", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"type         : ahash\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"async        : %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"blocksize    : %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"digestsize   : %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"ahash\00", align 1
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_description271, ptr @__UNIQUE_ID_file269, ptr @__UNIQUE_ID_license270, ptr @__ksymtab_ahash_register_instance, ptr @__ksymtab_crypto_ahash_digest, ptr @__ksymtab_crypto_ahash_final, ptr @__ksymtab_crypto_ahash_finup, ptr @__ksymtab_crypto_ahash_setkey, ptr @__ksymtab_crypto_alloc_ahash, ptr @__ksymtab_crypto_grab_ahash, ptr @__ksymtab_crypto_has_ahash, ptr @__ksymtab_crypto_hash_alg_has_setkey, ptr @__ksymtab_crypto_hash_walk_done, ptr @__ksymtab_crypto_hash_walk_first, ptr @__ksymtab_crypto_register_ahash, ptr @__ksymtab_crypto_register_ahashes, ptr @__ksymtab_crypto_unregister_ahash, ptr @__ksymtab_crypto_unregister_ahashes], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_hash_walk_done(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.crypto_hash_walk, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.crypto_hash_walk, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = load ptr, ptr %0, align 4
  %8 = sub i32 0, %6
  %9 = getelementptr i8, ptr %7, i32 %8
  store ptr %9, ptr %0, align 4
  %10 = getelementptr inbounds %struct.crypto_hash_walk, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %2
  %14 = and i32 %6, %4
  %15 = icmp eq i32 %14, 0
  %16 = icmp ne i32 %1, 0
  %17 = or i1 %16, %15
  br i1 %17, label %28, label %18

18:                                               ; preds = %13
  %19 = add i32 %6, %4
  %20 = xor i32 %4, -1
  %21 = and i32 %19, %20
  store i32 %21, ptr %5, align 4
  %22 = sub i32 4096, %21
  %23 = tail call i32 @llvm.umin.i32(i32 %11, i32 %22)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = sub i32 %11, %23
  store i32 %26, ptr %10, align 4
  %27 = getelementptr i8, ptr %9, i32 %21
  store ptr %27, ptr %0, align 4
  br label %95

28:                                               ; preds = %18, %13, %2
  tail call void @kunmap_local_indexed(ptr noundef %9) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !8
  %29 = tail call ptr @llvm.thread.pointer() #9
  %30 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 149
  %31 = load i32, ptr %30, align 8
  %32 = add i32 %31, -1
  store i32 %32, ptr %30, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !9
  %33 = getelementptr inbounds %struct.crypto_hash_walk, ptr %0, i32 0, i32 7
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 512
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %28
  %38 = tail call i32 @__cond_resched() #9
  br label %39

39:                                               ; preds = %37, %28
  %40 = icmp eq i32 %1, 0
  br i1 %40, label %41, label %95

41:                                               ; preds = %39
  %42 = load i32, ptr %10, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %41
  store i32 0, ptr %5, align 4
  %45 = getelementptr inbounds %struct.crypto_hash_walk, ptr %0, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr %struct.page, ptr %46, i32 1
  store ptr %47, ptr %45, align 4
  %48 = tail call i32 @llvm.umin.i32(i32 %42, i32 4096) #9
  %49 = load i32, ptr @pgprot_kernel, align 4
  %50 = or i32 %49, 512
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  %51 = load i32, ptr %30, align 8
  %52 = add i32 %51, 1
  store i32 %52, ptr %30, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %53 = tail call ptr @__kmap_local_page_prot(ptr noundef %47, i32 noundef %50) #9
  store ptr %53, ptr %0, align 4
  %54 = load i32, ptr %10, align 4
  %55 = sub i32 %54, %48
  store i32 %55, ptr %10, align 4
  br label %95

56:                                               ; preds = %41
  %57 = getelementptr inbounds %struct.crypto_hash_walk, ptr %0, i32 0, i32 5
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %95, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.crypto_hash_walk, ptr %0, i32 0, i32 6
  %62 = load ptr, ptr %61, align 4
  %63 = tail call ptr @sg_next(ptr noundef %62) #9
  store ptr %63, ptr %61, align 4
  %64 = getelementptr inbounds %struct.scatterlist, ptr %63, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  store i32 %65, ptr %5, align 4
  %66 = load i32, ptr %63, align 4
  %67 = and i32 %66, -4
  %68 = inttoptr i32 %67 to ptr
  %69 = lshr i32 %65, 12
  %70 = getelementptr %struct.page, ptr %68, i32 %69
  %71 = getelementptr inbounds %struct.crypto_hash_walk, ptr %0, i32 0, i32 3
  store ptr %70, ptr %71, align 4
  %72 = and i32 %65, 4095
  store i32 %72, ptr %5, align 4
  %73 = getelementptr inbounds %struct.scatterlist, ptr %63, i32 0, i32 2
  %74 = load i32, ptr %73, align 4
  %75 = load i32, ptr %57, align 4
  %76 = tail call i32 @llvm.umin.i32(i32 %74, i32 %75) #9
  store i32 %76, ptr %10, align 4
  %77 = sub i32 %75, %76
  store i32 %77, ptr %57, align 4
  %78 = load i32, ptr %3, align 4
  %79 = sub nuw nsw i32 4096, %72
  %80 = tail call i32 @llvm.umin.i32(i32 %76, i32 %79) #9
  %81 = load i32, ptr @pgprot_kernel, align 4
  %82 = or i32 %81, 512
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  %83 = load i32, ptr %30, align 8
  %84 = add i32 %83, 1
  store i32 %84, ptr %30, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %85 = tail call ptr @__kmap_local_page_prot(ptr noundef %70, i32 noundef %82) #9
  %86 = getelementptr i8, ptr %85, i32 %72
  store ptr %86, ptr %0, align 4
  %87 = and i32 %78, %72
  %88 = icmp eq i32 %87, 0
  %89 = add i32 %78, 1
  %90 = sub i32 %89, %87
  %91 = tail call i32 @llvm.umin.i32(i32 %80, i32 %90) #9
  %92 = select i1 %88, i32 %80, i32 %91
  %93 = load i32, ptr %10, align 4
  %94 = sub i32 %93, %92
  store i32 %94, ptr %10, align 4
  br label %95

95:                                               ; preds = %60, %56, %44, %39, %25
  %96 = phi i32 [ %48, %44 ], [ %92, %60 ], [ %23, %25 ], [ %1, %39 ], [ 0, %56 ]
  ret i32 %96
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_hash_walk_first(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.crypto_hash_walk, ptr %1, i32 0, i32 5
  store i32 %4, ptr %5, align 4
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.crypto_hash_walk, ptr %1, i32 0, i32 4
  store i32 0, ptr %8, align 4
  br label %56

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 16
  %12 = getelementptr i8, ptr %11, i32 12
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.crypto_alg, ptr %13, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.crypto_hash_walk, ptr %1, i32 0, i32 2
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.crypto_hash_walk, ptr %1, i32 0, i32 6
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.crypto_hash_walk, ptr %1, i32 0, i32 7
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.scatterlist, ptr %18, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.crypto_hash_walk, ptr %1, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  %26 = load i32, ptr %18, align 4
  %27 = and i32 %26, -4
  %28 = inttoptr i32 %27 to ptr
  %29 = lshr i32 %24, 12
  %30 = getelementptr %struct.page, ptr %28, i32 %29
  %31 = getelementptr inbounds %struct.crypto_hash_walk, ptr %1, i32 0, i32 3
  store ptr %30, ptr %31, align 4
  %32 = and i32 %24, 4095
  store i32 %32, ptr %25, align 4
  %33 = getelementptr inbounds %struct.scatterlist, ptr %18, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.crypto_hash_walk, ptr %1, i32 0, i32 4
  %36 = tail call i32 @llvm.umin.i32(i32 %34, i32 %4) #9
  store i32 %36, ptr %35, align 4
  %37 = sub i32 %4, %36
  store i32 %37, ptr %5, align 4
  %38 = sub nuw nsw i32 4096, %32
  %39 = tail call i32 @llvm.umin.i32(i32 %36, i32 %38) #9
  %40 = load i32, ptr @pgprot_kernel, align 4
  %41 = or i32 %40, 512
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  %42 = tail call ptr @llvm.thread.pointer() #9
  %43 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 149
  %44 = load i32, ptr %43, align 8
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %46 = tail call ptr @__kmap_local_page_prot(ptr noundef %30, i32 noundef %41) #9
  %47 = getelementptr i8, ptr %46, i32 %32
  store ptr %47, ptr %1, align 4
  %48 = and i32 %32, %15
  %49 = icmp eq i32 %48, 0
  %50 = add i32 %15, 1
  %51 = sub i32 %50, %48
  %52 = tail call i32 @llvm.umin.i32(i32 %39, i32 %51) #9
  %53 = select i1 %49, i32 %39, i32 %52
  %54 = load i32, ptr %35, align 4
  %55 = sub i32 %54, %53
  store i32 %55, ptr %35, align 4
  br label %56

56:                                               ; preds = %9, %7
  %57 = phi i32 [ %53, %9 ], [ 0, %7 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_ahash_setkey(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 0, i32 10, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = ptrtoint ptr %1 to i32
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %3
  %12 = add i32 %7, %2
  %13 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %12, i32 noundef 3264) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %11
  %16 = ptrtoint ptr %13 to i32
  %17 = add i32 %7, %16
  %18 = xor i32 %7, -1
  %19 = and i32 %17, %18
  %20 = inttoptr i32 %19 to ptr
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %20, ptr align 1 %1, i32 %2, i1 false) #9
  %21 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %22(ptr noundef %0, ptr noundef %20, i32 noundef %2) #9
  tail call void @kfree_sensitive(ptr noundef nonnull %13) #9
  br label %28

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 %26(ptr noundef %0, ptr noundef %1, i32 noundef %2) #9
  br label %28

28:                                               ; preds = %24, %15
  %29 = phi i32 [ %27, %24 ], [ %23, %15 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %46, label %31, !prof !12

31:                                               ; preds = %28, %11
  %32 = phi i32 [ %29, %28 ], [ -12, %11 ]
  %33 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 0, i32 7
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, @ahash_nosetkey
  br i1 %35, label %50, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %4, align 4
  %38 = getelementptr i8, ptr %37, i32 16
  %39 = load i32, ptr %38, align 16
  %40 = and i32 %39, 16384
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 0, i32 10
  %44 = load i32, ptr %43, align 64
  %45 = or i32 %44, 1
  store i32 %45, ptr %43, align 64
  br label %50

46:                                               ; preds = %28
  %47 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 0, i32 10
  %48 = load i32, ptr %47, align 64
  %49 = and i32 %48, -2
  store i32 %49, ptr %47, align 64
  br label %50

50:                                               ; preds = %46, %42, %36, %31
  %51 = phi i32 [ 0, %46 ], [ %32, %31 ], [ %32, %36 ], [ %32, %42 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_ahash_final(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 -56
  %5 = load ptr, ptr %4, align 8
  %6 = tail call fastcc i32 @crypto_ahash_op(ptr noundef %0, ptr noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @crypto_ahash_op(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_alg, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 32
  %11 = ptrtoint ptr %10 to i32
  %12 = and i32 %8, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %65, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 512
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 2592, i32 3264
  %20 = and i32 %8, -64
  %21 = getelementptr i8, ptr %6, i32 -64
  %22 = load i32, ptr %21, align 64
  %23 = add i32 %20, %22
  %24 = add i32 %23, 64
  %25 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %24, i32 noundef %19) #10
  %26 = icmp eq ptr %25, null
  br i1 %26, label %67, label %27

27:                                               ; preds = %14
  %28 = load ptr, ptr %9, align 32
  %29 = getelementptr inbounds %struct.ahash_request_priv, ptr %25, i32 0, i32 2
  store ptr %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8
  store ptr %31, ptr %25, align 64
  %32 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.ahash_request_priv, ptr %25, i32 0, i32 1
  store ptr %33, ptr %34, align 4
  %35 = load i32, ptr %15, align 4
  %36 = getelementptr inbounds %struct.ahash_request_priv, ptr %25, i32 0, i32 3
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.ahash_request_priv, ptr %25, i32 0, i32 5
  %38 = ptrtoint ptr %37 to i32
  %39 = add i32 %8, %38
  %40 = xor i32 %8, -1
  %41 = and i32 %39, %40
  %42 = inttoptr i32 %41 to ptr
  store ptr %42, ptr %9, align 32
  store ptr @ahash_op_unaligned_done, ptr %30, align 8
  store ptr %0, ptr %32, align 4
  %43 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 4
  store ptr %25, ptr %43, align 4
  %44 = tail call i32 %1(ptr noundef %0) #9
  switch i32 %44, label %45 [
    i32 -16, label %67
    i32 -115, label %67
  ]

45:                                               ; preds = %27
  %46 = load ptr, ptr %43, align 4
  %47 = icmp eq i32 %44, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.ahash_request_priv, ptr %46, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8
  %51 = load ptr, ptr %9, align 32
  %52 = load ptr, ptr %3, align 16
  %53 = getelementptr i8, ptr %52, i32 12
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %54, i32 -64
  %56 = load i32, ptr %55, align 64
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %50, ptr align 1 %51, i32 %56, i1 false) #9
  br label %57

57:                                               ; preds = %48, %45
  %58 = getelementptr inbounds %struct.ahash_request_priv, ptr %46, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8
  store ptr %59, ptr %9, align 32
  %60 = getelementptr inbounds %struct.ahash_request_priv, ptr %46, i32 0, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = load ptr, ptr %46, align 64
  %63 = getelementptr inbounds %struct.ahash_request_priv, ptr %46, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  store ptr %62, ptr %30, align 8
  store ptr %64, ptr %32, align 4
  store i32 %61, ptr %15, align 4
  store ptr null, ptr %43, align 4
  tail call void @kfree_sensitive(ptr noundef %46) #9
  br label %67

65:                                               ; preds = %2
  %66 = tail call i32 %1(ptr noundef %0) #9
  br label %67

67:                                               ; preds = %65, %57, %27, %27, %14
  %68 = phi i32 [ %66, %65 ], [ %44, %57 ], [ %44, %27 ], [ %44, %27 ], [ -12, %14 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_ahash_finup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 -52
  %5 = load ptr, ptr %4, align 4
  %6 = tail call fastcc i32 @crypto_ahash_op(ptr noundef %0, ptr noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_ahash_digest(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = load i32, ptr %3, align 64
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %3, i32 -48
  %9 = load ptr, ptr %8, align 16
  %10 = tail call fastcc i32 @crypto_ahash_op(ptr noundef %0, ptr noundef %9)
  br label %11

11:                                               ; preds = %7, %1
  %12 = phi i32 [ %10, %7 ], [ -126, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_grab_ahash(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.crypto_spawn, ptr %0, i32 0, i32 3
  store ptr @crypto_ahash_type, ptr %6, align 4
  %7 = tail call i32 @crypto_grab_spawn(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #9
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_spawn(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @crypto_alloc_ahash(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @crypto_alloc_tfm_node(ptr noundef %0, ptr noundef nonnull @crypto_ahash_type, i32 noundef %1, i32 noundef %2, i32 noundef -1) #9
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_has_ahash(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @crypto_type_has_alg(ptr noundef %0, ptr noundef nonnull @crypto_ahash_type, i32 noundef %1, i32 noundef %2) #9
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_type_has_alg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_register_ahash(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ahash_alg, ptr %0, i32 0, i32 11
  %3 = load i32, ptr %2, align 64
  %4 = icmp ugt i32 %3, 64
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ahash_alg, ptr %0, i32 0, i32 11, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, -513
  %9 = icmp ult i32 %8, -512
  br i1 %9, label %17, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ahash_alg, ptr %0, i32 0, i32 11, i32 3, i32 10
  store ptr @crypto_ahash_type, ptr %11, align 8
  %12 = getelementptr inbounds %struct.ahash_alg, ptr %0, i32 0, i32 11, i32 3, i32 2
  %13 = load i32, ptr %12, align 16
  %14 = or i32 %13, 15
  store i32 %14, ptr %12, align 16
  %15 = getelementptr inbounds %struct.ahash_alg, ptr %0, i32 0, i32 11, i32 3
  %16 = tail call i32 @crypto_register_alg(ptr noundef %15) #9
  br label %17

17:                                               ; preds = %10, %5, %1
  %18 = phi i32 [ %16, %10 ], [ -22, %5 ], [ -22, %1 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_alg(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_unregister_ahash(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ahash_alg, ptr %0, i32 0, i32 11, i32 3
  tail call void @crypto_unregister_alg(ptr noundef %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_alg(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_register_ahashes(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %33

4:                                                ; preds = %25, %2
  %5 = phi i32 [ %26, %25 ], [ 0, %2 ]
  %6 = getelementptr %struct.ahash_alg, ptr %0, i32 %5, i32 11
  %7 = load i32, ptr %6, align 64
  %8 = icmp ugt i32 %7, 64
  br i1 %8, label %22, label %9

9:                                                ; preds = %4
  %10 = getelementptr %struct.ahash_alg, ptr %0, i32 %5, i32 11, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -513
  %13 = icmp ult i32 %12, -512
  br i1 %13, label %22, label %14

14:                                               ; preds = %9
  %15 = getelementptr %struct.ahash_alg, ptr %0, i32 %5, i32 11, i32 3, i32 10
  store ptr @crypto_ahash_type, ptr %15, align 8
  %16 = getelementptr %struct.ahash_alg, ptr %0, i32 %5, i32 11, i32 3, i32 2
  %17 = load i32, ptr %16, align 16
  %18 = or i32 %17, 15
  store i32 %18, ptr %16, align 16
  %19 = getelementptr %struct.ahash_alg, ptr %0, i32 %5, i32 11, i32 3
  %20 = tail call i32 @crypto_register_alg(ptr noundef %19) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %14, %9, %4
  %23 = phi i32 [ %20, %14 ], [ -22, %9 ], [ -22, %4 ]
  %24 = icmp eq i32 %5, 0
  br i1 %24, label %33, label %28

25:                                               ; preds = %14
  %26 = add nuw nsw i32 %5, 1
  %27 = icmp eq i32 %26, %1
  br i1 %27, label %33, label %4

28:                                               ; preds = %28, %22
  %29 = phi i32 [ %30, %28 ], [ %5, %22 ]
  %30 = add nsw i32 %29, -1
  %31 = getelementptr %struct.ahash_alg, ptr %0, i32 %30, i32 11, i32 3
  tail call void @crypto_unregister_alg(ptr noundef %31) #9
  %32 = icmp sgt i32 %29, 1
  br i1 %32, label %28, label %33

33:                                               ; preds = %28, %25, %22, %2
  %34 = phi i32 [ %23, %22 ], [ 0, %2 ], [ %23, %28 ], [ 0, %25 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_unregister_ahashes(ptr noundef %0, i32 noundef %1) #0 {
  %3 = add i32 %1, -1
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %10

5:                                                ; preds = %5, %2
  %6 = phi i32 [ %8, %5 ], [ %3, %2 ]
  %7 = getelementptr %struct.ahash_alg, ptr %0, i32 %6, i32 11, i32 3
  tail call void @crypto_unregister_alg(ptr noundef %7) #9
  %8 = add nsw i32 %6, -1
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %5, label %10

10:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ahash_register_instance(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %1, align 64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !13

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 637, i32 noundef 9, ptr noundef null) #9
  br label %22

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ahash_instance, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 64
  %8 = load i32, ptr %7, align 64
  %9 = icmp ugt i32 %8, 64
  br i1 %9, label %22, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ahash_instance, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 68
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -513
  %14 = icmp ult i32 %13, -512
  br i1 %14, label %22, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ahash_instance, ptr %1, i32 0, i32 2, i32 0, i32 1, i32 0, i32 10
  store ptr @crypto_ahash_type, ptr %16, align 8
  %17 = getelementptr inbounds %struct.ahash_instance, ptr %1, i32 0, i32 2, i32 0, i32 1, i32 0, i32 2
  %18 = load i32, ptr %17, align 16
  %19 = or i32 %18, 15
  store i32 %19, ptr %17, align 16
  %20 = getelementptr inbounds %struct.ahash_instance, ptr %1, i32 0, i32 2, i32 0, i32 1
  %21 = tail call i32 @crypto_register_instance(ptr noundef %0, ptr noundef %20) #9
  br label %22

22:                                               ; preds = %15, %10, %6, %5
  %23 = phi i32 [ -22, %5 ], [ %21, %15 ], [ -22, %10 ], [ -22, %6 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @crypto_hash_alg_has_setkey(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hash_alg_common, ptr %0, i32 0, i32 3, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, @crypto_ahash_type
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr %struct.hash_alg_common, ptr %0, i32 -1, i32 3, i32 12
  %7 = tail call zeroext i1 @crypto_shash_alg_has_setkey(ptr noundef %6) #9
  br label %12

8:                                                ; preds = %1
  %9 = getelementptr %struct.hash_alg_common, ptr %0, i32 -1, i32 3, i32 16, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ne ptr %10, null
  br label %12

12:                                               ; preds = %8, %5
  %13 = phi i1 [ %7, %5 ], [ %11, %8 ]
  ret i1 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @crypto_shash_alg_has_setkey(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ahash_nosetkey(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  ret i32 -38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ahash_op_unaligned_done(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.crypto_async_request, align 4
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ahash_request, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  switch i32 %1, label %24 [
    i32 -115, label %8
    i32 0, label %13
  ]

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false) #9, !annotation !14
  %9 = getelementptr inbounds %struct.ahash_request_priv, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.crypto_async_request, ptr %3, i32 0, i32 2
  store ptr %10, ptr %11, align 4
  %12 = load ptr, ptr %7, align 64
  call void %12(ptr noundef nonnull %3, i32 noundef -115) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  br label %37

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ahash_request_priv, ptr %7, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.ahash_request, ptr %5, i32 0, i32 3
  %17 = load ptr, ptr %16, align 32
  %18 = getelementptr inbounds %struct.crypto_async_request, ptr %5, i32 0, i32 3
  %19 = load ptr, ptr %18, align 16
  %20 = getelementptr i8, ptr %19, i32 12
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 -64
  %23 = load i32, ptr %22, align 64
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %15, ptr align 1 %17, i32 %23, i1 false) #9
  br label %24

24:                                               ; preds = %13, %2
  %25 = getelementptr inbounds %struct.ahash_request_priv, ptr %7, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.ahash_request, ptr %5, i32 0, i32 3
  store ptr %26, ptr %27, align 32
  %28 = getelementptr inbounds %struct.ahash_request_priv, ptr %7, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = load ptr, ptr %7, align 64
  %31 = getelementptr inbounds %struct.ahash_request_priv, ptr %7, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.crypto_async_request, ptr %5, i32 0, i32 1
  store ptr %30, ptr %33, align 8
  %34 = getelementptr inbounds %struct.crypto_async_request, ptr %5, i32 0, i32 2
  store ptr %32, ptr %34, align 4
  %35 = getelementptr inbounds %struct.crypto_async_request, ptr %5, i32 0, i32 4
  store i32 %29, ptr %35, align 4
  store ptr null, ptr %6, align 4
  tail call void @kfree_sensitive(ptr noundef %7) #9
  %36 = load ptr, ptr %33, align 8
  tail call void %36(ptr noundef %5, i32 noundef %1) #9
  br label %37

37:                                               ; preds = %24, %8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_ahash_extsize(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, @crypto_ahash_type
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 @crypto_alg_extsize(ptr noundef %0) #9
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ 4, %1 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_ahash_init_tfm(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = getelementptr i8, ptr %0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -36
  store ptr @ahash_nosetkey, ptr %5, align 4
  %6 = getelementptr inbounds %struct.crypto_alg, ptr %4, i32 0, i32 10
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, @crypto_ahash_type
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @crypto_init_shash_ops_async(ptr noundef %0) #9
  br label %59

11:                                               ; preds = %1
  %12 = getelementptr i8, ptr %4, i32 -128
  %13 = load ptr, ptr %12, align 64
  store ptr %13, ptr %2, align 64
  %14 = getelementptr i8, ptr %4, i32 -124
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %0, i32 -60
  store ptr %15, ptr %16, align 4
  %17 = getelementptr i8, ptr %4, i32 -120
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr i8, ptr %0, i32 -56
  store ptr %18, ptr %19, align 8
  %20 = getelementptr i8, ptr %4, i32 -116
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  %23 = select i1 %22, ptr @ahash_def_finup, ptr %21
  %24 = getelementptr i8, ptr %0, i32 -52
  store ptr %23, ptr %24, align 4
  %25 = getelementptr i8, ptr %4, i32 -112
  %26 = load ptr, ptr %25, align 16
  %27 = getelementptr i8, ptr %0, i32 -48
  store ptr %26, ptr %27, align 16
  %28 = getelementptr i8, ptr %4, i32 -108
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %0, i32 -44
  store ptr %29, ptr %30, align 4
  %31 = getelementptr i8, ptr %4, i32 -104
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr i8, ptr %0, i32 -40
  store ptr %32, ptr %33, align 8
  %34 = getelementptr i8, ptr %4, i32 -100
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %11
  store ptr %35, ptr %5, align 4
  %38 = icmp eq ptr %35, @ahash_nosetkey
  br i1 %38, label %47, label %39

39:                                               ; preds = %37
  %40 = getelementptr i8, ptr %4, i32 16
  %41 = load i32, ptr %40, align 16
  %42 = and i32 %41, 16384
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, ptr %0, align 64
  %46 = or i32 %45, 1
  store i32 %46, ptr %0, align 64
  br label %47

47:                                               ; preds = %44, %39, %37, %11
  %48 = getelementptr i8, ptr %4, i32 -92
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 2
  store ptr @crypto_ahash_exit_tfm, ptr %52, align 8
  br label %53

53:                                               ; preds = %51, %47
  %54 = getelementptr i8, ptr %4, i32 -96
  %55 = load ptr, ptr %54, align 32
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = tail call i32 %55(ptr noundef %2) #9
  br label %59

59:                                               ; preds = %57, %53, %9
  %60 = phi i32 [ %10, %9 ], [ %58, %57 ], [ 0, %53 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_ahash_show(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.2) #9
  %3 = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 16
  %5 = and i32 %4, 128
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, ptr @.str.5, ptr @.str.4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %7) #9
  %8 = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %9) #9
  %10 = getelementptr i8, ptr %1, i32 -64
  %11 = load i32, ptr %10, align 64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %11) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_ahash_report(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.crypto_report_hash, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i64 72, i1 false)
  %4 = call i32 @strscpy(ptr noundef nonnull %3, ptr noundef nonnull @.str.8, i32 noundef 64) #9
  %5 = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_report_hash, ptr %3, i32 0, i32 1
  store i32 %6, ptr %7, align 4
  %8 = getelementptr i8, ptr %1, i32 -64
  %9 = load i32, ptr %8, align 64
  %10 = getelementptr inbounds %struct.crypto_report_hash, ptr %3, i32 0, i32 2
  store i32 %9, ptr %10, align 4
  %11 = call i32 @nla_put(ptr noundef %0, i32 noundef 3, i32 noundef 72, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #9
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_ahash_free_instance(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -192
  %3 = load ptr, ptr %2, align 64
  tail call void %3(ptr noundef %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_alg_extsize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_init_shash_ops_async(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahash_def_finup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 512
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 2592, i32 3264
  %13 = and i32 %7, -64
  %14 = getelementptr i8, ptr %5, i32 -64
  %15 = load i32, ptr %14, align 64
  %16 = add i32 %13, %15
  %17 = add i32 %16, 64
  %18 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %17, i32 noundef %12) #10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %70, label %20

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 32
  %23 = getelementptr inbounds %struct.ahash_request_priv, ptr %18, i32 0, i32 2
  store ptr %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8
  store ptr %25, ptr %18, align 64
  %26 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ahash_request_priv, ptr %18, i32 0, i32 1
  store ptr %27, ptr %28, align 4
  %29 = load i32, ptr %8, align 4
  %30 = getelementptr inbounds %struct.ahash_request_priv, ptr %18, i32 0, i32 3
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.ahash_request_priv, ptr %18, i32 0, i32 5
  %32 = ptrtoint ptr %31 to i32
  %33 = add i32 %7, %32
  %34 = xor i32 %7, -1
  %35 = and i32 %33, %34
  %36 = inttoptr i32 %35 to ptr
  store ptr %36, ptr %21, align 32
  store ptr @ahash_def_finup_done1, ptr %24, align 8
  store ptr %0, ptr %26, align 4
  %37 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 4
  store ptr %18, ptr %37, align 4
  %38 = getelementptr i8, ptr %3, i32 -60
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 %39(ptr noundef %0) #9
  switch i32 %40, label %41 [
    i32 -16, label %70
    i32 -115, label %70
    i32 0, label %43
  ]

41:                                               ; preds = %20
  %42 = load ptr, ptr %37, align 4
  br label %60

43:                                               ; preds = %20
  store ptr @ahash_def_finup_done2, ptr %24, align 8
  %44 = load ptr, ptr %2, align 16
  %45 = getelementptr i8, ptr %44, i32 -56
  %46 = load ptr, ptr %45, align 8
  %47 = tail call i32 %46(ptr noundef %0) #9
  switch i32 %47, label %48 [
    i32 -16, label %70
    i32 -115, label %70
  ]

48:                                               ; preds = %43
  %49 = load ptr, ptr %37, align 4
  %50 = icmp eq i32 %47, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.ahash_request_priv, ptr %49, i32 0, i32 2
  %53 = load ptr, ptr %52, align 8
  %54 = load ptr, ptr %21, align 32
  %55 = load ptr, ptr %2, align 16
  %56 = getelementptr i8, ptr %55, i32 12
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr i8, ptr %57, i32 -64
  %59 = load i32, ptr %58, align 64
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %53, ptr align 1 %54, i32 %59, i1 false) #9
  br label %60

60:                                               ; preds = %51, %48, %41
  %61 = phi ptr [ %42, %41 ], [ %49, %48 ], [ %49, %51 ]
  %62 = phi i32 [ %40, %41 ], [ %47, %48 ], [ 0, %51 ]
  %63 = getelementptr inbounds %struct.ahash_request_priv, ptr %61, i32 0, i32 2
  %64 = load ptr, ptr %63, align 8
  store ptr %64, ptr %21, align 32
  %65 = getelementptr inbounds %struct.ahash_request_priv, ptr %61, i32 0, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = load ptr, ptr %61, align 64
  %68 = getelementptr inbounds %struct.ahash_request_priv, ptr %61, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  store ptr %67, ptr %24, align 8
  store ptr %69, ptr %26, align 4
  store i32 %66, ptr %8, align 4
  store ptr null, ptr %37, align 4
  tail call void @kfree_sensitive(ptr noundef %61) #9
  br label %70

70:                                               ; preds = %60, %43, %43, %20, %20, %1
  %71 = phi i32 [ %40, %20 ], [ %40, %20 ], [ -12, %1 ], [ %62, %60 ], [ %47, %43 ], [ %47, %43 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_ahash_exit_tfm(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = getelementptr i8, ptr %0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -92
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ahash_def_finup_done1(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.crypto_async_request, align 4
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq i32 %1, -115
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ahash_request, ptr %5, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false) #9, !annotation !14
  %10 = getelementptr inbounds %struct.ahash_request_priv, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.crypto_async_request, ptr %3, i32 0, i32 2
  store ptr %11, ptr %12, align 4
  %13 = load ptr, ptr %9, align 64
  call void %13(ptr noundef nonnull %3, i32 noundef -115) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  br label %65

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.crypto_async_request, ptr %5, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, -513
  store i32 %17, ptr %15, align 4
  %18 = icmp eq i32 %1, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ahash_request, ptr %5, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  br label %43

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.crypto_async_request, ptr %5, i32 0, i32 1
  store ptr @ahash_def_finup_done2, ptr %23, align 8
  %24 = getelementptr inbounds %struct.crypto_async_request, ptr %5, i32 0, i32 3
  %25 = load ptr, ptr %24, align 16
  %26 = getelementptr i8, ptr %25, i32 -56
  %27 = load ptr, ptr %26, align 8
  %28 = tail call i32 %27(ptr noundef %5) #9
  switch i32 %28, label %29 [
    i32 -16, label %57
    i32 -115, label %57
  ]

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.ahash_request, ptr %5, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq i32 %28, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ahash_request_priv, ptr %31, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.ahash_request, ptr %5, i32 0, i32 3
  %37 = load ptr, ptr %36, align 32
  %38 = load ptr, ptr %24, align 16
  %39 = getelementptr i8, ptr %38, i32 12
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 -64
  %42 = load i32, ptr %41, align 64
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %35, ptr align 1 %37, i32 %42, i1 false) #9
  br label %43

43:                                               ; preds = %33, %29, %19
  %44 = phi ptr [ %21, %19 ], [ %31, %29 ], [ %31, %33 ]
  %45 = phi ptr [ %20, %19 ], [ %30, %29 ], [ %30, %33 ]
  %46 = phi i32 [ %1, %19 ], [ %28, %29 ], [ 0, %33 ]
  %47 = getelementptr inbounds %struct.ahash_request_priv, ptr %44, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.ahash_request, ptr %5, i32 0, i32 3
  store ptr %48, ptr %49, align 32
  %50 = getelementptr inbounds %struct.ahash_request_priv, ptr %44, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = load ptr, ptr %44, align 64
  %53 = getelementptr inbounds %struct.ahash_request_priv, ptr %44, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.crypto_async_request, ptr %5, i32 0, i32 1
  store ptr %52, ptr %55, align 8
  %56 = getelementptr inbounds %struct.crypto_async_request, ptr %5, i32 0, i32 2
  store ptr %54, ptr %56, align 4
  store i32 %51, ptr %15, align 4
  store ptr null, ptr %45, align 4
  tail call void @kfree_sensitive(ptr noundef %44) #9
  br label %57

57:                                               ; preds = %43, %22, %22
  %58 = phi i32 [ %46, %43 ], [ %28, %22 ], [ %28, %22 ]
  %59 = getelementptr inbounds %struct.ahash_request, ptr %5, i32 0, i32 4
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.crypto_async_request, ptr %5, i32 0, i32 1
  %64 = load ptr, ptr %63, align 8
  tail call void %64(ptr noundef %5, i32 noundef %58) #9
  br label %65

65:                                               ; preds = %62, %57, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ahash_def_finup_done2(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, -115
  br i1 %3, label %34, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ahash_request, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.ahash_request_priv, ptr %8, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.ahash_request, ptr %6, i32 0, i32 3
  %14 = load ptr, ptr %13, align 32
  %15 = getelementptr inbounds %struct.crypto_async_request, ptr %6, i32 0, i32 3
  %16 = load ptr, ptr %15, align 16
  %17 = getelementptr i8, ptr %16, i32 12
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 -64
  %20 = load i32, ptr %19, align 64
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %12, ptr align 1 %14, i32 %20, i1 false) #9
  br label %21

21:                                               ; preds = %10, %4
  %22 = getelementptr inbounds %struct.ahash_request_priv, ptr %8, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.ahash_request, ptr %6, i32 0, i32 3
  store ptr %23, ptr %24, align 32
  %25 = getelementptr inbounds %struct.ahash_request_priv, ptr %8, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr %8, align 64
  %28 = getelementptr inbounds %struct.ahash_request_priv, ptr %8, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.crypto_async_request, ptr %6, i32 0, i32 1
  store ptr %27, ptr %30, align 8
  %31 = getelementptr inbounds %struct.crypto_async_request, ptr %6, i32 0, i32 2
  store ptr %29, ptr %31, align 4
  %32 = getelementptr inbounds %struct.crypto_async_request, ptr %6, i32 0, i32 4
  store i32 %26, ptr %32, align 4
  store ptr null, ptr %7, align 4
  tail call void @kfree_sensitive(ptr noundef %8) #9
  %33 = load ptr, ptr %30, align 8
  tail call void %33(ptr noundef %6, i32 noundef %1) #9
  br label %34

34:                                               ; preds = %21, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_tfm_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }

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
!8 = !{i64 2151254518}
!9 = !{i64 2152503924}
!10 = !{i64 2152501299}
!11 = !{i64 2151254311}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{!"auto-init"}
