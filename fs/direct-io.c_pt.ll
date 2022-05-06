; ModuleID = '/llk/IR/fs/direct-io.c_pt.bc'
source_filename = "../fs/direct-io.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___blockdev_direct_IO:\09\09\09\09\09"
module asm "\09.asciz \09\22__blockdev_direct_IO\22\09\09\09\09\09"
module asm "__kstrtabns___blockdev_direct_IO:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.dio_submit = type { ptr, i32, i32, i32, i32, i64, i32, i32, i64, i32, ptr, ptr, i64, i64, i64, ptr, i32, i32, i64, i64, ptr, i32, i32, i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.lockdep_map = type {}
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.37, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.38, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.39, ptr, %struct.address_space, %struct.list_head, %union.anon.40, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.37 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%union.anon.38 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.39 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.40 = type { ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.21, %union.anon.22 }
%union.anon.21 = type { ptr }
%union.anon.22 = type { i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.dio = type { i32, i32, i32, ptr, ptr, i64, ptr, ptr, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, i32, %union.anon.71, [48 x i8] }
%union.anon.71 = type { [64 x ptr] }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.file = type { %union.anon.0, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.page = type { i32, %union.anon.3, %union.anon.18, %struct.atomic_t }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.18 = type { %struct.atomic_t }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, %union.anon.46, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%union.anon.46 = type {}
%struct.bio_vec = type { ptr, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.67, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.47 }
%struct.llist_node = type { ptr }
%union.anon.47 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.48 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.67 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = private unnamed_addr constant [7 x i8] c"dio/%s\00", align 1
@__kstrtab___blockdev_direct_IO = external dso_local constant [0 x i8], align 1
@__kstrtabns___blockdev_direct_IO = external dso_local constant [0 x i8], align 1
@__ksymtab___blockdev_direct_IO = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__blockdev_direct_IO to i32), ptr @__kstrtab___blockdev_direct_IO, ptr @__kstrtabns___blockdev_direct_IO }, section "___ksymtab+__blockdev_direct_IO", align 4
@__initcall__kmod_direct_io__263_1373_dio_init6 = internal global ptr @dio_init, section ".initcall6.init", align 4
@dio_cache = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@empty_zero_page = external dso_local local_unnamed_addr global ptr, align 4
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"dio\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_direct_io__263_1373_dio_init6, ptr @__ksymtab___blockdev_direct_IO], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sb_init_dio_done_wq(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 33
  %3 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 8, i32 noundef 0, ptr noundef %2) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 45
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %7 = ptrtoint ptr %3 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #8, !srcloc !9
  br label %8

8:                                                ; preds = %8, %5
  %9 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %6, i32 0, i32 %7) #8, !srcloc !10
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %8

12:                                               ; preds = %8
  %13 = extractvalue { i32, i32 } %9, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @destroy_workqueue(ptr noundef nonnull %3) #8
  br label %16

16:                                               ; preds = %15, %12, %1
  %17 = phi i32 [ -12, %1 ], [ 0, %15 ], [ 0, %12 ]
  ret i32 %17
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__blockdev_direct_IO(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) #0 {
  %9 = alloca %struct.dio_submit, align 8
  %10 = alloca %struct.buffer_head, align 8
  %11 = alloca %struct.blk_plug, align 4
  %12 = getelementptr inbounds %struct.block_device, ptr %2, i32 0, i32 17
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.gendisk, ptr %13, i32 0, i32 6
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %14) #8, !srcloc !12
  %15 = load ptr, ptr %12, align 8
  %16 = getelementptr inbounds %struct.gendisk, ptr %15, i32 0, i32 9
  %17 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %17) #8, !srcloc !12
  %18 = load ptr, ptr %12, align 8
  %19 = getelementptr inbounds %struct.gendisk, ptr %18, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 64
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %21) #8, !srcloc !12
  %22 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 19
  %23 = load volatile i8, ptr %22, align 2
  %24 = zext i8 %23 to i32
  %25 = shl nsw i32 -1, %24
  %26 = xor i32 %25, -1
  %27 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 4
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %30 = load i64, ptr %29, align 8
  %31 = zext i32 %28 to i64
  %32 = add i64 %30, %31
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %9) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(144) %9, i8 0, i32 144, i1 false) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %10, i8 0, i32 64, i1 false) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 24, i1 false) #8, !annotation !13
  %33 = tail call i32 @iov_iter_alignment(ptr noundef %3) #8
  %34 = trunc i64 %30 to i32
  %35 = or i32 %33, %34
  %36 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 2
  %37 = load i8, ptr %36, align 2, !range !14
  %38 = icmp ne i8 %37, 0
  %39 = icmp ne i32 %28, 0
  %40 = select i1 %38, i1 true, i1 %39
  br i1 %40, label %41, label %923

41:                                               ; preds = %8
  %42 = load ptr, ptr @dio_cache, align 4
  %43 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %42, i32 noundef 3264) #8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %923, label %45

45:                                               ; preds = %41
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(80) %43, i8 0, i32 80, i1 false) #8
  store i32 %7, ptr %43, align 64
  %46 = and i32 %7, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = load i8, ptr %36, align 2, !range !14
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 24
  tail call void @down_write(ptr noundef %52) #8
  br label %53

53:                                               ; preds = %51, %48, %45
  %54 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 22
  %55 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  br label %56

56:                                               ; preds = %64, %53
  %57 = load volatile i32, ptr %54, align 4
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %60, %56
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !16
  %61 = load volatile i32, ptr %54, align 4
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %60

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %57, %56 ], [ %61, %60 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !17
  %66 = load i64, ptr %55, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !18
  %67 = load volatile i32, ptr %54, align 4
  %68 = icmp eq i32 %67, %65
  br i1 %68, label %69, label %56

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.dio, ptr %43, i32 0, i32 5
  store i64 %66, ptr %70, align 8
  %71 = load i8, ptr %36, align 2, !range !14
  %72 = icmp ne i8 %71, 0
  %73 = icmp slt i64 %30, %66
  %74 = select i1 %72, i1 true, i1 %73
  br i1 %74, label %75, label %911

75:                                               ; preds = %69
  %76 = and i32 %35, %26
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %102, label %78

78:                                               ; preds = %75
  %79 = icmp eq ptr %2, null
  br i1 %79, label %911, label %80

80:                                               ; preds = %78
  %81 = getelementptr inbounds %struct.block_device, ptr %2, i32 0, i32 18
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.request_queue, ptr %82, i32 0, i32 32, i32 9
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, i32 512, i32 %86
  br label %89

89:                                               ; preds = %84, %80
  %90 = phi i32 [ %88, %84 ], [ 512, %80 ]
  br label %91

91:                                               ; preds = %91, %89
  %92 = phi i32 [ %95, %91 ], [ %90, %89 ]
  %93 = phi i32 [ %94, %91 ], [ 8, %89 ]
  %94 = add nuw nsw i32 %93, 1
  %95 = lshr i32 %92, 1
  %96 = icmp ugt i32 %92, 513
  br i1 %96, label %91, label %97

97:                                               ; preds = %91
  %98 = shl i32 -2, %93
  %99 = xor i32 %98, -1
  %100 = and i32 %35, %99
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %911

102:                                              ; preds = %97, %75
  %103 = phi i32 [ %94, %97 ], [ %24, %75 ]
  %104 = load i32, ptr %43, align 64
  %105 = and i32 %104, 1
  %106 = icmp eq i32 %105, 0
  %107 = select i1 %106, i1 true, i1 %72
  br i1 %107, label %115, label %108

108:                                              ; preds = %102
  %109 = load ptr, ptr %0, align 8
  %110 = getelementptr inbounds %struct.file, ptr %109, i32 0, i32 17
  %111 = load ptr, ptr %110, align 8
  %112 = add i64 %32, -1
  %113 = tail call i32 @filemap_write_and_wait_range(ptr noundef %111, i64 noundef %30, i64 noundef %112) #8
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %911

115:                                              ; preds = %108, %102
  %116 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 2
  %117 = load ptr, ptr %116, align 8
  %118 = icmp eq ptr %117, null
  br i1 %118, label %138, label %119

119:                                              ; preds = %115
  %120 = load i8, ptr %36, align 2, !range !14
  %121 = icmp eq i8 %120, 1
  br i1 %121, label %122, label %137

122:                                              ; preds = %130, %119
  %123 = load volatile i32, ptr %54, align 4
  %124 = and i32 %123, 1
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %126, %122
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !16
  %127 = load volatile i32, ptr %54, align 4
  %128 = and i32 %127, 1
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %126

130:                                              ; preds = %126, %122
  %131 = phi i32 [ %123, %122 ], [ %127, %126 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !17
  %132 = load i64, ptr %55, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !18
  %133 = load volatile i32, ptr %54, align 4
  %134 = icmp eq i32 %133, %131
  br i1 %134, label %135, label %122

135:                                              ; preds = %130
  %136 = icmp sgt i64 %32, %132
  br i1 %136, label %138, label %137

137:                                              ; preds = %135, %119
  br label %138

138:                                              ; preds = %137, %135, %115
  %139 = phi i32 [ 1, %137 ], [ 0, %115 ], [ 0, %135 ]
  %140 = phi i1 [ false, %137 ], [ true, %115 ], [ true, %135 ]
  %141 = getelementptr inbounds %struct.dio, ptr %43, i32 0, i32 10
  store i32 %139, ptr %141, align 16
  %142 = getelementptr inbounds %struct.dio, ptr %43, i32 0, i32 4
  store ptr %1, ptr %142, align 16
  %143 = load i8, ptr %36, align 2, !range !14
  %144 = icmp eq i8 %143, 1
  %145 = getelementptr inbounds %struct.dio, ptr %43, i32 0, i32 1
  br i1 %144, label %146, label %153

146:                                              ; preds = %138
  store i32 1, ptr %145, align 4
  %147 = getelementptr inbounds %struct.dio, ptr %43, i32 0, i32 2
  %148 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 4
  %149 = load i32, ptr %148, align 8
  %150 = and i32 %149, 8
  %151 = icmp eq i32 %150, 0
  %152 = select i1 %151, i32 34816, i32 2131968
  store i32 %152, ptr %147, align 8
  br i1 %140, label %199, label %154

153:                                              ; preds = %138
  store i32 0, ptr %145, align 4
  br label %199

154:                                              ; preds = %146
  %155 = and i32 %149, 2
  %156 = icmp eq i32 %155, 0
  %157 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %158 = load ptr, ptr %157, align 4
  br i1 %156, label %181, label %159

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.dio, ptr %43, i32 0, i32 11
  %161 = load i8, ptr %160, align 4, !range !14
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %163, label %199

163:                                              ; preds = %159
  store i8 1, ptr %160, align 4
  %164 = getelementptr inbounds %struct.super_block, ptr %158, i32 0, i32 45
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %199

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.super_block, ptr %158, i32 0, i32 33
  %169 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 8, i32 noundef 0, ptr noundef %168) #8
  %170 = icmp eq ptr %169, null
  br i1 %170, label %911, label %171

171:                                              ; preds = %167
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %172 = ptrtoint ptr %169 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %164) #8, !srcloc !9
  br label %173

173:                                              ; preds = %173, %171
  %174 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %164, i32 0, i32 %172) #8, !srcloc !10
  %175 = extractvalue { i32, i32 } %174, 0
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %173

177:                                              ; preds = %173
  %178 = extractvalue { i32, i32 } %174, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %199, label %180

180:                                              ; preds = %177
  tail call void @destroy_workqueue(ptr noundef nonnull %169) #8
  br label %199

181:                                              ; preds = %154
  %182 = getelementptr inbounds %struct.super_block, ptr %158, i32 0, i32 45
  %183 = load ptr, ptr %182, align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %199

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.super_block, ptr %158, i32 0, i32 33
  %187 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 8, i32 noundef 0, ptr noundef %186) #8
  %188 = icmp eq ptr %187, null
  br i1 %188, label %911, label %189

189:                                              ; preds = %185
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %190 = ptrtoint ptr %187 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %182) #8, !srcloc !9
  br label %191

191:                                              ; preds = %191, %189
  %192 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %182, i32 0, i32 %190) #8, !srcloc !10
  %193 = extractvalue { i32, i32 } %192, 0
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %191

195:                                              ; preds = %191
  %196 = extractvalue { i32, i32 } %192, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %195
  tail call void @destroy_workqueue(ptr noundef nonnull %187) #8
  br label %199

199:                                              ; preds = %198, %195, %181, %180, %177, %163, %159, %153, %146
  %200 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 36
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %200) #8, !srcloc !9
  %201 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %200, ptr %200, i32 1, ptr elementtype(i32) %200) #8, !srcloc !19
  %202 = getelementptr inbounds %struct.dio_submit, ptr %9, i32 0, i32 1
  store i32 %103, ptr %202, align 4
  %203 = sub i32 %24, %103
  %204 = getelementptr inbounds %struct.dio_submit, ptr %9, i32 0, i32 2
  store i32 %203, ptr %204, align 8
  %205 = zext i32 %103 to i64
  %206 = ashr i64 %30, %205
  %207 = getelementptr inbounds %struct.dio_submit, ptr %9, i32 0, i32 5
  store i64 %206, ptr %207, align 8
  %208 = getelementptr inbounds %struct.dio_submit, ptr %9, i32 0, i32 10
  store ptr %4, ptr %208, align 4
  %209 = getelementptr inbounds %struct.dio, ptr %43, i32 0, i32 6
  store ptr %5, ptr %209, align 32
  %210 = getelementptr inbounds %struct.dio_submit, ptr %9, i32 0, i32 11
  store ptr %6, ptr %210, align 8
  %211 = getelementptr inbounds %struct.dio_submit, ptr %9, i32 0, i32 13
  %212 = getelementptr inbounds %struct.dio_submit, ptr %9, i32 0, i32 14
  %213 = getelementptr inbounds %struct.dio, ptr %43, i32 0, i32 17
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %211, i8 -1, i64 16, i1 false) #8
  store ptr %0, ptr %213, align 8
  %214 = getelementptr inbounds %struct.dio, ptr %43, i32 0, i32 8
  store i32 0, ptr %214, align 8
  %215 = getelementptr inbounds %struct.dio, ptr %43, i32 0, i32 14
  store i32 1, ptr %215, align 4
  %216 = load i8, ptr %3, align 8
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %199
  %219 = load i8, ptr %36, align 2, !range !14
  %220 = icmp eq i8 %219, 0
  br label %221

221:                                              ; preds = %218, %199
  %222 = phi i1 [ false, %199 ], [ %220, %218 ]
  %223 = getelementptr inbounds %struct.dio, ptr %43, i32 0, i32 12
  %224 = zext i1 %222 to i8
  store i8 %224, ptr %223, align 1
  %225 = getelementptr inbounds %struct.dio_submit, ptr %9, i32 0, i32 20
  store ptr %3, ptr %225, align 8
  %226 = ashr i64 %32, %205
  %227 = getelementptr inbounds %struct.dio_submit, ptr %9, i32 0, i32 8
  store i64 %226, ptr %227, align 8
  %228 = icmp eq i32 %103, %24
  br i1 %228, label %230, label %229, !prof !20

229:                                              ; preds = %221
  br label %230

230:                                              ; preds = %229, %221
  %231 = phi i32 [ 2, %229 ], [ 0, %221 ]
  %232 = tail call i32 @iov_iter_npages(ptr noundef %3, i32 noundef 2147483647) #8
  %233 = getelementptr inbounds %struct.dio_submit, ptr %9, i32 0, i32 4
  %234 = add i32 %232, %231
  store i32 %234, ptr %233, align 8
  call void @blk_start_plug(ptr noundef nonnull %11) #8
  %235 = load i32, ptr %202, align 4
  %236 = load i32, ptr %204, align 8
  %237 = add i32 %236, %235
  %238 = load i64, ptr %207, align 8
  %239 = load i64, ptr %227, align 8
  %240 = icmp ult i64 %238, %239
  br i1 %240, label %241, label %690

241:                                              ; preds = %230
  %242 = getelementptr inbounds %struct.dio_submit, ptr %9, i32 0, i32 22
  %243 = getelementptr inbounds %struct.dio_submit, ptr %9, i32 0, i32 21
  %244 = getelementptr inbounds %struct.dio, ptr %43, i32 0, i32 19
  %245 = getelementptr inbounds %struct.dio_submit, ptr %9, i32 0, i32 23
  %246 = getelementptr inbounds %struct.dio_submit, ptr %9, i32 0, i32 24
  %247 = getelementptr inbounds %struct.dio_submit, ptr %9, i32 0, i32 6
  %248 = getelementptr inbounds %struct.dio, ptr %43, i32 0, i32 9
  %249 = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 4
  %250 = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 8
  %251 = getelementptr inbounds %struct.dio, ptr %43, i32 0, i32 7
  %252 = getelementptr inbounds %struct.dio, ptr %43, i32 0, i32 11
  %253 = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 3
  %254 = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 6
  %255 = getelementptr inbounds %struct.dio_submit, ptr %9, i32 0, i32 3
  %256 = getelementptr inbounds %struct.dio_submit, ptr %9, i32 0, i32 9
  %257 = getelementptr inbounds %struct.dio, ptr %43, i32 0, i32 18
  %258 = shl nuw i32 1, %235
  %259 = sext i32 %258 to i64
  %260 = add nsw i64 %259, -1
  %261 = sub nsw i64 0, %259
  %262 = zext i32 %235 to i64
  br label %263

263:                                              ; preds = %648, %241
  %264 = load i32, ptr %242, align 8
  %265 = load i32, ptr %243, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %267, label %308

267:                                              ; preds = %263
  %268 = load ptr, ptr %225, align 8
  %269 = call i32 @iov_iter_get_pages(ptr noundef %268, ptr noundef %244, i32 noundef 2147483647, i32 noundef 64, ptr noundef %245) #8
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %271, label %296

271:                                              ; preds = %267
  %272 = load i32, ptr %247, align 8
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %306, label %274

274:                                              ; preds = %271
  %275 = load i32, ptr %145, align 4
  %276 = icmp eq i32 %275, 1
  br i1 %276, label %277, label %306

277:                                              ; preds = %274
  %278 = load ptr, ptr @empty_zero_page, align 4
  %279 = load i32, ptr %248, align 4
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %277
  store i32 %269, ptr %248, align 4
  br label %282

282:                                              ; preds = %281, %277
  %283 = getelementptr inbounds %struct.page, ptr %278, i32 0, i32 1
  %284 = load volatile i32, ptr %283, align 4
  %285 = and i32 %284, 1
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %289, label %287, !prof !20

287:                                              ; preds = %282
  %288 = add i32 %284, -1
  br label %291

289:                                              ; preds = %282
  %290 = ptrtoint ptr %278 to i32
  br label %291

291:                                              ; preds = %289, %287
  %292 = phi i32 [ %288, %287 ], [ %290, %289 ]
  %293 = inttoptr i32 %292 to ptr
  %294 = getelementptr inbounds %struct.page, ptr %293, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %294) #8, !srcloc !9
  %295 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %294, ptr %294, i32 1, ptr elementtype(i32) %294) #8, !srcloc !19
  store ptr %278, ptr %244, align 16
  store i32 0, ptr %243, align 4
  store i32 1, ptr %242, align 8
  store i32 0, ptr %245, align 4
  store i32 4096, ptr %246, align 8
  br label %308

296:                                              ; preds = %267
  %297 = load ptr, ptr %225, align 8
  call void @iov_iter_advance(ptr noundef %297, i32 noundef %269) #8
  %298 = load i32, ptr %245, align 4
  store i32 0, ptr %243, align 4
  %299 = add nuw i32 %269, 4095
  %300 = add i32 %299, %298
  %301 = lshr i32 %300, 12
  store i32 %301, ptr %242, align 8
  %302 = and i32 %300, 4095
  %303 = add nuw nsw i32 %302, 1
  %304 = icmp ult i32 %300, 4096
  store i32 %303, ptr %246, align 8
  br i1 %304, label %305, label %308, !prof !21

305:                                              ; preds = %296
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/direct-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 219, 0\0A.popsection", ""() #8, !srcloc !22
  unreachable

306:                                              ; preds = %274, %271
  %307 = inttoptr i32 %269 to ptr
  br label %312

308:                                              ; preds = %296, %291, %263
  %309 = phi i32 [ 0, %296 ], [ %265, %263 ], [ 0, %291 ]
  %310 = getelementptr [64 x ptr], ptr %244, i32 0, i32 %309
  %311 = load ptr, ptr %310, align 4
  br label %312

312:                                              ; preds = %308, %306
  %313 = phi ptr [ %307, %306 ], [ %311, %308 ]
  %314 = icmp ugt ptr %313, inttoptr (i32 -4096 to ptr)
  br i1 %314, label %652, label %315

315:                                              ; preds = %312
  %316 = load i32, ptr %243, align 4
  %317 = icmp eq i32 %316, 0
  %318 = load i32, ptr %245, align 4
  %319 = select i1 %317, i32 %318, i32 0
  %320 = load i32, ptr %242, align 8
  %321 = add i32 %320, -1
  %322 = icmp eq i32 %316, %321
  %323 = load i32, ptr %246, align 8
  %324 = select i1 %322, i32 %323, i32 4096
  %325 = add i32 %316, 1
  store i32 %325, ptr %243, align 4
  br label %326

326:                                              ; preds = %629, %315
  %327 = phi i32 [ %319, %315 ], [ %625, %629 ]
  %328 = icmp ugt i32 %324, %327
  br i1 %328, label %329, label %631

329:                                              ; preds = %326
  %330 = load i32, ptr %247, align 8
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %474

332:                                              ; preds = %329
  %333 = load i32, ptr %202, align 4
  %334 = load i32, ptr %204, align 8
  %335 = add i32 %334, %333
  %336 = load i32, ptr %248, align 4
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %418

338:                                              ; preds = %332
  %339 = load i64, ptr %207, align 8
  %340 = load i64, ptr %227, align 8
  %341 = icmp ult i64 %339, %340
  br i1 %341, label %343, label %342, !prof !20

342:                                              ; preds = %338
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/direct-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 642, 0\0A.popsection", ""() #8, !srcloc !23
  unreachable

343:                                              ; preds = %338
  %344 = zext i32 %334 to i64
  %345 = lshr i64 %339, %344
  %346 = add i64 %340, -1
  %347 = lshr i64 %346, %344
  %348 = sub i64 %347, %345
  %349 = trunc i64 %348 to i32
  %350 = add i32 %349, 1
  store i32 0, ptr %10, align 8
  %351 = shl i32 %350, %335
  store i32 %351, ptr %249, align 8
  %352 = load i32, ptr %145, align 4
  %353 = icmp eq i32 %352, 1
  %354 = load i32, ptr %43, align 64
  %355 = and i32 %354, 2
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %382, label %357

357:                                              ; preds = %343
  %358 = load ptr, ptr %142, align 16
  %359 = getelementptr inbounds %struct.inode, ptr %358, i32 0, i32 22
  %360 = getelementptr inbounds %struct.inode, ptr %358, i32 0, i32 13
  br label %361

361:                                              ; preds = %369, %357
  %362 = load volatile i32, ptr %359, align 4
  %363 = and i32 %362, 1
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %369, label %365

365:                                              ; preds = %365, %361
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !16
  %366 = load volatile i32, ptr %359, align 4
  %367 = and i32 %366, 1
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %369, label %365

369:                                              ; preds = %365, %361
  %370 = phi i32 [ %362, %361 ], [ %366, %365 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !17
  %371 = load i64, ptr %360, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !18
  %372 = load volatile i32, ptr %359, align 4
  %373 = icmp eq i32 %372, %370
  br i1 %373, label %374, label %361

374:                                              ; preds = %369
  %375 = icmp eq i64 %371, 0
  br i1 %375, label %382, label %376

376:                                              ; preds = %374
  %377 = add i64 %371, -1
  %378 = zext i32 %335 to i64
  %379 = ashr i64 %377, %378
  %380 = icmp ugt i64 %345, %379
  %381 = select i1 %380, i1 %353, i1 false
  br label %382

382:                                              ; preds = %376, %374, %343
  %383 = phi i1 [ %353, %374 ], [ %353, %343 ], [ %381, %376 ]
  %384 = zext i1 %383 to i32
  %385 = load ptr, ptr %208, align 4
  %386 = load ptr, ptr %142, align 16
  %387 = call i32 %385(ptr noundef %386, i64 noundef %345, ptr noundef nonnull %10, i32 noundef %384) #8
  %388 = load ptr, ptr %250, align 8
  store ptr %388, ptr %251, align 4
  %389 = icmp eq i32 %387, 0
  br i1 %389, label %390, label %418

390:                                              ; preds = %382
  %391 = load volatile i32, ptr %10, align 8
  %392 = and i32 %391, 32768
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %436, label %394

394:                                              ; preds = %390
  %395 = load ptr, ptr %142, align 16
  %396 = getelementptr inbounds %struct.inode, ptr %395, i32 0, i32 8
  %397 = load ptr, ptr %396, align 4
  %398 = load i8, ptr %252, align 4, !range !14
  %399 = icmp eq i8 %398, 0
  br i1 %399, label %400, label %436

400:                                              ; preds = %394
  store i8 1, ptr %252, align 4
  %401 = getelementptr inbounds %struct.super_block, ptr %397, i32 0, i32 45
  %402 = load ptr, ptr %401, align 4
  %403 = icmp eq ptr %402, null
  br i1 %403, label %404, label %436

404:                                              ; preds = %400
  %405 = getelementptr inbounds %struct.super_block, ptr %397, i32 0, i32 33
  %406 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 8, i32 noundef 0, ptr noundef %405) #8
  %407 = icmp eq ptr %406, null
  br i1 %407, label %418, label %408

408:                                              ; preds = %404
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %409 = ptrtoint ptr %406 to i32
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %401) #8, !srcloc !9
  br label %410

410:                                              ; preds = %410, %408
  %411 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %401, i32 0, i32 %409) #8, !srcloc !10
  %412 = extractvalue { i32, i32 } %411, 0
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %414, label %410

414:                                              ; preds = %410
  %415 = extractvalue { i32, i32 } %411, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %436, label %417

417:                                              ; preds = %414
  call void @destroy_workqueue(ptr noundef nonnull %406) #8
  br label %436

418:                                              ; preds = %404, %382, %332
  %419 = phi i32 [ %387, %382 ], [ %336, %332 ], [ -12, %404 ]
  %420 = getelementptr inbounds %struct.page, ptr %313, i32 0, i32 1
  %421 = load volatile i32, ptr %420, align 4
  %422 = and i32 %421, 1
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %426, label %424, !prof !20

424:                                              ; preds = %418
  %425 = add i32 %421, -1
  br label %428

426:                                              ; preds = %418
  %427 = ptrtoint ptr %313 to i32
  br label %428

428:                                              ; preds = %426, %424
  %429 = phi i32 [ %425, %424 ], [ %427, %426 ]
  %430 = inttoptr i32 %429 to ptr
  %431 = getelementptr inbounds %struct.page, ptr %430, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !24
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %431) #8, !srcloc !9
  %432 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %431, ptr %431, i32 1, ptr elementtype(i32) %431) #8, !srcloc !25
  %433 = extractvalue { i32, i32 } %432, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !26
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %654

435:                                              ; preds = %428
  call void @__put_page(ptr noundef %430) #8
  br label %654

436:                                              ; preds = %417, %414, %400, %394, %390
  %437 = load volatile i32, ptr %10, align 8
  %438 = and i32 %437, 16
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %474, label %440

440:                                              ; preds = %436
  %441 = load i32, ptr %249, align 8
  %442 = lshr i32 %441, %235
  store i32 %442, ptr %247, align 8
  %443 = load i64, ptr %253, align 8
  %444 = load i32, ptr %204, align 8
  %445 = zext i32 %444 to i64
  %446 = shl i64 %443, %445
  store i64 %446, ptr %212, align 8
  %447 = load volatile i32, ptr %10, align 8
  %448 = and i32 %447, 32
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %455, label %450

450:                                              ; preds = %440
  %451 = load ptr, ptr %254, align 8
  %452 = lshr i32 %441, %237
  %453 = zext i32 %452 to i64
  call void @clean_bdev_aliases(ptr noundef %451, i64 noundef %443, i64 noundef %453) #8
  %454 = load i32, ptr %204, align 8
  br label %455

455:                                              ; preds = %450, %440
  %456 = phi i32 [ %454, %450 ], [ %444, %440 ]
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %474, label %458

458:                                              ; preds = %455
  %459 = shl nsw i32 -1, %456
  %460 = xor i32 %459, -1
  %461 = load i64, ptr %207, align 8
  %462 = trunc i64 %461 to i32
  %463 = and i32 %462, %460
  %464 = load volatile i32, ptr %10, align 8
  %465 = and i32 %464, 32
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %467, label %471

467:                                              ; preds = %458
  %468 = zext i32 %463 to i64
  %469 = load i64, ptr %212, align 8
  %470 = add i64 %469, %468
  store i64 %470, ptr %212, align 8
  br label %471

471:                                              ; preds = %467, %458
  %472 = load i32, ptr %247, align 8
  %473 = sub i32 %472, %463
  store i32 %473, ptr %247, align 8
  br label %474

474:                                              ; preds = %471, %455, %436, %329
  %475 = load volatile i32, ptr %10, align 8
  %476 = and i32 %475, 16
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %478, label %544

478:                                              ; preds = %474
  %479 = load i32, ptr %145, align 4
  %480 = icmp eq i32 %479, 1
  br i1 %480, label %481, label %498

481:                                              ; preds = %478
  %482 = getelementptr inbounds %struct.page, ptr %313, i32 0, i32 1
  %483 = load volatile i32, ptr %482, align 4
  %484 = and i32 %483, 1
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %488, label %486, !prof !20

486:                                              ; preds = %481
  %487 = add i32 %483, -1
  br label %490

488:                                              ; preds = %481
  %489 = ptrtoint ptr %313 to i32
  br label %490

490:                                              ; preds = %488, %486
  %491 = phi i32 [ %487, %486 ], [ %489, %488 ]
  %492 = inttoptr i32 %491 to ptr
  %493 = getelementptr inbounds %struct.page, ptr %492, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !24
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %493) #8, !srcloc !9
  %494 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %493, ptr %493, i32 1, ptr elementtype(i32) %493) #8, !srcloc !25
  %495 = extractvalue { i32, i32 } %494, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !26
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %497, label %654

497:                                              ; preds = %490
  call void @__put_page(ptr noundef %492) #8
  br label %654

498:                                              ; preds = %478
  %499 = load ptr, ptr %142, align 16
  %500 = getelementptr inbounds %struct.inode, ptr %499, i32 0, i32 22
  %501 = getelementptr inbounds %struct.inode, ptr %499, i32 0, i32 13
  br label %502

502:                                              ; preds = %510, %498
  %503 = load volatile i32, ptr %500, align 4
  %504 = and i32 %503, 1
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %510, label %506

506:                                              ; preds = %506, %502
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !16
  %507 = load volatile i32, ptr %500, align 4
  %508 = and i32 %507, 1
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %510, label %506

510:                                              ; preds = %506, %502
  %511 = phi i32 [ %503, %502 ], [ %507, %506 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !17
  %512 = load i64, ptr %501, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !18
  %513 = load volatile i32, ptr %500, align 4
  %514 = icmp eq i32 %513, %511
  br i1 %514, label %515, label %502

515:                                              ; preds = %510
  %516 = add i64 %260, %512
  %517 = and i64 %516, %261
  %518 = load i64, ptr %207, align 8
  %519 = ashr i64 %517, %262
  %520 = icmp ult i64 %518, %519
  br i1 %520, label %538, label %521

521:                                              ; preds = %515
  %522 = getelementptr inbounds %struct.page, ptr %313, i32 0, i32 1
  %523 = load volatile i32, ptr %522, align 4
  %524 = and i32 %523, 1
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %528, label %526, !prof !20

526:                                              ; preds = %521
  %527 = add i32 %523, -1
  br label %530

528:                                              ; preds = %521
  %529 = ptrtoint ptr %313 to i32
  br label %530

530:                                              ; preds = %528, %526
  %531 = phi i32 [ %527, %526 ], [ %529, %528 ]
  %532 = inttoptr i32 %531 to ptr
  %533 = getelementptr inbounds %struct.page, ptr %532, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !24
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %533) #8, !srcloc !9
  %534 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %533, ptr %533, i32 1, ptr elementtype(i32) %533) #8, !srcloc !25
  %535 = extractvalue { i32, i32 } %534, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !26
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %537, label %687

537:                                              ; preds = %530
  call void @__put_page(ptr noundef %532) #8
  br label %687

538:                                              ; preds = %515
  %539 = add i32 %327, %258
  call void @zero_user_segments(ptr noundef %313, i32 noundef %327, i32 noundef %539, i32 noundef 0, i32 noundef 0) #8
  %540 = load i64, ptr %207, align 8
  %541 = add i64 %540, 1
  store i64 %541, ptr %207, align 8
  %542 = load i32, ptr %257, align 4
  %543 = add i32 %542, %258
  store i32 %543, ptr %257, align 4
  br label %623

544:                                              ; preds = %474
  %545 = load i32, ptr %204, align 8
  %546 = icmp ne i32 %545, 0
  %547 = load i32, ptr %255, align 4
  %548 = icmp eq i32 %547, 0
  %549 = select i1 %546, i1 %548, i1 false
  br i1 %549, label %550, label %572, !prof !27

550:                                              ; preds = %544
  store i32 1, ptr %255, align 4
  %551 = load volatile i32, ptr %10, align 8
  %552 = and i32 %551, 32
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %572, label %554

554:                                              ; preds = %550
  %555 = load i64, ptr %207, align 8
  %556 = shl nsw i32 -1, %545
  %557 = xor i32 %556, -1
  %558 = trunc i64 %555 to i32
  %559 = and i32 %558, %557
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %572, label %561

561:                                              ; preds = %554
  %562 = load i32, ptr %202, align 4
  %563 = shl i32 %559, %562
  %564 = load ptr, ptr @empty_zero_page, align 4
  %565 = load i64, ptr %212, align 8
  %566 = call fastcc i32 @submit_page_section(ptr noundef %43, ptr noundef nonnull %9, ptr noundef %564, i32 noundef 0, i32 noundef %563, i64 noundef %565, ptr noundef nonnull %10) #8
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %568, label %572

568:                                              ; preds = %561
  %569 = zext i32 %559 to i64
  %570 = load i64, ptr %212, align 8
  %571 = add i64 %570, %569
  store i64 %571, ptr %212, align 8
  br label %572

572:                                              ; preds = %568, %561, %554, %550, %544
  %573 = load i32, ptr %247, align 8
  %574 = sub i32 %324, %327
  %575 = lshr i32 %574, %235
  %576 = call i32 @llvm.umin.i32(i32 %573, i32 %575) #8
  %577 = load i64, ptr %227, align 8
  %578 = load i64, ptr %207, align 8
  %579 = sub i64 %577, %578
  %580 = trunc i64 %579 to i32
  %581 = call i32 @llvm.umin.i32(i32 %576, i32 %580) #8
  %582 = shl i32 %581, %235
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %584, label %585, !prof !21

584:                                              ; preds = %572
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/direct-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1045, 0\0A.popsection", ""() #8, !srcloc !28
  unreachable

585:                                              ; preds = %572
  %586 = icmp eq i32 %581, %573
  br i1 %586, label %587, label %591

587:                                              ; preds = %585
  %588 = load volatile i32, ptr %10, align 8
  %589 = lshr i32 %588, 9
  %590 = and i32 %589, 1
  store i32 %590, ptr %256, align 8
  br label %591

591:                                              ; preds = %587, %585
  %592 = load i64, ptr %212, align 8
  %593 = call fastcc i32 @submit_page_section(ptr noundef %43, ptr noundef nonnull %9, ptr noundef %313, i32 noundef %327, i32 noundef %582, i64 noundef %592, ptr noundef nonnull %10) #8
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %612, label %595

595:                                              ; preds = %591
  %596 = getelementptr inbounds %struct.page, ptr %313, i32 0, i32 1
  %597 = load volatile i32, ptr %596, align 4
  %598 = and i32 %597, 1
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %602, label %600, !prof !20

600:                                              ; preds = %595
  %601 = add i32 %597, -1
  br label %604

602:                                              ; preds = %595
  %603 = ptrtoint ptr %313 to i32
  br label %604

604:                                              ; preds = %602, %600
  %605 = phi i32 [ %601, %600 ], [ %603, %602 ]
  %606 = inttoptr i32 %605 to ptr
  %607 = getelementptr inbounds %struct.page, ptr %606, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !24
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %607) #8, !srcloc !9
  %608 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %607, ptr %607, i32 1, ptr elementtype(i32) %607) #8, !srcloc !25
  %609 = extractvalue { i32, i32 } %608, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !26
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %611, label %654

611:                                              ; preds = %604
  call void @__put_page(ptr noundef %606) #8
  br label %654

612:                                              ; preds = %591
  %613 = zext i32 %581 to i64
  %614 = load i64, ptr %212, align 8
  %615 = add i64 %614, %613
  store i64 %615, ptr %212, align 8
  %616 = load i64, ptr %207, align 8
  %617 = add i64 %616, %613
  store i64 %617, ptr %207, align 8
  %618 = add i32 %582, %327
  %619 = load i32, ptr %257, align 4
  %620 = add i32 %619, %582
  store i32 %620, ptr %257, align 4
  %621 = load i32, ptr %247, align 8
  %622 = sub i32 %621, %581
  store i32 %622, ptr %247, align 8
  br label %623

623:                                              ; preds = %612, %538
  %624 = phi i64 [ %617, %612 ], [ %541, %538 ]
  %625 = phi i32 [ %618, %612 ], [ %539, %538 ]
  %626 = load i64, ptr %227, align 8
  %627 = icmp ugt i64 %624, %626
  br i1 %627, label %628, label %629, !prof !21

628:                                              ; preds = %623
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/direct-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1065, 0\0A.popsection", ""() #8, !srcloc !29
  unreachable

629:                                              ; preds = %623
  %630 = icmp eq i64 %624, %626
  br i1 %630, label %631, label %326

631:                                              ; preds = %629, %326
  %632 = getelementptr inbounds %struct.page, ptr %313, i32 0, i32 1
  %633 = load volatile i32, ptr %632, align 4
  %634 = and i32 %633, 1
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %638, label %636, !prof !20

636:                                              ; preds = %631
  %637 = add i32 %633, -1
  br label %640

638:                                              ; preds = %631
  %639 = ptrtoint ptr %313 to i32
  br label %640

640:                                              ; preds = %638, %636
  %641 = phi i32 [ %637, %636 ], [ %639, %638 ]
  %642 = inttoptr i32 %641 to ptr
  %643 = getelementptr inbounds %struct.page, ptr %642, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !24
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %643) #8, !srcloc !9
  %644 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %643, ptr %643, i32 1, ptr elementtype(i32) %643) #8, !srcloc !25
  %645 = extractvalue { i32, i32 } %644, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !26
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %647, label %648

647:                                              ; preds = %640
  call void @__put_page(ptr noundef %642) #8
  br label %648

648:                                              ; preds = %647, %640
  %649 = load i64, ptr %207, align 8
  %650 = load i64, ptr %227, align 8
  %651 = icmp ult i64 %649, %650
  br i1 %651, label %263, label %687

652:                                              ; preds = %312
  %653 = ptrtoint ptr %313 to i32
  br label %654

654:                                              ; preds = %652, %611, %604, %497, %490, %435, %428
  %655 = phi i32 [ %653, %652 ], [ -15, %497 ], [ -15, %490 ], [ %419, %428 ], [ %419, %435 ], [ %593, %604 ], [ %593, %611 ]
  %656 = load i32, ptr %243, align 4
  %657 = load i32, ptr %242, align 8
  %658 = icmp ult i32 %656, %657
  br i1 %658, label %659, label %684

659:                                              ; preds = %680, %654
  %660 = phi i32 [ %681, %680 ], [ %656, %654 ]
  %661 = add nuw i32 %660, 1
  store i32 %661, ptr %243, align 4
  %662 = getelementptr [64 x ptr], ptr %244, i32 0, i32 %660
  %663 = load ptr, ptr %662, align 4
  %664 = getelementptr inbounds %struct.page, ptr %663, i32 0, i32 1
  %665 = load volatile i32, ptr %664, align 4
  %666 = and i32 %665, 1
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %670, label %668, !prof !20

668:                                              ; preds = %659
  %669 = add i32 %665, -1
  br label %672

670:                                              ; preds = %659
  %671 = ptrtoint ptr %663 to i32
  br label %672

672:                                              ; preds = %670, %668
  %673 = phi i32 [ %669, %668 ], [ %671, %670 ]
  %674 = inttoptr i32 %673 to ptr
  %675 = getelementptr inbounds %struct.page, ptr %674, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !24
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %675) #8, !srcloc !9
  %676 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %675, ptr %675, i32 1, ptr elementtype(i32) %675) #8, !srcloc !25
  %677 = extractvalue { i32, i32 } %676, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !26
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %679, label %680

679:                                              ; preds = %672
  call void @__put_page(ptr noundef %674) #8
  br label %680

680:                                              ; preds = %679, %672
  %681 = load i32, ptr %243, align 4
  %682 = load i32, ptr %242, align 8
  %683 = icmp ult i32 %681, %682
  br i1 %683, label %659, label %684

684:                                              ; preds = %680, %654
  %685 = icmp eq i32 %655, -15
  %686 = select i1 %685, i32 0, i32 %655
  br label %687

687:                                              ; preds = %684, %648, %537, %530
  %688 = phi i32 [ 0, %537 ], [ 0, %530 ], [ %686, %684 ], [ 0, %648 ]
  %689 = load i32, ptr %204, align 8
  br label %690

690:                                              ; preds = %687, %230
  %691 = phi i32 [ %689, %687 ], [ %236, %230 ]
  %692 = phi i32 [ %688, %687 ], [ 0, %230 ]
  %693 = getelementptr inbounds %struct.dio_submit, ptr %9, i32 0, i32 3
  store i32 1, ptr %693, align 4
  %694 = icmp eq i32 %691, 0
  br i1 %694, label %718, label %695

695:                                              ; preds = %690
  %696 = load volatile i32, ptr %10, align 8
  %697 = and i32 %696, 32
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %718, label %699

699:                                              ; preds = %695
  %700 = shl nuw i32 1, %691
  %701 = load i64, ptr %207, align 8
  %702 = add i32 %700, -1
  %703 = trunc i64 %701 to i32
  %704 = and i32 %702, %703
  %705 = icmp eq i32 %704, 0
  br i1 %705, label %718, label %706

706:                                              ; preds = %699
  %707 = sub i32 %700, %704
  %708 = load i32, ptr %202, align 4
  %709 = shl i32 %707, %708
  %710 = load ptr, ptr @empty_zero_page, align 4
  %711 = load i64, ptr %212, align 8
  %712 = call fastcc i32 @submit_page_section(ptr noundef %43, ptr noundef nonnull %9, ptr noundef %710, i32 noundef 0, i32 noundef %709, i64 noundef %711, ptr noundef nonnull %10) #8
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %714, label %718

714:                                              ; preds = %706
  %715 = zext i32 %707 to i64
  %716 = load i64, ptr %212, align 8
  %717 = add i64 %716, %715
  store i64 %717, ptr %212, align 8
  br label %718

718:                                              ; preds = %714, %706, %699, %695, %690
  %719 = getelementptr inbounds %struct.dio_submit, ptr %9, i32 0, i32 15
  %720 = load ptr, ptr %719, align 8
  %721 = icmp eq ptr %720, null
  br i1 %721, label %744, label %722

722:                                              ; preds = %718
  %723 = call fastcc i32 @dio_send_cur_page(ptr noundef %43, ptr noundef nonnull %9, ptr noundef nonnull %10) #8
  %724 = icmp eq i32 %692, 0
  %725 = select i1 %724, i32 %723, i32 %692
  %726 = load ptr, ptr %719, align 8
  %727 = getelementptr inbounds %struct.page, ptr %726, i32 0, i32 1
  %728 = load volatile i32, ptr %727, align 4
  %729 = and i32 %728, 1
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %733, label %731, !prof !20

731:                                              ; preds = %722
  %732 = add i32 %728, -1
  br label %735

733:                                              ; preds = %722
  %734 = ptrtoint ptr %726 to i32
  br label %735

735:                                              ; preds = %733, %731
  %736 = phi i32 [ %732, %731 ], [ %734, %733 ]
  %737 = inttoptr i32 %736 to ptr
  %738 = getelementptr inbounds %struct.page, ptr %737, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !24
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %738) #8, !srcloc !9
  %739 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %738, ptr %738, i32 1, ptr elementtype(i32) %738) #8, !srcloc !25
  %740 = extractvalue { i32, i32 } %739, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !26
  %741 = icmp eq i32 %740, 0
  br i1 %741, label %742, label %743

742:                                              ; preds = %735
  call void @__put_page(ptr noundef %737) #8
  br label %743

743:                                              ; preds = %742, %735
  store ptr null, ptr %719, align 8
  br label %744

744:                                              ; preds = %743, %718
  %745 = phi i32 [ %725, %743 ], [ %692, %718 ]
  %746 = load ptr, ptr %9, align 8
  %747 = icmp eq ptr %746, null
  br i1 %747, label %781, label %748

748:                                              ; preds = %744
  %749 = getelementptr inbounds %struct.bio, ptr %746, i32 0, i32 11
  store ptr %43, ptr %749, align 4
  %750 = getelementptr inbounds %struct.bio, ptr %746, i32 0, i32 3
  %751 = load i16, ptr %750, align 4
  %752 = and i16 %751, -9
  store i16 %752, ptr %750, align 4
  %753 = call i32 @_raw_spin_lock_irqsave(ptr noundef %214) #8
  %754 = load i32, ptr %215, align 4
  %755 = add i32 %754, 1
  store i32 %755, ptr %215, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %214, i32 noundef %753) #8
  %756 = load i32, ptr %141, align 16
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %765, label %758

758:                                              ; preds = %748
  %759 = load i32, ptr %145, align 4
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %761, label %765

761:                                              ; preds = %758
  %762 = load i8, ptr %223, align 1, !range !14
  %763 = icmp eq i8 %762, 0
  br i1 %763, label %765, label %764

764:                                              ; preds = %761
  call void @bio_set_pages_dirty(ptr noundef nonnull %746) #8
  br label %765

765:                                              ; preds = %764, %761, %758, %748
  %766 = getelementptr inbounds %struct.bio, ptr %746, i32 0, i32 1
  %767 = load ptr, ptr %766, align 4
  %768 = getelementptr inbounds %struct.block_device, ptr %767, i32 0, i32 17
  %769 = load ptr, ptr %768, align 8
  %770 = getelementptr inbounds %struct.dio, ptr %43, i32 0, i32 3
  store ptr %769, ptr %770, align 4
  %771 = load ptr, ptr %210, align 8
  %772 = icmp eq ptr %771, null
  br i1 %772, label %777, label %773

773:                                              ; preds = %765
  %774 = load ptr, ptr %142, align 16
  %775 = getelementptr inbounds %struct.dio_submit, ptr %9, i32 0, i32 12
  %776 = load i64, ptr %775, align 8
  call void %771(ptr noundef nonnull %746, ptr noundef %774, i64 noundef %776) #8
  br label %778

777:                                              ; preds = %765
  call void @submit_bio(ptr noundef nonnull %746) #8
  br label %778

778:                                              ; preds = %777, %773
  store ptr null, ptr %9, align 8
  %779 = getelementptr inbounds %struct.dio_submit, ptr %9, i32 0, i32 9
  store i32 0, ptr %779, align 8
  %780 = getelementptr inbounds %struct.dio_submit, ptr %9, i32 0, i32 12
  store i64 0, ptr %780, align 8
  br label %781

781:                                              ; preds = %778, %744
  call void @blk_finish_plug(ptr noundef nonnull %11) #8
  %782 = getelementptr inbounds %struct.dio_submit, ptr %9, i32 0, i32 21
  %783 = getelementptr inbounds %struct.dio_submit, ptr %9, i32 0, i32 22
  %784 = load i32, ptr %782, align 4
  %785 = load i32, ptr %783, align 8
  %786 = icmp ult i32 %784, %785
  br i1 %786, label %787, label %814

787:                                              ; preds = %781
  %788 = getelementptr inbounds %struct.dio, ptr %43, i32 0, i32 19
  br label %789

789:                                              ; preds = %810, %787
  %790 = phi i32 [ %784, %787 ], [ %811, %810 ]
  %791 = add nuw i32 %790, 1
  store i32 %791, ptr %782, align 4
  %792 = getelementptr [64 x ptr], ptr %788, i32 0, i32 %790
  %793 = load ptr, ptr %792, align 4
  %794 = getelementptr inbounds %struct.page, ptr %793, i32 0, i32 1
  %795 = load volatile i32, ptr %794, align 4
  %796 = and i32 %795, 1
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %800, label %798, !prof !20

798:                                              ; preds = %789
  %799 = add i32 %795, -1
  br label %802

800:                                              ; preds = %789
  %801 = ptrtoint ptr %793 to i32
  br label %802

802:                                              ; preds = %800, %798
  %803 = phi i32 [ %799, %798 ], [ %801, %800 ]
  %804 = inttoptr i32 %803 to ptr
  %805 = getelementptr inbounds %struct.page, ptr %804, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !24
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %805) #8, !srcloc !9
  %806 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %805, ptr %805, i32 1, ptr elementtype(i32) %805) #8, !srcloc !25
  %807 = extractvalue { i32, i32 } %806, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !26
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %809, label %810

809:                                              ; preds = %802
  call void @__put_page(ptr noundef %804) #8
  br label %810

810:                                              ; preds = %809, %802
  %811 = load i32, ptr %782, align 4
  %812 = load i32, ptr %783, align 8
  %813 = icmp ult i32 %811, %812
  br i1 %813, label %789, label %814

814:                                              ; preds = %810, %781
  %815 = load i8, ptr %36, align 2, !range !14
  %816 = icmp eq i8 %815, 0
  br i1 %816, label %817, label %824

817:                                              ; preds = %814
  %818 = load i32, ptr %43, align 64
  %819 = and i32 %818, 1
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %824, label %821

821:                                              ; preds = %817
  %822 = load ptr, ptr %142, align 16
  %823 = getelementptr inbounds %struct.inode, ptr %822, i32 0, i32 24
  call void @up_write(ptr noundef %823) #8
  br label %824

824:                                              ; preds = %821, %817, %814
  %825 = icmp eq i32 %745, -529
  br i1 %825, label %826, label %827, !prof !21

826:                                              ; preds = %824
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/direct-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1322, 0\0A.popsection", ""() #8, !srcloc !30
  unreachable

827:                                              ; preds = %824
  %828 = load i32, ptr %141, align 16
  %829 = icmp ne i32 %828, 0
  %830 = icmp eq i32 %745, 0
  %831 = select i1 %829, i1 %830, i1 false
  br i1 %831, label %832, label %841

832:                                              ; preds = %827
  %833 = getelementptr inbounds %struct.dio, ptr %43, i32 0, i32 18
  %834 = load i32, ptr %833, align 4
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %841, label %836

836:                                              ; preds = %832
  %837 = load i8, ptr %36, align 2, !range !14
  %838 = icmp eq i8 %837, 0
  %839 = icmp eq i32 %834, %28
  %840 = select i1 %838, i1 true, i1 %839
  br i1 %840, label %900, label %841

841:                                              ; preds = %836, %832, %827
  %842 = getelementptr inbounds %struct.dio, ptr %43, i32 0, i32 15
  %843 = getelementptr inbounds %struct.dio, ptr %43, i32 0, i32 16
  %844 = getelementptr inbounds %struct.dio, ptr %43, i32 0, i32 13
  br label %845

845:                                              ; preds = %898, %841
  %846 = call i32 @_raw_spin_lock_irqsave(ptr noundef %214) #8
  %847 = load i32, ptr %215, align 4
  %848 = icmp ugt i32 %847, 1
  br i1 %848, label %849, label %859

849:                                              ; preds = %853, %845
  %850 = phi i32 [ %856, %853 ], [ %846, %845 ]
  %851 = load ptr, ptr %842, align 64
  %852 = icmp eq ptr %851, null
  br i1 %852, label %853, label %863

853:                                              ; preds = %849
  %854 = tail call ptr @llvm.thread.pointer() #8
  %855 = getelementptr inbounds %struct.task_struct, ptr %854, i32 0, i32 1
  store volatile i32 2, ptr %855, align 8
  store ptr %854, ptr %843, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %214, i32 noundef %850) #8
  call void @blk_io_schedule() #8
  %856 = call i32 @_raw_spin_lock_irqsave(ptr noundef %214) #8
  store ptr null, ptr %843, align 4
  %857 = load i32, ptr %215, align 4
  %858 = icmp ugt i32 %857, 1
  br i1 %858, label %849, label %859

859:                                              ; preds = %853, %845
  %860 = phi i32 [ %846, %845 ], [ %856, %853 ]
  %861 = load ptr, ptr %842, align 64
  %862 = icmp eq ptr %861, null
  br i1 %862, label %899, label %863

863:                                              ; preds = %859, %849
  %864 = phi i32 [ %860, %859 ], [ %850, %849 ]
  %865 = phi ptr [ %861, %859 ], [ %851, %849 ]
  %866 = getelementptr inbounds %struct.bio, ptr %865, i32 0, i32 11
  %867 = load ptr, ptr %866, align 4
  store ptr %867, ptr %842, align 64
  call void @_raw_spin_unlock_irqrestore(ptr noundef %214, i32 noundef %864) #8
  %868 = getelementptr inbounds %struct.bio, ptr %865, i32 0, i32 6
  %869 = load i8, ptr %868, align 2
  %870 = load i32, ptr %145, align 4
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %872, label %875

872:                                              ; preds = %863
  %873 = load i8, ptr %223, align 1, !range !14
  %874 = icmp ne i8 %873, 0
  br label %875

875:                                              ; preds = %872, %863
  %876 = phi i1 [ false, %863 ], [ %874, %872 ]
  switch i8 %869, label %882 [
    i8 0, label %885
    i8 12, label %877
  ]

877:                                              ; preds = %875
  %878 = getelementptr inbounds %struct.bio, ptr %865, i32 0, i32 2
  %879 = load i32, ptr %878, align 4
  %880 = and i32 %879, 2097152
  %881 = icmp eq i32 %880, 0
  br i1 %881, label %882, label %883

882:                                              ; preds = %877, %875
  br label %883

883:                                              ; preds = %882, %877
  %884 = phi i32 [ -5, %882 ], [ -11, %877 ]
  store i32 %884, ptr %844, align 8
  br label %885

885:                                              ; preds = %883, %875
  %886 = load i32, ptr %141, align 16
  %887 = icmp eq i32 %886, 0
  %888 = xor i1 %876, true
  %889 = select i1 %887, i1 true, i1 %888
  br i1 %889, label %891, label %890

890:                                              ; preds = %885
  call void @bio_check_pages_dirty(ptr noundef nonnull %865) #8
  br label %898

891:                                              ; preds = %885
  %892 = getelementptr inbounds %struct.bio, ptr %865, i32 0, i32 3
  %893 = load i16, ptr %892, align 4
  %894 = and i16 %893, 1
  %895 = icmp eq i16 %894, 0
  br i1 %895, label %896, label %897

896:                                              ; preds = %891
  call void @__bio_release_pages(ptr noundef nonnull %865, i1 noundef zeroext %876) #8
  br label %897

897:                                              ; preds = %896, %891
  call void @bio_put(ptr noundef nonnull %865) #8
  br label %898

898:                                              ; preds = %897, %890
  br label %845

899:                                              ; preds = %859
  call void @_raw_spin_unlock_irqrestore(ptr noundef %214, i32 noundef %860) #8
  br label %900

900:                                              ; preds = %899, %836
  %901 = phi i32 [ %745, %899 ], [ -529, %836 ]
  %902 = call i32 @_raw_spin_lock_irqsave(ptr noundef %214) #8
  %903 = load i32, ptr %215, align 4
  %904 = add i32 %903, -1
  store i32 %904, ptr %215, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %214, i32 noundef %902) #8
  %905 = icmp eq i32 %904, 0
  br i1 %905, label %906, label %908

906:                                              ; preds = %900
  %907 = call fastcc i32 @dio_complete(ptr noundef %43, i32 noundef %901, i32 noundef 2) #8
  br label %923

908:                                              ; preds = %900
  %909 = icmp eq i32 %901, -529
  br i1 %909, label %923, label %910, !prof !20

910:                                              ; preds = %908
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/direct-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1332, 0\0A.popsection", ""() #8, !srcloc !31
  unreachable

911:                                              ; preds = %185, %167, %108, %97, %78, %69
  %912 = phi i32 [ -22, %97 ], [ %113, %108 ], [ -12, %167 ], [ 0, %69 ], [ -22, %78 ], [ -12, %185 ]
  %913 = load i32, ptr %43, align 64
  %914 = and i32 %913, 1
  %915 = icmp eq i32 %914, 0
  br i1 %915, label %921, label %916

916:                                              ; preds = %911
  %917 = load i8, ptr %36, align 2, !range !14
  %918 = icmp eq i8 %917, 0
  br i1 %918, label %919, label %921

919:                                              ; preds = %916
  %920 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 24
  tail call void @up_write(ptr noundef %920) #8
  br label %921

921:                                              ; preds = %919, %916, %911
  %922 = load ptr, ptr @dio_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %922, ptr noundef %43) #8
  br label %923

923:                                              ; preds = %921, %908, %906, %41, %8
  %924 = phi i32 [ %912, %921 ], [ 0, %8 ], [ -12, %41 ], [ %907, %906 ], [ -529, %908 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %9) #8
  ret i32 %924
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dio_init() #3 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.1, i32 noundef 384, i32 noundef 64, i32 noundef 262144, ptr noundef null) #8
  store ptr %1, ptr @dio_cache, align 4
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_alignment(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_npages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dio_send_cur_page(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #5 {
  %4 = load ptr, ptr %1, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %62, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 13
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 18
  %10 = load i64, ptr %9, align 8
  %11 = icmp eq i64 %8, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 12
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds %struct.bio, ptr %4, i32 0, i32 8, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = zext i32 %16 to i64
  %18 = add i64 %14, %17
  %19 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 19
  %20 = load i64, ptr %19, align 8
  %21 = icmp eq i64 %20, %18
  br i1 %21, label %69, label %22

22:                                               ; preds = %12, %6
  %23 = getelementptr inbounds %struct.bio, ptr %4, i32 0, i32 11
  store ptr %0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.bio, ptr %4, i32 0, i32 3
  %25 = load i16, ptr %24, align 4
  %26 = and i16 %25, -9
  store i16 %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 8
  %28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %27) #8
  %29 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 14
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %29, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %27, i32 noundef %28) #8
  %32 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 10
  %33 = load i32, ptr %32, align 16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 12
  %41 = load i8, ptr %40, align 1, !range !14
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void @bio_set_pages_dirty(ptr noundef nonnull %4) #8
  br label %44

44:                                               ; preds = %43, %39, %35, %22
  %45 = getelementptr inbounds %struct.bio, ptr %4, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.block_device, ptr %46, i32 0, i32 17
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 3
  store ptr %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 11
  %51 = load ptr, ptr %50, align 8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 4
  %55 = load ptr, ptr %54, align 16
  %56 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 12
  %57 = load i64, ptr %56, align 8
  tail call void %51(ptr noundef nonnull %4, ptr noundef %55, i64 noundef %57) #8
  br label %59

58:                                               ; preds = %44
  tail call void @submit_bio(ptr noundef nonnull %4) #8
  br label %59

59:                                               ; preds = %58, %53
  store ptr null, ptr %1, align 8
  %60 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 9
  store i32 0, ptr %60, align 8
  %61 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 12
  store i64 0, ptr %61, align 8
  br label %62

62:                                               ; preds = %59, %3
  %63 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 18
  %64 = load i64, ptr %63, align 8
  %65 = tail call fastcc i32 @dio_new_bio(ptr noundef %0, ptr noundef %1, i64 noundef %64, ptr noundef %2)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %191

67:                                               ; preds = %62
  %68 = load ptr, ptr %1, align 8
  br label %69

69:                                               ; preds = %67, %12
  %70 = phi ptr [ %68, %67 ], [ %4, %12 ]
  %71 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 15
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 17
  %74 = load i32, ptr %73, align 8
  %75 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 16
  %76 = load i32, ptr %75, align 4
  %77 = tail call i32 @bio_add_page(ptr noundef %70, ptr noundef %72, i32 noundef %74, i32 noundef %76) #8
  %78 = load i32, ptr %73, align 8
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %104

80:                                               ; preds = %69
  %81 = load i32, ptr %75, align 4
  %82 = add i32 %81, %77
  %83 = icmp eq i32 %82, 4096
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 4
  %86 = load i32, ptr %85, align 8
  %87 = add i32 %86, -1
  store i32 %87, ptr %85, align 8
  br label %88

88:                                               ; preds = %84, %80
  %89 = load ptr, ptr %71, align 8
  %90 = getelementptr inbounds %struct.page, ptr %89, i32 0, i32 1
  %91 = load volatile i32, ptr %90, align 4
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94, !prof !20

94:                                               ; preds = %88
  %95 = add i32 %91, -1
  br label %98

96:                                               ; preds = %88
  %97 = ptrtoint ptr %89 to i32
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i32 [ %95, %94 ], [ %97, %96 ]
  %100 = inttoptr i32 %99 to ptr
  %101 = getelementptr inbounds %struct.page, ptr %100, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %101) #8, !srcloc !9
  %102 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %101, ptr %101, i32 1, ptr elementtype(i32) %101) #8, !srcloc !19
  %103 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 18
  br label %181

104:                                              ; preds = %69
  %105 = load ptr, ptr %1, align 8
  %106 = getelementptr inbounds %struct.bio, ptr %105, i32 0, i32 11
  store ptr %0, ptr %106, align 4
  %107 = getelementptr inbounds %struct.bio, ptr %105, i32 0, i32 3
  %108 = load i16, ptr %107, align 4
  %109 = and i16 %108, -9
  store i16 %109, ptr %107, align 4
  %110 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 8
  %111 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %110) #8
  %112 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 14
  %113 = load i32, ptr %112, align 4
  %114 = add i32 %113, 1
  store i32 %114, ptr %112, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %110, i32 noundef %111) #8
  %115 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 10
  %116 = load i32, ptr %115, align 16
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %127, label %118

118:                                              ; preds = %104
  %119 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 1
  %120 = load i32, ptr %119, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 12
  %124 = load i8, ptr %123, align 1, !range !14
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  tail call void @bio_set_pages_dirty(ptr noundef %105) #8
  br label %127

127:                                              ; preds = %126, %122, %118, %104
  %128 = getelementptr inbounds %struct.bio, ptr %105, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.block_device, ptr %129, i32 0, i32 17
  %131 = load ptr, ptr %130, align 8
  %132 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 3
  store ptr %131, ptr %132, align 4
  %133 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 11
  %134 = load ptr, ptr %133, align 8
  %135 = icmp eq ptr %134, null
  br i1 %135, label %141, label %136

136:                                              ; preds = %127
  %137 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 4
  %138 = load ptr, ptr %137, align 16
  %139 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 12
  %140 = load i64, ptr %139, align 8
  tail call void %134(ptr noundef %105, ptr noundef %138, i64 noundef %140) #8
  br label %142

141:                                              ; preds = %127
  tail call void @submit_bio(ptr noundef %105) #8
  br label %142

142:                                              ; preds = %141, %136
  store ptr null, ptr %1, align 8
  %143 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 9
  store i32 0, ptr %143, align 8
  %144 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 12
  store i64 0, ptr %144, align 8
  %145 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 18
  %146 = load i64, ptr %145, align 8
  %147 = tail call fastcc i32 @dio_new_bio(ptr noundef %0, ptr noundef %1, i64 noundef %146, ptr noundef %2)
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %191

149:                                              ; preds = %142
  %150 = load ptr, ptr %1, align 8
  %151 = load ptr, ptr %71, align 8
  %152 = load i32, ptr %73, align 8
  %153 = load i32, ptr %75, align 4
  %154 = tail call i32 @bio_add_page(ptr noundef %150, ptr noundef %151, i32 noundef %152, i32 noundef %153) #8
  %155 = load i32, ptr %73, align 8
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %180

157:                                              ; preds = %149
  %158 = load i32, ptr %75, align 4
  %159 = add i32 %158, %154
  %160 = icmp eq i32 %159, 4096
  br i1 %160, label %161, label %165

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 4
  %163 = load i32, ptr %162, align 8
  %164 = add i32 %163, -1
  store i32 %164, ptr %162, align 8
  br label %165

165:                                              ; preds = %161, %157
  %166 = load ptr, ptr %71, align 8
  %167 = getelementptr inbounds %struct.page, ptr %166, i32 0, i32 1
  %168 = load volatile i32, ptr %167, align 4
  %169 = and i32 %168, 1
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %173, label %171, !prof !20

171:                                              ; preds = %165
  %172 = add i32 %168, -1
  br label %175

173:                                              ; preds = %165
  %174 = ptrtoint ptr %166 to i32
  br label %175

175:                                              ; preds = %173, %171
  %176 = phi i32 [ %172, %171 ], [ %174, %173 ]
  %177 = inttoptr i32 %176 to ptr
  %178 = getelementptr inbounds %struct.page, ptr %177, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %178) #8, !srcloc !9
  %179 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %178, ptr %178, i32 1, ptr elementtype(i32) %178) #8, !srcloc !19
  br label %181

180:                                              ; preds = %149
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/direct-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 781, 0\0A.popsection", ""() #8, !srcloc !32
  unreachable

181:                                              ; preds = %175, %98
  %182 = phi ptr [ %145, %175 ], [ %103, %98 ]
  %183 = load i64, ptr %182, align 8
  %184 = load i32, ptr %73, align 8
  %185 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 1
  %186 = load i32, ptr %185, align 4
  %187 = lshr i32 %184, %186
  %188 = zext i32 %187 to i64
  %189 = add i64 %183, %188
  %190 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 13
  store i64 %189, ptr %190, align 8
  br label %191

191:                                              ; preds = %181, %142, %62
  %192 = phi i32 [ %65, %62 ], [ %147, %142 ], [ 0, %181 ]
  ret i32 %192
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dio_complete(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.kiocb, ptr %5, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = icmp eq i32 %1, -529
  %9 = select i1 %8, i32 0, i32 %1
  %10 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 18
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = sext i32 %11 to i64
  %19 = add i64 %7, %18
  %20 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 5
  %21 = load i64, ptr %20, align 8
  %22 = icmp sgt i64 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = sub i64 %21, %7
  %25 = trunc i64 %24 to i32
  br label %26

26:                                               ; preds = %23, %17, %13
  %27 = phi i32 [ %25, %23 ], [ %11, %17 ], [ %11, %13 ]
  %28 = icmp eq i32 %9, -14
  br i1 %28, label %29, label %31, !prof !21

29:                                               ; preds = %26
  %30 = icmp eq i32 %27, 0
  br i1 %30, label %47, label %34

31:                                               ; preds = %26, %3
  %32 = phi i32 [ %27, %26 ], [ 0, %3 ]
  %33 = icmp eq i32 %9, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31, %29
  %35 = phi i32 [ %32, %31 ], [ %27, %29 ]
  %36 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 9
  %37 = load i32, ptr %36, align 4
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i32 [ %35, %34 ], [ %32, %31 ]
  %40 = phi i32 [ %37, %34 ], [ %9, %31 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 13
  %44 = load i32, ptr %43, align 8
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 %39, i32 %44
  br label %47

47:                                               ; preds = %42, %38, %29
  %48 = phi i32 [ %39, %38 ], [ 0, %29 ], [ %39, %42 ]
  %49 = phi i32 [ %40, %38 ], [ -14, %29 ], [ %46, %42 ]
  %50 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 6
  %51 = load ptr, ptr %50, align 32
  %52 = icmp eq ptr %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 7
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 %51(ptr noundef %5, i64 noundef %7, i32 noundef %49, ptr noundef %55) #8
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, i32 %49, i32 %56
  br label %59

59:                                               ; preds = %53, %47
  %60 = phi i32 [ %49, %47 ], [ %58, %53 ]
  %61 = and i32 %2, 2
  %62 = icmp ne i32 %61, 0
  %63 = icmp sgt i32 %60, 0
  %64 = select i1 %62, i1 %63, i1 false
  br i1 %64, label %65, label %90

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %90

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 4
  %71 = load ptr, ptr %70, align 16
  %72 = getelementptr inbounds %struct.inode, ptr %71, i32 0, i32 9
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %struct.address_space, ptr %73, i32 0, i32 7
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %90, label %77

77:                                               ; preds = %69
  %78 = lshr i64 %7, 12
  %79 = trunc i64 %78 to i32
  %80 = zext i32 %60 to i64
  %81 = add i64 %7, 17592186044415
  %82 = add i64 %81, %80
  %83 = lshr i64 %82, 12
  %84 = trunc i64 %83 to i32
  %85 = tail call i32 @invalidate_inode_pages2_range(ptr noundef %73, i32 noundef %79, i32 noundef %84) #8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %77
  %88 = load ptr, ptr %4, align 8
  %89 = load ptr, ptr %88, align 8
  tail call void @dio_warn_stale_pagecache(ptr noundef %89) #8
  br label %90

90:                                               ; preds = %87, %77, %69, %65, %59
  %91 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 4
  %92 = load ptr, ptr %91, align 16
  %93 = getelementptr inbounds %struct.inode, ptr %92, i32 0, i32 36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %93) #8, !srcloc !9
  %94 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %93, ptr %93, i32 1, ptr elementtype(i32) %93) #8, !srcloc !25
  %95 = extractvalue { i32, i32 } %94, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !26
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.inode, ptr %92, i32 0, i32 23
  tail call void @wake_up_bit(ptr noundef %98, i32 noundef 9) #8
  br label %99

99:                                               ; preds = %97, %90
  %100 = and i32 %2, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %136, label %102

102:                                              ; preds = %99
  %103 = sext i32 %48 to i64
  %104 = load ptr, ptr %4, align 8
  %105 = getelementptr inbounds %struct.kiocb, ptr %104, i32 0, i32 1
  %106 = load i64, ptr %105, align 8
  %107 = add i64 %106, %103
  store i64 %107, ptr %105, align 8
  br i1 %63, label %108, label %131

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %131

112:                                              ; preds = %108
  %113 = load ptr, ptr %4, align 8
  %114 = getelementptr inbounds %struct.kiocb, ptr %113, i32 0, i32 4
  %115 = load i32, ptr %114, align 8
  %116 = and i32 %115, 2
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %130, label %118

118:                                              ; preds = %112
  %119 = load ptr, ptr %113, align 8
  %120 = getelementptr inbounds %struct.kiocb, ptr %113, i32 0, i32 1
  %121 = load i64, ptr %120, align 8
  %122 = zext i32 %60 to i64
  %123 = sub i64 %121, %122
  %124 = add i64 %121, -1
  %125 = lshr i32 %115, 2
  %126 = and i32 %125, 1
  %127 = xor i32 %126, 1
  %128 = tail call i32 @vfs_fsync_range(ptr noundef %119, i64 noundef %123, i64 noundef %124, i32 noundef %127) #8
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %118, %112
  br label %131

131:                                              ; preds = %130, %118, %108, %102
  %132 = phi i32 [ %60, %108 ], [ %60, %102 ], [ %128, %118 ], [ %60, %130 ]
  %133 = load ptr, ptr %4, align 8
  %134 = getelementptr inbounds %struct.kiocb, ptr %133, i32 0, i32 2
  %135 = load ptr, ptr %134, align 8
  tail call void %135(ptr noundef %133, i32 noundef %132) #8
  br label %136

136:                                              ; preds = %131, %99
  %137 = phi i32 [ %132, %131 ], [ %60, %99 ]
  %138 = load ptr, ptr @dio_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %138, ptr noundef %0) #8
  ret i32 %137
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clean_bdev_aliases(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @submit_page_section(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, ptr nocapture noundef readonly %6) unnamed_addr #5 {
  %8 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 9
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 15
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, %2
  br i1 %13, label %14, label %32

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 16
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 17
  %18 = load i32, ptr %17, align 8
  %19 = add i32 %18, %16
  %20 = icmp eq i32 %19, %3
  br i1 %20, label %21, label %32

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 18
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = lshr i32 %18, %25
  %27 = zext i32 %26 to i64
  %28 = add i64 %23, %27
  %29 = icmp eq i64 %28, %5
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = add i32 %18, %4
  store i32 %31, ptr %17, align 8
  br label %79

32:                                               ; preds = %21, %14, %7
  %33 = icmp eq ptr %12, null
  br i1 %33, label %55, label %34

34:                                               ; preds = %32
  %35 = tail call fastcc i32 @dio_send_cur_page(ptr noundef %0, ptr noundef %1, ptr noundef %6)
  %36 = load ptr, ptr %11, align 8
  %37 = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 1
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41, !prof !20

41:                                               ; preds = %34
  %42 = add i32 %38, -1
  br label %45

43:                                               ; preds = %34
  %44 = ptrtoint ptr %36 to i32
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = inttoptr i32 %46 to ptr
  %48 = getelementptr inbounds %struct.page, ptr %47, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %48) #8, !srcloc !9
  %49 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %48, ptr %48, i32 1, ptr elementtype(i32) %48) #8, !srcloc !25
  %50 = extractvalue { i32, i32 } %49, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !26
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  tail call void @__put_page(ptr noundef %47) #8
  br label %53

53:                                               ; preds = %52, %45
  store ptr null, ptr %11, align 8
  %54 = icmp eq i32 %35, 0
  br i1 %54, label %55, label %142

55:                                               ; preds = %53, %32
  %56 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1
  %57 = load volatile i32, ptr %56, align 4
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60, !prof !20

60:                                               ; preds = %55
  %61 = add i32 %57, -1
  br label %64

62:                                               ; preds = %55
  %63 = ptrtoint ptr %2 to i32
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = inttoptr i32 %65 to ptr
  %67 = getelementptr inbounds %struct.page, ptr %66, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %67) #8, !srcloc !9
  %68 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %67, ptr %67, i32 1, ptr elementtype(i32) %67) #8, !srcloc !19
  store ptr %2, ptr %11, align 8
  %69 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 16
  store i32 %3, ptr %69, align 4
  %70 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 17
  store i32 %4, ptr %70, align 8
  %71 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 18
  store i64 %5, ptr %71, align 8
  %72 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 5
  %73 = load i64, ptr %72, align 8
  %74 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = zext i32 %75 to i64
  %77 = shl i64 %73, %76
  %78 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 19
  store i64 %77, ptr %78, align 8
  br label %79

79:                                               ; preds = %64, %30
  %80 = icmp eq i32 %9, 0
  br i1 %80, label %142, label %81

81:                                               ; preds = %79
  %82 = tail call fastcc i32 @dio_send_cur_page(ptr noundef %0, ptr noundef %1, ptr noundef %6)
  %83 = load ptr, ptr %1, align 8
  %84 = icmp eq ptr %83, null
  br i1 %84, label %123, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.bio, ptr %83, i32 0, i32 11
  store ptr %0, ptr %86, align 4
  %87 = getelementptr inbounds %struct.bio, ptr %83, i32 0, i32 3
  %88 = load i16, ptr %87, align 4
  %89 = and i16 %88, -9
  store i16 %89, ptr %87, align 4
  %90 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 8
  %91 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %90) #8
  %92 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 14
  %93 = load i32, ptr %92, align 4
  %94 = add i32 %93, 1
  store i32 %94, ptr %92, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %90, i32 noundef %91) #8
  %95 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 10
  %96 = load i32, ptr %95, align 16
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %85
  %99 = load i32, ptr %10, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 12
  %103 = load i8, ptr %102, align 1, !range !14
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  tail call void @bio_set_pages_dirty(ptr noundef nonnull %83) #8
  br label %106

106:                                              ; preds = %105, %101, %98, %85
  %107 = getelementptr inbounds %struct.bio, ptr %83, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.block_device, ptr %108, i32 0, i32 17
  %110 = load ptr, ptr %109, align 8
  %111 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 3
  store ptr %110, ptr %111, align 4
  %112 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 11
  %113 = load ptr, ptr %112, align 8
  %114 = icmp eq ptr %113, null
  br i1 %114, label %120, label %115

115:                                              ; preds = %106
  %116 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 4
  %117 = load ptr, ptr %116, align 16
  %118 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 12
  %119 = load i64, ptr %118, align 8
  tail call void %113(ptr noundef nonnull %83, ptr noundef %117, i64 noundef %119) #8
  br label %121

120:                                              ; preds = %106
  tail call void @submit_bio(ptr noundef nonnull %83) #8
  br label %121

121:                                              ; preds = %120, %115
  store ptr null, ptr %1, align 8
  store i32 0, ptr %8, align 8
  %122 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 12
  store i64 0, ptr %122, align 8
  br label %123

123:                                              ; preds = %121, %81
  %124 = load ptr, ptr %11, align 8
  %125 = getelementptr inbounds %struct.page, ptr %124, i32 0, i32 1
  %126 = load volatile i32, ptr %125, align 4
  %127 = and i32 %126, 1
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %131, label %129, !prof !20

129:                                              ; preds = %123
  %130 = add i32 %126, -1
  br label %133

131:                                              ; preds = %123
  %132 = ptrtoint ptr %124 to i32
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i32 [ %130, %129 ], [ %132, %131 ]
  %135 = inttoptr i32 %134 to ptr
  %136 = getelementptr inbounds %struct.page, ptr %135, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %136) #8, !srcloc !9
  %137 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %136, ptr %136, i32 1, ptr elementtype(i32) %136) #8, !srcloc !25
  %138 = extractvalue { i32, i32 } %137, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !26
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  tail call void @__put_page(ptr noundef %135) #8
  br label %141

141:                                              ; preds = %140, %133
  store ptr null, ptr %11, align 8
  br label %142

142:                                              ; preds = %141, %79, %53
  %143 = phi i32 [ %35, %53 ], [ %82, %141 ], [ 0, %79 ]
  ret i32 %143
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_get_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dio_new_bio(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 4
  %8 = icmp sgt i32 %6, 63
  br i1 %8, label %9, label %64

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 15
  %11 = load ptr, ptr %10, align 64
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 0, ptr %5, align 4
  br label %64

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 8
  %16 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 1
  %17 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 12
  %18 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 13
  %19 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 10
  br label %20

20:                                               ; preds = %56, %14
  %21 = phi i32 [ 0, %14 ], [ %59, %56 ]
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #8
  %23 = load ptr, ptr %10, align 64
  %24 = getelementptr inbounds %struct.bio, ptr %23, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  store ptr %25, ptr %10, align 64
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %22) #8
  %26 = getelementptr inbounds %struct.bio, ptr %23, i32 0, i32 6
  %27 = load i8, ptr %26, align 2
  %28 = load i32, ptr %16, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i8, ptr %17, align 1, !range !14
  %32 = icmp ne i8 %31, 0
  br label %33

33:                                               ; preds = %30, %20
  %34 = phi i1 [ false, %20 ], [ %32, %30 ]
  switch i8 %27, label %40 [
    i8 0, label %43
    i8 12, label %35
  ]

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.bio, ptr %23, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 2097152
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35, %33
  br label %41

41:                                               ; preds = %40, %35
  %42 = phi i32 [ -5, %40 ], [ -11, %35 ]
  store i32 %42, ptr %18, align 8
  br label %43

43:                                               ; preds = %41, %33
  %44 = load i32, ptr %19, align 16
  %45 = icmp eq i32 %44, 0
  %46 = xor i1 %34, true
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  tail call void @bio_check_pages_dirty(ptr noundef %23) #8
  br label %56

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.bio, ptr %23, i32 0, i32 3
  %51 = load i16, ptr %50, align 4
  %52 = and i16 %51, 1
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  tail call void @__bio_release_pages(ptr noundef %23, i1 noundef zeroext %34) #8
  br label %55

55:                                               ; preds = %54, %49
  tail call void @bio_put(ptr noundef %23) #8
  br label %56

56:                                               ; preds = %55, %48
  %57 = tail call i32 @blk_status_to_errno(i8 noundef zeroext %27) #8
  %58 = icmp eq i32 %21, 0
  %59 = select i1 %58, i32 %57, i32 %21
  %60 = load ptr, ptr %10, align 64
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %20

62:                                               ; preds = %56
  store i32 0, ptr %5, align 4
  %63 = icmp eq i32 %59, 0
  br i1 %63, label %64, label %110

64:                                               ; preds = %62, %13, %4
  %65 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 4
  %66 = load i32, ptr %65, align 8
  %67 = tail call i32 @llvm.umin.i32(i32 %66, i32 256) #8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70, !prof !21

69:                                               ; preds = %64
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/direct-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 695, 0\0A.popsection", ""() #8, !srcloc !33
  unreachable

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %72, -9
  %74 = zext i32 %73 to i64
  %75 = shl i64 %2, %74
  %76 = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 6
  %77 = load ptr, ptr %76, align 8
  %78 = trunc i32 %67 to i16
  %79 = tail call ptr @bio_alloc_bioset(i32 noundef 3264, i16 noundef zeroext %78, ptr noundef nonnull @fs_bio_set) #8
  %80 = getelementptr inbounds %struct.bio, ptr %79, i32 0, i32 3
  %81 = load i16, ptr %80, align 4
  %82 = and i16 %81, -2049
  store i16 %82, ptr %80, align 4
  %83 = getelementptr inbounds %struct.bio, ptr %79, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, %77
  br i1 %85, label %88, label %86

86:                                               ; preds = %70
  %87 = and i16 %81, -2177
  store i16 %87, ptr %80, align 4
  br label %88

88:                                               ; preds = %86, %70
  store ptr %77, ptr %83, align 4
  %89 = getelementptr inbounds %struct.bio, ptr %79, i32 0, i32 8
  store i64 %75, ptr %89, align 4
  %90 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 2
  %93 = load i32, ptr %92, align 8
  %94 = or i32 %93, %91
  %95 = getelementptr inbounds %struct.bio, ptr %79, i32 0, i32 2
  store i32 %94, ptr %95, align 4
  %96 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 10
  %97 = load i32, ptr %96, align 16
  %98 = icmp eq i32 %97, 0
  %99 = select i1 %98, ptr @dio_bio_end_io, ptr @dio_bio_end_aio
  %100 = getelementptr inbounds %struct.bio, ptr %79, i32 0, i32 10
  store ptr %99, ptr %100, align 4
  %101 = getelementptr inbounds %struct.dio, ptr %0, i32 0, i32 17
  %102 = load ptr, ptr %101, align 8
  %103 = getelementptr inbounds %struct.kiocb, ptr %102, i32 0, i32 5
  %104 = load i16, ptr %103, align 4
  %105 = getelementptr inbounds %struct.bio, ptr %79, i32 0, i32 5
  store i16 %104, ptr %105, align 4
  store ptr %79, ptr %1, align 8
  %106 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 19
  %107 = load i64, ptr %106, align 8
  %108 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 12
  store i64 %107, ptr %108, align 8
  %109 = getelementptr inbounds %struct.dio_submit, ptr %1, i32 0, i32 9
  store i32 0, ptr %109, align 8
  br label %110

110:                                              ; preds = %88, %62
  %111 = phi i32 [ %59, %62 ], [ 0, %88 ]
  ret i32 %111
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_status_to_errno(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_check_pages_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bio_release_pages(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dio_bio_end_aio(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 6
  %5 = load i8, ptr %4, align 2
  %6 = getelementptr inbounds %struct.dio, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.dio, ptr %3, i32 0, i32 12
  %11 = load i8, ptr %10, align 1, !range !14
  %12 = icmp ne i8 %11, 0
  br label %13

13:                                               ; preds = %9, %1
  %14 = phi i1 [ false, %1 ], [ %12, %9 ]
  switch i8 %5, label %20 [
    i8 0, label %24
    i8 12, label %15
  ]

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 2097152
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %13
  br label %21

21:                                               ; preds = %20, %15
  %22 = phi i32 [ -5, %20 ], [ -11, %15 ]
  %23 = getelementptr inbounds %struct.dio, ptr %3, i32 0, i32 13
  store i32 %22, ptr %23, align 8
  br label %24

24:                                               ; preds = %21, %13
  %25 = getelementptr inbounds %struct.dio, ptr %3, i32 0, i32 10
  %26 = load i32, ptr %25, align 16
  %27 = icmp eq i32 %26, 0
  %28 = xor i1 %14, true
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  tail call void @bio_check_pages_dirty(ptr noundef %0) #8
  br label %38

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 3
  %33 = load i16, ptr %32, align 4
  %34 = and i16 %33, 1
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  tail call void @__bio_release_pages(ptr noundef %0, i1 noundef zeroext %14) #8
  br label %37

37:                                               ; preds = %36, %31
  tail call void @bio_put(ptr noundef %0) #8
  br label %38

38:                                               ; preds = %37, %30
  %39 = getelementptr inbounds %struct.dio, ptr %3, i32 0, i32 8
  %40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %39) #8
  %41 = getelementptr inbounds %struct.dio, ptr %3, i32 0, i32 14
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, -1
  store i32 %43, ptr %41, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.dio, ptr %3, i32 0, i32 16
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = tail call i32 @wake_up_process(ptr noundef nonnull %47) #8
  br label %51

51:                                               ; preds = %49, %45
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %39, i32 noundef %40) #8
  br label %87

52:                                               ; preds = %38
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %39, i32 noundef %40) #8
  %53 = icmp eq i32 %43, 0
  br i1 %53, label %54, label %87

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.dio, ptr %3, i32 0, i32 18
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %85, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.dio, ptr %3, i32 0, i32 11
  %60 = load i8, ptr %59, align 4, !range !14
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = load i32, ptr %6, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %85

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.dio, ptr %3, i32 0, i32 4
  %67 = load ptr, ptr %66, align 16
  %68 = getelementptr inbounds %struct.inode, ptr %67, i32 0, i32 9
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.address_space, ptr %69, i32 0, i32 7
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %65, %58
  %74 = getelementptr inbounds %struct.dio, ptr %3, i32 0, i32 19
  store i32 -32, ptr %74, align 16
  %75 = getelementptr inbounds %struct.dio, ptr %3, i32 0, i32 19, i32 0, i32 1
  store volatile ptr %75, ptr %75, align 4
  %76 = getelementptr inbounds %struct.dio, ptr %3, i32 0, i32 19, i32 0, i32 2
  store ptr %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.dio, ptr %3, i32 0, i32 19, i32 0, i32 3
  store ptr @dio_aio_complete_work, ptr %77, align 4
  %78 = getelementptr inbounds %struct.dio, ptr %3, i32 0, i32 4
  %79 = load ptr, ptr %78, align 16
  %80 = getelementptr inbounds %struct.inode, ptr %79, i32 0, i32 8
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.super_block, ptr %81, i32 0, i32 45
  %83 = load ptr, ptr %82, align 4
  %84 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %83, ptr noundef %74) #8
  br label %87

85:                                               ; preds = %65, %62, %54
  %86 = tail call fastcc i32 @dio_complete(ptr noundef %3, i32 noundef 0, i32 noundef 1)
  br label %87

87:                                               ; preds = %85, %73, %52, %51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dio_bio_end_io(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dio, ptr %3, i32 0, i32 8
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #8
  %6 = getelementptr inbounds %struct.dio, ptr %3, i32 0, i32 15
  %7 = load ptr, ptr %6, align 64
  store ptr %7, ptr %2, align 4
  store ptr %0, ptr %6, align 64
  %8 = getelementptr inbounds %struct.dio, ptr %3, i32 0, i32 14
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  store i32 %10, ptr %8, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.dio, ptr %3, i32 0, i32 16
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @wake_up_process(ptr noundef nonnull %14) #8
  br label %18

18:                                               ; preds = %16, %12, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dio_aio_complete_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -80
  %3 = tail call fastcc i32 @dio_complete(ptr noundef %2, i32 noundef 0, i32 noundef 3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_set_pages_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_io_schedule() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_inode_pages2_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dio_warn_stale_pagecache(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }

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
!8 = !{i64 2153146082}
!9 = !{i64 448762, i64 2147938733, i64 2147938759, i64 2147938806, i64 2147938828, i64 2147938856, i64 2147938876}
!10 = !{i64 460933, i64 460954, i64 460977, i64 460996, i64 461015}
!11 = !{i64 2153146468}
!12 = !{i64 448580}
!13 = !{!"auto-init"}
!14 = !{i8 0, i8 2}
!15 = !{i64 2151547033}
!16 = !{i64 2151546875}
!17 = !{i64 2151547177}
!18 = !{i64 2149420256}
!19 = !{i64 2147950945, i64 2147950971, i64 2147951000, i64 2147951034, i64 2147951065, i64 2147951088}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{i64 2153136950, i64 2153137429, i64 2153136987, i64 2153137043, i64 2153137077, i64 2153137101, i64 2153137142, i64 2153137163, i64 2153137191, i64 2153137225}
!23 = !{i64 2153146846, i64 2153147325, i64 2153146883, i64 2153146939, i64 2153146973, i64 2153146997, i64 2153147038, i64 2153147059, i64 2153147087, i64 2153147121}
!24 = !{i64 2148051600}
!25 = !{i64 2147953986, i64 2147954018, i64 2147954047, i64 2147954081, i64 2147954112, i64 2147954135}
!26 = !{i64 2148051803}
!27 = !{!"branch_weights", i32 1, i32 4001}
!28 = !{i64 2153151315, i64 2153151795, i64 2153151352, i64 2153151408, i64 2153151442, i64 2153151466, i64 2153151507, i64 2153151528, i64 2153151556, i64 2153151590}
!29 = !{i64 2153152395, i64 2153152875, i64 2153152432, i64 2153152488, i64 2153152522, i64 2153152546, i64 2153152587, i64 2153152608, i64 2153152636, i64 2153152670}
!30 = !{i64 2153158020, i64 2153158500, i64 2153158057, i64 2153158113, i64 2153158147, i64 2153158171, i64 2153158212, i64 2153158233, i64 2153158261, i64 2153158295}
!31 = !{i64 2153159045, i64 2153159525, i64 2153159082, i64 2153159138, i64 2153159172, i64 2153159196, i64 2153159237, i64 2153159258, i64 2153159286, i64 2153159320}
!32 = !{i64 2153149421, i64 2153149900, i64 2153149458, i64 2153149514, i64 2153149548, i64 2153149572, i64 2153149613, i64 2153149634, i64 2153149662, i64 2153149696}
!33 = !{i64 2153148018, i64 2153148497, i64 2153148055, i64 2153148111, i64 2153148145, i64 2153148169, i64 2153148210, i64 2153148231, i64 2153148259, i64 2153148293}
