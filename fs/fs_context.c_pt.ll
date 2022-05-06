; ModuleID = '/llk/IR/fs/fs_context.c_pt.bc'
source_filename = "../fs/fs_context.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_parse_fs_param_source:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_parse_fs_param_source\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_parse_fs_param_source:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_parse_fs_param:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_parse_fs_param\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_parse_fs_param:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_parse_fs_string:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_parse_fs_string\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_parse_fs_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_parse_monolithic:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_parse_monolithic\22\09\09\09\09\09"
module asm "__kstrtabns_generic_parse_monolithic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fs_context_for_mount:\09\09\09\09\09"
module asm "\09.asciz \09\22fs_context_for_mount\22\09\09\09\09\09"
module asm "__kstrtabns_fs_context_for_mount:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fs_context_for_reconfigure:\09\09\09\09\09"
module asm "\09.asciz \09\22fs_context_for_reconfigure\22\09\09\09\09\09"
module asm "__kstrtabns_fs_context_for_reconfigure:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fs_context_for_submount:\09\09\09\09\09"
module asm "\09.asciz \09\22fs_context_for_submount\22\09\09\09\09\09"
module asm "__kstrtabns_fs_context_for_submount:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_dup_fs_context:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_dup_fs_context\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_dup_fs_context:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_logfc:\09\09\09\09\09"
module asm "\09.asciz \09\22logfc\22\09\09\09\09\09"
module asm "__kstrtabns_logfc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_fs_context:\09\09\09\09\09"
module asm "\09.asciz \09\22put_fs_context\22\09\09\09\09\09"
module asm "__kstrtabns_put_fs_context:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.constant_table = type { ptr, i32 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.25 }
%union.anon.25 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.35, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.fs_parameter = type { ptr, i8, %union.anon.91, i32, i32 }
%union.anon.91 = type { ptr }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.p_log = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.va_format = type { ptr, ptr }
%struct.fc_log = type { %struct.refcount_struct, i8, i8, i8, ptr, [8 x ptr] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.75, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.75 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.79, %struct.list_head, %struct.list_head, %union.anon.80 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.14, ptr }
%union.anon.14 = type { i64 }
%struct.lockref = type { %union.anon.16 }
%union.anon.16 = type { i64 }
%union.anon.79 = type { %struct.list_head }
%union.anon.80 = type { %struct.hlist_node }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.list_lru = type { ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.legacy_fs_context = type { ptr, i32, i32 }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Non-string source\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Multiple sources\00", align 1
@__kstrtab_vfs_parse_fs_param_source = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_parse_fs_param_source = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_parse_fs_param_source = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_parse_fs_param_source to i32), ptr @__kstrtab_vfs_parse_fs_param_source, ptr @__kstrtabns_vfs_parse_fs_param_source }, section "___ksymtab+vfs_parse_fs_param_source", align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Unnamed parameter\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%s: Unknown parameter '%s'\00", align 1
@__kstrtab_vfs_parse_fs_param = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_parse_fs_param = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_parse_fs_param = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_parse_fs_param to i32), ptr @__kstrtab_vfs_parse_fs_param, ptr @__kstrtabns_vfs_parse_fs_param }, section "___ksymtab+vfs_parse_fs_param", align 4
@__kstrtab_vfs_parse_fs_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_parse_fs_string = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_parse_fs_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_parse_fs_string to i32), ptr @__kstrtab_vfs_parse_fs_string, ptr @__kstrtabns_vfs_parse_fs_string }, section "___ksymtab+vfs_parse_fs_string", align 4
@.str.5 = private unnamed_addr constant [2 x i8] c",\00", align 1
@__kstrtab_generic_parse_monolithic = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_parse_monolithic = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_parse_monolithic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_parse_monolithic to i32), ptr @__kstrtab_generic_parse_monolithic, ptr @__kstrtabns_generic_parse_monolithic }, section "___ksymtab+generic_parse_monolithic", align 4
@__kstrtab_fs_context_for_mount = external dso_local constant [0 x i8], align 1
@__kstrtabns_fs_context_for_mount = external dso_local constant [0 x i8], align 1
@__ksymtab_fs_context_for_mount = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fs_context_for_mount to i32), ptr @__kstrtab_fs_context_for_mount, ptr @__kstrtabns_fs_context_for_mount }, section "___ksymtab+fs_context_for_mount", align 4
@__kstrtab_fs_context_for_reconfigure = external dso_local constant [0 x i8], align 1
@__kstrtabns_fs_context_for_reconfigure = external dso_local constant [0 x i8], align 1
@__ksymtab_fs_context_for_reconfigure = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fs_context_for_reconfigure to i32), ptr @__kstrtab_fs_context_for_reconfigure, ptr @__kstrtabns_fs_context_for_reconfigure }, section "___ksymtab+fs_context_for_reconfigure", align 4
@__kstrtab_fs_context_for_submount = external dso_local constant [0 x i8], align 1
@__kstrtabns_fs_context_for_submount = external dso_local constant [0 x i8], align 1
@__ksymtab_fs_context_for_submount = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fs_context_for_submount to i32), ptr @__kstrtab_fs_context_for_submount, ptr @__kstrtabns_fs_context_for_submount }, section "___ksymtab+fs_context_for_submount", align 4
@vfs_dup_fs_context.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"&fc->uapi_mutex\00", align 1
@__kstrtab_vfs_dup_fs_context = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_dup_fs_context = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_dup_fs_context = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_dup_fs_context to i32), ptr @__kstrtab_vfs_dup_fs_context, ptr @__kstrtabns_vfs_dup_fs_context }, section "___ksymtab+vfs_dup_fs_context", align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"\014%s%s%pV\0A\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"\013%s%s%pV\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"\015%s%s%pV\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"%c %s%s%pV\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"OOM: Can't store error string\00", align 1
@__kstrtab_logfc = external dso_local constant [0 x i8], align 1
@__kstrtabns_logfc = external dso_local constant [0 x i8], align 1
@__ksymtab_logfc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @logfc to i32), ptr @__kstrtab_logfc, ptr @__kstrtabns_logfc }, section "___ksymtab+logfc", align 4
@__kstrtab_put_fs_context = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_fs_context = external dso_local constant [0 x i8], align 1
@__ksymtab_put_fs_context = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_fs_context to i32), ptr @__kstrtab_put_fs_context, ptr @__kstrtabns_put_fs_context }, section "___ksymtab+put_fs_context", align 4
@legacy_fs_context_ops = dso_local constant %struct.fs_context_operations { ptr @legacy_fs_context_free, ptr @legacy_fs_context_dup, ptr @legacy_parse_param, ptr @legacy_parse_monolithic, ptr @legacy_get_tree, ptr @legacy_reconfigure }, align 4
@common_set_sb_flag = internal constant [6 x %struct.constant_table] [%struct.constant_table { ptr @.str.14, i32 128 }, %struct.constant_table { ptr @.str.15, i32 33554432 }, %struct.constant_table { ptr @.str.16, i32 64 }, %struct.constant_table { ptr @.str.17, i32 1 }, %struct.constant_table { ptr @.str.18, i32 16 }, %struct.constant_table zeroinitializer], align 4
@common_clear_sb_flag = internal constant [5 x %struct.constant_table] [%struct.constant_table { ptr @.str.19, i32 16 }, %struct.constant_table { ptr @.str.20, i32 33554432 }, %struct.constant_table { ptr @.str.21, i32 64 }, %struct.constant_table { ptr @.str.22, i32 1 }, %struct.constant_table zeroinitializer], align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"dirsync\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"lazytime\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"mand\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"async\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"nolazytime\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"nomand\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"rw\00", align 1
@alloc_fs_context.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.23 = private unnamed_addr constant [57 x i8] c"VFS: Legacy: Can't mix monolithic and individual options\00", align 1
@.str.24 = private unnamed_addr constant [51 x i8] c"VFS: Legacy: Parameter type for '%s' not supported\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"VFS: Legacy: Cumulative options too large\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"VFS: Legacy: Option '%s' contained comma\00", align 1
@.str.27 = private unnamed_addr constant [64 x i8] c"\014fs_context: VFS: Can't mix monolithic and individual options\0A\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_fs_context_for_mount, ptr @__ksymtab_fs_context_for_reconfigure, ptr @__ksymtab_fs_context_for_submount, ptr @__ksymtab_generic_parse_monolithic, ptr @__ksymtab_logfc, ptr @__ksymtab_put_fs_context, ptr @__ksymtab_vfs_dup_fs_context, ptr @__ksymtab_vfs_parse_fs_param, ptr @__ksymtab_vfs_parse_fs_param_source, ptr @__ksymtab_vfs_parse_fs_string], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_parse_fs_param_source(ptr nocapture noundef %0, ptr nocapture noundef %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(7) @.str)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 1
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 2
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %12, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.1)
  br label %23

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %19 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %19, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.2)
  br label %23

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  store ptr %22, ptr %14, align 4
  store ptr null, ptr %21, align 4
  br label %23

23:                                               ; preds = %20, %17, %10, %2
  %24 = phi i32 [ -22, %10 ], [ -22, %17 ], [ 0, %20 ], [ -519, %2 ]
  ret i32 %24
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @logfc(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, ...) #0 {
  %5 = alloca %struct.__va_list, align 4
  %6 = alloca %struct.va_format, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  store ptr %3, ptr %6, align 8
  %7 = getelementptr inbounds %struct.va_format, ptr %6, i32 0, i32 1
  store ptr %5, ptr %7, align 4
  call void @llvm.va_start(ptr nonnull %5)
  %8 = icmp eq ptr %0, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %4
  switch i8 %2, label %20 [
    i8 119, label %10
    i8 101, label %15
  ]

10:                                               ; preds = %9
  %11 = icmp eq ptr %1, null
  %12 = select i1 %11, ptr @.str.8, ptr %1
  %13 = select i1 %11, ptr @.str.8, ptr @.str.9
  %14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %12, ptr noundef nonnull %13, ptr noundef nonnull %6) #10
  br label %73

15:                                               ; preds = %9
  %16 = icmp eq ptr %1, null
  %17 = select i1 %16, ptr @.str.8, ptr %1
  %18 = select i1 %16, ptr @.str.8, ptr @.str.9
  %19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %17, ptr noundef nonnull %18, ptr noundef nonnull %6) #10
  br label %73

20:                                               ; preds = %9
  %21 = icmp eq ptr %1, null
  %22 = select i1 %21, ptr @.str.8, ptr %1
  %23 = select i1 %21, ptr @.str.8, ptr @.str.9
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %22, ptr noundef nonnull %23, ptr noundef nonnull %6) #10
  br label %73

25:                                               ; preds = %4
  %26 = zext i8 %2 to i32
  %27 = icmp eq ptr %1, null
  %28 = select i1 %27, ptr @.str.8, ptr %1
  %29 = select i1 %27, ptr @.str.8, ptr @.str.9
  %30 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.12, i32 noundef %26, ptr noundef %28, ptr noundef nonnull %29, ptr noundef nonnull %6) #9
  %31 = getelementptr inbounds %struct.fc_log, ptr %0, i32 0, i32 1
  %32 = load i8, ptr %31, align 4
  %33 = and i8 %32, 7
  %34 = getelementptr inbounds %struct.fc_log, ptr %0, i32 0, i32 2
  %35 = load i8, ptr %34, align 1
  %36 = sub i8 %32, %35
  %37 = icmp eq i8 %36, 8
  br i1 %37, label %40, label %38

38:                                               ; preds = %25
  %39 = zext i8 %33 to i32
  br label %55

40:                                               ; preds = %25
  %41 = getelementptr inbounds %struct.fc_log, ptr %0, i32 0, i32 3
  %42 = load i8, ptr %41, align 2
  %43 = zext i8 %42 to i32
  %44 = zext i8 %33 to i32
  %45 = shl nuw nsw i32 1, %44
  %46 = and i32 %45, %43
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %40
  %49 = getelementptr %struct.fc_log, ptr %0, i32 0, i32 5, i32 %44
  %50 = load ptr, ptr %49, align 4
  call void @kfree(ptr noundef %50) #9
  %51 = load i8, ptr %34, align 1
  br label %52

52:                                               ; preds = %48, %40
  %53 = phi i8 [ %51, %48 ], [ %35, %40 ]
  %54 = add i8 %53, 1
  store i8 %54, ptr %34, align 1
  br label %55

55:                                               ; preds = %52, %38
  %56 = phi i32 [ %39, %38 ], [ %44, %52 ]
  %57 = icmp eq ptr %30, null
  %58 = select i1 %57, ptr @.str.13, ptr %30
  %59 = getelementptr %struct.fc_log, ptr %0, i32 0, i32 5, i32 %56
  store ptr %58, ptr %59, align 4
  %60 = shl nuw i8 1, %33
  br i1 %57, label %65, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.fc_log, ptr %0, i32 0, i32 3
  %63 = load i8, ptr %62, align 2
  %64 = or i8 %63, %60
  store i8 %64, ptr %62, align 2
  br label %70

65:                                               ; preds = %55
  %66 = xor i8 %60, -1
  %67 = getelementptr inbounds %struct.fc_log, ptr %0, i32 0, i32 3
  %68 = load i8, ptr %67, align 2
  %69 = and i8 %68, %66
  store i8 %69, ptr %67, align 2
  br label %70

70:                                               ; preds = %65, %61
  %71 = load i8, ptr %31, align 4
  %72 = add i8 %71, 1
  store i8 %72, ptr %31, align 4
  br label %73

73:                                               ; preds = %70, %20, %15, %10
  call void @llvm.va_end(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_parse_fs_param(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %7, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.3)
  br label %63

8:                                                ; preds = %2
  %9 = tail call i32 @lookup_constant(ptr noundef nonnull @common_set_sb_flag, ptr noundef nonnull %3, i32 noundef 0) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 13
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %13, %9
  store i32 %14, ptr %12, align 4
  br label %23

15:                                               ; preds = %8
  %16 = tail call i32 @lookup_constant(ptr noundef nonnull @common_clear_sb_flag, ptr noundef nonnull %3, i32 noundef 0) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = xor i32 %16, -1
  %20 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 13
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, %19
  store i32 %22, ptr %20, align 4
  br label %23

23:                                               ; preds = %18, %11
  %24 = phi i32 [ %16, %18 ], [ %9, %11 ]
  %25 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 14
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %26, %24
  store i32 %27, ptr %25, align 4
  br label %63

28:                                               ; preds = %15
  %29 = load ptr, ptr %0, align 4
  %30 = getelementptr inbounds %struct.fs_context_operations, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = tail call i32 %31(ptr noundef %0, ptr noundef %1) #9
  %35 = icmp eq i32 %34, -519
  br i1 %35, label %36, label %63

36:                                               ; preds = %33, %28
  %37 = load ptr, ptr %1, align 4
  %38 = tail call i32 @strcmp(ptr noundef %37, ptr noundef nonnull dereferenceable(7) @.str) #9
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 1
  %42 = load i8, ptr %41, align 4
  %43 = icmp eq i8 %42, 2
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %46 = load ptr, ptr %45, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %46, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.1) #9
  br label %63

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 10
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %53 = load ptr, ptr %52, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %53, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.2) #9
  br label %63

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  store ptr %56, ptr %48, align 4
  store ptr null, ptr %55, align 4
  br label %63

57:                                               ; preds = %36
  %58 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = load ptr, ptr %61, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %59, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.4, ptr noundef %62, ptr noundef %37)
  br label %63

63:                                               ; preds = %57, %54, %51, %44, %33, %23, %5
  %64 = phi i32 [ -22, %57 ], [ -22, %5 ], [ 0, %23 ], [ %34, %33 ], [ 0, %54 ], [ -22, %51 ], [ -22, %44 ]
  ret i32 %64
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_parse_fs_string(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.fs_parameter, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #9
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %6, align 4, !annotation !8
  store ptr %1, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fs_parameter, ptr %5, i32 0, i32 1
  store i8 1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.fs_parameter, ptr %5, i32 0, i32 2
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.fs_parameter, ptr %5, i32 0, i32 3
  store i32 %3, ptr %9, align 4
  %10 = getelementptr inbounds %struct.fs_parameter, ptr %5, i32 0, i32 4
  store i32 0, ptr %10, align 4
  %11 = icmp eq ptr %2, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = tail call ptr @kmemdup_nul(ptr noundef nonnull %2, i32 noundef %3, i32 noundef 3264) #9
  store ptr %13, ptr %8, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  store i8 2, ptr %7, align 4
  br label %16

16:                                               ; preds = %15, %4
  %17 = call i32 @vfs_parse_fs_param(ptr noundef %0, ptr noundef nonnull %5)
  %18 = load ptr, ptr %8, align 4
  call void @kfree(ptr noundef %18) #9
  br label %19

19:                                               ; preds = %16, %12
  %20 = phi i32 [ %17, %16 ], [ -12, %12 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #9
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup_nul(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @generic_parse_monolithic(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.fs_parameter, align 4
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store ptr %1, ptr %4, align 4
  %5 = icmp eq ptr %1, null
  br i1 %5, label %41, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %3, i32 4
  %8 = getelementptr inbounds %struct.fs_parameter, ptr %3, i32 0, i32 2
  %9 = getelementptr inbounds %struct.fs_parameter, ptr %3, i32 0, i32 3
  %10 = getelementptr inbounds %struct.fs_parameter, ptr %3, i32 0, i32 4
  br label %11

11:                                               ; preds = %37, %6
  %12 = phi i32 [ %38, %37 ], [ 0, %6 ]
  br label %13

13:                                               ; preds = %17, %11
  br label %14

14:                                               ; preds = %23, %13
  %15 = call ptr @strsep(ptr noundef nonnull %4, ptr noundef nonnull @.str.5) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %41, label %17

17:                                               ; preds = %14
  %18 = load i8, ptr %15, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %13, label %20

20:                                               ; preds = %17
  %21 = call ptr @strchr(ptr noundef nonnull %15, i32 noundef 61)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = icmp eq ptr %21, %15
  br i1 %24, label %14, label %25

25:                                               ; preds = %23
  %26 = getelementptr i8, ptr %21, i32 1
  store i8 0, ptr %21, align 1
  %27 = call i32 @strlen(ptr noundef %26)
  br label %28

28:                                               ; preds = %25, %20
  %29 = phi i32 [ %27, %25 ], [ 0, %20 ]
  %30 = phi ptr [ %26, %25 ], [ null, %20 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #9
  store i32 1, ptr %7, align 4, !annotation !8
  store ptr %15, ptr %3, align 4
  store i32 0, ptr %8, align 4
  store i32 %29, ptr %9, align 4
  store i32 0, ptr %10, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = call ptr @kmemdup_nul(ptr noundef nonnull %30, i32 noundef %29, i32 noundef 3264) #9
  store ptr %33, ptr %8, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #9
  br label %41

36:                                               ; preds = %32
  store i8 2, ptr %7, align 4
  br label %37

37:                                               ; preds = %36, %28
  %38 = call i32 @vfs_parse_fs_param(ptr noundef %0, ptr noundef nonnull %3) #9
  %39 = load ptr, ptr %8, align 4
  call void @kfree(ptr noundef %39) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #9
  %40 = icmp slt i32 %38, 0
  br i1 %40, label %41, label %11

41:                                               ; preds = %37, %35, %14, %2
  %42 = phi i32 [ 0, %2 ], [ -12, %35 ], [ %12, %14 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fs_context_for_mount(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call fastcc ptr @alloc_fs_context(ptr noundef %0, ptr noundef null, i32 noundef %1, i32 noundef 0, i32 noundef 0)
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @alloc_fs_context(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 4197824, i32 noundef 92) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %64, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.fs_context, ptr %7, i32 0, i32 17
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %4, 255
  %13 = and i32 %11, -256
  %14 = or i32 %13, %12
  store i32 %14, ptr %10, align 8
  %15 = getelementptr inbounds %struct.fs_context, ptr %7, i32 0, i32 13
  store i32 %2, ptr %15, align 8
  %16 = getelementptr inbounds %struct.fs_context, ptr %7, i32 0, i32 14
  store i32 %3, ptr %16, align 4
  %17 = tail call ptr @get_filesystem(ptr noundef %0) #9
  %18 = getelementptr inbounds %struct.fs_context, ptr %7, i32 0, i32 2
  store ptr %17, ptr %18, align 8
  %19 = tail call ptr @llvm.thread.pointer() #9
  %20 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 83
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.cred, ptr %21, i32 0, i32 24
  store i32 0, ptr %24, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %21) #9, !srcloc !9
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %21, ptr nonnull %21, i32 1, ptr nonnull elementtype(i32) %21) #9, !srcloc !10
  br label %26

26:                                               ; preds = %23, %9
  %27 = getelementptr inbounds %struct.fs_context, ptr %7, i32 0, i32 8
  store ptr %21, ptr %27, align 8
  %28 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 92
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nsproxy, ptr %29, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.fs_context, ptr %7, i32 0, i32 7
  store ptr %31, ptr %32, align 4
  %33 = load ptr, ptr %0, align 4
  %34 = getelementptr inbounds %struct.fs_context, ptr %7, i32 0, i32 9
  store ptr %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.fs_context, ptr %7, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %35, ptr noundef nonnull @.str.6, ptr noundef nonnull @alloc_fs_context.__key) #9
  switch i32 %4, label %51 [
    i32 0, label %36
    i32 1, label %38
    i32 2, label %40
  ]

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.fs_context, ptr %7, i32 0, i32 6
  store ptr @init_user_ns, ptr %37, align 8
  br label %51

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.fs_context, ptr %7, i32 0, i32 6
  store ptr @init_user_ns, ptr %39, align 8
  br label %51

40:                                               ; preds = %26
  %41 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.super_block, ptr %42, i32 0, i32 16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #9, !srcloc !9
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 1, ptr elementtype(i32) %43) #9, !srcloc !10
  %45 = getelementptr inbounds %struct.fs_context, ptr %7, i32 0, i32 6
  store ptr @init_user_ns, ptr %45, align 8
  %46 = icmp eq ptr %1, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %48) #9
  br label %49

49:                                               ; preds = %47, %40
  %50 = getelementptr inbounds %struct.fs_context, ptr %7, i32 0, i32 5
  store ptr %1, ptr %50, align 4
  br label %51

51:                                               ; preds = %49, %38, %36, %26
  %52 = load ptr, ptr %18, align 8
  %53 = getelementptr inbounds %struct.file_system_type, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  %56 = select i1 %55, ptr @legacy_init_fs_context, ptr %54
  %57 = tail call i32 %56(ptr noundef nonnull %7) #9
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %51
  %60 = load i32, ptr %10, align 8
  %61 = or i32 %60, 65536
  store i32 %61, ptr %10, align 8
  br label %64

62:                                               ; preds = %51
  tail call void @put_fs_context(ptr noundef nonnull %7)
  %63 = inttoptr i32 %57 to ptr
  br label %64

64:                                               ; preds = %62, %59, %5
  %65 = phi ptr [ %63, %62 ], [ %7, %59 ], [ inttoptr (i32 -12 to ptr), %5 ]
  ret ptr %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fs_context_for_reconfigure(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 32
  %8 = tail call fastcc ptr @alloc_fs_context(ptr noundef %7, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 2)
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fs_context_for_submount(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc ptr @alloc_fs_context(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 1)
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fc_drop_locked(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  tail call void @dput(ptr noundef %3) #9
  store ptr null, ptr %2, align 4
  tail call void @deactivate_locked_super(ptr noundef %5) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_locked_super(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vfs_dup_fs_context(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.fs_context_operations, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %46, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @kmemdup(ptr noundef %0, i32 noundef 92, i32 noundef 3264) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %46, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.fs_context, ptr %7, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %10, ptr noundef nonnull @.str.6, ptr noundef nonnull @vfs_dup_fs_context.__key) #9
  %11 = getelementptr inbounds %struct.fs_context, ptr %7, i32 0, i32 3
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.fs_context, ptr %7, i32 0, i32 12
  store ptr null, ptr %12, align 4
  %13 = getelementptr inbounds %struct.fs_context, ptr %7, i32 0, i32 10
  store ptr null, ptr %13, align 4
  %14 = getelementptr inbounds %struct.fs_context, ptr %7, i32 0, i32 11
  store ptr null, ptr %14, align 4
  %15 = getelementptr inbounds %struct.fs_context, ptr %7, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr @get_filesystem(ptr noundef %16) #9
  %18 = getelementptr inbounds %struct.fs_context, ptr %7, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.cred, ptr %19, i32 0, i32 24
  store i32 0, ptr %22, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %19) #9, !srcloc !9
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %19, ptr nonnull %19, i32 1, ptr nonnull elementtype(i32) %19) #9, !srcloc !10
  br label %24

24:                                               ; preds = %21, %9
  %25 = getelementptr inbounds %struct.fs_context, ptr %7, i32 0, i32 9, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %26) #9, !srcloc !9
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %26, ptr nonnull %26, i32 1, ptr nonnull elementtype(i32) %26) #9, !srcloc !11
  %30 = extractvalue { i32, i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32, !prof !12

32:                                               ; preds = %28
  %33 = add i32 %30, 1
  %34 = or i32 %33, %30
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %38, label %36, !prof !13

36:                                               ; preds = %32, %28
  %37 = phi i32 [ 2, %28 ], [ 1, %32 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %26, i32 noundef %37) #9
  br label %38

38:                                               ; preds = %36, %32, %24
  %39 = load ptr, ptr %7, align 4
  %40 = getelementptr inbounds %struct.fs_context_operations, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 %41(ptr noundef nonnull %7, ptr noundef %0) #9
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  tail call void @put_fs_context(ptr noundef nonnull %7)
  %45 = inttoptr i32 %42 to ptr
  br label %46

46:                                               ; preds = %44, %38, %6, %1
  %47 = phi ptr [ %45, %44 ], [ inttoptr (i32 -95 to ptr), %1 ], [ inttoptr (i32 -12 to ptr), %6 ], [ %7, %38 ]
  ret ptr %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @put_fs_context(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  tail call void @dput(ptr noundef nonnull %3) #9
  store ptr null, ptr %2, align 4
  tail call void @deactivate_super(ptr noundef %7) #9
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 17
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 65536
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr %0, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %14, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void %17(ptr noundef %0) #9
  br label %20

20:                                               ; preds = %19, %16, %13, %8
  %21 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %22) #9, !srcloc !9
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %22, ptr nonnull %22, i32 1, ptr nonnull elementtype(i32) %22) #9, !srcloc !15
  %26 = extractvalue { i32, i32 } %25, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call void @__put_cred(ptr noundef nonnull %22) #9
  br label %29

29:                                               ; preds = %28, %24, %20
  %30 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %113, label %33

33:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %31) #9, !srcloc !9
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %31, ptr nonnull %31, i32 1, ptr nonnull elementtype(i32) %31) #9, !srcloc !18
  %35 = extractvalue { i32, i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = icmp sgt i32 %35, 0
  br i1 %38, label %113, label %39, !prof !13

39:                                               ; preds = %37
  tail call void @refcount_warn_saturate(ptr noundef nonnull %31, i32 noundef 3) #9
  br label %113

40:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  store ptr null, ptr %30, align 4
  %41 = getelementptr inbounds %struct.fc_log, ptr %31, i32 0, i32 3
  %42 = load i8, ptr %41, align 2
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %40
  %47 = getelementptr %struct.fc_log, ptr %31, i32 0, i32 5, i32 0
  %48 = load ptr, ptr %47, align 4
  tail call void @kfree(ptr noundef %48) #9
  %49 = load i8, ptr %41, align 2
  %50 = zext i8 %49 to i32
  br label %51

51:                                               ; preds = %46, %40
  %52 = phi i32 [ %43, %40 ], [ %50, %46 ]
  %53 = and i32 %52, 2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = getelementptr %struct.fc_log, ptr %31, i32 0, i32 5, i32 1
  %57 = load ptr, ptr %56, align 4
  tail call void @kfree(ptr noundef %57) #9
  %58 = load i8, ptr %41, align 2
  %59 = zext i8 %58 to i32
  br label %60

60:                                               ; preds = %55, %51
  %61 = phi i32 [ %59, %55 ], [ %52, %51 ]
  %62 = and i32 %61, 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = getelementptr %struct.fc_log, ptr %31, i32 0, i32 5, i32 2
  %66 = load ptr, ptr %65, align 4
  tail call void @kfree(ptr noundef %66) #9
  %67 = load i8, ptr %41, align 2
  %68 = zext i8 %67 to i32
  br label %69

69:                                               ; preds = %64, %60
  %70 = phi i32 [ %68, %64 ], [ %61, %60 ]
  %71 = and i32 %70, 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = getelementptr %struct.fc_log, ptr %31, i32 0, i32 5, i32 3
  %75 = load ptr, ptr %74, align 4
  tail call void @kfree(ptr noundef %75) #9
  %76 = load i8, ptr %41, align 2
  %77 = zext i8 %76 to i32
  br label %78

78:                                               ; preds = %73, %69
  %79 = phi i32 [ %77, %73 ], [ %70, %69 ]
  %80 = and i32 %79, 16
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %78
  %83 = getelementptr %struct.fc_log, ptr %31, i32 0, i32 5, i32 4
  %84 = load ptr, ptr %83, align 4
  tail call void @kfree(ptr noundef %84) #9
  %85 = load i8, ptr %41, align 2
  %86 = zext i8 %85 to i32
  br label %87

87:                                               ; preds = %82, %78
  %88 = phi i32 [ %86, %82 ], [ %79, %78 ]
  %89 = and i32 %88, 32
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %87
  %92 = getelementptr %struct.fc_log, ptr %31, i32 0, i32 5, i32 5
  %93 = load ptr, ptr %92, align 4
  tail call void @kfree(ptr noundef %93) #9
  %94 = load i8, ptr %41, align 2
  %95 = zext i8 %94 to i32
  br label %96

96:                                               ; preds = %91, %87
  %97 = phi i32 [ %95, %91 ], [ %88, %87 ]
  %98 = and i32 %97, 64
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %96
  %101 = getelementptr %struct.fc_log, ptr %31, i32 0, i32 5, i32 6
  %102 = load ptr, ptr %101, align 4
  tail call void @kfree(ptr noundef %102) #9
  %103 = load i8, ptr %41, align 2
  %104 = zext i8 %103 to i32
  br label %105

105:                                              ; preds = %100, %96
  %106 = phi i32 [ %104, %100 ], [ %97, %96 ]
  %107 = and i32 %106, 128
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %105
  %110 = getelementptr %struct.fc_log, ptr %31, i32 0, i32 5, i32 7
  %111 = load ptr, ptr %110, align 4
  tail call void @kfree(ptr noundef %111) #9
  br label %112

112:                                              ; preds = %109, %105
  tail call void @kfree(ptr noundef nonnull %31) #9
  br label %113

113:                                              ; preds = %112, %39, %37, %29
  %114 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 2
  %115 = load ptr, ptr %114, align 4
  tail call void @put_filesystem(ptr noundef %115) #9
  %116 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 10
  %117 = load ptr, ptr %116, align 4
  tail call void @kfree(ptr noundef %117) #9
  tail call void @kfree(ptr noundef %0) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_super(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @legacy_fs_context_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.legacy_fs_context, ptr %3, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %10) #9
  br label %11

11:                                               ; preds = %9, %5
  tail call void @kfree(ptr noundef nonnull %3) #9
  br label %12

12:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @legacy_fs_context_dup(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @kmemdup(ptr noundef %4, i32 noundef 12, i32 noundef 3264) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.legacy_fs_context, ptr %5, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.legacy_fs_context, ptr %4, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = tail call ptr @kmemdup(ptr noundef %12, i32 noundef %14, i32 noundef 3264) #9
  store ptr %15, ptr %5, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  tail call void @kfree(ptr noundef nonnull %5) #9
  br label %20

18:                                               ; preds = %11, %7
  %19 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  store ptr %5, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %17, %2
  %21 = phi i32 [ 0, %18 ], [ -12, %17 ], [ -12, %2 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @legacy_parse_param(ptr nocapture noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.legacy_fs_context, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = load ptr, ptr %1, align 4
  %8 = tail call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(7) @.str) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 1
  %12 = load i8, ptr %11, align 4
  %13 = icmp eq i8 %12, 2
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %16, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.1) #9
  br label %103

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 10
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %23 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %23, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.2) #9
  br label %103

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  store ptr %26, ptr %18, align 4
  store ptr null, ptr %25, align 4
  br label %103

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.legacy_fs_context, ptr %4, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %33 = load ptr, ptr %32, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %33, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.23)
  br label %103

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 1
  %36 = load i8, ptr %35, align 4
  switch i8 %36, label %48 [
    i8 2, label %37
    i8 1, label %41
  ]

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, 1
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi i32 [ 0, %34 ], [ %40, %37 ]
  %43 = tail call i32 @strlen(ptr noundef %7)
  %44 = add i32 %6, -4095
  %45 = add i32 %44, %42
  %46 = add i32 %45, %43
  %47 = icmp ult i32 %46, -4097
  br i1 %47, label %51, label %54

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %50 = load ptr, ptr %49, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %50, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.24, ptr noundef %7)
  br label %103

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %53 = load ptr, ptr %52, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %53, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.25)
  br label %103

54:                                               ; preds = %41
  %55 = tail call ptr @strchr(ptr noundef %7, i32 noundef 44)
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = icmp eq i8 %36, 2
  br i1 %58, label %59, label %69

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = tail call ptr @memchr(ptr noundef %61, i32 noundef 44, i32 noundef %63)
  %65 = icmp eq ptr %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %59, %54
  %67 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %68 = load ptr, ptr %67, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %68, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.26, ptr noundef %7)
  br label %103

69:                                               ; preds = %59, %57
  %70 = load ptr, ptr %4, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %74 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %73, i32 noundef 3264, i32 noundef 4096) #11
  store ptr %74, ptr %4, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %103, label %76

76:                                               ; preds = %72, %69
  %77 = phi ptr [ %74, %72 ], [ %70, %69 ]
  %78 = add i32 %6, 1
  %79 = getelementptr i8, ptr %77, i32 %6
  store i8 44, ptr %79, align 1
  %80 = load ptr, ptr %1, align 4
  %81 = tail call i32 @strlen(ptr noundef %80)
  %82 = load ptr, ptr %4, align 4
  %83 = getelementptr i8, ptr %82, i32 %78
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %83, ptr align 1 %80, i32 %81, i1 false)
  %84 = add i32 %81, %78
  %85 = load i8, ptr %35, align 4
  %86 = icmp eq i8 %85, 2
  br i1 %86, label %87, label %99

87:                                               ; preds = %76
  %88 = load ptr, ptr %4, align 4
  %89 = add i32 %84, 1
  %90 = getelementptr i8, ptr %88, i32 %84
  store i8 61, ptr %90, align 1
  %91 = load ptr, ptr %4, align 4
  %92 = getelementptr i8, ptr %91, i32 %89
  %93 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 2
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 3
  %96 = load i32, ptr %95, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %92, ptr align 1 %94, i32 %96, i1 false)
  %97 = load i32, ptr %95, align 4
  %98 = add i32 %97, %89
  br label %99

99:                                               ; preds = %87, %76
  %100 = phi i32 [ %98, %87 ], [ %84, %76 ]
  %101 = load ptr, ptr %4, align 4
  %102 = getelementptr i8, ptr %101, i32 %100
  store i8 0, ptr %102, align 1
  store i32 %100, ptr %5, align 4
  store i32 2, ptr %28, align 4
  br label %103

103:                                              ; preds = %99, %72, %66, %51, %48, %31, %24, %21, %14
  %104 = phi i32 [ -22, %31 ], [ -22, %48 ], [ -22, %51 ], [ -22, %66 ], [ 0, %99 ], [ -12, %72 ], [ 0, %24 ], [ -22, %21 ], [ -22, %14 ]
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @legacy_parse_monolithic(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.legacy_fs_context, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  br label %11

10:                                               ; preds = %2
  store ptr %1, ptr %4, align 4
  store i32 1, ptr %5, align 4
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi i32 [ -22, %8 ], [ 0, %10 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @legacy_get_tree(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.file_system_type, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 13
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %3, align 4
  %13 = tail call ptr %7(ptr noundef %5, i32 noundef %9, ptr noundef %11, ptr noundef %12) #9
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = ptrtoint ptr %13 to i32
  br label %24

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 9
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22, !prof !12

21:                                               ; preds = %17
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fs_context.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 616, 0\0A.popsection", ""() #9, !srcloc !20
  unreachable

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 5
  store ptr %13, ptr %23, align 4
  br label %24

24:                                               ; preds = %22, %15
  %25 = phi i32 [ %16, %15 ], [ 0, %22 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @legacy_reconfigure(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_operations, ptr %9, i32 0, i32 14
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 13
  %15 = icmp eq ptr %3, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %3, align 4
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi ptr [ %17, %16 ], [ null, %13 ]
  %20 = tail call i32 %11(ptr noundef %7, ptr noundef %14, ptr noundef %19) #9
  br label %21

21:                                               ; preds = %18, %1
  %22 = phi i32 [ %20, %18 ], [ 0, %1 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @parse_monolithic_mount_data(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.fs_context_operations, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr @generic_parse_monolithic, ptr %5
  %8 = tail call i32 %7(ptr noundef %0, ptr noundef %1) #9
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vfs_clean_context(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 17
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 65536
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %7, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  tail call void %10(ptr noundef %0) #9
  %13 = load i32, ptr %2, align 4
  br label %14

14:                                               ; preds = %12, %9, %6, %1
  %15 = phi i32 [ %13, %12 ], [ %3, %9 ], [ %3, %6 ], [ %3, %1 ]
  %16 = and i32 %15, -65537
  store i32 %16, ptr %2, align 4
  %17 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  store ptr null, ptr %17, align 4
  %18 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 12
  store ptr null, ptr %18, align 4
  %19 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 13
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 10
  %21 = load ptr, ptr %20, align 4
  tail call void @kfree(ptr noundef %21) #9
  store ptr null, ptr %20, align 4
  %22 = load i32, ptr %2, align 4
  %23 = and i32 %22, -65536
  %24 = or i32 %23, 770
  store i32 %24, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @finish_clean_context(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 17
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 65280
  %5 = icmp eq i32 %4, 768
  br i1 %5, label %6, label %29

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.file_system_type, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 4197824, i32 noundef 12) #11
  %15 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  store ptr %14, ptr %15, align 4
  %16 = icmp eq ptr %14, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  store ptr @legacy_fs_context_ops, ptr %0, align 4
  br label %21

18:                                               ; preds = %6
  %19 = tail call i32 %10(ptr noundef %0) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22, !prof !13

21:                                               ; preds = %18, %17
  br label %22

22:                                               ; preds = %21, %18, %12
  %23 = phi i32 [ -130817, %21 ], [ -65281, %12 ], [ -65281, %18 ]
  %24 = phi i32 [ 66560, %21 ], [ 1536, %12 ], [ 1536, %18 ]
  %25 = phi i32 [ 0, %21 ], [ -12, %12 ], [ %19, %18 ]
  %26 = load i32, ptr %2, align 4
  %27 = and i32 %26, %23
  %28 = or i32 %27, %24
  store i32 %28, ptr %2, align 4
  br label %29

29:                                               ; preds = %22, %1
  %30 = phi i32 [ 0, %1 ], [ %25, %22 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @legacy_init_fs_context(ptr nocapture noundef writeonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 4197824, i32 noundef 12) #11
  %4 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  store ptr %3, ptr %4, align 4
  %5 = icmp eq ptr %3, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store ptr @legacy_fs_context_ops, ptr %0, align 4
  br label %7

7:                                                ; preds = %6, %1
  %8 = phi i32 [ 0, %6 ], [ -12, %1 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lookup_constant(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!8 = !{!"auto-init"}
!9 = !{i64 557887, i64 2148047858, i64 2148047884, i64 2148047931, i64 2148047953, i64 2148047981, i64 2148048001}
!10 = !{i64 2148059273, i64 2148059299, i64 2148059328, i64 2148059362, i64 2148059393, i64 2148059416}
!11 = !{i64 2148060731, i64 2148060763, i64 2148060792, i64 2148060826, i64 2148060857, i64 2148060880}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2148159952}
!15 = !{i64 2148062314, i64 2148062346, i64 2148062375, i64 2148062409, i64 2148062440, i64 2148062463}
!16 = !{i64 2148160155}
!17 = !{i64 2148160953}
!18 = !{i64 2148063088, i64 2148063120, i64 2148063149, i64 2148063183, i64 2148063214, i64 2148063237}
!19 = !{i64 2149010400}
!20 = !{i64 2153753455, i64 2153753935, i64 2153753492, i64 2153753548, i64 2153753582, i64 2153753606, i64 2153753647, i64 2153753668, i64 2153753696, i64 2153753730}
