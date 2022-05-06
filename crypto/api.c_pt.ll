; ModuleID = '/llk/IR/crypto/api.c_pt.bc'
source_filename = "../crypto/api.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_alg_list:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_alg_list\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_alg_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_alg_sem:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_alg_sem\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_alg_sem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_chain:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_chain\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_chain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_boot_test_finished:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_boot_test_finished\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_boot_test_finished:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_mod_get:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_mod_get\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_mod_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_mod_put:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_mod_put\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_mod_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_larval_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_larval_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_larval_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_larval_kill:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_larval_kill\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_larval_kill:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_wait_for_test:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_wait_for_test\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_wait_for_test:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_probing_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_probing_notify\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_probing_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_alg_mod_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_alg_mod_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_alg_mod_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_shoot_alg:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_shoot_alg\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_shoot_alg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___crypto_alloc_tfm:\09\09\09\09\09"
module asm "\09.asciz \09\22__crypto_alloc_tfm\22\09\09\09\09\09"
module asm "__kstrtabns___crypto_alloc_tfm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_alloc_base:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_alloc_base\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_alloc_base:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_create_tfm_node:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_create_tfm_node\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_create_tfm_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_find_alg:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_find_alg\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_find_alg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_alloc_tfm_node:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_alloc_tfm_node\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_alloc_tfm_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_destroy_tfm:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_destroy_tfm\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_destroy_tfm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_has_alg:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_has_alg\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_has_alg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_req_done:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_req_done\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_req_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.lock_class_key = type {}
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.0, ptr, ptr, ptr, ptr, [48 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.0 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.crypto_larval = type { %struct.crypto_alg, ptr, %struct.completion, i32, i8, [39 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.crypto_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.37, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.8 }
%struct.llist_node = type { ptr }
%union.anon.8 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.9 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.tlbflush_unmap_batch = type {}
%union.anon.37 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_wait = type { %struct.completion, i32 }

@crypto_alg_list = dso_local global %struct.list_head { ptr @crypto_alg_list, ptr @crypto_alg_list }, align 4
@__kstrtab_crypto_alg_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_alg_list = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_alg_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_alg_list to i32), ptr @__kstrtab_crypto_alg_list, ptr @__kstrtabns_crypto_alg_list }, section "___ksymtab_gpl+crypto_alg_list", align 4
@crypto_alg_sem = dso_local global %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @crypto_alg_sem, i64 16), ptr getelementptr (i8, ptr @crypto_alg_sem, i64 16) } }, align 4
@__kstrtab_crypto_alg_sem = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_alg_sem = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_alg_sem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_alg_sem to i32), ptr @__kstrtab_crypto_alg_sem, ptr @__kstrtabns_crypto_alg_sem }, section "___ksymtab_gpl+crypto_alg_sem", align 4
@crypto_chain = dso_local global %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @crypto_chain, i64 16), ptr getelementptr (i8, ptr @crypto_chain, i64 16) } }, ptr null }, align 4
@__kstrtab_crypto_chain = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_chain = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_chain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_chain to i32), ptr @__kstrtab_crypto_chain, ptr @__kstrtabns_crypto_chain }, section "___ksymtab_gpl+crypto_chain", align 4
@crypto_boot_test_finished = dso_local global %struct.static_key_false zeroinitializer, align 4
@__kstrtab_crypto_boot_test_finished = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_boot_test_finished = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_boot_test_finished = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_boot_test_finished to i32), ptr @__kstrtab_crypto_boot_test_finished, ptr @__kstrtabns_crypto_boot_test_finished }, section "___ksymtab_gpl+crypto_boot_test_finished", align 4
@__kstrtab_crypto_mod_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_mod_get = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_mod_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_mod_get to i32), ptr @__kstrtab_crypto_mod_get, ptr @__kstrtabns_crypto_mod_get }, section "___ksymtab_gpl+crypto_mod_get", align 4
@__kstrtab_crypto_mod_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_mod_put = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_mod_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_mod_put to i32), ptr @__kstrtab_crypto_mod_put, ptr @__kstrtabns_crypto_mod_put }, section "___ksymtab_gpl+crypto_mod_put", align 4
@__kstrtab_crypto_larval_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_larval_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_larval_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_larval_alloc to i32), ptr @__kstrtab_crypto_larval_alloc, ptr @__kstrtabns_crypto_larval_alloc }, section "___ksymtab_gpl+crypto_larval_alloc", align 4
@__kstrtab_crypto_larval_kill = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_larval_kill = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_larval_kill = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_larval_kill to i32), ptr @__kstrtab_crypto_larval_kill, ptr @__kstrtabns_crypto_larval_kill }, section "___ksymtab_gpl+crypto_larval_kill", align 4
@crypto_wait_for_test.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [13 x i8] c"crypto/api.c\00", align 1
@__kstrtab_crypto_wait_for_test = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_wait_for_test = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_wait_for_test = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_wait_for_test to i32), ptr @__kstrtab_crypto_wait_for_test, ptr @__kstrtabns_crypto_wait_for_test }, section "___ksymtab_gpl+crypto_wait_for_test", align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"cryptomgr\00", align 1
@__kstrtab_crypto_probing_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_probing_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_probing_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_probing_notify to i32), ptr @__kstrtab_crypto_probing_notify, ptr @__kstrtabns_crypto_probing_notify }, section "___ksymtab_gpl+crypto_probing_notify", align 4
@__kstrtab_crypto_alg_mod_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_alg_mod_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_alg_mod_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_alg_mod_lookup to i32), ptr @__kstrtab_crypto_alg_mod_lookup, ptr @__kstrtabns_crypto_alg_mod_lookup }, section "___ksymtab_gpl+crypto_alg_mod_lookup", align 4
@__kstrtab_crypto_shoot_alg = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_shoot_alg = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_shoot_alg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_shoot_alg to i32), ptr @__kstrtab_crypto_shoot_alg, ptr @__kstrtabns_crypto_shoot_alg }, section "___ksymtab_gpl+crypto_shoot_alg", align 4
@__kstrtab___crypto_alloc_tfm = external dso_local constant [0 x i8], align 1
@__kstrtabns___crypto_alloc_tfm = external dso_local constant [0 x i8], align 1
@__ksymtab___crypto_alloc_tfm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__crypto_alloc_tfm to i32), ptr @__kstrtab___crypto_alloc_tfm, ptr @__kstrtabns___crypto_alloc_tfm }, section "___ksymtab_gpl+__crypto_alloc_tfm", align 4
@__kstrtab_crypto_alloc_base = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_alloc_base = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_alloc_base = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_alloc_base to i32), ptr @__kstrtab_crypto_alloc_base, ptr @__kstrtabns_crypto_alloc_base }, section "___ksymtab_gpl+crypto_alloc_base", align 4
@__kstrtab_crypto_create_tfm_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_create_tfm_node = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_create_tfm_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_create_tfm_node to i32), ptr @__kstrtab_crypto_create_tfm_node, ptr @__kstrtabns_crypto_create_tfm_node }, section "___ksymtab_gpl+crypto_create_tfm_node", align 4
@__kstrtab_crypto_find_alg = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_find_alg = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_find_alg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_find_alg to i32), ptr @__kstrtab_crypto_find_alg, ptr @__kstrtabns_crypto_find_alg }, section "___ksymtab_gpl+crypto_find_alg", align 4
@__kstrtab_crypto_alloc_tfm_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_alloc_tfm_node = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_alloc_tfm_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_alloc_tfm_node to i32), ptr @__kstrtab_crypto_alloc_tfm_node, ptr @__kstrtabns_crypto_alloc_tfm_node }, section "___ksymtab_gpl+crypto_alloc_tfm_node", align 4
@__kstrtab_crypto_destroy_tfm = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_destroy_tfm = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_destroy_tfm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_destroy_tfm to i32), ptr @__kstrtab_crypto_destroy_tfm, ptr @__kstrtabns_crypto_destroy_tfm }, section "___ksymtab_gpl+crypto_destroy_tfm", align 4
@__kstrtab_crypto_has_alg = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_has_alg = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_has_alg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_has_alg to i32), ptr @__kstrtab_crypto_has_alg, ptr @__kstrtabns_crypto_has_alg }, section "___ksymtab_gpl+crypto_has_alg", align 4
@__kstrtab_crypto_req_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_req_done = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_req_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_req_done to i32), ptr @__kstrtab_crypto_req_done, ptr @__kstrtabns_crypto_req_done }, section "___ksymtab_gpl+crypto_req_done", align 4
@__UNIQUE_ID_description174 = internal constant [42 x i8] c"crypto.description=Cryptographic core API\00", section ".modinfo", align 1
@__UNIQUE_ID_file175 = internal constant [26 x i8] c"crypto.file=crypto/crypto\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [19 x i8] c"crypto.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"crypto-%s\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"crypto-%s-all\00", align 1
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_description174, ptr @__UNIQUE_ID_file175, ptr @__UNIQUE_ID_license176, ptr @__ksymtab___crypto_alloc_tfm, ptr @__ksymtab_crypto_alg_list, ptr @__ksymtab_crypto_alg_mod_lookup, ptr @__ksymtab_crypto_alg_sem, ptr @__ksymtab_crypto_alloc_base, ptr @__ksymtab_crypto_alloc_tfm_node, ptr @__ksymtab_crypto_boot_test_finished, ptr @__ksymtab_crypto_chain, ptr @__ksymtab_crypto_create_tfm_node, ptr @__ksymtab_crypto_destroy_tfm, ptr @__ksymtab_crypto_find_alg, ptr @__ksymtab_crypto_has_alg, ptr @__ksymtab_crypto_larval_alloc, ptr @__ksymtab_crypto_larval_kill, ptr @__ksymtab_crypto_mod_get, ptr @__ksymtab_crypto_mod_put, ptr @__ksymtab_crypto_probing_notify, ptr @__ksymtab_crypto_req_done, ptr @__ksymtab_crypto_shoot_alg, ptr @__ksymtab_crypto_wait_for_test], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @crypto_mod_get(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  %4 = tail call zeroext i1 @try_module_get(ptr noundef %3) #7
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #7, !srcloc !8
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #7, !srcloc !9
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10, !prof !10

10:                                               ; preds = %5
  %11 = add i32 %8, 1
  %12 = or i32 %11, %8
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %16, label %14, !prof !11

14:                                               ; preds = %10, %5
  %15 = phi i32 [ 2, %5 ], [ 1, %10 ]
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef %15) #7
  br label %16

16:                                               ; preds = %14, %10, %1
  %17 = phi ptr [ null, %1 ], [ %0, %10 ], [ %0, %14 ]
  ret ptr %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_mod_put(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #7, !srcloc !8
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #7, !srcloc !13
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %16, label %10, !prof !11

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #7
  br label %16

11:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %12 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 14
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void %13(ptr noundef %0) #7
  br label %16

16:                                               ; preds = %15, %11, %10, %8
  tail call void @module_put(ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @crypto_larval_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 448) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.crypto_larval, ptr %5, i32 0, i32 3
  store i32 %2, ptr %8, align 4
  %9 = or i32 %1, 16
  %10 = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 2
  store i32 %9, ptr %10, align 16
  %11 = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 6
  store i32 -1, ptr %11, align 32
  %12 = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 14
  store ptr @crypto_larval_destroy, ptr %12, align 8
  %13 = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 8
  %14 = tail call i32 @strlcpy(ptr noundef %13, ptr noundef %0, i32 noundef 128) #7
  %15 = getelementptr inbounds %struct.crypto_larval, ptr %5, i32 0, i32 2
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.crypto_larval, ptr %5, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %16, ptr noundef nonnull @.str.2, ptr noundef nonnull @init_completion.__key) #7
  br label %17

17:                                               ; preds = %7, %3
  %18 = phi ptr [ %5, %7 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_larval_destroy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 16
  %4 = and i32 %3, 16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7, !prof !10

6:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/api.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 98, 0\0A.popsection", ""() #7, !srcloc !15
  unreachable

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.crypto_larval, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 64
  %10 = icmp eq ptr %9, null
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  %12 = or i1 %10, %11
  br i1 %12, label %29, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.crypto_alg, ptr %9, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.crypto_alg, ptr %9, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #7, !srcloc !8
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #7, !srcloc !13
  %18 = extractvalue { i32, i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = icmp sgt i32 %18, 0
  br i1 %21, label %28, label %22, !prof !11

22:                                               ; preds = %20
  tail call void @refcount_warn_saturate(ptr noundef %16, i32 noundef 3) #7
  br label %28

23:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %24 = getelementptr inbounds %struct.crypto_alg, ptr %9, i32 0, i32 14
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void %25(ptr noundef nonnull %9) #7
  br label %28

28:                                               ; preds = %27, %23, %22, %20
  tail call void @module_put(ptr noundef %15) #7
  br label %29

29:                                               ; preds = %28, %7
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_larval_kill(ptr noundef %0) #0 {
  tail call void @down_write(ptr noundef nonnull @crypto_alg_sem) #7
  %2 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  store volatile ptr %4, ptr %3, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %2, align 4
  tail call void @up_write(ptr noundef nonnull @crypto_alg_sem) #7
  %6 = getelementptr inbounds %struct.crypto_larval, ptr %0, i32 0, i32 2
  tail call void @complete_all(ptr noundef %6) #7
  %7 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #7, !srcloc !8
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #7, !srcloc !13
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = icmp sgt i32 %9, 0
  br i1 %12, label %19, label %13, !prof !11

13:                                               ; preds = %11
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef 3) #7
  br label %19

14:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %15 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 14
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void %16(ptr noundef %0) #7
  br label %19

19:                                               ; preds = %18, %14, %13, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_wait_for_test(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_larval, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 64
  %4 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @crypto_chain, i32 noundef 1, ptr noundef %3) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.1) #7
  %8 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @crypto_chain, i32 noundef 1, ptr noundef %3) #7
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i32 [ %8, %6 ], [ %4, %1 ]
  %11 = icmp ne i32 %10, 32769
  %12 = load i1, ptr @crypto_wait_for_test.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !10

15:                                               ; preds = %9
  store i1 true, ptr @crypto_wait_for_test.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 170, i32 noundef 9, ptr noundef null) #7
  br label %16

16:                                               ; preds = %15, %9
  br i1 %11, label %24, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.crypto_larval, ptr %0, i32 0, i32 2
  %19 = tail call i32 @wait_for_completion_killable(ptr noundef %18) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21, !prof !11

21:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 174, i32 noundef 9, ptr noundef null) #7
  br label %24

22:                                               ; preds = %17
  %23 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @crypto_chain, i32 noundef 2, ptr noundef %0) #7
  br label %24

24:                                               ; preds = %22, %21, %16
  tail call void @crypto_larval_kill(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_probing_notify(i32 noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @crypto_chain, i32 noundef %0, ptr noundef %1) #7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.1) #7
  %7 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @crypto_chain, i32 noundef %0, ptr noundef %1) #7
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i32 [ %7, %5 ], [ %3, %2 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_killable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @crypto_alg_mod_lookup(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %109, label %5

5:                                                ; preds = %3
  %6 = or i32 %2, %1
  %7 = and i32 %6, 8192
  %8 = xor i32 %7, 8192
  %9 = and i32 %1, -49
  %10 = and i32 %2, -49
  %11 = or i32 %8, %10
  %12 = tail call fastcc ptr @crypto_alg_lookup(ptr noundef nonnull %0, i32 noundef %9, i32 noundef %11) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %5
  %15 = and i32 %2, 32768
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %14
  %18 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.3, ptr noundef nonnull %0) #7
  %19 = and i32 %1, 256
  %20 = xor i32 %19, 256
  %21 = and i32 %20, %2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.4, ptr noundef nonnull %0) #7
  br label %25

25:                                               ; preds = %23, %17
  %26 = tail call fastcc ptr @crypto_alg_lookup(ptr noundef nonnull %0, i32 noundef %9, i32 noundef %11) #7
  br label %27

27:                                               ; preds = %25, %5
  %28 = phi ptr [ %12, %5 ], [ %26, %25 ]
  %29 = icmp eq ptr %28, null
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  %31 = or i1 %29, %30
  br i1 %31, label %39, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.crypto_alg, ptr %28, i32 0, i32 2
  %34 = load i32, ptr %33, align 16
  %35 = and i32 %34, 16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = tail call fastcc ptr @crypto_larval_wait(ptr noundef nonnull %28) #7
  br label %72

39:                                               ; preds = %32, %27
  br i1 %29, label %40, label %72

40:                                               ; preds = %39, %14
  %41 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %42 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3520, i32 noundef 448) #8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %109, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.crypto_larval, ptr %42, i32 0, i32 3
  store i32 %11, ptr %45, align 4
  %46 = or i32 %9, 16
  %47 = getelementptr inbounds %struct.crypto_alg, ptr %42, i32 0, i32 2
  store i32 %46, ptr %47, align 16
  %48 = getelementptr inbounds %struct.crypto_alg, ptr %42, i32 0, i32 6
  store i32 -1, ptr %48, align 32
  %49 = getelementptr inbounds %struct.crypto_alg, ptr %42, i32 0, i32 14
  store ptr @crypto_larval_destroy, ptr %49, align 8
  %50 = getelementptr inbounds %struct.crypto_alg, ptr %42, i32 0, i32 8
  %51 = tail call i32 @strlcpy(ptr noundef %50, ptr noundef nonnull %0, i32 noundef 128) #7
  %52 = getelementptr inbounds %struct.crypto_larval, ptr %42, i32 0, i32 2
  store i32 0, ptr %52, align 4
  %53 = getelementptr inbounds %struct.crypto_larval, ptr %42, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %53, ptr noundef nonnull @.str.2, ptr noundef nonnull @init_completion.__key) #7
  %54 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %72, label %55

55:                                               ; preds = %44
  %56 = getelementptr inbounds %struct.crypto_alg, ptr %42, i32 0, i32 7
  store volatile i32 2, ptr %56, align 4
  tail call void @down_write(ptr noundef nonnull @crypto_alg_sem) #7
  %57 = tail call fastcc ptr @__crypto_alg_lookup(ptr noundef nonnull %0, i32 noundef %9, i32 noundef %11) #7
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load ptr, ptr @crypto_alg_list, align 4
  %61 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  store ptr %42, ptr %61, align 4
  store ptr %60, ptr %42, align 8
  %62 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  store ptr @crypto_alg_list, ptr %62, align 4
  store volatile ptr %42, ptr @crypto_alg_list, align 4
  tail call void @up_write(ptr noundef nonnull @crypto_alg_sem) #7
  br label %72

63:                                               ; preds = %55
  tail call void @up_write(ptr noundef nonnull @crypto_alg_sem) #7
  %64 = icmp eq ptr %57, %42
  br i1 %64, label %72, label %65

65:                                               ; preds = %63
  tail call void @kfree(ptr noundef nonnull %42) #7
  %66 = getelementptr inbounds %struct.crypto_alg, ptr %57, i32 0, i32 2
  %67 = load i32, ptr %66, align 16
  %68 = and i32 %67, 16
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = tail call fastcc ptr @crypto_larval_wait(ptr noundef nonnull %57) #7
  br label %72

72:                                               ; preds = %70, %65, %63, %59, %44, %39, %37
  %73 = phi ptr [ %28, %39 ], [ %38, %37 ], [ %71, %70 ], [ %57, %65 ], [ %42, %63 ], [ %42, %44 ], [ %42, %59 ]
  %74 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %74, label %109, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.crypto_alg, ptr %73, i32 0, i32 2
  %77 = load i32, ptr %76, align 16
  %78 = and i32 %77, 16
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %109, label %80

80:                                               ; preds = %75
  %81 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @crypto_chain, i32 noundef 0, ptr noundef %73) #7
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.1) #7
  %85 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @crypto_chain, i32 noundef 0, ptr noundef %73) #7
  br label %86

86:                                               ; preds = %83, %80
  %87 = phi i32 [ %85, %83 ], [ %81, %80 ]
  %88 = icmp eq i32 %87, 32769
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = tail call fastcc ptr @crypto_larval_wait(ptr noundef %73)
  br label %107

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.crypto_alg, ptr %73, i32 0, i32 15
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.crypto_alg, ptr %73, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %94) #7, !srcloc !8
  %95 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %94, ptr %94, i32 1, ptr elementtype(i32) %94) #7, !srcloc !13
  %96 = extractvalue { i32, i32, i32 } %95, 0
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %101, label %98

98:                                               ; preds = %91
  %99 = icmp sgt i32 %96, 0
  br i1 %99, label %106, label %100, !prof !11

100:                                              ; preds = %98
  tail call void @refcount_warn_saturate(ptr noundef %94, i32 noundef 3) #7
  br label %106

101:                                              ; preds = %91
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %102 = getelementptr inbounds %struct.crypto_alg, ptr %73, i32 0, i32 14
  %103 = load ptr, ptr %102, align 8
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  tail call void %103(ptr noundef %73) #7
  br label %106

106:                                              ; preds = %105, %101, %100, %98
  tail call void @module_put(ptr noundef %93) #7
  br label %107

107:                                              ; preds = %106, %89
  %108 = phi ptr [ %90, %89 ], [ inttoptr (i32 -2 to ptr), %106 ]
  tail call void @crypto_larval_kill(ptr noundef %73)
  br label %109

109:                                              ; preds = %107, %75, %72, %40, %3
  %110 = phi ptr [ %108, %107 ], [ %73, %75 ], [ %73, %72 ], [ inttoptr (i32 -12 to ptr), %40 ], [ inttoptr (i32 -2 to ptr), %3 ]
  ret ptr %110
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @crypto_larval_wait(ptr noundef %0) unnamed_addr #0 {
  %2 = load volatile i32, ptr @crypto_boot_test_finished, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %5, label %4, !prof !11

4:                                                ; preds = %1
  tail call fastcc void @crypto_start_test(ptr noundef %0)
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.crypto_larval, ptr %0, i32 0, i32 2
  %7 = tail call i32 @wait_for_completion_killable_timeout(ptr noundef %6, i32 noundef 6000) #7
  %8 = getelementptr inbounds %struct.crypto_larval, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 64
  %10 = icmp slt i32 %7, 0
  br i1 %10, label %41, label %11

11:                                               ; preds = %5
  %12 = icmp eq i32 %7, 0
  br i1 %12, label %41, label %13

13:                                               ; preds = %11
  %14 = icmp eq ptr %9, null
  br i1 %14, label %41, label %15

15:                                               ; preds = %13
  %16 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %41, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 9
  %19 = load i8, ptr %18, align 8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.crypto_alg, ptr %9, i32 0, i32 2
  %23 = load i32, ptr %22, align 16
  %24 = and i32 %23, 1024
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %21, %17
  %27 = getelementptr inbounds %struct.crypto_alg, ptr %9, i32 0, i32 15
  %28 = load ptr, ptr %27, align 4
  %29 = tail call zeroext i1 @try_module_get(ptr noundef %28) #7
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.crypto_alg, ptr %9, i32 0, i32 7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #7, !srcloc !8
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 1, ptr elementtype(i32) %31) #7, !srcloc !9
  %33 = extractvalue { i32, i32, i32 } %32, 0
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35, !prof !10

35:                                               ; preds = %30
  %36 = add i32 %33, 1
  %37 = or i32 %36, %33
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %41, label %39, !prof !11

39:                                               ; preds = %35, %30
  %40 = phi i32 [ 2, %30 ], [ 1, %35 ]
  tail call void @refcount_warn_saturate(ptr noundef %31, i32 noundef %40) #7
  br label %41

41:                                               ; preds = %39, %35, %26, %21, %15, %13, %11, %5
  %42 = phi ptr [ %9, %15 ], [ inttoptr (i32 -4 to ptr), %5 ], [ inttoptr (i32 -110 to ptr), %11 ], [ inttoptr (i32 -2 to ptr), %13 ], [ inttoptr (i32 -11 to ptr), %21 ], [ inttoptr (i32 -11 to ptr), %26 ], [ %9, %35 ], [ %9, %39 ]
  %43 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 15
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #7, !srcloc !8
  %46 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 1, ptr elementtype(i32) %45) #7, !srcloc !13
  %47 = extractvalue { i32, i32, i32 } %46, 0
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %52, label %49

49:                                               ; preds = %41
  %50 = icmp sgt i32 %47, 0
  br i1 %50, label %57, label %51, !prof !11

51:                                               ; preds = %49
  tail call void @refcount_warn_saturate(ptr noundef %45, i32 noundef 3) #7
  br label %57

52:                                               ; preds = %41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %53 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 14
  %54 = load ptr, ptr %53, align 8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  tail call void %54(ptr noundef %0) #7
  br label %57

57:                                               ; preds = %56, %52, %51, %49
  tail call void @module_put(ptr noundef %44) #7
  ret ptr %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_shoot_alg(ptr nocapture noundef %0) #0 {
  tail call void @down_write(ptr noundef nonnull @crypto_alg_sem) #7
  %2 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 16
  %4 = or i32 %3, 64
  store i32 %4, ptr %2, align 16
  tail call void @up_write(ptr noundef nonnull @crypto_alg_sem) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__crypto_alloc_tfm(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq ptr %5, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %5, align 4
  %11 = tail call i32 %10(ptr noundef %0, i32 noundef %1, i32 noundef %2) #7
  br label %23

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 16
  %15 = and i32 %14, 15
  switch i32 %15, label %16 [
    i32 1, label %17
    i32 2, label %20
  ]

16:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/api.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 362, 0\0A.popsection", ""() #7, !srcloc !16
  unreachable

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 4
  %19 = load i32, ptr %18, align 8
  br label %23

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 4
  %22 = load i32, ptr %21, align 8
  br label %23

23:                                               ; preds = %20, %17, %9
  %24 = phi i32 [ %11, %9 ], [ %22, %20 ], [ %19, %17 ]
  %25 = and i32 %7, -64
  %26 = add i32 %24, %25
  %27 = add i32 %26, 64
  %28 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %27, i32 noundef 3520) #9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %67, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.crypto_tfm, ptr %28, i32 0, i32 3
  store ptr %0, ptr %31, align 4
  %32 = load ptr, ptr %4, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.crypto_type, ptr %32, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %36(ptr noundef nonnull %28, i32 noundef %1, i32 noundef %2) #7
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %34, %30
  %40 = getelementptr inbounds %struct.crypto_tfm, ptr %28, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %70

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 12
  %45 = load ptr, ptr %44, align 64
  %46 = icmp eq ptr %45, null
  br i1 %46, label %70, label %47

47:                                               ; preds = %43
  %48 = tail call i32 %45(ptr noundef nonnull %28) #7
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %70, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %31, align 4
  %52 = getelementptr inbounds %struct.crypto_alg, ptr %51, i32 0, i32 10
  %53 = load ptr, ptr %52, align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = load ptr, ptr %40, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  tail call void %56(ptr noundef nonnull %28) #7
  br label %59

59:                                               ; preds = %58, %55, %50, %34
  %60 = phi i32 [ %37, %34 ], [ %48, %50 ], [ %48, %55 ], [ %48, %58 ]
  %61 = icmp eq i32 %60, -11
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  tail call void @down_write(ptr noundef nonnull @crypto_alg_sem) #7
  %63 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 2
  %64 = load i32, ptr %63, align 16
  %65 = or i32 %64, 64
  store i32 %65, ptr %63, align 16
  tail call void @up_write(ptr noundef nonnull @crypto_alg_sem) #7
  br label %66

66:                                               ; preds = %62, %59
  tail call void @kfree(ptr noundef nonnull %28) #7
  br label %67

67:                                               ; preds = %66, %23
  %68 = phi i32 [ -12, %23 ], [ %60, %66 ]
  %69 = inttoptr i32 %68 to ptr
  br label %70

70:                                               ; preds = %67, %47, %43, %39
  %71 = phi ptr [ %69, %67 ], [ %28, %39 ], [ %28, %47 ], [ %28, %43 ]
  ret ptr %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @crypto_alloc_base(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %34, %3
  %5 = tail call ptr @crypto_alg_mod_lookup(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %26, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @__crypto_alloc_tfm(ptr noundef %5, i32 noundef %1, i32 noundef %2)
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %40

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 15
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #7, !srcloc !8
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #7, !srcloc !13
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = icmp sgt i32 %15, 0
  br i1 %18, label %25, label %19, !prof !11

19:                                               ; preds = %17
  tail call void @refcount_warn_saturate(ptr noundef %13, i32 noundef 3) #7
  br label %25

20:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %21 = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 14
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void %22(ptr noundef %5) #7
  br label %25

25:                                               ; preds = %24, %20, %19, %17
  tail call void @module_put(ptr noundef %12) #7
  br label %26

26:                                               ; preds = %25, %4
  %27 = phi ptr [ %8, %25 ], [ %5, %4 ]
  %28 = icmp eq ptr %27, inttoptr (i32 -11 to ptr)
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = tail call ptr @llvm.thread.pointer() #7
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %35, %29
  br label %4

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 98, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 256
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %34, label %40

40:                                               ; preds = %35, %26, %7
  %41 = phi ptr [ %27, %26 ], [ inttoptr (i32 -4 to ptr), %35 ], [ %8, %7 ]
  ret ptr %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @crypto_create_tfm_node(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.crypto_type, ptr %1, i32 0, i32 10
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.crypto_type, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0) #7
  %9 = add i32 %5, 64
  %10 = add i32 %9, %8
  %11 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %49, label %13

13:                                               ; preds = %3
  %14 = getelementptr i8, ptr %11, i32 %5
  %15 = getelementptr inbounds %struct.crypto_tfm, ptr %14, i32 0, i32 3
  store ptr %0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.crypto_tfm, ptr %14, i32 0, i32 1
  store i32 %2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.crypto_type, ptr %1, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %14) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.crypto_tfm, ptr %14, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %52

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 12
  %27 = load ptr, ptr %26, align 64
  %28 = icmp eq ptr %27, null
  br i1 %28, label %52, label %29

29:                                               ; preds = %25
  %30 = tail call i32 %27(ptr noundef %14) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %15, align 4
  %34 = getelementptr inbounds %struct.crypto_alg, ptr %33, i32 0, i32 10
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load ptr, ptr %22, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void %38(ptr noundef %14) #7
  br label %41

41:                                               ; preds = %40, %37, %32, %13
  %42 = phi i32 [ %19, %13 ], [ %30, %32 ], [ %30, %37 ], [ %30, %40 ]
  %43 = icmp eq i32 %42, -11
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  tail call void @down_write(ptr noundef nonnull @crypto_alg_sem) #7
  %45 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 2
  %46 = load i32, ptr %45, align 16
  %47 = or i32 %46, 64
  store i32 %47, ptr %45, align 16
  tail call void @up_write(ptr noundef nonnull @crypto_alg_sem) #7
  br label %48

48:                                               ; preds = %44, %41
  tail call void @kfree(ptr noundef nonnull %11) #7
  br label %49

49:                                               ; preds = %48, %3
  %50 = phi i32 [ -12, %3 ], [ %42, %48 ]
  %51 = inttoptr i32 %50 to ptr
  br label %52

52:                                               ; preds = %49, %29, %25, %21
  %53 = phi ptr [ %51, %49 ], [ %11, %21 ], [ %11, %29 ], [ %11, %25 ]
  ret ptr %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @crypto_find_alg(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.crypto_type, ptr %1, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, %2
  %10 = and i32 %8, %3
  %11 = getelementptr inbounds %struct.crypto_type, ptr %1, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %9, %12
  %14 = getelementptr inbounds %struct.crypto_type, ptr %1, i32 0, i32 9
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %15, %10
  br label %17

17:                                               ; preds = %6, %4
  %18 = phi i32 [ %13, %6 ], [ %2, %4 ]
  %19 = phi i32 [ %16, %6 ], [ %3, %4 ]
  %20 = tail call ptr @crypto_alg_mod_lookup(ptr noundef %0, i32 noundef %18, i32 noundef %19)
  ret ptr %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @crypto_alloc_tfm_node(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp eq ptr %1, null
  %7 = getelementptr inbounds %struct.crypto_type, ptr %1, i32 0, i32 8
  %8 = getelementptr inbounds %struct.crypto_type, ptr %1, i32 0, i32 7
  %9 = getelementptr inbounds %struct.crypto_type, ptr %1, i32 0, i32 9
  br label %10

10:                                               ; preds = %51, %5
  br i1 %6, label %19, label %11

11:                                               ; preds = %10
  %12 = load i32, ptr %7, align 4
  %13 = and i32 %12, %2
  %14 = and i32 %12, %3
  %15 = load i32, ptr %8, align 4
  %16 = or i32 %13, %15
  %17 = load i32, ptr %9, align 4
  %18 = or i32 %17, %14
  br label %19

19:                                               ; preds = %11, %10
  %20 = phi i32 [ %16, %11 ], [ %2, %10 ]
  %21 = phi i32 [ %18, %11 ], [ %3, %10 ]
  %22 = tail call ptr @crypto_alg_mod_lookup(ptr noundef %0, i32 noundef %20, i32 noundef %21) #7
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %43, label %24

24:                                               ; preds = %19
  %25 = tail call ptr @crypto_create_tfm_node(ptr noundef %22, ptr noundef %1, i32 noundef %4)
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %57

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.crypto_alg, ptr %22, i32 0, i32 15
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.crypto_alg, ptr %22, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #7, !srcloc !8
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 1, ptr elementtype(i32) %30) #7, !srcloc !13
  %32 = extractvalue { i32, i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = icmp sgt i32 %32, 0
  br i1 %35, label %42, label %36, !prof !11

36:                                               ; preds = %34
  tail call void @refcount_warn_saturate(ptr noundef %30, i32 noundef 3) #7
  br label %42

37:                                               ; preds = %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %38 = getelementptr inbounds %struct.crypto_alg, ptr %22, i32 0, i32 14
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void %39(ptr noundef %22) #7
  br label %42

42:                                               ; preds = %41, %37, %36, %34
  tail call void @module_put(ptr noundef %29) #7
  br label %43

43:                                               ; preds = %42, %19
  %44 = phi ptr [ %25, %42 ], [ %22, %19 ]
  %45 = icmp eq ptr %44, inttoptr (i32 -11 to ptr)
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = tail call ptr @llvm.thread.pointer() #7
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %52, %46
  br label %10

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 98, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, 256
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %51, label %57

57:                                               ; preds = %52, %43, %24
  %58 = phi ptr [ %44, %43 ], [ inttoptr (i32 -4 to ptr), %52 ], [ %25, %24 ]
  ret ptr %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_destroy_tfm(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %43, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.crypto_alg, ptr %8, i32 0, i32 13
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  tail call void %14(ptr noundef %1) #7
  %17 = load ptr, ptr %7, align 4
  br label %18

18:                                               ; preds = %16, %12, %6
  %19 = phi ptr [ %17, %16 ], [ %8, %12 ], [ %8, %6 ]
  %20 = getelementptr inbounds %struct.crypto_alg, ptr %19, i32 0, i32 10
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr %9, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void %24(ptr noundef %1) #7
  br label %27

27:                                               ; preds = %26, %23, %18
  %28 = getelementptr inbounds %struct.crypto_alg, ptr %8, i32 0, i32 15
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.crypto_alg, ptr %8, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #7, !srcloc !8
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 1, ptr elementtype(i32) %30) #7, !srcloc !13
  %32 = extractvalue { i32, i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = icmp sgt i32 %32, 0
  br i1 %35, label %42, label %36, !prof !11

36:                                               ; preds = %34
  tail call void @refcount_warn_saturate(ptr noundef %30, i32 noundef 3) #7
  br label %42

37:                                               ; preds = %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %38 = getelementptr inbounds %struct.crypto_alg, ptr %8, i32 0, i32 14
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void %39(ptr noundef %8) #7
  br label %42

42:                                               ; preds = %41, %37, %36, %34
  tail call void @module_put(ptr noundef %29) #7
  tail call void @kfree_sensitive(ptr noundef nonnull %0) #7
  br label %43

43:                                               ; preds = %42, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_has_alg(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @crypto_alg_mod_lookup(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %22, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.crypto_alg, ptr %4, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.crypto_alg, ptr %4, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #7, !srcloc !8
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #7, !srcloc !13
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = icmp sgt i32 %11, 0
  br i1 %14, label %21, label %15, !prof !11

15:                                               ; preds = %13
  tail call void @refcount_warn_saturate(ptr noundef %9, i32 noundef 3) #7
  br label %21

16:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %17 = getelementptr inbounds %struct.crypto_alg, ptr %4, i32 0, i32 14
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void %18(ptr noundef %4) #7
  br label %21

21:                                               ; preds = %20, %16, %15, %13
  tail call void @module_put(ptr noundef %8) #7
  br label %22

22:                                               ; preds = %21, %3
  %23 = phi i32 [ 0, %3 ], [ 1, %21 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_req_done(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, -115
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_wait, ptr %6, i32 0, i32 1
  store i32 %1, ptr %7, align 4
  tail call void @complete(ptr noundef %6) #7
  br label %8

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @crypto_alg_lookup(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = or i32 %2, %1
  %5 = and i32 %4, 1024
  %6 = icmp eq i32 %5, 0
  %7 = xor i32 %5, 1024
  tail call void @down_read(ptr noundef nonnull @crypto_alg_sem) #7
  %8 = or i32 %7, %1
  %9 = or i32 %7, %2
  %10 = tail call fastcc ptr @__crypto_alg_lookup(ptr noundef %0, i32 noundef %8, i32 noundef %9)
  %11 = icmp eq ptr %10, null
  %12 = and i1 %6, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %3
  %14 = tail call fastcc ptr @__crypto_alg_lookup(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %37, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.crypto_alg, ptr %14, i32 0, i32 2
  %18 = load i32, ptr %17, align 16
  %19 = and i32 %18, 16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.crypto_alg, ptr %14, i32 0, i32 15
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.crypto_alg, ptr %14, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #7, !srcloc !8
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #7, !srcloc !13
  %26 = extractvalue { i32, i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = icmp sgt i32 %26, 0
  br i1 %29, label %36, label %30, !prof !11

30:                                               ; preds = %28
  tail call void @refcount_warn_saturate(ptr noundef %24, i32 noundef 3) #7
  br label %36

31:                                               ; preds = %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %32 = getelementptr inbounds %struct.crypto_alg, ptr %14, i32 0, i32 14
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void %33(ptr noundef nonnull %14) #7
  br label %36

36:                                               ; preds = %35, %31, %30, %28
  tail call void @module_put(ptr noundef %23) #7
  br label %37

37:                                               ; preds = %36, %16, %13, %3
  %38 = phi ptr [ %14, %16 ], [ inttoptr (i32 -80 to ptr), %36 ], [ null, %13 ], [ %10, %3 ]
  tail call void @up_read(ptr noundef nonnull @crypto_alg_sem) #7
  ret ptr %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__crypto_alg_lookup(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr @crypto_alg_list, align 4
  %5 = icmp eq ptr %4, @crypto_alg_list
  br i1 %5, label %84, label %6

6:                                                ; preds = %79, %3
  %7 = phi ptr [ %82, %79 ], [ %4, %3 ]
  %8 = phi ptr [ %81, %79 ], [ null, %3 ]
  %9 = phi i32 [ %80, %79 ], [ -2, %3 ]
  %10 = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 2
  %11 = load i32, ptr %10, align 16
  %12 = and i32 %11, 96
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %79

14:                                               ; preds = %6
  %15 = xor i32 %11, %1
  %16 = and i32 %15, %2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %79

18:                                               ; preds = %14
  %19 = and i32 %11, 16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 9
  %23 = load i8, ptr %22, align 8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.crypto_larval, ptr %7, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, %2
  br i1 %28, label %29, label %79

29:                                               ; preds = %25, %21, %18
  %30 = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 9
  %31 = tail call i32 @strcmp(ptr noundef %30, ptr noundef %0)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 8
  %35 = tail call i32 @strcmp(ptr noundef %34, ptr noundef %0)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %79

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 6
  %39 = load i32, ptr %38, align 32
  %40 = icmp sgt i32 %39, %9
  br i1 %40, label %41, label %79

41:                                               ; preds = %37, %29
  %42 = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 15
  %43 = load ptr, ptr %42, align 4
  %44 = tail call zeroext i1 @try_module_get(ptr noundef %43) #7
  br i1 %44, label %45, label %79

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %46) #7, !srcloc !8
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %46, ptr %46, i32 1, ptr elementtype(i32) %46) #7, !srcloc !9
  %48 = extractvalue { i32, i32, i32 } %47, 0
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50, !prof !10

50:                                               ; preds = %45
  %51 = add i32 %48, 1
  %52 = or i32 %51, %48
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %56, label %54, !prof !11

54:                                               ; preds = %50, %45
  %55 = phi i32 [ 2, %45 ], [ 1, %50 ]
  tail call void @refcount_warn_saturate(ptr noundef %46, i32 noundef %55) #7
  br label %56

56:                                               ; preds = %54, %50
  %57 = icmp eq ptr %7, null
  br i1 %57, label %79, label %58, !prof !10

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 6
  %60 = load i32, ptr %59, align 32
  %61 = icmp eq ptr %8, null
  br i1 %61, label %78, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.crypto_alg, ptr %8, i32 0, i32 15
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.crypto_alg, ptr %8, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %65) #7, !srcloc !8
  %66 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %65, ptr %65, i32 1, ptr elementtype(i32) %65) #7, !srcloc !13
  %67 = extractvalue { i32, i32, i32 } %66, 0
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %72, label %69

69:                                               ; preds = %62
  %70 = icmp sgt i32 %67, 0
  br i1 %70, label %77, label %71, !prof !11

71:                                               ; preds = %69
  tail call void @refcount_warn_saturate(ptr noundef %65, i32 noundef 3) #7
  br label %77

72:                                               ; preds = %62
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %73 = getelementptr inbounds %struct.crypto_alg, ptr %8, i32 0, i32 14
  %74 = load ptr, ptr %73, align 8
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  tail call void %74(ptr noundef nonnull %8) #7
  br label %77

77:                                               ; preds = %76, %72, %71, %69
  tail call void @module_put(ptr noundef %64) #7
  br label %78

78:                                               ; preds = %77, %58
  br i1 %32, label %84, label %79

79:                                               ; preds = %78, %56, %41, %37, %33, %25, %14, %6
  %80 = phi i32 [ %9, %6 ], [ %9, %14 ], [ %9, %25 ], [ %9, %37 ], [ %9, %33 ], [ %9, %56 ], [ %60, %78 ], [ %9, %41 ]
  %81 = phi ptr [ %8, %6 ], [ %8, %14 ], [ %8, %25 ], [ %8, %37 ], [ %8, %33 ], [ %8, %56 ], [ %7, %78 ], [ %8, %41 ]
  %82 = load ptr, ptr %7, align 4
  %83 = icmp eq ptr %82, @crypto_alg_list
  br i1 %83, label %84, label %6

84:                                               ; preds = %79, %78, %3
  %85 = phi ptr [ null, %3 ], [ %81, %79 ], [ %7, %78 ]
  ret ptr %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @crypto_start_test(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 9
  %3 = load i8, ptr %2, align 8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.crypto_larval, ptr %0, i32 0, i32 4
  %7 = load i8, ptr %6, align 8, !range !17
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  tail call void @down_write(ptr noundef nonnull @crypto_alg_sem) #7
  %10 = load i8, ptr %6, align 8, !range !17
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @up_write(ptr noundef nonnull @crypto_alg_sem) #7
  br label %14

13:                                               ; preds = %9
  store i8 1, ptr %6, align 8
  tail call void @up_write(ptr noundef nonnull @crypto_alg_sem) #7
  tail call void @crypto_wait_for_test(ptr noundef %0)
  br label %14

14:                                               ; preds = %13, %12, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_killable_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind allocsize(0) }

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
!8 = !{i64 288146, i64 2147789712, i64 2147789738, i64 2147789785, i64 2147789807, i64 2147789835, i64 2147789855}
!9 = !{i64 2147864871, i64 2147864903, i64 2147864932, i64 2147864966, i64 2147864997, i64 2147865020}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2147965069}
!13 = !{i64 2147867228, i64 2147867260, i64 2147867289, i64 2147867323, i64 2147867354, i64 2147867377}
!14 = !{i64 2149289568}
!15 = !{i64 2151289717, i64 2151290193, i64 2151289754, i64 2151289810, i64 2151289844, i64 2151289868, i64 2151289909, i64 2151289930, i64 2151289958, i64 2151289992}
!16 = !{i64 2151300892, i64 2151301369, i64 2151300929, i64 2151300985, i64 2151301019, i64 2151301043, i64 2151301084, i64 2151301105, i64 2151301133, i64 2151301167}
!17 = !{i8 0, i8 2}
