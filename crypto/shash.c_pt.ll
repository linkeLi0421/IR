; ModuleID = '/llk/IR/crypto/shash.c_pt.bc'
source_filename = "../crypto/shash.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_shash_alg_has_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_shash_alg_has_setkey\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_shash_alg_has_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_shash_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_shash_setkey\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_shash_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_shash_update:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_shash_update\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_shash_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_shash_final:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_shash_final\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_shash_final:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_shash_finup:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_shash_finup\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_shash_finup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_shash_digest:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_shash_digest\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_shash_digest:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_shash_tfm_digest:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_shash_tfm_digest\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_shash_tfm_digest:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_shash_ahash_update:\09\09\09\09\09"
module asm "\09.asciz \09\22shash_ahash_update\22\09\09\09\09\09"
module asm "__kstrtabns_shash_ahash_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_shash_ahash_finup:\09\09\09\09\09"
module asm "\09.asciz \09\22shash_ahash_finup\22\09\09\09\09\09"
module asm "__kstrtabns_shash_ahash_finup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_shash_ahash_digest:\09\09\09\09\09"
module asm "\09.asciz \09\22shash_ahash_digest\22\09\09\09\09\09"
module asm "__kstrtabns_shash_ahash_digest:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_grab_shash:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_grab_shash\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_grab_shash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_alloc_shash:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_alloc_shash\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_alloc_shash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_register_shash:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_register_shash\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_register_shash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_unregister_shash:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_unregister_shash\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_unregister_shash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_register_shashes:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_register_shashes\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_register_shashes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_unregister_shashes:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_unregister_shashes\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_unregister_shashes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_shash_register_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22shash_register_instance\22\09\09\09\09\09"
module asm "__kstrtabns_shash_register_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_shash_free_singlespawn_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22shash_free_singlespawn_instance\22\09\09\09\09\09"
module asm "__kstrtabns_shash_free_singlespawn_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.crypto_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.shash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [20 x i8], i32, i32, [56 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.88, ptr, ptr, ptr, ptr, [48 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.88 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.crypto_shash = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.crypto_hash_walk = type { ptr, i32, i32, ptr, i32, i32, ptr, i32 }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [24 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.25 }
%struct.llist_node = type { ptr }
%union.anon.25 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.26 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.54 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [28 x i8], %struct.crypto_tfm }
%struct.crypto_spawn = type { %struct.list_head, ptr, %union.anon.90, ptr, i32, i8, i8 }
%union.anon.90 = type { ptr }
%struct.shash_instance = type { ptr, [60 x i8], %union.anon.91 }
%union.anon.91 = type { %struct.anon.92 }
%struct.anon.92 = type { [128 x i8], %struct.crypto_instance }
%struct.crypto_instance = type { %struct.crypto_alg, ptr, %union.anon.89, [52 x i8], [0 x ptr] }
%union.anon.89 = type { %struct.hlist_node }
%struct.crypto_report_hash = type { [64 x i8], i32, i32 }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }

@__kstrtab_crypto_shash_alg_has_setkey = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_shash_alg_has_setkey = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_shash_alg_has_setkey = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_shash_alg_has_setkey to i32), ptr @__kstrtab_crypto_shash_alg_has_setkey, ptr @__kstrtabns_crypto_shash_alg_has_setkey }, section "___ksymtab_gpl+crypto_shash_alg_has_setkey", align 4
@__kstrtab_crypto_shash_setkey = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_shash_setkey = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_shash_setkey = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_shash_setkey to i32), ptr @__kstrtab_crypto_shash_setkey, ptr @__kstrtabns_crypto_shash_setkey }, section "___ksymtab_gpl+crypto_shash_setkey", align 4
@__kstrtab_crypto_shash_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_shash_update = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_shash_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_shash_update to i32), ptr @__kstrtab_crypto_shash_update, ptr @__kstrtabns_crypto_shash_update }, section "___ksymtab_gpl+crypto_shash_update", align 4
@__kstrtab_crypto_shash_final = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_shash_final = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_shash_final = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_shash_final to i32), ptr @__kstrtab_crypto_shash_final, ptr @__kstrtabns_crypto_shash_final }, section "___ksymtab_gpl+crypto_shash_final", align 4
@__kstrtab_crypto_shash_finup = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_shash_finup = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_shash_finup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_shash_finup to i32), ptr @__kstrtab_crypto_shash_finup, ptr @__kstrtabns_crypto_shash_finup }, section "___ksymtab_gpl+crypto_shash_finup", align 4
@__kstrtab_crypto_shash_digest = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_shash_digest = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_shash_digest = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_shash_digest to i32), ptr @__kstrtab_crypto_shash_digest, ptr @__kstrtabns_crypto_shash_digest }, section "___ksymtab_gpl+crypto_shash_digest", align 4
@__kstrtab_crypto_shash_tfm_digest = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_shash_tfm_digest = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_shash_tfm_digest = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_shash_tfm_digest to i32), ptr @__kstrtab_crypto_shash_tfm_digest, ptr @__kstrtabns_crypto_shash_tfm_digest }, section "___ksymtab_gpl+crypto_shash_tfm_digest", align 4
@__kstrtab_shash_ahash_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_shash_ahash_update = external dso_local constant [0 x i8], align 1
@__ksymtab_shash_ahash_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @shash_ahash_update to i32), ptr @__kstrtab_shash_ahash_update, ptr @__kstrtabns_shash_ahash_update }, section "___ksymtab_gpl+shash_ahash_update", align 4
@__kstrtab_shash_ahash_finup = external dso_local constant [0 x i8], align 1
@__kstrtabns_shash_ahash_finup = external dso_local constant [0 x i8], align 1
@__ksymtab_shash_ahash_finup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @shash_ahash_finup to i32), ptr @__kstrtab_shash_ahash_finup, ptr @__kstrtabns_shash_ahash_finup }, section "___ksymtab_gpl+shash_ahash_finup", align 4
@__kstrtab_shash_ahash_digest = external dso_local constant [0 x i8], align 1
@__kstrtabns_shash_ahash_digest = external dso_local constant [0 x i8], align 1
@__ksymtab_shash_ahash_digest = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @shash_ahash_digest to i32), ptr @__kstrtab_shash_ahash_digest, ptr @__kstrtabns_shash_ahash_digest }, section "___ksymtab_gpl+shash_ahash_digest", align 4
@crypto_shash_type = internal constant %struct.crypto_type { ptr null, ptr @crypto_alg_extsize, ptr null, ptr @crypto_shash_init_tfm, ptr @crypto_shash_show, ptr @crypto_shash_report, ptr @crypto_shash_free_instance, i32 14, i32 -16, i32 15, i32 64 }, align 4
@__kstrtab_crypto_grab_shash = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_grab_shash = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_grab_shash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_grab_shash to i32), ptr @__kstrtab_crypto_grab_shash, ptr @__kstrtabns_crypto_grab_shash }, section "___ksymtab_gpl+crypto_grab_shash", align 4
@__kstrtab_crypto_alloc_shash = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_alloc_shash = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_alloc_shash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_alloc_shash to i32), ptr @__kstrtab_crypto_alloc_shash, ptr @__kstrtabns_crypto_alloc_shash }, section "___ksymtab_gpl+crypto_alloc_shash", align 4
@__kstrtab_crypto_register_shash = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_register_shash = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_register_shash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_register_shash to i32), ptr @__kstrtab_crypto_register_shash, ptr @__kstrtabns_crypto_register_shash }, section "___ksymtab_gpl+crypto_register_shash", align 4
@__kstrtab_crypto_unregister_shash = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_unregister_shash = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_unregister_shash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_unregister_shash to i32), ptr @__kstrtab_crypto_unregister_shash, ptr @__kstrtabns_crypto_unregister_shash }, section "___ksymtab_gpl+crypto_unregister_shash", align 4
@__kstrtab_crypto_register_shashes = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_register_shashes = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_register_shashes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_register_shashes to i32), ptr @__kstrtab_crypto_register_shashes, ptr @__kstrtabns_crypto_register_shashes }, section "___ksymtab_gpl+crypto_register_shashes", align 4
@__kstrtab_crypto_unregister_shashes = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_unregister_shashes = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_unregister_shashes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_unregister_shashes to i32), ptr @__kstrtab_crypto_unregister_shashes, ptr @__kstrtabns_crypto_unregister_shashes }, section "___ksymtab_gpl+crypto_unregister_shashes", align 4
@.str = private unnamed_addr constant [15 x i8] c"crypto/shash.c\00", align 1
@__kstrtab_shash_register_instance = external dso_local constant [0 x i8], align 1
@__kstrtabns_shash_register_instance = external dso_local constant [0 x i8], align 1
@__ksymtab_shash_register_instance = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @shash_register_instance to i32), ptr @__kstrtab_shash_register_instance, ptr @__kstrtabns_shash_register_instance }, section "___ksymtab_gpl+shash_register_instance", align 4
@__kstrtab_shash_free_singlespawn_instance = external dso_local constant [0 x i8], align 1
@__kstrtabns_shash_free_singlespawn_instance = external dso_local constant [0 x i8], align 1
@__ksymtab_shash_free_singlespawn_instance = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @shash_free_singlespawn_instance to i32), ptr @__kstrtab_shash_free_singlespawn_instance, ptr @__kstrtabns_shash_free_singlespawn_instance }, section "___ksymtab_gpl+shash_free_singlespawn_instance", align 4
@__UNIQUE_ID_file267 = internal constant [36 x i8] c"crypto_hash.file=crypto/crypto_hash\00", section ".modinfo", align 1
@__UNIQUE_ID_license268 = internal constant [24 x i8] c"crypto_hash.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description269 = internal constant [60 x i8] c"crypto_hash.description=Synchronous cryptographic hash type\00", section ".modinfo", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@crypto_shash_init_tfm.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"type         : shash\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"blocksize    : %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"digestsize   : %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"shash\00", align 1
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_description269, ptr @__UNIQUE_ID_file267, ptr @__UNIQUE_ID_license268, ptr @__ksymtab_crypto_alloc_shash, ptr @__ksymtab_crypto_grab_shash, ptr @__ksymtab_crypto_register_shash, ptr @__ksymtab_crypto_register_shashes, ptr @__ksymtab_crypto_shash_alg_has_setkey, ptr @__ksymtab_crypto_shash_digest, ptr @__ksymtab_crypto_shash_final, ptr @__ksymtab_crypto_shash_finup, ptr @__ksymtab_crypto_shash_setkey, ptr @__ksymtab_crypto_shash_tfm_digest, ptr @__ksymtab_crypto_shash_update, ptr @__ksymtab_crypto_unregister_shash, ptr @__ksymtab_crypto_unregister_shashes, ptr @__ksymtab_shash_ahash_digest, ptr @__ksymtab_shash_ahash_finup, ptr @__ksymtab_shash_ahash_update, ptr @__ksymtab_shash_free_singlespawn_instance, ptr @__ksymtab_shash_register_instance], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @crypto_shash_alg_has_setkey(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.shash_alg, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = icmp ne ptr %3, @shash_no_setkey
  ret i1 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @shash_no_setkey(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  ret i32 -38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_shash_setkey(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 2, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = ptrtoint ptr %1 to i32
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %3
  %12 = and i32 %7, -64
  %13 = add i32 %12, %2
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %13, i32 noundef 2592) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %11
  %17 = ptrtoint ptr %14 to i32
  %18 = add i32 %7, %17
  %19 = xor i32 %7, -1
  %20 = and i32 %18, %19
  %21 = inttoptr i32 %20 to ptr
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %21, ptr align 1 %1, i32 %2, i1 false) #12
  %22 = getelementptr i8, ptr %5, i32 -100
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %23(ptr noundef %0, ptr noundef %21, i32 noundef %2) #12
  tail call void @kfree_sensitive(ptr noundef nonnull %14) #12
  br label %29

25:                                               ; preds = %3
  %26 = getelementptr i8, ptr %5, i32 -100
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 %27(ptr noundef %0, ptr noundef %1, i32 noundef %2) #12
  br label %29

29:                                               ; preds = %25, %16
  %30 = phi i32 [ %28, %25 ], [ %24, %16 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %46, label %32, !prof !8

32:                                               ; preds = %29, %11
  %33 = phi i32 [ %30, %29 ], [ -12, %11 ]
  %34 = getelementptr i8, ptr %5, i32 -100
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, @shash_no_setkey
  br i1 %36, label %50, label %37

37:                                               ; preds = %32
  %38 = getelementptr i8, ptr %5, i32 16
  %39 = load i32, ptr %38, align 16
  %40 = and i32 %39, 16384
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 2
  %44 = load i32, ptr %43, align 64
  %45 = or i32 %44, 1
  store i32 %45, ptr %43, align 64
  br label %50

46:                                               ; preds = %29
  %47 = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 2
  %48 = load i32, ptr %47, align 64
  %49 = and i32 %48, -2
  store i32 %49, ptr %47, align 64
  br label %50

50:                                               ; preds = %46, %42, %37, %32
  %51 = phi i32 [ 0, %46 ], [ %33, %32 ], [ %33, %37 ], [ %33, %42 ]
  ret i32 %51
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_shash_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca [126 x i8], align 1
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 0, i32 2, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = ptrtoint ptr %1 to i32
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %3
  %14 = add i32 %9, 1
  %15 = sub i32 %14, %11
  call void @llvm.lifetime.start.p0(i64 126, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(126) %4, i8 0, i32 126, i1 false) #12, !annotation !9
  %16 = ptrtoint ptr %4 to i32
  %17 = add i32 %9, %16
  %18 = xor i32 %9, -1
  %19 = and i32 %17, %18
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr i8, ptr %20, i32 %15
  %22 = getelementptr inbounds i8, ptr %4, i32 126
  %23 = icmp ugt ptr %21, %22
  br i1 %23, label %24, label %25, !prof !10

24:                                               ; preds = %13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 107, i32 noundef 9, ptr noundef null) #12
  br label %36

25:                                               ; preds = %13
  %26 = call i32 @llvm.umin.i32(i32 %15, i32 %2) #12
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %20, ptr align 1 %1, i32 %26, i1 false) #12
  %27 = getelementptr i8, ptr %7, i32 -124
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 %28(ptr noundef %0, ptr noundef %20, i32 noundef %26) #12
  call void @llvm.memset.p0.i32(ptr align 1 %20, i8 0, i32 %26, i1 false) #12
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load ptr, ptr %27, align 4
  %33 = getelementptr i8, ptr %1, i32 %26
  %34 = sub i32 %2, %26
  %35 = call i32 %32(ptr noundef %0, ptr noundef %33, i32 noundef %34) #12
  br label %36

36:                                               ; preds = %31, %25, %24
  %37 = phi i32 [ -22, %24 ], [ %35, %31 ], [ %29, %25 ]
  call void @llvm.lifetime.end.p0(i64 126, ptr nonnull %4) #12
  br label %42

38:                                               ; preds = %3
  %39 = getelementptr i8, ptr %7, i32 -124
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 %40(ptr noundef %0, ptr noundef %1, i32 noundef %2) #12
  br label %42

42:                                               ; preds = %38, %36
  %43 = phi i32 [ %37, %36 ], [ %41, %38 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_shash_final(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [127 x i8], align 1
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.crypto_shash, ptr %4, i32 0, i32 2, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_alg, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = ptrtoint ptr %1 to i32
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %2
  %13 = getelementptr i8, ptr %6, i32 -64
  %14 = load i32, ptr %13, align 64
  call void @llvm.lifetime.start.p0(i64 127, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(127) %3, i8 0, i32 127, i1 false) #12, !annotation !9
  %15 = ptrtoint ptr %3 to i32
  %16 = add i32 %8, %15
  %17 = xor i32 %8, -1
  %18 = and i32 %16, %17
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr i8, ptr %19, i32 %14
  %21 = getelementptr inbounds i8, ptr %3, i32 127
  %22 = icmp ugt ptr %20, %21
  br i1 %22, label %23, label %24, !prof !10

23:                                               ; preds = %12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 149, i32 noundef 9, ptr noundef null) #12
  br label %31

24:                                               ; preds = %12
  %25 = getelementptr i8, ptr %6, i32 -120
  %26 = load ptr, ptr %25, align 8
  %27 = call i32 %26(ptr noundef %0, ptr noundef %19) #12
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %19, i32 %14, i1 false) #12
  br label %30

30:                                               ; preds = %29, %24
  call void @llvm.memset.p0.i32(ptr align 1 %19, i8 0, i32 %14, i1 false) #12
  br label %31

31:                                               ; preds = %30, %23
  %32 = phi i32 [ -22, %23 ], [ %27, %30 ]
  call void @llvm.lifetime.end.p0(i64 127, ptr nonnull %3) #12
  br label %37

33:                                               ; preds = %2
  %34 = getelementptr i8, ptr %6, i32 -120
  %35 = load ptr, ptr %34, align 8
  %36 = tail call i32 %35(ptr noundef %0, ptr noundef %1) #12
  br label %37

37:                                               ; preds = %33, %31
  %38 = phi i32 [ %32, %31 ], [ %36, %33 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_shash_finup(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #2 {
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 0, i32 2, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = ptrtoint ptr %1 to i32
  %11 = ptrtoint ptr %3 to i32
  %12 = or i32 %11, %10
  %13 = and i32 %9, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = tail call i32 @shash_finup_unaligned(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  br label %21

17:                                               ; preds = %4
  %18 = getelementptr i8, ptr %7, i32 -116
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12
  br label %21

21:                                               ; preds = %17, %15
  %22 = phi i32 [ %16, %15 ], [ %20, %17 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shash_finup_unaligned(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #2 {
  %5 = alloca [127 x i8], align 1
  %6 = alloca [126 x i8], align 1
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.crypto_shash, ptr %7, i32 0, i32 2, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.crypto_alg, ptr %9, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = ptrtoint ptr %1 to i32
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %40, label %15

15:                                               ; preds = %4
  %16 = add i32 %11, 1
  %17 = sub i32 %16, %13
  call void @llvm.lifetime.start.p0(i64 126, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(126) %6, i8 0, i32 126, i1 false) #12, !annotation !9
  %18 = ptrtoint ptr %6 to i32
  %19 = add i32 %11, %18
  %20 = xor i32 %11, -1
  %21 = and i32 %19, %20
  %22 = inttoptr i32 %21 to ptr
  %23 = getelementptr i8, ptr %22, i32 %17
  %24 = getelementptr inbounds i8, ptr %6, i32 126
  %25 = icmp ugt ptr %23, %24
  br i1 %25, label %26, label %27, !prof !10

26:                                               ; preds = %15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 107, i32 noundef 9, ptr noundef null) #12
  br label %38

27:                                               ; preds = %15
  %28 = call i32 @llvm.umin.i32(i32 %17, i32 %2) #12
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %22, ptr align 1 %1, i32 %28, i1 false) #12
  %29 = getelementptr i8, ptr %9, i32 -124
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 %30(ptr noundef %0, ptr noundef %22, i32 noundef %28) #12
  call void @llvm.memset.p0.i32(ptr align 1 %22, i8 0, i32 %28, i1 false) #12
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load ptr, ptr %29, align 4
  %35 = getelementptr i8, ptr %1, i32 %28
  %36 = sub i32 %2, %28
  %37 = call i32 %34(ptr noundef %0, ptr noundef %35, i32 noundef %36) #12
  br label %38

38:                                               ; preds = %33, %27, %26
  %39 = phi i32 [ -22, %26 ], [ %37, %33 ], [ %31, %27 ]
  call void @llvm.lifetime.end.p0(i64 126, ptr nonnull %6) #12
  br label %44

40:                                               ; preds = %4
  %41 = getelementptr i8, ptr %9, i32 -124
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 %42(ptr noundef %0, ptr noundef %1, i32 noundef %2) #12
  br label %44

44:                                               ; preds = %40, %38
  %45 = phi i32 [ %39, %38 ], [ %43, %40 ]
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %81

47:                                               ; preds = %44
  %48 = load ptr, ptr %0, align 8
  %49 = getelementptr inbounds %struct.crypto_shash, ptr %48, i32 0, i32 2, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.crypto_alg, ptr %50, i32 0, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = ptrtoint ptr %3 to i32
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %77, label %56

56:                                               ; preds = %47
  %57 = getelementptr i8, ptr %50, i32 -64
  %58 = load i32, ptr %57, align 64
  call void @llvm.lifetime.start.p0(i64 127, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(127) %5, i8 0, i32 127, i1 false) #12, !annotation !9
  %59 = ptrtoint ptr %5 to i32
  %60 = add i32 %52, %59
  %61 = xor i32 %52, -1
  %62 = and i32 %60, %61
  %63 = inttoptr i32 %62 to ptr
  %64 = getelementptr i8, ptr %63, i32 %58
  %65 = getelementptr inbounds i8, ptr %5, i32 127
  %66 = icmp ugt ptr %64, %65
  br i1 %66, label %67, label %68, !prof !10

67:                                               ; preds = %56
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 149, i32 noundef 9, ptr noundef null) #12
  br label %75

68:                                               ; preds = %56
  %69 = getelementptr i8, ptr %50, i32 -120
  %70 = load ptr, ptr %69, align 8
  %71 = call i32 %70(ptr noundef %0, ptr noundef %63) #12
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %3, ptr align 1 %63, i32 %58, i1 false) #12
  br label %74

74:                                               ; preds = %73, %68
  call void @llvm.memset.p0.i32(ptr align 1 %63, i8 0, i32 %58, i1 false) #12
  br label %75

75:                                               ; preds = %74, %67
  %76 = phi i32 [ -22, %67 ], [ %71, %74 ]
  call void @llvm.lifetime.end.p0(i64 127, ptr nonnull %5) #12
  br label %81

77:                                               ; preds = %47
  %78 = getelementptr i8, ptr %50, i32 -120
  %79 = load ptr, ptr %78, align 8
  %80 = call i32 %79(ptr noundef %0, ptr noundef %3) #12
  br label %81

81:                                               ; preds = %77, %75, %44
  %82 = phi i32 [ %45, %44 ], [ %76, %75 ], [ %80, %77 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_shash_digest(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #2 {
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 0, i32 2, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 -128
  %9 = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 0, i32 2
  %10 = load i32, ptr %9, align 64
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %43

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = ptrtoint ptr %1 to i32
  %17 = ptrtoint ptr %3 to i32
  %18 = or i32 %17, %16
  %19 = and i32 %15, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %13
  %22 = load ptr, ptr %8, align 64
  %23 = tail call i32 %22(ptr noundef %0) #12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = load ptr, ptr %0, align 8
  %27 = getelementptr inbounds %struct.crypto_shash, ptr %26, i32 0, i32 2, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.crypto_alg, ptr %28, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, %18
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %25
  %34 = tail call i32 @shash_finup_unaligned(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12
  br label %43

35:                                               ; preds = %25
  %36 = getelementptr i8, ptr %28, i32 -116
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 %37(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12
  br label %43

39:                                               ; preds = %13
  %40 = getelementptr i8, ptr %7, i32 -112
  %41 = load ptr, ptr %40, align 16
  %42 = tail call i32 %41(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12
  br label %43

43:                                               ; preds = %39, %35, %33, %21, %4
  %44 = phi i32 [ %42, %39 ], [ -126, %4 ], [ %23, %21 ], [ %34, %33 ], [ %38, %35 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shash_digest_unaligned(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #2 {
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 64
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %34

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 0, i32 2, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 -128
  %14 = load ptr, ptr %13, align 64
  %15 = tail call i32 %14(ptr noundef %0) #12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %10
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr inbounds %struct.crypto_shash, ptr %18, i32 0, i32 2, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.crypto_alg, ptr %20, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = ptrtoint ptr %1 to i32
  %24 = ptrtoint ptr %3 to i32
  %25 = or i32 %24, %23
  %26 = and i32 %22, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %17
  %29 = tail call i32 @shash_finup_unaligned(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12
  br label %34

30:                                               ; preds = %17
  %31 = getelementptr i8, ptr %20, i32 -116
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 %32(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12
  br label %34

34:                                               ; preds = %30, %28, %10, %4
  %35 = phi i32 [ %15, %10 ], [ %29, %28 ], [ %33, %30 ], [ -126, %4 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_shash_tfm_digest(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #2 {
  %5 = alloca [376 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(376) %5, i8 0, i32 376, i1 false), !annotation !9
  store ptr %0, ptr %5, align 8
  %6 = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 2, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 -128
  %9 = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 64
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %43

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = ptrtoint ptr %1 to i32
  %17 = ptrtoint ptr %3 to i32
  %18 = or i32 %17, %16
  %19 = and i32 %15, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %13
  %22 = load ptr, ptr %8, align 64
  %23 = call i32 %22(ptr noundef nonnull %5) #12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8
  %27 = getelementptr inbounds %struct.crypto_shash, ptr %26, i32 0, i32 2, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.crypto_alg, ptr %28, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, %18
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %25
  %34 = call i32 @shash_finup_unaligned(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12
  br label %43

35:                                               ; preds = %25
  %36 = getelementptr i8, ptr %28, i32 -116
  %37 = load ptr, ptr %36, align 4
  %38 = call i32 %37(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12
  br label %43

39:                                               ; preds = %13
  %40 = getelementptr i8, ptr %7, i32 -112
  %41 = load ptr, ptr %40, align 16
  %42 = call i32 %41(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12
  br label %43

43:                                               ; preds = %39, %35, %33, %21, %4
  %44 = phi i32 [ %42, %39 ], [ -126, %4 ], [ %23, %21 ], [ %34, %33 ], [ %38, %35 ]
  %45 = load ptr, ptr %5, align 8
  %46 = load i32, ptr %45, align 64
  %47 = add i32 %46, 8
  call void @llvm.memset.p0.i32(ptr nonnull align 8 %5, i8 0, i32 %47, i1 false) #12
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %5) #12, !srcloc !11
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %5) #12
  ret i32 %44
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @shash_ahash_update(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [126 x i8], align 1
  %4 = alloca %struct.crypto_hash_walk, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !9
  %5 = call i32 @crypto_hash_walk_first(ptr noundef %0, ptr noundef nonnull %4) #12
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %52

7:                                                ; preds = %2
  %8 = ptrtoint ptr %3 to i32
  %9 = getelementptr inbounds i8, ptr %3, i32 126
  br label %10

10:                                               ; preds = %48, %7
  %11 = phi i32 [ %5, %7 ], [ %50, %48 ]
  %12 = load ptr, ptr %4, align 4
  %13 = load ptr, ptr %1, align 8
  %14 = getelementptr inbounds %struct.crypto_shash, ptr %13, i32 0, i32 2, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.crypto_alg, ptr %15, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = ptrtoint ptr %12 to i32
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %44, label %21

21:                                               ; preds = %10
  %22 = add i32 %17, 1
  %23 = sub i32 %22, %19
  call void @llvm.lifetime.start.p0(i64 126, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(126) %3, i8 0, i32 126, i1 false) #12, !annotation !9
  %24 = add i32 %17, %8
  %25 = xor i32 %17, -1
  %26 = and i32 %24, %25
  %27 = inttoptr i32 %26 to ptr
  %28 = getelementptr i8, ptr %27, i32 %23
  %29 = icmp ugt ptr %28, %9
  br i1 %29, label %30, label %31, !prof !10

30:                                               ; preds = %21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 107, i32 noundef 9, ptr noundef null) #12
  br label %42

31:                                               ; preds = %21
  %32 = call i32 @llvm.umin.i32(i32 %23, i32 %11) #12
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %27, ptr align 1 %12, i32 %32, i1 false) #12
  %33 = getelementptr i8, ptr %15, i32 -124
  %34 = load ptr, ptr %33, align 4
  %35 = call i32 %34(ptr noundef %1, ptr noundef %27, i32 noundef %32) #12
  call void @llvm.memset.p0.i32(ptr align 1 %27, i8 0, i32 %32, i1 false) #12
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load ptr, ptr %33, align 4
  %39 = getelementptr i8, ptr %12, i32 %32
  %40 = sub nsw i32 %11, %32
  %41 = call i32 %38(ptr noundef %1, ptr noundef %39, i32 noundef %40) #12
  br label %42

42:                                               ; preds = %37, %31, %30
  %43 = phi i32 [ -22, %30 ], [ %41, %37 ], [ %35, %31 ]
  call void @llvm.lifetime.end.p0(i64 126, ptr nonnull %3) #12
  br label %48

44:                                               ; preds = %10
  %45 = getelementptr i8, ptr %15, i32 -124
  %46 = load ptr, ptr %45, align 4
  %47 = call i32 %46(ptr noundef %1, ptr noundef %12, i32 noundef %11) #12
  br label %48

48:                                               ; preds = %44, %42
  %49 = phi i32 [ %43, %42 ], [ %47, %44 ]
  %50 = call i32 @crypto_hash_walk_done(ptr noundef nonnull %4, i32 noundef %49) #12
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %10, label %52

52:                                               ; preds = %48, %2
  %53 = phi i32 [ %5, %2 ], [ %50, %48 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #12
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_hash_walk_first(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_hash_walk_done(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @shash_ahash_finup(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [126 x i8], align 1
  %4 = alloca [127 x i8], align 1
  %5 = alloca %struct.crypto_hash_walk, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !9
  %6 = call i32 @crypto_hash_walk_first(ptr noundef %0, ptr noundef nonnull %5) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.crypto_hash_walk, ptr %5, i32 0, i32 4
  %10 = getelementptr inbounds %struct.crypto_hash_walk, ptr %5, i32 0, i32 5
  %11 = ptrtoint ptr %3 to i32
  %12 = getelementptr inbounds i8, ptr %3, i32 126
  %13 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 3
  br label %50

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 32
  %17 = load ptr, ptr %1, align 8
  %18 = getelementptr inbounds %struct.crypto_shash, ptr %17, i32 0, i32 2, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.crypto_alg, ptr %19, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = ptrtoint ptr %16 to i32
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %46, label %25

25:                                               ; preds = %14
  %26 = getelementptr i8, ptr %19, i32 -64
  %27 = load i32, ptr %26, align 64
  call void @llvm.lifetime.start.p0(i64 127, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(127) %4, i8 0, i32 127, i1 false) #12, !annotation !9
  %28 = ptrtoint ptr %4 to i32
  %29 = add i32 %21, %28
  %30 = xor i32 %21, -1
  %31 = and i32 %29, %30
  %32 = inttoptr i32 %31 to ptr
  %33 = getelementptr i8, ptr %32, i32 %27
  %34 = getelementptr inbounds i8, ptr %4, i32 127
  %35 = icmp ugt ptr %33, %34
  br i1 %35, label %36, label %37, !prof !10

36:                                               ; preds = %25
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 149, i32 noundef 9, ptr noundef null) #12
  br label %44

37:                                               ; preds = %25
  %38 = getelementptr i8, ptr %19, i32 -120
  %39 = load ptr, ptr %38, align 8
  %40 = call i32 %39(ptr noundef %1, ptr noundef %32) #12
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %16, ptr align 1 %32, i32 %27, i1 false) #12
  br label %43

43:                                               ; preds = %42, %37
  call void @llvm.memset.p0.i32(ptr align 1 %32, i8 0, i32 %27, i1 false) #12
  br label %44

44:                                               ; preds = %43, %36
  %45 = phi i32 [ -22, %36 ], [ %40, %43 ]
  call void @llvm.lifetime.end.p0(i64 127, ptr nonnull %4) #12
  br label %115

46:                                               ; preds = %14
  %47 = getelementptr i8, ptr %19, i32 -120
  %48 = load ptr, ptr %47, align 8
  %49 = call i32 %48(ptr noundef %1, ptr noundef %16) #12
  br label %115

50:                                               ; preds = %111, %8
  %51 = phi i32 [ %113, %111 ], [ %6, %8 ]
  %52 = load i32, ptr %9, align 4
  %53 = load i32, ptr %10, align 4
  %54 = or i32 %53, %52
  %55 = icmp eq i32 %54, 0
  %56 = load ptr, ptr %5, align 4
  br i1 %55, label %57, label %75

57:                                               ; preds = %50
  %58 = load ptr, ptr %13, align 32
  %59 = load ptr, ptr %1, align 8
  %60 = getelementptr inbounds %struct.crypto_shash, ptr %59, i32 0, i32 2, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.crypto_alg, ptr %61, i32 0, i32 5
  %63 = load i32, ptr %62, align 4
  %64 = ptrtoint ptr %56 to i32
  %65 = ptrtoint ptr %58 to i32
  %66 = or i32 %65, %64
  %67 = and i32 %63, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %57
  %70 = call i32 @shash_finup_unaligned(ptr noundef %1, ptr noundef %56, i32 noundef %51, ptr noundef %58) #12
  br label %111

71:                                               ; preds = %57
  %72 = getelementptr i8, ptr %61, i32 -116
  %73 = load ptr, ptr %72, align 4
  %74 = call i32 %73(ptr noundef %1, ptr noundef %56, i32 noundef %51, ptr noundef %58) #12
  br label %111

75:                                               ; preds = %50
  %76 = load ptr, ptr %1, align 8
  %77 = getelementptr inbounds %struct.crypto_shash, ptr %76, i32 0, i32 2, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.crypto_alg, ptr %78, i32 0, i32 5
  %80 = load i32, ptr %79, align 4
  %81 = ptrtoint ptr %56 to i32
  %82 = and i32 %80, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %107, label %84

84:                                               ; preds = %75
  %85 = add i32 %80, 1
  %86 = sub i32 %85, %82
  call void @llvm.lifetime.start.p0(i64 126, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(126) %3, i8 0, i32 126, i1 false) #12, !annotation !9
  %87 = add i32 %80, %11
  %88 = xor i32 %80, -1
  %89 = and i32 %87, %88
  %90 = inttoptr i32 %89 to ptr
  %91 = getelementptr i8, ptr %90, i32 %86
  %92 = icmp ugt ptr %91, %12
  br i1 %92, label %93, label %94, !prof !10

93:                                               ; preds = %84
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 107, i32 noundef 9, ptr noundef null) #12
  br label %105

94:                                               ; preds = %84
  %95 = call i32 @llvm.umin.i32(i32 %86, i32 %51) #12
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %90, ptr align 1 %56, i32 %95, i1 false) #12
  %96 = getelementptr i8, ptr %78, i32 -124
  %97 = load ptr, ptr %96, align 4
  %98 = call i32 %97(ptr noundef %1, ptr noundef %90, i32 noundef %95) #12
  call void @llvm.memset.p0.i32(ptr align 1 %90, i8 0, i32 %95, i1 false) #12
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = load ptr, ptr %96, align 4
  %102 = getelementptr i8, ptr %56, i32 %95
  %103 = sub i32 %51, %95
  %104 = call i32 %101(ptr noundef %1, ptr noundef %102, i32 noundef %103) #12
  br label %105

105:                                              ; preds = %100, %94, %93
  %106 = phi i32 [ -22, %93 ], [ %104, %100 ], [ %98, %94 ]
  call void @llvm.lifetime.end.p0(i64 126, ptr nonnull %3) #12
  br label %111

107:                                              ; preds = %75
  %108 = getelementptr i8, ptr %78, i32 -124
  %109 = load ptr, ptr %108, align 4
  %110 = call i32 %109(ptr noundef %1, ptr noundef %56, i32 noundef %51) #12
  br label %111

111:                                              ; preds = %107, %105, %71, %69
  %112 = phi i32 [ %70, %69 ], [ %74, %71 ], [ %106, %105 ], [ %110, %107 ]
  %113 = call i32 @crypto_hash_walk_done(ptr noundef nonnull %5, i32 noundef %112) #12
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %50, label %115

115:                                              ; preds = %111, %46, %44
  %116 = phi i32 [ %45, %44 ], [ %49, %46 ], [ %113, %111 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #12
  ret i32 %116
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @shash_ahash_digest(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %72, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.scatterlist, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.scatterlist, ptr %8, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 4096, %10
  %14 = tail call i32 @llvm.umin.i32(i32 %12, i32 %13)
  %15 = icmp ugt i32 %4, %14
  br i1 %15, label %72, label %16

16:                                               ; preds = %6
  %17 = load i32, ptr %8, align 4
  %18 = and i32 %17, -4
  %19 = inttoptr i32 %18 to ptr
  %20 = load i32, ptr @pgprot_kernel, align 4
  %21 = or i32 %20, 512
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %22 = tail call ptr @llvm.thread.pointer() #12
  %23 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 149
  %24 = load i32, ptr %23, align 8
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %26 = tail call ptr @__kmap_local_page_prot(ptr noundef %19, i32 noundef %21) #12
  %27 = getelementptr i8, ptr %26, i32 %10
  %28 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 32
  %30 = load ptr, ptr %1, align 8
  %31 = getelementptr inbounds %struct.crypto_shash, ptr %30, i32 0, i32 2, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 -128
  %34 = getelementptr inbounds %struct.crypto_shash, ptr %30, i32 0, i32 2
  %35 = load i32, ptr %34, align 64
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %16
  %39 = getelementptr inbounds %struct.crypto_alg, ptr %32, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = ptrtoint ptr %27 to i32
  %42 = ptrtoint ptr %29 to i32
  %43 = or i32 %42, %41
  %44 = and i32 %40, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %64, label %46

46:                                               ; preds = %38
  %47 = load ptr, ptr %33, align 64
  %48 = tail call i32 %47(ptr noundef %1) #12
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %46
  %51 = load ptr, ptr %1, align 8
  %52 = getelementptr inbounds %struct.crypto_shash, ptr %51, i32 0, i32 2, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.crypto_alg, ptr %53, i32 0, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, %43
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %50
  %59 = tail call i32 @shash_finup_unaligned(ptr noundef %1, ptr noundef %27, i32 noundef %4, ptr noundef %29) #12
  br label %68

60:                                               ; preds = %50
  %61 = getelementptr i8, ptr %53, i32 -116
  %62 = load ptr, ptr %61, align 4
  %63 = tail call i32 %62(ptr noundef %1, ptr noundef %27, i32 noundef %4, ptr noundef %29) #12
  br label %68

64:                                               ; preds = %38
  %65 = getelementptr i8, ptr %32, i32 -112
  %66 = load ptr, ptr %65, align 16
  %67 = tail call i32 %66(ptr noundef %1, ptr noundef %27, i32 noundef %4, ptr noundef %29) #12
  br label %68

68:                                               ; preds = %64, %60, %58, %46, %16
  %69 = phi i32 [ %67, %64 ], [ -126, %16 ], [ %48, %46 ], [ %59, %58 ], [ %63, %60 ]
  tail call void @kunmap_local_indexed(ptr noundef %26) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %70 = load i32, ptr %23, align 8
  %71 = add i32 %70, -1
  store i32 %71, ptr %23, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  br label %87

72:                                               ; preds = %6, %2
  %73 = load ptr, ptr %1, align 8
  %74 = getelementptr inbounds %struct.crypto_shash, ptr %73, i32 0, i32 2
  %75 = load i32, ptr %74, align 64
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.crypto_shash, ptr %73, i32 0, i32 2, i32 3
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr i8, ptr %80, i32 -128
  %82 = load ptr, ptr %81, align 64
  %83 = tail call i32 %82(ptr noundef %1) #12
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = tail call i32 @shash_ahash_finup(ptr noundef %0, ptr noundef %1)
  br label %87

87:                                               ; preds = %85, %78, %72, %68
  %88 = phi i32 [ %69, %68 ], [ %86, %85 ], [ %83, %78 ], [ -126, %72 ]
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_init_shash_ops_async(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 -64
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %6 = tail call ptr @crypto_mod_get(ptr noundef %3) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %35, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @crypto_create_tfm_node(ptr noundef %3, ptr noundef nonnull @crypto_shash_type, i32 noundef -1) #12
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  tail call void @crypto_mod_put(ptr noundef %3) #12
  %12 = ptrtoint ptr %9 to i32
  br label %35

13:                                               ; preds = %8
  store ptr %9, ptr %5, align 4
  %14 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 2
  store ptr @crypto_exit_shash_ops_async, ptr %14, align 8
  store ptr @shash_async_init, ptr %4, align 64
  %15 = getelementptr i8, ptr %0, i32 -60
  store ptr @shash_async_update, ptr %15, align 4
  %16 = getelementptr i8, ptr %0, i32 -56
  store ptr @shash_async_final, ptr %16, align 8
  %17 = getelementptr i8, ptr %0, i32 -52
  store ptr @shash_async_finup, ptr %17, align 4
  %18 = getelementptr i8, ptr %0, i32 -48
  store ptr @shash_async_digest, ptr %18, align 16
  %19 = getelementptr i8, ptr %3, i32 -100
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, @shash_no_setkey
  br i1 %21, label %24, label %22

22:                                               ; preds = %13
  %23 = getelementptr i8, ptr %0, i32 -36
  store ptr @shash_async_setkey, ptr %23, align 4
  br label %24

24:                                               ; preds = %22, %13
  %25 = getelementptr inbounds %struct.crypto_shash, ptr %9, i32 0, i32 2
  %26 = load i32, ptr %25, align 64
  %27 = and i32 %26, 1
  %28 = load i32, ptr %0, align 64
  %29 = or i32 %28, %27
  store i32 %29, ptr %0, align 64
  %30 = getelementptr i8, ptr %0, i32 -44
  store ptr @shash_async_export, ptr %30, align 4
  %31 = getelementptr i8, ptr %0, i32 -40
  store ptr @shash_async_import, ptr %31, align 8
  %32 = load i32, ptr %9, align 64
  %33 = add i32 %32, 8
  %34 = getelementptr i8, ptr %0, i32 -32
  store i32 %33, ptr %34, align 32
  br label %35

35:                                               ; preds = %24, %11, %1
  %36 = phi i32 [ %12, %11 ], [ 0, %24 ], [ -11, %1 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_mod_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_mod_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_exit_shash_ops_async(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shash_async_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %4, align 4
  store ptr %6, ptr %5, align 8
  %7 = getelementptr inbounds %struct.crypto_shash, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 64
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.crypto_shash, ptr %6, i32 0, i32 2, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 -128
  %15 = load ptr, ptr %14, align 64
  %16 = tail call i32 %15(ptr noundef %5) #12
  br label %17

17:                                               ; preds = %11, %1
  %18 = phi i32 [ %16, %11 ], [ -126, %1 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shash_async_update(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %3 = tail call i32 @shash_ahash_update(ptr noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shash_async_final(ptr noundef %0) #2 {
  %2 = alloca [127 x i8], align 1
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 32
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.crypto_shash, ptr %6, i32 0, i32 2, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.crypto_alg, ptr %8, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = ptrtoint ptr %5 to i32
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %35, label %14

14:                                               ; preds = %1
  %15 = getelementptr i8, ptr %8, i32 -64
  %16 = load i32, ptr %15, align 64
  call void @llvm.lifetime.start.p0(i64 127, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(127) %2, i8 0, i32 127, i1 false) #12, !annotation !9
  %17 = ptrtoint ptr %2 to i32
  %18 = add i32 %10, %17
  %19 = xor i32 %10, -1
  %20 = and i32 %18, %19
  %21 = inttoptr i32 %20 to ptr
  %22 = getelementptr i8, ptr %21, i32 %16
  %23 = getelementptr inbounds i8, ptr %2, i32 127
  %24 = icmp ugt ptr %22, %23
  br i1 %24, label %25, label %26, !prof !10

25:                                               ; preds = %14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 149, i32 noundef 9, ptr noundef null) #12
  br label %33

26:                                               ; preds = %14
  %27 = getelementptr i8, ptr %8, i32 -120
  %28 = load ptr, ptr %27, align 8
  %29 = call i32 %28(ptr noundef %3, ptr noundef %21) #12
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %5, ptr align 1 %21, i32 %16, i1 false) #12
  br label %32

32:                                               ; preds = %31, %26
  call void @llvm.memset.p0.i32(ptr align 1 %21, i8 0, i32 %16, i1 false) #12
  br label %33

33:                                               ; preds = %32, %25
  %34 = phi i32 [ -22, %25 ], [ %29, %32 ]
  call void @llvm.lifetime.end.p0(i64 127, ptr nonnull %2) #12
  br label %39

35:                                               ; preds = %1
  %36 = getelementptr i8, ptr %8, i32 -120
  %37 = load ptr, ptr %36, align 8
  %38 = tail call i32 %37(ptr noundef %3, ptr noundef %5) #12
  br label %39

39:                                               ; preds = %35, %33
  %40 = phi i32 [ %34, %33 ], [ %38, %35 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shash_async_finup(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %4, align 4
  store ptr %6, ptr %5, align 8
  %7 = tail call i32 @shash_ahash_finup(ptr noundef %0, ptr noundef %5)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shash_async_digest(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %4, align 4
  store ptr %6, ptr %5, align 8
  %7 = tail call i32 @shash_ahash_digest(ptr noundef %0, ptr noundef %5)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shash_async_setkey(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 0, i32 2, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = ptrtoint ptr %1 to i32
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %3
  %14 = and i32 %9, -64
  %15 = add i32 %14, %2
  %16 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %15, i32 noundef 2592) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %13
  %19 = ptrtoint ptr %16 to i32
  %20 = add i32 %9, %19
  %21 = xor i32 %9, -1
  %22 = and i32 %20, %21
  %23 = inttoptr i32 %22 to ptr
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %23, ptr align 1 %1, i32 %2, i1 false) #12
  %24 = getelementptr i8, ptr %7, i32 -100
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 %25(ptr noundef %5, ptr noundef %23, i32 noundef %2) #12
  tail call void @kfree_sensitive(ptr noundef nonnull %16) #12
  br label %31

27:                                               ; preds = %3
  %28 = getelementptr i8, ptr %7, i32 -100
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef %5, ptr noundef %1, i32 noundef %2) #12
  br label %31

31:                                               ; preds = %27, %18
  %32 = phi i32 [ %30, %27 ], [ %26, %18 ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %48, label %34, !prof !8

34:                                               ; preds = %31, %13
  %35 = phi i32 [ %32, %31 ], [ -12, %13 ]
  %36 = getelementptr i8, ptr %7, i32 -100
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, @shash_no_setkey
  br i1 %38, label %52, label %39

39:                                               ; preds = %34
  %40 = getelementptr i8, ptr %7, i32 16
  %41 = load i32, ptr %40, align 16
  %42 = and i32 %41, 16384
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 0, i32 2
  %46 = load i32, ptr %45, align 64
  %47 = or i32 %46, 1
  store i32 %47, ptr %45, align 64
  br label %52

48:                                               ; preds = %31
  %49 = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 0, i32 2
  %50 = load i32, ptr %49, align 64
  %51 = and i32 %50, -2
  store i32 %51, ptr %49, align 64
  br label %52

52:                                               ; preds = %48, %44, %39, %34
  %53 = phi i32 [ 0, %48 ], [ %35, %34 ], [ %35, %39 ], [ %35, %44 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shash_async_export(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.crypto_shash, ptr %4, i32 0, i32 2, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 -108
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %3, ptr noundef %1) #12
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shash_async_import(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 64
  %6 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %5, align 4
  store ptr %7, ptr %6, align 8
  %8 = getelementptr inbounds %struct.crypto_shash, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 64
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.crypto_shash, ptr %7, i32 0, i32 2, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 -104
  %16 = load ptr, ptr %15, align 8
  %17 = tail call i32 %16(ptr noundef %6, ptr noundef %1) #12
  br label %18

18:                                               ; preds = %12, %2
  %19 = phi i32 [ %17, %12 ], [ -126, %2 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_grab_shash(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.crypto_spawn, ptr %0, i32 0, i32 3
  store ptr @crypto_shash_type, ptr %6, align 4
  %7 = tail call i32 @crypto_grab_spawn(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #12
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_spawn(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @crypto_alloc_shash(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @crypto_alloc_tfm_node(ptr noundef %0, ptr noundef nonnull @crypto_shash_type, i32 noundef %1, i32 noundef %2, i32 noundef -1) #12
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_register_shash(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.shash_alg, ptr %0, i32 0, i32 12
  %3 = load i32, ptr %2, align 64
  %4 = icmp ugt i32 %3, 64
  br i1 %4, label %47, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.shash_alg, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 8
  %8 = icmp ugt i32 %7, 368
  br i1 %8, label %47, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.shash_alg, ptr %0, i32 0, i32 13
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, 512
  br i1 %12, label %47, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.shash_alg, ptr %0, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct.shash_alg, ptr %0, i32 0, i32 6
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %16, label %21, label %20

20:                                               ; preds = %13
  br i1 %19, label %47, label %22

21:                                               ; preds = %13
  br i1 %19, label %22, label %47

22:                                               ; preds = %21, %20
  %23 = getelementptr inbounds %struct.shash_alg, ptr %0, i32 0, i32 15, i32 10
  store ptr @crypto_shash_type, ptr %23, align 8
  %24 = getelementptr inbounds %struct.shash_alg, ptr %0, i32 0, i32 15, i32 2
  %25 = load i32, ptr %24, align 16
  %26 = and i32 %25, -16
  %27 = or i32 %26, 14
  store i32 %27, ptr %24, align 16
  %28 = getelementptr inbounds %struct.shash_alg, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store ptr @shash_finup_unaligned, ptr %28, align 4
  br label %32

32:                                               ; preds = %31, %22
  %33 = getelementptr inbounds %struct.shash_alg, ptr %0, i32 0, i32 4
  %34 = load ptr, ptr %33, align 16
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store ptr @shash_digest_unaligned, ptr %33, align 16
  br label %37

37:                                               ; preds = %36, %32
  br i1 %16, label %38, label %39

38:                                               ; preds = %37
  store ptr @shash_default_export, ptr %14, align 4
  store ptr @shash_default_import, ptr %17, align 8
  store i32 %7, ptr %10, align 4
  br label %39

39:                                               ; preds = %38, %37
  %40 = getelementptr inbounds %struct.shash_alg, ptr %0, i32 0, i32 7
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store ptr @shash_no_setkey, ptr %40, align 4
  br label %44

44:                                               ; preds = %43, %39
  %45 = getelementptr inbounds %struct.shash_alg, ptr %0, i32 0, i32 15
  %46 = tail call i32 @crypto_register_alg(ptr noundef %45) #12
  br label %47

47:                                               ; preds = %44, %21, %20, %9, %5, %1
  %48 = phi i32 [ %46, %44 ], [ -22, %9 ], [ -22, %5 ], [ -22, %1 ], [ -22, %20 ], [ -22, %21 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_alg(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_unregister_shash(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.shash_alg, ptr %0, i32 0, i32 15
  tail call void @crypto_unregister_alg(ptr noundef %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_alg(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_register_shashes(ptr noundef %0, i32 noundef %1) #2 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %63

4:                                                ; preds = %55, %2
  %5 = phi i32 [ %56, %55 ], [ 0, %2 ]
  %6 = getelementptr %struct.shash_alg, ptr %0, i32 %5, i32 12
  %7 = load i32, ptr %6, align 64
  %8 = icmp ugt i32 %7, 64
  br i1 %8, label %52, label %9

9:                                                ; preds = %4
  %10 = getelementptr %struct.shash_alg, ptr %0, i32 %5, i32 10
  %11 = load i32, ptr %10, align 8
  %12 = icmp ugt i32 %11, 368
  br i1 %12, label %52, label %13

13:                                               ; preds = %9
  %14 = getelementptr %struct.shash_alg, ptr %0, i32 %5, i32 13
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, 512
  br i1 %16, label %52, label %17

17:                                               ; preds = %13
  %18 = getelementptr %struct.shash_alg, ptr %0, i32 %5, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  %21 = getelementptr %struct.shash_alg, ptr %0, i32 %5, i32 6
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %20, label %25, label %24

24:                                               ; preds = %17
  br i1 %23, label %52, label %26

25:                                               ; preds = %17
  br i1 %23, label %26, label %52

26:                                               ; preds = %25, %24
  %27 = getelementptr %struct.shash_alg, ptr %0, i32 %5, i32 15, i32 10
  store ptr @crypto_shash_type, ptr %27, align 8
  %28 = getelementptr %struct.shash_alg, ptr %0, i32 %5, i32 15, i32 2
  %29 = load i32, ptr %28, align 16
  %30 = and i32 %29, -16
  %31 = or i32 %30, 14
  store i32 %31, ptr %28, align 16
  %32 = getelementptr %struct.shash_alg, ptr %0, i32 %5, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store ptr @shash_finup_unaligned, ptr %32, align 4
  br label %36

36:                                               ; preds = %35, %26
  %37 = getelementptr %struct.shash_alg, ptr %0, i32 %5, i32 4
  %38 = load ptr, ptr %37, align 16
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store ptr @shash_digest_unaligned, ptr %37, align 16
  br label %41

41:                                               ; preds = %40, %36
  br i1 %20, label %42, label %43

42:                                               ; preds = %41
  store ptr @shash_default_export, ptr %18, align 4
  store ptr @shash_default_import, ptr %21, align 8
  store i32 %11, ptr %14, align 4
  br label %43

43:                                               ; preds = %42, %41
  %44 = getelementptr %struct.shash_alg, ptr %0, i32 %5, i32 7
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store ptr @shash_no_setkey, ptr %44, align 4
  br label %48

48:                                               ; preds = %47, %43
  %49 = getelementptr %struct.shash_alg, ptr %0, i32 %5, i32 15
  %50 = tail call i32 @crypto_register_alg(ptr noundef %49) #12
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48, %25, %24, %13, %9, %4
  %53 = phi i32 [ %50, %48 ], [ -22, %13 ], [ -22, %9 ], [ -22, %4 ], [ -22, %24 ], [ -22, %25 ]
  %54 = icmp eq i32 %5, 0
  br i1 %54, label %63, label %58

55:                                               ; preds = %48
  %56 = add nuw nsw i32 %5, 1
  %57 = icmp eq i32 %56, %1
  br i1 %57, label %63, label %4

58:                                               ; preds = %58, %52
  %59 = phi i32 [ %60, %58 ], [ %5, %52 ]
  %60 = add nsw i32 %59, -1
  %61 = getelementptr %struct.shash_alg, ptr %0, i32 %60, i32 15
  tail call void @crypto_unregister_alg(ptr noundef %61) #12
  %62 = icmp sgt i32 %59, 1
  br i1 %62, label %58, label %63

63:                                               ; preds = %58, %55, %52, %2
  %64 = phi i32 [ %53, %52 ], [ 0, %2 ], [ %53, %58 ], [ 0, %55 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_unregister_shashes(ptr noundef %0, i32 noundef %1) #2 {
  %3 = add i32 %1, -1
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %10

5:                                                ; preds = %5, %2
  %6 = phi i32 [ %8, %5 ], [ %3, %2 ]
  %7 = getelementptr %struct.shash_alg, ptr %0, i32 %6, i32 15
  tail call void @crypto_unregister_alg(ptr noundef %7) #12
  %8 = add nsw i32 %6, -1
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %5, label %10

10:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @shash_register_instance(ptr noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %1, align 64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !10

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 608, i32 noundef 9, ptr noundef null) #12
  br label %52

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.shash_instance, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 64
  %8 = load i32, ptr %7, align 64
  %9 = icmp ugt i32 %8, 64
  br i1 %9, label %52, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.shash_instance, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 40
  %12 = load i32, ptr %11, align 8
  %13 = icmp ugt i32 %12, 368
  br i1 %13, label %52, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.shash_instance, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 68
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, 512
  br i1 %17, label %52, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.shash_instance, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 20
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  %22 = getelementptr inbounds %struct.shash_instance, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 24
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %21, label %26, label %25

25:                                               ; preds = %18
  br i1 %24, label %52, label %27

26:                                               ; preds = %18
  br i1 %24, label %27, label %52

27:                                               ; preds = %26, %25
  %28 = getelementptr inbounds %struct.shash_instance, ptr %1, i32 0, i32 2, i32 0, i32 1, i32 0, i32 10
  store ptr @crypto_shash_type, ptr %28, align 8
  %29 = getelementptr inbounds %struct.shash_instance, ptr %1, i32 0, i32 2, i32 0, i32 1, i32 0, i32 2
  %30 = load i32, ptr %29, align 16
  %31 = and i32 %30, -16
  %32 = or i32 %31, 14
  store i32 %32, ptr %29, align 16
  %33 = getelementptr inbounds %struct.shash_instance, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 12
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store ptr @shash_finup_unaligned, ptr %33, align 4
  br label %37

37:                                               ; preds = %36, %27
  %38 = getelementptr inbounds %struct.shash_instance, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 16
  %39 = load ptr, ptr %38, align 16
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store ptr @shash_digest_unaligned, ptr %38, align 16
  br label %42

42:                                               ; preds = %41, %37
  br i1 %21, label %43, label %44

43:                                               ; preds = %42
  store ptr @shash_default_export, ptr %19, align 4
  store ptr @shash_default_import, ptr %22, align 8
  store i32 %12, ptr %15, align 4
  br label %44

44:                                               ; preds = %43, %42
  %45 = getelementptr inbounds %struct.shash_instance, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 28
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store ptr @shash_no_setkey, ptr %45, align 4
  br label %49

49:                                               ; preds = %48, %44
  %50 = getelementptr inbounds %struct.shash_instance, ptr %1, i32 0, i32 2, i32 0, i32 1
  %51 = tail call i32 @crypto_register_instance(ptr noundef %0, ptr noundef %50) #12
  br label %52

52:                                               ; preds = %49, %26, %25, %14, %10, %6, %5
  %53 = phi i32 [ -22, %5 ], [ %51, %49 ], [ -22, %14 ], [ -22, %10 ], [ -22, %6 ], [ -22, %25 ], [ -22, %26 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @shash_free_singlespawn_instance(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.shash_instance, ptr %0, i32 1
  tail call void @crypto_drop_spawn(ptr noundef %2) #12
  tail call void @kfree(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_drop_spawn(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_create_tfm_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_alg_extsize(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_shash_init_tfm(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = getelementptr i8, ptr %0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -88
  %6 = load i32, ptr %5, align 8
  store i32 %6, ptr %2, align 64
  %7 = getelementptr i8, ptr %4, i32 -100
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @shash_no_setkey
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %4, i32 16
  %12 = load i32, ptr %11, align 16
  %13 = and i32 %12, 16384
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, ptr %0, align 64
  %17 = or i32 %16, 1
  store i32 %17, ptr %0, align 64
  br label %18

18:                                               ; preds = %15, %10, %1
  %19 = getelementptr i8, ptr %4, i32 -92
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 2
  store ptr @crypto_shash_exit_tfm, ptr %23, align 8
  br label %24

24:                                               ; preds = %22, %18
  %25 = getelementptr i8, ptr %4, i32 -96
  %26 = load ptr, ptr %25, align 32
  %27 = icmp eq ptr %26, null
  br i1 %27, label %43, label %28

28:                                               ; preds = %24
  %29 = tail call i32 %26(ptr noundef %2) #12
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load i32, ptr %2, align 64
  %33 = icmp ugt i32 %32, 368
  %34 = load i1, ptr @crypto_shash_init_tfm.__already_done, align 1
  %35 = xor i1 %34, true
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %38, !prof !10

37:                                               ; preds = %31
  store i1 true, ptr @crypto_shash_init_tfm.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 445, i32 noundef 9, ptr noundef null) #12
  br label %38

38:                                               ; preds = %37, %31
  br i1 %33, label %39, label %43

39:                                               ; preds = %38
  %40 = load ptr, ptr %19, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  tail call void %40(ptr noundef %2) #12
  br label %43

43:                                               ; preds = %42, %39, %38, %28, %24
  %44 = phi i32 [ 0, %24 ], [ %29, %28 ], [ -22, %42 ], [ -22, %39 ], [ 0, %38 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_shash_show(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.1) #12
  %3 = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %4) #12
  %5 = getelementptr i8, ptr %1, i32 -64
  %6 = load i32, ptr %5, align 64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %6) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_shash_report(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.crypto_report_hash, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i64 72, i1 false)
  %4 = call i32 @strscpy(ptr noundef nonnull %3, ptr noundef nonnull @.str.4, i32 noundef 64) #12
  %5 = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_report_hash, ptr %3, i32 0, i32 1
  store i32 %6, ptr %7, align 4
  %8 = getelementptr i8, ptr %1, i32 -64
  %9 = load i32, ptr %8, align 64
  %10 = getelementptr inbounds %struct.crypto_report_hash, ptr %3, i32 0, i32 2
  store i32 %9, ptr %10, align 4
  %11 = call i32 @nla_put(ptr noundef %0, i32 noundef 3, i32 noundef 72, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #12
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_shash_free_instance(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -192
  %3 = load ptr, ptr %2, align 64
  tail call void %3(ptr noundef %2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_shash_exit_tfm(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = getelementptr i8, ptr %0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -92
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_tfm_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @shash_default_export(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %0, align 8
  %5 = load i32, ptr %4, align 64
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %3, i32 %5, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @shash_default_import(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #9 {
  %3 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %0, align 8
  %5 = load i32, ptr %4, align 64
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %3, ptr align 1 %1, i32 %5, i1 false)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2148935372}
!12 = !{i64 2152437627}
!13 = !{i64 2151190639}
!14 = !{i64 2151190846}
!15 = !{i64 2152440252}
