; ModuleID = '/llk/IR/fs/proc/proc_sysctl.c_pt.bc'
source_filename = "../fs/proc/proc_sysctl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysctl_vals:\09\09\09\09\09"
module asm "\09.asciz \09\22sysctl_vals\22\09\09\09\09\09"
module asm "__kstrtabns_sysctl_vals:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysctl_long_vals:\09\09\09\09\09"
module asm "\09.asciz \09\22sysctl_long_vals\22\09\09\09\09\09"
module asm "__kstrtabns_sysctl_long_vals:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_sysctl_mount_point:\09\09\09\09\09"
module asm "\09.asciz \09\22register_sysctl_mount_point\22\09\09\09\09\09"
module asm "__kstrtabns_register_sysctl_mount_point:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_sysctl:\09\09\09\09\09"
module asm "\09.asciz \09\22register_sysctl\22\09\09\09\09\09"
module asm "__kstrtabns_register_sysctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_sysctl_paths:\09\09\09\09\09"
module asm "\09.asciz \09\22register_sysctl_paths\22\09\09\09\09\09"
module asm "__kstrtabns_register_sysctl_paths:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_sysctl_table:\09\09\09\09\09"
module asm "\09.asciz \09\22register_sysctl_table\22\09\09\09\09\09"
module asm "__kstrtabns_register_sysctl_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_sysctl_table:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_sysctl_table\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_sysctl_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.ctl_table_root = type { %struct.ctl_table_set, ptr, ptr, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.1, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.ctl_path = type { ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [12 x i8] }
%struct.user_namespace = type opaque
%struct.sysctl_alias = type { ptr, ptr }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.ctl_node = type { %struct.rb_node, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.proc_dir_entry = type { %struct.atomic_t, %struct.refcount_struct, %struct.list_head, %struct.spinlock, ptr, ptr, %union.anon.70, ptr, %union.anon.71, ptr, ptr, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, ptr, %struct.rb_root, %struct.rb_node, ptr, i16, i8, i8, [0 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.70 = type { ptr }
%union.anon.71 = type { ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.path = type { ptr, ptr }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.64, %struct.list_head, %struct.list_head, %union.anon.65 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { i64 }
%union.anon.64 = type { %struct.list_head }
%union.anon.65 = type { %struct.hlist_node }
%struct.anon.3 = type { i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.66, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.67, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.68, ptr, %struct.address_space, %struct.list_head, %union.anon.69, i32, i32, ptr, ptr }
%union.anon.66 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.67 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.68 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.69 = type { ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.60, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.52 }
%struct.llist_node = type { ptr }
%union.anon.52 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.53 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.tlbflush_unmap_batch = type {}
%union.anon.60 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.33 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.33 = type { %struct.callback_head }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.20, %union.anon.21 }
%union.anon.20 = type { ptr }
%union.anon.21 = type { i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.dir_context = type { ptr, i64 }

@sysctl_vals = dso_local constant [11 x i32] [i32 -1, i32 0, i32 1, i32 2, i32 4, i32 100, i32 200, i32 1000, i32 3000, i32 2147483647, i32 65535], align 4
@__kstrtab_sysctl_vals = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysctl_vals = external dso_local constant [0 x i8], align 1
@__ksymtab_sysctl_vals = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysctl_vals to i32), ptr @__kstrtab_sysctl_vals, ptr @__kstrtabns_sysctl_vals }, section "___ksymtab+sysctl_vals", align 4
@sysctl_long_vals = dso_local constant [3 x i32] [i32 0, i32 1, i32 2147483647], align 4
@__kstrtab_sysctl_long_vals = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysctl_long_vals = external dso_local constant [0 x i8], align 1
@__ksymtab_sysctl_long_vals = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysctl_long_vals to i32), ptr @__kstrtab_sysctl_long_vals, ptr @__kstrtabns_sysctl_long_vals }, section "___ksymtab_gpl+sysctl_long_vals", align 4
@sysctl_mount_point = dso_local global [1 x %struct.ctl_table] zeroinitializer, align 4
@__kstrtab_register_sysctl_mount_point = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_sysctl_mount_point = external dso_local constant [0 x i8], align 1
@__ksymtab_register_sysctl_mount_point = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_sysctl_mount_point to i32), ptr @__kstrtab_register_sysctl_mount_point, ptr @__kstrtabns_register_sysctl_mount_point }, section "___ksymtab+register_sysctl_mount_point", align 4
@sysctl_lock = internal global %struct.spinlock zeroinitializer, align 4
@sysctl_table_root = internal global %struct.ctl_table_root { %struct.ctl_table_set { ptr null, %struct.ctl_dir { %struct.ctl_table_header { %union.anon.1 { %struct.anon { ptr @root_table, i32 0, i32 1, i32 1 } }, ptr null, ptr @root_table, ptr @sysctl_table_root, ptr @sysctl_table_root, ptr null, ptr null, %struct.hlist_head zeroinitializer }, %struct.rb_root zeroinitializer } }, ptr null, ptr null, ptr null }, align 4
@__kstrtab_register_sysctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_sysctl = external dso_local constant [0 x i8], align 1
@__ksymtab_register_sysctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_sysctl to i32), ptr @__kstrtab_register_sysctl, ptr @__kstrtabns_register_sysctl }, section "___ksymtab+register_sysctl", align 4
@.str = private unnamed_addr constant [40 x i8] c"\013failed when register_sysctl %s to %s\0A\00", align 1
@__kstrtab_register_sysctl_paths = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_sysctl_paths = external dso_local constant [0 x i8], align 1
@__ksymtab_register_sysctl_paths = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_sysctl_paths to i32), ptr @__kstrtab_register_sysctl_paths, ptr @__kstrtabns_register_sysctl_paths }, section "___ksymtab+register_sysctl_paths", align 4
@register_sysctl_table.null_path = internal constant [1 x %struct.ctl_path] zeroinitializer, align 4
@__kstrtab_register_sysctl_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_sysctl_table = external dso_local constant [0 x i8], align 1
@__ksymtab_register_sysctl_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_sysctl_table to i32), ptr @__kstrtab_register_sysctl_table, ptr @__kstrtabns_register_sysctl_table }, section "___ksymtab+register_sysctl_table", align 4
@__kstrtab_unregister_sysctl_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_sysctl_table = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_sysctl_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_sysctl_table to i32), ptr @__kstrtab_unregister_sysctl_table, ptr @__kstrtabns_unregister_sysctl_table }, section "___ksymtab+unregister_sysctl_table", align 4
@root_table = internal global [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.19, ptr null, i32 0, i16 16749, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"fs/proc/proc_sysctl.c\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"sys\00", align 1
@proc_sys_dir_operations = internal constant %struct.inode_operations { ptr @proc_sys_lookup, ptr null, ptr @proc_sys_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_sys_setattr, ptr @proc_sys_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@proc_sys_dir_file_operations = internal constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_sys_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@saved_command_line = external dso_local local_unnamed_addr global ptr, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"%s: Failed to allocate copy of command line\0A\00", align 1
@__func__.do_sysctl_args = private unnamed_addr constant [15 x i8] c"do_sysctl_args\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Setting sysctl args\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Not a file\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"No data\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"No maxlen\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"No proc_handler\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"bogus .mode 0%o\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"\013sysctl table check failed: %s/%s %pV\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"array not allowed\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"\013sysctl could not get directory: \00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"\01c%*.*s %ld\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"\01c%s/\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"\013sysctl duplicate entry: \00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"\01c%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"\013sysctl link missing during unregister: \00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@proc_sys_dentry_operations = internal constant %struct.dentry_operations { ptr @proc_sys_revalidate, ptr null, ptr null, ptr @proc_sys_compare, ptr @proc_sys_delete, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [12 x i8] undef }, align 64
@proc_sys_inode_operations = internal constant %struct.inode_operations { ptr null, ptr null, ptr @proc_sys_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_sys_setattr, ptr @proc_sys_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@proc_sys_file_operations = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr null, ptr @proc_sys_read, ptr @proc_sys_write, ptr null, ptr null, ptr null, ptr @proc_sys_poll, ptr null, ptr null, ptr null, i32 0, ptr @proc_sys_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@.str.22 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"sysctl\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"proc\00", align 1
@.str.26 = private unnamed_addr constant [57 x i8] c"\013Failed to find procfs to set sysctl from command line\0A\00", align 1
@.str.27 = private unnamed_addr constant [58 x i8] c"\013Failed to mount procfs to set sysctl from command line\0A\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"sys/%s\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"%s: Failed to allocate path for %s\0A\00", align 1
@__func__.process_sysctl_arg = private unnamed_addr constant [19 x i8] c"process_sysctl_arg\00", align 1
@.str.30 = private unnamed_addr constant [63 x i8] c"\013Failed to set sysctl parameter '%s=%s': parameter not found\0A\00", align 1
@.str.31 = private unnamed_addr constant [74 x i8] c"\013Failed to set sysctl parameter '%s=%s': permission denied (read-only?)\0A\00", align 1
@.str.32 = private unnamed_addr constant [63 x i8] c"\013Error %pe opening proc file to set sysctl parameter '%s=%s'\0A\00", align 1
@.str.33 = private unnamed_addr constant [57 x i8] c"\013Failed to set sysctl parameter '%s=%s': invalid value\0A\00", align 1
@.str.34 = private unnamed_addr constant [66 x i8] c"\013Error %pe writing to proc file to set sysctl parameter '%s=%s'\0A\00", align 1
@.str.35 = private unnamed_addr constant [85 x i8] c"\013Wrote only %zd bytes of %d writing to proc file %s to set sysctl parameter '%s=%s\0A\00", align 1
@.str.36 = private unnamed_addr constant [62 x i8] c"\013Error %pe closing proc file to set sysctl parameter '%s=%s\0A\00", align 1
@sysctl_aliases = internal unnamed_addr constant [6 x %struct.sysctl_alias] [%struct.sysctl_alias { ptr @.str.37, ptr @.str.38 }, %struct.sysctl_alias { ptr @.str.39, ptr @.str.40 }, %struct.sysctl_alias { ptr @.str.41, ptr @.str.42 }, %struct.sysctl_alias { ptr @.str.43, ptr @.str.44 }, %struct.sysctl_alias { ptr @.str.45, ptr @.str.46 }, %struct.sysctl_alias zeroinitializer], align 4
@.str.37 = private unnamed_addr constant [29 x i8] c"hardlockup_all_cpu_backtrace\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"kernel.hardlockup_all_cpu_backtrace\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"hung_task_panic\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"kernel.hung_task_panic\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"numa_zonelist_order\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"vm.numa_zonelist_order\00", align 1
@.str.43 = private unnamed_addr constant [29 x i8] c"softlockup_all_cpu_backtrace\00", align 1
@.str.44 = private unnamed_addr constant [36 x i8] c"kernel.softlockup_all_cpu_backtrace\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"softlockup_panic\00", align 1
@.str.46 = private unnamed_addr constant [24 x i8] c"kernel.softlockup_panic\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_register_sysctl, ptr @__ksymtab_register_sysctl_mount_point, ptr @__ksymtab_register_sysctl_paths, ptr @__ksymtab_register_sysctl_table, ptr @__ksymtab_sysctl_long_vals, ptr @__ksymtab_sysctl_vals, ptr @__ksymtab_unregister_sysctl_table], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @register_sysctl_mount_point(ptr noundef %0) #0 {
  %2 = tail call ptr @__register_sysctl_table(ptr noundef nonnull @sysctl_table_root, ptr noundef %0, ptr noundef nonnull @sysctl_mount_point) #21
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @register_sysctl(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @__register_sysctl_table(ptr noundef nonnull @sysctl_table_root, ptr noundef %0, ptr noundef %1)
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @proc_sys_poll_notify(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #21, !srcloc !8
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #21, !srcloc !9
  %5 = getelementptr inbounds %struct.ctl_table_poll, ptr %0, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %5, i32 noundef 1, i32 noundef 1, ptr noundef null) #21
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @proc_sys_evict_inode(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #21
  %3 = getelementptr i8, ptr %0, i32 -12
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 -16
  %8 = load ptr, ptr %7, align 4
  store volatile ptr %8, ptr %4, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1
  store volatile ptr %4, ptr %11, align 4
  br label %12

12:                                               ; preds = %10, %6
  store volatile ptr null, ptr %3, align 4
  br label %13

13:                                               ; preds = %12, %2
  %14 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, -1
  store i32 %16, ptr %14, align 4
  %17 = icmp ne i32 %16, 0
  %18 = icmp eq ptr %1, null
  %19 = or i1 %18, %17
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  tail call void @kvfree_call_rcu(ptr noundef nonnull %1, ptr noundef null) #21
  br label %21

21:                                               ; preds = %20, %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %22 = load i16, ptr @sysctl_lock, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr @sysctl_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__register_sysctl_table(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ctl_table_set, ptr %0, i32 0, i32 1
  %5 = getelementptr inbounds %struct.ctl_table_set, ptr %0, i32 0, i32 1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %2, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %9, %3
  %10 = phi i32 [ %12, %9 ], [ 0, %3 ]
  %11 = phi ptr [ %13, %9 ], [ %2, %3 ]
  %12 = add i32 %10, 1
  %13 = getelementptr %struct.ctl_table, ptr %11, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %9

16:                                               ; preds = %9
  %17 = shl i32 %12, 4
  %18 = add i32 %17, 44
  br label %19

19:                                               ; preds = %16, %3
  %20 = phi i32 [ 44, %3 ], [ %18, %16 ]
  %21 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #22
  %22 = icmp eq ptr %21, null
  br i1 %22, label %322, label %23

23:                                               ; preds = %19
  %24 = getelementptr %struct.ctl_table_header, ptr %21, i32 1
  store ptr %2, ptr %21, align 64
  %25 = getelementptr inbounds %struct.ctl_table_header, ptr %21, i32 0, i32 2
  store ptr %2, ptr %25, align 4
  %26 = getelementptr inbounds %struct.anon, ptr %21, i32 0, i32 1
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.anon, ptr %21, i32 0, i32 2
  store i32 1, ptr %27, align 8
  %28 = getelementptr inbounds %struct.anon, ptr %21, i32 0, i32 3
  store i32 1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.ctl_table_header, ptr %21, i32 0, i32 1
  store ptr null, ptr %29, align 16
  %30 = getelementptr inbounds %struct.ctl_table_header, ptr %21, i32 0, i32 3
  store ptr %6, ptr %30, align 8
  %31 = getelementptr inbounds %struct.ctl_table_header, ptr %21, i32 0, i32 4
  store ptr %0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.ctl_table_header, ptr %21, i32 0, i32 5
  store ptr null, ptr %32, align 32
  %33 = getelementptr inbounds %struct.ctl_table_header, ptr %21, i32 0, i32 6
  store ptr %24, ptr %33, align 4
  %34 = getelementptr inbounds %struct.ctl_table_header, ptr %21, i32 0, i32 7
  store ptr null, ptr %34, align 8
  %35 = load ptr, ptr %2, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %136, label %37

37:                                               ; preds = %37, %23
  %38 = phi ptr [ %41, %37 ], [ %2, %23 ]
  %39 = phi ptr [ %42, %37 ], [ %24, %23 ]
  %40 = getelementptr inbounds %struct.ctl_node, ptr %39, i32 0, i32 1
  store ptr %21, ptr %40, align 4
  %41 = getelementptr %struct.ctl_table, ptr %38, i32 1
  %42 = getelementptr %struct.ctl_node, ptr %39, i32 1
  %43 = load ptr, ptr %41, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %37

45:                                               ; preds = %37
  %46 = load ptr, ptr %2, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %136, label %48

48:                                               ; preds = %129, %45
  %49 = phi i32 [ %130, %129 ], [ 0, %45 ]
  %50 = phi ptr [ %131, %129 ], [ %2, %45 ]
  %51 = getelementptr inbounds %struct.ctl_table, ptr %50, i32 0, i32 4
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %48
  tail call void (ptr, ptr, ptr, ...) @sysctl_err(ptr noundef %1, ptr noundef %50, ptr noundef nonnull @.str.5) #21
  %55 = or i32 %49, -22
  br label %56

56:                                               ; preds = %54, %48
  %57 = phi i32 [ %55, %54 ], [ %49, %48 ]
  %58 = getelementptr inbounds %struct.ctl_table, ptr %50, i32 0, i32 5
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, @proc_dostring
  %61 = icmp eq ptr %59, @proc_dointvec
  %62 = or i1 %60, %61
  %63 = icmp eq ptr %59, @proc_douintvec
  %64 = or i1 %63, %62
  %65 = icmp eq ptr %59, @proc_douintvec_minmax
  %66 = or i1 %65, %64
  %67 = icmp eq ptr %59, @proc_dointvec_minmax
  %68 = or i1 %67, %66
  %69 = icmp eq ptr %59, @proc_dou8vec_minmax
  %70 = or i1 %69, %68
  %71 = icmp eq ptr %59, @proc_dointvec_jiffies
  %72 = or i1 %71, %70
  %73 = icmp eq ptr %59, @proc_dointvec_userhz_jiffies
  %74 = or i1 %73, %72
  %75 = icmp eq ptr %59, @proc_dointvec_ms_jiffies
  %76 = or i1 %75, %74
  %77 = icmp eq ptr %59, @proc_doulongvec_minmax
  %78 = or i1 %77, %76
  %79 = icmp eq ptr %59, @proc_doulongvec_ms_jiffies_minmax
  %80 = or i1 %79, %78
  br i1 %80, label %81, label %114

81:                                               ; preds = %56
  %82 = getelementptr inbounds %struct.ctl_table, ptr %50, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  tail call void (ptr, ptr, ptr, ...) @sysctl_err(ptr noundef %1, ptr noundef %50, ptr noundef nonnull @.str.6) #21
  %86 = or i32 %57, -22
  br label %87

87:                                               ; preds = %85, %81
  %88 = phi i32 [ %57, %81 ], [ %86, %85 ]
  %89 = getelementptr inbounds %struct.ctl_table, ptr %50, i32 0, i32 2
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  tail call void (ptr, ptr, ptr, ...) @sysctl_err(ptr noundef %1, ptr noundef %50, ptr noundef nonnull @.str.7) #21
  %93 = or i32 %88, -22
  br label %114

94:                                               ; preds = %87
  %95 = load ptr, ptr %58, align 4
  %96 = icmp ne ptr %95, @proc_douintvec
  %97 = icmp ne ptr %95, @proc_douintvec_minmax
  %98 = and i1 %96, %97
  %99 = icmp eq i32 %90, 4
  %100 = select i1 %98, i1 true, i1 %99
  br i1 %100, label %103, label %101

101:                                              ; preds = %94
  tail call void (ptr, ptr, ptr, ...) @sysctl_err(ptr noundef %1, ptr noundef %50, ptr noundef nonnull @.str.11) #21
  %102 = load ptr, ptr %58, align 4
  br label %103

103:                                              ; preds = %101, %94
  %104 = phi ptr [ %95, %94 ], [ %102, %101 ]
  %105 = phi i32 [ 0, %94 ], [ -22, %101 ]
  %106 = icmp eq ptr %104, @proc_dou8vec_minmax
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i32, ptr %89, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  tail call void (ptr, ptr, ptr, ...) @sysctl_err(ptr noundef %1, ptr noundef %50, ptr noundef nonnull @.str.11) #21
  br label %111

111:                                              ; preds = %110, %107, %103
  %112 = phi i32 [ -22, %110 ], [ %105, %107 ], [ %105, %103 ]
  %113 = or i32 %112, %88
  br label %114

114:                                              ; preds = %111, %92, %56
  %115 = phi i32 [ %113, %111 ], [ %93, %92 ], [ %57, %56 ]
  %116 = load ptr, ptr %58, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  tail call void (ptr, ptr, ptr, ...) @sysctl_err(ptr noundef %1, ptr noundef %50, ptr noundef nonnull @.str.8) #21
  %119 = or i32 %115, -22
  br label %120

120:                                              ; preds = %118, %114
  %121 = phi i32 [ %115, %114 ], [ %119, %118 ]
  %122 = getelementptr inbounds %struct.ctl_table, ptr %50, i32 0, i32 3
  %123 = load i16, ptr %122, align 4
  %124 = zext i16 %123 to i32
  %125 = and i32 %124, 438
  %126 = icmp eq i32 %125, %124
  br i1 %126, label %129, label %127

127:                                              ; preds = %120
  tail call void (ptr, ptr, ptr, ...) @sysctl_err(ptr noundef %1, ptr noundef %50, ptr noundef nonnull @.str.9, i32 noundef %124) #21
  %128 = or i32 %121, -22
  br label %129

129:                                              ; preds = %127, %120
  %130 = phi i32 [ %128, %127 ], [ %121, %120 ]
  %131 = getelementptr %struct.ctl_table, ptr %50, i32 1
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %48

134:                                              ; preds = %129
  %135 = icmp eq i32 %130, 0
  br i1 %135, label %136, label %321

136:                                              ; preds = %134, %45, %23
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #21
  %137 = getelementptr inbounds %struct.ctl_table_set, ptr %0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 3
  %138 = load i32, ptr %137, align 4
  %139 = add i32 %138, 1
  store i32 %139, ptr %137, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %140 = load i16, ptr @sysctl_lock, align 4
  %141 = add i16 %140, 1
  store i16 %141, ptr @sysctl_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %142 = icmp eq ptr %1, null
  br i1 %142, label %315, label %143

143:                                              ; preds = %312, %136
  %144 = phi ptr [ %313, %312 ], [ %4, %136 ]
  %145 = phi ptr [ %156, %312 ], [ %1, %136 ]
  %146 = tail call ptr @strchr(ptr noundef nonnull %145, i32 noundef 47)
  %147 = icmp eq ptr %146, null
  br i1 %147, label %153, label %148

148:                                              ; preds = %143
  %149 = ptrtoint ptr %146 to i32
  %150 = ptrtoint ptr %145 to i32
  %151 = sub i32 %149, %150
  %152 = getelementptr i8, ptr %146, i32 1
  br label %155

153:                                              ; preds = %143
  %154 = tail call i32 @strlen(ptr noundef nonnull %145)
  br label %155

155:                                              ; preds = %153, %148
  %156 = phi ptr [ %152, %148 ], [ null, %153 ]
  %157 = phi i32 [ %151, %148 ], [ %154, %153 ]
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %312, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.ctl_table_header, ptr %144, i32 0, i32 4
  %161 = load ptr, ptr %160, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #21
  %162 = getelementptr inbounds %struct.ctl_dir, ptr %144, i32 0, i32 1
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %206, label %165

165:                                              ; preds = %191, %159
  %166 = phi ptr [ %193, %191 ], [ %163, %159 ]
  %167 = getelementptr inbounds %struct.ctl_node, ptr %166, i32 0, i32 1
  %168 = load ptr, ptr %167, align 4
  %169 = load ptr, ptr %168, align 4
  %170 = getelementptr inbounds %struct.ctl_table_header, ptr %168, i32 0, i32 6
  %171 = load ptr, ptr %170, align 4
  %172 = ptrtoint ptr %166 to i32
  %173 = ptrtoint ptr %171 to i32
  %174 = sub i32 %172, %173
  %175 = ashr exact i32 %174, 4
  %176 = getelementptr %struct.ctl_table, ptr %169, i32 %175
  %177 = load ptr, ptr %176, align 4
  %178 = tail call i32 @strlen(ptr noundef %177) #21
  %179 = tail call i32 @llvm.smin.i32(i32 %157, i32 %178) #21
  %180 = tail call i32 @memcmp(ptr noundef nonnull %145, ptr noundef %177, i32 noundef %179) #21
  %181 = icmp eq i32 %180, 0
  %182 = sub i32 %157, %178
  %183 = select i1 %181, i32 %182, i32 %180
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %165
  %186 = getelementptr inbounds %struct.rb_node, ptr %166, i32 0, i32 2
  br label %191

187:                                              ; preds = %165
  %188 = icmp eq i32 %183, 0
  br i1 %188, label %195, label %189

189:                                              ; preds = %187
  %190 = getelementptr inbounds %struct.rb_node, ptr %166, i32 0, i32 1
  br label %191

191:                                              ; preds = %189, %185
  %192 = phi ptr [ %186, %185 ], [ %190, %189 ]
  %193 = load ptr, ptr %192, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %206, label %165

195:                                              ; preds = %187
  %196 = icmp eq ptr %176, null
  br i1 %196, label %206, label %197

197:                                              ; preds = %195
  %198 = getelementptr %struct.ctl_table, ptr %169, i32 %175, i32 3
  %199 = load i16, ptr %198, align 4
  %200 = and i16 %199, -4096
  %201 = icmp eq i16 %200, 16384
  br i1 %201, label %202, label %297

202:                                              ; preds = %197
  %203 = icmp ugt ptr %168, inttoptr (i32 -4096 to ptr)
  br i1 %203, label %204, label %287

204:                                              ; preds = %202
  %205 = icmp eq ptr %168, inttoptr (i32 -2 to ptr)
  br i1 %205, label %206, label %293

206:                                              ; preds = %204, %195, %191, %159
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %207 = load i16, ptr @sysctl_lock, align 4
  %208 = add i16 %207, 1
  store i16 %208, ptr @sysctl_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %209 = add i32 %157, 137
  %210 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %209, i32 noundef 3520) #22
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %213

212:                                              ; preds = %206
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #21
  br label %297

213:                                              ; preds = %206
  %214 = getelementptr %struct.ctl_dir, ptr %210, i32 1
  %215 = getelementptr %struct.ctl_dir, ptr %210, i32 1, i32 0, i32 1
  %216 = getelementptr %struct.ctl_dir, ptr %210, i32 2, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %216, ptr nonnull align 1 %145, i32 %157, i1 false) #21
  %217 = getelementptr i8, ptr %216, i32 %157
  store i8 0, ptr %217, align 1
  store ptr %216, ptr %215, align 64
  %218 = getelementptr %struct.ctl_dir, ptr %210, i32 1, i32 0, i32 4
  store i16 16749, ptr %218, align 4
  %219 = getelementptr inbounds %struct.ctl_table_set, ptr %161, i32 0, i32 1, i32 0, i32 3
  %220 = load ptr, ptr %219, align 4
  store ptr %215, ptr %210, align 64
  %221 = getelementptr inbounds %struct.ctl_table_header, ptr %210, i32 0, i32 2
  store ptr %215, ptr %221, align 4
  %222 = getelementptr inbounds %struct.anon, ptr %210, i32 0, i32 1
  store i32 0, ptr %222, align 4
  %223 = getelementptr inbounds %struct.anon, ptr %210, i32 0, i32 2
  store i32 1, ptr %223, align 8
  %224 = getelementptr inbounds %struct.anon, ptr %210, i32 0, i32 3
  store i32 1, ptr %224, align 4
  %225 = getelementptr inbounds %struct.ctl_table_header, ptr %210, i32 0, i32 1
  store ptr null, ptr %225, align 16
  %226 = getelementptr inbounds %struct.ctl_table_header, ptr %210, i32 0, i32 3
  store ptr %220, ptr %226, align 8
  %227 = getelementptr inbounds %struct.ctl_table_header, ptr %210, i32 0, i32 4
  store ptr %161, ptr %227, align 4
  %228 = getelementptr inbounds %struct.ctl_table_header, ptr %210, i32 0, i32 5
  store ptr null, ptr %228, align 32
  %229 = getelementptr inbounds %struct.ctl_table_header, ptr %210, i32 0, i32 6
  store ptr %214, ptr %229, align 4
  %230 = getelementptr inbounds %struct.ctl_table_header, ptr %210, i32 0, i32 7
  store ptr null, ptr %230, align 8
  br label %231

231:                                              ; preds = %231, %213
  %232 = phi ptr [ %235, %231 ], [ %215, %213 ]
  %233 = phi ptr [ %236, %231 ], [ %214, %213 ]
  %234 = getelementptr inbounds %struct.ctl_node, ptr %233, i32 0, i32 1
  store ptr %210, ptr %234, align 4
  %235 = getelementptr %struct.ctl_table, ptr %232, i32 1
  %236 = getelementptr %struct.ctl_node, ptr %233, i32 1
  %237 = load ptr, ptr %235, align 4
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %231

239:                                              ; preds = %231
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #21
  %240 = load ptr, ptr %162, align 4
  %241 = icmp eq ptr %240, null
  br i1 %241, label %283, label %242

242:                                              ; preds = %268, %239
  %243 = phi ptr [ %270, %268 ], [ %240, %239 ]
  %244 = getelementptr inbounds %struct.ctl_node, ptr %243, i32 0, i32 1
  %245 = load ptr, ptr %244, align 4
  %246 = load ptr, ptr %245, align 4
  %247 = getelementptr inbounds %struct.ctl_table_header, ptr %245, i32 0, i32 6
  %248 = load ptr, ptr %247, align 4
  %249 = ptrtoint ptr %243 to i32
  %250 = ptrtoint ptr %248 to i32
  %251 = sub i32 %249, %250
  %252 = ashr exact i32 %251, 4
  %253 = getelementptr %struct.ctl_table, ptr %246, i32 %252
  %254 = load ptr, ptr %253, align 4
  %255 = tail call i32 @strlen(ptr noundef %254) #21
  %256 = tail call i32 @llvm.smin.i32(i32 %157, i32 %255) #21
  %257 = tail call i32 @memcmp(ptr noundef nonnull %145, ptr noundef %254, i32 noundef %256) #21
  %258 = icmp eq i32 %257, 0
  %259 = sub i32 %157, %255
  %260 = select i1 %258, i32 %259, i32 %257
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %242
  %263 = getelementptr inbounds %struct.rb_node, ptr %243, i32 0, i32 2
  br label %268

264:                                              ; preds = %242
  %265 = icmp eq i32 %260, 0
  br i1 %265, label %272, label %266

266:                                              ; preds = %264
  %267 = getelementptr inbounds %struct.rb_node, ptr %243, i32 0, i32 1
  br label %268

268:                                              ; preds = %266, %262
  %269 = phi ptr [ %263, %262 ], [ %267, %266 ]
  %270 = load ptr, ptr %269, align 4
  %271 = icmp eq ptr %270, null
  br i1 %271, label %283, label %242

272:                                              ; preds = %264
  %273 = icmp eq ptr %253, null
  br i1 %273, label %283, label %274

274:                                              ; preds = %272
  %275 = getelementptr %struct.ctl_table, ptr %246, i32 %252, i32 3
  %276 = load i16, ptr %275, align 4
  %277 = and i16 %276, -4096
  %278 = icmp eq i16 %277, 16384
  br i1 %278, label %279, label %297

279:                                              ; preds = %274
  %280 = icmp ugt ptr %245, inttoptr (i32 -4096 to ptr)
  br i1 %280, label %281, label %287

281:                                              ; preds = %279
  %282 = icmp eq ptr %245, inttoptr (i32 -2 to ptr)
  br i1 %282, label %283, label %293

283:                                              ; preds = %281, %272, %268, %239
  %284 = tail call fastcc i32 @insert_header(ptr noundef %144, ptr noundef nonnull %210) #21
  %285 = inttoptr i32 %284 to ptr
  %286 = icmp eq i32 %284, 0
  br i1 %286, label %287, label %293

287:                                              ; preds = %283, %279, %202
  %288 = phi ptr [ %210, %279 ], [ null, %202 ], [ %210, %283 ]
  %289 = phi ptr [ %245, %279 ], [ %168, %202 ], [ %210, %283 ]
  %290 = getelementptr inbounds %struct.anon, ptr %289, i32 0, i32 3
  %291 = load i32, ptr %290, align 4
  %292 = add i32 %291, 1
  store i32 %292, ptr %290, align 4
  br label %293

293:                                              ; preds = %287, %283, %281, %204
  %294 = phi ptr [ null, %204 ], [ %210, %281 ], [ %210, %283 ], [ %288, %287 ]
  %295 = phi ptr [ %168, %204 ], [ %245, %281 ], [ %285, %283 ], [ %289, %287 ]
  %296 = icmp ugt ptr %295, inttoptr (i32 -4096 to ptr)
  br i1 %296, label %297, label %303

297:                                              ; preds = %293, %274, %212, %197
  %298 = phi ptr [ %295, %293 ], [ inttoptr (i32 -12 to ptr), %212 ], [ inttoptr (i32 -20 to ptr), %197 ], [ inttoptr (i32 -20 to ptr), %274 ]
  %299 = phi ptr [ %294, %293 ], [ null, %212 ], [ null, %197 ], [ %210, %274 ]
  %300 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #23
  tail call fastcc void @sysctl_print_dir(ptr noundef %144) #21
  %301 = ptrtoint ptr %298 to i32
  %302 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %157, i32 noundef %157, ptr noundef nonnull %145, i32 noundef %301) #23
  br label %303

303:                                              ; preds = %297, %293
  %304 = phi ptr [ %298, %297 ], [ %295, %293 ]
  %305 = phi ptr [ %299, %297 ], [ %294, %293 ]
  tail call fastcc void @drop_sysctl_table(ptr noundef %144) #21
  %306 = icmp eq ptr %305, null
  br i1 %306, label %308, label %307

307:                                              ; preds = %303
  tail call fastcc void @drop_sysctl_table(ptr noundef nonnull %305) #21
  br label %308

308:                                              ; preds = %307, %303
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %309 = load i16, ptr @sysctl_lock, align 4
  %310 = add i16 %309, 1
  store i16 %310, ptr @sysctl_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %311 = icmp ugt ptr %304, inttoptr (i32 -4096 to ptr)
  br i1 %311, label %321, label %312

312:                                              ; preds = %308, %155
  %313 = phi ptr [ %304, %308 ], [ %144, %155 ]
  %314 = icmp eq ptr %156, null
  br i1 %314, label %315, label %143

315:                                              ; preds = %312, %136
  %316 = phi ptr [ %4, %136 ], [ %313, %312 ]
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #21
  %317 = tail call fastcc i32 @insert_header(ptr noundef %316, ptr noundef nonnull %21)
  %318 = icmp eq i32 %317, 0
  tail call fastcc void @drop_sysctl_table(ptr noundef %316)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21
  %319 = load i16, ptr @sysctl_lock, align 4
  %320 = add i16 %319, 1
  store i16 %320, ptr @sysctl_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21
  tail call void asm sideeffect "", "~{memory}"() #21
  br i1 %318, label %322, label %321

321:                                              ; preds = %315, %308, %134
  tail call void @kfree(ptr noundef nonnull %21) #21
  tail call void @dump_stack() #23
  br label %322

322:                                              ; preds = %321, %315, %19
  %323 = phi ptr [ null, %321 ], [ null, %19 ], [ %21, %315 ]
  ret ptr %323
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @insert_header(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.ctl_table, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @sysctl_mount_point
  br i1 %6, label %226, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 4
  %9 = icmp eq ptr %8, @sysctl_mount_point
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ctl_dir, ptr %0, i32 0, i32 1
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %226

14:                                               ; preds = %10
  store ptr @sysctl_mount_point, ptr %4, align 4
  br label %15

15:                                               ; preds = %14, %7
  %16 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.ctl_table_header, ptr %1, i32 0, i32 5
  store ptr %0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ctl_table_header, ptr %1, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, @sysctl_table_root
  br i1 %22, label %123, label %23

23:                                               ; preds = %15
  %24 = tail call fastcc ptr @xlate_dir(ptr noundef nonnull @sysctl_table_root, ptr noundef %0) #21
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %123, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %1, align 4
  %28 = getelementptr inbounds %struct.ctl_table_header, ptr %1, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = tail call fastcc zeroext i1 @get_links(ptr noundef %24, ptr noundef %27, ptr noundef %29) #21
  br i1 %30, label %123, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.anon, ptr %24, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %35 = load i16, ptr @sysctl_lock, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr @sysctl_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %37 = load ptr, ptr %1, align 4
  %38 = load ptr, ptr %28, align 4
  %39 = load ptr, ptr %37, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %53, label %41

41:                                               ; preds = %41, %31
  %42 = phi ptr [ %51, %41 ], [ %39, %31 ]
  %43 = phi i32 [ %49, %41 ], [ 0, %31 ]
  %44 = phi i32 [ %46, %41 ], [ 0, %31 ]
  %45 = phi ptr [ %50, %41 ], [ %37, %31 ]
  %46 = add i32 %44, 1
  %47 = tail call i32 @strlen(ptr noundef nonnull %42) #21
  %48 = add i32 %43, 1
  %49 = add i32 %48, %47
  %50 = getelementptr %struct.ctl_table, ptr %45, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %41

53:                                               ; preds = %41, %31
  %54 = phi i32 [ 0, %31 ], [ %46, %41 ]
  %55 = phi i32 [ 0, %31 ], [ %49, %41 ]
  %56 = add i32 %54, 1
  %57 = shl i32 %54, 4
  %58 = add i32 %57, 44
  %59 = add i32 %58, %55
  %60 = mul i32 %56, 36
  %61 = add i32 %59, %60
  %62 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %61, i32 noundef 3520) #22
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #21
  br label %120

65:                                               ; preds = %53
  %66 = load ptr, ptr %37, align 4
  %67 = getelementptr %struct.ctl_table_header, ptr %62, i32 1
  %68 = getelementptr %struct.ctl_node, ptr %67, i32 %54
  %69 = icmp eq ptr %66, null
  br i1 %69, label %86, label %70

70:                                               ; preds = %65
  %71 = getelementptr %struct.ctl_table, ptr %68, i32 %56
  br label %72

72:                                               ; preds = %72, %70
  %73 = phi ptr [ %84, %72 ], [ %66, %70 ]
  %74 = phi ptr [ %81, %72 ], [ %71, %70 ]
  %75 = phi ptr [ %82, %72 ], [ %68, %70 ]
  %76 = phi ptr [ %83, %72 ], [ %37, %70 ]
  %77 = tail call i32 @strlen(ptr noundef nonnull %73) #21
  %78 = add i32 %77, 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %74, ptr nonnull align 1 %73, i32 %78, i1 false) #21
  store ptr %74, ptr %75, align 4
  %79 = getelementptr inbounds %struct.ctl_table, ptr %75, i32 0, i32 3
  store i16 -24065, ptr %79, align 4
  %80 = getelementptr inbounds %struct.ctl_table, ptr %75, i32 0, i32 1
  store ptr %38, ptr %80, align 4
  %81 = getelementptr i8, ptr %74, i32 %78
  %82 = getelementptr %struct.ctl_table, ptr %75, i32 1
  %83 = getelementptr %struct.ctl_table, ptr %76, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %72

86:                                               ; preds = %72, %65
  %87 = getelementptr inbounds %struct.ctl_table_header, ptr %24, i32 0, i32 3
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.ctl_table_header, ptr %24, i32 0, i32 4
  %90 = load ptr, ptr %89, align 4
  store ptr %68, ptr %62, align 64
  %91 = getelementptr inbounds %struct.ctl_table_header, ptr %62, i32 0, i32 2
  store ptr %68, ptr %91, align 4
  %92 = getelementptr inbounds %struct.anon, ptr %62, i32 0, i32 1
  store i32 0, ptr %92, align 4
  %93 = getelementptr inbounds %struct.anon, ptr %62, i32 0, i32 2
  store i32 1, ptr %93, align 8
  %94 = getelementptr inbounds %struct.anon, ptr %62, i32 0, i32 3
  store i32 1, ptr %94, align 4
  %95 = getelementptr inbounds %struct.ctl_table_header, ptr %62, i32 0, i32 1
  store ptr null, ptr %95, align 16
  %96 = getelementptr inbounds %struct.ctl_table_header, ptr %62, i32 0, i32 3
  store ptr %88, ptr %96, align 8
  %97 = getelementptr inbounds %struct.ctl_table_header, ptr %62, i32 0, i32 4
  store ptr %90, ptr %97, align 4
  %98 = getelementptr inbounds %struct.ctl_table_header, ptr %62, i32 0, i32 5
  store ptr null, ptr %98, align 32
  %99 = getelementptr inbounds %struct.ctl_table_header, ptr %62, i32 0, i32 6
  store ptr %67, ptr %99, align 4
  %100 = getelementptr inbounds %struct.ctl_table_header, ptr %62, i32 0, i32 7
  store ptr null, ptr %100, align 8
  %101 = load ptr, ptr %68, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %111, label %103

103:                                              ; preds = %103, %86
  %104 = phi ptr [ %107, %103 ], [ %68, %86 ]
  %105 = phi ptr [ %108, %103 ], [ %67, %86 ]
  %106 = getelementptr inbounds %struct.ctl_node, ptr %105, i32 0, i32 1
  store ptr %62, ptr %106, align 4
  %107 = getelementptr %struct.ctl_table, ptr %104, i32 1
  %108 = getelementptr %struct.ctl_node, ptr %105, i32 1
  %109 = load ptr, ptr %107, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %103

111:                                              ; preds = %103, %86
  store i32 %54, ptr %94, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #21
  %112 = load ptr, ptr %1, align 4
  %113 = load ptr, ptr %28, align 4
  %114 = tail call fastcc zeroext i1 @get_links(ptr noundef %24, ptr noundef %112, ptr noundef %113) #21
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  tail call void @kfree(ptr noundef nonnull %62) #21
  br label %122

116:                                              ; preds = %111
  %117 = tail call fastcc i32 @insert_header(ptr noundef %24, ptr noundef nonnull %62) #21
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  tail call void @kfree(ptr noundef nonnull %62) #21
  br label %120

120:                                              ; preds = %119, %64
  %121 = phi i32 [ -12, %64 ], [ %117, %119 ]
  tail call fastcc void @drop_sysctl_table(ptr noundef %24) #21
  br label %218

122:                                              ; preds = %116, %115
  tail call fastcc void @drop_sysctl_table(ptr noundef %24) #21
  br label %123

123:                                              ; preds = %122, %26, %23, %15
  %124 = load ptr, ptr %1, align 4
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %226, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.ctl_table_header, ptr %1, i32 0, i32 6
  br label %129

129:                                              ; preds = %186, %127
  %130 = phi ptr [ %124, %127 ], [ %187, %186 ]
  %131 = phi ptr [ %125, %127 ], [ %184, %186 ]
  %132 = phi ptr [ %124, %127 ], [ %183, %186 ]
  %133 = load ptr, ptr %128, align 4
  %134 = ptrtoint ptr %132 to i32
  %135 = ptrtoint ptr %130 to i32
  %136 = sub i32 %134, %135
  %137 = sdiv exact i32 %136, 36
  %138 = getelementptr %struct.ctl_node, ptr %133, i32 %137
  %139 = load ptr, ptr %19, align 4
  %140 = getelementptr inbounds %struct.ctl_dir, ptr %139, i32 0, i32 1
  %141 = tail call i32 @strlen(ptr noundef nonnull %131) #21
  %142 = load ptr, ptr %140, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %176, label %144

144:                                              ; preds = %170, %129
  %145 = phi ptr [ %172, %170 ], [ %142, %129 ]
  %146 = getelementptr inbounds %struct.ctl_node, ptr %145, i32 0, i32 1
  %147 = load ptr, ptr %146, align 4
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr inbounds %struct.ctl_table_header, ptr %147, i32 0, i32 6
  %150 = load ptr, ptr %149, align 4
  %151 = ptrtoint ptr %145 to i32
  %152 = ptrtoint ptr %150 to i32
  %153 = sub i32 %151, %152
  %154 = ashr exact i32 %153, 4
  %155 = getelementptr %struct.ctl_table, ptr %148, i32 %154
  %156 = load ptr, ptr %155, align 4
  %157 = tail call i32 @strlen(ptr noundef %156) #21
  %158 = tail call i32 @llvm.smin.i32(i32 %141, i32 %157) #21
  %159 = tail call i32 @memcmp(ptr noundef nonnull %131, ptr noundef %156, i32 noundef %158) #21
  %160 = icmp eq i32 %159, 0
  %161 = sub i32 %141, %157
  %162 = select i1 %160, i32 %161, i32 %159
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %144
  %165 = getelementptr inbounds %struct.rb_node, ptr %145, i32 0, i32 2
  br label %170

166:                                              ; preds = %144
  %167 = icmp eq i32 %162, 0
  br i1 %167, label %188, label %168

168:                                              ; preds = %166
  %169 = getelementptr inbounds %struct.rb_node, ptr %145, i32 0, i32 1
  br label %170

170:                                              ; preds = %168, %164
  %171 = phi ptr [ %165, %164 ], [ %169, %168 ]
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %144

174:                                              ; preds = %170
  %175 = ptrtoint ptr %145 to i32
  br label %176

176:                                              ; preds = %174, %129
  %177 = phi i32 [ 0, %129 ], [ %175, %174 ]
  %178 = phi ptr [ %140, %129 ], [ %171, %174 ]
  store i32 %177, ptr %138, align 4
  %179 = getelementptr inbounds %struct.rb_node, ptr %138, i32 0, i32 1
  store ptr null, ptr %179, align 4
  %180 = getelementptr inbounds %struct.rb_node, ptr %138, i32 0, i32 2
  store ptr null, ptr %180, align 4
  store ptr %138, ptr %178, align 4
  %181 = load ptr, ptr %19, align 4
  %182 = getelementptr inbounds %struct.ctl_dir, ptr %181, i32 0, i32 1
  tail call void @rb_insert_color(ptr noundef %138, ptr noundef %182) #21
  %183 = getelementptr %struct.ctl_table, ptr %132, i32 1
  %184 = load ptr, ptr %183, align 4
  %185 = icmp eq ptr %184, null
  br i1 %185, label %226, label %186

186:                                              ; preds = %176
  %187 = load ptr, ptr %1, align 4
  br label %129

188:                                              ; preds = %166
  %189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #23
  %190 = load ptr, ptr %19, align 4
  tail call fastcc void @sysctl_print_dir(ptr noundef %190) #21
  %191 = load ptr, ptr %132, align 4
  %192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %191) #23
  %193 = load ptr, ptr %1, align 4
  %194 = load ptr, ptr %193, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %217, label %196

196:                                              ; preds = %188
  %197 = load ptr, ptr %128, align 4
  %198 = load ptr, ptr %19, align 4
  %199 = getelementptr inbounds %struct.ctl_dir, ptr %198, i32 0, i32 1
  tail call void @rb_erase(ptr noundef %197, ptr noundef %199) #21
  %200 = getelementptr %struct.ctl_table, ptr %193, i32 1
  %201 = load ptr, ptr %200, align 4
  %202 = icmp eq ptr %201, null
  br i1 %202, label %217, label %203

203:                                              ; preds = %203, %196
  %204 = phi ptr [ %214, %203 ], [ %200, %196 ]
  %205 = load ptr, ptr %1, align 4
  %206 = load ptr, ptr %128, align 4
  %207 = ptrtoint ptr %204 to i32
  %208 = ptrtoint ptr %205 to i32
  %209 = sub i32 %207, %208
  %210 = sdiv exact i32 %209, 36
  %211 = getelementptr %struct.ctl_node, ptr %206, i32 %210
  %212 = load ptr, ptr %19, align 4
  %213 = getelementptr inbounds %struct.ctl_dir, ptr %212, i32 0, i32 1
  tail call void @rb_erase(ptr noundef %211, ptr noundef %213) #21
  %214 = getelementptr %struct.ctl_table, ptr %204, i32 1
  %215 = load ptr, ptr %214, align 4
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %203

217:                                              ; preds = %203, %196, %188
  tail call fastcc void @put_links(ptr noundef %1)
  br label %218

218:                                              ; preds = %217, %120
  %219 = phi i32 [ -17, %217 ], [ %121, %120 ]
  %220 = load ptr, ptr %1, align 4
  %221 = icmp eq ptr %220, @sysctl_mount_point
  br i1 %221, label %222, label %225

222:                                              ; preds = %218
  %223 = load ptr, ptr %0, align 4
  %224 = getelementptr inbounds %struct.ctl_table, ptr %223, i32 0, i32 4
  store ptr null, ptr %224, align 4
  br label %225

225:                                              ; preds = %222, %218
  store ptr null, ptr %19, align 4
  tail call fastcc void @drop_sysctl_table(ptr noundef %0)
  br label %226

226:                                              ; preds = %225, %176, %123, %10, %2
  %227 = phi i32 [ %219, %225 ], [ -30, %2 ], [ -22, %10 ], [ 0, %123 ], [ 0, %176 ]
  ret i32 %227
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @drop_sysctl_table(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.completion, align 4
  %3 = getelementptr inbounds %struct.ctl_table_header, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -1
  store i32 %7, ptr %5, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %61

9:                                                ; preds = %1
  %10 = icmp eq ptr %4, null
  br i1 %10, label %51, label %11

11:                                               ; preds = %9
  tail call fastcc void @put_links(ptr noundef %0)
  %12 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15, !prof !14

15:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #21
  %16 = getelementptr inbounds %struct.completion, ptr %2, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false) #21
  call void @__init_swait_queue_head(ptr noundef %16, ptr noundef nonnull @.str.18, ptr noundef nonnull @init_completion.__key) #21
  %17 = getelementptr inbounds %struct.ctl_table_header, ptr %0, i32 0, i32 1
  store ptr %2, ptr %17, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %18 = load i16, ptr @sysctl_lock, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr @sysctl_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  call void @wait_for_completion(ptr noundef nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #21
  br label %24

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.ctl_table_header, ptr %0, i32 0, i32 1
  store ptr inttoptr (i32 -22 to ptr), ptr %21, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %22 = load i16, ptr @sysctl_lock, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr @sysctl_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  br label %24

24:                                               ; preds = %20, %15
  %25 = getelementptr inbounds %struct.ctl_table_header, ptr %0, i32 0, i32 7
  call void @proc_invalidate_siblings_dcache(ptr noundef %25, ptr noundef nonnull @sysctl_lock) #21
  call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #21
  %26 = load ptr, ptr %0, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %51, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.ctl_table_header, ptr %0, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %3, align 4
  %33 = getelementptr inbounds %struct.ctl_dir, ptr %32, i32 0, i32 1
  call void @rb_erase(ptr noundef %31, ptr noundef %33) #21
  %34 = getelementptr %struct.ctl_table, ptr %26, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %51, label %37

37:                                               ; preds = %37, %29
  %38 = phi ptr [ %48, %37 ], [ %34, %29 ]
  %39 = load ptr, ptr %0, align 4
  %40 = load ptr, ptr %30, align 4
  %41 = ptrtoint ptr %38 to i32
  %42 = ptrtoint ptr %39 to i32
  %43 = sub i32 %41, %42
  %44 = sdiv exact i32 %43, 36
  %45 = getelementptr %struct.ctl_node, ptr %40, i32 %44
  %46 = load ptr, ptr %3, align 4
  %47 = getelementptr inbounds %struct.ctl_dir, ptr %46, i32 0, i32 1
  call void @rb_erase(ptr noundef %45, ptr noundef %47) #21
  %48 = getelementptr %struct.ctl_table, ptr %38, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %37

51:                                               ; preds = %37, %29, %24, %9
  %52 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, -1
  store i32 %54, ptr %52, align 4
  %55 = icmp ne i32 %54, 0
  %56 = icmp eq ptr %0, null
  %57 = or i1 %56, %55
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  call void @kvfree_call_rcu(ptr noundef nonnull %0, ptr noundef null) #21
  br label %59

59:                                               ; preds = %58, %51
  br i1 %10, label %61, label %60

60:                                               ; preds = %59
  call fastcc void @drop_sysctl_table(ptr noundef nonnull %4)
  br label %61

61:                                               ; preds = %60, %59, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @__register_sysctl_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 section ".init.text" {
  %4 = tail call ptr @__register_sysctl_table(ptr noundef nonnull @sysctl_table_root, ptr noundef %0, ptr noundef %1) #21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8, !prof !15

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %2, ptr noundef %0) #23
  br label %8

8:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__register_sysctl_paths(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = tail call fastcc i32 @count_subheaders(ptr noundef %2)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 4096) #24
  %8 = icmp eq ptr %7, null
  br i1 %8, label %98, label %9

9:                                                ; preds = %3
  store i8 0, ptr %7, align 8
  %10 = load ptr, ptr %1, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = ptrtoint ptr %7 to i32
  %14 = sub i32 2, %13
  br label %26

15:                                               ; preds = %35
  %16 = getelementptr %struct.ctl_path, ptr %29, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %15, %9
  %20 = phi ptr [ %7, %9 ], [ %38, %15 ]
  %21 = load ptr, ptr %2, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %66, label %23

23:                                               ; preds = %19
  %24 = ptrtoint ptr %7 to i32
  %25 = sub i32 2, %24
  br label %40

26:                                               ; preds = %15, %12
  %27 = phi ptr [ %10, %12 ], [ %17, %15 ]
  %28 = phi ptr [ %7, %12 ], [ %38, %15 ]
  %29 = phi ptr [ %1, %12 ], [ %16, %15 ]
  %30 = tail call i32 @strlen(ptr noundef nonnull %27) #21
  %31 = ptrtoint ptr %28 to i32
  %32 = add i32 %14, %31
  %33 = add i32 %32, %30
  %34 = icmp sgt i32 %33, 4095
  br i1 %34, label %88, label %35

35:                                               ; preds = %26
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %28, ptr nonnull align 1 %27, i32 %30, i1 false) #21
  %36 = getelementptr i8, ptr %28, i32 %30
  store i8 47, ptr %36, align 1
  %37 = add i32 %30, 1
  %38 = getelementptr i8, ptr %28, i32 %37
  store i8 0, ptr %38, align 1
  %39 = icmp eq ptr %38, null
  br i1 %39, label %88, label %15

40:                                               ; preds = %62, %23
  %41 = phi ptr [ %21, %23 ], [ %64, %62 ]
  %42 = phi ptr [ %2, %23 ], [ %63, %62 ]
  %43 = phi ptr [ %20, %23 ], [ %60, %62 ]
  %44 = getelementptr inbounds %struct.ctl_table, ptr %42, i32 0, i32 4
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %66, label %47

47:                                               ; preds = %40
  %48 = getelementptr %struct.ctl_table, ptr %42, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = tail call i32 @strlen(ptr noundef nonnull %41) #21
  %53 = ptrtoint ptr %43 to i32
  %54 = add i32 %25, %53
  %55 = add i32 %54, %52
  %56 = icmp sgt i32 %55, 4095
  br i1 %56, label %88, label %57

57:                                               ; preds = %51
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %43, ptr nonnull align 1 %41, i32 %52, i1 false) #21
  %58 = getelementptr i8, ptr %43, i32 %52
  store i8 47, ptr %58, align 1
  %59 = add i32 %52, 1
  %60 = getelementptr i8, ptr %43, i32 %59
  store i8 0, ptr %60, align 1
  %61 = icmp eq ptr %60, null
  br i1 %61, label %88, label %62

62:                                               ; preds = %57
  %63 = load ptr, ptr %44, align 4
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %40

66:                                               ; preds = %62, %47, %40, %19
  %67 = phi ptr [ %20, %19 ], [ %60, %62 ], [ %43, %40 ], [ %43, %47 ]
  %68 = phi ptr [ %2, %19 ], [ %63, %62 ], [ %42, %40 ], [ %42, %47 ]
  %69 = icmp eq i32 %5, 1
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = tail call ptr @__register_sysctl_table(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %68)
  %72 = icmp eq ptr %71, null
  br i1 %72, label %88, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.ctl_table_header, ptr %71, i32 0, i32 2
  store ptr %2, ptr %74, align 4
  br label %88

75:                                               ; preds = %66
  %76 = shl i32 %5, 2
  %77 = add i32 %76, 44
  %78 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %77, i32 noundef 3520) #22
  %79 = icmp eq ptr %78, null
  br i1 %79, label %88, label %80

80:                                               ; preds = %75
  %81 = getelementptr %struct.ctl_table_header, ptr %78, i32 1
  store ptr %81, ptr %4, align 4
  %82 = getelementptr inbounds %struct.ctl_table_header, ptr %78, i32 0, i32 2
  store ptr %2, ptr %82, align 4
  %83 = call fastcc i32 @register_leaf_sysctl_tables(ptr noundef nonnull %7, ptr noundef nonnull %67, ptr noundef nonnull %4, ptr noundef %0, ptr noundef %68)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load ptr, ptr %4, align 4
  %87 = icmp ugt ptr %86, %81
  br i1 %87, label %90, label %97

88:                                               ; preds = %97, %80, %75, %73, %70, %57, %51, %35, %26
  %89 = phi ptr [ %71, %73 ], [ null, %70 ], [ null, %97 ], [ %78, %80 ], [ null, %75 ], [ null, %57 ], [ null, %51 ], [ null, %35 ], [ null, %26 ]
  tail call void @kfree(ptr noundef nonnull %7) #21
  br label %98

90:                                               ; preds = %90, %85
  %91 = phi ptr [ %92, %90 ], [ %86, %85 ]
  %92 = getelementptr ptr, ptr %91, i32 -1
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.ctl_table_header, ptr %93, i32 0, i32 2
  %95 = load ptr, ptr %94, align 4
  tail call void @unregister_sysctl_table(ptr noundef %93)
  tail call void @kfree(ptr noundef %95) #21
  %96 = icmp ugt ptr %92, %81
  br i1 %96, label %90, label %97

97:                                               ; preds = %90, %85
  tail call void @kfree(ptr noundef nonnull %78) #21
  br label %88

98:                                               ; preds = %88, %3
  %99 = phi ptr [ %89, %88 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  ret ptr %99
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @count_subheaders(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %16, %3
  %7 = phi ptr [ %19, %16 ], [ %0, %3 ]
  %8 = phi i32 [ %18, %16 ], [ 0, %3 ]
  %9 = phi i32 [ %17, %16 ], [ 0, %3 ]
  %10 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = tail call fastcc i32 @count_subheaders(ptr noundef nonnull %11)
  %15 = add i32 %14, %8
  br label %16

16:                                               ; preds = %13, %6
  %17 = phi i32 [ %9, %13 ], [ 1, %6 ]
  %18 = phi i32 [ %15, %13 ], [ %8, %6 ]
  %19 = getelementptr %struct.ctl_table, ptr %7, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %6

22:                                               ; preds = %16
  %23 = add i32 %18, %17
  br label %24

24:                                               ; preds = %22, %3, %1
  %25 = phi i32 [ %23, %22 ], [ 1, %3 ], [ 1, %1 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @register_leaf_sysctl_tables(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = load ptr, ptr %4, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %56, label %8

8:                                                ; preds = %8, %5
  %9 = phi i32 [ %19, %8 ], [ 0, %5 ]
  %10 = phi i32 [ %16, %8 ], [ 0, %5 ]
  %11 = phi ptr [ %20, %8 ], [ %4, %5 ]
  %12 = getelementptr inbounds %struct.ctl_table, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  %15 = zext i1 %14 to i32
  %16 = add i32 %10, %15
  %17 = xor i1 %14, true
  %18 = zext i1 %17 to i32
  %19 = add i32 %9, %18
  %20 = getelementptr %struct.ctl_table, ptr %11, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %8

23:                                               ; preds = %8
  %24 = icmp ne i32 %19, 0
  %25 = icmp ne i32 %16, 0
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %51

27:                                               ; preds = %23
  %28 = add i32 %16, 1
  %29 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %28, i32 36) #21
  %30 = extractvalue { i32, i1 } %29, 1
  br i1 %30, label %98, label %31, !prof !15

31:                                               ; preds = %27
  %32 = extractvalue { i32, i1 } %29, 0
  %33 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %32, i32 noundef 3520) #22
  %34 = icmp eq ptr %33, null
  br i1 %34, label %98, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %4, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %56, label %38

38:                                               ; preds = %46, %35
  %39 = phi ptr [ %47, %46 ], [ %33, %35 ]
  %40 = phi ptr [ %48, %46 ], [ %4, %35 ]
  %41 = getelementptr inbounds %struct.ctl_table, ptr %40, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(36) %39, ptr noundef align 4 dereferenceable(36) %40, i32 36, i1 false)
  %45 = getelementptr %struct.ctl_table, ptr %39, i32 1
  br label %46

46:                                               ; preds = %44, %38
  %47 = phi ptr [ %39, %38 ], [ %45, %44 ]
  %48 = getelementptr %struct.ctl_table, ptr %40, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %38

51:                                               ; preds = %46, %23
  %52 = phi ptr [ null, %23 ], [ %33, %46 ]
  %53 = phi ptr [ %4, %23 ], [ %33, %46 ]
  %54 = icmp eq i32 %16, 0
  %55 = select i1 %54, i1 %24, i1 false
  br i1 %55, label %67, label %56

56:                                               ; preds = %51, %35, %5
  %57 = phi ptr [ %53, %51 ], [ %33, %35 ], [ %4, %5 ]
  %58 = phi ptr [ %52, %51 ], [ %33, %35 ], [ null, %5 ]
  %59 = tail call ptr @__register_sysctl_table(ptr noundef %3, ptr noundef %0, ptr noundef %57)
  %60 = icmp eq ptr %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.ctl_table_header, ptr %59, i32 0, i32 2
  store ptr %58, ptr %62, align 4
  %63 = load ptr, ptr %2, align 4
  store ptr %59, ptr %63, align 4
  %64 = load ptr, ptr %2, align 4
  %65 = getelementptr ptr, ptr %64, i32 1
  store ptr %65, ptr %2, align 4
  br label %67

66:                                               ; preds = %56
  tail call void @kfree(ptr noundef %58) #21
  br label %98

67:                                               ; preds = %61, %51
  %68 = load ptr, ptr %4, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %98, label %70

70:                                               ; preds = %67
  %71 = ptrtoint ptr %1 to i32
  %72 = ptrtoint ptr %0 to i32
  %73 = sub i32 2, %72
  %74 = add i32 %73, %71
  br label %75

75:                                               ; preds = %94, %70
  %76 = phi ptr [ %68, %70 ], [ %96, %94 ]
  %77 = phi ptr [ %4, %70 ], [ %95, %94 ]
  %78 = getelementptr inbounds %struct.ctl_table, ptr %77, i32 0, i32 4
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %94, label %81

81:                                               ; preds = %75
  %82 = tail call i32 @strlen(ptr noundef nonnull %76) #21
  %83 = add i32 %74, %82
  %84 = icmp sgt i32 %83, 4095
  br i1 %84, label %98, label %85

85:                                               ; preds = %81
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr nonnull align 1 %76, i32 %82, i1 false) #21
  %86 = getelementptr i8, ptr %1, i32 %82
  store i8 47, ptr %86, align 1
  %87 = add i32 %82, 1
  %88 = getelementptr i8, ptr %1, i32 %87
  store i8 0, ptr %88, align 1
  %89 = icmp eq ptr %88, null
  br i1 %89, label %98, label %90

90:                                               ; preds = %85
  %91 = load ptr, ptr %78, align 4
  %92 = tail call fastcc i32 @register_leaf_sysctl_tables(ptr noundef %0, ptr noundef nonnull %88, ptr noundef %2, ptr noundef %3, ptr noundef %91)
  store i8 0, ptr %1, align 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90, %75
  %95 = getelementptr %struct.ctl_table, ptr %77, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %75

98:                                               ; preds = %94, %90, %85, %81, %67, %66, %31, %27
  %99 = phi i32 [ -12, %66 ], [ -12, %31 ], [ -12, %27 ], [ 0, %67 ], [ 0, %94 ], [ -36, %85 ], [ %92, %90 ], [ -36, %81 ]
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unregister_sysctl_table(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ctl_table_header, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call fastcc i32 @count_subheaders(ptr noundef %5)
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %19, !prof !15

8:                                                ; preds = %3
  %9 = getelementptr %struct.ctl_table_header, ptr %0, i32 1
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i32 [ %12, %10 ], [ %6, %8 ]
  %12 = add nsw i32 %11, -1
  %13 = getelementptr ptr, ptr %9, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ctl_table_header, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  tail call void @unregister_sysctl_table(ptr noundef %14)
  tail call void @kfree(ptr noundef %16) #21
  %17 = icmp sgt i32 %11, 1
  br i1 %17, label %10, label %18

18:                                               ; preds = %10
  tail call void @kfree(ptr noundef nonnull %0) #21
  br label %22

19:                                               ; preds = %3
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #21
  tail call fastcc void @drop_sysctl_table(ptr noundef nonnull %0)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %20 = load i16, ptr @sysctl_lock, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr @sysctl_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  br label %22

22:                                               ; preds = %19, %18, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @register_sysctl_paths(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = tail call ptr @__register_sysctl_paths(ptr noundef nonnull @sysctl_table_root, ptr noundef %0, ptr noundef %1)
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @register_sysctl_table(ptr noundef %0) #0 {
  %2 = tail call ptr @__register_sysctl_paths(ptr noundef nonnull @sysctl_table_root, ptr noundef nonnull @register_sysctl_table.null_path, ptr noundef %0) #21
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__register_sysctl_base(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @__register_sysctl_paths(ptr noundef nonnull @sysctl_table_root, ptr noundef nonnull @register_sysctl_table.null_path, ptr noundef %0) #21
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @setup_sysctl_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds i8, ptr %0, i32 48
  store i32 0, ptr %4, align 4
  store ptr %2, ptr %0, align 4
  %5 = getelementptr inbounds %struct.ctl_table_set, ptr %0, i32 0, i32 1
  store ptr @root_table, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ctl_table_set, ptr %0, i32 0, i32 1, i32 0, i32 2
  store ptr @root_table, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ctl_table_set, ptr %0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ctl_table_set, ptr %0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2
  store i32 1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ctl_table_set, ptr %0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 3
  store i32 1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ctl_table_set, ptr %0, i32 0, i32 1, i32 0, i32 1
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ctl_table_set, ptr %0, i32 0, i32 1, i32 0, i32 3
  store ptr %1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ctl_table_set, ptr %0, i32 0, i32 1, i32 0, i32 4
  store ptr %0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ctl_table_set, ptr %0, i32 0, i32 1, i32 0, i32 5
  store ptr null, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ctl_table_set, ptr %0, i32 0, i32 1, i32 0, i32 6
  store ptr null, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ctl_table_set, ptr %0, i32 0, i32 1, i32 0, i32 7
  store ptr null, ptr %15, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @retire_sysctl_set(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ctl_table_set, ptr %0, i32 0, i32 1, i32 1
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !14

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1759, i32 noundef 9, ptr noundef null) #21
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @proc_sys_init() local_unnamed_addr #5 section ".init.text" {
  %1 = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.2, ptr noundef null) #21
  %2 = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 5
  store ptr @proc_sys_dir_operations, ptr %2, align 8
  %3 = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 6
  store ptr @proc_sys_dir_file_operations, ptr %3, align 4
  %4 = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 13
  store i32 0, ptr %4, align 8
  %5 = tail call i32 @sysctl_init_bases() #21
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysctl_init_bases() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @do_sysctl_args() local_unnamed_addr #0 {
  %1 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #21
  store ptr null, ptr %1, align 4
  %2 = load ptr, ptr @saved_command_line, align 4
  %3 = tail call noalias ptr @kstrdup(ptr noundef %2, i32 noundef 3264) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.do_sysctl_args) #25
  unreachable

6:                                                ; preds = %0
  %7 = call ptr @parse_args(ptr noundef nonnull @.str.4, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0, i16 noundef signext -1, i16 noundef signext -1, ptr noundef nonnull %1, ptr noundef nonnull @process_sysctl_arg) #21
  %8 = load ptr, ptr %1, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  call void @kern_unmount(ptr noundef nonnull %8) #21
  br label %11

11:                                               ; preds = %10, %6
  call void @kfree(ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parse_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @process_sysctl_arg(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef %3) #0 {
  %5 = alloca %struct.path, align 4
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  store i64 0, ptr %6, align 8
  %7 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(7) @.str.24, i32 noundef 6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i32 6
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, -2
  %13 = icmp eq i8 %12, 46
  br i1 %13, label %14, label %96

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %0, i32 7
  br label %36

16:                                               ; preds = %4
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(29) @.str.37, ptr noundef %0) #21
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(16) @.str.39, ptr noundef %0) #21
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(20) @.str.41, ptr noundef %0) #21
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(29) @.str.43, ptr noundef %0) #21
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(17) @.str.45, ptr noundef %0) #21
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %96

31:                                               ; preds = %28, %25, %22, %19, %16
  %32 = phi ptr [ @sysctl_aliases, %16 ], [ getelementptr inbounds ([6 x %struct.sysctl_alias], ptr @sysctl_aliases, i32 0, i32 1), %19 ], [ getelementptr inbounds ([6 x %struct.sysctl_alias], ptr @sysctl_aliases, i32 0, i32 2), %22 ], [ getelementptr inbounds ([6 x %struct.sysctl_alias], ptr @sysctl_aliases, i32 0, i32 3), %25 ], [ getelementptr inbounds ([6 x %struct.sysctl_alias], ptr @sysctl_aliases, i32 0, i32 4), %28 ]
  %33 = getelementptr inbounds %struct.sysctl_alias, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %96, label %36

36:                                               ; preds = %31, %14
  %37 = phi ptr [ %15, %14 ], [ %34, %31 ]
  %38 = icmp eq ptr %1, null
  br i1 %38, label %96, label %39

39:                                               ; preds = %36
  %40 = tail call i32 @strlen(ptr noundef nonnull %1)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %96, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %3, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = tail call ptr @get_fs_type(ptr noundef nonnull @.str.25) #21
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #23
  br label %96

50:                                               ; preds = %45
  %51 = tail call ptr @kern_mount(ptr noundef nonnull %46) #21
  store ptr %51, ptr %3, align 4
  tail call void @put_filesystem(ptr noundef nonnull %46) #21
  %52 = load ptr, ptr %3, align 4
  %53 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #23
  br label %96

56:                                               ; preds = %50, %42
  %57 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.28, ptr noundef %37) #21
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.process_sysctl_arg, ptr noundef %37) #25
  unreachable

60:                                               ; preds = %56
  %61 = tail call ptr @strreplace(ptr noundef nonnull %57, i8 noundef zeroext 46, i8 noundef zeroext 47) #21
  %62 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  store ptr %62, ptr %5, align 4
  %63 = getelementptr inbounds %struct.path, ptr %5, i32 0, i32 1
  %64 = load ptr, ptr %62, align 4
  store ptr %64, ptr %63, align 4
  %65 = call ptr @file_open_root(ptr noundef nonnull %5, ptr noundef nonnull %57, i32 noundef 1, i16 noundef zeroext 0) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  %66 = icmp ugt ptr %65, inttoptr (i32 -4096 to ptr)
  br i1 %66, label %67, label %75

67:                                               ; preds = %60
  %68 = ptrtoint ptr %65 to i32
  switch i32 %68, label %73 [
    i32 -2, label %69
    i32 -13, label %71
  ]

69:                                               ; preds = %67
  %70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %37, ptr noundef nonnull %1) #23
  br label %95

71:                                               ; preds = %67
  %72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %37, ptr noundef nonnull %1) #23
  br label %95

73:                                               ; preds = %67
  %74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull %65, ptr noundef %37, ptr noundef nonnull %1) #23
  br label %95

75:                                               ; preds = %60
  %76 = call i32 @kernel_write(ptr noundef %65, ptr noundef nonnull %1, i32 noundef %40, ptr noundef nonnull %6) #21
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = icmp eq i32 %76, -22
  br i1 %79, label %80, label %82

80:                                               ; preds = %78
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %37, ptr noundef nonnull %1) #23
  br label %89

82:                                               ; preds = %78
  %83 = inttoptr i32 %76 to ptr
  %84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull %83, ptr noundef %37, ptr noundef nonnull %1) #23
  br label %89

85:                                               ; preds = %75
  %86 = icmp eq i32 %76, %40
  br i1 %86, label %89, label %87

87:                                               ; preds = %85
  %88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %76, i32 noundef %40, ptr noundef nonnull %57, ptr noundef %37, ptr noundef nonnull %1) #23
  br label %89

89:                                               ; preds = %87, %85, %82, %80
  %90 = call i32 @filp_close(ptr noundef %65, ptr noundef null) #21
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = inttoptr i32 %90 to ptr
  %94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull %93, ptr noundef %37, ptr noundef nonnull %1) #23
  br label %95

95:                                               ; preds = %92, %89, %73, %71, %69
  call void @kfree(ptr noundef nonnull %57) #21
  br label %96

96:                                               ; preds = %95, %54, %48, %39, %36, %31, %28, %9
  %97 = phi i32 [ 0, %95 ], [ 0, %54 ], [ 0, %48 ], [ 0, %9 ], [ 0, %31 ], [ -22, %36 ], [ -22, %39 ], [ 0, %28 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  ret i32 %97
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kern_unmount(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysctl_err(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ...) unnamed_addr #0 {
  %4 = alloca %struct.va_format, align 8
  %5 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  store i32 0, ptr %5, align 4, !annotation !16
  call void @llvm.va_start(ptr nonnull %5)
  store ptr %2, ptr %4, align 8
  %6 = getelementptr inbounds %struct.va_format, ptr %4, i32 0, i32 1
  store ptr %5, ptr %6, align 4
  %7 = load ptr, ptr %1, align 4
  %8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %0, ptr noundef %7, ptr noundef nonnull %4) #23
  call void @llvm.va_end(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dostring(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_douintvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_douintvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dou8vec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_userhz_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_ms_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_ms_jiffies_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sysctl_print_dir(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ctl_table_header, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call fastcc void @sysctl_print_dir(ptr noundef nonnull %3)
  br label %6

6:                                                ; preds = %5, %1
  %7 = load ptr, ptr %0, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %8) #23
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @put_links(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ctl_table_header, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ctl_table_header, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ctl_table_header, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @sysctl_table_root
  br i1 %8, label %77, label %9

9:                                                ; preds = %1
  %10 = tail call fastcc ptr @xlate_dir(ptr noundef nonnull @sysctl_table_root, ptr noundef %5)
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %77, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %0, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %77, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ctl_dir, ptr %10, i32 0, i32 1
  br label %18

18:                                               ; preds = %73, %16
  %19 = phi ptr [ %14, %16 ], [ %75, %73 ]
  %20 = phi ptr [ %13, %16 ], [ %74, %73 ]
  %21 = tail call i32 @strlen(ptr noundef nonnull %19)
  %22 = load ptr, ptr %17, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %70, label %24

24:                                               ; preds = %50, %18
  %25 = phi ptr [ %52, %50 ], [ %22, %18 ]
  %26 = getelementptr inbounds %struct.ctl_node, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ctl_table_header, ptr %27, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = ptrtoint ptr %25 to i32
  %32 = ptrtoint ptr %30 to i32
  %33 = sub i32 %31, %32
  %34 = ashr exact i32 %33, 4
  %35 = getelementptr %struct.ctl_table, ptr %28, i32 %34
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @strlen(ptr noundef %36) #21
  %38 = tail call i32 @llvm.smin.i32(i32 %21, i32 %37) #21
  %39 = tail call i32 @memcmp(ptr noundef nonnull %19, ptr noundef %36, i32 noundef %38) #21
  %40 = icmp eq i32 %39, 0
  %41 = sub i32 %21, %37
  %42 = select i1 %40, i32 %41, i32 %39
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %24
  %45 = getelementptr inbounds %struct.rb_node, ptr %25, i32 0, i32 2
  br label %50

46:                                               ; preds = %24
  %47 = icmp eq i32 %42, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.rb_node, ptr %25, i32 0, i32 1
  br label %50

50:                                               ; preds = %48, %44
  %51 = phi ptr [ %45, %44 ], [ %49, %48 ]
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %70, label %24

54:                                               ; preds = %46
  %55 = icmp eq ptr %35, null
  br i1 %55, label %70, label %56

56:                                               ; preds = %54
  %57 = getelementptr %struct.ctl_table, ptr %28, i32 %34, i32 3
  %58 = load i16, ptr %57, align 4
  %59 = and i16 %58, -4096
  switch i16 %59, label %70 [
    i16 16384, label %60
    i16 -24576, label %65
  ]

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.ctl_table, ptr %20, i32 0, i32 3
  %62 = load i16, ptr %61, align 4
  %63 = and i16 %62, -4096
  %64 = icmp eq i16 %63, 16384
  br i1 %64, label %69, label %70

65:                                               ; preds = %56
  %66 = getelementptr %struct.ctl_table, ptr %28, i32 %34, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, %3
  br i1 %68, label %69, label %70

69:                                               ; preds = %65, %60
  tail call fastcc void @drop_sysctl_table(ptr noundef %27)
  br label %73

70:                                               ; preds = %65, %60, %56, %54, %50, %18
  %71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #23
  tail call fastcc void @sysctl_print_dir(ptr noundef %5)
  %72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull %19) #23
  br label %73

73:                                               ; preds = %70, %69
  %74 = getelementptr %struct.ctl_table, ptr %20, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %18

77:                                               ; preds = %73, %12, %9, %1
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc ptr @xlate_dir(ptr noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.ctl_table_header, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ctl_table_set, ptr %0, i32 0, i32 1
  br label %56

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @xlate_dir(ptr noundef %0, ptr noundef nonnull %4)
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %56, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %1, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @strlen(ptr noundef %13)
  %15 = getelementptr inbounds %struct.ctl_dir, ptr %9, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %56, label %18

18:                                               ; preds = %44, %11
  %19 = phi ptr [ %46, %44 ], [ %16, %11 ]
  %20 = getelementptr inbounds %struct.ctl_node, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ctl_table_header, ptr %21, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = ptrtoint ptr %19 to i32
  %26 = ptrtoint ptr %24 to i32
  %27 = sub i32 %25, %26
  %28 = ashr exact i32 %27, 4
  %29 = getelementptr %struct.ctl_table, ptr %22, i32 %28
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @strlen(ptr noundef %30) #21
  %32 = tail call i32 @llvm.smin.i32(i32 %14, i32 %31) #21
  %33 = tail call i32 @memcmp(ptr noundef %13, ptr noundef %30, i32 noundef %32) #21
  %34 = icmp eq i32 %33, 0
  %35 = sub i32 %14, %31
  %36 = select i1 %34, i32 %35, i32 %33
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %18
  %39 = getelementptr inbounds %struct.rb_node, ptr %19, i32 0, i32 2
  br label %44

40:                                               ; preds = %18
  %41 = icmp eq i32 %36, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.rb_node, ptr %19, i32 0, i32 1
  br label %44

44:                                               ; preds = %42, %38
  %45 = phi ptr [ %39, %38 ], [ %43, %42 ]
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %56, label %18

48:                                               ; preds = %40
  %49 = icmp eq ptr %29, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %48
  %51 = getelementptr %struct.ctl_table, ptr %22, i32 %28, i32 3
  %52 = load i16, ptr %51, align 4
  %53 = and i16 %52, -4096
  %54 = icmp eq i16 %53, 16384
  %55 = select i1 %54, ptr %21, ptr inttoptr (i32 -20 to ptr)
  br label %56

56:                                               ; preds = %50, %48, %44, %11, %8, %6
  %57 = phi ptr [ %7, %6 ], [ %9, %8 ], [ inttoptr (i32 -2 to ptr), %48 ], [ inttoptr (i32 -2 to ptr), %11 ], [ %55, %50 ], [ inttoptr (i32 -2 to ptr), %44 ]
  ret ptr %57
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @get_links(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2) unnamed_addr #12 {
  %4 = load ptr, ptr %1, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %111, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ctl_dir, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br label %13

10:                                               ; preds = %62
  br i1 %5, label %111, label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.ctl_dir, ptr %0, i32 0, i32 1
  br label %66

13:                                               ; preds = %62, %6
  %14 = phi ptr [ %4, %6 ], [ %64, %62 ]
  %15 = phi ptr [ %1, %6 ], [ %63, %62 ]
  %16 = tail call i32 @strlen(ptr noundef nonnull %14)
  br i1 %9, label %111, label %17

17:                                               ; preds = %43, %13
  %18 = phi ptr [ %45, %43 ], [ %8, %13 ]
  %19 = getelementptr inbounds %struct.ctl_node, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ctl_table_header, ptr %20, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = ptrtoint ptr %18 to i32
  %25 = ptrtoint ptr %23 to i32
  %26 = sub i32 %24, %25
  %27 = ashr exact i32 %26, 4
  %28 = getelementptr %struct.ctl_table, ptr %21, i32 %27
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @strlen(ptr noundef %29) #21
  %31 = tail call i32 @llvm.smin.i32(i32 %16, i32 %30) #21
  %32 = tail call i32 @memcmp(ptr noundef nonnull %14, ptr noundef %29, i32 noundef %31) #21
  %33 = icmp eq i32 %32, 0
  %34 = sub i32 %16, %30
  %35 = select i1 %33, i32 %34, i32 %32
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %17
  %38 = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 2
  br label %43

39:                                               ; preds = %17
  %40 = icmp eq i32 %35, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 1
  br label %43

43:                                               ; preds = %41, %37
  %44 = phi ptr [ %38, %37 ], [ %42, %41 ]
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %111, label %17

47:                                               ; preds = %39
  %48 = icmp eq ptr %28, null
  br i1 %48, label %111, label %49

49:                                               ; preds = %47
  %50 = getelementptr %struct.ctl_table, ptr %21, i32 %27, i32 3
  %51 = load i16, ptr %50, align 4
  %52 = and i16 %51, -4096
  switch i16 %52, label %111 [
    i16 16384, label %53
    i16 -24576, label %58
  ]

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.ctl_table, ptr %15, i32 0, i32 3
  %55 = load i16, ptr %54, align 4
  %56 = and i16 %55, -4096
  %57 = icmp eq i16 %56, 16384
  br i1 %57, label %62, label %111

58:                                               ; preds = %49
  %59 = getelementptr %struct.ctl_table, ptr %21, i32 %27, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, %2
  br i1 %61, label %62, label %111

62:                                               ; preds = %58, %53
  %63 = getelementptr %struct.ctl_table, ptr %15, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %10, label %13

66:                                               ; preds = %103, %11
  %67 = phi ptr [ %4, %11 ], [ %109, %103 ]
  %68 = phi ptr [ %1, %11 ], [ %108, %103 ]
  %69 = phi ptr [ %20, %11 ], [ %104, %103 ]
  %70 = tail call i32 @strlen(ptr noundef nonnull %67)
  %71 = load ptr, ptr %12, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %103, label %73

73:                                               ; preds = %99, %66
  %74 = phi ptr [ %101, %99 ], [ %71, %66 ]
  %75 = getelementptr inbounds %struct.ctl_node, ptr %74, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.ctl_table_header, ptr %76, i32 0, i32 6
  %79 = load ptr, ptr %78, align 4
  %80 = ptrtoint ptr %74 to i32
  %81 = ptrtoint ptr %79 to i32
  %82 = sub i32 %80, %81
  %83 = ashr exact i32 %82, 4
  %84 = getelementptr %struct.ctl_table, ptr %77, i32 %83
  %85 = load ptr, ptr %84, align 4
  %86 = tail call i32 @strlen(ptr noundef %85) #21
  %87 = tail call i32 @llvm.smin.i32(i32 %70, i32 %86) #21
  %88 = tail call i32 @memcmp(ptr noundef nonnull %67, ptr noundef %85, i32 noundef %87) #21
  %89 = icmp eq i32 %88, 0
  %90 = sub i32 %70, %86
  %91 = select i1 %89, i32 %90, i32 %88
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %73
  %94 = getelementptr inbounds %struct.rb_node, ptr %74, i32 0, i32 2
  br label %99

95:                                               ; preds = %73
  %96 = icmp eq i32 %91, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %95
  %98 = getelementptr inbounds %struct.rb_node, ptr %74, i32 0, i32 1
  br label %99

99:                                               ; preds = %97, %93
  %100 = phi ptr [ %94, %93 ], [ %98, %97 ]
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %73

103:                                              ; preds = %99, %95, %66
  %104 = phi ptr [ %69, %66 ], [ %76, %95 ], [ %69, %99 ]
  %105 = getelementptr inbounds %struct.anon, ptr %104, i32 0, i32 3
  %106 = load i32, ptr %105, align 4
  %107 = add i32 %106, 1
  store i32 %107, ptr %105, align 4
  %108 = getelementptr %struct.ctl_table, ptr %68, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %66

111:                                              ; preds = %103, %58, %53, %49, %47, %43, %13, %10, %3
  %112 = phi i1 [ true, %10 ], [ true, %3 ], [ true, %103 ], [ false, %43 ], [ false, %47 ], [ false, %58 ], [ false, %13 ], [ false, %53 ], [ false, %49 ]
  ret i1 %112
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_invalidate_siblings_dcache(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @proc_sys_lookup(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = getelementptr i8, ptr %0, i32 -24
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr getelementptr inbounds (%struct.ctl_table_root, ptr @sysctl_table_root, i32 0, i32 0, i32 1), ptr %7
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #21
  %10 = getelementptr inbounds %struct.ctl_table_header, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17, !prof !14

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.anon, ptr %9, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  br label %17

17:                                               ; preds = %13, %3
  %18 = phi ptr [ %9, %13 ], [ inttoptr (i32 -2 to ptr), %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %19 = load i16, ptr @sysctl_lock, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr @sysctl_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  store ptr null, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  %21 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %132, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %24 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.anon.3, ptr %23, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #21
  %28 = getelementptr inbounds %struct.ctl_dir, ptr %18, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %71, label %31

31:                                               ; preds = %57, %22
  %32 = phi ptr [ %59, %57 ], [ %29, %22 ]
  %33 = getelementptr inbounds %struct.ctl_node, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ctl_table_header, ptr %34, i32 0, i32 6
  %37 = load ptr, ptr %36, align 4
  %38 = ptrtoint ptr %32 to i32
  %39 = ptrtoint ptr %37 to i32
  %40 = sub i32 %38, %39
  %41 = ashr exact i32 %40, 4
  %42 = getelementptr %struct.ctl_table, ptr %35, i32 %41
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 @strlen(ptr noundef %43) #21
  %45 = tail call i32 @llvm.smin.i32(i32 %27, i32 %44) #21
  %46 = tail call i32 @memcmp(ptr noundef %25, ptr noundef %43, i32 noundef %45) #21
  %47 = icmp eq i32 %46, 0
  %48 = sub i32 %27, %44
  %49 = select i1 %47, i32 %48, i32 %46
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %31
  %52 = getelementptr inbounds %struct.rb_node, ptr %32, i32 0, i32 2
  br label %57

53:                                               ; preds = %31
  %54 = icmp eq i32 %49, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.rb_node, ptr %32, i32 0, i32 1
  br label %57

57:                                               ; preds = %55, %51
  %58 = phi ptr [ %52, %51 ], [ %56, %55 ]
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %71, label %31

61:                                               ; preds = %53
  %62 = icmp eq ptr %42, null
  br i1 %62, label %71, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.ctl_table_header, ptr %34, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %71, !prof !14

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.anon, ptr %34, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %69, 1
  store i32 %70, ptr %68, align 4
  store ptr %34, ptr %4, align 4
  br label %71

71:                                               ; preds = %67, %63, %61, %57, %22
  %72 = phi ptr [ %34, %67 ], [ null, %61 ], [ null, %22 ], [ null, %63 ], [ null, %57 ]
  %73 = phi ptr [ %42, %67 ], [ null, %61 ], [ null, %22 ], [ null, %63 ], [ null, %57 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %74 = load i16, ptr @sysctl_lock, align 4
  %75 = add i16 %74, 1
  store i16 %75, ptr @sysctl_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  store ptr %73, ptr %5, align 4
  %76 = icmp eq ptr %73, null
  br i1 %76, label %102, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.ctl_table, ptr %73, i32 0, i32 3
  %79 = load i16, ptr %78, align 4
  %80 = and i16 %79, -4096
  %81 = icmp eq i16 %80, -24576
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = call fastcc i32 @sysctl_follow_link(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = inttoptr i32 %83 to ptr
  %87 = load ptr, ptr %4, align 4
  br label %102

88:                                               ; preds = %82
  %89 = load ptr, ptr %4, align 4
  %90 = load ptr, ptr %5, align 4
  br label %91

91:                                               ; preds = %88, %77
  %92 = phi ptr [ %90, %88 ], [ %73, %77 ]
  %93 = phi ptr [ %89, %88 ], [ %72, %77 ]
  %94 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %93, null
  %97 = select i1 %96, ptr %18, ptr %93
  %98 = tail call fastcc ptr @proc_sys_make_inode(ptr noundef %95, ptr noundef %97, ptr noundef %92)
  %99 = icmp ugt ptr %98, inttoptr (i32 -4096 to ptr)
  br i1 %99, label %102, label %100

100:                                              ; preds = %91
  tail call void @d_set_d_op(ptr noundef %1, ptr noundef nonnull @proc_sys_dentry_operations) #21
  %101 = tail call ptr @d_splice_alias(ptr noundef %98, ptr noundef %1) #21
  br label %102

102:                                              ; preds = %100, %91, %85, %71
  %103 = phi ptr [ %87, %85 ], [ %93, %100 ], [ %72, %71 ], [ %93, %91 ]
  %104 = phi ptr [ %86, %85 ], [ %101, %100 ], [ inttoptr (i32 -2 to ptr), %71 ], [ %98, %91 ]
  %105 = icmp eq ptr %103, null
  br i1 %105, label %119, label %106

106:                                              ; preds = %102
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #21
  %107 = getelementptr inbounds %struct.anon, ptr %103, i32 0, i32 1
  %108 = load i32, ptr %107, align 4
  %109 = add i32 %108, -1
  store i32 %109, ptr %107, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.ctl_table_header, ptr %103, i32 0, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %116, label %115, !prof !14

115:                                              ; preds = %111
  tail call void @complete(ptr noundef nonnull %113) #21
  br label %116

116:                                              ; preds = %115, %111, %106
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %117 = load i16, ptr @sysctl_lock, align 4
  %118 = add i16 %117, 1
  store i16 %118, ptr @sysctl_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  br label %119

119:                                              ; preds = %116, %102
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #21
  %120 = getelementptr inbounds %struct.anon, ptr %18, i32 0, i32 1
  %121 = load i32, ptr %120, align 4
  %122 = add i32 %121, -1
  store i32 %122, ptr %120, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.ctl_table_header, ptr %18, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %129, label %128, !prof !14

128:                                              ; preds = %124
  tail call void @complete(ptr noundef nonnull %126) #21
  br label %129

129:                                              ; preds = %128, %124, %119
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %130 = load i16, ptr @sysctl_lock, align 4
  %131 = add i16 %130, 1
  store i16 %131, ptr @sysctl_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  br label %132

132:                                              ; preds = %129, %17
  %133 = phi ptr [ %104, %129 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  ret ptr %133
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_sys_permission(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = and i32 %2, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = load i16, ptr %1, align 8
  %8 = and i16 %7, -4096
  %9 = icmp eq i16 %8, -32768
  br i1 %9, label %83, label %10

10:                                               ; preds = %6, %3
  %11 = getelementptr i8, ptr %1, i32 -24
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr getelementptr inbounds (%struct.ctl_table_root, ptr @sysctl_table_root, i32 0, i32 0, i32 1), ptr %12
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #21
  %15 = getelementptr inbounds %struct.ctl_table_header, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22, !prof !14

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.anon, ptr %14, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 4
  br label %22

22:                                               ; preds = %18, %10
  %23 = phi ptr [ %14, %18 ], [ inttoptr (i32 -2 to ptr), %10 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %24 = load i16, ptr @sysctl_lock, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr @sysctl_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %26 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = ptrtoint ptr %23 to i32
  br label %83

29:                                               ; preds = %22
  %30 = getelementptr i8, ptr %1, i32 -20
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = and i32 %2, 2
  br label %67

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.ctl_table_header, ptr %23, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ctl_table_root, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = tail call i32 %39(ptr noundef %23, ptr noundef nonnull %31) #21
  br label %47

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.ctl_table, ptr %31, i32 0, i32 3
  %45 = load i16, ptr %44, align 4
  %46 = zext i16 %45 to i32
  br label %47

47:                                               ; preds = %43, %41
  %48 = phi i32 [ %42, %41 ], [ %46, %43 ]
  %49 = tail call ptr @llvm.thread.pointer() #21
  %50 = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 83
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.cred, ptr %51, i32 0, i32 5
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = ashr i32 %48, 6
  br label %62

57:                                               ; preds = %47
  %58 = tail call i32 @in_egroup_p([1 x i32] zeroinitializer) #21
  %59 = icmp eq i32 %58, 0
  %60 = ashr i32 %48, 3
  %61 = select i1 %59, i32 %48, i32 %60
  br label %62

62:                                               ; preds = %57, %55
  %63 = phi i32 [ %56, %55 ], [ %61, %57 ]
  %64 = xor i32 %63, -1
  %65 = and i32 %2, 7
  %66 = and i32 %65, %64
  br label %67

67:                                               ; preds = %62, %33
  %68 = phi i32 [ %66, %62 ], [ %34, %33 ]
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, i32 0, i32 -13
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #21
  %71 = getelementptr inbounds %struct.anon, ptr %23, i32 0, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %72, -1
  store i32 %73, ptr %71, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %67
  %76 = getelementptr inbounds %struct.ctl_table_header, ptr %23, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %80, label %79, !prof !14

79:                                               ; preds = %75
  tail call void @complete(ptr noundef nonnull %77) #21
  br label %80

80:                                               ; preds = %79, %75, %67
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %81 = load i16, ptr @sysctl_lock, align 4
  %82 = add i16 %81, 1
  store i16 %82, ptr @sysctl_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  br label %83

83:                                               ; preds = %80, %27, %6
  %84 = phi i32 [ %28, %27 ], [ %70, %80 ], [ -13, %6 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_sys_setattr(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = load i32, ptr %2, align 8
  %7 = and i32 %6, 7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %1, ptr noundef %2) #21
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call void @setattr_copy(ptr noundef nonnull @init_user_ns, ptr noundef %5, ptr noundef %2) #21
  tail call void @__mark_inode_dirty(ptr noundef %5, i32 noundef 7) #21
  br label %13

13:                                               ; preds = %12, %9, %3
  %14 = phi i32 [ 0, %12 ], [ -1, %3 ], [ %10, %9 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_sys_getattr(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %9, i32 -24
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  %13 = select i1 %12, ptr getelementptr inbounds (%struct.ctl_table_root, ptr @sysctl_table_root, i32 0, i32 0, i32 1), ptr %11
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #21
  %14 = getelementptr inbounds %struct.ctl_table_header, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21, !prof !14

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.anon, ptr %13, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 4
  br label %21

21:                                               ; preds = %17, %5
  %22 = phi ptr [ %13, %17 ], [ inttoptr (i32 -2 to ptr), %5 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %23 = load i16, ptr @sysctl_lock, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr @sysctl_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %25 = getelementptr i8, ptr %9, i32 -20
  %26 = load ptr, ptr %25, align 4
  %27 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = ptrtoint ptr %22 to i32
  br label %52

30:                                               ; preds = %21
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %9, ptr noundef %2) #21
  %31 = icmp eq ptr %26, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 1
  %34 = load i16, ptr %33, align 4
  %35 = and i16 %34, -4096
  %36 = getelementptr inbounds %struct.ctl_table, ptr %26, i32 0, i32 3
  %37 = load i16, ptr %36, align 4
  %38 = or i16 %35, %37
  store i16 %38, ptr %33, align 4
  br label %39

39:                                               ; preds = %32, %30
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #21
  %40 = getelementptr inbounds %struct.anon, ptr %22, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, -1
  store i32 %42, ptr %40, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.ctl_table_header, ptr %22, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48, !prof !14

48:                                               ; preds = %44
  tail call void @complete(ptr noundef nonnull %46) #21
  br label %49

49:                                               ; preds = %48, %44, %39
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %50 = load i16, ptr @sysctl_lock, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr @sysctl_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  br label %52

52:                                               ; preds = %49, %28
  %53 = phi i32 [ %29, %28 ], [ 0, %49 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sysctl_follow_link(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #21
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.ctl_table, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ctl_table_root, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call ptr %7(ptr noundef %5) #21
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi ptr [ %10, %9 ], [ %5, %2 ]
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr inbounds %struct.ctl_table_header, ptr %13, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = tail call fastcc ptr @xlate_dir(ptr noundef %12, ptr noundef %15)
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = ptrtoint ptr %16 to i32
  br label %78

20:                                               ; preds = %11
  %21 = load ptr, ptr %1, align 4
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @strlen(ptr noundef %22)
  %24 = getelementptr inbounds %struct.ctl_dir, ptr %16, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %78, label %27

27:                                               ; preds = %53, %20
  %28 = phi ptr [ %55, %53 ], [ %25, %20 ]
  %29 = getelementptr inbounds %struct.ctl_node, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.ctl_table_header, ptr %30, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = ptrtoint ptr %28 to i32
  %35 = ptrtoint ptr %33 to i32
  %36 = sub i32 %34, %35
  %37 = ashr exact i32 %36, 4
  %38 = getelementptr %struct.ctl_table, ptr %31, i32 %37
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @strlen(ptr noundef %39) #21
  %41 = tail call i32 @llvm.smin.i32(i32 %23, i32 %40) #21
  %42 = tail call i32 @memcmp(ptr noundef %22, ptr noundef %39, i32 noundef %41) #21
  %43 = icmp eq i32 %42, 0
  %44 = sub i32 %23, %40
  %45 = select i1 %43, i32 %44, i32 %42
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %27
  %48 = getelementptr inbounds %struct.rb_node, ptr %28, i32 0, i32 2
  br label %53

49:                                               ; preds = %27
  %50 = icmp eq i32 %45, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.rb_node, ptr %28, i32 0, i32 1
  br label %53

53:                                               ; preds = %51, %47
  %54 = phi ptr [ %48, %47 ], [ %52, %51 ]
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %78, label %27

57:                                               ; preds = %49
  %58 = icmp eq ptr %38, null
  br i1 %58, label %78, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.ctl_table_header, ptr %30, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %78, !prof !14

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.anon, ptr %30, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, 1
  store i32 %66, ptr %64, align 4
  %67 = load ptr, ptr %0, align 4
  %68 = getelementptr inbounds %struct.anon, ptr %67, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %69, -1
  store i32 %70, ptr %68, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.ctl_table_header, ptr %67, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76, !prof !14

76:                                               ; preds = %72
  tail call void @complete(ptr noundef nonnull %74) #21
  br label %77

77:                                               ; preds = %76, %72, %63
  store ptr %30, ptr %0, align 4
  store ptr %38, ptr %1, align 4
  br label %78

78:                                               ; preds = %77, %59, %57, %53, %20, %18
  %79 = phi i32 [ %19, %18 ], [ 0, %77 ], [ -2, %57 ], [ -2, %20 ], [ -2, %59 ], [ -2, %53 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %80 = load i16, ptr @sysctl_lock, align 4
  %81 = add i16 %80, 1
  store i16 %81, ptr @sysctl_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @proc_sys_make_inode(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = getelementptr inbounds %struct.ctl_table_header, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @new_inode(ptr noundef %0) #21
  %8 = icmp eq ptr %7, null
  br i1 %8, label %64, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @get_next_ino() #21
  %11 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 10
  store i32 %10, ptr %11, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #21
  %12 = getelementptr inbounds %struct.ctl_table_header, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15, !prof !14

15:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %16 = load i16, ptr @sysctl_lock, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr @sysctl_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  tail call void @iput(ptr noundef nonnull %7) #21
  br label %64

18:                                               ; preds = %9
  %19 = getelementptr i8, ptr %7, i32 -24
  store ptr %1, ptr %19, align 8
  %20 = getelementptr i8, ptr %7, i32 -20
  store ptr %2, ptr %20, align 4
  %21 = getelementptr i8, ptr %7, i32 -16
  %22 = getelementptr inbounds %struct.ctl_table_header, ptr %1, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  store ptr %23, ptr %21, align 4
  %24 = getelementptr i8, ptr %7, i32 -12
  store volatile ptr %22, ptr %24, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !17
  store volatile ptr %21, ptr %22, align 4
  %25 = icmp eq ptr %23, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.hlist_node, ptr %23, i32 0, i32 1
  store volatile ptr %21, ptr %27, align 4
  br label %28

28:                                               ; preds = %26, %18
  %29 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %29, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %32 = load i16, ptr @sysctl_lock, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr @sysctl_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %34 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 15
  %35 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 14
  %36 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %4, ptr noundef nonnull %7) #21
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %36, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %35, ptr noundef align 8 dereferenceable(16) %36, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %34, ptr noundef align 8 dereferenceable(16) %36, i32 16, i1 false)
  %37 = getelementptr inbounds %struct.ctl_table, ptr %2, i32 0, i32 3
  %38 = load i16, ptr %37, align 4
  store i16 %38, ptr %7, align 8
  %39 = load i16, ptr %37, align 4
  %40 = and i16 %39, -4096
  %41 = icmp eq i16 %40, 16384
  br i1 %41, label %46, label %42

42:                                               ; preds = %28
  %43 = or i16 %38, -32768
  store i16 %43, ptr %7, align 8
  %44 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 7
  store ptr @proc_sys_inode_operations, ptr %44, align 8
  %45 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 39
  store ptr @proc_sys_file_operations, ptr %45, align 8
  br label %55

46:                                               ; preds = %28
  %47 = or i16 %38, 16384
  store i16 %47, ptr %7, align 8
  %48 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 7
  store ptr @proc_sys_dir_operations, ptr %48, align 8
  %49 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 39
  store ptr @proc_sys_dir_file_operations, ptr %49, align 8
  %50 = load ptr, ptr %1, align 4
  %51 = getelementptr inbounds %struct.ctl_table, ptr %50, i32 0, i32 4
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, @sysctl_mount_point
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  call void @make_empty_dir_inode(ptr noundef nonnull %7) #21
  br label %55

55:                                               ; preds = %54, %46, %42
  %56 = getelementptr inbounds %struct.ctl_table_root, ptr %6, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  %59 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 2
  br i1 %58, label %62, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 3
  call void %57(ptr noundef %1, ptr noundef %2, ptr noundef %59, ptr noundef %61) #21
  br label %64

62:                                               ; preds = %55
  store i32 0, ptr %59, align 4
  %63 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 3
  store i32 0, ptr %63, align 8
  br label %64

64:                                               ; preds = %62, %60, %15, %3
  %65 = phi ptr [ inttoptr (i32 -2 to ptr), %15 ], [ %7, %62 ], [ %7, %60 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_set_d_op(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_empty_dir_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_sys_read(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @proc_sys_call_handler(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_sys_write(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @proc_sys_call_handler(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_sys_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -24
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, ptr getelementptr inbounds (%struct.ctl_table_root, ptr @sysctl_table_root, i32 0, i32 0, i32 1), ptr %6
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #21
  %9 = getelementptr inbounds %struct.ctl_table_header, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16, !prof !14

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4
  br label %16

16:                                               ; preds = %12, %2
  %17 = phi ptr [ %8, %12 ], [ inttoptr (i32 -2 to ptr), %2 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %18 = load i16, ptr @sysctl_lock, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr @sysctl_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %20 = getelementptr i8, ptr %4, i32 -20
  %21 = load ptr, ptr %20, align 4
  %22 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %65, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.ctl_table, ptr %21, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %51, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ctl_table, ptr %21, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %51, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %33 = load ptr, ptr %32, align 8
  %34 = ptrtoint ptr %33 to i32
  %35 = getelementptr inbounds %struct.ctl_table_poll, ptr %29, i32 0, i32 1
  %36 = icmp eq ptr %1, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %31
  %38 = load ptr, ptr %1, align 4
  %39 = icmp ne ptr %38, null
  %40 = icmp ne ptr %35, null
  %41 = and i1 %40, %39
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  tail call void %38(ptr noundef %0, ptr noundef nonnull %35, ptr noundef nonnull %1) #21
  %43 = load ptr, ptr %28, align 4
  br label %44

44:                                               ; preds = %42, %37, %31
  %45 = phi ptr [ %29, %31 ], [ %29, %37 ], [ %43, %42 ]
  %46 = load volatile i32, ptr %45, align 4
  %47 = icmp eq i32 %46, %34
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load volatile i32, ptr %45, align 4
  %50 = inttoptr i32 %49 to ptr
  store ptr %50, ptr %32, align 8
  br label %51

51:                                               ; preds = %48, %44, %27, %23
  %52 = phi i32 [ 75, %48 ], [ 325, %44 ], [ 325, %27 ], [ 325, %23 ]
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #21
  %53 = getelementptr inbounds %struct.anon, ptr %17, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, -1
  store i32 %55, ptr %53, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.ctl_table_header, ptr %17, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61, !prof !14

61:                                               ; preds = %57
  tail call void @complete(ptr noundef nonnull %59) #21
  br label %62

62:                                               ; preds = %61, %57, %51
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %63 = load i16, ptr @sysctl_lock, align 4
  %64 = add i16 %63, 1
  store i16 %64, ptr @sysctl_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  br label %65

65:                                               ; preds = %62, %16
  %66 = phi i32 [ %52, %62 ], [ 24, %16 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_sys_open(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -24
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr getelementptr inbounds (%struct.ctl_table_root, ptr @sysctl_table_root, i32 0, i32 0, i32 1), ptr %4
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #21
  %7 = getelementptr inbounds %struct.ctl_table_header, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14, !prof !14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi ptr [ %6, %10 ], [ inttoptr (i32 -2 to ptr), %2 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %16 = load i16, ptr @sysctl_lock, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr @sysctl_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %18 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = ptrtoint ptr %15 to i32
  br label %44

21:                                               ; preds = %14
  %22 = getelementptr i8, ptr %0, i32 -20
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ctl_table, ptr %23, i32 0, i32 6
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load volatile i32, ptr %25, align 4
  %29 = inttoptr i32 %28 to ptr
  %30 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %29, ptr %30, align 8
  br label %31

31:                                               ; preds = %27, %21
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #21
  %32 = getelementptr inbounds %struct.anon, ptr %15, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, -1
  store i32 %34, ptr %32, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.ctl_table_header, ptr %15, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40, !prof !14

40:                                               ; preds = %36
  tail call void @complete(ptr noundef nonnull %38) #21
  br label %41

41:                                               ; preds = %40, %36, %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %42 = load i16, ptr @sysctl_lock, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr @sysctl_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  br label %44

44:                                               ; preds = %41, %19
  %45 = phi i32 [ %20, %19 ], [ 0, %41 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @proc_sys_call_handler(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 -24
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr getelementptr inbounds (%struct.ctl_table_root, ptr @sysctl_table_root, i32 0, i32 0, i32 1), ptr %9
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #21
  %12 = getelementptr inbounds %struct.ctl_table_header, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19, !prof !14

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  br label %19

19:                                               ; preds = %15, %3
  %20 = phi ptr [ %11, %15 ], [ inttoptr (i32 -2 to ptr), %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %21 = load i16, ptr @sysctl_lock, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr @sysctl_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %23 = getelementptr i8, ptr %7, i32 -20
  %24 = load ptr, ptr %23, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  %25 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %26 = load i32, ptr %25, align 8
  store i32 %26, ptr %4, align 4
  %27 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = ptrtoint ptr %20 to i32
  br label %118

30:                                               ; preds = %19
  %31 = icmp eq i32 %2, 0
  %32 = select i1 %31, i32 4, i32 2
  %33 = getelementptr inbounds %struct.ctl_table_header, ptr %20, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ctl_table_root, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %30
  %39 = tail call i32 %36(ptr noundef %20, ptr noundef %24) #21
  br label %44

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.ctl_table, ptr %24, i32 0, i32 3
  %42 = load i16, ptr %41, align 4
  %43 = zext i16 %42 to i32
  br label %44

44:                                               ; preds = %40, %38
  %45 = phi i32 [ %39, %38 ], [ %43, %40 ]
  %46 = tail call ptr @llvm.thread.pointer() #21
  %47 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 83
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.cred, ptr %48, i32 0, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = ashr i32 %45, 6
  br label %59

54:                                               ; preds = %44
  %55 = tail call i32 @in_egroup_p([1 x i32] zeroinitializer) #21
  %56 = icmp eq i32 %55, 0
  %57 = ashr i32 %45, 3
  %58 = select i1 %56, i32 %45, i32 %57
  br label %59

59:                                               ; preds = %54, %52
  %60 = phi i32 [ %53, %52 ], [ %58, %54 ]
  %61 = and i32 %60, %32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %104, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.ctl_table, ptr %24, i32 0, i32 5
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %104, label %67

67:                                               ; preds = %63
  %68 = icmp ugt i32 %26, 8388607
  br i1 %68, label %104, label %69

69:                                               ; preds = %67
  %70 = add nuw nsw i32 %26, 1
  %71 = tail call noalias ptr @kvmalloc_node(i32 noundef %70, i32 noundef 3520, i32 noundef -1) #22
  %72 = icmp eq ptr %71, null
  br i1 %72, label %104, label %73

73:                                               ; preds = %69
  br i1 %31, label %80, label %74

74:                                               ; preds = %73
  %75 = tail call i32 @_copy_from_iter(ptr noundef nonnull %71, i32 noundef %26, ptr noundef %1) #21
  %76 = icmp eq i32 %75, %26
  br i1 %76, label %78, label %77, !prof !14

77:                                               ; preds = %74
  tail call void @iov_iter_revert(ptr noundef %1, i32 noundef %75) #21
  br label %102

78:                                               ; preds = %74
  %79 = getelementptr i8, ptr %71, i32 %26
  store i8 0, ptr %79, align 1
  br label %80

80:                                               ; preds = %78, %73
  %81 = load ptr, ptr %64, align 4
  %82 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %83 = call i32 %81(ptr noundef %24, i32 noundef %2, ptr noundef nonnull %71, ptr noundef nonnull %4, ptr noundef %82) #21
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %80
  %86 = load i32, ptr %4, align 4
  br i1 %31, label %87, label %100

87:                                               ; preds = %85
  %88 = icmp slt i32 %86, 0
  %89 = load i1, ptr @check_copy_size.__already_done, align 1
  %90 = xor i1 %89, true
  %91 = select i1 %88, i1 %90, i1 false
  br i1 %91, label %92, label %93, !prof !15

92:                                               ; preds = %87
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 230, i32 noundef 9, ptr noundef null) #21
  br label %93

93:                                               ; preds = %92, %87
  br i1 %88, label %96, label %94, !prof !15

94:                                               ; preds = %93
  %95 = call i32 @_copy_to_iter(ptr noundef nonnull %71, i32 noundef %86, ptr noundef %1) #21
  br label %96

96:                                               ; preds = %94, %93
  %97 = phi i32 [ %95, %94 ], [ 0, %93 ]
  %98 = load i32, ptr %4, align 4
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %102, label %100

100:                                              ; preds = %96, %85
  %101 = phi i32 [ %98, %96 ], [ %86, %85 ]
  br label %102

102:                                              ; preds = %100, %96, %80, %77
  %103 = phi i32 [ %83, %80 ], [ %101, %100 ], [ -14, %96 ], [ -14, %77 ]
  call void @kvfree(ptr noundef nonnull %71) #21
  br label %104

104:                                              ; preds = %102, %69, %67, %63, %59
  %105 = phi i32 [ -1, %59 ], [ -12, %67 ], [ %103, %102 ], [ -12, %69 ], [ -22, %63 ]
  call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #21
  %106 = getelementptr inbounds %struct.anon, ptr %20, i32 0, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = add i32 %107, -1
  store i32 %108, ptr %106, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.ctl_table_header, ptr %20, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %115, label %114, !prof !14

114:                                              ; preds = %110
  call void @complete(ptr noundef nonnull %112) #21
  br label %115

115:                                              ; preds = %114, %110, %104
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %116 = load i16, ptr @sysctl_lock, align 4
  %117 = add i16 %116, 1
  store i16 %117, ptr @sysctl_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  br label %118

118:                                              ; preds = %115, %28
  %119 = phi i32 [ %29, %28 ], [ %105, %115 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  ret i32 %119
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_egroup_p([1 x i32]) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #16

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @proc_sys_revalidate(ptr nocapture noundef readonly %0, i32 noundef %1) #17 {
  %3 = and i32 %1, 64
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 -24
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.ctl_table_header, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %5, %2
  %15 = phi i32 [ %13, %5 ], [ -10, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_sys_compare(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %6 = load volatile ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %38, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.anon.3, ptr %3, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %38

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.qstr, ptr %3, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = tail call i32 @bcmp(ptr %14, ptr %2, i32 %1)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %12
  %18 = getelementptr i8, ptr %6, i32 -24
  %19 = load volatile ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %38, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ctl_table_header, ptr %19, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #21
  %24 = getelementptr inbounds %struct.ctl_table_header, ptr %19, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load ptr, ptr %23, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = tail call i32 %28(ptr noundef %23) #21
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  br label %34

34:                                               ; preds = %30, %27, %21
  %35 = phi i32 [ %33, %30 ], [ 1, %21 ], [ 0, %27 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %36 = load i16, ptr @sysctl_lock, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr @sysctl_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  br label %38

38:                                               ; preds = %34, %17, %12, %8, %4
  %39 = phi i32 [ 1, %4 ], [ 1, %8 ], [ 1, %12 ], [ 1, %17 ], [ %35, %34 ]
  ret i32 %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @proc_sys_delete(ptr nocapture noundef readonly %0) #17 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -24
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ctl_table_header, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ne ptr %7, null
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_sys_readdir(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -24
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, ptr getelementptr inbounds (%struct.ctl_table_root, ptr @sysctl_table_root, i32 0, i32 0, i32 1), ptr %6
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #21
  %9 = getelementptr inbounds %struct.ctl_table_header, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16, !prof !14

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4
  br label %16

16:                                               ; preds = %12, %2
  %17 = phi ptr [ %8, %12 ], [ inttoptr (i32 -2 to ptr), %2 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %18 = load i16, ptr @sysctl_lock, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr @sysctl_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %20 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = ptrtoint ptr %17 to i32
  br label %188

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.dir_context, ptr %1, i32 0, i32 1
  %25 = load i64, ptr %24, align 8
  switch i64 %25, label %55 [
    i64 0, label %26
    i64 1, label %38
  ]

26:                                               ; preds = %23
  %27 = load ptr, ptr %1, align 8
  %28 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.dentry, ptr %29, i32 0, i32 5
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 10
  %33 = load i32, ptr %32, align 4
  %34 = zext i32 %33 to i64
  %35 = tail call i32 %27(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef 1, i64 noundef 0, i64 noundef %34, i32 noundef 4) #21
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %175

37:                                               ; preds = %26
  store i64 1, ptr %24, align 8
  br label %38

38:                                               ; preds = %37, %23
  %39 = load ptr, ptr %1, align 8
  %40 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.dentry, ptr %41, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %42) #21
  %43 = getelementptr inbounds %struct.dentry, ptr %41, i32 0, i32 3
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.dentry, ptr %44, i32 0, i32 5
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.inode, ptr %46, i32 0, i32 10
  %48 = load i32, ptr %47, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %49 = load i16, ptr %42, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %42, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %51 = zext i32 %48 to i64
  %52 = tail call i32 %39(ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef 2, i64 noundef 1, i64 noundef %51, i32 noundef 4) #21
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %175

54:                                               ; preds = %38
  store i64 2, ptr %24, align 8
  br label %55

55:                                               ; preds = %54, %23
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #21
  %56 = getelementptr inbounds %struct.ctl_dir, ptr %17, i32 0, i32 1
  %57 = tail call ptr @rb_first(ptr noundef %56) #21
  %58 = icmp eq ptr %57, null
  br i1 %58, label %73, label %59

59:                                               ; preds = %70, %55
  %60 = phi ptr [ %71, %70 ], [ %57, %55 ]
  %61 = getelementptr inbounds %struct.ctl_node, ptr %60, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.ctl_table_header, ptr %62, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %70, !prof !14

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.anon, ptr %62, i32 0, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, 1
  store i32 %69, ptr %67, align 4
  br label %73

70:                                               ; preds = %59
  %71 = tail call ptr @rb_next(ptr noundef nonnull %60) #21
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %59

73:                                               ; preds = %70, %66, %55
  %74 = phi ptr [ %60, %66 ], [ null, %55 ], [ null, %70 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %75 = load i16, ptr @sysctl_lock, align 4
  %76 = add i16 %75, 1
  store i16 %76, ptr @sysctl_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %77 = icmp eq ptr %74, null
  br i1 %77, label %175, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.ctl_node, ptr %74, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %175, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr %80, align 4
  %84 = ptrtoint ptr %74 to i32
  %85 = getelementptr inbounds %struct.ctl_table_header, ptr %80, i32 0, i32 6
  %86 = load ptr, ptr %85, align 4
  %87 = ptrtoint ptr %86 to i32
  %88 = sub i32 %84, %87
  %89 = ashr exact i32 %88, 4
  %90 = getelementptr %struct.ctl_table, ptr %83, i32 %89
  br label %91

91:                                               ; preds = %163, %82
  %92 = phi i32 [ %95, %163 ], [ 2, %82 ]
  %93 = phi ptr [ %173, %163 ], [ %90, %82 ]
  %94 = phi ptr [ %165, %163 ], [ %80, %82 ]
  %95 = add i32 %92, 1
  %96 = zext i32 %92 to i64
  %97 = load i64, ptr %24, align 8
  %98 = icmp sgt i64 %97, %96
  br i1 %98, label %123, label %99

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.ctl_table, ptr %93, i32 0, i32 3
  %101 = load i16, ptr %100, align 4
  %102 = and i16 %101, -4096
  %103 = icmp eq i16 %102, -24576
  br i1 %103, label %104, label %106, !prof !15

104:                                              ; preds = %99
  %105 = tail call fastcc zeroext i1 @proc_sys_link_fill_cache(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %94, ptr noundef %93) #21
  br i1 %105, label %108, label %110

106:                                              ; preds = %99
  %107 = tail call fastcc zeroext i1 @proc_sys_fill_cache(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %94, ptr noundef %93) #21
  br i1 %107, label %108, label %110

108:                                              ; preds = %106, %104
  %109 = zext i32 %95 to i64
  store i64 %109, ptr %24, align 8
  br label %123

110:                                              ; preds = %106, %104
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #21
  %111 = getelementptr inbounds %struct.anon, ptr %94, i32 0, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = add i32 %112, -1
  store i32 %113, ptr %111, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.ctl_table_header, ptr %94, i32 0, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %120, label %119, !prof !14

119:                                              ; preds = %115
  tail call void @complete(ptr noundef nonnull %117) #21
  br label %120

120:                                              ; preds = %119, %115, %110
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %121 = load i16, ptr @sysctl_lock, align 4
  %122 = add i16 %121, 1
  store i16 %122, ptr @sysctl_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  br label %175

123:                                              ; preds = %108, %91
  %124 = getelementptr inbounds %struct.ctl_table_header, ptr %94, i32 0, i32 6
  %125 = load ptr, ptr %124, align 4
  %126 = load ptr, ptr %94, align 4
  %127 = ptrtoint ptr %93 to i32
  %128 = ptrtoint ptr %126 to i32
  %129 = sub i32 %127, %128
  %130 = sdiv exact i32 %129, 36
  %131 = getelementptr %struct.ctl_node, ptr %125, i32 %130
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #21
  %132 = getelementptr inbounds %struct.anon, ptr %94, i32 0, i32 1
  %133 = load i32, ptr %132, align 4
  %134 = add i32 %133, -1
  store i32 %134, ptr %132, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %123
  %137 = getelementptr inbounds %struct.ctl_table_header, ptr %94, i32 0, i32 1
  %138 = load ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %141, label %140, !prof !14

140:                                              ; preds = %136
  tail call void @complete(ptr noundef nonnull %138) #21
  br label %141

141:                                              ; preds = %140, %136, %123
  %142 = tail call ptr @rb_next(ptr noundef %131) #21
  %143 = icmp eq ptr %142, null
  br i1 %143, label %158, label %144

144:                                              ; preds = %155, %141
  %145 = phi ptr [ %156, %155 ], [ %142, %141 ]
  %146 = getelementptr inbounds %struct.ctl_node, ptr %145, i32 0, i32 1
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr inbounds %struct.ctl_table_header, ptr %147, i32 0, i32 1
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %155, !prof !14

151:                                              ; preds = %144
  %152 = getelementptr inbounds %struct.anon, ptr %147, i32 0, i32 1
  %153 = load i32, ptr %152, align 4
  %154 = add i32 %153, 1
  store i32 %154, ptr %152, align 4
  br label %158

155:                                              ; preds = %144
  %156 = tail call ptr @rb_next(ptr noundef nonnull %145) #21
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %144

158:                                              ; preds = %155, %151, %141
  %159 = phi ptr [ %145, %151 ], [ null, %141 ], [ null, %155 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %160 = load i16, ptr @sysctl_lock, align 4
  %161 = add i16 %160, 1
  store i16 %161, ptr @sysctl_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %162 = icmp eq ptr %159, null
  br i1 %162, label %175, label %163

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.ctl_node, ptr %159, i32 0, i32 1
  %165 = load ptr, ptr %164, align 4
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr inbounds %struct.ctl_table_header, ptr %165, i32 0, i32 6
  %168 = load ptr, ptr %167, align 4
  %169 = ptrtoint ptr %159 to i32
  %170 = ptrtoint ptr %168 to i32
  %171 = sub i32 %169, %170
  %172 = ashr exact i32 %171, 4
  %173 = getelementptr %struct.ctl_table, ptr %166, i32 %172
  %174 = icmp eq ptr %165, null
  br i1 %174, label %175, label %91

175:                                              ; preds = %163, %158, %120, %78, %73, %38, %26
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #21
  %176 = getelementptr inbounds %struct.anon, ptr %17, i32 0, i32 1
  %177 = load i32, ptr %176, align 4
  %178 = add i32 %177, -1
  store i32 %178, ptr %176, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.ctl_table_header, ptr %17, i32 0, i32 1
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %185, label %184, !prof !14

184:                                              ; preds = %180
  tail call void @complete(ptr noundef nonnull %182) #21
  br label %185

185:                                              ; preds = %184, %180, %175
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %186 = load i16, ptr @sysctl_lock, align 4
  %187 = add i16 %186, 1
  store i16 %187, ptr @sysctl_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  br label %188

188:                                              ; preds = %185, %21
  %189 = phi i32 [ %22, %21 ], [ 0, %185 ]
  ret i32 %189
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @proc_sys_link_fill_cache(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %3, ptr %6, align 4
  %7 = icmp eq ptr %2, null
  br i1 %7, label %8, label %9, !prof !15

8:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/proc/proc_sysctl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 323, 0\0A.popsection", ""() #21, !srcloc !18
  unreachable

9:                                                ; preds = %4
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #21
  %10 = getelementptr inbounds %struct.ctl_table_header, ptr %2, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17, !prof !14

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi ptr [ %2, %13 ], [ inttoptr (i32 -2 to ptr), %9 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %19 = load i16, ptr @sysctl_lock, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr @sysctl_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  store ptr %18, ptr %5, align 4
  %21 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %45, label %22

22:                                               ; preds = %17
  %23 = call fastcc i32 @sysctl_follow_link(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %24 = icmp eq i32 %23, 0
  %25 = load ptr, ptr %5, align 4
  br i1 %24, label %26, label %29

26:                                               ; preds = %22
  %27 = load ptr, ptr %6, align 4
  %28 = tail call fastcc zeroext i1 @proc_sys_fill_cache(ptr noundef %0, ptr noundef %1, ptr noundef %25, ptr noundef %27)
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i1 [ %28, %26 ], [ true, %22 ]
  %31 = icmp eq ptr %25, null
  br i1 %31, label %45, label %32

32:                                               ; preds = %29
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #21
  %33 = getelementptr inbounds %struct.anon, ptr %25, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, -1
  store i32 %35, ptr %33, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.ctl_table_header, ptr %25, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41, !prof !14

41:                                               ; preds = %37
  tail call void @complete(ptr noundef nonnull %39) #21
  br label %42

42:                                               ; preds = %41, %37, %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %43 = load i16, ptr @sysctl_lock, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr @sysctl_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  br label %45

45:                                               ; preds = %42, %29, %17
  %46 = phi i1 [ false, %17 ], [ %30, %29 ], [ %30, %42 ]
  ret i1 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @proc_sys_fill_cache(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.qstr, align 8
  %6 = alloca %struct.wait_queue_head, align 4
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  %9 = getelementptr inbounds i8, ptr %5, i32 8
  store i64 0, ptr %9, align 8, !annotation !16
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.qstr, ptr %5, i32 0, i32 1
  store ptr %10, ptr %11, align 8
  %12 = tail call i32 @strlen(ptr noundef %10)
  %13 = getelementptr inbounds %struct.anon.3, ptr %5, i32 0, i32 1
  store i32 %12, ptr %13, align 4
  %14 = tail call i32 @full_name_hash(ptr noundef %8, ptr noundef %10, i32 noundef %12) #26
  store i32 %14, ptr %5, align 8
  %15 = call ptr @d_lookup(ptr noundef %8, ptr noundef nonnull %5) #21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %56

17:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #21
  %18 = getelementptr inbounds %struct.wait_queue_head, ptr %6, i32 0, i32 1
  store i32 0, ptr %6, align 4
  store ptr %18, ptr %18, align 4
  %19 = getelementptr inbounds %struct.wait_queue_head, ptr %6, i32 0, i32 1, i32 1
  store ptr %18, ptr %19, align 4
  %20 = call ptr @d_alloc_parallel(ptr noundef %8, ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %53, label %22

22:                                               ; preds = %17
  %23 = load i32, ptr %20, align 8
  %24 = and i32 %23, 268435456
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %54, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 9
  %28 = load ptr, ptr %27, align 4
  %29 = call fastcc ptr @proc_sys_make_inode(ptr noundef %28, ptr noundef %2, ptr noundef %3)
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load i32, ptr %20, align 8
  %33 = and i32 %32, 268435456
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35, !prof !14

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.dentry, ptr %20, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %36) #21
  call void @__d_lookup_done(ptr noundef %20) #21
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %37 = load i16, ptr %36, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %36, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  br label %39

39:                                               ; preds = %35, %31
  call void @dput(ptr noundef %20) #21
  br label %53

40:                                               ; preds = %26
  call void @d_set_d_op(ptr noundef %20, ptr noundef nonnull @proc_sys_dentry_operations) #21
  %41 = call ptr @d_splice_alias(ptr noundef %29, ptr noundef %20) #21
  %42 = load i32, ptr %20, align 8
  %43 = and i32 %42, 268435456
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45, !prof !14

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.dentry, ptr %20, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %46) #21
  call void @__d_lookup_done(ptr noundef %20) #21
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %47 = load i16, ptr %46, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %46, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  br label %49

49:                                               ; preds = %45, %40
  %50 = icmp eq ptr %41, null
  br i1 %50, label %54, label %51, !prof !14

51:                                               ; preds = %49
  %52 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  call void @dput(ptr noundef %20) #21
  br i1 %52, label %53, label %54

53:                                               ; preds = %51, %39, %17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #21
  br label %73

54:                                               ; preds = %51, %49, %22
  %55 = phi ptr [ %20, %22 ], [ %20, %49 ], [ %41, %51 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #21
  br label %56

56:                                               ; preds = %54, %4
  %57 = phi ptr [ %15, %4 ], [ %55, %54 ]
  %58 = getelementptr inbounds %struct.dentry, ptr %57, i32 0, i32 5
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.inode, ptr %59, i32 0, i32 10
  %61 = load i32, ptr %60, align 4
  %62 = load i16, ptr %59, align 8
  %63 = lshr i16 %62, 12
  %64 = zext i16 %63 to i32
  call void @dput(ptr noundef %57) #21
  %65 = load ptr, ptr %11, align 8
  %66 = load i32, ptr %13, align 4
  %67 = zext i32 %61 to i64
  %68 = load ptr, ptr %1, align 8
  %69 = getelementptr inbounds %struct.dir_context, ptr %1, i32 0, i32 1
  %70 = load i64, ptr %69, align 8
  %71 = call i32 %68(ptr noundef %1, ptr noundef %65, i32 noundef %66, i64 noundef %70, i64 noundef %67, i32 noundef %64) #21
  %72 = icmp eq i32 %71, 0
  br label %73

73:                                               ; preds = %56, %53
  %74 = phi i1 [ %72, %56 ], [ false, %53 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  ret i1 %74
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @full_name_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc_parallel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__d_lookup_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_fs_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kern_mount(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strreplace(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filp_close(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @file_open_root(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #19

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #20

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #17 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { argmemonly nofree nounwind readonly willreturn }
attributes #20 = { argmemonly nofree nounwind willreturn writeonly }
attributes #21 = { nounwind }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { cold nounwind }
attributes #24 = { nounwind allocsize(2) }
attributes #25 = { cold noreturn nounwind }
attributes #26 = { nounwind readonly willreturn }

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
!8 = !{i64 474293, i64 2147975859, i64 2147975885, i64 2147975932, i64 2147975954, i64 2147975982, i64 2147976002}
!9 = !{i64 2148039121, i64 2148039147, i64 2148039176, i64 2148039210, i64 2148039241, i64 2148039264}
!10 = !{i64 2148972171}
!11 = !{i64 2148967995}
!12 = !{i64 2148968070, i64 2148968097, i64 2148968144, i64 2148968166, i64 2148968194, i64 2148968214}
!13 = !{i64 2148995174}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{!"auto-init"}
!17 = !{i64 2149444610}
!18 = !{i64 2152947236, i64 2152947722, i64 2152947273, i64 2152947329, i64 2152947363, i64 2152947387, i64 2152947428, i64 2152947449, i64 2152947477, i64 2152947511}
