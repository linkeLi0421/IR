; ModuleID = '/llk/IR/block/fops.c_pt.bc'
source_filename = "../block/fops.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.page = type { i32, %union.anon, %union.anon.78, %struct.atomic_t }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.78 = type { %struct.atomic_t }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, %union.anon.27, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%union.anon.27 = type {}
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.65, %union.anon.66 }
%union.anon.65 = type { ptr }
%union.anon.66 = type { i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.file = type { %union.anon.2, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
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
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.lockdep_map = type {}
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.59, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.38 }
%struct.llist_node = type { ptr }
%union.anon.38 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.39 }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.59 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.79, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.80, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.81, ptr, %struct.address_space, %struct.list_head, %union.anon.82, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.79 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.80 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.81 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.82 = type { ptr }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.blkdev_dio = type { %union.anon.85, i32, %struct.atomic_t, i32, [48 x i8], %struct.bio, [56 x i8] }
%union.anon.85 = type { ptr }

@def_blk_aops = dso_local local_unnamed_addr constant %struct.address_space_operations { ptr @blkdev_writepage, ptr @blkdev_readpage, ptr @blkdev_writepages, ptr @__set_page_dirty_buffers, ptr null, ptr @blkdev_readahead, ptr @blkdev_write_begin, ptr @blkdev_write_end, ptr null, ptr null, ptr null, ptr null, ptr @blkdev_direct_IO, ptr @buffer_migrate_page_norefs, ptr null, ptr null, ptr null, ptr null, ptr @buffer_check_dirty_writeback, ptr null, ptr null, ptr null }, align 4
@def_blk_fops = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @blkdev_llseek, ptr null, ptr null, ptr @blkdev_read_iter, ptr @blkdev_write_iter, ptr @iocb_bio_iopoll, ptr null, ptr null, ptr null, ptr @blkdev_ioctl, ptr null, ptr @generic_file_mmap, i32 0, ptr @blkdev_open, ptr null, ptr @blkdev_close, ptr @blkdev_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr null, ptr @blkdev_fallocate, ptr null, ptr null, ptr null, ptr null }, align 4
@__initcall__kmod_fops__296_715_blkdev_init6 = internal global ptr @blkdev_init, section ".initcall6.init", align 4
@blkdev_dio_pool = internal global %struct.bio_set zeroinitializer, align 4
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_fops__296_715_blkdev_init6], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blkdev_writepage(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @block_write_full_page(ptr noundef %0, ptr noundef nonnull @blkdev_get_block, ptr noundef %1) #8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blkdev_readpage(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @block_read_full_page(ptr noundef %1, ptr noundef nonnull @blkdev_get_block) #8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blkdev_writepages(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @generic_writepages(ptr noundef %0, ptr noundef %1) #8
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_buffers(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @blkdev_readahead(ptr noundef %0) #0 {
  tail call void @mpage_readahead(ptr noundef %0, ptr noundef nonnull @blkdev_get_block) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blkdev_write_begin(ptr nocapture noundef readnone %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr nocapture noundef readnone %6) #0 {
  %8 = tail call i32 @block_write_begin(ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef nonnull @blkdev_get_block) #8
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blkdev_write_end(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = tail call i32 @block_write_end(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #8
  tail call void @unlock_page(ptr noundef %5) #8
  %9 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !8

13:                                               ; preds = %7
  %14 = add i32 %10, -1
  br label %17

15:                                               ; preds = %7
  %16 = ptrtoint ptr %5 to i32
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #8, !srcloc !10
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #8, !srcloc !11
  %22 = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  tail call void @__put_page(ptr noundef %19) #8
  br label %25

25:                                               ; preds = %24, %17
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blkdev_direct_IO(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [4 x %struct.bio_vec], align 4
  %4 = alloca %struct.bio, align 4
  %5 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %231, label %8

8:                                                ; preds = %2
  %9 = load i8, ptr %1, align 8
  %10 = icmp eq i8 %9, 2
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @iov_iter_npages(ptr noundef %1, i32 noundef 257) #8
  %13 = icmp ult i32 %12, 257
  br i1 %13, label %14, label %229, !prof !8

14:                                               ; preds = %11, %8
  %15 = phi i32 [ %12, %11 ], [ 0, %8 ]
  %16 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  %19 = load ptr, ptr %0, align 8
  %20 = getelementptr inbounds %struct.file, ptr %19, i32 0, i32 15
  %21 = load ptr, ptr %20, align 8
  br i1 %18, label %22, label %140

22:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %3, i8 0, i32 48, i1 false) #8, !annotation !13
  %23 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %24 = load i64, ptr %23, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #8, !annotation !13
  %25 = tail call i32 @iov_iter_alignment(ptr noundef %1) #8
  %26 = zext i32 %25 to i64
  %27 = or i64 %24, %26
  %28 = getelementptr inbounds %struct.block_device, ptr %21, i32 0, i32 18
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.request_queue, ptr %29, i32 0, i32 32, i32 9
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  %35 = add i32 %33, -1
  %36 = select i1 %34, i32 511, i32 %35
  br label %37

37:                                               ; preds = %31, %22
  %38 = phi i32 [ 511, %22 ], [ %36, %31 ]
  %39 = zext i32 %38 to i64
  %40 = and i64 %27, %39
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %138

42:                                               ; preds = %37
  %43 = icmp ult i32 %15, 5
  br i1 %43, label %48, label %44

44:                                               ; preds = %42
  %45 = mul nuw nsw i32 %15, 12
  %46 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %45, i32 noundef 3264) #9
  %47 = icmp eq ptr %46, null
  br i1 %47, label %138, label %48

48:                                               ; preds = %44, %42
  %49 = phi ptr [ %46, %44 ], [ %3, %42 ]
  %50 = trunc i32 %15 to i16
  call void @bio_init(ptr noundef nonnull %4, ptr noundef nonnull %49, i16 noundef zeroext %50) #8
  %51 = getelementptr inbounds %struct.bio, ptr %4, i32 0, i32 3
  %52 = load i16, ptr %51, align 4
  %53 = and i16 %52, -2049
  store i16 %53, ptr %51, align 4
  %54 = getelementptr inbounds %struct.bio, ptr %4, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %21
  br i1 %56, label %59, label %57

57:                                               ; preds = %48
  %58 = and i16 %52, -2177
  store i16 %58, ptr %51, align 4
  br label %59

59:                                               ; preds = %57, %48
  store ptr %21, ptr %54, align 4
  %60 = ashr i64 %24, 9
  %61 = getelementptr inbounds %struct.bio, ptr %4, i32 0, i32 8
  store i64 %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 5
  %63 = load i16, ptr %62, align 4
  %64 = getelementptr inbounds %struct.bio, ptr %4, i32 0, i32 5
  store i16 %63, ptr %64, align 4
  %65 = tail call ptr @llvm.thread.pointer() #8
  %66 = getelementptr inbounds %struct.bio, ptr %4, i32 0, i32 11
  store ptr %65, ptr %66, align 4
  %67 = getelementptr inbounds %struct.bio, ptr %4, i32 0, i32 10
  store ptr @blkdev_bio_end_io_simple, ptr %67, align 4
  %68 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 6
  %69 = load i16, ptr %68, align 2
  %70 = getelementptr inbounds %struct.bio, ptr %4, i32 0, i32 4
  store i16 %69, ptr %70, align 2
  %71 = call i32 @bio_iov_iter_get_pages(ptr noundef nonnull %4, ptr noundef %1) #8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %133, !prof !8

73:                                               ; preds = %59
  %74 = getelementptr inbounds %struct.bio, ptr %4, i32 0, i32 8, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 2
  %77 = load i8, ptr %76, align 2, !range !14
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load i8, ptr %1, align 8
  %81 = icmp eq i8 %80, 0
  %82 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 4
  %83 = load i32, ptr %82, align 8
  br label %90

84:                                               ; preds = %73
  %85 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 4
  %86 = load i32, ptr %85, align 8
  %87 = and i32 %86, 2
  %88 = icmp eq i32 %87, 0
  %89 = select i1 %88, i32 34817, i32 165889
  br label %90

90:                                               ; preds = %84, %79
  %91 = phi i32 [ %83, %79 ], [ %86, %84 ]
  %92 = phi i32 [ 0, %79 ], [ %89, %84 ]
  %93 = phi i1 [ %81, %79 ], [ false, %84 ]
  %94 = getelementptr inbounds %struct.bio, ptr %4, i32 0, i32 2
  %95 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 4
  %96 = shl i32 %91, 18
  %97 = and i32 %96, 2097152
  %98 = or i32 %97, %92
  store i32 %98, ptr %94, align 4
  %99 = and i32 %91, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %90
  %102 = or i32 %98, 16777216
  store i32 %102, ptr %94, align 4
  %103 = load ptr, ptr %16, align 8
  %104 = icmp eq ptr %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = or i32 %92, 18874368
  store i32 %106, ptr %94, align 4
  br label %107

107:                                              ; preds = %105, %101, %90
  call void @submit_bio(ptr noundef nonnull %4) #8
  %108 = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 1
  store volatile i32 2, ptr %108, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %109 = load volatile ptr, ptr %66, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %122, label %111

111:                                              ; preds = %119, %107
  %112 = load i32, ptr %95, align 8
  %113 = and i32 %112, 1
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = call i32 @bio_poll(ptr noundef nonnull %4, ptr noundef null, i32 noundef 0) #8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115, %111
  call void @blk_io_schedule() #8
  br label %119

119:                                              ; preds = %118, %115
  store volatile i32 2, ptr %108, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %120 = load volatile ptr, ptr %66, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %111

122:                                              ; preds = %119, %107
  store volatile i32 0, ptr %108, align 8
  %123 = load i16, ptr %51, align 4
  %124 = and i16 %123, 1
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  call void @__bio_release_pages(ptr noundef nonnull %4, i1 noundef zeroext %93) #8
  br label %127

127:                                              ; preds = %126, %122
  %128 = getelementptr inbounds %struct.bio, ptr %4, i32 0, i32 6
  %129 = load i8, ptr %128, align 2
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %133, label %131, !prof !8

131:                                              ; preds = %127
  %132 = call i32 @blk_status_to_errno(i8 noundef zeroext %129) #8
  br label %133

133:                                              ; preds = %131, %127, %59
  %134 = phi i32 [ %71, %59 ], [ %132, %131 ], [ %75, %127 ]
  %135 = icmp eq ptr %49, %3
  br i1 %135, label %137, label %136

136:                                              ; preds = %133
  call void @kfree(ptr noundef %49) #8
  br label %137

137:                                              ; preds = %136, %133
  call void @bio_uninit(ptr noundef nonnull %4) #8
  br label %138

138:                                              ; preds = %137, %44, %37
  %139 = phi i32 [ %134, %137 ], [ -22, %37 ], [ -12, %44 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #8
  br label %231

140:                                              ; preds = %14
  %141 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %142 = load i64, ptr %141, align 8
  %143 = tail call i32 @iov_iter_alignment(ptr noundef %1) #8
  %144 = zext i32 %143 to i64
  %145 = or i64 %142, %144
  %146 = getelementptr inbounds %struct.block_device, ptr %21, i32 0, i32 18
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %155, label %149

149:                                              ; preds = %140
  %150 = getelementptr inbounds %struct.request_queue, ptr %147, i32 0, i32 32, i32 9
  %151 = load i32, ptr %150, align 4
  %152 = icmp eq i32 %151, 0
  %153 = add i32 %151, -1
  %154 = select i1 %152, i32 511, i32 %153
  br label %155

155:                                              ; preds = %149, %140
  %156 = phi i32 [ 511, %140 ], [ %154, %149 ]
  %157 = zext i32 %156 to i64
  %158 = and i64 %145, %157
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %231

160:                                              ; preds = %155
  %161 = trunc i32 %15 to i16
  %162 = tail call ptr @bio_alloc_kiocb(ptr noundef %0, i16 noundef zeroext %161, ptr noundef nonnull @blkdev_dio_pool) #8
  %163 = getelementptr i8, ptr %162, i32 -64
  %164 = getelementptr i8, ptr %162, i32 -52
  store i32 0, ptr %164, align 4
  store ptr %0, ptr %163, align 64
  %165 = getelementptr inbounds %struct.bio, ptr %162, i32 0, i32 3
  %166 = load i16, ptr %165, align 4
  %167 = and i16 %166, -2049
  store i16 %167, ptr %165, align 4
  %168 = getelementptr inbounds %struct.bio, ptr %162, i32 0, i32 1
  %169 = load ptr, ptr %168, align 4
  %170 = icmp eq ptr %169, %21
  br i1 %170, label %173, label %171

171:                                              ; preds = %160
  %172 = and i16 %166, -2177
  store i16 %172, ptr %165, align 4
  br label %173

173:                                              ; preds = %171, %160
  store ptr %21, ptr %168, align 4
  %174 = ashr i64 %142, 9
  %175 = getelementptr inbounds %struct.bio, ptr %162, i32 0, i32 8
  store i64 %174, ptr %175, align 4
  %176 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 5
  %177 = load i16, ptr %176, align 4
  %178 = getelementptr inbounds %struct.bio, ptr %162, i32 0, i32 5
  store i16 %177, ptr %178, align 4
  %179 = getelementptr inbounds %struct.bio, ptr %162, i32 0, i32 10
  store ptr @blkdev_bio_end_io_async, ptr %179, align 4
  %180 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 6
  %181 = load i16, ptr %180, align 2
  %182 = getelementptr inbounds %struct.bio, ptr %162, i32 0, i32 4
  store i16 %181, ptr %182, align 2
  %183 = load i8, ptr %1, align 8
  %184 = icmp eq i8 %183, 2
  br i1 %184, label %185, label %186

185:                                              ; preds = %173
  tail call void @bio_iov_bvec_set(ptr noundef %162, ptr noundef %1) #8
  br label %190

186:                                              ; preds = %173
  %187 = tail call i32 @bio_iov_iter_get_pages(ptr noundef %162, ptr noundef %1) #8
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %190, label %189, !prof !8

189:                                              ; preds = %186
  tail call void @bio_put(ptr noundef %162) #8
  br label %231

190:                                              ; preds = %186, %185
  %191 = getelementptr inbounds %struct.bio, ptr %162, i32 0, i32 8, i32 1
  %192 = load i32, ptr %191, align 4
  %193 = getelementptr i8, ptr %162, i32 -60
  store i32 %192, ptr %193, align 4
  %194 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 2
  %195 = load i8, ptr %194, align 2, !range !14
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %190
  %198 = getelementptr inbounds %struct.bio, ptr %162, i32 0, i32 2
  store i32 0, ptr %198, align 4
  %199 = load i8, ptr %1, align 8
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %201, label %211

201:                                              ; preds = %197
  %202 = load i32, ptr %164, align 4
  %203 = or i32 %202, 1
  store i32 %203, ptr %164, align 4
  tail call void @bio_set_pages_dirty(ptr noundef %162) #8
  br label %211

204:                                              ; preds = %190
  %205 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 4
  %206 = load i32, ptr %205, align 8
  %207 = and i32 %206, 2
  %208 = icmp eq i32 %207, 0
  %209 = select i1 %208, i32 34817, i32 165889
  %210 = getelementptr inbounds %struct.bio, ptr %162, i32 0, i32 2
  store i32 %209, ptr %210, align 4
  br label %211

211:                                              ; preds = %204, %201, %197
  %212 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 4
  %213 = load i32, ptr %212, align 8
  %214 = and i32 %213, 1
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %221, label %216

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct.bio, ptr %162, i32 0, i32 2
  %218 = load i32, ptr %217, align 4
  %219 = or i32 %218, 18874368
  store i32 %219, ptr %217, align 4
  tail call void @submit_bio(ptr noundef %162) #8
  %220 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 3
  store volatile ptr %162, ptr %220, align 4
  br label %231

221:                                              ; preds = %211
  %222 = and i32 %213, 8
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %228, label %224

224:                                              ; preds = %221
  %225 = getelementptr inbounds %struct.bio, ptr %162, i32 0, i32 2
  %226 = load i32, ptr %225, align 4
  %227 = or i32 %226, 2097152
  store i32 %227, ptr %225, align 4
  br label %228

228:                                              ; preds = %224, %221
  tail call void @submit_bio(ptr noundef %162) #8
  br label %231

229:                                              ; preds = %11
  %230 = tail call fastcc i32 @__blkdev_direct_IO(ptr noundef %0, ptr noundef %1)
  br label %231

231:                                              ; preds = %229, %228, %216, %189, %155, %138, %2
  %232 = phi i32 [ %139, %138 ], [ %230, %229 ], [ 0, %2 ], [ %187, %189 ], [ -22, %155 ], [ -529, %228 ], [ -529, %216 ]
  ret i32 %232
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @buffer_migrate_page_norefs(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @buffer_check_dirty_writeback(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @blkdev_llseek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 24
  tail call void @down_write(ptr noundef %7) #8
  %8 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 22
  %9 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 13
  br label %10

10:                                               ; preds = %18, %3
  %11 = load volatile i32, ptr %8, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %14, %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !17
  %15 = load volatile i32, ptr %8, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %14

18:                                               ; preds = %14, %10
  %19 = phi i32 [ %11, %10 ], [ %15, %14 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !18
  %20 = load i64, ptr %9, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !19
  %21 = load volatile i32, ptr %8, align 4
  %22 = icmp eq i32 %21, %19
  br i1 %22, label %23, label %10

23:                                               ; preds = %18
  %24 = tail call i64 @fixed_size_llseek(ptr noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef %20) #8
  tail call void @up_write(ptr noundef %7) #8
  ret i64 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blkdev_read_iter(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = shl i64 %7, 9
  %9 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %12 = load i32, ptr %11, align 8
  %13 = zext i32 %12 to i64
  %14 = add i64 %10, %13
  %15 = icmp sgt i64 %14, %8
  br i1 %15, label %16, label %24, !prof !20

16:                                               ; preds = %2
  %17 = icmp sgt i64 %8, %10
  br i1 %17, label %18, label %87

18:                                               ; preds = %16
  %19 = sub i64 %8, %10
  %20 = trunc i64 %19 to i32
  %21 = sub i32 %12, %20
  %22 = icmp ult i64 %19, %13
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 %20, ptr %11, align 8
  br label %24

24:                                               ; preds = %23, %18, %2
  %25 = phi i32 [ %20, %23 ], [ %12, %2 ], [ %12, %18 ]
  %26 = phi i32 [ %21, %23 ], [ 0, %2 ], [ %21, %18 ]
  %27 = icmp eq i32 %25, 0
  br i1 %27, label %81, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 4
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 131072
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %78, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %0, align 8
  %35 = getelementptr inbounds %struct.file, ptr %34, i32 0, i32 17
  %36 = load ptr, ptr %35, align 8
  %37 = and i32 %30, 8
  %38 = icmp eq i32 %37, 0
  %39 = zext i32 %25 to i64
  %40 = add i64 %10, -1
  %41 = add i64 %40, %39
  br i1 %38, label %53, label %42

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.address_space, ptr %36, i32 0, i32 7
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.address_space, ptr %36, i32 0, i32 1, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 100663296
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = tail call zeroext i1 @filemap_range_has_writeback(ptr noundef %36, i64 noundef %10, i64 noundef %41) #8
  br i1 %52, label %81, label %56

53:                                               ; preds = %33
  %54 = tail call i32 @filemap_write_and_wait_range(ptr noundef %36, i64 noundef %10, i64 noundef %41) #8
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %81, label %56

56:                                               ; preds = %53, %51, %46, %42
  %57 = load ptr, ptr %0, align 8
  %58 = getelementptr inbounds %struct.file, ptr %57, i32 0, i32 7
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 262144
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.file, ptr %57, i32 0, i32 1
  tail call void @touch_atime(ptr noundef %63) #8
  br label %64

64:                                               ; preds = %62, %56
  %65 = tail call i32 @blkdev_direct_IO(ptr noundef %0, ptr noundef %1)
  %66 = icmp sgt i32 %65, -1
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = zext i32 %65 to i64
  %69 = load i64, ptr %9, align 8
  %70 = add i64 %69, %68
  store i64 %70, ptr %9, align 8
  %71 = sub i32 %25, %65
  br label %72

72:                                               ; preds = %67, %64
  %73 = phi i32 [ %71, %67 ], [ %25, %64 ]
  %74 = load i32, ptr %11, align 8
  %75 = sub i32 %73, %74
  tail call void @iov_iter_revert(ptr noundef %1, i32 noundef %75) #8
  %76 = icmp ne i32 %73, 0
  %77 = select i1 %66, i1 %76, i1 false
  br i1 %77, label %78, label %81

78:                                               ; preds = %72, %28
  %79 = phi i32 [ 0, %28 ], [ %65, %72 ]
  %80 = tail call i32 @filemap_read(ptr noundef %0, ptr noundef %1, i32 noundef %79) #8
  br label %81

81:                                               ; preds = %78, %72, %53, %51, %24
  %82 = phi i32 [ %80, %78 ], [ 0, %24 ], [ %65, %72 ], [ %54, %53 ], [ -11, %51 ]
  %83 = icmp eq i32 %26, 0
  br i1 %83, label %87, label %84, !prof !8

84:                                               ; preds = %81
  %85 = load i32, ptr %11, align 8
  %86 = add i32 %85, %26
  store i32 %86, ptr %11, align 8
  br label %87

87:                                               ; preds = %84, %81, %16
  %88 = phi i32 [ 0, %16 ], [ %82, %84 ], [ %82, %81 ]
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blkdev_write_iter(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.blk_plug, align 4
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.block_device, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.block_device, ptr %6, i32 0, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = shl i64 %10, 9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !13
  %12 = getelementptr inbounds %struct.block_device, ptr %6, i32 0, i32 4
  %13 = load i8, ptr %12, align 8, !range !14
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %65

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.block_device, ptr %6, i32 0, i32 17
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.gendisk, ptr %17, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.block_device, ptr %19, i32 0, i32 4
  %21 = load i8, ptr %20, align 8, !range !14
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %65

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.gendisk, ptr %17, i32 0, i32 12
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %65

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 256
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %65

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %35 = load i32, ptr %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %65, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %39 = load i64, ptr %38, align 8
  %40 = icmp sgt i64 %11, %39
  br i1 %40, label %41, label %65

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 4
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 131080
  %45 = icmp eq i32 %44, 8
  br i1 %45, label %65, label %46

46:                                               ; preds = %41
  %47 = sub i64 %11, %39
  %48 = zext i32 %35 to i64
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = trunc i64 %47 to i32
  %52 = sub i32 %35, %51
  %53 = icmp ult i64 %47, %48
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 %51, ptr %34, align 8
  br label %55

55:                                               ; preds = %54, %50, %46
  %56 = phi i32 [ 0, %46 ], [ %52, %50 ], [ %52, %54 ]
  call void @blk_start_plug(ptr noundef nonnull %3) #8
  %57 = call i32 @__generic_file_write_iter(ptr noundef %0, ptr noundef %1) #8
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = call fastcc i32 @generic_write_sync(ptr noundef %0, i32 noundef %57)
  br label %61

61:                                               ; preds = %59, %55
  %62 = phi i32 [ %60, %59 ], [ %57, %55 ]
  %63 = load i32, ptr %34, align 8
  %64 = add i32 %63, %56
  store i32 %64, ptr %34, align 8
  call void @blk_finish_plug(ptr noundef nonnull %3) #8
  br label %65

65:                                               ; preds = %61, %41, %37, %33, %28, %23, %15, %2
  %66 = phi i32 [ %62, %61 ], [ -1, %23 ], [ 0, %33 ], [ -28, %37 ], [ -95, %41 ], [ -26, %28 ], [ -1, %2 ], [ -1, %15 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iocb_bio_iopoll(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_ioctl(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blkdev_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = or i32 %4, 131072
  store i32 %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %4, 2048
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 1207959552, i32 1207959616
  %11 = or i32 %10, %7
  %12 = and i32 %4, 128
  %13 = or i32 %12, %11
  %14 = and i32 %4, 3
  %15 = icmp eq i32 %14, 3
  %16 = or i32 %13, 256
  %17 = select i1 %15, i32 %16, i32 %13
  store i32 %17, ptr %6, align 8
  %18 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 12
  %19 = load i32, ptr %18, align 4
  %20 = tail call ptr @blkdev_get_by_dev(i32 noundef %19, i32 noundef %17, ptr noundef %1) #8
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = ptrtoint ptr %20 to i32
  br label %34

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %20, ptr %25, align 8
  %26 = getelementptr inbounds %struct.block_device, ptr %20, i32 0, i32 7
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 9
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 17
  store ptr %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.address_space, ptr %29, i32 0, i32 11
  %32 = tail call i32 @errseq_sample(ptr noundef %31) #8
  %33 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 18
  store i32 %32, ptr %33, align 4
  br label %34

34:                                               ; preds = %24, %22
  %35 = phi i32 [ %23, %22 ], [ 0, %24 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blkdev_close(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  tail call void @blkdev_put(ptr noundef %4, i32 noundef %6) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blkdev_fsync(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @file_write_and_wait_range(ptr noundef %0, i64 noundef %1, i64 noundef %2) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = tail call i32 @blkdev_issue_flush(ptr noundef %6) #8
  %11 = icmp eq i32 %10, -95
  %12 = select i1 %11, i32 0, i32 %10
  br label %13

13:                                               ; preds = %9, %4
  %14 = phi i32 [ %12, %9 ], [ %7, %4 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blkdev_fallocate(ptr nocapture noundef readonly %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @I_BDEV(ptr noundef %7) #8
  %9 = add i64 %2, -1
  %10 = add i64 %9, %3
  %11 = and i32 %1, -24
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %69

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.block_device, ptr %8, i32 0, i32 1
  %15 = load i64, ptr %14, align 8
  %16 = shl i64 %15, 9
  %17 = icmp sgt i64 %16, %2
  br i1 %17, label %18, label %69

18:                                               ; preds = %13
  %19 = icmp slt i64 %10, %16
  br i1 %19, label %26, label %20

20:                                               ; preds = %18
  %21 = and i32 %1, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %69, label %23

23:                                               ; preds = %20
  %24 = sub i64 %16, %2
  %25 = add i64 %16, -1
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi i64 [ %24, %23 ], [ %3, %18 ]
  %28 = phi i64 [ %25, %23 ], [ %10, %18 ]
  %29 = or i64 %27, %2
  %30 = getelementptr inbounds %struct.block_device, ptr %8, i32 0, i32 18
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.request_queue, ptr %31, i32 0, i32 32, i32 9
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  %37 = add i32 %35, -1
  %38 = select i1 %36, i32 511, i32 %37
  br label %39

39:                                               ; preds = %33, %26
  %40 = phi i32 [ 511, %26 ], [ %38, %33 ]
  %41 = zext i32 %40 to i64
  %42 = and i64 %29, %41
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %69

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 9
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.address_space, ptr %46, i32 0, i32 2
  tail call void @down_write(ptr noundef %47) #8
  %48 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %49 = load i32, ptr %48, align 8
  %50 = tail call i32 @truncate_bdev_range(ptr noundef %8, i32 noundef %49, i64 noundef %2, i64 noundef %28) #8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %44
  switch i32 %1, label %65 [
    i32 16, label %53
    i32 17, label %53
    i32 3, label %57
    i32 7, label %61
  ]

53:                                               ; preds = %52, %52
  %54 = ashr i64 %2, 9
  %55 = ashr i64 %27, 9
  %56 = tail call i32 @blkdev_issue_zeroout(ptr noundef %8, i64 noundef %54, i64 noundef %55, i32 noundef 3264, i32 noundef 1) #8
  br label %65

57:                                               ; preds = %52
  %58 = ashr i64 %2, 9
  %59 = ashr i64 %27, 9
  %60 = tail call i32 @blkdev_issue_zeroout(ptr noundef %8, i64 noundef %58, i64 noundef %59, i32 noundef 3264, i32 noundef 2) #8
  br label %65

61:                                               ; preds = %52
  %62 = ashr i64 %2, 9
  %63 = ashr i64 %27, 9
  %64 = tail call i32 @blkdev_issue_discard(ptr noundef %8, i64 noundef %62, i64 noundef %63, i32 noundef 3264, i32 noundef 0) #8
  br label %65

65:                                               ; preds = %61, %57, %53, %52, %44
  %66 = phi i32 [ %50, %44 ], [ %64, %61 ], [ %60, %57 ], [ %56, %53 ], [ -95, %52 ]
  %67 = load ptr, ptr %45, align 8
  %68 = getelementptr inbounds %struct.address_space, ptr %67, i32 0, i32 2
  tail call void @up_write(ptr noundef %68) #8
  br label %69

69:                                               ; preds = %65, %39, %20, %13, %4
  %70 = phi i32 [ %66, %65 ], [ -95, %4 ], [ -22, %13 ], [ -22, %20 ], [ -22, %39 ]
  ret i32 %70
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @blkdev_init() #2 section ".init.text" {
  %1 = tail call i32 @bioset_init(ptr noundef nonnull @blkdev_dio_pool, i32 noundef 4, i32 noundef 64, i32 noundef 5) #8
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_full_page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blkdev_get_block(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = tail call ptr @I_BDEV(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 6
  store ptr %5, ptr %6, align 8
  %7 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 3
  store i64 %1, ptr %7, align 8
  %8 = load volatile i32, ptr %2, align 4
  %9 = and i32 %8, 16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  tail call void @_set_bit(i32 noundef 4, ptr noundef %2) #8
  br label %12

12:                                               ; preds = %11, %4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @I_BDEV(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_read_full_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_writepages(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpage_readahead(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_begin(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__blkdev_direct_IO(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.blk_plug, align 4
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !13
  %7 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 2
  %8 = load i8, ptr %7, align 2, !range !14
  %9 = icmp eq i8 %8, 0
  %10 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = tail call i32 @iov_iter_alignment(ptr noundef %1) #8
  %13 = zext i32 %12 to i64
  %14 = or i64 %11, %13
  %15 = getelementptr inbounds %struct.block_device, ptr %6, i32 0, i32 18
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.request_queue, ptr %16, i32 0, i32 32, i32 9
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  %22 = add i32 %20, -1
  %23 = select i1 %21, i32 511, i32 %22
  br label %24

24:                                               ; preds = %18, %2
  %25 = phi i32 [ 511, %2 ], [ %23, %18 ]
  %26 = zext i32 %25 to i64
  %27 = and i64 %14, %26
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %139

29:                                               ; preds = %24
  %30 = tail call ptr @bio_alloc_kiocb(ptr noundef %0, i16 noundef zeroext 256, ptr noundef nonnull @blkdev_dio_pool) #8
  %31 = getelementptr i8, ptr %30, i32 -64
  %32 = getelementptr i8, ptr %30, i32 -56
  store volatile i32 1, ptr %32, align 4
  %33 = getelementptr inbounds %struct.bio, ptr %30, i32 0, i32 3
  %34 = load i16, ptr %33, align 4
  %35 = or i16 %34, 64
  store i16 %35, ptr %33, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !21
  %36 = getelementptr inbounds %struct.bio, ptr %30, i32 0, i32 15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %36) #8, !srcloc !10
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 1, ptr elementtype(i32) %36) #8, !srcloc !22
  %38 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = tail call ptr @llvm.thread.pointer() #8
  br label %43

43:                                               ; preds = %41, %29
  %44 = phi i32 [ 2, %41 ], [ 0, %29 ]
  %45 = phi ptr [ %42, %41 ], [ %0, %29 ]
  %46 = getelementptr i8, ptr %30, i32 -52
  store i32 %44, ptr %46, align 4
  store ptr %45, ptr %31, align 64
  %47 = getelementptr i8, ptr %30, i32 -60
  store i32 0, ptr %47, align 4
  br i1 %9, label %48, label %53

48:                                               ; preds = %43
  %49 = load i8, ptr %1, align 8
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = or i32 %44, 1
  store i32 %52, ptr %46, align 4
  br label %53

53:                                               ; preds = %51, %48, %43
  call void @blk_start_plug(ptr noundef nonnull %3) #8
  %54 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 5
  %55 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 6
  %56 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 4
  br label %57

57:                                               ; preds = %114, %53
  %58 = phi ptr [ %30, %53 ], [ %119, %114 ]
  %59 = phi i64 [ %11, %53 ], [ %116, %114 ]
  %60 = getelementptr inbounds %struct.bio, ptr %58, i32 0, i32 3
  %61 = load i16, ptr %60, align 4
  %62 = and i16 %61, -2049
  store i16 %62, ptr %60, align 4
  %63 = getelementptr inbounds %struct.bio, ptr %58, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, %6
  br i1 %65, label %68, label %66

66:                                               ; preds = %57
  %67 = and i16 %61, -2177
  store i16 %67, ptr %60, align 4
  br label %68

68:                                               ; preds = %66, %57
  store ptr %6, ptr %63, align 4
  %69 = ashr i64 %59, 9
  %70 = getelementptr inbounds %struct.bio, ptr %58, i32 0, i32 8
  store i64 %69, ptr %70, align 4
  %71 = load i16, ptr %54, align 4
  %72 = getelementptr inbounds %struct.bio, ptr %58, i32 0, i32 5
  store i16 %71, ptr %72, align 4
  %73 = getelementptr inbounds %struct.bio, ptr %58, i32 0, i32 11
  store ptr %31, ptr %73, align 4
  %74 = getelementptr inbounds %struct.bio, ptr %58, i32 0, i32 10
  store ptr @blkdev_bio_end_io, ptr %74, align 4
  %75 = load i16, ptr %55, align 2
  %76 = getelementptr inbounds %struct.bio, ptr %58, i32 0, i32 4
  store i16 %75, ptr %76, align 2
  %77 = call i32 @bio_iov_iter_get_pages(ptr noundef %58, ptr noundef %1) #8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79, !prof !8

79:                                               ; preds = %68
  %80 = getelementptr inbounds %struct.bio, ptr %58, i32 0, i32 6
  store i8 10, ptr %80, align 2
  call void @bio_endio(ptr noundef %58) #8
  br label %120

81:                                               ; preds = %68
  br i1 %9, label %82, label %88

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct.bio, ptr %58, i32 0, i32 2
  store i32 0, ptr %83, align 4
  %84 = load i32, ptr %46, align 4
  %85 = and i32 %84, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %82
  call void @bio_set_pages_dirty(ptr noundef %58) #8
  br label %94

88:                                               ; preds = %81
  %89 = load i32, ptr %56, align 8
  %90 = and i32 %89, 2
  %91 = icmp eq i32 %90, 0
  %92 = select i1 %91, i32 34817, i32 165889
  %93 = getelementptr inbounds %struct.bio, ptr %58, i32 0, i32 2
  store i32 %92, ptr %93, align 4
  br label %94

94:                                               ; preds = %88, %87, %82
  %95 = load i32, ptr %56, align 8
  %96 = and i32 %95, 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.bio, ptr %58, i32 0, i32 2
  %100 = load i32, ptr %99, align 4
  %101 = or i32 %100, 2097152
  store i32 %101, ptr %99, align 4
  br label %102

102:                                              ; preds = %98, %94
  %103 = getelementptr inbounds %struct.bio, ptr %58, i32 0, i32 8, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = load i32, ptr %47, align 4
  %106 = add i32 %105, %104
  store i32 %106, ptr %47, align 4
  %107 = load i32, ptr %103, align 4
  %108 = load i8, ptr %1, align 8
  %109 = icmp eq i8 %108, 2
  br i1 %109, label %113, label %110

110:                                              ; preds = %102
  %111 = call i32 @iov_iter_npages(ptr noundef %1, i32 noundef 256) #8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110, %102
  call void @submit_bio(ptr noundef %58) #8
  br label %120

114:                                              ; preds = %110
  %115 = zext i32 %107 to i64
  %116 = add i64 %59, %115
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #8, !srcloc !10
  %117 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #8, !srcloc !22
  call void @submit_bio(ptr noundef %58) #8
  %118 = trunc i32 %111 to i16
  %119 = call ptr @bio_alloc_bioset(i32 noundef 3264, i16 noundef zeroext %118, ptr noundef nonnull @fs_bio_set) #8
  br label %57

120:                                              ; preds = %113, %79
  call void @blk_finish_plug(ptr noundef nonnull %3) #8
  br i1 %40, label %121, label %139

121:                                              ; preds = %120
  %122 = tail call ptr @llvm.thread.pointer() #8
  %123 = getelementptr inbounds %struct.task_struct, ptr %122, i32 0, i32 1
  store volatile i32 2, ptr %123, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !23
  %124 = load volatile ptr, ptr %31, align 64
  %125 = icmp eq ptr %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %126, %121
  call void @blk_io_schedule() #8
  store volatile i32 2, ptr %123, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !23
  %127 = load volatile ptr, ptr %31, align 64
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %126

129:                                              ; preds = %126, %121
  store volatile i32 0, ptr %123, align 8
  br i1 %78, label %130, label %137

130:                                              ; preds = %129
  %131 = getelementptr inbounds %struct.bio, ptr %30, i32 0, i32 6
  %132 = load i8, ptr %131, align 2
  %133 = call i32 @blk_status_to_errno(i8 noundef zeroext %132) #8
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %137, !prof !8

135:                                              ; preds = %130
  %136 = load i32, ptr %47, align 4
  br label %137

137:                                              ; preds = %135, %130, %129
  %138 = phi i32 [ %136, %135 ], [ %133, %130 ], [ %77, %129 ]
  call void @bio_put(ptr noundef %30) #8
  br label %139

139:                                              ; preds = %137, %120, %24
  %140 = phi i32 [ %138, %137 ], [ -22, %24 ], [ -529, %120 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret i32 %140
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_npages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_alignment(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_init(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @blkdev_bio_end_io_simple(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  store volatile ptr null, ptr %2, align 4
  %4 = tail call ptr @llvm.thread.pointer() #8
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  store volatile i32 0, ptr %7, align 8
  br label %10

8:                                                ; preds = %1
  %9 = tail call i32 @wake_up_process(ptr noundef %3) #8
  br label %10

10:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_iov_iter_get_pages(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_poll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_io_schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_status_to_errno(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_uninit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bio_release_pages(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_kiocb(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @blkdev_bio_end_io_async(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.kiocb, ptr %3, i32 0, i32 3
  store volatile ptr null, ptr %4, align 4
  %5 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 6
  %6 = load i8, ptr %5, align 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %15, !prof !8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 -60
  %10 = load i32, ptr %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.kiocb, ptr %3, i32 0, i32 1
  %13 = load i64, ptr %12, align 8
  %14 = add i64 %13, %11
  store i64 %14, ptr %12, align 8
  br label %17

15:                                               ; preds = %1
  %16 = tail call i32 @blk_status_to_errno(i8 noundef zeroext %6) #8
  br label %17

17:                                               ; preds = %15, %8
  %18 = phi i32 [ %10, %8 ], [ %16, %15 ]
  %19 = getelementptr inbounds %struct.kiocb, ptr %3, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef %3, i32 noundef %18) #8
  %21 = getelementptr i8, ptr %0, i32 -52
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  tail call void @bio_check_pages_dirty(ptr noundef %0) #8
  br label %33

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 3
  %28 = load i16, ptr %27, align 4
  %29 = and i16 %28, 1
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  tail call void @__bio_release_pages(ptr noundef %0, i1 noundef zeroext false) #8
  br label %32

32:                                               ; preds = %31, %26
  tail call void @bio_put(ptr noundef %0) #8
  br label %33

33:                                               ; preds = %32, %25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_iov_bvec_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_set_pages_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_check_pages_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @blkdev_bio_end_io(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.blkdev_dio, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 6
  %9 = load i8, ptr %8, align 2
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.blkdev_dio, ptr %3, i32 0, i32 5, i32 6
  %13 = load i8, ptr %12, align 2
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i8 %9, ptr %12, align 2
  br label %16

16:                                               ; preds = %15, %11, %1
  %17 = getelementptr inbounds %struct.blkdev_dio, ptr %3, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #8, !srcloc !10
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #8, !srcloc !11
  %19 = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %16
  %22 = load i32, ptr %4, align 4
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  %25 = load ptr, ptr %3, align 64
  br i1 %24, label %26, label %46

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.kiocb, ptr %25, i32 0, i32 3
  store volatile ptr null, ptr %27, align 4
  %28 = getelementptr inbounds %struct.blkdev_dio, ptr %3, i32 0, i32 5
  %29 = getelementptr inbounds %struct.blkdev_dio, ptr %3, i32 0, i32 5, i32 6
  %30 = load i8, ptr %29, align 2
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %39, !prof !8

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.blkdev_dio, ptr %3, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.kiocb, ptr %25, i32 0, i32 1
  %37 = load i64, ptr %36, align 8
  %38 = add i64 %37, %35
  store i64 %38, ptr %36, align 8
  br label %41

39:                                               ; preds = %26
  %40 = tail call i32 @blk_status_to_errno(i8 noundef zeroext %30) #8
  br label %41

41:                                               ; preds = %39, %32
  %42 = phi i32 [ %34, %32 ], [ %40, %39 ]
  %43 = load ptr, ptr %3, align 64
  %44 = getelementptr inbounds %struct.kiocb, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8
  tail call void %45(ptr noundef %25, i32 noundef %42) #8
  tail call void @bio_put(ptr noundef %28) #8
  br label %53

46:                                               ; preds = %21
  store volatile ptr null, ptr %3, align 64
  %47 = tail call ptr @llvm.thread.pointer() #8
  %48 = icmp eq ptr %47, %25
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 1
  store volatile i32 0, ptr %50, align 8
  br label %53

51:                                               ; preds = %46
  %52 = tail call i32 @wake_up_process(ptr noundef %25) #8
  br label %53

53:                                               ; preds = %51, %49, %41, %16
  br i1 %7, label %55, label %54

54:                                               ; preds = %53
  tail call void @bio_check_pages_dirty(ptr noundef %0) #8
  br label %62

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 3
  %57 = load i16, ptr %56, align 4
  %58 = and i16 %57, 1
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  tail call void @__bio_release_pages(ptr noundef %0, i1 noundef zeroext false) #8
  br label %61

61:                                               ; preds = %60, %55
  tail call void @bio_put(ptr noundef %0) #8
  br label %62

62:                                               ; preds = %61, %54
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @fixed_size_llseek(ptr noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @filemap_range_has_writeback(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__generic_file_write_iter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @generic_write_sync(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = sext i32 %1 to i64
  %12 = sub i64 %10, %11
  %13 = add i64 %10, -1
  %14 = lshr i32 %4, 2
  %15 = and i32 %14, 1
  %16 = xor i32 %15, 1
  %17 = tail call i32 @vfs_fsync_range(ptr noundef %8, i64 noundef %12, i64 noundef %13, i32 noundef %16) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %7, %2
  br label %20

20:                                               ; preds = %19, %7
  %21 = phi i32 [ %17, %7 ], [ %1, %19 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkdev_get_by_dev(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_sample(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkdev_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @truncate_bdev_range(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_zeroout(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_discard(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bioset_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2148457850}
!10 = !{i64 855785, i64 2148345756, i64 2148345782, i64 2148345829, i64 2148345851, i64 2148345879, i64 2148345899}
!11 = !{i64 2148360212, i64 2148360244, i64 2148360273, i64 2148360307, i64 2148360338, i64 2148360361}
!12 = !{i64 2148458053}
!13 = !{!"auto-init"}
!14 = !{i8 0, i8 2}
!15 = !{i64 2153833088}
!16 = !{i64 2151831935}
!17 = !{i64 2151831777}
!18 = !{i64 2151832079}
!19 = !{i64 2149265656}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 2152904032}
!22 = !{i64 2148357171, i64 2148357197, i64 2148357226, i64 2148357260, i64 2148357291, i64 2148357314}
!23 = !{i64 2153847371}
