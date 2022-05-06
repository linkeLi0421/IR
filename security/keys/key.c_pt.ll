; ModuleID = '/llk/IR/security/keys/key.c_pt.bc'
source_filename = "../security/keys/key.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22key_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_key_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_payload_reserve:\09\09\09\09\09"
module asm "\09.asciz \09\22key_payload_reserve\22\09\09\09\09\09"
module asm "__kstrtabns_key_payload_reserve:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_instantiate_and_link:\09\09\09\09\09"
module asm "\09.asciz \09\22key_instantiate_and_link\22\09\09\09\09\09"
module asm "__kstrtabns_key_instantiate_and_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_reject_and_link:\09\09\09\09\09"
module asm "\09.asciz \09\22key_reject_and_link\22\09\09\09\09\09"
module asm "__kstrtabns_key_reject_and_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_put:\09\09\09\09\09"
module asm "\09.asciz \09\22key_put\22\09\09\09\09\09"
module asm "__kstrtabns_key_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_set_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22key_set_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_key_set_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_create_or_update:\09\09\09\09\09"
module asm "\09.asciz \09\22key_create_or_update\22\09\09\09\09\09"
module asm "__kstrtabns_key_create_or_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_update:\09\09\09\09\09"
module asm "\09.asciz \09\22key_update\22\09\09\09\09\09"
module asm "__kstrtabns_key_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_revoke:\09\09\09\09\09"
module asm "\09.asciz \09\22key_revoke\22\09\09\09\09\09"
module asm "__kstrtabns_key_revoke:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_invalidate:\09\09\09\09\09"
module asm "\09.asciz \09\22key_invalidate\22\09\09\09\09\09"
module asm "__kstrtabns_key_invalidate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_key_instantiate:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_key_instantiate\22\09\09\09\09\09"
module asm "__kstrtabns_generic_key_instantiate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_key_type:\09\09\09\09\09"
module asm "\09.asciz \09\22register_key_type\22\09\09\09\09\09"
module asm "__kstrtabns_register_key_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_key_type:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_key_type\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_key_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.key_user = type { %struct.rb_node, %struct.mutex, %struct.spinlock, %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.kuid_t, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.1, %struct.rw_semaphore, ptr, ptr, %union.anon.2, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.3, %union.anon.7, ptr }
%union.anon.1 = type { %struct.rb_node }
%union.anon.2 = type { i64 }
%struct.kgid_t = type { i32 }
%union.anon.3 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.4, ptr, ptr, ptr }
%union.anon.4 = type { i32 }
%union.anon.7 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.key_preparsed_payload = type { ptr, ptr, %union.key_payload, ptr, i32, i32, i64 }
%struct.key_restriction = type { ptr, ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.42 }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.61 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.9 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.9 = type { %struct.callback_head }

@key_serial_lock = dso_local global %struct.spinlock zeroinitializer, align 4
@key_user_lock = dso_local global %struct.spinlock zeroinitializer, align 4
@key_quota_root_maxkeys = dso_local local_unnamed_addr global i32 1000000, align 4
@key_quota_root_maxbytes = dso_local local_unnamed_addr global i32 25000000, align 4
@key_quota_maxkeys = dso_local local_unnamed_addr global i32 200, align 4
@key_quota_maxbytes = dso_local local_unnamed_addr global i32 20000, align 4
@key_construction_mutex = dso_local global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @key_construction_mutex, i64 12), ptr getelementptr (i8, ptr @key_construction_mutex, i64 12) } }, align 4
@key_user_tree = dso_local global %struct.rb_root zeroinitializer, align 4
@key_user_lookup.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [22 x i8] c"&candidate->cons_lock\00", align 1
@key_jar = dso_local local_unnamed_addr global ptr null, align 4
@key_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"&key->sem\00", align 1
@__kstrtab_key_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_key_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_alloc to i32), ptr @__kstrtab_key_alloc, ptr @__kstrtabns_key_alloc }, section "___ksymtab+key_alloc", align 4
@__kstrtab_key_payload_reserve = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_payload_reserve = external dso_local constant [0 x i8], align 1
@__ksymtab_key_payload_reserve = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_payload_reserve to i32), ptr @__kstrtab_key_payload_reserve, ptr @__kstrtabns_key_payload_reserve }, section "___ksymtab+key_payload_reserve", align 4
@__kstrtab_key_instantiate_and_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_instantiate_and_link = external dso_local constant [0 x i8], align 1
@__ksymtab_key_instantiate_and_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_instantiate_and_link to i32), ptr @__kstrtab_key_instantiate_and_link, ptr @__kstrtabns_key_instantiate_and_link }, section "___ksymtab+key_instantiate_and_link", align 4
@key_gc_delay = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_key_reject_and_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_reject_and_link = external dso_local constant [0 x i8], align 1
@__ksymtab_key_reject_and_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_reject_and_link to i32), ptr @__kstrtab_key_reject_and_link, ptr @__kstrtabns_key_reject_and_link }, section "___ksymtab+key_reject_and_link", align 4
@key_gc_work = external dso_local global %struct.work_struct, align 4
@__kstrtab_key_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_put = external dso_local constant [0 x i8], align 1
@__ksymtab_key_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_put to i32), ptr @__kstrtab_key_put, ptr @__kstrtabns_key_put }, section "___ksymtab+key_put", align 4
@key_serial_tree = dso_local global %struct.rb_root zeroinitializer, align 4
@key_types_sem = internal global %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @key_types_sem, i64 16), ptr getelementptr (i8, ptr @key_types_sem, i64 16) } }, align 4
@key_types_list = internal global %struct.list_head { ptr @key_types_list, ptr @key_types_list }, align 4
@__kstrtab_key_set_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_set_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_key_set_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_set_timeout to i32), ptr @__kstrtab_key_set_timeout, ptr @__kstrtabns_key_set_timeout }, section "___ksymtab_gpl+key_set_timeout", align 4
@key_type_keyring = external dso_local global %struct.key_type, align 4
@__kstrtab_key_create_or_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_create_or_update = external dso_local constant [0 x i8], align 1
@__ksymtab_key_create_or_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_create_or_update to i32), ptr @__kstrtab_key_create_or_update, ptr @__kstrtabns_key_create_or_update }, section "___ksymtab+key_create_or_update", align 4
@__kstrtab_key_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_update = external dso_local constant [0 x i8], align 1
@__ksymtab_key_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_update to i32), ptr @__kstrtab_key_update, ptr @__kstrtabns_key_update }, section "___ksymtab+key_update", align 4
@__kstrtab_key_revoke = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_revoke = external dso_local constant [0 x i8], align 1
@__ksymtab_key_revoke = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_revoke to i32), ptr @__kstrtab_key_revoke, ptr @__kstrtabns_key_revoke }, section "___ksymtab+key_revoke", align 4
@__kstrtab_key_invalidate = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_invalidate = external dso_local constant [0 x i8], align 1
@__ksymtab_key_invalidate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_invalidate to i32), ptr @__kstrtab_key_invalidate, ptr @__kstrtabns_key_invalidate }, section "___ksymtab+key_invalidate", align 4
@__kstrtab_generic_key_instantiate = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_key_instantiate = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_key_instantiate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_key_instantiate to i32), ptr @__kstrtab_generic_key_instantiate, ptr @__kstrtabns_generic_key_instantiate }, section "___ksymtab+generic_key_instantiate", align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"\015Key type %s registered\0A\00", align 1
@__kstrtab_register_key_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_key_type = external dso_local constant [0 x i8], align 1
@__ksymtab_register_key_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_key_type to i32), ptr @__kstrtab_register_key_type, ptr @__kstrtabns_register_key_type }, section "___ksymtab+register_key_type", align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"\015Key type %s unregistered\0A\00", align 1
@__kstrtab_unregister_key_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_key_type = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_key_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_key_type to i32), ptr @__kstrtab_unregister_key_type, ptr @__kstrtabns_unregister_key_type }, section "___ksymtab+unregister_key_type", align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"key_jar\00", align 1
@key_type_dead = external dso_local global %struct.key_type, align 4
@key_type_user = external dso_local global %struct.key_type, align 4
@key_type_logon = external dso_local global %struct.key_type, align 4
@root_key_user = external dso_local global %struct.key_user, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [13 x ptr] [ptr @__ksymtab_generic_key_instantiate, ptr @__ksymtab_key_alloc, ptr @__ksymtab_key_create_or_update, ptr @__ksymtab_key_instantiate_and_link, ptr @__ksymtab_key_invalidate, ptr @__ksymtab_key_payload_reserve, ptr @__ksymtab_key_put, ptr @__ksymtab_key_reject_and_link, ptr @__ksymtab_key_revoke, ptr @__ksymtab_key_set_timeout, ptr @__ksymtab_key_update, ptr @__ksymtab_register_key_type, ptr @__ksymtab_unregister_key_type], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @key_user_lookup([1 x i32] %0) local_unnamed_addr #0 {
  %2 = extractvalue [1 x i32] %0, 0
  br label %3

3:                                                ; preds = %28, %1
  %4 = phi ptr [ null, %1 ], [ %32, %28 ]
  tail call void @_raw_spin_lock(ptr noundef nonnull @key_user_lock) #10
  %5 = load ptr, ptr @key_user_tree, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %18, %3
  %8 = phi ptr [ %20, %18 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.key_user, ptr %8, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %2, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 2
  br label %18

14:                                               ; preds = %7
  %15 = icmp ugt i32 %2, %10
  br i1 %15, label %16, label %47

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 1
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi ptr [ %13, %12 ], [ %17, %16 ]
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %7

22:                                               ; preds = %18
  %23 = ptrtoint ptr %8 to i32
  br label %24

24:                                               ; preds = %22, %3
  %25 = phi ptr [ %19, %22 ], [ @key_user_tree, %3 ]
  %26 = phi i32 [ %23, %22 ], [ 0, %3 ]
  %27 = icmp eq ptr %4, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %29 = load i16, ptr @key_user_lock, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr @key_user_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %31 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %32 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3264, i32 noundef 60) #11
  %33 = icmp eq ptr %32, null
  br i1 %33, label %61, label %3, !prof !12

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.key_user, ptr %4, i32 0, i32 3
  store volatile i32 1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.key_user, ptr %4, i32 0, i32 4
  store volatile i32 0, ptr %36, align 8
  %37 = getelementptr inbounds %struct.key_user, ptr %4, i32 0, i32 5
  store volatile i32 0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.key_user, ptr %4, i32 0, i32 6
  store i32 %2, ptr %38, align 8
  %39 = getelementptr inbounds %struct.key_user, ptr %4, i32 0, i32 7
  store i32 0, ptr %39, align 4
  %40 = getelementptr inbounds %struct.key_user, ptr %4, i32 0, i32 8
  store i32 0, ptr %40, align 8
  %41 = getelementptr inbounds %struct.key_user, ptr %4, i32 0, i32 2
  store i32 0, ptr %41, align 8
  %42 = getelementptr inbounds %struct.key_user, ptr %4, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %42, ptr noundef nonnull @.str, ptr noundef nonnull @key_user_lookup.__key) #10
  store i32 %26, ptr %4, align 8
  %43 = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 1
  store ptr null, ptr %43, align 4
  %44 = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 2
  store ptr null, ptr %44, align 8
  store ptr %4, ptr %25, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %4, ptr noundef nonnull @key_user_tree) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %45 = load i16, ptr @key_user_lock, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr @key_user_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %61

47:                                               ; preds = %14
  %48 = getelementptr inbounds %struct.key_user, ptr %8, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %48) #10, !srcloc !13
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %48, ptr %48, i32 1, ptr elementtype(i32) %48) #10, !srcloc !14
  %50 = extractvalue { i32, i32, i32 } %49, 0
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52, !prof !12

52:                                               ; preds = %47
  %53 = add i32 %50, 1
  %54 = or i32 %53, %50
  %55 = icmp sgt i32 %54, -1
  br i1 %55, label %58, label %56, !prof !15

56:                                               ; preds = %52, %47
  %57 = phi i32 [ 2, %47 ], [ 1, %52 ]
  tail call void @refcount_warn_saturate(ptr noundef %48, i32 noundef %57) #10
  br label %58

58:                                               ; preds = %56, %52
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %59 = load i16, ptr @key_user_lock, align 4
  %60 = add i16 %59, 1
  store i16 %60, ptr @key_user_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  tail call void @kfree(ptr noundef %4) #10
  br label %61

61:                                               ; preds = %58, %34, %28
  %62 = phi ptr [ %8, %58 ], [ %4, %34 ], [ null, %28 ]
  ret ptr %62
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @key_user_put(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.key_user, ptr %0, i32 0, i32 3
  %3 = tail call zeroext i1 @refcount_dec_and_lock(ptr noundef %2, ptr noundef nonnull @key_user_lock) #10
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  tail call void @rb_erase(ptr noundef %0, ptr noundef nonnull @key_user_tree) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %5 = load i16, ptr @key_user_lock, align 4
  %6 = add i16 %5, 1
  store i16 %6, ptr @key_user_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  tail call void @kfree(ptr noundef %0) #10
  br label %7

7:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @key_alloc(ptr noundef %0, ptr noundef %1, [1 x i32] %2, [1 x i32] %3, ptr nocapture readnone %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) #0 {
  %9 = extractvalue [1 x i32] %2, 0
  %10 = extractvalue [1 x i32] %3, 0
  %11 = icmp eq ptr %1, null
  br i1 %11, label %219, label %12

12:                                               ; preds = %8
  %13 = load i8, ptr %1, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %219, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.key_type, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = tail call i32 %17(ptr noundef nonnull %1) #10
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = inttoptr i32 %20 to ptr
  br label %219

24:                                               ; preds = %19, %15
  %25 = tail call i32 @strlen(ptr noundef nonnull %1)
  %26 = add i32 %25, 1
  %27 = getelementptr inbounds %struct.key_type, ptr %0, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %26, %28
  %30 = tail call ptr @key_user_lookup([1 x i32] %2)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %219, label %32

32:                                               ; preds = %24
  %33 = and i32 %6, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %72

35:                                               ; preds = %32
  %36 = icmp eq i32 %9, 0
  %37 = load i32, ptr @key_quota_root_maxkeys, align 4
  %38 = load i32, ptr @key_quota_maxkeys, align 4
  %39 = load i32, ptr @key_quota_root_maxbytes, align 4
  %40 = load i32, ptr @key_quota_maxbytes, align 4
  %41 = select i1 %36, i32 %39, i32 %40
  %42 = getelementptr inbounds %struct.key_user, ptr %30, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %42) #10
  %43 = and i32 %6, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.key_user, ptr %30, i32 0, i32 7
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.key_user, ptr %30, i32 0, i32 8
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %47, 1
  %51 = add i32 %49, %29
  br label %65

52:                                               ; preds = %35
  %53 = select i1 %36, i32 %37, i32 %38
  %54 = getelementptr inbounds %struct.key_user, ptr %30, i32 0, i32 7
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, 1
  %57 = icmp ugt i32 %56, %53
  br i1 %57, label %211, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.key_user, ptr %30, i32 0, i32 8
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, %29
  %62 = icmp ugt i32 %61, %41
  %63 = icmp ult i32 %61, %60
  %64 = or i1 %62, %63
  br i1 %64, label %211, label %65

65:                                               ; preds = %58, %45
  %66 = phi i32 [ %51, %45 ], [ %61, %58 ]
  %67 = phi i32 [ %50, %45 ], [ %56, %58 ]
  %68 = getelementptr inbounds %struct.key_user, ptr %30, i32 0, i32 7
  store i32 %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.key_user, ptr %30, i32 0, i32 8
  store i32 %66, ptr %69, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %70 = load i16, ptr %42, align 4
  %71 = add i16 %70, 1
  store i16 %71, ptr %42, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %72

72:                                               ; preds = %65, %32
  %73 = load ptr, ptr @key_jar, align 4
  %74 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %73, i32 noundef 3520) #10
  %75 = icmp eq ptr %74, null
  br i1 %75, label %194, label %76

76:                                               ; preds = %72
  %77 = trunc i32 %25 to i16
  %78 = getelementptr inbounds %struct.key, ptr %74, i32 0, i32 15, i32 0, i32 1
  store i16 %77, ptr %78, align 4
  %79 = tail call ptr @kmemdup(ptr noundef nonnull %1, i32 noundef %26, i32 noundef 3264) #10
  %80 = getelementptr inbounds %struct.key, ptr %74, i32 0, i32 15, i32 0, i32 4
  store ptr %79, ptr %80, align 8
  %81 = icmp eq ptr %79, null
  br i1 %81, label %192, label %82

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.key, ptr %74, i32 0, i32 15
  %84 = getelementptr inbounds %struct.key, ptr %74, i32 0, i32 15, i32 0, i32 2
  store ptr %0, ptr %84, align 8
  tail call void @key_set_index_key(ptr noundef %83) #10
  store volatile i32 1, ptr %74, align 8
  %85 = getelementptr inbounds %struct.key, ptr %74, i32 0, i32 3
  tail call void @__init_rwsem(ptr noundef %85, ptr noundef nonnull @.str.1, ptr noundef nonnull @key_alloc.__key) #10
  %86 = getelementptr inbounds %struct.key, ptr %74, i32 0, i32 4
  store ptr %30, ptr %86, align 4
  %87 = trunc i32 %29 to i16
  %88 = getelementptr inbounds %struct.key, ptr %74, i32 0, i32 11
  store i16 %87, ptr %88, align 4
  %89 = load i32, ptr %27, align 4
  %90 = trunc i32 %89 to i16
  %91 = getelementptr inbounds %struct.key, ptr %74, i32 0, i32 12
  store i16 %90, ptr %91, align 2
  %92 = getelementptr inbounds %struct.key, ptr %74, i32 0, i32 8
  store i32 %9, ptr %92, align 8
  %93 = getelementptr inbounds %struct.key, ptr %74, i32 0, i32 9
  store i32 %10, ptr %93, align 4
  %94 = getelementptr inbounds %struct.key, ptr %74, i32 0, i32 10
  store i32 %5, ptr %94, align 8
  %95 = getelementptr inbounds %struct.key, ptr %74, i32 0, i32 17
  store ptr %7, ptr %95, align 4
  %96 = tail call i64 @ktime_get_real_seconds() #10
  %97 = getelementptr inbounds %struct.key, ptr %74, i32 0, i32 7
  store i64 %96, ptr %97, align 8
  br i1 %34, label %98, label %102

98:                                               ; preds = %82
  %99 = getelementptr inbounds %struct.key, ptr %74, i32 0, i32 14
  %100 = load i32, ptr %99, align 4
  %101 = or i32 %100, 4
  store i32 %101, ptr %99, align 4
  br label %102

102:                                              ; preds = %98, %82
  %103 = and i32 %6, 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.key, ptr %74, i32 0, i32 14
  %107 = load i32, ptr %106, align 4
  %108 = or i32 %107, 64
  store i32 %108, ptr %106, align 4
  br label %109

109:                                              ; preds = %105, %102
  %110 = and i32 %6, 16
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.key, ptr %74, i32 0, i32 14
  %114 = load i32, ptr %113, align 4
  %115 = or i32 %114, 512
  store i32 %115, ptr %113, align 4
  br label %116

116:                                              ; preds = %112, %109
  %117 = and i32 %6, 32
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.key, ptr %74, i32 0, i32 14
  %121 = load i32, ptr %120, align 4
  %122 = or i32 %121, 256
  store i32 %122, ptr %120, align 4
  br label %123

123:                                              ; preds = %119, %116
  %124 = getelementptr inbounds %struct.key, ptr %74, i32 0, i32 15, i32 0, i32 3
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.key_tag, ptr %125, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %126) #10, !srcloc !13
  %127 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %126, ptr %126, i32 1, ptr elementtype(i32) %126) #10, !srcloc !14
  %128 = extractvalue { i32, i32, i32 } %127, 0
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %134, label %130, !prof !12

130:                                              ; preds = %123
  %131 = add i32 %128, 1
  %132 = or i32 %131, %128
  %133 = icmp sgt i32 %132, -1
  br i1 %133, label %136, label %134, !prof !15

134:                                              ; preds = %130, %123
  %135 = phi i32 [ 2, %123 ], [ 1, %130 ]
  tail call void @refcount_warn_saturate(ptr noundef %126, i32 noundef %135) #10
  br label %136

136:                                              ; preds = %134, %130
  %137 = getelementptr inbounds %struct.key_user, ptr %30, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %137) #10, !srcloc !13
  %138 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %137, ptr %137, i32 1, ptr elementtype(i32) %137) #10, !srcloc !16
  %139 = getelementptr inbounds %struct.key, ptr %74, i32 0, i32 1
  br label %140

140:                                              ; preds = %140, %136
  tail call void @get_random_bytes(ptr noundef %139, i32 noundef 4) #10
  %141 = load i32, ptr %139, align 4
  %142 = ashr i32 %141, 1
  store i32 %142, ptr %139, align 4
  %143 = icmp slt i32 %141, 6
  br i1 %143, label %140, label %144

144:                                              ; preds = %140
  tail call void @_raw_spin_lock(ptr noundef nonnull @key_serial_lock) #10
  %145 = load ptr, ptr @key_serial_tree, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %184, label %147

147:                                              ; preds = %173, %144
  %148 = phi ptr [ %174, %173 ], [ %145, %144 ]
  %149 = load i32, ptr %139, align 4
  br label %150

150:                                              ; preds = %161, %147
  %151 = phi ptr [ %148, %147 ], [ %163, %161 ]
  %152 = getelementptr i8, ptr %151, i32 -4
  %153 = load i32, ptr %152, align 4
  %154 = icmp slt i32 %149, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.rb_node, ptr %151, i32 0, i32 2
  br label %161

157:                                              ; preds = %150
  %158 = icmp sgt i32 %149, %153
  br i1 %158, label %159, label %167

159:                                              ; preds = %157
  %160 = getelementptr inbounds %struct.rb_node, ptr %151, i32 0, i32 1
  br label %161

161:                                              ; preds = %159, %155
  %162 = phi ptr [ %156, %155 ], [ %160, %159 ]
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %150

165:                                              ; preds = %161
  %166 = ptrtoint ptr %151 to i32
  br label %184

167:                                              ; preds = %179, %157
  %168 = phi i32 [ %180, %179 ], [ %149, %157 ]
  %169 = phi ptr [ %177, %179 ], [ %151, %157 ]
  %170 = add i32 %168, 1
  store i32 %170, ptr %139, align 4
  %171 = icmp slt i32 %170, 3
  br i1 %171, label %172, label %176

172:                                              ; preds = %167
  store i32 3, ptr %139, align 4
  br label %173

173:                                              ; preds = %179, %176, %172
  %174 = load ptr, ptr @key_serial_tree, align 4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %184, label %147

176:                                              ; preds = %167
  %177 = tail call ptr @rb_next(ptr noundef nonnull %169) #10
  %178 = icmp eq ptr %177, null
  br i1 %178, label %173, label %179

179:                                              ; preds = %176
  %180 = load i32, ptr %139, align 4
  %181 = getelementptr i8, ptr %177, i32 -4
  %182 = load i32, ptr %181, align 4
  %183 = icmp slt i32 %180, %182
  br i1 %183, label %173, label %167

184:                                              ; preds = %173, %165, %144
  %185 = phi ptr [ %162, %165 ], [ @key_serial_tree, %144 ], [ @key_serial_tree, %173 ]
  %186 = phi i32 [ %166, %165 ], [ 0, %144 ], [ 0, %173 ]
  %187 = getelementptr inbounds %struct.key, ptr %74, i32 0, i32 2
  store i32 %186, ptr %187, align 8
  %188 = getelementptr inbounds %struct.key, ptr %74, i32 0, i32 2, i32 0, i32 1
  store ptr null, ptr %188, align 4
  %189 = getelementptr inbounds %struct.key, ptr %74, i32 0, i32 2, i32 0, i32 2
  store ptr null, ptr %189, align 8
  store ptr %187, ptr %185, align 4
  tail call void @rb_insert_color(ptr noundef %187, ptr noundef nonnull @key_serial_tree) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %190 = load i16, ptr @key_serial_lock, align 4
  %191 = add i16 %190, 1
  store i16 %191, ptr @key_serial_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %219

192:                                              ; preds = %76
  %193 = load ptr, ptr @key_jar, align 4
  tail call void @kmem_cache_free(ptr noundef %193, ptr noundef nonnull %74) #10
  br label %194

194:                                              ; preds = %192, %72
  br i1 %34, label %195, label %205

195:                                              ; preds = %194
  %196 = getelementptr inbounds %struct.key_user, ptr %30, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %196) #10
  %197 = getelementptr inbounds %struct.key_user, ptr %30, i32 0, i32 7
  %198 = load i32, ptr %197, align 4
  %199 = add i32 %198, -1
  store i32 %199, ptr %197, align 4
  %200 = getelementptr inbounds %struct.key_user, ptr %30, i32 0, i32 8
  %201 = load i32, ptr %200, align 4
  %202 = sub i32 %201, %29
  store i32 %202, ptr %200, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %203 = load i16, ptr %196, align 4
  %204 = add i16 %203, 1
  store i16 %204, ptr %196, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %205

205:                                              ; preds = %195, %194
  %206 = getelementptr inbounds %struct.key_user, ptr %30, i32 0, i32 3
  %207 = tail call zeroext i1 @refcount_dec_and_lock(ptr noundef %206, ptr noundef nonnull @key_user_lock) #10
  br i1 %207, label %208, label %219

208:                                              ; preds = %205
  tail call void @rb_erase(ptr noundef nonnull %30, ptr noundef nonnull @key_user_tree) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %209 = load i16, ptr @key_user_lock, align 4
  %210 = add i16 %209, 1
  store i16 %210, ptr @key_user_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  tail call void @kfree(ptr noundef nonnull %30) #10
  br label %219

211:                                              ; preds = %58, %52
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %212 = load i16, ptr %42, align 4
  %213 = add i16 %212, 1
  store i16 %213, ptr %42, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %214 = getelementptr inbounds %struct.key_user, ptr %30, i32 0, i32 3
  %215 = tail call zeroext i1 @refcount_dec_and_lock(ptr noundef %214, ptr noundef nonnull @key_user_lock) #10
  br i1 %215, label %216, label %219

216:                                              ; preds = %211
  tail call void @rb_erase(ptr noundef nonnull %30, ptr noundef nonnull @key_user_tree) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %217 = load i16, ptr @key_user_lock, align 4
  %218 = add i16 %217, 1
  store i16 %218, ptr @key_user_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  tail call void @kfree(ptr noundef nonnull %30) #10
  br label %219

219:                                              ; preds = %216, %211, %208, %205, %184, %24, %22, %12, %8
  %220 = phi ptr [ %23, %22 ], [ %74, %184 ], [ inttoptr (i32 -22 to ptr), %12 ], [ inttoptr (i32 -22 to ptr), %8 ], [ inttoptr (i32 -12 to ptr), %208 ], [ inttoptr (i32 -12 to ptr), %205 ], [ inttoptr (i32 -12 to ptr), %24 ], [ inttoptr (i32 -122 to ptr), %211 ], [ inttoptr (i32 -122 to ptr), %216 ]
  ret ptr %220
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_set_index_key(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @key_payload_reserve(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 12
  %4 = load i16, ptr %3, align 2
  %5 = zext i16 %4 to i32
  %6 = sub i32 %1, %5
  %7 = icmp eq i32 %5, %1
  br i1 %7, label %53, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 14
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %53, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.key_user, ptr %15, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr @key_quota_root_maxbytes, align 4
  %19 = load i32, ptr @key_quota_maxbytes, align 4
  %20 = getelementptr inbounds %struct.key_user, ptr %15, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %20) #10
  %21 = icmp sgt i32 %6, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %13
  %23 = load ptr, ptr %14, align 4
  %24 = getelementptr inbounds %struct.key_user, ptr %23, i32 0, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, %6
  br label %37

27:                                               ; preds = %13
  %28 = icmp eq i32 %17, 0
  %29 = select i1 %28, i32 %18, i32 %19
  %30 = load ptr, ptr %14, align 4
  %31 = getelementptr inbounds %struct.key_user, ptr %30, i32 0, i32 8
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %6
  %34 = icmp ugt i32 %33, %29
  %35 = icmp slt i32 %33, %32
  %36 = or i1 %34, %35
  br i1 %36, label %46, label %37

37:                                               ; preds = %27, %22
  %38 = phi i32 [ %26, %22 ], [ %33, %27 ]
  %39 = phi ptr [ %23, %22 ], [ %30, %27 ]
  %40 = getelementptr inbounds %struct.key_user, ptr %39, i32 0, i32 8
  store i32 %38, ptr %40, align 4
  %41 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 11
  %42 = load i16, ptr %41, align 4
  %43 = trunc i32 %6 to i16
  %44 = add i16 %42, %43
  store i16 %44, ptr %41, align 4
  %45 = load ptr, ptr %14, align 4
  br label %46

46:                                               ; preds = %37, %27
  %47 = phi ptr [ %45, %37 ], [ %30, %27 ]
  %48 = phi i1 [ true, %37 ], [ false, %27 ]
  %49 = phi i32 [ 0, %37 ], [ -122, %27 ]
  %50 = getelementptr inbounds %struct.key_user, ptr %47, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %51 = load i16, ptr %50, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %50, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br i1 %48, label %53, label %55

53:                                               ; preds = %46, %8, %2
  %54 = trunc i32 %1 to i16
  store i16 %54, ptr %3, align 2
  br label %55

55:                                               ; preds = %53, %46
  %56 = phi i32 [ 0, %53 ], [ %49, %46 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @key_instantiate_and_link(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca %struct.key_preparsed_payload, align 8
  %7 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store ptr null, ptr %7, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i32 40, i1 false)
  %8 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 15
  %9 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 15, i32 0, i32 4
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %6, align 8
  %11 = getelementptr inbounds %struct.key_preparsed_payload, ptr %6, i32 0, i32 3
  store ptr %1, ptr %11, align 8
  %12 = getelementptr inbounds %struct.key_preparsed_payload, ptr %6, i32 0, i32 4
  store i32 %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 15, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.key_type, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.key_preparsed_payload, ptr %6, i32 0, i32 5
  store i32 %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.key_preparsed_payload, ptr %6, i32 0, i32 6
  store i64 9223372036854775807, ptr %18, align 8
  %19 = getelementptr inbounds %struct.key_type, ptr %14, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = call i32 %20(ptr noundef nonnull %6) #10
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %54, label %25

25:                                               ; preds = %22, %5
  %26 = icmp eq ptr %3, null
  br i1 %26, label %49, label %27

27:                                               ; preds = %25
  %28 = call i32 @__key_link_lock(ptr noundef nonnull %3, ptr noundef %8) #10
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %54, label %30

30:                                               ; preds = %27
  %31 = call i32 @__key_link_begin(ptr noundef nonnull %3, ptr noundef %8, ptr noundef nonnull %7) #10
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %51, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.key, ptr %3, i32 0, i32 17
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %35, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %13, align 8
  %42 = getelementptr inbounds %struct.key_preparsed_payload, ptr %6, i32 0, i32 2
  %43 = getelementptr inbounds %struct.key_restriction, ptr %35, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = call i32 %38(ptr noundef nonnull %3, ptr noundef %41, ptr noundef %42, ptr noundef %44) #10
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %40, %37, %33
  %48 = call fastcc i32 @__key_instantiate_and_link(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef %4, ptr noundef nonnull %7)
  br label %51

49:                                               ; preds = %25
  %50 = call fastcc i32 @__key_instantiate_and_link(ptr noundef %0, ptr noundef nonnull %6, ptr noundef null, ptr noundef %4, ptr noundef nonnull %7)
  br label %54

51:                                               ; preds = %47, %40, %30
  %52 = phi i32 [ %48, %47 ], [ %45, %40 ], [ %31, %30 ]
  %53 = load ptr, ptr %7, align 4
  call void @__key_link_end(ptr noundef nonnull %3, ptr noundef %8, ptr noundef %53) #10
  br label %54

54:                                               ; preds = %51, %49, %27, %22
  %55 = phi i32 [ %23, %22 ], [ %28, %27 ], [ %52, %51 ], [ %50, %49 ]
  %56 = load ptr, ptr %13, align 8
  %57 = getelementptr inbounds %struct.key_type, ptr %56, i32 0, i32 4
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.key_type, ptr %56, i32 0, i32 5
  %62 = load ptr, ptr %61, align 4
  call void %62(ptr noundef nonnull %6) #10
  br label %63

63:                                               ; preds = %60, %54
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #10
  ret i32 %55
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__key_link_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__key_link_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__key_instantiate_and_link(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @key_construction_mutex) #10
  %6 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 13
  %7 = load i16, ptr %6, align 8
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %55

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 15, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.key_type, ptr %11, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %0, ptr noundef %1) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %55

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.key_user, ptr %18, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #10, !srcloc !13
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #10, !srcloc !16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  store volatile i16 1, ptr %6, align 8
  %21 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 14
  %22 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %21) #10
  %23 = icmp eq i32 %22, 0
  %24 = icmp eq ptr %2, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.key, ptr %2, i32 0, i32 14
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 256
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  tail call void @_set_bit(i32 noundef 8, ptr noundef %21) #10
  br label %31

31:                                               ; preds = %30, %25
  tail call void @__key_link(ptr noundef nonnull %2, ptr noundef %0, ptr noundef %4) #10
  br label %32

32:                                               ; preds = %31, %16
  %33 = icmp eq ptr %3, null
  br i1 %33, label %45, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.key, ptr %3, i32 0, i32 14
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %36, 32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.key, ptr %3, i32 0, i32 3
  tail call void @down_write(ptr noundef %40) #10
  %41 = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %35) #10
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  tail call void @key_schedule_gc_links() #10
  br label %44

44:                                               ; preds = %43, %39
  tail call void @up_write(ptr noundef %40) #10
  br label %45

45:                                               ; preds = %44, %34, %32
  %46 = getelementptr inbounds %struct.key_preparsed_payload, ptr %1, i32 0, i32 6
  %47 = load i64, ptr %46, align 8
  %48 = icmp eq i64 %47, 9223372036854775807
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 6
  store i64 %47, ptr %50, align 8
  %51 = load i64, ptr %46, align 8
  %52 = load i32, ptr @key_gc_delay, align 4
  %53 = zext i32 %52 to i64
  %54 = add i64 %51, %53
  tail call void @key_schedule_gc(i64 noundef %54) #10
  br label %57

55:                                               ; preds = %9, %5
  %56 = phi i32 [ -16, %5 ], [ %14, %9 ]
  tail call void @mutex_unlock(ptr noundef nonnull @key_construction_mutex) #10
  br label %59

57:                                               ; preds = %49, %45
  tail call void @mutex_unlock(ptr noundef nonnull @key_construction_mutex) #10
  br i1 %23, label %59, label %58

58:                                               ; preds = %57
  tail call void @wake_up_bit(ptr noundef %21, i32 noundef 3) #10
  br label %59

59:                                               ; preds = %58, %57, %55
  %60 = phi i32 [ %56, %55 ], [ 0, %58 ], [ 0, %57 ]
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__key_link_end(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @key_reject_and_link(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store ptr null, ptr %6, align 4
  %7 = icmp ne ptr %3, null
  br i1 %7, label %8, label %21

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.key, ptr %3, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %72

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 15
  %14 = tail call i32 @__key_link_lock(ptr noundef nonnull %3, ptr noundef %13) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = call i32 @__key_link_begin(ptr noundef nonnull %3, ptr noundef %13, ptr noundef nonnull %6) #10
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load ptr, ptr %6, align 4
  call void @__key_link_end(ptr noundef nonnull %3, ptr noundef %13, ptr noundef %20) #10
  br label %21

21:                                               ; preds = %19, %16, %12, %5
  %22 = phi i32 [ %17, %19 ], [ %17, %16 ], [ %14, %12 ], [ 0, %5 ]
  call void @mutex_lock(ptr noundef nonnull @key_construction_mutex) #10
  %23 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 13
  %24 = load i16, ptr %23, align 8
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %61

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.key_user, ptr %28, i32 0, i32 5
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #10, !srcloc !13
  %30 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 1, ptr elementtype(i32) %29) #10, !srcloc !16
  %31 = sub i32 0, %2
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  %32 = icmp slt i32 %31, 0
  %33 = trunc i32 %31 to i16
  %34 = select i1 %32, i16 %33, i16 1
  store volatile i16 %34, ptr %23, align 8
  %35 = call i64 @ktime_get_real_seconds() #10
  %36 = zext i32 %1 to i64
  %37 = add i64 %35, %36
  %38 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 6
  store i64 %37, ptr %38, align 8
  %39 = load i32, ptr @key_gc_delay, align 4
  %40 = zext i32 %39 to i64
  %41 = add i64 %37, %40
  call void @key_schedule_gc(i64 noundef %41) #10
  %42 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 14
  %43 = call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %42) #10
  %44 = icmp ne i32 %43, 0
  %45 = icmp eq i32 %22, 0
  %46 = select i1 %7, i1 %45, i1 false
  br i1 %46, label %47, label %48

47:                                               ; preds = %26
  call void @__key_link(ptr noundef nonnull %3, ptr noundef %0, ptr noundef nonnull %6) #10
  br label %48

48:                                               ; preds = %47, %26
  %49 = icmp eq ptr %4, null
  br i1 %49, label %61, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.key, ptr %4, i32 0, i32 14
  %52 = load volatile i32, ptr %51, align 4
  %53 = and i32 %52, 32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.key, ptr %4, i32 0, i32 3
  call void @down_write(ptr noundef %56) #10
  %57 = call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %51) #10
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  call void @key_schedule_gc_links() #10
  br label %60

60:                                               ; preds = %59, %55
  call void @up_write(ptr noundef %56) #10
  br label %61

61:                                               ; preds = %60, %50, %48, %21
  %62 = phi i32 [ %22, %48 ], [ %22, %50 ], [ %22, %60 ], [ -16, %21 ]
  %63 = phi i1 [ %44, %48 ], [ %44, %50 ], [ %44, %60 ], [ false, %21 ]
  call void @mutex_unlock(ptr noundef nonnull @key_construction_mutex) #10
  %64 = icmp eq i32 %22, 0
  %65 = select i1 %7, i1 %64, i1 false
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 15
  %68 = load ptr, ptr %6, align 4
  call void @__key_link_end(ptr noundef nonnull %3, ptr noundef %67, ptr noundef %68) #10
  br label %69

69:                                               ; preds = %66, %61
  br i1 %63, label %70, label %72

70:                                               ; preds = %69
  %71 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 14
  call void @wake_up_bit(ptr noundef %71, i32 noundef 3) #10
  br label %72

72:                                               ; preds = %70, %69, %8
  %73 = phi i32 [ -1, %8 ], [ %62, %70 ], [ %62, %69 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  ret i32 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_schedule_gc(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__key_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @key_invalidate(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 14
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 3
  tail call void @down_write(ptr noundef %7) #10
  %8 = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %2) #10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @key_schedule_gc_links() #10
  br label %11

11:                                               ; preds = %10, %6
  tail call void @up_write(ptr noundef %7) #10
  br label %12

12:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @key_put(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #10, !srcloc !13
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #10, !srcloc !19
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %13, label %9, !prof !15

9:                                                ; preds = %7
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef 3) #10
  br label %13

10:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %11 = load ptr, ptr @system_wq, align 4
  %12 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %11, ptr noundef nonnull @key_gc_work) #10
  br label %13

13:                                               ; preds = %10, %9, %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @key_lookup(i32 noundef %0) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @key_serial_lock) #10
  %2 = load ptr, ptr @key_serial_tree, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %15, %1
  %5 = phi ptr [ %17, %15 ], [ %2, %1 ]
  %6 = getelementptr i8, ptr %5, i32 -4
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, %0
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 2
  br label %15

11:                                               ; preds = %4
  %12 = icmp slt i32 %7, %0
  br i1 %12, label %13, label %20

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 1
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi ptr [ %10, %9 ], [ %14, %13 ]
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %4

19:                                               ; preds = %42, %15, %1
  br label %44

20:                                               ; preds = %11
  %21 = getelementptr i8, ptr %5, i32 -8
  %22 = load volatile i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %34, %20
  %25 = phi i32 [ %32, %34 ], [ %22, %20 ]
  %26 = add i32 %25, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #10, !srcloc !13
  br label %27

27:                                               ; preds = %27, %24
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 %25, i32 %26, ptr elementtype(i32) %21) #10, !srcloc !21
  %29 = extractvalue { i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %27

31:                                               ; preds = %27
  %32 = extractvalue { i32, i32 } %28, 1
  %33 = icmp eq i32 %32, %25
  br i1 %33, label %36, label %34, !prof !15

34:                                               ; preds = %31
  %35 = icmp eq i32 %32, 0
  br i1 %35, label %36, label %24

36:                                               ; preds = %34, %31, %20
  %37 = phi i32 [ 0, %20 ], [ 0, %34 ], [ %25, %31 ]
  %38 = add i32 %37, 1
  %39 = or i32 %38, %37
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %42, label %41, !prof !15

41:                                               ; preds = %36
  tail call void @refcount_warn_saturate(ptr noundef %21, i32 noundef 0) #10
  br label %42

42:                                               ; preds = %41, %36
  %43 = icmp eq i32 %37, 0
  br i1 %43, label %19, label %44

44:                                               ; preds = %42, %19
  %45 = phi ptr [ %21, %42 ], [ inttoptr (i32 -126 to ptr), %19 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %46 = load i16, ptr @key_serial_lock, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr @key_serial_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  ret ptr %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @key_type_lookup(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void @down_read(ptr noundef nonnull @key_types_sem) #10
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @key_types_list, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @key_types_list
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 -76
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @strcmp(ptr noundef %8, ptr noundef %0)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %2

11:                                               ; preds = %2
  tail call void @up_read(ptr noundef nonnull @key_types_sem) #10
  br label %14

12:                                               ; preds = %6
  %13 = getelementptr i8, ptr %4, i32 -76
  br label %14

14:                                               ; preds = %12, %11
  %15 = phi ptr [ inttoptr (i32 -126 to ptr), %11 ], [ %13, %12 ]
  ret ptr %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @key_set_timeout(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 3
  tail call void @down_write(ptr noundef %3) #10
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = tail call i64 @ktime_get_real_seconds() #10
  %7 = zext i32 %1 to i64
  %8 = add i64 %6, %7
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i64 [ %8, %5 ], [ 0, %2 ]
  %11 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 6
  store i64 %10, ptr %11, align 8
  %12 = load i32, ptr @key_gc_delay, align 4
  %13 = zext i32 %12 to i64
  %14 = add i64 %10, %13
  tail call void @key_schedule_gc(i64 noundef %14) #10
  tail call void @up_write(ptr noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @key_type_put(ptr nocapture readnone %0) local_unnamed_addr #0 {
  tail call void @up_read(ptr noundef nonnull @key_types_sem) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @key_create_or_update(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca %struct.keyring_index_key, align 4
  %9 = alloca %struct.key_preparsed_payload, align 8
  %10 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #10
  %11 = getelementptr inbounds %struct.keyring_index_key, ptr %8, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store ptr %2, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 0, i32 48, i1 false), !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #10
  store ptr null, ptr %10, align 4
  %12 = tail call ptr @llvm.thread.pointer() #10
  %13 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 83
  %14 = load ptr, ptr %13, align 8
  tail call void @down_read(ptr noundef nonnull @key_types_sem) #10
  br label %15

15:                                               ; preds = %19, %7
  %16 = phi ptr [ @key_types_list, %7 ], [ %17, %19 ]
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, @key_types_list
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %17, i32 -76
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @strcmp(ptr noundef %21, ptr noundef %1) #10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %15

24:                                               ; preds = %15
  tail call void @up_read(ptr noundef nonnull @key_types_sem) #10
  br label %165

25:                                               ; preds = %19
  %26 = getelementptr i8, ptr %17, i32 -76
  %27 = getelementptr inbounds %struct.keyring_index_key, ptr %8, i32 0, i32 2
  store ptr %26, ptr %27, align 4
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %165, label %29

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %17, i32 -52
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %163, label %33

33:                                               ; preds = %29
  %34 = icmp eq ptr %2, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  %36 = getelementptr i8, ptr %17, i32 -60
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %163, label %39

39:                                               ; preds = %35, %33
  %40 = ptrtoint ptr %0 to i32
  %41 = and i32 %40, -2
  %42 = inttoptr i32 %41 to ptr
  %43 = and i32 %6, 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.key, ptr %42, i32 0, i32 17
  %47 = load ptr, ptr %46, align 4
  br label %48

48:                                               ; preds = %45, %39
  %49 = phi ptr [ null, %39 ], [ %47, %45 ]
  %50 = getelementptr inbounds %struct.key, ptr %42, i32 0, i32 15, i32 0, i32 2
  %51 = load ptr, ptr %50, align 8
  %52 = icmp eq ptr %51, @key_type_keyring
  br i1 %52, label %53, label %163

53:                                               ; preds = %48
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 0, i32 48, i1 false)
  store ptr %2, ptr %9, align 8
  %54 = getelementptr inbounds %struct.key_preparsed_payload, ptr %9, i32 0, i32 3
  store ptr %3, ptr %54, align 8
  %55 = getelementptr inbounds %struct.key_preparsed_payload, ptr %9, i32 0, i32 4
  store i32 %4, ptr %55, align 4
  %56 = getelementptr i8, ptr %17, i32 -72
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.key_preparsed_payload, ptr %9, i32 0, i32 5
  store i32 %57, ptr %58, align 8
  %59 = getelementptr inbounds %struct.key_preparsed_payload, ptr %9, i32 0, i32 6
  store i64 9223372036854775807, ptr %59, align 8
  %60 = getelementptr i8, ptr %17, i32 -60
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %73, label %63

63:                                               ; preds = %53
  %64 = call i32 %61(ptr noundef nonnull %9) #10
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = inttoptr i32 %64 to ptr
  br label %154

68:                                               ; preds = %63
  br i1 %34, label %69, label %73

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.key_preparsed_payload, ptr %9, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  store ptr %71, ptr %11, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %154, label %73

73:                                               ; preds = %69, %68, %53
  %74 = phi ptr [ %2, %68 ], [ %71, %69 ], [ %2, %53 ]
  %75 = call i32 @strlen(ptr noundef %74)
  %76 = trunc i32 %75 to i16
  %77 = getelementptr inbounds %struct.keyring_index_key, ptr %8, i32 0, i32 1
  store i16 %76, ptr %77, align 4
  call void @key_set_index_key(ptr noundef nonnull %8) #10
  %78 = call i32 @__key_link_lock(ptr noundef %42, ptr noundef nonnull %8) #10
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = inttoptr i32 %78 to ptr
  br label %154

82:                                               ; preds = %73
  %83 = call i32 @__key_link_begin(ptr noundef %42, ptr noundef nonnull %8, ptr noundef nonnull %10) #10
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = inttoptr i32 %83 to ptr
  br label %151

87:                                               ; preds = %82
  %88 = icmp eq ptr %49, null
  br i1 %88, label %101, label %89

89:                                               ; preds = %87
  %90 = load ptr, ptr %49, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %101, label %92

92:                                               ; preds = %89
  %93 = load ptr, ptr %27, align 4
  %94 = getelementptr inbounds %struct.key_preparsed_payload, ptr %9, i32 0, i32 2
  %95 = getelementptr inbounds %struct.key_restriction, ptr %49, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = call i32 %90(ptr noundef %42, ptr noundef %93, ptr noundef %94, ptr noundef %96) #10
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = inttoptr i32 %97 to ptr
  br label %151

101:                                              ; preds = %92, %89, %87
  %102 = load ptr, ptr %13, align 8
  %103 = call i32 @key_task_permission(ptr noundef %0, ptr noundef %102, i32 noundef 3) #10
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = inttoptr i32 %103 to ptr
  br label %151

107:                                              ; preds = %101
  %108 = load ptr, ptr %27, align 4
  %109 = getelementptr inbounds %struct.key_type, ptr %108, i32 0, i32 7
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = call ptr @find_key_to_update(ptr noundef %0, ptr noundef nonnull %8) #10
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %167

115:                                              ; preds = %112, %107
  %116 = icmp eq i32 %5, -1
  %117 = load ptr, ptr %27, align 4
  br i1 %116, label %118, label %130

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.key_type, ptr %117, i32 0, i32 13
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  %122 = select i1 %121, i32 956366848, i32 989921280
  %123 = icmp eq ptr %117, @key_type_keyring
  br i1 %123, label %128, label %124

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.key_type, ptr %117, i32 0, i32 7
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %130, label %128

128:                                              ; preds = %124, %118
  %129 = or i32 %122, 67108864
  br label %130

130:                                              ; preds = %128, %124, %115
  %131 = phi i32 [ %129, %128 ], [ %122, %124 ], [ %5, %115 ]
  %132 = load ptr, ptr %11, align 4
  %133 = getelementptr inbounds %struct.cred, ptr %14, i32 0, i32 7
  %134 = getelementptr inbounds %struct.cred, ptr %14, i32 0, i32 8
  %135 = load i32, ptr %133, align 4
  %136 = insertvalue [1 x i32] undef, i32 %135, 0
  %137 = load i32, ptr %134, align 4
  %138 = insertvalue [1 x i32] undef, i32 %137, 0
  %139 = call ptr @key_alloc(ptr noundef %117, ptr noundef %132, [1 x i32] %136, [1 x i32] %138, ptr undef, i32 noundef %131, i32 noundef %6, ptr noundef null)
  %140 = icmp ugt ptr %139, inttoptr (i32 -4096 to ptr)
  br i1 %140, label %151, label %141

141:                                              ; preds = %130
  %142 = call fastcc i32 @__key_instantiate_and_link(ptr noundef %139, ptr noundef nonnull %9, ptr noundef %42, ptr noundef null, ptr noundef nonnull %10)
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  call void @key_put(ptr noundef %139)
  %145 = inttoptr i32 %142 to ptr
  br label %151

146:                                              ; preds = %141
  %147 = and i32 %40, 1
  %148 = ptrtoint ptr %139 to i32
  %149 = or i32 %147, %148
  %150 = inttoptr i32 %149 to ptr
  br label %151

151:                                              ; preds = %146, %144, %130, %105, %99, %85
  %152 = phi ptr [ %86, %85 ], [ %100, %99 ], [ %106, %105 ], [ %145, %144 ], [ %150, %146 ], [ %139, %130 ]
  %153 = load ptr, ptr %10, align 4
  call void @__key_link_end(ptr noundef %42, ptr noundef nonnull %8, ptr noundef %153) #10
  br label %154

154:                                              ; preds = %181, %179, %151, %80, %69, %66
  %155 = phi ptr [ %67, %66 ], [ %81, %80 ], [ %152, %151 ], [ %180, %179 ], [ inttoptr (i32 -22 to ptr), %69 ], [ %182, %181 ]
  %156 = load ptr, ptr %27, align 4
  %157 = getelementptr inbounds %struct.key_type, ptr %156, i32 0, i32 4
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %163, label %160

160:                                              ; preds = %154
  %161 = getelementptr inbounds %struct.key_type, ptr %156, i32 0, i32 5
  %162 = load ptr, ptr %161, align 4
  call void %162(ptr noundef nonnull %9) #10
  br label %163

163:                                              ; preds = %160, %154, %48, %35, %29
  %164 = phi ptr [ inttoptr (i32 -20 to ptr), %48 ], [ %155, %160 ], [ %155, %154 ], [ inttoptr (i32 -22 to ptr), %35 ], [ inttoptr (i32 -22 to ptr), %29 ]
  call void @up_read(ptr noundef nonnull @key_types_sem) #10
  br label %165

165:                                              ; preds = %163, %25, %24
  %166 = phi ptr [ %164, %163 ], [ inttoptr (i32 -19 to ptr), %24 ], [ inttoptr (i32 -19 to ptr), %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #10
  ret ptr %166

167:                                              ; preds = %112
  %168 = load ptr, ptr %10, align 4
  call void @__key_link_end(ptr noundef %42, ptr noundef nonnull %8, ptr noundef %168) #10
  %169 = ptrtoint ptr %113 to i32
  %170 = and i32 %169, -2
  %171 = inttoptr i32 %170 to ptr
  %172 = getelementptr inbounds %struct.key, ptr %171, i32 0, i32 14
  %173 = load volatile i32, ptr %172, align 4
  %174 = and i32 %173, 8
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %181, label %176

176:                                              ; preds = %167
  %177 = call i32 @wait_for_key_construction(ptr noundef %171, i1 noundef zeroext true) #10
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  call fastcc void @key_ref_put(ptr noundef nonnull %113)
  %180 = inttoptr i32 %177 to ptr
  br label %154

181:                                              ; preds = %176, %167
  %182 = call fastcc ptr @__key_update(ptr noundef nonnull %113, ptr noundef nonnull %9)
  br label %154
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_key_to_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_key_construction(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @key_ref_put(ptr noundef %0) unnamed_addr #5 {
  %2 = ptrtoint ptr %0 to i32
  %3 = and i32 %2, -2
  %4 = inttoptr i32 %3 to ptr
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %4) #10, !srcloc !13
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 1, ptr nonnull elementtype(i32) %4) #10, !srcloc !19
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = icmp sgt i32 %8, 0
  br i1 %11, label %16, label %12, !prof !15

12:                                               ; preds = %10
  tail call void @refcount_warn_saturate(ptr noundef nonnull %4, i32 noundef 3) #10
  br label %16

13:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %14 = load ptr, ptr @system_wq, align 4
  %15 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %14, ptr noundef nonnull @key_gc_work) #10
  br label %16

16:                                               ; preds = %13, %12, %10, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__key_update(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = ptrtoint ptr %0 to i32
  %4 = and i32 %3, -2
  %5 = inttoptr i32 %4 to ptr
  %6 = tail call ptr @llvm.thread.pointer() #10
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 83
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @key_task_permission(ptr noundef %0, ptr noundef %8, i32 noundef 3) #10
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.key, ptr %5, i32 0, i32 15, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.key_type, ptr %13, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.key, ptr %5, i32 0, i32 3
  tail call void @down_write(ptr noundef %18) #10
  %19 = load ptr, ptr %12, align 8
  %20 = getelementptr inbounds %struct.key_type, ptr %19, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef %5, ptr noundef %1) #10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  %25 = getelementptr inbounds %struct.key, ptr %5, i32 0, i32 13
  store volatile i16 1, ptr %25, align 8
  tail call void @up_write(ptr noundef %18) #10
  br label %28

26:                                               ; preds = %17
  tail call void @up_write(ptr noundef %18) #10
  %27 = icmp slt i32 %22, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %43, %26, %24
  %29 = phi ptr [ %44, %43 ], [ %0, %26 ], [ %0, %24 ]
  ret ptr %29

30:                                               ; preds = %26, %11, %2
  %31 = phi i32 [ %9, %2 ], [ %22, %26 ], [ -17, %11 ]
  %32 = icmp eq i32 %4, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %5) #10, !srcloc !13
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #10, !srcloc !19
  %35 = extractvalue { i32, i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = icmp sgt i32 %35, 0
  br i1 %38, label %43, label %39, !prof !15

39:                                               ; preds = %37
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #10
  br label %43

40:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %41 = load ptr, ptr @system_wq, align 4
  %42 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %41, ptr noundef nonnull @key_gc_work) #10
  br label %43

43:                                               ; preds = %40, %39, %37, %30
  %44 = inttoptr i32 %31 to ptr
  br label %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @key_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.key_preparsed_payload, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #10
  %5 = ptrtoint ptr %0 to i32
  %6 = and i32 %5, -2
  %7 = inttoptr i32 %6 to ptr
  %8 = tail call ptr @llvm.thread.pointer() #10
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 83
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @key_task_permission(ptr noundef %0, ptr noundef %10, i32 noundef 3) #10
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %51, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.key, ptr %7, i32 0, i32 15, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.key_type, ptr %15, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %51, label %19

19:                                               ; preds = %13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i32 40, i1 false)
  %20 = getelementptr inbounds %struct.key_preparsed_payload, ptr %4, i32 0, i32 3
  store ptr %1, ptr %20, align 8
  %21 = getelementptr inbounds %struct.key_preparsed_payload, ptr %4, i32 0, i32 4
  store i32 %2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.key_type, ptr %15, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.key_preparsed_payload, ptr %4, i32 0, i32 5
  store i32 %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.key_preparsed_payload, ptr %4, i32 0, i32 6
  store i64 9223372036854775807, ptr %25, align 8
  %26 = getelementptr inbounds %struct.key_type, ptr %15, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %19
  %30 = call i32 %27(ptr noundef nonnull %4) #10
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %29, %19
  %33 = getelementptr inbounds %struct.key, ptr %7, i32 0, i32 3
  call void @down_write(ptr noundef %33) #10
  %34 = load ptr, ptr %14, align 8
  %35 = getelementptr inbounds %struct.key_type, ptr %34, i32 0, i32 7
  %36 = load ptr, ptr %35, align 4
  %37 = call i32 %36(ptr noundef %7, ptr noundef nonnull %4) #10
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  %40 = getelementptr inbounds %struct.key, ptr %7, i32 0, i32 13
  store volatile i16 1, ptr %40, align 8
  br label %41

41:                                               ; preds = %39, %32
  call void @up_write(ptr noundef %33) #10
  br label %42

42:                                               ; preds = %41, %29
  %43 = phi i32 [ %30, %29 ], [ %37, %41 ]
  %44 = load ptr, ptr %14, align 8
  %45 = getelementptr inbounds %struct.key_type, ptr %44, i32 0, i32 4
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.key_type, ptr %44, i32 0, i32 5
  %50 = load ptr, ptr %49, align 4
  call void %50(ptr noundef nonnull %4) #10
  br label %51

51:                                               ; preds = %48, %42, %13, %3
  %52 = phi i32 [ %11, %3 ], [ -95, %13 ], [ %43, %48 ], [ %43, %42 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #10
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @key_revoke(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 3
  tail call void @down_write(ptr noundef %2) #10
  %3 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 14
  %4 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %3) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 15, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.key_type, ptr %8, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  tail call void %10(ptr noundef %0) #10
  br label %13

13:                                               ; preds = %12, %6
  %14 = tail call i64 @ktime_get_real_seconds() #10
  %15 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 6
  %16 = load i64, ptr %15, align 8
  %17 = icmp eq i64 %16, 0
  %18 = icmp sgt i64 %16, %14
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  store i64 %14, ptr %15, align 8
  %21 = load i32, ptr @key_gc_delay, align 4
  %22 = zext i32 %21 to i64
  %23 = add i64 %14, %22
  tail call void @key_schedule_gc(i64 noundef %23) #10
  br label %24

24:                                               ; preds = %20, %13, %1
  tail call void @up_write(ptr noundef %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_schedule_gc_links() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @generic_key_instantiate(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.key_preparsed_payload, ptr %1, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 12
  %6 = load i16, ptr %5, align 2
  %7 = zext i16 %6 to i32
  %8 = sub i32 %4, %7
  %9 = icmp eq i32 %4, %7
  br i1 %9, label %55, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 14
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %55, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.key_user, ptr %17, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr @key_quota_root_maxbytes, align 4
  %21 = load i32, ptr @key_quota_maxbytes, align 4
  %22 = getelementptr inbounds %struct.key_user, ptr %17, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %22) #10
  %23 = icmp sgt i32 %8, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %15
  %25 = load ptr, ptr %16, align 4
  %26 = getelementptr inbounds %struct.key_user, ptr %25, i32 0, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %8
  br label %39

29:                                               ; preds = %15
  %30 = icmp eq i32 %19, 0
  %31 = select i1 %30, i32 %20, i32 %21
  %32 = load ptr, ptr %16, align 4
  %33 = getelementptr inbounds %struct.key_user, ptr %32, i32 0, i32 8
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %8
  %36 = icmp ugt i32 %35, %31
  %37 = icmp slt i32 %35, %34
  %38 = or i1 %36, %37
  br i1 %38, label %48, label %39

39:                                               ; preds = %29, %24
  %40 = phi i32 [ %28, %24 ], [ %35, %29 ]
  %41 = phi ptr [ %25, %24 ], [ %32, %29 ]
  %42 = getelementptr inbounds %struct.key_user, ptr %41, i32 0, i32 8
  store i32 %40, ptr %42, align 4
  %43 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 11
  %44 = load i16, ptr %43, align 4
  %45 = trunc i32 %8 to i16
  %46 = add i16 %44, %45
  store i16 %46, ptr %43, align 4
  %47 = load ptr, ptr %16, align 4
  br label %48

48:                                               ; preds = %39, %29
  %49 = phi ptr [ %47, %39 ], [ %32, %29 ]
  %50 = phi i1 [ true, %39 ], [ false, %29 ]
  %51 = phi i32 [ 0, %39 ], [ -122, %29 ]
  %52 = getelementptr inbounds %struct.key_user, ptr %49, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %53 = load i16, ptr %52, align 4
  %54 = add i16 %53, 1
  store i16 %54, ptr %52, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br i1 %50, label %55, label %69

55:                                               ; preds = %48, %10, %2
  %56 = trunc i32 %4 to i16
  store i16 %56, ptr %5, align 2
  %57 = getelementptr inbounds %struct.key_preparsed_payload, ptr %1, i32 0, i32 2
  %58 = load ptr, ptr %57, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !23
  %59 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16
  store volatile ptr %58, ptr %59, align 4
  %60 = getelementptr %struct.key_preparsed_payload, ptr %1, i32 0, i32 2, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr %struct.key, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 1
  store ptr %61, ptr %62, align 4
  %63 = getelementptr %struct.key_preparsed_payload, ptr %1, i32 0, i32 2, i32 0, i32 2
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr %struct.key, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 2
  store ptr %64, ptr %65, align 4
  %66 = getelementptr %struct.key_preparsed_payload, ptr %1, i32 0, i32 2, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr %struct.key, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 3
  store ptr %67, ptr %68, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %57, i8 0, i64 16, i1 false)
  br label %69

69:                                               ; preds = %55, %48
  %70 = phi i32 [ 0, %55 ], [ %51, %48 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_key_type(ptr noundef %0) #0 {
  tail call void @down_write(ptr noundef nonnull @key_types_sem) #10
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @key_types_list, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @key_types_list
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 -76
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %0, align 4
  %10 = tail call i32 @strcmp(ptr noundef %8, ptr noundef %9)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %2

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.key_type, ptr %0, i32 0, i32 19
  %14 = load ptr, ptr @key_types_list, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 4
  store ptr %14, ptr %13, align 4
  %16 = getelementptr inbounds %struct.key_type, ptr %0, i32 0, i32 19, i32 1
  store ptr @key_types_list, ptr %16, align 4
  store volatile ptr %13, ptr @key_types_list, align 4
  %17 = load ptr, ptr %0, align 4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %17) #12
  br label %19

19:                                               ; preds = %12, %6
  %20 = phi i32 [ 0, %12 ], [ -17, %6 ]
  tail call void @up_write(ptr noundef nonnull @key_types_sem) #10
  ret i32 %20
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unregister_key_type(ptr noundef %0) #0 {
  tail call void @down_write(ptr noundef nonnull @key_types_sem) #10
  %2 = getelementptr inbounds %struct.key_type, ptr %0, i32 0, i32 19
  %3 = getelementptr inbounds %struct.key_type, ptr %0, i32 0, i32 19, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  store volatile ptr %2, ptr %2, align 4
  store ptr %2, ptr %3, align 4
  tail call void @downgrade_write(ptr noundef nonnull @key_types_sem) #10
  tail call void @key_gc_keytype(ptr noundef %0) #10
  %7 = load ptr, ptr %0, align 4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %7) #12
  tail call void @up_read(ptr noundef nonnull @key_types_sem) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @downgrade_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_gc_keytype(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @key_init() local_unnamed_addr #7 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.4, i32 noundef 136, i32 noundef 0, i32 noundef 270336, ptr noundef null) #10
  store ptr %1, ptr @key_jar, align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @key_types_list, i32 0, i32 1), align 4
  store ptr getelementptr inbounds (%struct.key_type, ptr @key_type_keyring, i32 0, i32 19), ptr getelementptr inbounds (%struct.list_head, ptr @key_types_list, i32 0, i32 1), align 4
  store ptr @key_types_list, ptr getelementptr inbounds (%struct.key_type, ptr @key_type_keyring, i32 0, i32 19), align 4
  store ptr %2, ptr getelementptr inbounds (%struct.key_type, ptr @key_type_keyring, i32 0, i32 19, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.key_type, ptr @key_type_keyring, i32 0, i32 19), ptr %2, align 4
  %3 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @key_types_list, i32 0, i32 1), align 4
  store ptr getelementptr inbounds (%struct.key_type, ptr @key_type_dead, i32 0, i32 19), ptr getelementptr inbounds (%struct.list_head, ptr @key_types_list, i32 0, i32 1), align 4
  store ptr @key_types_list, ptr getelementptr inbounds (%struct.key_type, ptr @key_type_dead, i32 0, i32 19), align 4
  store ptr %3, ptr getelementptr inbounds (%struct.key_type, ptr @key_type_dead, i32 0, i32 19, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.key_type, ptr @key_type_dead, i32 0, i32 19), ptr %3, align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @key_types_list, i32 0, i32 1), align 4
  store ptr getelementptr inbounds (%struct.key_type, ptr @key_type_user, i32 0, i32 19), ptr getelementptr inbounds (%struct.list_head, ptr @key_types_list, i32 0, i32 1), align 4
  store ptr @key_types_list, ptr getelementptr inbounds (%struct.key_type, ptr @key_type_user, i32 0, i32 19), align 4
  store ptr %4, ptr getelementptr inbounds (%struct.key_type, ptr @key_type_user, i32 0, i32 19, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.key_type, ptr @key_type_user, i32 0, i32 19), ptr %4, align 4
  %5 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @key_types_list, i32 0, i32 1), align 4
  store ptr getelementptr inbounds (%struct.key_type, ptr @key_type_logon, i32 0, i32 19), ptr getelementptr inbounds (%struct.list_head, ptr @key_types_list, i32 0, i32 1), align 4
  store ptr @key_types_list, ptr getelementptr inbounds (%struct.key_type, ptr @key_type_logon, i32 0, i32 19), align 4
  store ptr %5, ptr getelementptr inbounds (%struct.key_type, ptr @key_type_logon, i32 0, i32 19, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.key_type, ptr @key_type_logon, i32 0, i32 19), ptr %5, align 4
  store i32 0, ptr @root_key_user, align 4
  store ptr null, ptr getelementptr inbounds (%struct.key_user, ptr @root_key_user, i32 0, i32 0, i32 1), align 4
  store ptr null, ptr getelementptr inbounds (%struct.key_user, ptr @root_key_user, i32 0, i32 0, i32 2), align 4
  store ptr @root_key_user, ptr @key_user_tree, align 4
  tail call void @rb_insert_color(ptr noundef nonnull @root_key_user, ptr noundef nonnull @key_user_tree) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_task_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

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
!8 = !{i64 2149195263}
!9 = !{i64 2149191087}
!10 = !{i64 2149191162, i64 2149191189, i64 2149191236, i64 2149191258, i64 2149191286, i64 2149191306}
!11 = !{i64 2149218266}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 564904, i64 2148066470, i64 2148066496, i64 2148066543, i64 2148066565, i64 2148066593, i64 2148066613}
!14 = !{i64 2148131190, i64 2148131222, i64 2148131251, i64 2148131285, i64 2148131316, i64 2148131339}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2148129732, i64 2148129758, i64 2148129787, i64 2148129821, i64 2148129852, i64 2148129875}
!17 = !{i64 2152728015}
!18 = !{i64 2148231412}
!19 = !{i64 2148133547, i64 2148133579, i64 2148133608, i64 2148133642, i64 2148133673, i64 2148133696}
!20 = !{i64 2149269178}
!21 = !{i64 550967, i64 550991, i64 551012, i64 551029, i64 551046}
!22 = !{!"auto-init"}
!23 = !{i64 2152757142}
