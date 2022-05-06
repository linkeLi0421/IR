; ModuleID = '/llk/IR/fs/proc_namespace.c_pt.bc'
source_filename = "../fs/proc_namespace.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mnt_namespace = type { %struct.ns_common, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, i64, %struct.wait_queue_head, i64, i32, i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.proc_mounts = type { ptr, %struct.path, ptr, %struct.mount }
%struct.mount = type { %struct.hlist_node, ptr, ptr, %struct.vfsmount, %union.anon.63, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, %union.anon.64, %struct.list_head, ptr, i32, i32, i32, i32, %struct.hlist_head, %struct.hlist_head }
%struct.hlist_node = type { ptr, ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%union.anon.63 = type { %struct.callback_head }
%union.anon.64 = type { %struct.hlist_node }
%struct.hlist_head = type { ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.49, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.4 }
%struct.llist_node = type { ptr }
%union.anon.4 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.42 }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.49 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.61, %struct.list_head, %struct.list_head, %union.anon.62 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.0, ptr }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.59 }
%union.anon.59 = type { i64 }
%union.anon.61 = type { %struct.list_head }
%union.anon.62 = type { %struct.hlist_node }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@proc_mounts_operations = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr null, ptr null, ptr @seq_read_iter, ptr null, ptr null, ptr null, ptr null, ptr @mounts_poll, ptr null, ptr null, ptr null, i32 0, ptr @mounts_open, ptr null, ptr @mounts_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@proc_mountinfo_operations = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr null, ptr null, ptr @seq_read_iter, ptr null, ptr null, ptr null, ptr null, ptr @mounts_poll, ptr null, ptr null, ptr null, i32 0, ptr @mountinfo_open, ptr null, ptr @mounts_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@proc_mountstats_operations = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr null, ptr null, ptr @seq_read_iter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mountstats_open, ptr null, ptr @mounts_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@mounts_op = external dso_local constant %struct.seq_operations, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" \09\0A\\\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" ro\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" rw\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" 0 0\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c",sync\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c",dirsync\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c",mand\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c",lazytime\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c",nosuid\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c",nodev\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c",noexec\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c",noatime\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c",nodiratime\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c",relatime\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c",nosymfollow\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c",idmapped\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"%i %i %u:%u \00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c" shared:%i\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c" master:%i\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c" propagate_from:%i\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c" unbindable\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"device \00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"no device\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c" mounted on \00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"with fstype \00", align 1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read_iter(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mounts_poll(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.seq_file, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mnt_namespace, ptr %7, i32 0, i32 7
  %9 = icmp eq ptr %1, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %1, align 4
  %12 = icmp ne ptr %11, null
  %13 = icmp ne ptr %8, null
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  tail call void %11(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %1) #4
  br label %16

16:                                               ; preds = %15, %10, %2
  %17 = getelementptr inbounds %struct.mnt_namespace, ptr %7, i32 0, i32 8
  %18 = load volatile i64, ptr %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = getelementptr inbounds %struct.seq_file, ptr %4, i32 0, i32 9
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %21, %19
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  store i32 %19, ptr %20, align 8
  br label %24

24:                                               ; preds = %23, %16
  %25 = phi i32 [ 75, %23 ], [ 65, %16 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mounts_open(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = tail call fastcc i32 @mounts_open_common(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @show_vfsmnt)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mounts_release(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.seq_file, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.proc_mounts, ptr %6, i32 0, i32 1
  tail call void @path_put(ptr noundef %7) #4
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr inbounds %struct.proc_mounts, ptr %6, i32 0, i32 3
  tail call void @mnt_cursor_del(ptr noundef %8, ptr noundef %9) #4
  %10 = load ptr, ptr %6, align 4
  tail call void @put_mnt_ns(ptr noundef %10) #4
  %11 = tail call i32 @seq_release_private(ptr noundef %0, ptr noundef %1) #4
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mountinfo_open(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = tail call fastcc i32 @mounts_open_common(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @show_mountinfo)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mountstats_open(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = tail call fastcc i32 @mounts_open_common(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @show_vfsstat)
  ret i32 %3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mounts_open_common(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = alloca %struct.path, align 8
  %5 = getelementptr i8, ptr %0, i32 -40
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @get_pid_task(ptr noundef %6, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  store i64 0, ptr %4, align 8, !annotation !8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %92, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %10) #4
  %11 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 92
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.nsproxy, ptr %12, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %14, %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  %19 = load i16, ptr %10, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !12
  %21 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #4, !srcloc !14
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 1, ptr elementtype(i32) %21) #4, !srcloc !15
  %23 = extractvalue { i32, i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = icmp sgt i32 %23, 0
  br i1 %26, label %92, label %27, !prof !16

27:                                               ; preds = %25
  tail call void @refcount_warn_saturate(ptr noundef %21, i32 noundef 3) #4
  br label %92

28:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !17
  tail call void @__put_task_struct(ptr noundef nonnull %7) #4
  br label %92

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.ns_common, ptr %16, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #4, !srcloc !14
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 1, ptr elementtype(i32) %30) #4, !srcloc !18
  %32 = extractvalue { i32, i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34, !prof !19

34:                                               ; preds = %29
  %35 = add i32 %32, 1
  %36 = or i32 %35, %32
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %40, label %38, !prof !16

38:                                               ; preds = %34, %29
  %39 = phi i32 [ 2, %29 ], [ 1, %34 ]
  tail call void @refcount_warn_saturate(ptr noundef %30, i32 noundef %39) #4
  br label %40

40:                                               ; preds = %38, %34
  %41 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 89
  %42 = load ptr, ptr %41, align 64
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  %45 = load i16, ptr %10, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !12
  %47 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #4, !srcloc !14
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 1, ptr elementtype(i32) %47) #4, !srcloc !15
  %49 = extractvalue { i32, i32, i32 } %48, 0
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  %52 = icmp sgt i32 %49, 0
  br i1 %52, label %90, label %53, !prof !16

53:                                               ; preds = %51
  tail call void @refcount_warn_saturate(ptr noundef %47, i32 noundef 3) #4
  br label %90

54:                                               ; preds = %44
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !17
  tail call void @__put_task_struct(ptr noundef nonnull %7) #4
  br label %90

55:                                               ; preds = %40
  %56 = getelementptr inbounds %struct.fs_struct, ptr %42, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %56) #4
  %57 = getelementptr inbounds %struct.fs_struct, ptr %42, i32 0, i32 5
  %58 = load i64, ptr %57, align 4
  store i64 %58, ptr %4, align 8
  call void @path_get(ptr noundef nonnull %4) #4
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  %59 = load i16, ptr %56, align 4
  %60 = add i16 %59, 1
  store i16 %60, ptr %56, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !12
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  %61 = load i16, ptr %10, align 4
  %62 = add i16 %61, 1
  store i16 %62, ptr %10, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !12
  %63 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %63) #4, !srcloc !14
  %64 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %63, ptr %63, i32 1, ptr elementtype(i32) %63) #4, !srcloc !15
  %65 = extractvalue { i32, i32, i32 } %64, 0
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %70, label %67

67:                                               ; preds = %55
  %68 = icmp sgt i32 %65, 0
  br i1 %68, label %71, label %69, !prof !16

69:                                               ; preds = %67
  call void @refcount_warn_saturate(ptr noundef %63, i32 noundef 3) #4
  br label %71

70:                                               ; preds = %55
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !17
  call void @__put_task_struct(ptr noundef nonnull %7) #4
  br label %71

71:                                               ; preds = %70, %69, %67
  %72 = call i32 @seq_open_private(ptr noundef %1, ptr noundef nonnull @mounts_op, i32 noundef 184) #4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds %struct.mnt_namespace, ptr %16, i32 0, i32 8
  %78 = load i64, ptr %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = getelementptr inbounds %struct.seq_file, ptr %76, i32 0, i32 9
  store i32 %79, ptr %80, align 8
  %81 = getelementptr inbounds %struct.seq_file, ptr %76, i32 0, i32 11
  %82 = load ptr, ptr %81, align 8
  store ptr %16, ptr %82, align 4
  %83 = getelementptr inbounds %struct.proc_mounts, ptr %82, i32 0, i32 1
  %84 = load i64, ptr %4, align 8
  store i64 %84, ptr %83, align 4
  %85 = getelementptr inbounds %struct.proc_mounts, ptr %82, i32 0, i32 2
  store ptr %2, ptr %85, align 4
  %86 = getelementptr inbounds %struct.proc_mounts, ptr %82, i32 0, i32 3, i32 10
  store volatile ptr %86, ptr %86, align 4
  %87 = getelementptr inbounds %struct.proc_mounts, ptr %82, i32 0, i32 3, i32 10, i32 1
  store ptr %86, ptr %87, align 4
  %88 = getelementptr inbounds %struct.proc_mounts, ptr %82, i32 0, i32 3, i32 3, i32 2
  store i32 268435456, ptr %88, align 4
  br label %92

89:                                               ; preds = %71
  call void @path_put(ptr noundef nonnull %4) #4
  br label %90

90:                                               ; preds = %89, %54, %53, %51
  %91 = phi i32 [ %72, %89 ], [ -2, %51 ], [ -2, %53 ], [ -2, %54 ]
  call void @put_mnt_ns(ptr noundef nonnull %16) #4
  br label %92

92:                                               ; preds = %90, %74, %28, %27, %25, %3
  %93 = phi i32 [ 0, %74 ], [ %91, %90 ], [ -22, %3 ], [ -22, %25 ], [ -22, %27 ], [ -22, %28 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #4
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_vfsmnt(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca %struct.path, align 8
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  store ptr %1, ptr %3, align 8
  %6 = getelementptr inbounds %struct.path, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %1, align 4
  store ptr %7, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.super_operations, ptr %11, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = tail call i32 %13(ptr noundef %0, ptr noundef %7) #4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %75

18:                                               ; preds = %2
  %19 = getelementptr i8, ptr %1, i32 52
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  %22 = select i1 %21, ptr @.str, ptr %20
  %23 = tail call i32 @strlen(ptr noundef %22) #4
  tail call void @seq_escape_mem(ptr noundef %0, ptr noundef %22, i32 noundef %23, i32 noundef 8, ptr noundef nonnull @.str.1) #4
  br label %24

24:                                               ; preds = %18, %15
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 32) #4
  %25 = getelementptr inbounds %struct.proc_mounts, ptr %5, i32 0, i32 1
  %26 = call i32 @seq_path_root(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %25, ptr noundef nonnull @.str.1) #4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %75

28:                                               ; preds = %24
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 32) #4
  %29 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 5
  %30 = load ptr, ptr %29, align 32
  %31 = load ptr, ptr %30, align 4
  %32 = call i32 @strlen(ptr noundef %31) #4
  call void @seq_escape_mem(ptr noundef %0, ptr noundef %31, i32 noundef %32, i32 noundef 8, ptr noundef nonnull @.str.1) #4
  %33 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 38
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 46) #4
  %37 = load ptr, ptr %33, align 4
  %38 = call i32 @strlen(ptr noundef %37) #4
  call void @seq_escape_mem(ptr noundef %0, ptr noundef %37, i32 noundef %38, i32 noundef 8, ptr noundef nonnull @.str.1) #4
  br label %39

39:                                               ; preds = %36, %28
  %40 = call zeroext i1 @__mnt_is_readonly(ptr noundef %1) #4
  %41 = select i1 %40, ptr @.str.2, ptr @.str.3
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull %41) #4
  %42 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 10
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.5) #4
  %47 = load i32, ptr %42, align 4
  br label %48

48:                                               ; preds = %46, %39
  %49 = phi i32 [ %43, %39 ], [ %47, %46 ]
  %50 = and i32 %49, 128
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.6) #4
  %53 = load i32, ptr %42, align 4
  br label %54

54:                                               ; preds = %52, %48
  %55 = phi i32 [ %53, %52 ], [ %49, %48 ]
  %56 = and i32 %55, 64
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.7) #4
  %59 = load i32, ptr %42, align 4
  br label %60

60:                                               ; preds = %58, %54
  %61 = phi i32 [ %59, %58 ], [ %55, %54 ]
  %62 = and i32 %61, 33554432
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.8) #4
  br label %65

65:                                               ; preds = %64, %60
  call fastcc void @show_mnt_opts(ptr noundef %0, ptr noundef %1)
  %66 = load ptr, ptr %10, align 4
  %67 = getelementptr inbounds %struct.super_operations, ptr %66, i32 0, i32 16
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load ptr, ptr %6, align 4
  %72 = call i32 %68(ptr noundef %0, ptr noundef %71) #4
  br label %73

73:                                               ; preds = %70, %65
  %74 = phi i32 [ %72, %70 ], [ 0, %65 ]
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.4) #4
  br label %75

75:                                               ; preds = %73, %24, %15
  %76 = phi i32 [ %16, %15 ], [ %26, %24 ], [ %74, %73 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #4
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open_private(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_mnt_ns(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_pid_task(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_path_root(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mnt_is_readonly(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @show_mnt_opts(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.vfsmount, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.9) #4
  %8 = load i32, ptr %3, align 4
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %4, %2 ], [ %8, %7 ]
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.10) #4
  %14 = load i32, ptr %3, align 4
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi i32 [ %14, %13 ], [ %10, %9 ]
  %17 = and i32 %16, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.11) #4
  %20 = load i32, ptr %3, align 4
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi i32 [ %20, %19 ], [ %16, %15 ]
  %23 = and i32 %22, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.12) #4
  %26 = load i32, ptr %3, align 4
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi i32 [ %26, %25 ], [ %22, %21 ]
  %29 = and i32 %28, 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.13) #4
  %32 = load i32, ptr %3, align 4
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi i32 [ %32, %31 ], [ %28, %27 ]
  %35 = and i32 %34, 32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.14) #4
  %38 = load i32, ptr %3, align 4
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi i32 [ %38, %37 ], [ %34, %33 ]
  %41 = and i32 %40, 128
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.15) #4
  br label %44

44:                                               ; preds = %43, %39
  %45 = getelementptr inbounds %struct.vfsmount, ptr %1, i32 0, i32 3
  %46 = load volatile ptr, ptr %45, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !20
  %47 = getelementptr inbounds %struct.vfsmount, ptr %1, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.super_block, ptr %48, i32 0, i32 47
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %46, %50
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.16) #4
  br label %53

53:                                               ; preds = %52, %44
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_escape_mem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_cursor_del(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release_private(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_mountinfo(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca %struct.path, align 8
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %1, i32 -16
  %7 = getelementptr inbounds %struct.vfsmount, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  store ptr %1, ptr %3, align 8
  %9 = getelementptr inbounds %struct.path, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %1, align 4
  store ptr %10, ptr %9, align 4
  %11 = getelementptr i8, ptr %1, i32 132
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %1, i32 -8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.mount, ptr %14, i32 0, i32 22
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 1
  %18 = load i32, ptr %17, align 8
  %19 = lshr i32 %18, 20
  %20 = and i32 %18, 1048575
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %12, i32 noundef %16, i32 noundef %19, i32 noundef %20) #4
  %21 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.super_operations, ptr %22, i32 0, i32 18
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  %26 = load ptr, ptr %1, align 4
  br i1 %25, label %30, label %27

27:                                               ; preds = %2
  %28 = tail call i32 %24(ptr noundef %0, ptr noundef %26) #4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %129

30:                                               ; preds = %2
  %31 = tail call i32 @seq_dentry(ptr noundef %0, ptr noundef %26, ptr noundef nonnull @.str.1) #4
  br label %32

32:                                               ; preds = %30, %27
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 32) #4
  %33 = getelementptr inbounds %struct.proc_mounts, ptr %5, i32 0, i32 1
  %34 = call i32 @seq_path_root(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %33, ptr noundef nonnull @.str.1) #4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %129

36:                                               ; preds = %32
  %37 = getelementptr %struct.vfsmount, ptr %1, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 64
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, ptr @.str.3, ptr @.str.2
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull %41) #4
  call fastcc void @show_mnt_opts(ptr noundef %0, ptr noundef %1)
  %42 = load i32, ptr %37, align 4
  %43 = and i32 %42, 4096
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %36
  %46 = getelementptr i8, ptr %1, i32 136
  %47 = load i32, ptr %46, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %47) #4
  br label %48

48:                                               ; preds = %45, %36
  %49 = getelementptr i8, ptr %1, i32 96
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.mount, ptr %50, i32 0, i32 23
  %54 = load i32, ptr %53, align 4
  %55 = call i32 @get_dominating_id(ptr noundef %6, ptr noundef %33) #4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %54) #4
  %56 = icmp eq i32 %55, 0
  %57 = icmp eq i32 %55, %54
  %58 = select i1 %56, i1 true, i1 %57
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %55) #4
  br label %60

60:                                               ; preds = %59, %52, %48
  %61 = load i32, ptr %37, align 4
  %62 = and i32 %61, 8192
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.21) #4
  br label %65

65:                                               ; preds = %64, %60
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.22) #4
  %66 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 5
  %67 = load ptr, ptr %66, align 32
  %68 = load ptr, ptr %67, align 4
  %69 = call i32 @strlen(ptr noundef %68) #4
  call void @seq_escape_mem(ptr noundef %0, ptr noundef %68, i32 noundef %69, i32 noundef 8, ptr noundef nonnull @.str.1) #4
  %70 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 38
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %65
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 46) #4
  %74 = load ptr, ptr %70, align 4
  %75 = call i32 @strlen(ptr noundef %74) #4
  call void @seq_escape_mem(ptr noundef %0, ptr noundef %74, i32 noundef %75, i32 noundef 8, ptr noundef nonnull @.str.1) #4
  br label %76

76:                                               ; preds = %73, %65
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 32) #4
  %77 = load ptr, ptr %21, align 4
  %78 = getelementptr inbounds %struct.super_operations, ptr %77, i32 0, i32 17
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %76
  %82 = load ptr, ptr %1, align 4
  %83 = call i32 %79(ptr noundef %0, ptr noundef %82) #4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %91, label %129

85:                                               ; preds = %76
  %86 = getelementptr i8, ptr %1, i32 52
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  %89 = select i1 %88, ptr @.str, ptr %87
  %90 = call i32 @strlen(ptr noundef %89) #4
  call void @seq_escape_mem(ptr noundef %0, ptr noundef %89, i32 noundef %90, i32 noundef 8, ptr noundef nonnull @.str.1) #4
  br label %91

91:                                               ; preds = %85, %81
  %92 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 10
  %93 = load i32, ptr %92, align 4
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  %96 = select i1 %95, ptr @.str.3, ptr @.str.2
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull %96) #4
  %97 = load i32, ptr %92, align 4
  %98 = and i32 %97, 16
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %91
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.5) #4
  %101 = load i32, ptr %92, align 4
  br label %102

102:                                              ; preds = %100, %91
  %103 = phi i32 [ %97, %91 ], [ %101, %100 ]
  %104 = and i32 %103, 128
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %102
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.6) #4
  %107 = load i32, ptr %92, align 4
  br label %108

108:                                              ; preds = %106, %102
  %109 = phi i32 [ %107, %106 ], [ %103, %102 ]
  %110 = and i32 %109, 64
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %108
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.7) #4
  %113 = load i32, ptr %92, align 4
  br label %114

114:                                              ; preds = %112, %108
  %115 = phi i32 [ %113, %112 ], [ %109, %108 ]
  %116 = and i32 %115, 33554432
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %114
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.8) #4
  br label %119

119:                                              ; preds = %118, %114
  %120 = load ptr, ptr %21, align 4
  %121 = getelementptr inbounds %struct.super_operations, ptr %120, i32 0, i32 16
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %119
  %125 = load ptr, ptr %1, align 4
  %126 = call i32 %122(ptr noundef %0, ptr noundef %125) #4
  br label %127

127:                                              ; preds = %124, %119
  %128 = phi i32 [ %126, %124 ], [ 0, %119 ]
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #4
  br label %129

129:                                              ; preds = %127, %81, %32, %27
  %130 = phi i32 [ %28, %27 ], [ %34, %32 ], [ %83, %81 ], [ %128, %127 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #4
  ret i32 %130
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_dentry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_dominating_id(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_vfsstat(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca %struct.path, align 8
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  store ptr %1, ptr %3, align 8
  %6 = getelementptr inbounds %struct.path, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %1, align 4
  store ptr %7, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.super_operations, ptr %11, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.23) #4
  %16 = load ptr, ptr %10, align 4
  %17 = getelementptr inbounds %struct.super_operations, ptr %16, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %0, ptr noundef %7) #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %57

21:                                               ; preds = %2
  %22 = getelementptr i8, ptr %1, i32 52
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.23) #4
  %26 = load ptr, ptr %22, align 4
  %27 = tail call i32 @strlen(ptr noundef %26) #4
  tail call void @seq_escape_mem(ptr noundef %0, ptr noundef %26, i32 noundef %27, i32 noundef 8, ptr noundef nonnull @.str.1) #4
  br label %29

28:                                               ; preds = %21
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.24) #4
  br label %29

29:                                               ; preds = %28, %25, %15
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.25) #4
  %30 = getelementptr inbounds %struct.proc_mounts, ptr %5, i32 0, i32 1
  %31 = call i32 @seq_path_root(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %30, ptr noundef nonnull @.str.1) #4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %29
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 32) #4
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.26) #4
  %34 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 5
  %35 = load ptr, ptr %34, align 32
  %36 = load ptr, ptr %35, align 4
  %37 = call i32 @strlen(ptr noundef %36) #4
  call void @seq_escape_mem(ptr noundef %0, ptr noundef %36, i32 noundef %37, i32 noundef 8, ptr noundef nonnull @.str.1) #4
  %38 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 38
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 46) #4
  %42 = load ptr, ptr %38, align 4
  %43 = call i32 @strlen(ptr noundef %42) #4
  call void @seq_escape_mem(ptr noundef %0, ptr noundef %42, i32 noundef %43, i32 noundef 8, ptr noundef nonnull @.str.1) #4
  br label %44

44:                                               ; preds = %41, %33
  %45 = load ptr, ptr %10, align 4
  %46 = getelementptr inbounds %struct.super_operations, ptr %45, i32 0, i32 19
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 32) #4
  %50 = load ptr, ptr %10, align 4
  %51 = getelementptr inbounds %struct.super_operations, ptr %50, i32 0, i32 19
  %52 = load ptr, ptr %51, align 4
  %53 = load ptr, ptr %6, align 4
  %54 = call i32 %52(ptr noundef %0, ptr noundef %53) #4
  br label %55

55:                                               ; preds = %49, %44
  %56 = phi i32 [ %54, %49 ], [ 0, %44 ]
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #4
  br label %57

57:                                               ; preds = %55, %29, %15
  %58 = phi i32 [ %19, %15 ], [ %31, %29 ], [ %56, %55 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #4
  ret i32 %58
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }

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
!9 = !{i64 2148831312}
!10 = !{i64 2148827136}
!11 = !{i64 2148827211, i64 2148827238, i64 2148827285, i64 2148827307, i64 2148827335, i64 2148827355}
!12 = !{i64 2148854315}
!13 = !{i64 2148265774}
!14 = !{i64 662708, i64 2148152679, i64 2148152705, i64 2148152752, i64 2148152774, i64 2148152802, i64 2148152822}
!15 = !{i64 2148167909, i64 2148167941, i64 2148167970, i64 2148168004, i64 2148168035, i64 2148168058}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2149249053}
!18 = !{i64 2148165552, i64 2148165584, i64 2148165613, i64 2148165647, i64 2148165678, i64 2148165701}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 2151263525}
