; ModuleID = '/llk/IR/kernel/cred.c_pt.bc'
source_filename = "../kernel/cred.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___put_cred:\09\09\09\09\09"
module asm "\09.asciz \09\22__put_cred\22\09\09\09\09\09"
module asm "__kstrtabns___put_cred:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_task_cred:\09\09\09\09\09"
module asm "\09.asciz \09\22get_task_cred\22\09\09\09\09\09"
module asm "__kstrtabns_get_task_cred:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_prepare_creds:\09\09\09\09\09"
module asm "\09.asciz \09\22prepare_creds\22\09\09\09\09\09"
module asm "__kstrtabns_prepare_creds:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_commit_creds:\09\09\09\09\09"
module asm "\09.asciz \09\22commit_creds\22\09\09\09\09\09"
module asm "__kstrtabns_commit_creds:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_abort_creds:\09\09\09\09\09"
module asm "\09.asciz \09\22abort_creds\22\09\09\09\09\09"
module asm "__kstrtabns_abort_creds:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_override_creds:\09\09\09\09\09"
module asm "\09.asciz \09\22override_creds\22\09\09\09\09\09"
module asm "__kstrtabns_override_creds:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_revert_creds:\09\09\09\09\09"
module asm "\09.asciz \09\22revert_creds\22\09\09\09\09\09"
module asm "__kstrtabns_revert_creds:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cred_fscmp:\09\09\09\09\09"
module asm "\09.asciz \09\22cred_fscmp\22\09\09\09\09\09"
module asm "__kstrtabns_cred_fscmp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_prepare_kernel_cred:\09\09\09\09\09"
module asm "\09.asciz \09\22prepare_kernel_cred\22\09\09\09\09\09"
module asm "__kstrtabns_prepare_kernel_cred:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_security_override:\09\09\09\09\09"
module asm "\09.asciz \09\22set_security_override\22\09\09\09\09\09"
module asm "__kstrtabns_set_security_override:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_security_override_from_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22set_security_override_from_ctx\22\09\09\09\09\09"
module asm "__kstrtabns_set_security_override_from_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_create_files_as:\09\09\09\09\09"
module asm "\09.asciz \09\22set_create_files_as\22\09\09\09\09\09"
module asm "__kstrtabns_set_create_files_as:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i32, %struct.atomic_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic_t, %struct.ratelimit_state }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.7 }
%union.anon.7 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.9, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.ucounts = type { %struct.hlist_node, ptr, %struct.kuid_t, %struct.atomic_t, [14 x %struct.atomic_t] }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.12 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.12 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.87, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.13 }
%struct.llist_node = type { ptr }
%union.anon.13 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.57 }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.tlbflush_unmap_batch = type {}
%union.anon.87 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.91, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.92, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.93, ptr, %struct.address_space, %struct.list_head, %union.anon.94, i32, i32, ptr, ptr }
%union.anon.91 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%union.anon.92 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.93 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.94 = type { ptr }

@root_user = external dso_local global %struct.user_struct, align 8
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@init_ucounts = external dso_local global %struct.ucounts, align 4
@init_groups = internal global %struct.group_info { %struct.atomic_t { i32 2 }, i32 0, [0 x %struct.kgid_t] zeroinitializer }, align 4
@init_cred = dso_local global %struct.cred { %struct.atomic_t { i32 4 }, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, i32 0, %struct.kernel_cap_struct zeroinitializer, %struct.kernel_cap_struct { [2 x i32] [i32 -1, i32 511] }, %struct.kernel_cap_struct { [2 x i32] [i32 -1, i32 511] }, %struct.kernel_cap_struct { [2 x i32] [i32 -1, i32 511] }, %struct.kernel_cap_struct zeroinitializer, i8 0, ptr null, ptr null, ptr null, ptr null, ptr @root_user, ptr @init_user_ns, ptr @init_ucounts, ptr @init_groups, %union.anon.12 zeroinitializer }, align 4
@__kstrtab___put_cred = external dso_local constant [0 x i8], align 1
@__kstrtabns___put_cred = external dso_local constant [0 x i8], align 1
@__ksymtab___put_cred = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__put_cred to i32), ptr @__kstrtab___put_cred, ptr @__kstrtabns___put_cred }, section "___ksymtab+__put_cred", align 4
@__kstrtab_get_task_cred = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_task_cred = external dso_local constant [0 x i8], align 1
@__ksymtab_get_task_cred = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_task_cred to i32), ptr @__kstrtab_get_task_cred, ptr @__kstrtabns_get_task_cred }, section "___ksymtab+get_task_cred", align 4
@cred_jar = internal unnamed_addr global ptr null, align 4
@__kstrtab_prepare_creds = external dso_local constant [0 x i8], align 1
@__kstrtabns_prepare_creds = external dso_local constant [0 x i8], align 1
@__ksymtab_prepare_creds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @prepare_creds to i32), ptr @__kstrtab_prepare_creds, ptr @__kstrtabns_prepare_creds }, section "___ksymtab+prepare_creds", align 4
@suid_dumpable = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_commit_creds = external dso_local constant [0 x i8], align 1
@__kstrtabns_commit_creds = external dso_local constant [0 x i8], align 1
@__ksymtab_commit_creds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @commit_creds to i32), ptr @__kstrtab_commit_creds, ptr @__kstrtabns_commit_creds }, section "___ksymtab+commit_creds", align 4
@__kstrtab_abort_creds = external dso_local constant [0 x i8], align 1
@__kstrtabns_abort_creds = external dso_local constant [0 x i8], align 1
@__ksymtab_abort_creds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @abort_creds to i32), ptr @__kstrtab_abort_creds, ptr @__kstrtabns_abort_creds }, section "___ksymtab+abort_creds", align 4
@__kstrtab_override_creds = external dso_local constant [0 x i8], align 1
@__kstrtabns_override_creds = external dso_local constant [0 x i8], align 1
@__ksymtab_override_creds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @override_creds to i32), ptr @__kstrtab_override_creds, ptr @__kstrtabns_override_creds }, section "___ksymtab+override_creds", align 4
@__kstrtab_revert_creds = external dso_local constant [0 x i8], align 1
@__kstrtabns_revert_creds = external dso_local constant [0 x i8], align 1
@__ksymtab_revert_creds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @revert_creds to i32), ptr @__kstrtab_revert_creds, ptr @__kstrtabns_revert_creds }, section "___ksymtab+revert_creds", align 4
@__kstrtab_cred_fscmp = external dso_local constant [0 x i8], align 1
@__kstrtabns_cred_fscmp = external dso_local constant [0 x i8], align 1
@__ksymtab_cred_fscmp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cred_fscmp to i32), ptr @__kstrtab_cred_fscmp, ptr @__kstrtabns_cred_fscmp }, section "___ksymtab+cred_fscmp", align 4
@.str = private unnamed_addr constant [9 x i8] c"cred_jar\00", align 1
@__kstrtab_prepare_kernel_cred = external dso_local constant [0 x i8], align 1
@__kstrtabns_prepare_kernel_cred = external dso_local constant [0 x i8], align 1
@__ksymtab_prepare_kernel_cred = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @prepare_kernel_cred to i32), ptr @__kstrtab_prepare_kernel_cred, ptr @__kstrtabns_prepare_kernel_cred }, section "___ksymtab+prepare_kernel_cred", align 4
@__kstrtab_set_security_override = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_security_override = external dso_local constant [0 x i8], align 1
@__ksymtab_set_security_override = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_security_override to i32), ptr @__kstrtab_set_security_override, ptr @__kstrtabns_set_security_override }, section "___ksymtab+set_security_override", align 4
@__kstrtab_set_security_override_from_ctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_security_override_from_ctx = external dso_local constant [0 x i8], align 1
@__ksymtab_set_security_override_from_ctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_security_override_from_ctx to i32), ptr @__kstrtab_set_security_override_from_ctx, ptr @__kstrtabns_set_security_override_from_ctx }, section "___ksymtab+set_security_override_from_ctx", align 4
@__kstrtab_set_create_files_as = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_create_files_as = external dso_local constant [0 x i8], align 1
@__ksymtab_set_create_files_as = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_create_files_as to i32), ptr @__kstrtab_set_create_files_as, ptr @__kstrtabns_set_create_files_as }, section "___ksymtab+set_create_files_as", align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"CRED: put_cred_rcu() sees %p with usage %d\0A\00", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab___put_cred, ptr @__ksymtab_abort_creds, ptr @__ksymtab_commit_creds, ptr @__ksymtab_cred_fscmp, ptr @__ksymtab_get_task_cred, ptr @__ksymtab_override_creds, ptr @__ksymtab_prepare_creds, ptr @__ksymtab_prepare_kernel_cred, ptr @__ksymtab_revert_creds, ptr @__ksymtab_set_create_files_as, ptr @__ksymtab_set_security_override, ptr @__ksymtab_set_security_override_from_ctx], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__put_cred(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4, !prof !8

4:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 141, 0\0A.popsection", ""() #10, !srcloc !9
  unreachable

5:                                                ; preds = %1
  %6 = tail call ptr @llvm.thread.pointer() #10
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 83
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %11, !prof !10

10:                                               ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 147, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 82
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %16, !prof !10

15:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 148, 0\0A.popsection", ""() #10, !srcloc !12
  unreachable

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 24
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @put_cred_rcu(ptr noundef %17)
  br label %22

21:                                               ; preds = %16
  tail call void @call_rcu(ptr noundef %17, ptr noundef nonnull @put_cred_rcu) #10
  br label %22

22:                                               ; preds = %21, %20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @put_cred_rcu(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -116
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load volatile i32, ptr %2, align 4
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.1, ptr noundef %2, i32 noundef %6) #11
  unreachable

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -32
  %9 = load ptr, ptr %8, align 4
  tail call void @key_put(ptr noundef %9) #10
  %10 = getelementptr i8, ptr %0, i32 -28
  %11 = load ptr, ptr %10, align 4
  tail call void @key_put(ptr noundef %11) #10
  %12 = getelementptr i8, ptr %0, i32 -24
  %13 = load ptr, ptr %12, align 4
  tail call void @key_put(ptr noundef %13) #10
  %14 = getelementptr i8, ptr %0, i32 -20
  %15 = load ptr, ptr %14, align 4
  tail call void @key_put(ptr noundef %15) #10
  %16 = getelementptr i8, ptr %0, i32 -4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %17) #10, !srcloc !14
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %17, ptr nonnull %17, i32 1, ptr nonnull elementtype(i32) %17) #10, !srcloc !15
  %21 = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load ptr, ptr %16, align 4
  tail call void @groups_free(ptr noundef %24) #10
  br label %25

25:                                               ; preds = %23, %19, %7
  %26 = getelementptr i8, ptr %0, i32 -16
  %27 = load ptr, ptr %26, align 4
  tail call void @free_uid(ptr noundef %27) #10
  %28 = getelementptr i8, ptr %0, i32 -8
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  tail call void @put_ucounts(ptr noundef nonnull %29) #10
  br label %32

32:                                               ; preds = %31, %25
  %33 = load ptr, ptr @cred_jar, align 4
  tail call void @kmem_cache_free(ptr noundef %33, ptr noundef %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exit_creds(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 82
  %3 = load ptr, ptr %2, align 4
  store ptr null, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %3) #10, !srcloc !14
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #10, !srcloc !15
  %7 = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %5
  %10 = load volatile i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12, !prof !8

12:                                               ; preds = %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 141, 0\0A.popsection", ""() #10, !srcloc !9
  unreachable

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #10
  %15 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 83
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, %3
  br i1 %17, label %18, label %19, !prof !10

18:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 147, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 82
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %3
  br i1 %22, label %23, label %24, !prof !10

23:                                               ; preds = %19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 148, 0\0A.popsection", ""() #10, !srcloc !12
  unreachable

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 24
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @put_cred_rcu(ptr noundef %25) #10
  br label %30

29:                                               ; preds = %24
  tail call void @call_rcu(ptr noundef %25, ptr noundef nonnull @put_cred_rcu) #10
  br label %30

30:                                               ; preds = %29, %28, %5, %1
  %31 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 83
  %32 = load ptr, ptr %31, align 8
  store ptr null, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %59, label %34

34:                                               ; preds = %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %32) #10, !srcloc !14
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %32, ptr nonnull %32, i32 1, ptr nonnull elementtype(i32) %32) #10, !srcloc !15
  %36 = extractvalue { i32, i32 } %35, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %34
  %39 = load volatile i32, ptr %32, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41, !prof !8

41:                                               ; preds = %38
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 141, 0\0A.popsection", ""() #10, !srcloc !9
  unreachable

42:                                               ; preds = %38
  %43 = tail call ptr @llvm.thread.pointer() #10
  %44 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 83
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %45, %32
  br i1 %46, label %47, label %48, !prof !10

47:                                               ; preds = %42
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 147, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 82
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %32
  br i1 %51, label %52, label %53, !prof !10

52:                                               ; preds = %48
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 148, 0\0A.popsection", ""() #10, !srcloc !12
  unreachable

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.cred, ptr %32, i32 0, i32 24
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  tail call void @put_cred_rcu(ptr noundef %54) #10
  br label %59

58:                                               ; preds = %53
  tail call void @call_rcu(ptr noundef %54, ptr noundef nonnull @put_cred_rcu) #10
  br label %59

59:                                               ; preds = %58, %57, %34, %30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @get_task_cred(ptr noundef %0) #0 {
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 82
  br label %3

3:                                                ; preds = %7, %1
  %4 = load volatile ptr, ptr %2, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !10

6:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #10, !srcloc !18
  unreachable

7:                                                ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %4) #10, !srcloc !14
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 0, i32 1, ptr nonnull elementtype(i32) %4) #10, !srcloc !20
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %3, label %11

11:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  %12 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 24
  store i32 0, ptr %12, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !22
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cred_alloc_blank() local_unnamed_addr #0 {
  %1 = load ptr, ptr @cred_jar, align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef 3520) #10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  store volatile i32 1, ptr %2, align 8
  br label %5

5:                                                ; preds = %4, %0
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @abort_creds(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = icmp slt i32 %2, 1
  br i1 %3, label %4, label %5, !prof !10

4:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 542, 0\0A.popsection", ""() #10, !srcloc !23
  unreachable

5:                                                ; preds = %1
  %6 = icmp eq ptr %0, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #10, !srcloc !14
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #10, !srcloc !15
  %9 = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %7
  %12 = load volatile i32, ptr %0, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14, !prof !8

14:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 141, 0\0A.popsection", ""() #10, !srcloc !9
  unreachable

15:                                               ; preds = %11
  %16 = tail call ptr @llvm.thread.pointer() #10
  %17 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 83
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %21, !prof !10

20:                                               ; preds = %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 147, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 82
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %0
  br i1 %24, label %25, label %26, !prof !10

25:                                               ; preds = %21
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 148, 0\0A.popsection", ""() #10, !srcloc !12
  unreachable

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 24
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @put_cred_rcu(ptr noundef %27) #10
  br label %32

31:                                               ; preds = %26
  tail call void @call_rcu(ptr noundef %27, ptr noundef nonnull @put_cred_rcu) #10
  br label %32

32:                                               ; preds = %31, %30, %7, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @prepare_creds() #0 {
  %1 = tail call ptr @llvm.thread.pointer() #10
  %2 = load ptr, ptr @cred_jar, align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 3264) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %110, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 83
  %7 = load ptr, ptr %6, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef align 4 dereferenceable(124) %7, i32 124, i1 false)
  %8 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 24
  store i32 0, ptr %8, align 4
  store volatile i32 1, ptr %3, align 8
  %9 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 23
  %10 = load ptr, ptr %9, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #10, !srcloc !14
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #10, !srcloc !24
  %12 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 20
  %13 = load ptr, ptr %12, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #10, !srcloc !14
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #10, !srcloc !25
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17, !prof !10

17:                                               ; preds = %5
  %18 = add i32 %15, 1
  %19 = or i32 %18, %15
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %23, label %21, !prof !8

21:                                               ; preds = %17, %5
  %22 = phi i32 [ 2, %5 ], [ 1, %17 ]
  tail call void @refcount_warn_saturate(ptr noundef %13, i32 noundef %22) #10
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 16
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %25) #10, !srcloc !14
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %25, ptr nonnull %25, i32 1, ptr nonnull elementtype(i32) %25) #10, !srcloc !25
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31, !prof !10

31:                                               ; preds = %27
  %32 = add i32 %29, 1
  %33 = or i32 %32, %29
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %37, label %35, !prof !8

35:                                               ; preds = %31, %27
  %36 = phi i32 [ 2, %27 ], [ 1, %31 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %25, i32 noundef %36) #10
  br label %37

37:                                               ; preds = %35, %31, %23
  %38 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 17
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %37
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %39) #10, !srcloc !14
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %39, ptr nonnull %39, i32 1, ptr nonnull elementtype(i32) %39) #10, !srcloc !25
  %43 = extractvalue { i32, i32, i32 } %42, 0
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45, !prof !10

45:                                               ; preds = %41
  %46 = add i32 %43, 1
  %47 = or i32 %46, %43
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %51, label %49, !prof !8

49:                                               ; preds = %45, %41
  %50 = phi i32 [ 2, %41 ], [ 1, %45 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %39, i32 noundef %50) #10
  br label %51

51:                                               ; preds = %49, %45, %37
  %52 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 18
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %65, label %55

55:                                               ; preds = %51
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %53) #10, !srcloc !14
  %56 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %53, ptr nonnull %53, i32 1, ptr nonnull elementtype(i32) %53) #10, !srcloc !25
  %57 = extractvalue { i32, i32, i32 } %56, 0
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59, !prof !10

59:                                               ; preds = %55
  %60 = add i32 %57, 1
  %61 = or i32 %60, %57
  %62 = icmp sgt i32 %61, -1
  br i1 %62, label %65, label %63, !prof !8

63:                                               ; preds = %59, %55
  %64 = phi i32 [ 2, %55 ], [ 1, %59 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %53, i32 noundef %64) #10
  br label %65

65:                                               ; preds = %63, %59, %51
  %66 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 19
  %67 = load ptr, ptr %66, align 8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %79, label %69

69:                                               ; preds = %65
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %67) #10, !srcloc !14
  %70 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %67, ptr nonnull %67, i32 1, ptr nonnull elementtype(i32) %67) #10, !srcloc !25
  %71 = extractvalue { i32, i32, i32 } %70, 0
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73, !prof !10

73:                                               ; preds = %69
  %74 = add i32 %71, 1
  %75 = or i32 %74, %71
  %76 = icmp sgt i32 %75, -1
  br i1 %76, label %79, label %77, !prof !8

77:                                               ; preds = %73, %69
  %78 = phi i32 [ 2, %69 ], [ 1, %73 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %67, i32 noundef %78) #10
  br label %79

79:                                               ; preds = %77, %73, %65
  %80 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 22
  %81 = load ptr, ptr %80, align 4
  %82 = tail call ptr @get_ucounts(ptr noundef %81) #10
  store ptr %82, ptr %80, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %110

84:                                               ; preds = %79
  %85 = load volatile i32, ptr %3, align 8
  %86 = icmp slt i32 %85, 1
  br i1 %86, label %87, label %88, !prof !10

87:                                               ; preds = %84
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 542, 0\0A.popsection", ""() #10, !srcloc !23
  unreachable

88:                                               ; preds = %84
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %3) #10, !srcloc !14
  %89 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #10, !srcloc !15
  %90 = extractvalue { i32, i32 } %89, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %110

92:                                               ; preds = %88
  %93 = load volatile i32, ptr %3, align 8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %96, label %95, !prof !8

95:                                               ; preds = %92
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 141, 0\0A.popsection", ""() #10, !srcloc !9
  unreachable

96:                                               ; preds = %92
  %97 = load ptr, ptr %6, align 8
  %98 = icmp eq ptr %97, %3
  br i1 %98, label %99, label %100, !prof !10

99:                                               ; preds = %96
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 147, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 82
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, %3
  br i1 %103, label %104, label %105, !prof !10

104:                                              ; preds = %100
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 148, 0\0A.popsection", ""() #10, !srcloc !12
  unreachable

105:                                              ; preds = %100
  %106 = load i32, ptr %8, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  tail call void @put_cred_rcu(ptr noundef %8) #10
  br label %110

109:                                              ; preds = %105
  tail call void @call_rcu(ptr noundef %8, ptr noundef nonnull @put_cred_rcu) #10
  br label %110

110:                                              ; preds = %109, %108, %88, %79, %0
  %111 = phi ptr [ null, %0 ], [ %3, %79 ], [ null, %88 ], [ null, %108 ], [ null, %109 ]
  ret ptr %111
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_ucounts(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @prepare_exec_creds() local_unnamed_addr #0 {
  %1 = tail call ptr @prepare_creds()
  %2 = icmp eq ptr %1, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 18
  %5 = load ptr, ptr %4, align 4
  tail call void @key_put(ptr noundef %5) #10
  store ptr null, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  tail call void @key_put(ptr noundef %7) #10
  store ptr null, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 3
  %9 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 7
  %10 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %9, align 4
  store i32 %11, ptr %8, align 4
  %12 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 4
  %13 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 8
  %14 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %13, align 4
  store i32 %15, ptr %12, align 4
  br label %16

16:                                               ; preds = %3, %0
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @copy_creds(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 83
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 18
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ne ptr %6, null
  %8 = and i32 %1, 65536
  %9 = icmp eq i32 %8, 0
  %10 = or i1 %9, %7
  br i1 %10, label %30, label %11

11:                                               ; preds = %2
  %12 = icmp eq ptr %4, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 82
  store ptr %4, ptr %14, align 4
  br label %24

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 24
  store i32 0, ptr %16, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %4) #10, !srcloc !14
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 1, ptr nonnull elementtype(i32) %4) #10, !srcloc !24
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 82
  store ptr %4, ptr %19, align 4
  %20 = icmp eq ptr %18, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.cred, ptr %18, i32 0, i32 24
  store i32 0, ptr %22, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %18) #10, !srcloc !14
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %18, ptr nonnull %18, i32 1, ptr nonnull elementtype(i32) %18) #10, !srcloc !24
  br label %24

24:                                               ; preds = %21, %15, %13
  %25 = phi ptr [ %14, %13 ], [ %19, %15 ], [ %19, %21 ]
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %26 = load volatile ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.cred, ptr %26, i32 0, i32 22
  %28 = load ptr, ptr %27, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !22
  %29 = tail call i32 @inc_rlimit_ucounts(ptr noundef %28, i32 noundef 10, i32 noundef 1) #10
  br label %80

30:                                               ; preds = %2
  %31 = tail call ptr @prepare_creds()
  %32 = icmp eq ptr %31, null
  br i1 %32, label %80, label %33

33:                                               ; preds = %30
  %34 = and i32 %1, 268435456
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %61, label %36

36:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %31) #10, !srcloc !14
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %31, ptr nonnull %31, i32 1, ptr nonnull elementtype(i32) %31) #10, !srcloc !15
  %38 = extractvalue { i32, i32 } %37, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %80

40:                                               ; preds = %36
  %41 = load volatile i32, ptr %31, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43, !prof !8

43:                                               ; preds = %40
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 141, 0\0A.popsection", ""() #10, !srcloc !9
  unreachable

44:                                               ; preds = %40
  %45 = tail call ptr @llvm.thread.pointer() #10
  %46 = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 83
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, %31
  br i1 %48, label %49, label %50, !prof !10

49:                                               ; preds = %44
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 147, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 82
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, %31
  br i1 %53, label %54, label %55, !prof !10

54:                                               ; preds = %50
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 148, 0\0A.popsection", ""() #10, !srcloc !12
  unreachable

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.cred, ptr %31, i32 0, i32 24
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call void @put_cred_rcu(ptr noundef %56) #10
  br label %80

60:                                               ; preds = %55
  tail call void @call_rcu(ptr noundef %56, ptr noundef nonnull @put_cred_rcu) #10
  br label %80

61:                                               ; preds = %33
  %62 = getelementptr inbounds %struct.cred, ptr %31, i32 0, i32 18
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  tail call void @key_put(ptr noundef nonnull %63) #10
  store ptr null, ptr %62, align 4
  br i1 %9, label %69, label %66

66:                                               ; preds = %65
  %67 = tail call i32 @install_thread_keyring_to_cred(ptr noundef nonnull %31) #10
  br label %72

68:                                               ; preds = %61
  br i1 %9, label %69, label %72

69:                                               ; preds = %68, %65
  %70 = getelementptr inbounds %struct.cred, ptr %31, i32 0, i32 17
  %71 = load ptr, ptr %70, align 4
  tail call void @key_put(ptr noundef %71) #10
  store ptr null, ptr %70, align 4
  br label %72

72:                                               ; preds = %69, %68, %66
  %73 = getelementptr inbounds %struct.cred, ptr %31, i32 0, i32 24
  store i32 0, ptr %73, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %31) #10, !srcloc !14
  %74 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %31, ptr nonnull %31, i32 1, ptr nonnull elementtype(i32) %31) #10, !srcloc !24
  %75 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 82
  store ptr %31, ptr %75, align 4
  store ptr %31, ptr %3, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %76 = load volatile ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.cred, ptr %76, i32 0, i32 22
  %78 = load ptr, ptr %77, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !22
  %79 = tail call i32 @inc_rlimit_ucounts(ptr noundef %78, i32 noundef 10, i32 noundef 1) #10
  br label %80

80:                                               ; preds = %72, %60, %59, %36, %30, %24
  %81 = phi i32 [ 0, %72 ], [ 0, %24 ], [ -12, %30 ], [ -22, %36 ], [ -22, %59 ], [ -22, %60 ]
  ret i32 %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inc_rlimit_ucounts(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @set_cred_ucounts(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ucounts, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 21
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  br label %18

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ucounts, ptr %3, i32 0, i32 2
  %14 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %13, align 4
  %16 = load i32, ptr %14, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %12, %9
  %19 = phi i32 [ %11, %9 ], [ %16, %12 ]
  %20 = insertvalue [1 x i32] undef, i32 %19, 0
  %21 = tail call ptr @alloc_ucounts(ptr noundef %7, [1 x i32] %20) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store ptr %21, ptr %2, align 4
  tail call void @put_ucounts(ptr noundef %3) #10
  br label %24

24:                                               ; preds = %23, %18, %12
  %25 = phi i32 [ 0, %23 ], [ 0, %12 ], [ -11, %18 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @install_thread_keyring_to_cred(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @commit_creds(ptr noundef %0) #0 {
  %2 = tail call ptr @llvm.thread.pointer() #10
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 82
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 83
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, %4
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 456, 0\0A.popsection", ""() #10, !srcloc !26
  unreachable

9:                                                ; preds = %1
  %10 = load volatile i32, ptr %0, align 4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %13, !prof !10

12:                                               ; preds = %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 462, 0\0A.popsection", ""() #10, !srcloc !27
  unreachable

13:                                               ; preds = %9
  %14 = icmp eq ptr %0, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 24
  store i32 0, ptr %16, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #10, !srcloc !14
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #10, !srcloc !24
  br label %18

18:                                               ; preds = %15, %13
  %19 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 5
  %20 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 5
  %21 = load i32, ptr %19, align 4
  %22 = load i32, ptr %20, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %77

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 6
  %26 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 6
  %27 = load i32, ptr %25, align 4
  %28 = load i32, ptr %26, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %77

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 7
  %32 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 7
  %33 = load i32, ptr %31, align 4
  %34 = load i32, ptr %32, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %77

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 8
  %38 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 8
  %39 = load i32, ptr %37, align 4
  %40 = load i32, ptr %38, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %77

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 21
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 21
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %44, %46
  br i1 %47, label %61, label %48

48:                                               ; preds = %42
  %49 = icmp eq ptr %46, @init_user_ns
  br i1 %49, label %77, label %50

50:                                               ; preds = %59, %48
  %51 = phi ptr [ %53, %59 ], [ %46, %48 ]
  %52 = getelementptr inbounds %struct.user_namespace, ptr %51, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %44, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.user_namespace, ptr %51, i32 0, i32 5
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, %21
  br i1 %58, label %91, label %59

59:                                               ; preds = %55, %50
  %60 = icmp eq ptr %53, @init_user_ns
  br i1 %60, label %77, label %50

61:                                               ; preds = %42
  %62 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 11
  %63 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 11
  %64 = load i32, ptr %62, align 4
  %65 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 11, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = load i32, ptr %63, align 4
  %68 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 11, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = xor i32 %67, -1
  %71 = and i32 %64, %70
  %72 = xor i32 %69, -1
  %73 = and i32 %66, %72
  %74 = icmp eq i32 %71, 0
  %75 = icmp eq i32 %73, 0
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %91, label %77

77:                                               ; preds = %61, %59, %48, %36, %30, %24, %18
  %78 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 37
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  %82 = load i32, ptr @suid_dumpable, align 4
  tail call void @set_dumpable(ptr noundef nonnull %79, i32 noundef %82) #10
  br label %83

83:                                               ; preds = %81, %77
  %84 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 44
  store i32 0, ptr %84, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !28
  %85 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 7
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 7
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %91, label %90

90:                                               ; preds = %83
  tail call void @key_fsuid_changed(ptr noundef %0) #10
  br label %91

91:                                               ; preds = %90, %83, %61, %55
  %92 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 8
  %93 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 8
  %94 = load i32, ptr %92, align 4
  %95 = load i32, ptr %93, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %98, label %97

97:                                               ; preds = %91
  tail call void @key_fsgid_changed(ptr noundef %0) #10
  br label %98

98:                                               ; preds = %97, %91
  %99 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 20
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 20
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %100, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 21
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 21
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %106, %108
  br i1 %109, label %114, label %110

110:                                              ; preds = %104, %98
  %111 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 22
  %112 = load ptr, ptr %111, align 4
  %113 = tail call i32 @inc_rlimit_ucounts(ptr noundef %112, i32 noundef 10, i32 noundef 1) #10
  br label %114

114:                                              ; preds = %110, %104
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !29
  store volatile ptr %0, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !30
  store volatile ptr %0, ptr %5, align 8
  %115 = load ptr, ptr %99, align 4
  %116 = load ptr, ptr %101, align 4
  %117 = icmp eq ptr %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 21
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 21
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %120, %122
  br i1 %123, label %128, label %124

124:                                              ; preds = %118, %114
  %125 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 22
  %126 = load ptr, ptr %125, align 4
  %127 = tail call zeroext i1 @dec_rlimit_ucounts(ptr noundef %126, i32 noundef 10, i32 noundef 1) #10
  br label %128

128:                                              ; preds = %124, %118
  %129 = icmp eq ptr %4, null
  br i1 %129, label %174, label %130

130:                                              ; preds = %128
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %4) #10, !srcloc !14
  %131 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 1, ptr nonnull elementtype(i32) %4) #10, !srcloc !15
  %132 = extractvalue { i32, i32 } %131, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %152

134:                                              ; preds = %130
  %135 = load volatile i32, ptr %4, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %138, label %137, !prof !8

137:                                              ; preds = %134
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 141, 0\0A.popsection", ""() #10, !srcloc !9
  unreachable

138:                                              ; preds = %134
  %139 = load ptr, ptr %5, align 8
  %140 = icmp eq ptr %139, %4
  br i1 %140, label %141, label %142, !prof !10

141:                                              ; preds = %138
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 147, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

142:                                              ; preds = %138
  %143 = load ptr, ptr %3, align 4
  %144 = icmp eq ptr %143, %4
  br i1 %144, label %145, label %146, !prof !10

145:                                              ; preds = %142
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 148, 0\0A.popsection", ""() #10, !srcloc !12
  unreachable

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 24
  %148 = load i32, ptr %147, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %146
  tail call void @put_cred_rcu(ptr noundef %147) #10
  br label %152

151:                                              ; preds = %146
  tail call void @call_rcu(ptr noundef %147, ptr noundef nonnull @put_cred_rcu) #10
  br label %152

152:                                              ; preds = %151, %150, %130
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %4) #10, !srcloc !14
  %153 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 1, ptr nonnull elementtype(i32) %4) #10, !srcloc !15
  %154 = extractvalue { i32, i32 } %153, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %174

156:                                              ; preds = %152
  %157 = load volatile i32, ptr %4, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %160, label %159, !prof !8

159:                                              ; preds = %156
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 141, 0\0A.popsection", ""() #10, !srcloc !9
  unreachable

160:                                              ; preds = %156
  %161 = load ptr, ptr %5, align 8
  %162 = icmp eq ptr %161, %4
  br i1 %162, label %163, label %164, !prof !10

163:                                              ; preds = %160
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 147, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

164:                                              ; preds = %160
  %165 = load ptr, ptr %3, align 4
  %166 = icmp eq ptr %165, %4
  br i1 %166, label %167, label %168, !prof !10

167:                                              ; preds = %164
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 148, 0\0A.popsection", ""() #10, !srcloc !12
  unreachable

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 24
  %170 = load i32, ptr %169, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %168
  tail call void @put_cred_rcu(ptr noundef %169) #10
  br label %174

173:                                              ; preds = %168
  tail call void @call_rcu(ptr noundef %169, ptr noundef nonnull @put_cred_rcu) #10
  br label %174

174:                                              ; preds = %173, %172, %152, %128
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_dumpable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_fsuid_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_fsgid_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dec_rlimit_ucounts(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @override_creds(ptr noundef %0) #0 {
  %2 = tail call ptr @llvm.thread.pointer() #10
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 83
  %4 = load ptr, ptr %3, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #10, !srcloc !14
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #10, !srcloc !24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !31
  store volatile ptr %0, ptr %3, align 8
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @revert_creds(ptr noundef %0) #0 {
  %2 = tail call ptr @llvm.thread.pointer() #10
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 83
  %4 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !32
  store volatile ptr %0, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %4) #10, !srcloc !14
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 1, ptr nonnull elementtype(i32) %4) #10, !srcloc !15
  %8 = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %6
  %11 = load volatile i32, ptr %4, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13, !prof !8

13:                                               ; preds = %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 141, 0\0A.popsection", ""() #10, !srcloc !9
  unreachable

14:                                               ; preds = %10
  %15 = load ptr, ptr %3, align 8
  %16 = icmp eq ptr %15, %4
  br i1 %16, label %17, label %18, !prof !10

17:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 147, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 82
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %4
  br i1 %21, label %22, label %23, !prof !10

22:                                               ; preds = %18
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 148, 0\0A.popsection", ""() #10, !srcloc !12
  unreachable

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 24
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @put_cred_rcu(ptr noundef %24) #10
  br label %29

28:                                               ; preds = %23
  tail call void @call_rcu(ptr noundef %24, ptr noundef nonnull @put_cred_rcu) #10
  br label %29

29:                                               ; preds = %28, %27, %6, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @cred_fscmp(ptr noundef readonly %0, ptr noundef readonly %1) #3 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %52, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 7
  %6 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 7
  %7 = load i32, ptr %5, align 4
  %8 = load i32, ptr %6, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %52, label %10

10:                                               ; preds = %4
  %11 = icmp ugt i32 %7, %8
  br i1 %11, label %52, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 8
  %14 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 8
  %15 = load i32, ptr %13, align 4
  %16 = load i32, ptr %14, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %52, label %18

18:                                               ; preds = %12
  %19 = icmp ugt i32 %15, %16
  br i1 %19, label %52, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 23
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 23
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %52, label %26

26:                                               ; preds = %20
  %27 = icmp eq ptr %22, null
  br i1 %27, label %52, label %28

28:                                               ; preds = %26
  %29 = icmp eq ptr %24, null
  br i1 %29, label %52, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.group_info, ptr %22, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.group_info, ptr %24, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %52, label %36

36:                                               ; preds = %30
  %37 = icmp sgt i32 %32, %34
  br i1 %37, label %52, label %38

38:                                               ; preds = %36
  %39 = icmp sgt i32 %32, 0
  br i1 %39, label %43, label %52

40:                                               ; preds = %50
  %41 = add nuw nsw i32 %44, 1
  %42 = icmp eq i32 %41, %32
  br i1 %42, label %52, label %43

43:                                               ; preds = %40, %38
  %44 = phi i32 [ %41, %40 ], [ 0, %38 ]
  %45 = getelementptr %struct.group_info, ptr %22, i32 0, i32 2, i32 %44
  %46 = getelementptr %struct.group_info, ptr %24, i32 0, i32 2, i32 %44
  %47 = load i32, ptr %45, align 4
  %48 = load i32, ptr %46, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %52, label %50

50:                                               ; preds = %43
  %51 = icmp ugt i32 %47, %48
  br i1 %51, label %52, label %40

52:                                               ; preds = %50, %43, %40, %38, %36, %30, %28, %26, %20, %18, %12, %10, %4, %2
  %53 = phi i32 [ 0, %2 ], [ -1, %4 ], [ 1, %10 ], [ -1, %12 ], [ 1, %18 ], [ 0, %20 ], [ -1, %26 ], [ 1, %28 ], [ -1, %30 ], [ 1, %36 ], [ 0, %38 ], [ -1, %43 ], [ 1, %50 ], [ 0, %40 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_ucounts(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_ucounts(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cred_init() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 124, i32 noundef 0, i32 noundef 270336, ptr noundef null) #10
  store ptr %1, ptr @cred_jar, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @prepare_kernel_cred(ptr noundef %0) #0 {
  %2 = load ptr, ptr @cred_jar, align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 3264) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %119, label %5

5:                                                ; preds = %1
  %6 = icmp eq ptr %0, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 82
  br label %9

9:                                                ; preds = %13, %7
  %10 = load volatile ptr, ptr %8, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13, !prof !10

12:                                               ; preds = %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #10, !srcloc !18
  unreachable

13:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %10) #10, !srcloc !14
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %10, ptr nonnull %10, i32 0, i32 1, ptr nonnull elementtype(i32) %10) #10, !srcloc !20
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %9, label %17

17:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  %18 = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 24
  store i32 0, ptr %18, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !22
  br label %21

19:                                               ; preds = %5
  store i32 0, ptr getelementptr inbounds (%struct.cred, ptr @init_cred, i32 0, i32 24), align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @init_cred) #10, !srcloc !14
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @init_cred, ptr nonnull @init_cred, i32 1, ptr nonnull elementtype(i32) @init_cred) #10, !srcloc !24
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi ptr [ %10, %17 ], [ @init_cred, %19 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull align 4 dereferenceable(124) %22, i32 124, i1 false)
  %23 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 24
  store i32 0, ptr %23, align 4
  store volatile i32 1, ptr %3, align 8
  %24 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 20
  %25 = load ptr, ptr %24, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #10, !srcloc !14
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #10, !srcloc !25
  %27 = extractvalue { i32, i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29, !prof !10

29:                                               ; preds = %21
  %30 = add i32 %27, 1
  %31 = or i32 %30, %27
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %35, label %33, !prof !8

33:                                               ; preds = %29, %21
  %34 = phi i32 [ 2, %21 ], [ 1, %29 ]
  tail call void @refcount_warn_saturate(ptr noundef %25, i32 noundef %34) #10
  br label %35

35:                                               ; preds = %33, %29
  %36 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 23
  %37 = load ptr, ptr %36, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #10, !srcloc !14
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #10, !srcloc !24
  %39 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 16
  %40 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 15
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %39, i8 0, i64 16, i1 false)
  store i8 1, ptr %40, align 8
  %41 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 22
  %42 = load ptr, ptr %41, align 4
  %43 = tail call ptr @get_ucounts(ptr noundef %42) #10
  store ptr %43, ptr %41, align 4
  %44 = icmp eq ptr %43, null
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10
  br i1 %44, label %70, label %45

45:                                               ; preds = %35
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %22) #10, !srcloc !14
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %22, ptr nonnull %22, i32 1, ptr nonnull elementtype(i32) %22) #10, !srcloc !15
  %47 = extractvalue { i32, i32 } %46, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %119

49:                                               ; preds = %45
  %50 = load volatile i32, ptr %22, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52, !prof !8

52:                                               ; preds = %49
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 141, 0\0A.popsection", ""() #10, !srcloc !9
  unreachable

53:                                               ; preds = %49
  %54 = tail call ptr @llvm.thread.pointer() #10
  %55 = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 83
  %56 = load ptr, ptr %55, align 8
  %57 = icmp eq ptr %56, %22
  br i1 %57, label %58, label %59, !prof !10

58:                                               ; preds = %53
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 147, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 82
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, %22
  br i1 %62, label %63, label %64, !prof !10

63:                                               ; preds = %59
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 148, 0\0A.popsection", ""() #10, !srcloc !12
  unreachable

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.cred, ptr %22, i32 0, i32 24
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  tail call void @put_cred_rcu(ptr noundef %65) #10
  br label %119

69:                                               ; preds = %64
  tail call void @call_rcu(ptr noundef %65, ptr noundef nonnull @put_cred_rcu) #10
  br label %119

70:                                               ; preds = %35
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %3) #10, !srcloc !14
  %71 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #10, !srcloc !15
  %72 = extractvalue { i32, i32 } %71, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %70
  %75 = load volatile i32, ptr %3, align 8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77, !prof !8

77:                                               ; preds = %74
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 141, 0\0A.popsection", ""() #10, !srcloc !9
  unreachable

78:                                               ; preds = %74
  %79 = tail call ptr @llvm.thread.pointer() #10
  %80 = getelementptr inbounds %struct.task_struct, ptr %79, i32 0, i32 83
  %81 = load ptr, ptr %80, align 8
  %82 = icmp eq ptr %81, %3
  br i1 %82, label %83, label %84, !prof !10

83:                                               ; preds = %78
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 147, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.task_struct, ptr %79, i32 0, i32 82
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, %3
  br i1 %87, label %88, label %89, !prof !10

88:                                               ; preds = %84
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 148, 0\0A.popsection", ""() #10, !srcloc !12
  unreachable

89:                                               ; preds = %84
  %90 = load i32, ptr %23, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  tail call void @put_cred_rcu(ptr noundef %23) #10
  br label %94

93:                                               ; preds = %89
  tail call void @call_rcu(ptr noundef %23, ptr noundef nonnull @put_cred_rcu) #10
  br label %94

94:                                               ; preds = %93, %92, %70
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %22) #10, !srcloc !14
  %95 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %22, ptr nonnull %22, i32 1, ptr nonnull elementtype(i32) %22) #10, !srcloc !15
  %96 = extractvalue { i32, i32 } %95, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %119

98:                                               ; preds = %94
  %99 = load volatile i32, ptr %22, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %102, label %101, !prof !8

101:                                              ; preds = %98
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 141, 0\0A.popsection", ""() #10, !srcloc !9
  unreachable

102:                                              ; preds = %98
  %103 = tail call ptr @llvm.thread.pointer() #10
  %104 = getelementptr inbounds %struct.task_struct, ptr %103, i32 0, i32 83
  %105 = load ptr, ptr %104, align 8
  %106 = icmp eq ptr %105, %22
  br i1 %106, label %107, label %108, !prof !10

107:                                              ; preds = %102
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 147, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.task_struct, ptr %103, i32 0, i32 82
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, %22
  br i1 %111, label %112, label %113, !prof !10

112:                                              ; preds = %108
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 148, 0\0A.popsection", ""() #10, !srcloc !12
  unreachable

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.cred, ptr %22, i32 0, i32 24
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  tail call void @put_cred_rcu(ptr noundef %114) #10
  br label %119

118:                                              ; preds = %113
  tail call void @call_rcu(ptr noundef %114, ptr noundef nonnull @put_cred_rcu) #10
  br label %119

119:                                              ; preds = %118, %117, %94, %69, %68, %45, %1
  %120 = phi ptr [ null, %1 ], [ %3, %45 ], [ %3, %68 ], [ %3, %69 ], [ null, %94 ], [ null, %117 ], [ null, %118 ]
  ret ptr %120
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @set_security_override(ptr nocapture readnone %0, i32 %1) #5 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @set_security_override_from_ctx(ptr nocapture readnone %0, ptr nocapture noundef readnone %1) #5 {
  ret i32 -95
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @set_create_files_as(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 7
  store i32 %4, ptr %11, align 4
  %12 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 8
  %13 = load i32, ptr %7, align 8
  store i32 %13, ptr %12, align 4
  br label %14

14:                                               ; preds = %10, %6, %2
  %15 = phi i32 [ 0, %10 ], [ -22, %6 ], [ -22, %2 ]
  ret i32 %15
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @groups_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_uid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nounwind }
attributes #11 = { cold noreturn nounwind }

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
!9 = !{i64 2153930874, i64 2153931352, i64 2153930911, i64 2153930967, i64 2153931001, i64 2153931025, i64 2153931066, i64 2153931087, i64 2153931115, i64 2153931149}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2153931918, i64 2153932396, i64 2153931955, i64 2153932011, i64 2153932045, i64 2153932069, i64 2153932110, i64 2153932131, i64 2153932159, i64 2153932193}
!12 = !{i64 2153932972, i64 2153933450, i64 2153933009, i64 2153933065, i64 2153933099, i64 2153933123, i64 2153933164, i64 2153933185, i64 2153933213, i64 2153933247}
!13 = !{i64 2148221053}
!14 = !{i64 618191, i64 2148108162, i64 2148108188, i64 2148108235, i64 2148108257, i64 2148108285, i64 2148108305}
!15 = !{i64 2148123415, i64 2148123447, i64 2148123476, i64 2148123510, i64 2148123541, i64 2148123564}
!16 = !{i64 2148221256}
!17 = !{i64 2148930696}
!18 = !{i64 2153940372, i64 2153940850, i64 2153940409, i64 2153940465, i64 2153940499, i64 2153940523, i64 2153940564, i64 2153940585, i64 2153940613, i64 2153940647}
!19 = !{i64 2148119881}
!20 = !{i64 604760, i64 604785, i64 604807, i64 604823, i64 604835, i64 604855, i64 604879, i64 604895, i64 604907}
!21 = !{i64 2148120007}
!22 = !{i64 2148930913}
!23 = !{i64 2153975678, i64 2153976156, i64 2153975715, i64 2153975771, i64 2153975805, i64 2153975829, i64 2153975870, i64 2153975891, i64 2153975919, i64 2153975953}
!24 = !{i64 2148120374, i64 2148120400, i64 2148120429, i64 2148120463, i64 2148120494, i64 2148120517}
!25 = !{i64 2148121832, i64 2148121864, i64 2148121893, i64 2148121927, i64 2148121958, i64 2148121981}
!26 = !{i64 2153956361, i64 2153956839, i64 2153956398, i64 2153956454, i64 2153956488, i64 2153956512, i64 2153956553, i64 2153956574, i64 2153956602, i64 2153956636}
!27 = !{i64 2153957391, i64 2153957869, i64 2153957428, i64 2153957484, i64 2153957518, i64 2153957542, i64 2153957583, i64 2153957604, i64 2153957632, i64 2153957666}
!28 = !{i64 2153958221}
!29 = !{i64 2153963461}
!30 = !{i64 2153970884}
!31 = !{i64 2153984061}
!32 = !{i64 2153995449}
