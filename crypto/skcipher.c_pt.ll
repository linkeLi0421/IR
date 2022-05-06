; ModuleID = '/llk/IR/crypto/skcipher.c_pt.bc'
source_filename = "../crypto/skcipher.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skcipher_walk_done:\09\09\09\09\09"
module asm "\09.asciz \09\22skcipher_walk_done\22\09\09\09\09\09"
module asm "__kstrtabns_skcipher_walk_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skcipher_walk_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22skcipher_walk_complete\22\09\09\09\09\09"
module asm "__kstrtabns_skcipher_walk_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skcipher_walk_virt:\09\09\09\09\09"
module asm "\09.asciz \09\22skcipher_walk_virt\22\09\09\09\09\09"
module asm "__kstrtabns_skcipher_walk_virt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skcipher_walk_async:\09\09\09\09\09"
module asm "\09.asciz \09\22skcipher_walk_async\22\09\09\09\09\09"
module asm "__kstrtabns_skcipher_walk_async:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skcipher_walk_aead_encrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22skcipher_walk_aead_encrypt\22\09\09\09\09\09"
module asm "__kstrtabns_skcipher_walk_aead_encrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skcipher_walk_aead_decrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22skcipher_walk_aead_decrypt\22\09\09\09\09\09"
module asm "__kstrtabns_skcipher_walk_aead_decrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_skcipher_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_skcipher_setkey\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_skcipher_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_skcipher_encrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_skcipher_encrypt\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_skcipher_encrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_skcipher_decrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_skcipher_decrypt\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_skcipher_decrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_grab_skcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_grab_skcipher\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_grab_skcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_alloc_skcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_alloc_skcipher\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_alloc_skcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_alloc_sync_skcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_alloc_sync_skcipher\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_alloc_sync_skcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_has_skcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_has_skcipher\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_has_skcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_register_skcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_register_skcipher\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_register_skcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_unregister_skcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_unregister_skcipher\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_unregister_skcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_register_skciphers:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_register_skciphers\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_register_skciphers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_unregister_skciphers:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_unregister_skciphers\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_unregister_skciphers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skcipher_register_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22skcipher_register_instance\22\09\09\09\09\09"
module asm "__kstrtabns_skcipher_register_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skcipher_alloc_instance_simple:\09\09\09\09\09"
module asm "\09.asciz \09\22skcipher_alloc_instance_simple\22\09\09\09\09\09"
module asm "__kstrtabns_skcipher_alloc_instance_simple:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.crypto_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.skcipher_walk = type { %union.anon, %union.anon, %struct.scatter_walk, i32, %struct.scatter_walk, i32, %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i32 }
%struct.scatter_walk = type { ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.anon.110 = type { ptr, ptr }
%struct.page = type { i32, %union.anon.0, %union.anon.109, %struct.atomic_t }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.109 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.90, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.30 }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.90 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.skcipher_walk_buffer = type { %struct.list_head, %struct.scatter_walk, i32, ptr, [0 x i8] }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [24 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.115, ptr, ptr, ptr, ptr, [48 x i8] }
%union.anon.115 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [20 x i8], [0 x ptr] }
%struct.crypto_skcipher = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.crypto_spawn = type { %struct.list_head, ptr, %union.anon.117, ptr, i32, i8, i8 }
%union.anon.117 = type { ptr }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [24 x i8], %struct.crypto_alg }
%struct.skcipher_instance = type { ptr, [60 x i8], %union.anon.118 }
%union.anon.118 = type { %struct.anon.119 }
%struct.anon.119 = type { [64 x i8], %struct.crypto_instance }
%struct.crypto_instance = type { %struct.crypto_alg, ptr, %union.anon.116, [52 x i8], [0 x ptr] }
%union.anon.116 = type { %struct.hlist_node }
%struct.crypto_template = type { %struct.list_head, %struct.hlist_head, ptr, ptr, [128 x i8] }
%struct.hlist_head = type { ptr }
%struct.crypto_report_blkcipher = type { [64 x i8], [64 x i8], i32, i32, i32, i32 }

@__kstrtab_skcipher_walk_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_skcipher_walk_done = external dso_local constant [0 x i8], align 1
@__ksymtab_skcipher_walk_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skcipher_walk_done to i32), ptr @__kstrtab_skcipher_walk_done, ptr @__kstrtabns_skcipher_walk_done }, section "___ksymtab_gpl+skcipher_walk_done", align 4
@__kstrtab_skcipher_walk_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_skcipher_walk_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_skcipher_walk_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skcipher_walk_complete to i32), ptr @__kstrtab_skcipher_walk_complete, ptr @__kstrtabns_skcipher_walk_complete }, section "___ksymtab_gpl+skcipher_walk_complete", align 4
@__kstrtab_skcipher_walk_virt = external dso_local constant [0 x i8], align 1
@__kstrtabns_skcipher_walk_virt = external dso_local constant [0 x i8], align 1
@__ksymtab_skcipher_walk_virt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skcipher_walk_virt to i32), ptr @__kstrtab_skcipher_walk_virt, ptr @__kstrtabns_skcipher_walk_virt }, section "___ksymtab_gpl+skcipher_walk_virt", align 4
@__kstrtab_skcipher_walk_async = external dso_local constant [0 x i8], align 1
@__kstrtabns_skcipher_walk_async = external dso_local constant [0 x i8], align 1
@__ksymtab_skcipher_walk_async = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skcipher_walk_async to i32), ptr @__kstrtab_skcipher_walk_async, ptr @__kstrtabns_skcipher_walk_async }, section "___ksymtab_gpl+skcipher_walk_async", align 4
@__kstrtab_skcipher_walk_aead_encrypt = external dso_local constant [0 x i8], align 1
@__kstrtabns_skcipher_walk_aead_encrypt = external dso_local constant [0 x i8], align 1
@__ksymtab_skcipher_walk_aead_encrypt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skcipher_walk_aead_encrypt to i32), ptr @__kstrtab_skcipher_walk_aead_encrypt, ptr @__kstrtabns_skcipher_walk_aead_encrypt }, section "___ksymtab_gpl+skcipher_walk_aead_encrypt", align 4
@__kstrtab_skcipher_walk_aead_decrypt = external dso_local constant [0 x i8], align 1
@__kstrtabns_skcipher_walk_aead_decrypt = external dso_local constant [0 x i8], align 1
@__ksymtab_skcipher_walk_aead_decrypt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skcipher_walk_aead_decrypt to i32), ptr @__kstrtab_skcipher_walk_aead_decrypt, ptr @__kstrtabns_skcipher_walk_aead_decrypt }, section "___ksymtab_gpl+skcipher_walk_aead_decrypt", align 4
@__kstrtab_crypto_skcipher_setkey = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_skcipher_setkey = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_skcipher_setkey = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_skcipher_setkey to i32), ptr @__kstrtab_crypto_skcipher_setkey, ptr @__kstrtabns_crypto_skcipher_setkey }, section "___ksymtab_gpl+crypto_skcipher_setkey", align 4
@__kstrtab_crypto_skcipher_encrypt = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_skcipher_encrypt = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_skcipher_encrypt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_skcipher_encrypt to i32), ptr @__kstrtab_crypto_skcipher_encrypt, ptr @__kstrtabns_crypto_skcipher_encrypt }, section "___ksymtab_gpl+crypto_skcipher_encrypt", align 4
@__kstrtab_crypto_skcipher_decrypt = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_skcipher_decrypt = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_skcipher_decrypt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_skcipher_decrypt to i32), ptr @__kstrtab_crypto_skcipher_decrypt, ptr @__kstrtabns_crypto_skcipher_decrypt }, section "___ksymtab_gpl+crypto_skcipher_decrypt", align 4
@crypto_skcipher_type = internal constant %struct.crypto_type { ptr null, ptr @crypto_alg_extsize, ptr null, ptr @crypto_skcipher_init_tfm, ptr @crypto_skcipher_show, ptr @crypto_skcipher_report, ptr @crypto_skcipher_free_instance, i32 5, i32 -16, i32 15, i32 64 }, align 4
@__kstrtab_crypto_grab_skcipher = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_grab_skcipher = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_grab_skcipher = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_grab_skcipher to i32), ptr @__kstrtab_crypto_grab_skcipher, ptr @__kstrtabns_crypto_grab_skcipher }, section "___ksymtab_gpl+crypto_grab_skcipher", align 4
@__kstrtab_crypto_alloc_skcipher = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_alloc_skcipher = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_alloc_skcipher = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_alloc_skcipher to i32), ptr @__kstrtab_crypto_alloc_skcipher, ptr @__kstrtabns_crypto_alloc_skcipher }, section "___ksymtab_gpl+crypto_alloc_skcipher", align 4
@.str = private unnamed_addr constant [18 x i8] c"crypto/skcipher.c\00", align 1
@__kstrtab_crypto_alloc_sync_skcipher = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_alloc_sync_skcipher = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_alloc_sync_skcipher = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_alloc_sync_skcipher to i32), ptr @__kstrtab_crypto_alloc_sync_skcipher, ptr @__kstrtabns_crypto_alloc_sync_skcipher }, section "___ksymtab_gpl+crypto_alloc_sync_skcipher", align 4
@__kstrtab_crypto_has_skcipher = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_has_skcipher = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_has_skcipher = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_has_skcipher to i32), ptr @__kstrtab_crypto_has_skcipher, ptr @__kstrtabns_crypto_has_skcipher }, section "___ksymtab_gpl+crypto_has_skcipher", align 4
@__kstrtab_crypto_register_skcipher = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_register_skcipher = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_register_skcipher = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_register_skcipher to i32), ptr @__kstrtab_crypto_register_skcipher, ptr @__kstrtabns_crypto_register_skcipher }, section "___ksymtab_gpl+crypto_register_skcipher", align 4
@__kstrtab_crypto_unregister_skcipher = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_unregister_skcipher = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_unregister_skcipher = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_unregister_skcipher to i32), ptr @__kstrtab_crypto_unregister_skcipher, ptr @__kstrtabns_crypto_unregister_skcipher }, section "___ksymtab_gpl+crypto_unregister_skcipher", align 4
@__kstrtab_crypto_register_skciphers = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_register_skciphers = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_register_skciphers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_register_skciphers to i32), ptr @__kstrtab_crypto_register_skciphers, ptr @__kstrtabns_crypto_register_skciphers }, section "___ksymtab_gpl+crypto_register_skciphers", align 4
@__kstrtab_crypto_unregister_skciphers = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_unregister_skciphers = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_unregister_skciphers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_unregister_skciphers to i32), ptr @__kstrtab_crypto_unregister_skciphers, ptr @__kstrtabns_crypto_unregister_skciphers }, section "___ksymtab_gpl+crypto_unregister_skciphers", align 4
@__kstrtab_skcipher_register_instance = external dso_local constant [0 x i8], align 1
@__kstrtabns_skcipher_register_instance = external dso_local constant [0 x i8], align 1
@__ksymtab_skcipher_register_instance = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skcipher_register_instance to i32), ptr @__kstrtab_skcipher_register_instance, ptr @__kstrtabns_skcipher_register_instance }, section "___ksymtab_gpl+skcipher_register_instance", align 4
@__kstrtab_skcipher_alloc_instance_simple = external dso_local constant [0 x i8], align 1
@__kstrtabns_skcipher_alloc_instance_simple = external dso_local constant [0 x i8], align 1
@__ksymtab_skcipher_alloc_instance_simple = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skcipher_alloc_instance_simple to i32), ptr @__kstrtab_skcipher_alloc_instance_simple, ptr @__kstrtabns_skcipher_alloc_instance_simple }, section "___ksymtab_gpl+skcipher_alloc_instance_simple", align 4
@__UNIQUE_ID_file330 = internal constant [30 x i8] c"skcipher.file=crypto/skcipher\00", section ".modinfo", align 1
@__UNIQUE_ID_license331 = internal constant [21 x i8] c"skcipher.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description332 = internal constant [47 x i8] c"skcipher.description=Symmetric key cipher type\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns333 = internal constant [35 x i8] c"skcipher.import_ns=CRYPTO_INTERNAL\00", section ".modinfo", align 1
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@skcipher_walk_first.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"type         : skcipher\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"async        : %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"blocksize    : %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"min keysize  : %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"max keysize  : %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"ivsize       : %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"chunksize    : %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"walksize     : %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"skcipher\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"<none>\00", align 1
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_description332, ptr @__UNIQUE_ID_file330, ptr @__UNIQUE_ID_import_ns333, ptr @__UNIQUE_ID_license331, ptr @__ksymtab_crypto_alloc_skcipher, ptr @__ksymtab_crypto_alloc_sync_skcipher, ptr @__ksymtab_crypto_grab_skcipher, ptr @__ksymtab_crypto_has_skcipher, ptr @__ksymtab_crypto_register_skcipher, ptr @__ksymtab_crypto_register_skciphers, ptr @__ksymtab_crypto_skcipher_decrypt, ptr @__ksymtab_crypto_skcipher_encrypt, ptr @__ksymtab_crypto_skcipher_setkey, ptr @__ksymtab_crypto_unregister_skcipher, ptr @__ksymtab_crypto_unregister_skciphers, ptr @__ksymtab_skcipher_alloc_instance_simple, ptr @__ksymtab_skcipher_register_instance, ptr @__ksymtab_skcipher_walk_aead_decrypt, ptr @__ksymtab_skcipher_walk_aead_encrypt, ptr @__ksymtab_skcipher_walk_async, ptr @__ksymtab_skcipher_walk_complete, ptr @__ksymtab_skcipher_walk_done, ptr @__ksymtab_skcipher_walk_virt], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skcipher_walk_done(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %143, label %6

6:                                                ; preds = %2
  %7 = icmp sgt i32 %1, -1
  br i1 %7, label %8, label %13, !prof !8

8:                                                ; preds = %6
  %9 = sub i32 %4, %1
  %10 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = sub i32 %11, %9
  br label %13

13:                                               ; preds = %8, %6
  %14 = phi i32 [ %9, %8 ], [ %4, %6 ]
  %15 = phi i32 [ %12, %8 ], [ 0, %6 ]
  %16 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 12
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %45, !prof !8

20:                                               ; preds = %48, %13
  %21 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 2
  %22 = getelementptr inbounds %struct.anon.110, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %21, align 4
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, -4
  %27 = inttoptr i32 %26 to ptr
  %28 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 2, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = lshr i32 %29, 12
  %31 = getelementptr %struct.page, ptr %27, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = lshr i32 %32, 30
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %40, label %35

35:                                               ; preds = %20
  %36 = icmp ne i32 %33, 3
  %37 = load i32, ptr @movable_zone, align 4
  %38 = icmp ne i32 %37, 2
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %63, label %40

40:                                               ; preds = %35, %20
  tail call void @kunmap_local_indexed(ptr noundef %23) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  %41 = tail call ptr @llvm.thread.pointer() #10
  %42 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 149
  %43 = load i32, ptr %42, align 8
  %44 = add i32 %43, -1
  store i32 %44, ptr %42, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  br label %63

45:                                               ; preds = %13
  %46 = and i32 %17, 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call fastcc void @skcipher_unmap_dst(ptr noundef %0)
  br label %20

49:                                               ; preds = %45
  %50 = and i32 %17, 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  tail call fastcc void @skcipher_map_dst(ptr noundef %0)
  %53 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 1, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 7
  %56 = load ptr, ptr %55, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %54, ptr align 1 %56, i32 %14, i1 false)
  tail call fastcc void @skcipher_unmap_dst(ptr noundef %0)
  br label %63

57:                                               ; preds = %49
  %58 = and i32 %17, 2
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60, !prof !8

60:                                               ; preds = %57
  %61 = icmp sgt i32 %1, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %60
  tail call fastcc void @skcipher_done_slow(ptr noundef %0, i32 noundef %14)
  br label %63

63:                                               ; preds = %62, %60, %57, %52, %40, %35
  %64 = phi i32 [ %1, %52 ], [ %1, %62 ], [ %1, %57 ], [ -22, %60 ], [ %1, %35 ], [ %1, %40 ]
  %65 = phi i32 [ %14, %52 ], [ 0, %62 ], [ %14, %57 ], [ %14, %60 ], [ %14, %35 ], [ %14, %40 ]
  %66 = phi i32 [ %15, %52 ], [ %15, %62 ], [ %15, %57 ], [ 0, %60 ], [ %15, %35 ], [ %15, %40 ]
  %67 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 5
  store i32 %66, ptr %67, align 4
  store i32 0, ptr %3, align 4
  %68 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 2
  %69 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 2, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, %65
  store i32 %71, ptr %69, align 4
  %72 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 4
  %73 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 4, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, %65
  store i32 %75, ptr %73, align 4
  %76 = icmp eq i32 %66, 0
  br i1 %76, label %134, label %77

77:                                               ; preds = %63
  %78 = load ptr, ptr %68, align 4
  %79 = getelementptr inbounds %struct.scatterlist, ptr %78, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds %struct.scatterlist, ptr %78, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, %80
  %84 = icmp ult i32 %71, %83
  %85 = and i32 %71, 4095
  %86 = icmp ne i32 %85, 0
  %87 = and i1 %86, %84
  %88 = icmp ult i32 %71, %83
  %89 = or i1 %87, %88
  br i1 %89, label %95, label %90

90:                                               ; preds = %77
  %91 = tail call ptr @sg_next(ptr noundef %78) #10
  store ptr %91, ptr %68, align 4
  %92 = getelementptr inbounds %struct.scatterlist, ptr %91, i32 0, i32 1
  %93 = load i32, ptr %92, align 4
  store i32 %93, ptr %69, align 4
  %94 = load i32, ptr %73, align 4
  br label %95

95:                                               ; preds = %90, %77
  %96 = phi i32 [ %75, %77 ], [ %94, %90 ]
  %97 = load ptr, ptr %72, align 4
  %98 = getelementptr inbounds %struct.scatterlist, ptr %97, i32 0, i32 1
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr inbounds %struct.scatterlist, ptr %97, i32 0, i32 2
  %101 = load i32, ptr %100, align 4
  %102 = add i32 %101, %99
  %103 = icmp uge i32 %96, %102
  %104 = and i32 %96, 4095
  %105 = icmp eq i32 %104, 0
  %106 = or i1 %105, %103
  br i1 %106, label %107, label %126

107:                                              ; preds = %95
  %108 = load i32, ptr %97, align 4
  %109 = and i32 %108, -4
  %110 = inttoptr i32 %109 to ptr
  %111 = add i32 %96, -1
  %112 = lshr i32 %111, 12
  %113 = getelementptr %struct.page, ptr %110, i32 %112
  tail call void @flush_dcache_page(ptr noundef %113) #10
  %114 = load i32, ptr %73, align 4
  %115 = load ptr, ptr %72, align 4
  %116 = getelementptr inbounds %struct.scatterlist, ptr %115, i32 0, i32 1
  %117 = load i32, ptr %116, align 4
  %118 = getelementptr inbounds %struct.scatterlist, ptr %115, i32 0, i32 2
  %119 = load i32, ptr %118, align 4
  %120 = add i32 %119, %117
  %121 = icmp ult i32 %114, %120
  br i1 %121, label %126, label %122

122:                                              ; preds = %107
  %123 = tail call ptr @sg_next(ptr noundef %115) #10
  store ptr %123, ptr %72, align 4
  %124 = getelementptr inbounds %struct.scatterlist, ptr %123, i32 0, i32 1
  %125 = load i32, ptr %124, align 4
  store i32 %125, ptr %73, align 4
  br label %126

126:                                              ; preds = %122, %107, %95
  %127 = load i32, ptr %16, align 4
  %128 = and i32 %127, 16
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %126
  %131 = tail call i32 @__cond_resched() #10
  br label %132

132:                                              ; preds = %130, %126
  %133 = tail call fastcc i32 @skcipher_walk_next(ptr noundef %0)
  br label %179

134:                                              ; preds = %63
  %135 = tail call i32 @llvm.smin.i32(i32 %64, i32 0)
  %136 = load ptr, ptr %72, align 4
  %137 = load i32, ptr %136, align 4
  %138 = and i32 %137, -4
  %139 = inttoptr i32 %138 to ptr
  %140 = add i32 %75, -1
  %141 = lshr i32 %140, 12
  %142 = getelementptr %struct.page, ptr %139, i32 %141
  tail call void @flush_dcache_page(ptr noundef %142) #10
  br label %143

143:                                              ; preds = %134, %2
  %144 = phi i32 [ %1, %2 ], [ %135, %134 ]
  %145 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 8
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 7
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %146, null
  %150 = icmp eq ptr %148, null
  %151 = and i1 %149, %150
  br i1 %151, label %179, label %152

152:                                              ; preds = %143
  %153 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 12
  %154 = load i32, ptr %153, align 4
  %155 = and i32 %154, 1
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %179

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 10
  %159 = load ptr, ptr %158, align 4
  %160 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 9
  %161 = load ptr, ptr %160, align 4
  %162 = icmp eq ptr %159, %161
  br i1 %162, label %168, label %163

163:                                              ; preds = %157
  %164 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 11
  %165 = load i32, ptr %164, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %161, ptr align 1 %159, i32 %165, i1 false)
  %166 = load ptr, ptr %145, align 4
  %167 = load ptr, ptr %147, align 4
  br label %168

168:                                              ; preds = %163, %157
  %169 = phi ptr [ %167, %163 ], [ %148, %157 ]
  %170 = phi ptr [ %166, %163 ], [ %146, %157 ]
  %171 = icmp eq ptr %170, %169
  br i1 %171, label %174, label %172

172:                                              ; preds = %168
  tail call void @kfree(ptr noundef %170) #10
  %173 = load ptr, ptr %147, align 4
  br label %174

174:                                              ; preds = %172, %168
  %175 = phi ptr [ %173, %172 ], [ %169, %168 ]
  %176 = icmp eq ptr %175, null
  br i1 %176, label %179, label %177

177:                                              ; preds = %174
  %178 = ptrtoint ptr %175 to i32
  tail call void @free_pages(i32 noundef %178, i32 noundef 0) #10
  br label %179

179:                                              ; preds = %177, %174, %152, %143, %132
  %180 = phi i32 [ %133, %132 ], [ %144, %174 ], [ %144, %177 ], [ %144, %152 ], [ %144, %143 ]
  ret i32 %180
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @skcipher_unmap_dst(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 4
  %3 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, -4
  %8 = inttoptr i32 %7 to ptr
  %9 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 4, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %10, 12
  %12 = getelementptr %struct.page, ptr %8, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 30
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = icmp ne i32 %14, 3
  %18 = load i32, ptr @movable_zone, align 4
  %19 = icmp ne i32 %18, 2
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %16, %1
  tail call void @kunmap_local_indexed(ptr noundef %4) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  %22 = tail call ptr @llvm.thread.pointer() #10
  %23 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 149
  %24 = load i32, ptr %23, align 8
  %25 = add i32 %24, -1
  store i32 %25, ptr %23, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  br label %26

26:                                               ; preds = %21, %16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @skcipher_map_dst(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, -4
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 4, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = lshr i32 %8, 12
  %10 = getelementptr %struct.page, ptr %6, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 30
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = icmp ne i32 %12, 3
  %16 = load i32, ptr @movable_zone, align 4
  %17 = icmp ne i32 %16, 2
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %14, %1
  %20 = load i32, ptr @pgprot_kernel, align 4
  %21 = or i32 %20, 512
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %22 = tail call ptr @llvm.thread.pointer() #10
  %23 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 149
  %24 = load i32, ptr %23, align 8
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %26 = tail call ptr @__kmap_local_page_prot(ptr noundef %10, i32 noundef %21) #10
  br label %29

27:                                               ; preds = %14
  %28 = tail call ptr @page_address(ptr noundef %10) #10
  br label %29

29:                                               ; preds = %27, %19
  %30 = phi ptr [ %26, %19 ], [ %28, %27 ]
  %31 = load i32, ptr %7, align 4
  %32 = and i32 %31, 4095
  %33 = getelementptr i8, ptr %30, i32 %32
  %34 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 1, i32 0, i32 1
  store ptr %33, ptr %34, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @skcipher_done_slow(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 15
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, %5
  %9 = xor i32 %7, -1
  %10 = and i32 %8, %9
  %11 = inttoptr i32 %10 to ptr
  %12 = getelementptr i8, ptr %11, i32 %1
  %13 = getelementptr i8, ptr %12, i32 -1
  %14 = ptrtoint ptr %13 to i32
  %15 = and i32 %14, -4096
  %16 = inttoptr i32 %15 to ptr
  %17 = icmp ult ptr %16, %11
  %18 = select i1 %17, ptr %11, ptr %16
  %19 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 4
  %20 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 12
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 1, i32 2
  tail call void @scatterwalk_copychunks(ptr noundef %18, ptr noundef %19, i32 noundef %1, i32 noundef %24) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @skcipher_walk_next(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 12
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, -15
  store i32 %4, ptr %2, align 4
  %5 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 14
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 13
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.umax.i32(i32 %6, i32 %10)
  %12 = tail call i32 @llvm.umin.i32(i32 %8, i32 %11)
  %13 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.scatterlist, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.scatterlist, ptr %14, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %16
  %20 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 2, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = sub i32 %19, %21
  %23 = and i32 %21, 4095
  %24 = sub nuw nsw i32 4096, %23
  %25 = tail call i32 @llvm.umin.i32(i32 %24, i32 %22) #10
  %26 = tail call i32 @llvm.umin.i32(i32 %25, i32 %6) #10
  %27 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.scatterlist, ptr %28, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.scatterlist, ptr %28, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %30
  %34 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 4, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = sub i32 %33, %35
  %37 = and i32 %35, 4095
  %38 = sub nuw nsw i32 4096, %37
  %39 = tail call i32 @llvm.umin.i32(i32 %38, i32 %36) #10
  %40 = tail call i32 @llvm.umin.i32(i32 %39, i32 %26) #10
  %41 = icmp ult i32 %40, %12
  br i1 %41, label %42, label %48, !prof !13

42:                                               ; preds = %1
  %43 = icmp ult i32 %6, %10
  br i1 %43, label %44, label %46, !prof !13

44:                                               ; preds = %42
  %45 = tail call i32 @skcipher_walk_done(ptr noundef %0, i32 noundef -22)
  br label %186

46:                                               ; preds = %58, %42
  %47 = tail call fastcc i32 @skcipher_next_slow(ptr noundef %0, i32 noundef %12)
  br label %161

48:                                               ; preds = %1
  %49 = or i32 %35, %21
  %50 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 15
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %49, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %77, label %54, !prof !8

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 7
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = and i32 %3, 16
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, i32 2592, i32 3264
  %62 = tail call i32 @__get_free_pages(i32 noundef %61, i32 noundef 0) #10
  %63 = inttoptr i32 %62 to ptr
  store ptr %63, ptr %55, align 4
  %64 = icmp eq i32 %62, 0
  br i1 %64, label %46, label %65

65:                                               ; preds = %58
  %66 = load i32, ptr %2, align 4
  br label %67

67:                                               ; preds = %65, %54
  %68 = phi i32 [ %66, %65 ], [ %4, %54 ]
  %69 = phi ptr [ %63, %65 ], [ %56, %54 ]
  %70 = ptrtoint ptr %69 to i32
  %71 = and i32 %70, 4095
  %72 = sub nuw nsw i32 4096, %71
  %73 = tail call i32 @llvm.umin.i32(i32 %40, i32 %72)
  %74 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 3
  store i32 %73, ptr %74, align 4
  %75 = or i32 %68, 4
  store i32 %75, ptr %2, align 4
  %76 = tail call fastcc i32 @skcipher_next_copy(ptr noundef %0)
  br label %161

77:                                               ; preds = %48
  %78 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 3
  store i32 %40, ptr %78, align 4
  %79 = load i32, ptr %14, align 4
  %80 = and i32 %79, -4
  %81 = inttoptr i32 %80 to ptr
  %82 = lshr i32 %21, 12
  %83 = getelementptr %struct.page, ptr %81, i32 %82
  store ptr %83, ptr %0, align 4
  %84 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  store i32 %23, ptr %84, align 4
  %85 = load i32, ptr %28, align 4
  %86 = and i32 %85, -4
  %87 = inttoptr i32 %86 to ptr
  %88 = lshr i32 %35, 12
  %89 = getelementptr %struct.page, ptr %87, i32 %88
  %90 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 1
  store ptr %89, ptr %90, align 4
  %91 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 1, i32 0, i32 1
  store i32 %37, ptr %91, align 4
  %92 = and i32 %3, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %186

94:                                               ; preds = %77
  %95 = sub nsw i32 %23, %37
  %96 = ptrtoint ptr %83 to i32
  %97 = ptrtoint ptr %89 to i32
  %98 = sub i32 %96, %97
  %99 = or i32 %98, %95
  %100 = load i32, ptr %14, align 4
  %101 = and i32 %100, -4
  %102 = inttoptr i32 %101 to ptr
  %103 = getelementptr %struct.page, ptr %102, i32 %82
  %104 = load i32, ptr %103, align 4
  %105 = lshr i32 %104, 30
  %106 = icmp eq i32 %105, 2
  br i1 %106, label %112, label %107

107:                                              ; preds = %94
  %108 = icmp ne i32 %105, 3
  %109 = load i32, ptr @movable_zone, align 4
  %110 = icmp ne i32 %109, 2
  %111 = select i1 %108, i1 true, i1 %110
  br i1 %111, label %120, label %112

112:                                              ; preds = %107, %94
  %113 = load i32, ptr @pgprot_kernel, align 4
  %114 = or i32 %113, 512
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %115 = tail call ptr @llvm.thread.pointer() #10
  %116 = getelementptr inbounds %struct.task_struct, ptr %115, i32 0, i32 149
  %117 = load i32, ptr %116, align 8
  %118 = add i32 %117, 1
  store i32 %118, ptr %116, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %119 = tail call ptr @__kmap_local_page_prot(ptr noundef %103, i32 noundef %114) #10
  br label %122

120:                                              ; preds = %107
  %121 = tail call ptr @page_address(ptr noundef %103) #10
  br label %122

122:                                              ; preds = %120, %112
  %123 = phi ptr [ %119, %112 ], [ %121, %120 ]
  %124 = load i32, ptr %20, align 4
  %125 = and i32 %124, 4095
  %126 = getelementptr i8, ptr %123, i32 %125
  store ptr %126, ptr %84, align 4
  store ptr %126, ptr %91, align 4
  %127 = icmp eq i32 %99, 0
  br i1 %127, label %186, label %128

128:                                              ; preds = %122
  %129 = load i32, ptr %2, align 4
  %130 = or i32 %129, 8
  store i32 %130, ptr %2, align 4
  %131 = load ptr, ptr %27, align 4
  %132 = load i32, ptr %131, align 4
  %133 = and i32 %132, -4
  %134 = inttoptr i32 %133 to ptr
  %135 = load i32, ptr %34, align 4
  %136 = lshr i32 %135, 12
  %137 = getelementptr %struct.page, ptr %134, i32 %136
  %138 = load i32, ptr %137, align 4
  %139 = lshr i32 %138, 30
  %140 = icmp eq i32 %139, 2
  br i1 %140, label %146, label %141

141:                                              ; preds = %128
  %142 = icmp ne i32 %139, 3
  %143 = load i32, ptr @movable_zone, align 4
  %144 = icmp ne i32 %143, 2
  %145 = select i1 %142, i1 true, i1 %144
  br i1 %145, label %154, label %146

146:                                              ; preds = %141, %128
  %147 = load i32, ptr @pgprot_kernel, align 4
  %148 = or i32 %147, 512
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %149 = tail call ptr @llvm.thread.pointer() #10
  %150 = getelementptr inbounds %struct.task_struct, ptr %149, i32 0, i32 149
  %151 = load i32, ptr %150, align 8
  %152 = add i32 %151, 1
  store i32 %152, ptr %150, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %153 = tail call ptr @__kmap_local_page_prot(ptr noundef %137, i32 noundef %148) #10
  br label %156

154:                                              ; preds = %141
  %155 = tail call ptr @page_address(ptr noundef %137) #10
  br label %156

156:                                              ; preds = %154, %146
  %157 = phi ptr [ %153, %146 ], [ %155, %154 ]
  %158 = load i32, ptr %34, align 4
  %159 = and i32 %158, 4095
  %160 = getelementptr i8, ptr %157, i32 %159
  store ptr %160, ptr %91, align 4
  br label %186

161:                                              ; preds = %67, %46
  %162 = phi i32 [ %47, %46 ], [ %76, %67 ]
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %186

164:                                              ; preds = %161
  %165 = load i32, ptr %2, align 4
  %166 = and i32 %165, 1
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %186, label %168

168:                                              ; preds = %164
  %169 = load ptr, ptr @mem_map, align 4
  %170 = getelementptr inbounds %struct.anon.110, ptr %0, i32 0, i32 1
  %171 = load ptr, ptr %170, align 4
  %172 = ptrtoint ptr %171 to i32
  %173 = add i32 %172, 1073741824
  %174 = lshr i32 %173, 12
  %175 = getelementptr %struct.page, ptr %169, i32 %174
  store ptr %175, ptr %0, align 4
  %176 = load ptr, ptr @mem_map, align 4
  %177 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 1
  %178 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 1, i32 0, i32 1
  %179 = load ptr, ptr %178, align 4
  %180 = ptrtoint ptr %179 to i32
  %181 = add i32 %180, 1073741824
  %182 = lshr i32 %181, 12
  %183 = getelementptr %struct.page, ptr %176, i32 %182
  store ptr %183, ptr %177, align 4
  %184 = and i32 %172, 4095
  store i32 %184, ptr %170, align 4
  %185 = and i32 %180, 4095
  store i32 %185, ptr %178, align 4
  br label %186

186:                                              ; preds = %168, %164, %161, %156, %122, %77, %44
  %187 = phi i32 [ %45, %44 ], [ 0, %168 ], [ 0, %164 ], [ %162, %161 ], [ 0, %77 ], [ 0, %122 ], [ 0, %156 ]
  ret i32 %187
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @skcipher_walk_complete(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %53, label %6

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 15
  %9 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 14
  br label %10

10:                                               ; preds = %47, %6
  %11 = phi ptr [ %4, %6 ], [ %12, %47 ]
  %12 = load ptr, ptr %11, align 4
  br i1 %7, label %13, label %47

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.skcipher_walk_buffer, ptr %11, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.skcipher_walk_buffer, ptr %11, i32 0, i32 4
  %19 = ptrtoint ptr %18 to i32
  %20 = load i32, ptr %8, align 4
  %21 = add i32 %20, %19
  %22 = xor i32 %20, -1
  %23 = and i32 %21, %22
  %24 = inttoptr i32 %23 to ptr
  %25 = load i32, ptr %9, align 4
  %26 = getelementptr i8, ptr %24, i32 -1
  %27 = getelementptr i8, ptr %26, i32 %25
  %28 = ptrtoint ptr %27 to i32
  %29 = and i32 %28, -4096
  %30 = inttoptr i32 %29 to ptr
  %31 = icmp ult ptr %30, %24
  %32 = select i1 %31, ptr %24, ptr %30
  br label %33

33:                                               ; preds = %17, %13
  %34 = phi ptr [ %15, %13 ], [ %32, %17 ]
  %35 = getelementptr inbounds %struct.skcipher_walk_buffer, ptr %11, i32 0, i32 1
  %36 = getelementptr inbounds %struct.skcipher_walk_buffer, ptr %11, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  tail call void @scatterwalk_copychunks(ptr noundef %34, ptr noundef %35, i32 noundef %37, i32 noundef 1) #10
  %38 = load ptr, ptr %14, align 4
  %39 = ptrtoint ptr %38 to i32
  %40 = and i32 %39, 4095
  %41 = load i32, ptr %36, align 4
  %42 = add i32 %40, %41
  %43 = load i32, ptr %9, align 4
  %44 = add i32 %42, %43
  %45 = icmp ugt i32 %44, 4096
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  tail call void @free_pages(i32 noundef %39, i32 noundef 0) #10
  br label %47

47:                                               ; preds = %46, %33, %10
  %48 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = load ptr, ptr %11, align 4
  %51 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  store ptr %49, ptr %51, align 4
  store volatile ptr %50, ptr %49, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %48, align 4
  tail call void @kfree(ptr noundef %11) #10
  %52 = icmp eq ptr %12, %3
  br i1 %52, label %53, label %10

53:                                               ; preds = %47, %2
  %54 = icmp eq i32 %1, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 10
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 9
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %57, %59
  br i1 %60, label %64, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 11
  %63 = load i32, ptr %62, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %59, ptr align 1 %57, i32 %63, i1 false)
  br label %64

64:                                               ; preds = %61, %55, %53
  %65 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 8
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 7
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %66, %68
  br i1 %69, label %72, label %70

70:                                               ; preds = %64
  tail call void @kfree(ptr noundef %66) #10
  %71 = load ptr, ptr %67, align 4
  br label %72

72:                                               ; preds = %70, %64
  %73 = phi ptr [ %71, %70 ], [ %66, %64 ]
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = ptrtoint ptr %73 to i32
  tail call void @free_pages(i32 noundef %76, i32 noundef 0) #10
  br label %77

77:                                               ; preds = %75, %72
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_copychunks(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skcipher_walk_virt(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, -2
  store i32 %6, ptr %4, align 4
  %7 = tail call fastcc i32 @skcipher_walk_skcipher(ptr noundef %0, ptr noundef %1)
  %8 = select i1 %2, i32 -17, i32 -1
  %9 = load i32, ptr %4, align 4
  %10 = and i32 %9, %8
  store i32 %10, ptr %4, align 4
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @skcipher_walk_skcipher(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 4, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = load i32, ptr %1, align 64
  %6 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 5
  store i32 %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 3
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 10
  store ptr %9, ptr %10, align 4
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 9
  store ptr %11, ptr %12, align 4
  %13 = icmp eq i32 %5, 0
  br i1 %13, label %113, label %14, !prof !13

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 2
  %16 = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  store ptr %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.scatterlist, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 2, i32 1
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 4
  %22 = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  store ptr %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.scatterlist, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 4, i32 1
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 12
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, -17
  store i32 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 4, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = lshr i32 %31, 5
  %33 = and i32 %32, 16
  %34 = or i32 %33, %29
  store i32 %34, ptr %27, align 4
  %35 = getelementptr i8, ptr %4, i32 12
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.crypto_alg, ptr %36, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 13
  store i32 %38, ptr %39, align 4
  %40 = load ptr, ptr %35, align 4
  %41 = getelementptr i8, ptr %40, i32 -28
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 14
  store i32 %42, ptr %43, align 4
  %44 = load ptr, ptr %35, align 4
  %45 = getelementptr i8, ptr %44, i32 -36
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 11
  store i32 %46, ptr %47, align 4
  %48 = load ptr, ptr %35, align 4
  %49 = getelementptr inbounds %struct.crypto_alg, ptr %48, i32 0, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 15
  store i32 %50, ptr %51, align 4
  %52 = tail call ptr @llvm.thread.pointer() #10
  %53 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %54 = load volatile i32, ptr %53, align 4
  %55 = and i32 %54, 983040
  %56 = icmp ne i32 %55, 0
  %57 = load i1, ptr @skcipher_walk_first.__already_done, align 1
  %58 = xor i1 %57, true
  %59 = select i1 %56, i1 %58, i1 false
  br i1 %59, label %60, label %61, !prof !13

60:                                               ; preds = %14
  store i1 true, ptr @skcipher_walk_first.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 434, i32 noundef 9, ptr noundef null) #10
  br label %61

61:                                               ; preds = %60, %14
  br i1 %56, label %113, label %62

62:                                               ; preds = %61
  %63 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 8
  store ptr null, ptr %63, align 4
  %64 = load ptr, ptr %10, align 4
  %65 = ptrtoint ptr %64 to i32
  %66 = load i32, ptr %51, align 4
  %67 = and i32 %66, %65
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %110, label %69, !prof !8

69:                                               ; preds = %62
  %70 = load i32, ptr %47, align 4
  %71 = load i32, ptr %43, align 4
  %72 = add i32 %71, %66
  %73 = xor i32 %66, -1
  %74 = and i32 %72, %73
  %75 = and i32 %66, -64
  %76 = load i32, ptr %27, align 4
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %69
  %80 = add i32 %70, %75
  br label %88

81:                                               ; preds = %69
  %82 = add i32 %71, -1
  %83 = xor i32 %75, -64
  %84 = and i32 %82, %83
  %85 = add i32 %70, %75
  %86 = add i32 %85, %74
  %87 = add i32 %86, %84
  br label %88

88:                                               ; preds = %81, %79
  %89 = phi i32 [ %80, %79 ], [ %87, %81 ]
  %90 = and i32 %76, 16
  %91 = icmp eq i32 %90, 0
  %92 = select i1 %91, i32 2592, i32 3264
  %93 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %89, i32 noundef %92) #11
  store ptr %93, ptr %63, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %113, label %95

95:                                               ; preds = %88
  %96 = load ptr, ptr %10, align 4
  %97 = load i32, ptr %47, align 4
  %98 = ptrtoint ptr %93 to i32
  %99 = add i32 %66, %98
  %100 = and i32 %99, %73
  %101 = inttoptr i32 %100 to ptr
  %102 = getelementptr i8, ptr %101, i32 %71
  %103 = getelementptr i8, ptr %102, i32 -1
  %104 = ptrtoint ptr %103 to i32
  %105 = and i32 %104, -4096
  %106 = inttoptr i32 %105 to ptr
  %107 = icmp ult ptr %106, %101
  %108 = select i1 %107, ptr %101, ptr %106
  %109 = getelementptr i8, ptr %108, i32 %74
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %109, ptr align 1 %96, i32 %97, i1 false) #10
  store ptr %109, ptr %10, align 4
  br label %110

110:                                              ; preds = %95, %62
  %111 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 7
  store ptr null, ptr %111, align 4
  %112 = tail call fastcc i32 @skcipher_walk_next(ptr noundef %0) #10
  br label %113

113:                                              ; preds = %110, %88, %61, %2
  %114 = phi i32 [ 0, %2 ], [ %112, %110 ], [ -35, %61 ], [ -12, %88 ]
  ret i32 %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skcipher_walk_async(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 12
  %4 = load i32, ptr %3, align 4
  %5 = or i32 %4, 1
  store i32 %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 6
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 6, i32 1
  store ptr %6, ptr %7, align 4
  %8 = tail call fastcc i32 @skcipher_walk_skcipher(ptr noundef %0, ptr noundef %1)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skcipher_walk_aead_encrypt(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 5
  store i32 %5, ptr %6, align 4
  %7 = tail call fastcc i32 @skcipher_walk_aead_common(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @skcipher_walk_aead_common(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 3
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 3
  %8 = load ptr, ptr %7, align 32
  %9 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 10
  store ptr %8, ptr %9, align 4
  %10 = load ptr, ptr %7, align 32
  %11 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 9
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %165, label %15, !prof !13

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 12
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, -2
  store i32 %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 2
  %20 = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  store ptr %21, ptr %19, align 4
  %22 = getelementptr inbounds %struct.scatterlist, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 2, i32 1
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 4
  %26 = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 5
  %27 = load ptr, ptr %26, align 8
  store ptr %27, ptr %25, align 4
  %28 = getelementptr inbounds %struct.scatterlist, ptr %27, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 4, i32 1
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 1
  %32 = load i32, ptr %31, align 8
  tail call void @scatterwalk_copychunks(ptr noundef null, ptr noundef %19, i32 noundef %32, i32 noundef 2) #10
  %33 = load i32, ptr %31, align 8
  tail call void @scatterwalk_copychunks(ptr noundef null, ptr noundef %25, i32 noundef %33, i32 noundef 2) #10
  %34 = load i32, ptr %12, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %74, label %36

36:                                               ; preds = %15
  %37 = load i32, ptr %24, align 4
  %38 = load ptr, ptr %19, align 4
  %39 = getelementptr inbounds %struct.scatterlist, ptr %38, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.scatterlist, ptr %38, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, %40
  %44 = icmp ult i32 %37, %43
  %45 = and i32 %37, 4095
  %46 = icmp ne i32 %45, 0
  %47 = and i1 %46, %44
  %48 = icmp ult i32 %37, %43
  %49 = or i1 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %36
  %51 = tail call ptr @sg_next(ptr noundef %38) #10
  store ptr %51, ptr %19, align 4
  %52 = getelementptr inbounds %struct.scatterlist, ptr %51, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  store i32 %53, ptr %24, align 4
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %74, label %56

56:                                               ; preds = %50, %36
  %57 = load i32, ptr %30, align 4
  %58 = load ptr, ptr %25, align 4
  %59 = getelementptr inbounds %struct.scatterlist, ptr %58, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.scatterlist, ptr %58, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, %60
  %64 = icmp ult i32 %57, %63
  %65 = and i32 %57, 4095
  %66 = icmp ne i32 %65, 0
  %67 = and i1 %66, %64
  %68 = icmp ult i32 %57, %63
  %69 = or i1 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %56
  %71 = tail call ptr @sg_next(ptr noundef %58) #10
  store ptr %71, ptr %25, align 4
  %72 = getelementptr inbounds %struct.scatterlist, ptr %71, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  store i32 %73, ptr %30, align 4
  br label %74

74:                                               ; preds = %70, %56, %50, %15
  %75 = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 4
  %76 = load i32, ptr %75, align 4
  %77 = load i32, ptr %16, align 4
  %78 = and i32 %77, -17
  %79 = lshr i32 %76, 5
  %80 = and i32 %79, 16
  %81 = or i32 %78, %80
  store i32 %81, ptr %16, align 4
  %82 = getelementptr i8, ptr %5, i32 12
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.crypto_alg, ptr %83, i32 0, i32 3
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 13
  store i32 %85, ptr %86, align 4
  %87 = load ptr, ptr %82, align 4
  %88 = getelementptr i8, ptr %87, i32 -32
  %89 = load i32, ptr %88, align 32
  %90 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 14
  store i32 %89, ptr %90, align 4
  %91 = load ptr, ptr %82, align 4
  %92 = getelementptr i8, ptr %91, i32 -40
  %93 = load i32, ptr %92, align 8
  %94 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 11
  store i32 %93, ptr %94, align 4
  %95 = load ptr, ptr %82, align 4
  %96 = getelementptr inbounds %struct.crypto_alg, ptr %95, i32 0, i32 5
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 15
  store i32 %97, ptr %98, align 4
  %99 = tail call ptr @llvm.thread.pointer() #10
  %100 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 1
  %101 = load volatile i32, ptr %100, align 4
  %102 = and i32 %101, 983040
  %103 = icmp ne i32 %102, 0
  %104 = load i1, ptr @skcipher_walk_first.__already_done, align 1
  %105 = xor i1 %104, true
  %106 = select i1 %103, i1 %105, i1 false
  br i1 %106, label %107, label %108, !prof !13

107:                                              ; preds = %74
  store i1 true, ptr @skcipher_walk_first.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 434, i32 noundef 9, ptr noundef null) #10
  br label %108

108:                                              ; preds = %107, %74
  br i1 %103, label %160, label %109

109:                                              ; preds = %108
  %110 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 8
  store ptr null, ptr %110, align 4
  %111 = load ptr, ptr %9, align 4
  %112 = ptrtoint ptr %111 to i32
  %113 = load i32, ptr %98, align 4
  %114 = and i32 %113, %112
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %157, label %116, !prof !8

116:                                              ; preds = %109
  %117 = load i32, ptr %94, align 4
  %118 = load i32, ptr %90, align 4
  %119 = add i32 %118, %113
  %120 = xor i32 %113, -1
  %121 = and i32 %119, %120
  %122 = and i32 %113, -64
  %123 = load i32, ptr %16, align 4
  %124 = and i32 %123, 1
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %116
  %127 = add i32 %117, %122
  br label %135

128:                                              ; preds = %116
  %129 = add i32 %118, -1
  %130 = xor i32 %122, -64
  %131 = and i32 %129, %130
  %132 = add i32 %117, %122
  %133 = add i32 %132, %121
  %134 = add i32 %133, %131
  br label %135

135:                                              ; preds = %128, %126
  %136 = phi i32 [ %127, %126 ], [ %134, %128 ]
  %137 = and i32 %123, 16
  %138 = icmp eq i32 %137, 0
  %139 = select i1 %138, i32 2592, i32 3264
  %140 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %136, i32 noundef %139) #11
  store ptr %140, ptr %110, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %160, label %142

142:                                              ; preds = %135
  %143 = load ptr, ptr %9, align 4
  %144 = load i32, ptr %94, align 4
  %145 = ptrtoint ptr %140 to i32
  %146 = add i32 %113, %145
  %147 = and i32 %146, %120
  %148 = inttoptr i32 %147 to ptr
  %149 = getelementptr i8, ptr %148, i32 %118
  %150 = getelementptr i8, ptr %149, i32 -1
  %151 = ptrtoint ptr %150 to i32
  %152 = and i32 %151, -4096
  %153 = inttoptr i32 %152 to ptr
  %154 = icmp ult ptr %153, %148
  %155 = select i1 %154, ptr %148, ptr %153
  %156 = getelementptr i8, ptr %155, i32 %121
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %156, ptr align 1 %143, i32 %144, i1 false) #10
  store ptr %156, ptr %9, align 4
  br label %157

157:                                              ; preds = %142, %109
  %158 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 7
  store ptr null, ptr %158, align 4
  %159 = tail call fastcc i32 @skcipher_walk_next(ptr noundef %0) #10
  br label %160

160:                                              ; preds = %157, %135, %108
  %161 = phi i32 [ %159, %157 ], [ -35, %108 ], [ -12, %135 ]
  br i1 %2, label %162, label %165

162:                                              ; preds = %160
  %163 = load i32, ptr %16, align 4
  %164 = and i32 %163, -17
  store i32 %164, ptr %16, align 4
  br label %165

165:                                              ; preds = %162, %160, %3
  %166 = phi i32 [ 0, %3 ], [ %161, %162 ], [ %161, %160 ]
  ret i32 %166
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skcipher_walk_aead_decrypt(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr i8, ptr %5, i32 -64
  %7 = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %6, align 64
  %10 = sub i32 %8, %9
  %11 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 5
  store i32 %10, ptr %11, align 4
  %12 = tail call fastcc i32 @skcipher_walk_aead_common(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2)
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_skcipher_setkey(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -64
  %7 = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %5, i32 -44
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, %2
  br i1 %11, label %52, label %12

12:                                               ; preds = %3
  %13 = getelementptr i8, ptr %5, i32 -40
  %14 = load i32, ptr %13, align 8
  %15 = icmp ult i32 %14, %2
  br i1 %15, label %52, label %16

16:                                               ; preds = %12
  %17 = ptrtoint ptr %1 to i32
  %18 = and i32 %8, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %16
  %21 = add i32 %8, %2
  %22 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %21, i32 noundef 2592) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %20
  %25 = ptrtoint ptr %22 to i32
  %26 = add i32 %8, %25
  %27 = xor i32 %8, -1
  %28 = and i32 %26, %27
  %29 = inttoptr i32 %28 to ptr
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %29, ptr align 1 %1, i32 %2, i1 false) #10
  %30 = load ptr, ptr %6, align 64
  %31 = tail call i32 %30(ptr noundef %0, ptr noundef %29, i32 noundef %2) #10
  tail call void @kfree_sensitive(ptr noundef nonnull %22) #10
  br label %35

32:                                               ; preds = %16
  %33 = load ptr, ptr %6, align 64
  %34 = tail call i32 %33(ptr noundef %0, ptr noundef %1, i32 noundef %2) #10
  br label %35

35:                                               ; preds = %32, %24
  %36 = phi i32 [ %34, %32 ], [ %31, %24 ]
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %48, label %38, !prof !8

38:                                               ; preds = %35, %20
  %39 = phi i32 [ %36, %35 ], [ -12, %20 ]
  %40 = load ptr, ptr %4, align 4
  %41 = getelementptr i8, ptr %40, i32 -40
  %42 = load i32, ptr %41, align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2
  %46 = load i32, ptr %45, align 64
  %47 = or i32 %46, 1
  store i32 %47, ptr %45, align 64
  br label %52

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2
  %50 = load i32, ptr %49, align 64
  %51 = and i32 %50, -2
  store i32 %51, ptr %49, align 64
  br label %52

52:                                               ; preds = %48, %44, %38, %12, %3
  %53 = phi i32 [ 0, %48 ], [ -22, %12 ], [ -22, %3 ], [ %39, %38 ], [ %39, %44 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_skcipher_encrypt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = load i32, ptr %3, align 64
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %3, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 -60
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %0) #10
  br label %13

13:                                               ; preds = %7, %1
  %14 = phi i32 [ %12, %7 ], [ -126, %1 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_skcipher_decrypt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = load i32, ptr %3, align 64
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %3, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 -56
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 %11(ptr noundef %0) #10
  br label %13

13:                                               ; preds = %7, %1
  %14 = phi i32 [ %12, %7 ], [ -126, %1 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_grab_skcipher(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.crypto_spawn, ptr %0, i32 0, i32 3
  store ptr @crypto_skcipher_type, ptr %6, align 4
  %7 = tail call i32 @crypto_grab_spawn(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #10
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_spawn(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @crypto_alloc_skcipher(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @crypto_alloc_tfm_node(ptr noundef %0, ptr noundef nonnull @crypto_skcipher_type, i32 noundef %1, i32 noundef %2, i32 noundef -1) #10
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @crypto_alloc_sync_skcipher(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, 128
  %5 = tail call ptr @crypto_alloc_tfm_node(ptr noundef %0, ptr noundef nonnull @crypto_skcipher_type, i32 noundef %1, i32 noundef %4, i32 noundef -1) #10
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %5, align 64
  %9 = icmp ugt i32 %8, 384
  br i1 %9, label %10, label %12, !prof !13

10:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 775, i32 noundef 9, ptr noundef null) #10
  %11 = getelementptr inbounds %struct.crypto_skcipher, ptr %5, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %5, ptr noundef %11) #10
  br label %12

12:                                               ; preds = %10, %7, %3
  %13 = phi ptr [ inttoptr (i32 -22 to ptr), %10 ], [ %5, %7 ], [ %5, %3 ]
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_has_skcipher(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @crypto_type_has_alg(ptr noundef %0, ptr noundef nonnull @crypto_skcipher_type, i32 noundef %1, i32 noundef %2) #10
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_type_has_alg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_register_skcipher(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.skcipher_alg, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = icmp ugt i32 %3, 512
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.skcipher_alg, ptr %0, i32 0, i32 8
  %7 = load i32, ptr %6, align 32
  %8 = icmp ugt i32 %7, 512
  br i1 %8, label %30, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.skcipher_alg, ptr %0, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, 512
  br i1 %12, label %30, label %13

13:                                               ; preds = %9
  %14 = icmp eq i32 %7, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.skcipher_alg, ptr %0, i32 0, i32 11, i32 3
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %6, align 32
  br label %18

18:                                               ; preds = %15, %13
  %19 = phi i32 [ %17, %15 ], [ %7, %13 ]
  %20 = icmp eq i32 %11, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 %19, ptr %10, align 4
  br label %22

22:                                               ; preds = %21, %18
  %23 = getelementptr inbounds %struct.skcipher_alg, ptr %0, i32 0, i32 11, i32 10
  store ptr @crypto_skcipher_type, ptr %23, align 8
  %24 = getelementptr inbounds %struct.skcipher_alg, ptr %0, i32 0, i32 11, i32 2
  %25 = load i32, ptr %24, align 16
  %26 = and i32 %25, -16
  %27 = or i32 %26, 5
  store i32 %27, ptr %24, align 16
  %28 = getelementptr inbounds %struct.skcipher_alg, ptr %0, i32 0, i32 11
  %29 = tail call i32 @crypto_register_alg(ptr noundef %28) #10
  br label %30

30:                                               ; preds = %22, %9, %5, %1
  %31 = phi i32 [ %29, %22 ], [ -22, %9 ], [ -22, %5 ], [ -22, %1 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_alg(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_unregister_skcipher(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.skcipher_alg, ptr %0, i32 0, i32 11
  tail call void @crypto_unregister_alg(ptr noundef %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_alg(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_register_skciphers(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %46

4:                                                ; preds = %38, %2
  %5 = phi i32 [ %39, %38 ], [ 0, %2 ]
  %6 = getelementptr %struct.skcipher_alg, ptr %0, i32 %5, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, 512
  br i1 %8, label %35, label %9

9:                                                ; preds = %4
  %10 = getelementptr %struct.skcipher_alg, ptr %0, i32 %5, i32 8
  %11 = load i32, ptr %10, align 32
  %12 = icmp ugt i32 %11, 512
  br i1 %12, label %35, label %13

13:                                               ; preds = %9
  %14 = getelementptr %struct.skcipher_alg, ptr %0, i32 %5, i32 9
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, 512
  br i1 %16, label %35, label %17

17:                                               ; preds = %13
  %18 = icmp eq i32 %11, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = getelementptr %struct.skcipher_alg, ptr %0, i32 %5, i32 11, i32 3
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr %10, align 32
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi i32 [ %21, %19 ], [ %11, %17 ]
  %24 = icmp eq i32 %15, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 %23, ptr %14, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = getelementptr %struct.skcipher_alg, ptr %0, i32 %5, i32 11, i32 10
  store ptr @crypto_skcipher_type, ptr %27, align 8
  %28 = getelementptr %struct.skcipher_alg, ptr %0, i32 %5, i32 11, i32 2
  %29 = load i32, ptr %28, align 16
  %30 = and i32 %29, -16
  %31 = or i32 %30, 5
  store i32 %31, ptr %28, align 16
  %32 = getelementptr %struct.skcipher_alg, ptr %0, i32 %5, i32 11
  %33 = tail call i32 @crypto_register_alg(ptr noundef %32) #10
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %26, %13, %9, %4
  %36 = phi i32 [ %33, %26 ], [ -22, %13 ], [ -22, %9 ], [ -22, %4 ]
  %37 = icmp eq i32 %5, 0
  br i1 %37, label %46, label %41

38:                                               ; preds = %26
  %39 = add nuw nsw i32 %5, 1
  %40 = icmp eq i32 %39, %1
  br i1 %40, label %46, label %4

41:                                               ; preds = %41, %35
  %42 = phi i32 [ %43, %41 ], [ %5, %35 ]
  %43 = add nsw i32 %42, -1
  %44 = getelementptr %struct.skcipher_alg, ptr %0, i32 %43, i32 11
  tail call void @crypto_unregister_alg(ptr noundef %44) #10
  %45 = icmp sgt i32 %42, 1
  br i1 %45, label %41, label %46

46:                                               ; preds = %41, %38, %35, %2
  %47 = phi i32 [ %36, %35 ], [ 0, %2 ], [ %36, %41 ], [ 0, %38 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_unregister_skciphers(ptr noundef %0, i32 noundef %1) #0 {
  %3 = add i32 %1, -1
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %10

5:                                                ; preds = %5, %2
  %6 = phi i32 [ %8, %5 ], [ %3, %2 ]
  %7 = getelementptr %struct.skcipher_alg, ptr %0, i32 %6, i32 11
  tail call void @crypto_unregister_alg(ptr noundef %7) #10
  %8 = add nsw i32 %6, -1
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %5, label %10

10:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skcipher_register_instance(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %1, align 64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !13

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 863, i32 noundef 9, ptr noundef null) #10
  br label %35

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.skcipher_instance, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 28
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 512
  br i1 %9, label %35, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.skcipher_instance, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 32
  %12 = load i32, ptr %11, align 32
  %13 = icmp ugt i32 %12, 512
  br i1 %13, label %35, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.skcipher_instance, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 36
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, 512
  br i1 %17, label %35, label %18

18:                                               ; preds = %14
  %19 = icmp eq i32 %12, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.skcipher_instance, ptr %1, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %11, align 32
  br label %23

23:                                               ; preds = %20, %18
  %24 = phi i32 [ %22, %20 ], [ %12, %18 ]
  %25 = icmp eq i32 %16, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 %24, ptr %15, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = getelementptr inbounds %struct.skcipher_instance, ptr %1, i32 0, i32 2, i32 0, i32 1, i32 0, i32 10
  store ptr @crypto_skcipher_type, ptr %28, align 8
  %29 = getelementptr inbounds %struct.skcipher_instance, ptr %1, i32 0, i32 2, i32 0, i32 1, i32 0, i32 2
  %30 = load i32, ptr %29, align 16
  %31 = and i32 %30, -16
  %32 = or i32 %31, 5
  store i32 %32, ptr %29, align 16
  %33 = getelementptr inbounds %struct.skcipher_instance, ptr %1, i32 0, i32 2, i32 0, i32 1
  %34 = tail call i32 @crypto_register_instance(ptr noundef %0, ptr noundef %33) #10
  br label %35

35:                                               ; preds = %27, %14, %10, %6, %5
  %36 = phi i32 [ -22, %5 ], [ %34, %27 ], [ -22, %14 ], [ -22, %10 ], [ -22, %6 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @skcipher_alloc_instance_simple(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !14
  %4 = call i32 @crypto_check_attr_type(ptr noundef %1, i32 noundef 5, ptr noundef nonnull %3) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = inttoptr i32 %4 to ptr
  br label %53

8:                                                ; preds = %2
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %10 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 604) #12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %53, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.skcipher_instance, ptr %10, i32 1
  %14 = getelementptr inbounds %struct.skcipher_instance, ptr %10, i32 0, i32 2, i32 0, i32 1
  %15 = getelementptr ptr, ptr %1, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = call ptr @crypto_attr_alg_name(ptr noundef %16) #10
  %18 = load i32, ptr %3, align 4
  %19 = or i32 %18, 15
  %20 = call i32 @crypto_grab_spawn(ptr noundef %13, ptr noundef %14, ptr noundef %17, i32 noundef 1, i32 noundef %19) #10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.skcipher_instance, ptr %10, i32 1, i32 1, i32 4
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.crypto_template, ptr %0, i32 0, i32 4
  %26 = call i32 @crypto_inst_setname(ptr noundef %14, ptr noundef %25, ptr noundef %24) #10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %22
  store ptr @skcipher_free_instance_simple, ptr %10, align 64
  %29 = getelementptr inbounds %struct.crypto_alg, ptr %24, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.skcipher_instance, ptr %10, i32 0, i32 2
  %32 = getelementptr inbounds %struct.skcipher_instance, ptr %10, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  store i32 %30, ptr %32, align 4
  %33 = getelementptr inbounds %struct.crypto_alg, ptr %24, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.skcipher_instance, ptr %10, i32 0, i32 2, i32 0, i32 1, i32 0, i32 5
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.crypto_alg, ptr %24, i32 0, i32 6
  %37 = load i32, ptr %36, align 32
  %38 = getelementptr inbounds %struct.skcipher_instance, ptr %10, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  store i32 %37, ptr %38, align 32
  %39 = getelementptr inbounds %struct.crypto_alg, ptr %24, i32 0, i32 11
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.skcipher_instance, ptr %10, i32 0, i32 2, i32 0, i32 0, i32 20
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.crypto_alg, ptr %24, i32 0, i32 11, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.skcipher_instance, ptr %10, i32 0, i32 2, i32 0, i32 0, i32 24
  store i32 %43, ptr %44, align 8
  %45 = load i32, ptr %29, align 4
  %46 = getelementptr inbounds %struct.skcipher_instance, ptr %10, i32 0, i32 2, i32 0, i32 0, i32 28
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.skcipher_instance, ptr %10, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  store i32 4, ptr %47, align 8
  store ptr @skcipher_setkey_simple, ptr %31, align 64
  %48 = getelementptr inbounds %struct.skcipher_instance, ptr %10, i32 0, i32 2, i32 0, i32 0, i32 12
  store ptr @skcipher_init_tfm_simple, ptr %48, align 4
  %49 = getelementptr inbounds %struct.skcipher_instance, ptr %10, i32 0, i32 2, i32 0, i32 0, i32 16
  store ptr @skcipher_exit_tfm_simple, ptr %49, align 16
  br label %53

50:                                               ; preds = %22, %12
  %51 = phi i32 [ %20, %12 ], [ %26, %22 ]
  call void @crypto_drop_spawn(ptr noundef %13) #10
  call void @kfree(ptr noundef nonnull %10) #10
  %52 = inttoptr i32 %51 to ptr
  br label %53

53:                                               ; preds = %50, %28, %8, %6
  %54 = phi ptr [ %7, %6 ], [ %52, %50 ], [ %10, %28 ], [ inttoptr (i32 -12 to ptr), %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret ptr %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_check_attr_type(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_attr_alg_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_inst_setname(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @skcipher_free_instance_simple(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.skcipher_instance, ptr %0, i32 1
  tail call void @crypto_drop_spawn(ptr noundef %2) #10
  tail call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @skcipher_setkey_simple(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 64
  %7 = and i32 %6, -1048321
  store i32 %7, ptr %5, align 64
  %8 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 64
  %10 = and i32 %9, 1048320
  %11 = or i32 %10, %7
  store i32 %11, ptr %5, align 64
  %12 = tail call i32 @crypto_cipher_setkey(ptr noundef %5, ptr noundef %1, i32 noundef %2) #10
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @skcipher_init_tfm_simple(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 448
  %5 = tail call ptr @crypto_spawn_tfm(ptr noundef %4, i32 noundef 1, i32 noundef 15) #10
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = ptrtoint ptr %5 to i32
  br label %11

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  store ptr %5, ptr %10, align 4
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ 0, %9 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @skcipher_exit_tfm_simple(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @skcipher_next_slow(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 12
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 15
  %8 = load i32, ptr %7, align 4
  br i1 %6, label %9, label %17

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %49

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  store ptr %15, ptr %10, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %49

17:                                               ; preds = %13, %2
  %18 = phi i32 [ 63, %13 ], [ 7, %2 ]
  %19 = and i32 %4, 16
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 2848, i32 3520
  %22 = xor i32 %18, -1
  %23 = and i32 %8, %22
  %24 = add i32 %1, 24
  %25 = select i1 %6, i32 %1, i32 %24
  %26 = add i32 %23, %25
  %27 = add i32 %1, -1
  %28 = or i32 %18, %8
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = add i32 %26, %30
  %32 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %31, i32 noundef %21) #11
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %17
  %35 = tail call i32 @skcipher_walk_done(ptr noundef %0, i32 noundef -12)
  br label %69

36:                                               ; preds = %17
  br i1 %6, label %47, label %37

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.skcipher_walk_buffer, ptr %32, i32 0, i32 2
  store i32 %1, ptr %38, align 16
  %39 = getelementptr inbounds %struct.skcipher_walk_buffer, ptr %32, i32 0, i32 1
  %40 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 4
  %41 = load i64, ptr %40, align 4
  store i64 %41, ptr %39, align 8
  %42 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 6, i32 1
  %44 = load ptr, ptr %43, align 4
  store ptr %32, ptr %43, align 4
  store ptr %42, ptr %32, align 64
  %45 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr %44, ptr %45, align 4
  store volatile ptr %32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.skcipher_walk_buffer, ptr %32, i32 0, i32 4
  br label %49

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 8
  store ptr %32, ptr %48, align 4
  br label %49

49:                                               ; preds = %47, %37, %13, %9
  %50 = phi ptr [ %46, %37 ], [ %32, %47 ], [ %15, %13 ], [ %11, %9 ]
  %51 = ptrtoint ptr %50 to i32
  %52 = add i32 %8, %51
  %53 = xor i32 %8, -1
  %54 = and i32 %52, %53
  %55 = inttoptr i32 %54 to ptr
  %56 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 1, i32 0, i32 1
  %57 = getelementptr i8, ptr %55, i32 %1
  %58 = getelementptr i8, ptr %57, i32 -1
  %59 = ptrtoint ptr %58 to i32
  %60 = and i32 %59, -4096
  %61 = inttoptr i32 %60 to ptr
  %62 = icmp ult ptr %61, %55
  %63 = select i1 %62, ptr %55, ptr %61
  store ptr %63, ptr %56, align 4
  %64 = getelementptr inbounds %struct.anon.110, ptr %0, i32 0, i32 1
  store ptr %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 2
  tail call void @scatterwalk_copychunks(ptr noundef %63, ptr noundef %65, i32 noundef %1, i32 noundef 0) #10
  %66 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 3
  store i32 %1, ptr %66, align 4
  %67 = load i32, ptr %3, align 4
  %68 = or i32 %67, 2
  store i32 %68, ptr %3, align 4
  br label %69

69:                                               ; preds = %49, %34
  %70 = phi i32 [ 0, %49 ], [ %35, %34 ]
  ret i32 %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @skcipher_next_copy(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, -4
  %8 = inttoptr i32 %7 to ptr
  %9 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 2, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %10, 12
  %12 = getelementptr %struct.page, ptr %8, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 30
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = icmp ne i32 %14, 3
  %18 = load i32, ptr @movable_zone, align 4
  %19 = icmp ne i32 %18, 2
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %16, %1
  %22 = load i32, ptr @pgprot_kernel, align 4
  %23 = or i32 %22, 512
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %24 = tail call ptr @llvm.thread.pointer() #10
  %25 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 149
  %26 = load i32, ptr %25, align 8
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %28 = tail call ptr @__kmap_local_page_prot(ptr noundef %12, i32 noundef %23) #10
  br label %31

29:                                               ; preds = %16
  %30 = tail call ptr @page_address(ptr noundef %12) #10
  br label %31

31:                                               ; preds = %29, %21
  %32 = phi ptr [ %28, %21 ], [ %30, %29 ]
  %33 = load i32, ptr %9, align 4
  %34 = and i32 %33, 4095
  %35 = getelementptr i8, ptr %32, i32 %34
  %36 = getelementptr inbounds %struct.anon.110, ptr %0, i32 0, i32 1
  store ptr %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %3, ptr align 1 %35, i32 %38, i1 false)
  %39 = load ptr, ptr %36, align 4
  %40 = load ptr, ptr %4, align 4
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, -4
  %43 = inttoptr i32 %42 to ptr
  %44 = load i32, ptr %9, align 4
  %45 = lshr i32 %44, 12
  %46 = getelementptr %struct.page, ptr %43, i32 %45
  %47 = load i32, ptr %46, align 4
  %48 = lshr i32 %47, 30
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %55, label %50

50:                                               ; preds = %31
  %51 = icmp ne i32 %48, 3
  %52 = load i32, ptr @movable_zone, align 4
  %53 = icmp ne i32 %52, 2
  %54 = select i1 %51, i1 true, i1 %53
  br i1 %54, label %60, label %55

55:                                               ; preds = %50, %31
  tail call void @kunmap_local_indexed(ptr noundef %39) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  %56 = tail call ptr @llvm.thread.pointer() #10
  %57 = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 149
  %58 = load i32, ptr %57, align 8
  %59 = add i32 %58, -1
  store i32 %59, ptr %57, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  br label %60

60:                                               ; preds = %55, %50
  store ptr %3, ptr %36, align 4
  %61 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 1, i32 0, i32 1
  store ptr %3, ptr %61, align 4
  %62 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 12
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %96, label %66

66:                                               ; preds = %60
  %67 = and i32 %63, 16
  %68 = icmp eq i32 %67, 0
  %69 = select i1 %68, i32 2592, i32 3264
  %70 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %71 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %70, i32 noundef %69, i32 noundef 24) #12
  %72 = icmp eq ptr %71, null
  br i1 %72, label %96, label %73

73:                                               ; preds = %66
  %74 = load ptr, ptr %2, align 4
  %75 = getelementptr inbounds %struct.skcipher_walk_buffer, ptr %71, i32 0, i32 3
  store ptr %74, ptr %75, align 4
  %76 = load i32, ptr %37, align 4
  %77 = getelementptr inbounds %struct.skcipher_walk_buffer, ptr %71, i32 0, i32 2
  store i32 %76, ptr %77, align 8
  %78 = getelementptr inbounds %struct.skcipher_walk_buffer, ptr %71, i32 0, i32 1
  %79 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 4
  %80 = load i64, ptr %79, align 4
  store i64 %80, ptr %78, align 8
  %81 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 6, i32 1
  %83 = load ptr, ptr %82, align 4
  store ptr %71, ptr %82, align 4
  store ptr %81, ptr %71, align 8
  %84 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  store ptr %83, ptr %84, align 4
  store volatile ptr %71, ptr %83, align 4
  %85 = load ptr, ptr %2, align 4
  %86 = ptrtoint ptr %85 to i32
  %87 = and i32 %86, 4095
  %88 = load i32, ptr %37, align 4
  %89 = add i32 %87, %88
  %90 = getelementptr inbounds %struct.skcipher_walk, ptr %0, i32 0, i32 14
  %91 = load i32, ptr %90, align 4
  %92 = add i32 %89, %91
  %93 = icmp ugt i32 %92, 4096
  %94 = getelementptr i8, ptr %85, i32 %88
  %95 = select i1 %93, ptr null, ptr %94
  store ptr %95, ptr %2, align 4
  br label %96

96:                                               ; preds = %73, %66, %60
  %97 = phi i32 [ 0, %73 ], [ 0, %60 ], [ -12, %66 ]
  ret i32 %97
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_alg_extsize(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_skcipher_init_tfm(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = getelementptr i8, ptr %0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -40
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, ptr %0, align 64
  %10 = or i32 %9, 1
  store i32 %10, ptr %0, align 64
  br label %11

11:                                               ; preds = %8, %1
  %12 = getelementptr i8, ptr %4, i32 -48
  %13 = load ptr, ptr %12, align 16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %0, i32 8
  store ptr @crypto_skcipher_exit_tfm, ptr %16, align 8
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr i8, ptr %4, i32 -52
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call i32 %19(ptr noundef %2) #10
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i32 [ %22, %21 ], [ 0, %17 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_skcipher_show(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.2) #10
  %3 = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 16
  %5 = and i32 %4, 128
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, ptr @.str.5, ptr @.str.4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %7) #10
  %8 = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %9) #10
  %10 = getelementptr i8, ptr %1, i32 -44
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %11) #10
  %12 = getelementptr i8, ptr %1, i32 -40
  %13 = load i32, ptr %12, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %13) #10
  %14 = getelementptr i8, ptr %1, i32 -36
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %15) #10
  %16 = getelementptr i8, ptr %1, i32 -32
  %17 = load i32, ptr %16, align 32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %17) #10
  %18 = getelementptr i8, ptr %1, i32 -28
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %19) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_skcipher_report(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.crypto_report_blkcipher, align 4
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %3, i8 0, i64 144, i1 false)
  %4 = call i32 @strscpy(ptr noundef nonnull %3, ptr noundef nonnull @.str.12, i32 noundef 64) #10
  %5 = getelementptr inbounds %struct.crypto_report_blkcipher, ptr %3, i32 0, i32 1
  %6 = call i32 @strscpy(ptr noundef %5, ptr noundef nonnull @.str.13, i32 noundef 64) #10
  %7 = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.crypto_report_blkcipher, ptr %3, i32 0, i32 2
  store i32 %8, ptr %9, align 4
  %10 = getelementptr i8, ptr %1, i32 -44
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.crypto_report_blkcipher, ptr %3, i32 0, i32 3
  store i32 %11, ptr %12, align 4
  %13 = getelementptr i8, ptr %1, i32 -40
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.crypto_report_blkcipher, ptr %3, i32 0, i32 4
  store i32 %14, ptr %15, align 4
  %16 = getelementptr i8, ptr %1, i32 -36
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.crypto_report_blkcipher, ptr %3, i32 0, i32 5
  store i32 %17, ptr %18, align 4
  %19 = call i32 @nla_put(ptr noundef %0, i32 noundef 4, i32 noundef 144, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #10
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_skcipher_free_instance(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -128
  %3 = load ptr, ptr %2, align 64
  tail call void %3(ptr noundef %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_skcipher_exit_tfm(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = getelementptr i8, ptr %0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -48
  %6 = load ptr, ptr %5, align 16
  tail call void %6(ptr noundef %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_tfm_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_drop_spawn(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_cipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_spawn_tfm(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(2) }

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
!9 = !{i64 2151293381}
!10 = !{i64 2152542787}
!11 = !{i64 2152540162}
!12 = !{i64 2151293174}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{!"auto-init"}
