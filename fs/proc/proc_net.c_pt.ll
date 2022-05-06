; ModuleID = '/llk/IR/fs/proc/proc_net.c_pt.bc'
source_filename = "../fs/proc/proc_net.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_proc_create_net_data:\09\09\09\09\09"
module asm "\09.asciz \09\22proc_create_net_data\22\09\09\09\09\09"
module asm "__kstrtabns_proc_create_net_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_proc_create_net_data_write:\09\09\09\09\09"
module asm "\09.asciz \09\22proc_create_net_data_write\22\09\09\09\09\09"
module asm "__kstrtabns_proc_create_net_data_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_proc_create_net_single:\09\09\09\09\09"
module asm "\09.asciz \09\22proc_create_net_single\22\09\09\09\09\09"
module asm "__kstrtabns_proc_create_net_single:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_proc_create_net_single_write:\09\09\09\09\09"
module asm "\09.asciz \09\22proc_create_net_single_write\22\09\09\09\09\09"
module asm "__kstrtabns_proc_create_net_single_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [12 x i8] }
%struct.user_namespace = type opaque
%struct.proc_dir_entry = type { %struct.atomic_t, %struct.refcount_struct, %struct.list_head, %struct.spinlock, ptr, ptr, %union.anon.93, ptr, %union.anon.94, ptr, ptr, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, ptr, %struct.rb_root, %struct.rb_node, ptr, i16, i8, i8, [0 x i8] }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%union.anon.93 = type { ptr }
%union.anon.94 = type { ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.rb_root = type { ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.81, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.48 }
%struct.llist_node = type { ptr }
%union.anon.48 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.49 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.81 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.54, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.54 = type { %struct.anon.55 }
%struct.anon.55 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [40 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [60 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.78, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.78 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.91, %struct.list_head, %struct.list_head, %union.anon.92 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.1, ptr }
%union.anon.1 = type { i64 }
%struct.lockref = type { %union.anon.89 }
%union.anon.89 = type { i64 }
%union.anon.91 = type { %struct.list_head }
%union.anon.92 = type { %struct.hlist_node }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@proc_net_seq_ops = internal constant %struct.proc_ops { i32 0, ptr @seq_open_net, ptr @seq_read, ptr null, ptr @proc_simple_write, ptr @seq_lseek, ptr @seq_release_net, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_proc_create_net_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_proc_create_net_data = external dso_local constant [0 x i8], align 1
@__ksymtab_proc_create_net_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @proc_create_net_data to i32), ptr @__kstrtab_proc_create_net_data, ptr @__kstrtabns_proc_create_net_data }, section "___ksymtab_gpl+proc_create_net_data", align 4
@__kstrtab_proc_create_net_data_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_proc_create_net_data_write = external dso_local constant [0 x i8], align 1
@__ksymtab_proc_create_net_data_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @proc_create_net_data_write to i32), ptr @__kstrtab_proc_create_net_data_write, ptr @__kstrtabns_proc_create_net_data_write }, section "___ksymtab_gpl+proc_create_net_data_write", align 4
@proc_net_single_ops = internal constant %struct.proc_ops { i32 0, ptr @single_open_net, ptr @seq_read, ptr null, ptr @proc_simple_write, ptr @seq_lseek, ptr @single_release_net, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_proc_create_net_single = external dso_local constant [0 x i8], align 1
@__kstrtabns_proc_create_net_single = external dso_local constant [0 x i8], align 1
@__ksymtab_proc_create_net_single = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @proc_create_net_single to i32), ptr @__kstrtab_proc_create_net_single, ptr @__kstrtabns_proc_create_net_single }, section "___ksymtab_gpl+proc_create_net_single", align 4
@__kstrtab_proc_create_net_single_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_proc_create_net_single_write = external dso_local constant [0 x i8], align 1
@__ksymtab_proc_create_net_single_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @proc_create_net_single_write to i32), ptr @__kstrtab_proc_create_net_single_write, ptr @__kstrtabns_proc_create_net_single_write }, section "___ksymtab_gpl+proc_create_net_single_write", align 4
@proc_net_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @proc_tgid_net_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_tgid_net_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@proc_net_operations = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_tgid_net_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [4 x i8] c"net\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"self/net\00", align 1
@proc_net_ns_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @proc_net_ns_init, ptr null, ptr @proc_net_ns_exit, ptr null, ptr null, i32 0 }, section ".init.data", align 4
@proc_net_dentry_ops = external dso_local constant %struct.dentry_operations, align 64
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@proc_dir_entry_cache = external dso_local local_unnamed_addr global ptr, align 4
@proc_root = external dso_local global %struct.proc_dir_entry, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_proc_create_net_data, ptr @__ksymtab_proc_create_net_data_write, ptr @__ksymtab_proc_create_net_single, ptr @__ksymtab_proc_create_net_single_write], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @bpf_iter_init_seq_net(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @bpf_iter_fini_seq_net(ptr nocapture noundef %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @proc_create_net_data(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) #1 {
  %7 = alloca ptr, align 4
  store ptr %2, ptr %7, align 4
  %8 = call ptr @proc_create_reg(ptr noundef %0, i16 noundef zeroext %1, ptr noundef nonnull %7, ptr noundef %5) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.proc_dir_entry, ptr %8, i32 0, i32 7
  store ptr @proc_net_dentry_ops, ptr %11, align 8
  %12 = getelementptr inbounds %struct.proc_dir_entry, ptr %8, i32 0, i32 6
  store ptr @proc_net_seq_ops, ptr %12, align 4
  %13 = getelementptr inbounds %struct.proc_dir_entry, ptr %8, i32 0, i32 8
  store ptr %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.proc_dir_entry, ptr %8, i32 0, i32 11
  store i32 %4, ptr %14, align 8
  %15 = load ptr, ptr %7, align 4
  %16 = call ptr @proc_register(ptr noundef %15, ptr noundef nonnull %8) #5
  br label %17

17:                                               ; preds = %10, %6
  %18 = phi ptr [ %16, %10 ], [ null, %6 ]
  ret ptr %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_reg(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @proc_create_net_data_write(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) #1 {
  %8 = alloca ptr, align 4
  store ptr %2, ptr %8, align 4
  %9 = call ptr @proc_create_reg(ptr noundef %0, i16 noundef zeroext %1, ptr noundef nonnull %8, ptr noundef %6) #5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.proc_dir_entry, ptr %9, i32 0, i32 7
  store ptr @proc_net_dentry_ops, ptr %12, align 8
  %13 = getelementptr inbounds %struct.proc_dir_entry, ptr %9, i32 0, i32 6
  store ptr @proc_net_seq_ops, ptr %13, align 4
  %14 = getelementptr inbounds %struct.proc_dir_entry, ptr %9, i32 0, i32 8
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.proc_dir_entry, ptr %9, i32 0, i32 11
  store i32 %5, ptr %15, align 8
  %16 = getelementptr inbounds %struct.proc_dir_entry, ptr %9, i32 0, i32 9
  store ptr %4, ptr %16, align 8
  %17 = load ptr, ptr %8, align 4
  %18 = call ptr @proc_register(ptr noundef %17, ptr noundef nonnull %9) #5
  br label %19

19:                                               ; preds = %11, %7
  %20 = phi ptr [ %18, %11 ], [ null, %7 ]
  ret ptr %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @proc_create_net_single(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
  %6 = alloca ptr, align 4
  store ptr %2, ptr %6, align 4
  %7 = call ptr @proc_create_reg(ptr noundef %0, i16 noundef zeroext %1, ptr noundef nonnull %6, ptr noundef %4) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.proc_dir_entry, ptr %7, i32 0, i32 7
  store ptr @proc_net_dentry_ops, ptr %10, align 8
  %11 = getelementptr inbounds %struct.proc_dir_entry, ptr %7, i32 0, i32 6
  store ptr @proc_net_single_ops, ptr %11, align 4
  %12 = getelementptr inbounds %struct.proc_dir_entry, ptr %7, i32 0, i32 8
  store ptr %3, ptr %12, align 4
  %13 = load ptr, ptr %6, align 4
  %14 = call ptr @proc_register(ptr noundef %13, ptr noundef nonnull %7) #5
  br label %15

15:                                               ; preds = %9, %5
  %16 = phi ptr [ %14, %9 ], [ null, %5 ]
  ret ptr %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @proc_create_net_single_write(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #1 {
  %7 = alloca ptr, align 4
  store ptr %2, ptr %7, align 4
  %8 = call ptr @proc_create_reg(ptr noundef %0, i16 noundef zeroext %1, ptr noundef nonnull %7, ptr noundef %5) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.proc_dir_entry, ptr %8, i32 0, i32 7
  store ptr @proc_net_dentry_ops, ptr %11, align 8
  %12 = getelementptr inbounds %struct.proc_dir_entry, ptr %8, i32 0, i32 6
  store ptr @proc_net_single_ops, ptr %12, align 4
  %13 = getelementptr inbounds %struct.proc_dir_entry, ptr %8, i32 0, i32 8
  store ptr %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.proc_dir_entry, ptr %8, i32 0, i32 9
  store ptr %4, ptr %14, align 8
  %15 = load ptr, ptr %7, align 4
  %16 = call ptr @proc_register(ptr noundef %15, ptr noundef nonnull %8) #5
  br label %17

17:                                               ; preds = %10, %6
  %18 = phi ptr [ %16, %10 ], [ null, %6 ]
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @proc_tgid_net_lookup(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !8
  %4 = getelementptr i8, ptr %0, i32 -40
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @pid_task(ptr noundef %5, i32 noundef 0) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !9
  br label %26

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %10) #5
  %11 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 92
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.nsproxy, ptr %12, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %9
  %18 = phi ptr [ %16, %14 ], [ null, %9 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %19 = load i16, ptr %10, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !9
  %21 = icmp eq ptr %18, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.net, ptr %18, i32 0, i32 17
  %24 = load ptr, ptr %23, align 8
  %25 = tail call ptr @proc_lookup_de(ptr noundef %0, ptr noundef %1, ptr noundef %24) #5
  br label %26

26:                                               ; preds = %22, %17, %8
  %27 = phi ptr [ %25, %22 ], [ inttoptr (i32 -2 to ptr), %17 ], [ inttoptr (i32 -2 to ptr), %8 ]
  ret ptr %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_tgid_net_getattr(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #1 {
  %6 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !8
  %10 = getelementptr i8, ptr %9, i32 -40
  %11 = load ptr, ptr %10, align 8
  %12 = tail call ptr @pid_task(ptr noundef %11, i32 noundef 0) #5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %15) #5
  %16 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 92
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.nsproxy, ptr %17, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi ptr [ %21, %19 ], [ null, %14 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %24 = load i16, ptr %15, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  br label %26

26:                                               ; preds = %22, %5
  %27 = phi ptr [ %23, %22 ], [ null, %5 ]
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !9
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %9, ptr noundef %2) #5
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.net, ptr %27, i32 0, i32 17
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.proc_dir_entry, ptr %31, i32 0, i32 13
  %33 = load i32, ptr %32, align 8
  %34 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 2
  store i32 %33, ptr %34, align 8
  br label %35

35:                                               ; preds = %29, %26
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_tgid_net_readdir(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !8
  %5 = getelementptr i8, ptr %4, i32 -40
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @pid_task(ptr noundef %6, i32 noundef 0) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !9
  br label %27

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %11) #5
  %12 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 92
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.nsproxy, ptr %13, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  br label %18

18:                                               ; preds = %15, %10
  %19 = phi ptr [ %17, %15 ], [ null, %10 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %20 = load i16, ptr %11, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !9
  %22 = icmp eq ptr %19, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.net, ptr %19, i32 0, i32 17
  %25 = load ptr, ptr %24, align 8
  %26 = tail call i32 @proc_readdir_de(ptr noundef %0, ptr noundef %1, ptr noundef %25) #5
  br label %27

27:                                               ; preds = %23, %18, %9
  %28 = phi i32 [ %26, %23 ], [ -22, %18 ], [ -22, %9 ]
  ret i32 %28
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @proc_net_init() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call ptr @proc_symlink(ptr noundef nonnull @.str, ptr noundef null, ptr noundef nonnull @.str.1) #5
  %2 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @proc_net_ns_ops) #5
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_symlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @seq_open_net(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 -28
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.proc_dir_entry, ptr %4, i32 0, i32 11
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.proc_dir_entry, ptr %4, i32 0, i32 9
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %11, %2
  %16 = getelementptr inbounds %struct.proc_dir_entry, ptr %4, i32 0, i32 17
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.proc_dir_entry, ptr %17, i32 0, i32 10
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.proc_dir_entry, ptr %4, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = tail call ptr @__seq_open_private(ptr noundef %1, ptr noundef %23, i32 noundef %6) #5
  %25 = icmp eq ptr %24, null
  %26 = select i1 %25, i32 -12, i32 0
  br label %27

27:                                               ; preds = %21, %15, %11
  %28 = phi i32 [ -13, %11 ], [ -6, %15 ], [ %26, %21 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_simple_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @seq_release_net(ptr noundef %0, ptr noundef %1) #1 {
  %3 = tail call i32 @seq_release_private(ptr noundef %0, ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__seq_open_private(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release_private(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @single_open_net(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 -28
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.proc_dir_entry, ptr %4, i32 0, i32 17
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.proc_dir_entry, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.proc_dir_entry, ptr %4, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @single_open(ptr noundef %1, ptr noundef %12, ptr noundef nonnull %8) #5
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i32 [ -6, %2 ], [ %13, %10 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @single_release_net(ptr noundef %0, ptr noundef %1) #1 {
  %3 = tail call i32 @single_release(ptr noundef %0, ptr noundef %1) #5
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_lookup_de(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pid_task(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_readdir_de(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @proc_net_ns_init(ptr noundef %0) #3 section ".init.text" {
  %2 = load ptr, ptr @proc_dir_entry_cache, align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 3520) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 18
  store ptr null, ptr %6, align 4
  %7 = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 10
  store ptr %0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 13
  store i32 2, ptr %8, align 8
  %9 = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 23
  store i8 3, ptr %9, align 1
  %10 = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 17
  store ptr @proc_root, ptr %10, align 8
  %11 = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 24
  %12 = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 20
  store ptr %11, ptr %12, align 4
  store i32 7628142, ptr %11, align 4
  tail call void @proc_set_user(ptr noundef nonnull %3, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer) #5
  %13 = tail call ptr @_proc_mkdir(ptr noundef nonnull @.str.3, i16 noundef zeroext 0, ptr noundef nonnull %3, ptr noundef %0, i1 noundef zeroext true) #5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  store ptr %3, ptr %16, align 8
  %17 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 18
  store ptr %13, ptr %17, align 4
  br label %19

18:                                               ; preds = %5
  tail call void @pde_free(ptr noundef nonnull %3) #5
  br label %19

19:                                               ; preds = %18, %15, %1
  %20 = phi i32 [ 0, %15 ], [ -17, %18 ], [ -12, %1 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @proc_net_ns_exit(ptr nocapture noundef readonly %0) #4 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.3, ptr noundef %3) #5
  %4 = load ptr, ptr %2, align 8
  tail call void @pde_free(ptr noundef %4) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_set_user(ptr noundef, [1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pde_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_proc_mkdir(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }

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
!8 = !{i64 2148960959}
!9 = !{i64 2148961176}
!10 = !{i64 2149187158}
!11 = !{i64 2149182982}
!12 = !{i64 2149183057, i64 2149183084, i64 2149183131, i64 2149183153, i64 2149183181, i64 2149183201}
!13 = !{i64 2149210161}
