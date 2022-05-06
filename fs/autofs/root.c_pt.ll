; ModuleID = '/llk/IR/fs/autofs/root.c_pt.bc'
source_filename = "../fs/autofs/root.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [12 x i8] }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.53, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.54, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.55, ptr, %struct.address_space, %struct.list_head, %union.anon.58, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.53 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.54 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.55 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.58 = type { ptr }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.autofs_sb_info = type { i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.callback_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.36, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.8 }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.36 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.rlimit = type { i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.61, %struct.list_head, %struct.list_head, %union.anon.62 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.0, ptr }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.59 }
%union.anon.59 = type { i64 }
%union.anon.61 = type { %struct.list_head }
%union.anon.62 = type { %struct.hlist_node }
%struct.anon = type { i32, i32 }
%struct.anon.60 = type { %struct.spinlock, i32 }
%struct.autofs_info = type { ptr, ptr, i32, %struct.completion, %struct.list_head, %struct.list_head, ptr, i32, i32, %struct.kuid_t, %struct.kgid_t, %struct.callback_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }

@autofs_root_operations = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @dcache_dir_lseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dcache_readdir, ptr null, ptr @autofs_root_ioctl, ptr null, ptr null, i32 0, ptr @dcache_dir_open, ptr null, ptr @dcache_dir_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@autofs_dir_operations = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @dcache_dir_lseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dcache_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @autofs_dir_open, ptr null, ptr @dcache_dir_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@autofs_dir_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @autofs_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @autofs_dir_unlink, ptr @autofs_dir_symlink, ptr @autofs_dir_mkdir, ptr @autofs_dir_rmdir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@autofs_dentry_operations = dso_local constant %struct.dentry_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @autofs_dentry_release, ptr null, ptr null, ptr null, ptr @autofs_d_automount, ptr @autofs_d_manage, ptr null, [12 x i8] undef }, align 64
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dcache_dir_lseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dcache_readdir(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @autofs_root_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = inttoptr i32 %2 to ptr
  %11 = and i32 %1, 65504
  %12 = icmp eq i32 %11, 37728
  br i1 %12, label %13, label %98

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.autofs_sb_info, ptr %9, i32 0, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = tail call ptr @llvm.thread.pointer() #10
  %20 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 93
  %21 = load ptr, ptr %20, align 16
  %22 = getelementptr %struct.signal_struct, ptr %21, i32 0, i32 22, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.autofs_sb_info, ptr %9, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %23, %25
  br i1 %26, label %29, label %27

27:                                               ; preds = %18
  %28 = tail call zeroext i1 @capable(i32 noundef 21) #10
  br i1 %28, label %29, label %98

29:                                               ; preds = %27, %18, %13
  switch i32 %1, label %98 [
    i32 37728, label %30
    i32 37729, label %32
    i32 37730, label %34
    i32 -2147183773, label %35
    i32 -2147183769, label %44
    i32 -1073441948, label %53
    i32 -2147183760, label %76
    i32 -2129882267, label %88
    i32 1074041702, label %93
  ]

30:                                               ; preds = %29
  %31 = tail call i32 @autofs_wait_release(ptr noundef %9, i32 noundef %2, i32 noundef 0) #10
  br label %98

32:                                               ; preds = %29
  %33 = tail call i32 @autofs_wait_release(ptr noundef %9, i32 noundef %2, i32 noundef -2) #10
  br label %98

34:                                               ; preds = %29
  tail call void @autofs_catatonic_mode(ptr noundef %9) #10
  br label %98

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.autofs_sb_info, ptr %9, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = tail call ptr @llvm.thread.pointer() #10
  %39 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 3
  %40 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #11, !srcloc !8
  %41 = and i32 %40, -13
  %42 = or i32 %41, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #10, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !10
  %43 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %10, i32 %37, i32 -1090519041) #10, !srcloc !11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #10, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !10
  br label %98

44:                                               ; preds = %29
  %45 = getelementptr inbounds %struct.autofs_sb_info, ptr %9, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = tail call ptr @llvm.thread.pointer() #10
  %48 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 3
  %49 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %48) #11, !srcloc !8
  %50 = and i32 %49, -13
  %51 = or i32 %50, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #10, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !10
  %52 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %10, i32 %46, i32 -1090519041) #10, !srcloc !12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #10, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !10
  br label %98

53:                                               ; preds = %29
  %54 = tail call ptr @llvm.thread.pointer() #10
  %55 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 3
  %56 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %55) #11, !srcloc !8
  %57 = and i32 %56, -13
  %58 = or i32 %57, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %58) #10, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !10
  %59 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %10, i32 -1090519041) #10, !srcloc !13
  %60 = extractvalue { i32, i32 } %59, 0
  %61 = extractvalue { i32, i32 } %59, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %56) #10, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !10
  %62 = icmp eq i32 %60, 0
  br i1 %62, label %63, label %98

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.autofs_sb_info, ptr %9, i32 0, i32 9
  %65 = load i32, ptr %64, align 4
  %66 = udiv i32 %65, 100
  %67 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %55) #11, !srcloc !8
  %68 = and i32 %67, -13
  %69 = or i32 %68, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %69) #10, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !10
  %70 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %10, i32 %66, i32 -1090519041) #10, !srcloc !14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %67) #10, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !10
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %98

72:                                               ; preds = %63
  %73 = icmp ugt i32 %61, 42949672
  %74 = mul i32 %61, 100
  %75 = select i1 %73, i32 0, i32 %74
  store i32 %75, ptr %64, align 4
  br label %98

76:                                               ; preds = %29
  %77 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %78 = load ptr, ptr %77, align 8
  %79 = tail call i32 @may_umount(ptr noundef %78) #10
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = tail call ptr @llvm.thread.pointer() #10
  %83 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 3
  %84 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %83) #11, !srcloc !8
  %85 = and i32 %84, -13
  %86 = or i32 %85, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %86) #10, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !10
  %87 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %10, i32 %81, i32 -1090519041) #10, !srcloc !15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %84) #10, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !10
  br label %98

88:                                               ; preds = %29
  %89 = load ptr, ptr %6, align 4
  %90 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %91 = load ptr, ptr %90, align 8
  %92 = tail call i32 @autofs_expire_run(ptr noundef %89, ptr noundef %91, ptr noundef %9, ptr noundef %10) #10
  br label %98

93:                                               ; preds = %29
  %94 = load ptr, ptr %6, align 4
  %95 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %96 = load ptr, ptr %95, align 8
  %97 = tail call i32 @autofs_expire_multi(ptr noundef %94, ptr noundef %96, ptr noundef %9, ptr noundef %10) #10
  br label %98

98:                                               ; preds = %93, %88, %76, %72, %63, %53, %44, %35, %34, %32, %30, %29, %27, %3
  %99 = phi i32 [ %97, %93 ], [ %92, %88 ], [ %87, %76 ], [ %52, %44 ], [ %43, %35 ], [ 0, %34 ], [ %33, %32 ], [ %31, %30 ], [ -25, %3 ], [ -1, %27 ], [ -22, %29 ], [ 0, %72 ], [ %60, %53 ], [ %70, %63 ]
  ret i32 %99
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dcache_dir_open(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dcache_dir_close(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @autofs_dir_open(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.autofs_sb_info, ptr %8, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %2
  %14 = tail call ptr @llvm.thread.pointer() #10
  %15 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 93
  %16 = load ptr, ptr %15, align 16
  %17 = getelementptr %struct.signal_struct, ptr %16, i32 0, i32 22, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.autofs_sb_info, ptr %8, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %35, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1
  %24 = getelementptr inbounds %struct.autofs_sb_info, ptr %8, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %24) #10
  %25 = tail call zeroext i1 @path_is_mountpoint(ptr noundef %23) #10
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = tail call i32 @simple_empty(ptr noundef %4) #10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %30 = load i16, ptr %24, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  br label %37

32:                                               ; preds = %26, %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %33 = load i16, ptr %24, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  br label %35

35:                                               ; preds = %32, %13, %2
  %36 = tail call i32 @dcache_dir_open(ptr noundef %0, ptr noundef %1) #10
  br label %37

37:                                               ; preds = %35, %29
  %38 = phi i32 [ %36, %35 ], [ -2, %29 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @autofs_lookup(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %5 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, 255
  br i1 %7, label %123, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 27
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 27
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8
  %19 = load i32, ptr %4, align 8
  %20 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.autofs_sb_info, ptr %16, i32 0, i32 17
  %23 = load volatile ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %22
  br i1 %24, label %76, label %25

25:                                               ; preds = %8
  %26 = getelementptr inbounds %struct.autofs_sb_info, ptr %16, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %26) #10
  %27 = load ptr, ptr %22, align 4
  %28 = icmp eq ptr %27, %22
  br i1 %28, label %68, label %29

29:                                               ; preds = %63, %25
  %30 = phi ptr [ %66, %63 ], [ %27, %25 ]
  %31 = getelementptr i8, ptr %30, i32 -28
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.dentry, ptr %32, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %33) #10
  %34 = getelementptr inbounds %struct.anon.60, ptr %33, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %63, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.dentry, ptr %32, i32 0, i32 4
  %39 = load i32, ptr %38, align 8
  %40 = icmp eq i32 %39, %19
  br i1 %40, label %41, label %63

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.dentry, ptr %32, i32 0, i32 3
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, %18
  br i1 %44, label %45, label %63

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.anon, ptr %38, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, %6
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.dentry, ptr %32, i32 0, i32 4, i32 1
  %51 = load ptr, ptr %50, align 8
  %52 = tail call i32 @bcmp(ptr %51, ptr %21, i32 %6) #10
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.dentry, ptr %32, i32 0, i32 2, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = icmp eq ptr %32, null
  br i1 %59, label %71, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.anon.60, ptr %33, i32 0, i32 1
  %62 = add nuw i32 %35, 1
  store i32 %62, ptr %61, align 4
  br label %71

63:                                               ; preds = %54, %49, %45, %41, %37, %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %64 = load i16, ptr %33, align 4
  %65 = add i16 %64, 1
  store i16 %65, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  %66 = load ptr, ptr %30, align 4
  %67 = icmp eq ptr %66, %22
  br i1 %67, label %68, label %29

68:                                               ; preds = %63, %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %69 = load i16, ptr %26, align 4
  %70 = add i16 %69, 1
  store i16 %70, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  br label %76

71:                                               ; preds = %60, %58
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %72 = load i16, ptr %33, align 4
  %73 = add i16 %72, 1
  store i16 %73, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %74 = load i16, ptr %26, align 4
  %75 = add i16 %74, 1
  store i16 %75, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  br i1 %59, label %76, label %123

76:                                               ; preds = %71, %68, %8
  %77 = getelementptr inbounds %struct.autofs_sb_info, ptr %12, i32 0, i32 8
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %76
  %82 = tail call ptr @llvm.thread.pointer() #10
  %83 = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 93
  %84 = load ptr, ptr %83, align 16
  %85 = getelementptr %struct.signal_struct, ptr %84, i32 0, i32 22, i32 2
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %struct.autofs_sb_info, ptr %12, i32 0, i32 3
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %86, %88
  br i1 %89, label %95, label %90

90:                                               ; preds = %81
  %91 = load ptr, ptr %17, align 8
  %92 = getelementptr inbounds %struct.dentry, ptr %91, i32 0, i32 3
  %93 = load ptr, ptr %92, align 8
  %94 = icmp eq ptr %91, %93
  br i1 %94, label %95, label %123

95:                                               ; preds = %90, %81, %76
  %96 = tail call ptr @autofs_new_ino(ptr noundef %12) #10
  %97 = icmp eq ptr %96, null
  br i1 %97, label %123, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.autofs_sb_info, ptr %12, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %99) #10
  %100 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %100) #10
  %101 = load ptr, ptr %17, align 8
  %102 = getelementptr inbounds %struct.dentry, ptr %101, i32 0, i32 3
  %103 = load ptr, ptr %102, align 8
  %104 = icmp eq ptr %101, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.autofs_sb_info, ptr %12, i32 0, i32 10
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i32, ptr %1, align 8
  %111 = or i32 %110, 393216
  store i32 %111, ptr %1, align 8
  br label %112

112:                                              ; preds = %109, %105, %98
  %113 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11
  store ptr %96, ptr %113, align 4
  store ptr %1, ptr %96, align 4
  %114 = getelementptr inbounds %struct.autofs_info, ptr %96, i32 0, i32 4
  %115 = getelementptr inbounds %struct.autofs_sb_info, ptr %12, i32 0, i32 17
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.list_head, ptr %116, i32 0, i32 1
  store ptr %114, ptr %117, align 4
  store ptr %116, ptr %114, align 4
  %118 = getelementptr inbounds %struct.autofs_info, ptr %96, i32 0, i32 4, i32 1
  store ptr %115, ptr %118, align 4
  store volatile ptr %114, ptr %115, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %119 = load i16, ptr %99, align 4
  %120 = add i16 %119, 1
  store i16 %120, ptr %99, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %121 = load i16, ptr %100, align 4
  %122 = add i16 %121, 1
  store i16 %122, ptr %100, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  br label %123

123:                                              ; preds = %112, %95, %90, %71, %3
  %124 = phi ptr [ null, %112 ], [ %32, %71 ], [ inttoptr (i32 -36 to ptr), %3 ], [ inttoptr (i32 -2 to ptr), %90 ], [ inttoptr (i32 -12 to ptr), %95 ]
  ret ptr %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @autofs_dir_unlink(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca %struct.timespec64, align 8
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.autofs_sb_info, ptr %7, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %59

14:                                               ; preds = %2
  %15 = tail call ptr @llvm.thread.pointer() #10
  %16 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 93
  %17 = load ptr, ptr %16, align 16
  %18 = getelementptr %struct.signal_struct, ptr %17, i32 0, i32 22, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.autofs_sb_info, ptr %7, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %23, label %59

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.autofs_info, ptr %9, i32 0, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, -1
  store i32 %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.dentry, ptr %28, i32 0, i32 11
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.autofs_info, ptr %30, i32 0, i32 8
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, -1
  store i32 %33, ptr %31, align 4
  %34 = load ptr, ptr %9, align 4
  tail call void @dput(ptr noundef %34) #10
  %35 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 13
  store i64 0, ptr %37, align 8
  %38 = load ptr, ptr %35, align 8
  tail call void @clear_nlink(ptr noundef %38) #10
  %39 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %3, ptr noundef %0) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %39, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  %40 = getelementptr inbounds %struct.autofs_sb_info, ptr %7, i32 0, i32 16
  call void @_raw_spin_lock(ptr noundef %40) #10
  %41 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.super_block, ptr %42, i32 0, i32 27
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %8, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %56, label %47

47:                                               ; preds = %23
  %48 = getelementptr inbounds %struct.autofs_info, ptr %45, i32 0, i32 5
  %49 = load volatile ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %48
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.autofs_sb_info, ptr %44, i32 0, i32 18
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  store ptr %48, ptr %54, align 4
  store ptr %53, ptr %48, align 4
  %55 = getelementptr inbounds %struct.autofs_info, ptr %45, i32 0, i32 5, i32 1
  store ptr %52, ptr %55, align 4
  store volatile ptr %48, ptr %52, align 4
  br label %56

56:                                               ; preds = %51, %47, %23
  call void @d_drop(ptr noundef %1) #10
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %57 = load i16, ptr %40, align 4
  %58 = add i16 %57, 1
  store i16 %58, ptr %40, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  br label %59

59:                                               ; preds = %56, %14, %2
  %60 = phi i32 [ 0, %56 ], [ -13, %14 ], [ -13, %2 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @autofs_dir_symlink(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) #1 {
  %5 = alloca %struct.timespec64, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @strlen(ptr noundef %3)
  %13 = getelementptr inbounds %struct.autofs_sb_info, ptr %9, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %71

17:                                               ; preds = %4
  %18 = tail call ptr @llvm.thread.pointer() #10
  %19 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 93
  %20 = load ptr, ptr %19, align 16
  %21 = getelementptr %struct.signal_struct, ptr %20, i32 0, i32 22, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.autofs_sb_info, ptr %9, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %26, label %71

26:                                               ; preds = %17
  %27 = icmp eq ptr %11, null
  br i1 %27, label %28, label %29, !prof !20

28:                                               ; preds = %26
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/autofs/root.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 552, 0\0A.popsection", ""() #10, !srcloc !21
  unreachable

29:                                               ; preds = %26
  tail call void @autofs_clean_ino(ptr noundef nonnull %11) #10
  %30 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 9
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 27
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %10, align 4
  %35 = getelementptr inbounds %struct.autofs_sb_info, ptr %33, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %35) #10
  %36 = getelementptr inbounds %struct.autofs_info, ptr %34, i32 0, i32 4
  %37 = getelementptr inbounds %struct.autofs_info, ptr %34, i32 0, i32 4, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %36, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %38, ptr %40, align 4
  store volatile ptr %39, ptr %38, align 4
  store volatile ptr %36, ptr %36, align 4
  store ptr %36, ptr %37, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %41 = load i16, ptr %35, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr %35, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  %43 = add i32 %12, 1
  %44 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %43, i32 noundef 3264) #12
  %45 = icmp eq ptr %44, null
  br i1 %45, label %71, label %46

46:                                               ; preds = %29
  %47 = tail call ptr @strcpy(ptr noundef nonnull %44, ptr noundef %3)
  %48 = load ptr, ptr %6, align 4
  %49 = tail call ptr @autofs_get_inode(ptr noundef %48, i16 noundef zeroext -24211) #10
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  tail call void @kfree(ptr noundef nonnull %44) #10
  br label %71

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.inode, ptr %49, i32 0, i32 47
  store ptr %44, ptr %53, align 4
  %54 = zext i32 %12 to i64
  %55 = getelementptr inbounds %struct.inode, ptr %49, i32 0, i32 13
  store i64 %54, ptr %55, align 8
  tail call void @d_add(ptr noundef %2, ptr noundef nonnull %49) #10
  %56 = icmp eq ptr %2, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %58) #10
  br label %59

59:                                               ; preds = %57, %52
  %60 = getelementptr inbounds %struct.autofs_info, ptr %11, i32 0, i32 8
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, 1
  store i32 %62, ptr %60, align 4
  %63 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 3
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.dentry, ptr %64, i32 0, i32 11
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.autofs_info, ptr %66, i32 0, i32 8
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, 1
  store i32 %69, ptr %67, align 4
  %70 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %5, ptr noundef %1) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %70, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  br label %71

71:                                               ; preds = %59, %51, %29, %17, %4
  %72 = phi i32 [ 0, %59 ], [ -12, %51 ], [ -13, %17 ], [ -12, %29 ], [ -13, %4 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @autofs_dir_mkdir(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #1 {
  %5 = alloca %struct.timespec64, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.autofs_sb_info, ptr %9, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %90

16:                                               ; preds = %4
  %17 = tail call ptr @llvm.thread.pointer() #10
  %18 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 93
  %19 = load ptr, ptr %18, align 16
  %20 = getelementptr %struct.signal_struct, ptr %19, i32 0, i32 22, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.autofs_sb_info, ptr %9, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %25, label %90

25:                                               ; preds = %16
  %26 = icmp eq ptr %11, null
  br i1 %26, label %27, label %28, !prof !20

27:                                               ; preds = %25
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/autofs/root.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 741, 0\0A.popsection", ""() #10, !srcloc !22
  unreachable

28:                                               ; preds = %25
  tail call void @autofs_clean_ino(ptr noundef nonnull %11) #10
  %29 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 9
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 27
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %10, align 4
  %34 = getelementptr inbounds %struct.autofs_sb_info, ptr %32, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %34) #10
  %35 = getelementptr inbounds %struct.autofs_info, ptr %33, i32 0, i32 4
  %36 = getelementptr inbounds %struct.autofs_info, ptr %33, i32 0, i32 4, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %35, align 4
  %39 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  store ptr %37, ptr %39, align 4
  store volatile ptr %38, ptr %37, align 4
  store volatile ptr %35, ptr %35, align 4
  store ptr %35, ptr %36, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %40 = load i16, ptr %34, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %34, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  %42 = load ptr, ptr %6, align 4
  %43 = or i16 %3, 16384
  %44 = tail call ptr @autofs_get_inode(ptr noundef %42, i16 noundef zeroext %43) #10
  %45 = icmp eq ptr %44, null
  br i1 %45, label %90, label %46

46:                                               ; preds = %28
  tail call void @d_add(ptr noundef %2, ptr noundef nonnull %44) #10
  %47 = getelementptr inbounds %struct.autofs_sb_info, ptr %9, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = icmp slt i32 %48, 5
  br i1 %49, label %50, label %74

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 3
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.dentry, ptr %52, i32 0, i32 3
  %54 = load ptr, ptr %53, align 8
  %55 = icmp eq ptr %52, %54
  br i1 %55, label %74, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %57) #10
  %58 = load i32, ptr %2, align 8
  %59 = or i32 %58, 393216
  store i32 %59, ptr %2, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %60 = load i16, ptr %57, align 4
  %61 = add i16 %60, 1
  store i16 %61, ptr %57, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  %62 = load ptr, ptr %51, align 8
  %63 = getelementptr inbounds %struct.dentry, ptr %62, i32 0, i32 3
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.dentry, ptr %64, i32 0, i32 3
  %66 = load ptr, ptr %65, align 8
  %67 = icmp eq ptr %64, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %56
  %69 = getelementptr inbounds %struct.dentry, ptr %62, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %69) #10
  %70 = load i32, ptr %62, align 8
  %71 = and i32 %70, -393217
  store i32 %71, ptr %62, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %72 = load i16, ptr %69, align 4
  %73 = add i16 %72, 1
  store i16 %73, ptr %69, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  br label %74

74:                                               ; preds = %68, %56, %50, %46
  %75 = icmp eq ptr %2, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %77) #10
  br label %78

78:                                               ; preds = %76, %74
  %79 = getelementptr inbounds %struct.autofs_info, ptr %11, i32 0, i32 8
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, 1
  store i32 %81, ptr %79, align 4
  %82 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 3
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds %struct.dentry, ptr %83, i32 0, i32 11
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.autofs_info, ptr %85, i32 0, i32 8
  %87 = load i32, ptr %86, align 4
  %88 = add i32 %87, 1
  store i32 %88, ptr %86, align 4
  tail call void @inc_nlink(ptr noundef %1) #10
  %89 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %5, ptr noundef %1) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %89, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  br label %90

90:                                               ; preds = %78, %28, %16, %4
  %91 = phi i32 [ 0, %78 ], [ -13, %16 ], [ -12, %28 ], [ -13, %4 ]
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @autofs_dir_rmdir(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.autofs_sb_info, ptr %6, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %98

13:                                               ; preds = %2
  %14 = tail call ptr @llvm.thread.pointer() #10
  %15 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 93
  %16 = load ptr, ptr %15, align 16
  %17 = getelementptr %struct.signal_struct, ptr %16, i32 0, i32 22, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.autofs_sb_info, ptr %6, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %22, label %98

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.autofs_info, ptr %8, i32 0, i32 8
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %98

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.autofs_sb_info, ptr %6, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %27) #10
  %28 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 27
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %7, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.autofs_info, ptr %32, i32 0, i32 5
  %36 = load volatile ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %35
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.autofs_sb_info, ptr %31, i32 0, i32 18
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  store ptr %35, ptr %41, align 4
  store ptr %40, ptr %35, align 4
  %42 = getelementptr inbounds %struct.autofs_info, ptr %32, i32 0, i32 5, i32 1
  store ptr %39, ptr %42, align 4
  store volatile ptr %35, ptr %39, align 4
  br label %43

43:                                               ; preds = %38, %34, %26
  tail call void @d_drop(ptr noundef %1) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %44 = load i16, ptr %27, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr %27, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  %46 = getelementptr inbounds %struct.autofs_sb_info, ptr %6, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = icmp slt i32 %47, 5
  br i1 %48, label %49, label %79

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 3
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.dentry, ptr %51, i32 0, i32 3
  %53 = load ptr, ptr %52, align 8
  %54 = icmp eq ptr %51, %53
  br i1 %54, label %79, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %56) #10
  %57 = load i32, ptr %1, align 8
  %58 = and i32 %57, -393217
  store i32 %58, ptr %1, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %59 = load i16, ptr %56, align 4
  %60 = add i16 %59, 1
  store i16 %60, ptr %56, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  %61 = load ptr, ptr %50, align 8
  %62 = getelementptr inbounds %struct.dentry, ptr %61, i32 0, i32 3
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.dentry, ptr %63, i32 0, i32 3
  %65 = load ptr, ptr %64, align 8
  %66 = icmp eq ptr %63, %65
  br i1 %66, label %79, label %67

67:                                               ; preds = %55
  %68 = getelementptr inbounds %struct.dentry, ptr %61, i32 0, i32 11
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.autofs_info, ptr %69, i32 0, i32 8
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.dentry, ptr %61, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %74) #10
  %75 = load i32, ptr %61, align 8
  %76 = or i32 %75, 393216
  store i32 %76, ptr %61, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %77 = load i16, ptr %74, align 4
  %78 = add i16 %77, 1
  store i16 %78, ptr %74, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  br label %79

79:                                               ; preds = %73, %67, %55, %49, %43
  %80 = load i32, ptr %23, align 4
  %81 = add i32 %80, -1
  store i32 %81, ptr %23, align 4
  %82 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 3
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds %struct.dentry, ptr %83, i32 0, i32 11
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.autofs_info, ptr %85, i32 0, i32 8
  %87 = load i32, ptr %86, align 4
  %88 = add i32 %87, -1
  store i32 %88, ptr %86, align 4
  %89 = load ptr, ptr %8, align 4
  tail call void @dput(ptr noundef %89) #10
  %90 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %91 = load ptr, ptr %90, align 8
  %92 = getelementptr inbounds %struct.inode, ptr %91, i32 0, i32 13
  store i64 0, ptr %92, align 8
  %93 = load ptr, ptr %90, align 8
  tail call void @clear_nlink(ptr noundef %93) #10
  %94 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 11
  %95 = load i32, ptr %94, align 8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %79
  tail call void @drop_nlink(ptr noundef %0) #10
  br label %98

98:                                               ; preds = %97, %79, %22, %13, %2
  %99 = phi i32 [ -13, %13 ], [ -39, %22 ], [ 0, %97 ], [ 0, %79 ], [ -13, %2 ]
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @autofs_dentry_release(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %3, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %1
  %10 = icmp eq ptr %7, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.autofs_sb_info, ptr %7, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %12) #10
  %13 = getelementptr inbounds %struct.autofs_info, ptr %3, i32 0, i32 4
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.autofs_info, ptr %3, i32 0, i32 4, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  store volatile ptr %14, ptr %18, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %17, align 4
  br label %20

20:                                               ; preds = %16, %11
  %21 = getelementptr inbounds %struct.autofs_info, ptr %3, i32 0, i32 5
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.autofs_info, ptr %3, i32 0, i32 5, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %26, ptr %27, align 4
  store volatile ptr %22, ptr %26, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %21, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %25, align 4
  br label %28

28:                                               ; preds = %24, %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %29 = load i16, ptr %12, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  br label %31

31:                                               ; preds = %28, %9
  tail call void @autofs_free_ino(ptr noundef nonnull %3) #10
  br label %32

32:                                               ; preds = %31, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @autofs_d_automount(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.autofs_sb_info, ptr %7, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %156

14:                                               ; preds = %1
  %15 = tail call ptr @llvm.thread.pointer() #10
  %16 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 93
  %17 = load ptr, ptr %16, align 16
  %18 = getelementptr %struct.signal_struct, ptr %17, i32 0, i32 22, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.autofs_sb_info, ptr %7, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %156, label %23

23:                                               ; preds = %14
  %24 = tail call fastcc i32 @do_expire_wait(ptr noundef %0, i1 noundef zeroext false)
  switch i32 %24, label %156 [
    i32 -11, label %25
    i32 0, label %25
  ]

25:                                               ; preds = %23, %23
  %26 = getelementptr inbounds %struct.autofs_sb_info, ptr %7, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %26) #10
  %27 = getelementptr inbounds %struct.autofs_info, ptr %9, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %60, label %31

31:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %32 = load i16, ptr %26, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  %34 = load ptr, ptr %2, align 4
  %35 = getelementptr inbounds %struct.dentry, ptr %34, i32 0, i32 9
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 27
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.dentry, ptr %34, i32 0, i32 11
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.autofs_info, ptr %40, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %31
  %46 = getelementptr inbounds %struct.autofs_sb_info, ptr %38, i32 0, i32 8
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %128

50:                                               ; preds = %45
  %51 = load volatile i32, ptr @jiffies, align 64
  %52 = getelementptr inbounds %struct.autofs_info, ptr %40, i32 0, i32 7
  store i32 %51, ptr %52, align 4
  br label %128

53:                                               ; preds = %31
  %54 = tail call i32 @autofs_wait(ptr noundef %38, ptr noundef %0, i32 noundef 1) #10
  %55 = load volatile i32, ptr @jiffies, align 64
  %56 = getelementptr inbounds %struct.autofs_info, ptr %40, i32 0, i32 7
  store i32 %55, ptr %56, align 4
  %57 = icmp eq i32 %54, 0
  br i1 %57, label %128, label %58

58:                                               ; preds = %53
  %59 = inttoptr i32 %54 to ptr
  br label %156

60:                                               ; preds = %25
  %61 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %62 = load ptr, ptr %61, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %60
  %65 = load i32, ptr %3, align 8
  %66 = and i32 %65, 7340032
  %67 = icmp eq i32 %66, 6291456
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %69 = load i16, ptr %26, align 4
  %70 = add i16 %69, 1
  store i16 %70, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  br label %128

71:                                               ; preds = %64, %60
  %72 = tail call zeroext i1 @path_is_mountpoint(ptr noundef %0) #10
  br i1 %72, label %125, label %73

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.autofs_sb_info, ptr %7, i32 0, i32 4
  %75 = load i32, ptr %74, align 4
  %76 = icmp sgt i32 %75, 4
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = tail call i32 @path_has_submounts(ptr noundef %0) #10
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %77
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %81 = load i16, ptr %26, align 4
  %82 = add i16 %81, 1
  store i16 %82, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  br label %128

83:                                               ; preds = %73
  %84 = tail call i32 @simple_empty(ptr noundef %3) #10
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %87 = load i16, ptr %26, align 4
  %88 = add i16 %87, 1
  store i16 %88, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  br label %128

89:                                               ; preds = %83, %77
  %90 = load i32, ptr %27, align 4
  %91 = or i32 %90, 4
  store i32 %91, ptr %27, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %92 = load i16, ptr %26, align 4
  %93 = add i16 %92, 1
  store i16 %93, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  %94 = load ptr, ptr %2, align 4
  %95 = getelementptr inbounds %struct.dentry, ptr %94, i32 0, i32 9
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.super_block, ptr %96, i32 0, i32 27
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.dentry, ptr %94, i32 0, i32 11
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.autofs_info, ptr %100, i32 0, i32 2
  %102 = load i32, ptr %101, align 4
  %103 = and i32 %102, 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %89
  %106 = tail call i32 @autofs_wait(ptr noundef %98, ptr noundef %0, i32 noundef 1) #10
  br label %112

107:                                              ; preds = %89
  %108 = getelementptr inbounds %struct.autofs_sb_info, ptr %98, i32 0, i32 8
  %109 = load i32, ptr %108, align 4
  %110 = and i32 %109, 2
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %107, %105
  %113 = phi i32 [ %106, %105 ], [ 0, %107 ]
  %114 = load volatile i32, ptr @jiffies, align 64
  %115 = getelementptr inbounds %struct.autofs_info, ptr %100, i32 0, i32 7
  store i32 %114, ptr %115, align 4
  br label %116

116:                                              ; preds = %112, %107
  %117 = phi i32 [ 0, %107 ], [ %113, %112 ]
  tail call void @_raw_spin_lock(ptr noundef %26) #10
  %118 = load i32, ptr %27, align 4
  %119 = and i32 %118, -5
  store i32 %119, ptr %27, align 4
  %120 = icmp eq i32 %117, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %116
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %122 = load i16, ptr %26, align 4
  %123 = add i16 %122, 1
  store i16 %123, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  %124 = inttoptr i32 %117 to ptr
  br label %156

125:                                              ; preds = %116, %71
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %126 = load i16, ptr %26, align 4
  %127 = add i16 %126, 1
  store i16 %127, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  br label %128

128:                                              ; preds = %125, %86, %80, %68, %53, %50, %45
  %129 = load ptr, ptr %2, align 4
  %130 = getelementptr inbounds %struct.dentry, ptr %129, i32 0, i32 9
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.super_block, ptr %131, i32 0, i32 27
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.autofs_sb_info, ptr %133, i32 0, i32 10
  %135 = load i32, ptr %134, align 4
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %153

137:                                              ; preds = %128
  %138 = getelementptr inbounds %struct.dentry, ptr %129, i32 0, i32 2, i32 1
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %153

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.dentry, ptr %129, i32 0, i32 3
  %143 = load ptr, ptr %142, align 8
  %144 = getelementptr inbounds %struct.dentry, ptr %129, i32 0, i32 4
  %145 = tail call ptr @d_lookup(ptr noundef %143, ptr noundef %144) #10
  %146 = icmp eq ptr %145, null
  br i1 %146, label %155, label %147

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.dentry, ptr %145, i32 0, i32 11
  %149 = load ptr, ptr %148, align 4
  %150 = load volatile i32, ptr @jiffies, align 64
  %151 = getelementptr inbounds %struct.autofs_info, ptr %149, i32 0, i32 7
  store i32 %150, ptr %151, align 4
  %152 = load ptr, ptr %2, align 4
  tail call void @dput(ptr noundef %152) #10
  store ptr %145, ptr %2, align 4
  br label %156

153:                                              ; preds = %137, %128
  %154 = icmp eq ptr %129, null
  br i1 %154, label %155, label %156

155:                                              ; preds = %153, %141
  br label %156

156:                                              ; preds = %155, %153, %147, %121, %58, %23, %14, %1
  %157 = phi ptr [ %59, %58 ], [ inttoptr (i32 -2 to ptr), %155 ], [ %124, %121 ], [ null, %14 ], [ null, %23 ], [ null, %153 ], [ null, %147 ], [ null, %1 ]
  ret ptr %157
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @autofs_d_manage(ptr noundef %0, i1 noundef zeroext %1) #1 {
  %3 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.autofs_sb_info, ptr %8, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = tail call ptr @llvm.thread.pointer() #10
  %17 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 93
  %18 = load ptr, ptr %17, align 16
  %19 = getelementptr %struct.signal_struct, ptr %18, i32 0, i32 22, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.autofs_sb_info, ptr %8, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %15, %2
  %25 = tail call zeroext i1 @path_is_mountpoint(ptr noundef %0) #10
  %26 = select i1 %25, i32 0, i32 -21
  br label %104

27:                                               ; preds = %15
  %28 = tail call fastcc i32 @do_expire_wait(ptr noundef %0, i1 noundef zeroext %1)
  %29 = icmp eq i32 %28, -10
  br i1 %29, label %104, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %3, align 4
  %32 = getelementptr inbounds %struct.dentry, ptr %31, i32 0, i32 9
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 27
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.dentry, ptr %31, i32 0, i32 11
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.autofs_info, ptr %37, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %30
  br i1 %1, label %104, label %51

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.autofs_sb_info, ptr %35, i32 0, i32 8
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load volatile i32, ptr @jiffies, align 64
  %50 = getelementptr inbounds %struct.autofs_info, ptr %37, i32 0, i32 7
  store i32 %49, ptr %50, align 4
  br label %56

51:                                               ; preds = %42
  %52 = tail call i32 @autofs_wait(ptr noundef %35, ptr noundef %0, i32 noundef 1) #10
  %53 = load volatile i32, ptr @jiffies, align 64
  %54 = getelementptr inbounds %struct.autofs_info, ptr %37, i32 0, i32 7
  store i32 %53, ptr %54, align 4
  %55 = icmp eq i32 %52, 0
  br i1 %55, label %80, label %104

56:                                               ; preds = %48, %43
  br i1 %1, label %57, label %80

57:                                               ; preds = %56
  %58 = getelementptr inbounds %struct.autofs_info, ptr %10, i32 0, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %104

62:                                               ; preds = %57
  %63 = tail call zeroext i1 @path_is_mountpoint(ptr noundef %0) #10
  br i1 %63, label %104, label %64

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  %66 = load volatile ptr, ptr %65, align 8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i16, ptr %66, align 8
  %70 = and i16 %69, -4096
  %71 = icmp eq i16 %70, -24576
  br i1 %71, label %104, label %72

72:                                               ; preds = %68, %64
  %73 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 14
  %74 = load volatile ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, %73
  br i1 %75, label %104, label %76

76:                                               ; preds = %72
  %77 = tail call i32 @simple_empty(ptr noundef %4) #10
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %78, i32 -21, i32 0
  br label %104

80:                                               ; preds = %56, %51
  %81 = getelementptr inbounds %struct.autofs_sb_info, ptr %8, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %81) #10
  %82 = getelementptr inbounds %struct.autofs_info, ptr %10, i32 0, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %80
  %87 = tail call zeroext i1 @path_is_mountpoint(ptr noundef %0) #10
  br i1 %87, label %91, label %88

88:                                               ; preds = %86
  %89 = tail call i32 @simple_empty(ptr noundef %4) #10
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %88, %86
  %92 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  %93 = load ptr, ptr %92, align 8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %91
  %96 = load i32, ptr %4, align 8
  %97 = and i32 %96, 7340032
  %98 = icmp eq i32 %97, 6291456
  br i1 %98, label %99, label %100

99:                                               ; preds = %95, %88
  br label %100

100:                                              ; preds = %99, %95, %91, %80
  %101 = phi i32 [ 0, %80 ], [ -21, %99 ], [ 0, %95 ], [ 0, %91 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %102 = load i16, ptr %81, align 4
  %103 = add i16 %102, 1
  store i16 %103, ptr %81, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  br label %104

104:                                              ; preds = %100, %76, %72, %68, %62, %57, %51, %42, %27, %24
  %105 = phi i32 [ %101, %100 ], [ %26, %24 ], [ -10, %27 ], [ %52, %51 ], [ 0, %57 ], [ 0, %62 ], [ -21, %68 ], [ 0, %72 ], [ %79, %76 ], [ -10, %42 ]
  ret i32 %105
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @is_autofs_dentry(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, @autofs_dentry_operations
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp ne ptr %13, null
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %11, %7, %3, %1
  %17 = phi i32 [ 0, %7 ], [ 0, %3 ], [ 0, %1 ], [ %15, %11 ]
  ret i32 %17
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @path_is_mountpoint(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_empty(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @autofs_free_ino(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_expire_wait(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #1 {
  %3 = alloca %struct.path, align 8
  %4 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 4
  %13 = getelementptr inbounds %struct.anon, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %12, align 8
  %16 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 4, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.autofs_sb_info, ptr %9, i32 0, i32 18
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %82, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.autofs_sb_info, ptr %9, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %22) #10
  %23 = load ptr, ptr %18, align 4
  %24 = icmp eq ptr %23, %18
  br i1 %24, label %69, label %25

25:                                               ; preds = %21
  br i1 %1, label %34, label %26

26:                                               ; preds = %64, %25
  %27 = phi ptr [ %67, %64 ], [ %23, %25 ]
  %28 = getelementptr i8, ptr %27, i32 -36
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.dentry, ptr %29, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %30) #10
  %31 = getelementptr inbounds %struct.dentry, ptr %29, i32 0, i32 5
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %64, label %37

34:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %35 = load i16, ptr %22, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %22, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  br label %78

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.dentry, ptr %29, i32 0, i32 4
  %39 = load i32, ptr %38, align 8
  %40 = icmp eq i32 %39, %15
  br i1 %40, label %41, label %64

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.dentry, ptr %29, i32 0, i32 3
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, %11
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.anon, ptr %38, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, %14
  br i1 %48, label %49, label %64

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.dentry, ptr %29, i32 0, i32 4, i32 1
  %51 = load ptr, ptr %50, align 8
  %52 = tail call i32 @bcmp(ptr %51, ptr %17, i32 %14) #10
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.dentry, ptr %29, i32 0, i32 2, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = icmp eq ptr %29, null
  br i1 %59, label %72, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.anon.60, ptr %30, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, 1
  store i32 %63, ptr %61, align 4
  br label %72

64:                                               ; preds = %54, %49, %45, %41, %37, %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %65 = load i16, ptr %30, align 4
  %66 = add i16 %65, 1
  store i16 %66, ptr %30, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  %67 = load ptr, ptr %27, align 4
  %68 = icmp eq ptr %67, %18
  br i1 %68, label %69, label %26

69:                                               ; preds = %64, %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %70 = load i16, ptr %22, align 4
  %71 = add i16 %70, 1
  store i16 %71, ptr %22, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  br label %82

72:                                               ; preds = %60, %58
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %73 = load i16, ptr %30, align 4
  %74 = add i16 %73, 1
  store i16 %74, ptr %30, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %75 = load i16, ptr %22, align 4
  %76 = add i16 %75, 1
  store i16 %76, ptr %22, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  %77 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %77, label %78, label %81

78:                                               ; preds = %72, %34
  %79 = phi ptr [ inttoptr (i32 -10 to ptr), %34 ], [ %29, %72 ]
  %80 = ptrtoint ptr %79 to i32
  br label %109

81:                                               ; preds = %72
  br i1 %59, label %82, label %85

82:                                               ; preds = %81, %69, %2
  %83 = zext i1 %1 to i32
  %84 = tail call i32 @autofs_expire_wait(ptr noundef %0, i32 noundef %83) #10
  br label %109

85:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %86 = load ptr, ptr %0, align 4
  store ptr %86, ptr %3, align 8
  %87 = getelementptr inbounds %struct.path, ptr %3, i32 0, i32 1
  store ptr %29, ptr %87, align 4
  %88 = call i32 @autofs_expire_wait(ptr noundef nonnull %3, i32 noundef 0) #10
  %89 = getelementptr inbounds %struct.dentry, ptr %29, i32 0, i32 11
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %108, label %92

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.dentry, ptr %29, i32 0, i32 9
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.super_block, ptr %94, i32 0, i32 27
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.autofs_sb_info, ptr %96, i32 0, i32 16
  call void @_raw_spin_lock(ptr noundef %97) #10
  %98 = getelementptr inbounds %struct.autofs_info, ptr %90, i32 0, i32 5
  %99 = load volatile ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, %98
  br i1 %100, label %105, label %101

101:                                              ; preds = %92
  %102 = getelementptr inbounds %struct.autofs_info, ptr %90, i32 0, i32 5, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  store ptr %103, ptr %104, align 4
  store volatile ptr %99, ptr %103, align 4
  store volatile ptr %98, ptr %98, align 4
  store ptr %98, ptr %102, align 4
  br label %105

105:                                              ; preds = %101, %92
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %106 = load i16, ptr %97, align 4
  %107 = add i16 %106, 1
  store i16 %107, ptr %97, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  br label %108

108:                                              ; preds = %105, %85
  call void @dput(ptr noundef nonnull %29) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %109

109:                                              ; preds = %108, %82, %78
  %110 = phi i32 [ %80, %78 ], [ 0, %108 ], [ %84, %82 ]
  ret i32 %110
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @path_has_submounts(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autofs_expire_wait(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autofs_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_lookup(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @autofs_new_ino(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @autofs_clean_ino(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @autofs_get_inode(ptr noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_add(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_drop(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autofs_wait_release(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @autofs_catatonic_mode(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autofs_expire_run(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autofs_expire_multi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @may_umount(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind allocsize(0) }

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
!8 = !{i64 3578228}
!9 = !{i64 3578425}
!10 = !{i64 2151063704}
!11 = !{i64 2151675738, i64 2151676018, i64 2151676352, i64 2151676686}
!12 = !{i64 2151684038, i64 2151684318, i64 2151684652, i64 2151684986}
!13 = !{i64 2151658482, i64 2151658762, i64 2151659096, i64 2151659430}
!14 = !{i64 2151667411, i64 2151667691, i64 2151668025, i64 2151668359}
!15 = !{i64 2151693089, i64 2151693369, i64 2151693703, i64 2151694037}
!16 = !{i64 2148953249}
!17 = !{i64 2148949073}
!18 = !{i64 2148949148, i64 2148949175, i64 2148949222, i64 2148949244, i64 2148949272, i64 2148949292}
!19 = !{i64 2148976252}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 2151646026, i64 2151646507, i64 2151646063, i64 2151646119, i64 2151646153, i64 2151646177, i64 2151646218, i64 2151646239, i64 2151646267, i64 2151646301}
!22 = !{i64 2151649208, i64 2151649689, i64 2151649245, i64 2151649301, i64 2151649335, i64 2151649359, i64 2151649400, i64 2151649421, i64 2151649449, i64 2151649483}
