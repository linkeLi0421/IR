; ModuleID = '/llk/IR/fs/ubifs/budget.c_pt.bc'
source_filename = "../fs/ubifs/budget.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ubifs_info = type { ptr, ptr, i32, i64, i64, %struct.spinlock, i32, i32, [16 x i8], i32, i32, i32, %struct.mutex, i32, i64, %struct.rb_root, i64, %struct.spinlock, i32, ptr, i64, i64, %struct.list_head, i32, %struct.rw_semaphore, i32, %struct.spinlock, %struct.wait_queue_head, %struct.kobject, %struct.completion, i16, %struct.mutex, %struct.ubifs_zbranch, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.rb_root, ptr, ptr, i32, i32, %struct.mutex, %struct.bu_info, %struct.mutex, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, [14 x %struct.ubifs_node_range], ptr, %struct.ubi_device_info, %struct.ubi_volume_info, %struct.rb_root, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, [24 x i8], i32, i32, i32, ptr, %struct.list_head, i32, i32, i32, %struct.list_head, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [3 x %struct.ubifs_lpt_heap], %struct.ubifs_lpt_heap, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i64, i64, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, ptr, ptr, i32, ptr, i8, %struct.list_head, %struct.list_head, i64, %struct.list_head, ptr, %struct.rb_root, %struct.ubifs_mount_opts, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ubifs_zbranch = type { %union.ubifs_key, %union.anon.72, i32, i32, i32, [0 x i8] }
%union.ubifs_key = type { [1 x i64] }
%union.anon.72 = type { ptr }
%struct.bu_info = type { %union.ubifs_key, [32 x %struct.ubifs_zbranch], ptr, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.ubifs_lp_stats = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.ubifs_budg_info = type { i64, i64, i64, i64, i64, i32, i8, i32, i32, i32 }
%struct.ubifs_node_range = type { %union.anon.73, i32 }
%union.anon.73 = type { i32 }
%struct.ubi_device_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ubi_volume_info = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ubifs_lpt_heap = type { ptr, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.ubifs_mount_opts = type { i16, [2 x i8] }
%struct.ubifs_budget_req = type { i24, i16, i32, i32, i32 }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.48 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.67 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ubifs_inode = type { %struct.inode, i64, i64, i32, i32, i32, i8, %struct.mutex, %struct.rw_semaphore, %struct.spinlock, i64, i64, i32, i32, i32, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.38, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.39, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.40, ptr, %struct.address_space, %struct.list_head, %union.anon.41, i32, i32, ptr, ptr }
%union.anon.38 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%union.anon.39 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.40 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.41 = type { ptr }

@.str.1 = private unnamed_addr constant [18 x i8] c"fs/ubifs/budget.c\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"req->new_ino_d <= UBIFS_MAX_INO_DATA\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"req->dirtied_ino <= 4\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"req->dirtied_ino_d <= UBIFS_MAX_INO_DATA * 4\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"!(req->new_ino_d & 7)\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"!(req->dirtied_ino_d & 7)\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"c->bi.idx_growth >= 0\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"c->bi.data_growth >= 0\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"c->bi.dd_growth >= 0\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"cannot budget space, error %d\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"req->idx_growth >= 0\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"req->data_growth >= 0\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"req->dd_growth >= 0\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"c->bi.min_idx_lebs < c->main_lebs\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"!(c->bi.idx_growth & 7)\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"!(c->bi.data_growth & 7)\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"!(c->bi.dd_growth & 7)\00", align 1
@.str.22 = private unnamed_addr constant [49 x i8] c"c->bi.min_idx_lebs == ubifs_calc_min_idx_lebs(c)\00", align 1

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @ubifs_calc_min_idx_lebs(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 4
  %4 = load i64, ptr %3, align 8
  %5 = load i64, ptr %2, align 8
  %6 = add i64 %5, %4
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 3
  %8 = load i64, ptr %7, align 8
  %9 = add i64 %6, %8
  %10 = mul i64 %9, 3
  %11 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 78
  %12 = load i32, ptr %11, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, -1
  %15 = add i64 %14, %10
  %16 = icmp ult i64 %15, 4294967296
  br i1 %16, label %17, label %20, !prof !8

17:                                               ; preds = %1
  %18 = trunc i64 %15 to i32
  %19 = udiv i32 %18, %12
  br label %24

20:                                               ; preds = %1
  %21 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %12, i64 %15) #8, !srcloc !9
  %22 = extractvalue { i64, i64 } %21, 1
  %23 = trunc i64 %22 to i32
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i32 [ %19, %17 ], [ %23, %20 ]
  %26 = add i32 %25, 1
  %27 = tail call i32 @llvm.smax.i32(i32 %26, i32 2)
  ret i32 %27
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i64 @ubifs_calc_available(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 64
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 5
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 18
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %1, 1
  %10 = add i32 %9, %8
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %13 = load i32, ptr %12, align 8
  %14 = sext i32 %13 to i64
  %15 = mul nsw i64 %11, %14
  %16 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 6
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 7
  %19 = load i64, ptr %18, align 8
  %20 = add i64 %6, %17
  %21 = add i64 %20, %19
  %22 = add i64 %21, %15
  %23 = sub i64 %4, %22
  %24 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = icmp sgt i32 %25, %1
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = sub i32 %25, %1
  %29 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 97
  %30 = load i32, ptr %29, align 4
  %31 = mul i32 %30, %28
  %32 = sext i32 %31 to i64
  %33 = sub i64 %23, %32
  br label %34

34:                                               ; preds = %27, %2
  %35 = phi i64 [ %33, %27 ], [ %23, %2 ]
  %36 = tail call i64 @llvm.smax.i64(i64 %35, i64 0)
  ret i64 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_budget_space(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #3 {
  %3 = load i32, ptr %1, align 4
  %4 = and i32 %3, 1048448
  %5 = icmp ugt i32 %4, 524415
  br i1 %5, label %6, label %8, !prof !10

6:                                                ; preds = %2
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 435) #9
  %7 = load i32, ptr %1, align 4
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %3, %2 ], [ %7, %6 ]
  %10 = and i32 %9, 15728640
  %11 = icmp ugt i32 %10, 5242879
  br i1 %11, label %12, label %13, !prof !10

12:                                               ; preds = %8
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 436) #9
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.ubifs_budget_req, ptr %1, i32 0, i32 1
  %15 = load i16, ptr %14, align 4
  %16 = and i16 %15, 32767
  %17 = icmp ugt i16 %16, 16384
  br i1 %17, label %18, label %19, !prof !10

18:                                               ; preds = %13
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 437) #9
  br label %19

19:                                               ; preds = %18, %13
  %20 = load i32, ptr %1, align 4
  %21 = and i32 %20, 896
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23, !prof !8

23:                                               ; preds = %19
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 438) #9
  br label %24

24:                                               ; preds = %23, %19
  %25 = load i16, ptr %14, align 4
  %26 = and i16 %25, 7
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %29, label %28, !prof !8

28:                                               ; preds = %24
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 439) #9
  br label %29

29:                                               ; preds = %28, %24
  %30 = load i32, ptr %1, align 4
  %31 = and i32 %30, 64
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 8
  %35 = load i32, ptr %34, align 4
  br label %36

36:                                               ; preds = %33, %29
  %37 = phi i32 [ %35, %33 ], [ 0, %29 ]
  %38 = and i32 %30, 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 7
  %42 = load i32, ptr %41, align 8
  %43 = add i32 %42, %37
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %43, %40 ], [ %37, %36 ]
  %46 = and i32 %30, 16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 9
  %50 = load i32, ptr %49, align 8
  %51 = add i32 %50, %45
  br label %52

52:                                               ; preds = %48, %44
  %53 = phi i32 [ %51, %48 ], [ %45, %44 ]
  %54 = lshr i32 %30, 7
  %55 = and i32 %54, 8191
  %56 = add i32 %53, %55
  %57 = and i32 %30, 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 7
  %61 = load i32, ptr %60, align 8
  br label %62

62:                                               ; preds = %59, %52
  %63 = phi i32 [ %61, %59 ], [ 0, %52 ]
  %64 = lshr i32 %30, 20
  %65 = and i32 %64, 15
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 8
  %69 = load i32, ptr %68, align 4
  %70 = add nsw i32 %65, -1
  %71 = shl i32 %69, %70
  %72 = add i32 %71, %63
  br label %73

73:                                               ; preds = %67, %62
  %74 = phi i32 [ %72, %67 ], [ %63, %62 ]
  %75 = and i32 %30, 32
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 9
  %79 = load i32, ptr %78, align 8
  %80 = add i32 %79, %74
  br label %81

81:                                               ; preds = %77, %73
  %82 = phi i32 [ %80, %77 ], [ %74, %73 ]
  %83 = load i16, ptr %14, align 4
  %84 = and i16 %83, 32767
  %85 = zext i16 %84 to i32
  %86 = add i32 %82, %85
  %87 = icmp ne i32 %56, 0
  %88 = icmp ne i32 %86, 0
  %89 = select i1 %87, i1 true, i1 %88
  br i1 %89, label %90, label %280

90:                                               ; preds = %81
  %91 = lshr i32 %30, 6
  %92 = and i32 %91, 1
  %93 = lshr i32 %30, 2
  %94 = and i32 %93, 1
  %95 = add nuw nsw i32 %92, %94
  %96 = lshr i32 %30, 4
  %97 = and i32 %96, 1
  %98 = add nuw nsw i32 %95, %97
  %99 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 92
  %100 = load i32, ptr %99, align 4
  %101 = mul i32 %100, %98
  %102 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 85
  %103 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87
  %104 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 1
  %105 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 2
  %106 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 6
  %107 = sext i32 %101 to i64
  %108 = sext i32 %56 to i64
  %109 = sext i32 %86 to i64
  %110 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 4
  %111 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 3
  %112 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 78
  %113 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86
  %114 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 2
  %115 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 164
  %116 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 124
  %117 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 1
  %118 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 64
  %119 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 5
  %120 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 18
  %121 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %122 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 6
  %123 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 7
  %124 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 97
  %125 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 175
  %126 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 177
  %127 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 178
  br label %128

128:                                              ; preds = %266, %90
  %129 = phi i1 [ false, %266 ], [ true, %90 ]
  br label %130

130:                                              ; preds = %263, %128
  tail call void @_raw_spin_lock(ptr noundef %102) #9
  %131 = load i64, ptr %103, align 8
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %134, !prof !10

133:                                              ; preds = %130
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 449) #9
  br label %134

134:                                              ; preds = %133, %130
  %135 = load i64, ptr %104, align 8
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %138, !prof !10

137:                                              ; preds = %134
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 450) #9
  br label %138

138:                                              ; preds = %137, %134
  %139 = load i64, ptr %105, align 8
  %140 = icmp slt i64 %139, 0
  br i1 %140, label %141, label %142, !prof !10

141:                                              ; preds = %138
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 451) #9
  br label %142

142:                                              ; preds = %141, %138
  %143 = load i8, ptr %106, align 4
  %144 = and i8 %143, 1
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %155, label %146, !prof !8

146:                                              ; preds = %142
  %147 = and i8 %143, 2
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = tail call fastcc i32 @can_use_rp(ptr noundef %0)
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %149, %146
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %153 = load i16, ptr %102, align 4
  %154 = add i16 %153, 1
  store i16 %154, ptr %102, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %280

155:                                              ; preds = %149, %142
  %156 = load i64, ptr %103, align 8
  %157 = add i64 %156, %107
  store i64 %157, ptr %103, align 8
  %158 = load i64, ptr %104, align 8
  %159 = add i64 %158, %108
  store i64 %159, ptr %104, align 8
  %160 = load i64, ptr %105, align 8
  %161 = add i64 %160, %109
  store i64 %161, ptr %105, align 8
  %162 = load i64, ptr %110, align 8
  %163 = add i64 %162, %157
  %164 = load i64, ptr %111, align 8
  %165 = add i64 %163, %164
  %166 = mul i64 %165, 3
  %167 = load i32, ptr %112, align 4
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %168, -1
  %170 = add i64 %169, %166
  %171 = icmp ult i64 %170, 4294967296
  br i1 %171, label %172, label %175, !prof !8

172:                                              ; preds = %155
  %173 = trunc i64 %170 to i32
  %174 = udiv i32 %173, %167
  br label %179

175:                                              ; preds = %155
  %176 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %167, i64 %170) #8, !srcloc !9
  %177 = extractvalue { i64, i64 } %176, 1
  %178 = trunc i64 %177 to i32
  br label %179

179:                                              ; preds = %175, %172
  %180 = phi i32 [ %174, %172 ], [ %178, %175 ]
  %181 = add i32 %180, 1
  %182 = tail call i32 @llvm.smax.i32(i32 %181, i32 2) #9
  %183 = load i32, ptr %114, align 8
  %184 = icmp sgt i32 %182, %183
  %185 = sub i32 %182, %183
  %186 = select i1 %184, i32 %185, i32 0
  %187 = load i32, ptr %113, align 8
  %188 = load i32, ptr %115, align 8
  %189 = add i32 %188, %187
  %190 = load i32, ptr %116, align 4
  %191 = add i32 %189, %190
  %192 = load i32, ptr %117, align 4
  %193 = sub i32 %191, %192
  %194 = icmp sgt i32 %186, %193
  br i1 %194, label %251, label %195, !prof !10

195:                                              ; preds = %179
  %196 = load i64, ptr %118, align 8
  %197 = load i64, ptr %119, align 8
  %198 = load i32, ptr %120, align 4
  %199 = add nuw i32 %182, 1
  %200 = add i32 %199, %198
  %201 = sext i32 %200 to i64
  %202 = load i32, ptr %121, align 8
  %203 = sext i32 %202 to i64
  %204 = mul nsw i64 %201, %203
  %205 = load i64, ptr %122, align 8
  %206 = load i64, ptr %123, align 8
  %207 = add i64 %197, %205
  %208 = add i64 %207, %206
  %209 = add i64 %208, %204
  %210 = sub i64 %196, %209
  %211 = icmp sgt i32 %183, %182
  br i1 %211, label %212, label %218

212:                                              ; preds = %195
  %213 = sub i32 %183, %182
  %214 = load i32, ptr %124, align 4
  %215 = mul i32 %214, %213
  %216 = sext i32 %215 to i64
  %217 = sub i64 %210, %216
  br label %218

218:                                              ; preds = %212, %195
  %219 = phi i64 [ %217, %212 ], [ %210, %195 ]
  %220 = tail call i64 @llvm.smax.i64(i64 %219, i64 0) #9
  %221 = add i64 %161, %159
  %222 = icmp slt i64 %220, %221
  br i1 %222, label %251, label %223, !prof !10

223:                                              ; preds = %218
  %224 = sub i64 %220, %221
  %225 = load i64, ptr %125, align 8
  %226 = icmp sgt i64 %224, %225
  br i1 %226, label %244, label %227

227:                                              ; preds = %223
  %228 = tail call ptr @llvm.thread.pointer() #9
  %229 = getelementptr inbounds %struct.task_struct, ptr %228, i32 0, i32 83
  %230 = load ptr, ptr %229, align 8
  %231 = getelementptr inbounds %struct.cred, ptr %230, i32 0, i32 7
  %232 = load i32, ptr %231, align 4
  %233 = load i32, ptr %126, align 8
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %244, label %235

235:                                              ; preds = %227
  %236 = tail call zeroext i1 @capable(i32 noundef 24) #9
  br i1 %236, label %244, label %237

237:                                              ; preds = %235
  %238 = load i32, ptr %127, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %251, label %240

240:                                              ; preds = %237
  %241 = insertvalue [1 x i32] undef, i32 %238, 0
  %242 = tail call i32 @in_group_p([1 x i32] %241) #9
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %251, label %244

244:                                              ; preds = %240, %235, %227, %223
  %245 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 5
  store i32 %182, ptr %245, align 8
  %246 = getelementptr inbounds %struct.ubifs_budget_req, ptr %1, i32 0, i32 2
  store i32 %101, ptr %246, align 4
  %247 = getelementptr inbounds %struct.ubifs_budget_req, ptr %1, i32 0, i32 3
  store i32 %56, ptr %247, align 4
  %248 = getelementptr inbounds %struct.ubifs_budget_req, ptr %1, i32 0, i32 4
  store i32 %86, ptr %248, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %249 = load i16, ptr %102, align 4
  %250 = add i16 %249, 1
  store i16 %250, ptr %102, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %280

251:                                              ; preds = %240, %237, %218, %179
  %252 = load i64, ptr %103, align 8
  %253 = sub i64 %252, %107
  store i64 %253, ptr %103, align 8
  %254 = load i64, ptr %104, align 8
  %255 = sub i64 %254, %108
  store i64 %255, ptr %104, align 8
  %256 = load i64, ptr %105, align 8
  %257 = sub i64 %256, %109
  store i64 %257, ptr %105, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %258 = load i16, ptr %102, align 4
  %259 = add i16 %258, 1
  store i16 %259, ptr %102, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %260 = load i32, ptr %1, align 4
  %261 = and i32 %260, 1
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %280

263:                                              ; preds = %251
  %264 = tail call fastcc i32 @make_free_space(ptr noundef %0)
  %265 = tail call i32 @__cond_resched() #9
  switch i32 %264, label %279 [
    i32 -11, label %130
    i32 -28, label %266
  ]

266:                                              ; preds = %263
  br i1 %129, label %128, label %267

267:                                              ; preds = %266
  %268 = load i8, ptr %106, align 4
  %269 = or i8 %268, 1
  store i8 %269, ptr %106, align 4
  %270 = tail call fastcc i32 @can_use_rp(ptr noundef %0)
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %267
  %273 = load i64, ptr %125, align 8
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %272, %267
  %276 = load i8, ptr %106, align 4
  %277 = or i8 %276, 2
  store i8 %277, ptr %106, align 4
  br label %278

278:                                              ; preds = %275, %272
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !15
  br label %280

279:                                              ; preds = %263
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %264) #9
  br label %280

280:                                              ; preds = %279, %278, %251, %244, %152, %81
  %281 = phi i32 [ -28, %152 ], [ 0, %244 ], [ 0, %81 ], [ -28, %278 ], [ %264, %279 ], [ -28, %251 ]
  ret i32 %281
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @can_use_rp(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call ptr @llvm.thread.pointer() #9
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 83
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 177
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %21, label %10

10:                                               ; preds = %1
  %11 = tail call zeroext i1 @capable(i32 noundef 24) #9
  br i1 %11, label %21, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 178
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = insertvalue [1 x i32] undef, i32 %14, 0
  %18 = tail call i32 @in_group_p([1 x i32] %17) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %12
  br label %21

21:                                               ; preds = %20, %16, %10, %1
  %22 = phi i32 [ 0, %20 ], [ 1, %16 ], [ 1, %10 ], [ 1, %1 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @make_free_space(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 85
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87
  %4 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 1
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 2
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 24
  br label %7

7:                                                ; preds = %39, %1
  %8 = phi i32 [ 0, %1 ], [ %40, %39 ]
  tail call void @_raw_spin_lock(ptr noundef %2) #9
  %9 = load i64, ptr %3, align 8
  %10 = load i64, ptr %4, align 8
  %11 = add i64 %10, %9
  %12 = load i64, ptr %5, align 8
  %13 = add i64 %11, %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %14 = load i16, ptr %2, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 14
  tail call void @down_read(ptr noundef %17) #9
  %18 = load ptr, ptr %0, align 8
  tail call void @writeback_inodes_sb_nr(ptr noundef %18, i32 noundef 16, i32 noundef 5) #9
  %19 = load ptr, ptr %0, align 8
  %20 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 14
  tail call void @up_read(ptr noundef %20) #9
  tail call void @_raw_spin_lock(ptr noundef %2) #9
  %21 = load i64, ptr %3, align 8
  %22 = load i64, ptr %4, align 8
  %23 = add i64 %22, %21
  %24 = load i64, ptr %5, align 8
  %25 = add i64 %23, %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %26 = load i16, ptr %2, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %28 = icmp slt i64 %25, %13
  br i1 %28, label %42, label %29

29:                                               ; preds = %7
  tail call void @down_read(ptr noundef %6) #9
  %30 = tail call i32 @ubifs_garbage_collect(ptr noundef %0, i32 noundef 1) #9
  tail call void @up_read(ptr noundef %6) #9
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @ubifs_change_one_lp(ptr noundef %0, i32 noundef %30, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef 0, i32 noundef 16, i32 noundef 0) #9
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi i32 [ %30, %29 ], [ %33, %32 ]
  switch i32 %35, label %44 [
    i32 0, label %42
    i32 -11, label %36
    i32 -28, label %36
  ]

36:                                               ; preds = %34, %34
  %37 = tail call i32 @ubifs_run_commit(ptr noundef %0) #9
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = add nuw nsw i32 %8, 1
  %41 = icmp eq i32 %40, 4
  br i1 %41, label %42, label %7

42:                                               ; preds = %39, %36, %34, %7
  %43 = phi i32 [ -28, %39 ], [ %37, %36 ], [ -11, %34 ], [ -11, %7 ]
  br label %44

44:                                               ; preds = %42, %34
  %45 = phi i32 [ %43, %42 ], [ %35, %34 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_release_budget(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #3 {
  %3 = load i32, ptr %1, align 4
  %4 = and i32 %3, 1048448
  %5 = icmp ugt i32 %4, 524415
  br i1 %5, label %6, label %8, !prof !10

6:                                                ; preds = %2
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 522) #9
  %7 = load i32, ptr %1, align 4
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %7, %6 ], [ %3, %2 ]
  %10 = and i32 %9, 15728640
  %11 = icmp ugt i32 %10, 5242879
  br i1 %11, label %12, label %13, !prof !10

12:                                               ; preds = %8
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 523) #9
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.ubifs_budget_req, ptr %1, i32 0, i32 1
  %15 = load i16, ptr %14, align 4
  %16 = and i16 %15, 32767
  %17 = icmp ugt i16 %16, 16384
  br i1 %17, label %18, label %19, !prof !10

18:                                               ; preds = %13
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 524) #9
  br label %19

19:                                               ; preds = %18, %13
  %20 = load i32, ptr %1, align 4
  %21 = and i32 %20, 896
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23, !prof !8

23:                                               ; preds = %19
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 525) #9
  br label %24

24:                                               ; preds = %23, %19
  %25 = load i16, ptr %14, align 4
  %26 = and i16 %25, 7
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %29, label %28, !prof !8

28:                                               ; preds = %24
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 526) #9
  br label %29

29:                                               ; preds = %28, %24
  %30 = load i32, ptr %1, align 4
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ubifs_budget_req, ptr %1, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38, !prof !10

37:                                               ; preds = %33
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 528) #9
  br label %38

38:                                               ; preds = %37, %33
  %39 = getelementptr inbounds %struct.ubifs_budget_req, ptr %1, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43, !prof !10

42:                                               ; preds = %38
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 529) #9
  br label %43

43:                                               ; preds = %42, %38
  %44 = getelementptr inbounds %struct.ubifs_budget_req, ptr %1, i32 0, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48, !prof !10

47:                                               ; preds = %43
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 530) #9
  br label %48

48:                                               ; preds = %47, %43, %29
  %49 = load i32, ptr %1, align 4
  %50 = and i32 %49, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.ubifs_budget_req, ptr %1, i32 0, i32 3
  %54 = load i32, ptr %53, align 4
  br label %126

55:                                               ; preds = %48
  %56 = and i32 %49, 64
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 8
  %60 = load i32, ptr %59, align 4
  br label %61

61:                                               ; preds = %58, %55
  %62 = phi i32 [ %60, %58 ], [ 0, %55 ]
  %63 = and i32 %49, 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 7
  %67 = load i32, ptr %66, align 8
  %68 = add i32 %67, %62
  br label %69

69:                                               ; preds = %65, %61
  %70 = phi i32 [ %68, %65 ], [ %62, %61 ]
  %71 = and i32 %49, 16
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 9
  %75 = load i32, ptr %74, align 8
  %76 = add i32 %75, %70
  br label %77

77:                                               ; preds = %73, %69
  %78 = phi i32 [ %76, %73 ], [ %70, %69 ]
  %79 = lshr i32 %49, 7
  %80 = and i32 %79, 8191
  %81 = add i32 %78, %80
  %82 = getelementptr inbounds %struct.ubifs_budget_req, ptr %1, i32 0, i32 3
  store i32 %81, ptr %82, align 4
  %83 = and i32 %49, 8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 7
  %87 = load i32, ptr %86, align 8
  br label %88

88:                                               ; preds = %85, %77
  %89 = phi i32 [ %87, %85 ], [ 0, %77 ]
  %90 = lshr i32 %49, 20
  %91 = and i32 %90, 15
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 8
  %95 = load i32, ptr %94, align 4
  %96 = add nsw i32 %91, -1
  %97 = shl i32 %95, %96
  %98 = add i32 %97, %89
  br label %99

99:                                               ; preds = %93, %88
  %100 = phi i32 [ %98, %93 ], [ %89, %88 ]
  %101 = and i32 %49, 32
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 9
  %105 = load i32, ptr %104, align 8
  %106 = add i32 %105, %100
  br label %107

107:                                              ; preds = %103, %99
  %108 = phi i32 [ %106, %103 ], [ %100, %99 ]
  %109 = load i16, ptr %14, align 4
  %110 = and i16 %109, 32767
  %111 = zext i16 %110 to i32
  %112 = add i32 %108, %111
  %113 = getelementptr inbounds %struct.ubifs_budget_req, ptr %1, i32 0, i32 4
  store i32 %112, ptr %113, align 4
  %114 = lshr i32 %49, 6
  %115 = and i32 %114, 1
  %116 = lshr i32 %49, 2
  %117 = and i32 %116, 1
  %118 = add nuw nsw i32 %115, %117
  %119 = lshr i32 %49, 4
  %120 = and i32 %119, 1
  %121 = add nuw nsw i32 %118, %120
  %122 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 92
  %123 = load i32, ptr %122, align 4
  %124 = mul i32 %123, %121
  %125 = getelementptr inbounds %struct.ubifs_budget_req, ptr %1, i32 0, i32 2
  store i32 %124, ptr %125, align 4
  br label %126

126:                                              ; preds = %107, %52
  %127 = phi i32 [ %54, %52 ], [ %81, %107 ]
  %128 = getelementptr inbounds %struct.ubifs_budget_req, ptr %1, i32 0, i32 3
  %129 = icmp eq i32 %127, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.ubifs_budget_req, ptr %1, i32 0, i32 4
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %219, label %134

134:                                              ; preds = %130, %126
  %135 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87
  %136 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 6
  %137 = load i8, ptr %136, align 4
  %138 = and i8 %137, -4
  store i8 %138, ptr %136, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !16
  %139 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 85
  tail call void @_raw_spin_lock(ptr noundef %139) #9
  %140 = getelementptr inbounds %struct.ubifs_budget_req, ptr %1, i32 0, i32 2
  %141 = load i32, ptr %140, align 4
  %142 = sext i32 %141 to i64
  %143 = load i64, ptr %135, align 8
  %144 = sub i64 %143, %142
  store i64 %144, ptr %135, align 8
  %145 = load i32, ptr %140, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 3
  %148 = load i64, ptr %147, align 8
  %149 = add i64 %148, %146
  store i64 %149, ptr %147, align 8
  %150 = load i32, ptr %128, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 1
  %153 = load i64, ptr %152, align 8
  %154 = sub i64 %153, %151
  store i64 %154, ptr %152, align 8
  %155 = getelementptr inbounds %struct.ubifs_budget_req, ptr %1, i32 0, i32 4
  %156 = load i32, ptr %155, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 2
  %159 = load i64, ptr %158, align 8
  %160 = sub i64 %159, %157
  store i64 %160, ptr %158, align 8
  %161 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 4
  %162 = load i64, ptr %161, align 8
  %163 = add i64 %149, %144
  %164 = add i64 %163, %162
  %165 = mul i64 %164, 3
  %166 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 78
  %167 = load i32, ptr %166, align 4
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %168, -1
  %170 = add i64 %169, %165
  %171 = icmp ult i64 %170, 4294967296
  br i1 %171, label %172, label %175, !prof !8

172:                                              ; preds = %134
  %173 = trunc i64 %170 to i32
  %174 = udiv i32 %173, %167
  br label %179

175:                                              ; preds = %134
  %176 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %167, i64 %170) #8, !srcloc !9
  %177 = extractvalue { i64, i64 } %176, 1
  %178 = trunc i64 %177 to i32
  br label %179

179:                                              ; preds = %175, %172
  %180 = phi i32 [ %174, %172 ], [ %178, %175 ]
  %181 = add i32 %180, 1
  %182 = tail call i32 @llvm.smax.i32(i32 %181, i32 2) #9
  %183 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 5
  store i32 %182, ptr %183, align 8
  %184 = icmp slt i64 %144, 0
  br i1 %184, label %185, label %187, !prof !10

185:                                              ; preds = %179
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 552) #9
  %186 = load i64, ptr %152, align 8
  br label %187

187:                                              ; preds = %185, %179
  %188 = phi i64 [ %186, %185 ], [ %154, %179 ]
  %189 = icmp slt i64 %188, 0
  br i1 %189, label %190, label %191, !prof !10

190:                                              ; preds = %187
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 553) #9
  br label %191

191:                                              ; preds = %190, %187
  %192 = load i64, ptr %158, align 8
  %193 = icmp slt i64 %192, 0
  br i1 %193, label %194, label %195, !prof !10

194:                                              ; preds = %191
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 554) #9
  br label %195

195:                                              ; preds = %194, %191
  %196 = load i32, ptr %183, align 8
  %197 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 62
  %198 = load i32, ptr %197, align 4
  %199 = icmp slt i32 %196, %198
  br i1 %199, label %201, label %200, !prof !8

200:                                              ; preds = %195
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 555) #9
  br label %201

201:                                              ; preds = %200, %195
  %202 = load i64, ptr %135, align 8
  %203 = and i64 %202, 7
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %206, label %205, !prof !8

205:                                              ; preds = %201
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 556) #9
  br label %206

206:                                              ; preds = %205, %201
  %207 = load i64, ptr %152, align 8
  %208 = and i64 %207, 7
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %211, label %210, !prof !8

210:                                              ; preds = %206
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 557) #9
  br label %211

211:                                              ; preds = %210, %206
  %212 = load i64, ptr %158, align 8
  %213 = and i64 %212, 7
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %216, label %215, !prof !8

215:                                              ; preds = %211
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 558) #9
  br label %216

216:                                              ; preds = %215, %211
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %217 = load i16, ptr %139, align 4
  %218 = add i16 %217, 1
  store i16 %218, ptr %139, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %219

219:                                              ; preds = %216, %130
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_convert_page_budget(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 85
  tail call void @_raw_spin_lock(ptr noundef %2) #9
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 92
  %4 = load i32, ptr %3, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87
  %7 = load i64, ptr %6, align 8
  %8 = sub i64 %7, %5
  store i64 %8, ptr %6, align 8
  %9 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 7
  %10 = load i32, ptr %9, align 8
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 1
  %13 = load i64, ptr %12, align 8
  %14 = sub i64 %13, %11
  store i64 %14, ptr %12, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = add i64 %16, %11
  store i64 %17, ptr %15, align 8
  %18 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 4
  %19 = load i64, ptr %18, align 8
  %20 = add i64 %19, %8
  %21 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 3
  %22 = load i64, ptr %21, align 8
  %23 = add i64 %20, %22
  %24 = mul i64 %23, 3
  %25 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 78
  %26 = load i32, ptr %25, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, -1
  %29 = add i64 %28, %24
  %30 = icmp ult i64 %29, 4294967296
  br i1 %30, label %31, label %34, !prof !8

31:                                               ; preds = %1
  %32 = trunc i64 %29 to i32
  %33 = udiv i32 %32, %26
  br label %38

34:                                               ; preds = %1
  %35 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %26, i64 %29) #8, !srcloc !9
  %36 = extractvalue { i64, i64 } %35, 1
  %37 = trunc i64 %36 to i32
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i32 [ %33, %31 ], [ %37, %34 ]
  %40 = add i32 %39, 1
  %41 = tail call i32 @llvm.smax.i32(i32 %40, i32 2) #9
  %42 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 5
  store i32 %41, ptr %42, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %43 = load i16, ptr %2, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_release_dirty_inode_budget(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = alloca %struct.ubifs_budget_req, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #9
  %4 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 15
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 7
  %9 = and i32 %8, -8
  %10 = add i32 %9, %5
  %11 = getelementptr inbounds %struct.ubifs_budget_req, ptr %3, i32 0, i32 4
  store i32 %10, ptr %11, align 4
  call void @ubifs_release_budget(ptr noundef %0, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #9
  ret void
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i64 @ubifs_reported_space(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 70
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 3
  %6 = ashr i32 %4, 1
  %7 = add nsw i32 %6, -1
  %8 = select i1 %5, i32 %7, i32 1
  %9 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 92
  %10 = load i32, ptr %9, align 4
  %11 = mul i32 %10, 3
  %12 = sdiv i32 %11, %8
  %13 = add i32 %12, 4144
  %14 = shl i64 %1, 12
  %15 = icmp ult i64 %14, 4294967296
  br i1 %15, label %16, label %20, !prof !8

16:                                               ; preds = %2
  %17 = trunc i64 %14 to i32
  %18 = udiv i32 %17, %13
  %19 = zext i32 %18 to i64
  br label %23

20:                                               ; preds = %2
  %21 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %13, i64 %14) #8, !srcloc !9
  %22 = extractvalue { i64, i64 } %21, 1
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi i64 [ %19, %16 ], [ %22, %20 ]
  ret i64 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @ubifs_get_free_space_nolock(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 5
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 4
  %6 = load i64, ptr %5, align 8
  %7 = load i64, ptr %4, align 8
  %8 = add i64 %7, %6
  %9 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 3
  %10 = load i64, ptr %9, align 8
  %11 = add i64 %8, %10
  %12 = mul i64 %11, 3
  %13 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 78
  %14 = load i32, ptr %13, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %15, -1
  %17 = add i64 %16, %12
  %18 = icmp ult i64 %17, 4294967296
  br i1 %18, label %19, label %22, !prof !8

19:                                               ; preds = %1
  %20 = trunc i64 %17 to i32
  %21 = udiv i32 %20, %14
  br label %26

22:                                               ; preds = %1
  %23 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %14, i64 %17) #8, !srcloc !9
  %24 = extractvalue { i64, i64 } %23, 1
  %25 = trunc i64 %24 to i32
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i32 [ %21, %19 ], [ %25, %22 ]
  %28 = add i32 %27, 1
  %29 = tail call i32 @llvm.smax.i32(i32 %28, i32 2) #9
  %30 = icmp eq i32 %3, %29
  br i1 %30, label %33, label %31, !prof !8

31:                                               ; preds = %26
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 671) #9
  %32 = load i32, ptr %2, align 8
  br label %33

33:                                               ; preds = %31, %26
  %34 = phi i32 [ %32, %31 ], [ %3, %26 ]
  %35 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 1
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 2
  %38 = load i64, ptr %37, align 8
  %39 = add i64 %38, %36
  %40 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 64
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 5
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 18
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %34, 1
  %47 = add i32 %46, %45
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %50 = load i32, ptr %49, align 8
  %51 = sext i32 %50 to i64
  %52 = mul nsw i64 %48, %51
  %53 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 6
  %54 = load i64, ptr %53, align 8
  %55 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 7
  %56 = load i64, ptr %55, align 8
  %57 = add i64 %43, %54
  %58 = add i64 %57, %56
  %59 = add i64 %58, %52
  %60 = sub i64 %41, %59
  %61 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 2
  %62 = load i32, ptr %61, align 8
  %63 = icmp sgt i32 %62, %34
  br i1 %63, label %68, label %64

64:                                               ; preds = %33
  %65 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 97
  %66 = load i32, ptr %65, align 4
  %67 = sub i32 %62, %34
  br label %75

68:                                               ; preds = %33
  %69 = sub i32 %62, %34
  %70 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 97
  %71 = load i32, ptr %70, align 4
  %72 = mul i32 %71, %69
  %73 = sext i32 %72 to i64
  %74 = sub i64 %60, %73
  br label %75

75:                                               ; preds = %68, %64
  %76 = phi i32 [ %67, %64 ], [ %69, %68 ]
  %77 = phi i32 [ %66, %64 ], [ %71, %68 ]
  %78 = phi i64 [ %60, %64 ], [ %74, %68 ]
  %79 = tail call i64 @llvm.smax.i64(i64 %78, i64 0) #9
  %80 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86
  %81 = icmp slt i32 %62, %34
  %82 = select i1 %81, i32 %76, i32 0
  %83 = load i32, ptr %80, align 8
  %84 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 164
  %85 = load i32, ptr %84, align 8
  %86 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 124
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = add i32 %83, %82
  %91 = add i32 %90, %85
  %92 = add i32 %91, %87
  %93 = sub i32 %92, %89
  %94 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 95
  %95 = load i32, ptr %94, align 4
  %96 = sub i32 %77, %95
  %97 = mul i32 %96, %93
  %98 = sext i32 %97 to i64
  %99 = add i64 %79, %98
  %100 = icmp sgt i64 %99, %39
  br i1 %100, label %101, label %123

101:                                              ; preds = %75
  %102 = sub i64 %99, %39
  %103 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 70
  %104 = load i32, ptr %103, align 4
  %105 = icmp sgt i32 %104, 3
  %106 = ashr i32 %104, 1
  %107 = add nsw i32 %106, -1
  %108 = select i1 %105, i32 %107, i32 1
  %109 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 92
  %110 = load i32, ptr %109, align 4
  %111 = mul i32 %110, 3
  %112 = sdiv i32 %111, %108
  %113 = add i32 %112, 4144
  %114 = shl i64 %102, 12
  %115 = icmp ult i64 %114, 4294967296
  br i1 %115, label %116, label %120, !prof !8

116:                                              ; preds = %101
  %117 = trunc i64 %114 to i32
  %118 = udiv i32 %117, %113
  %119 = zext i32 %118 to i64
  br label %123

120:                                              ; preds = %101
  %121 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %113, i64 %114) #8, !srcloc !9
  %122 = extractvalue { i64, i64 } %121, 1
  br label %123

123:                                              ; preds = %120, %116, %75
  %124 = phi i64 [ 0, %75 ], [ %119, %116 ], [ %122, %120 ]
  ret i64 %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @ubifs_get_free_space(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 85
  tail call void @_raw_spin_lock(ptr noundef %2) #9
  %3 = tail call i64 @ubifs_get_free_space_nolock(ptr noundef %0)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %4 = load i16, ptr %2, align 4
  %5 = add i16 %4, 1
  store i16 %5, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  ret i64 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p([1 x i32]) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_run_commit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @writeback_inodes_sb_nr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_garbage_collect(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_change_one_lp(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind }

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
!9 = !{i64 2147773089, i64 2147773369, i64 2147773703, i64 2147774037}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2149096614}
!12 = !{i64 2149092438}
!13 = !{i64 2149092513, i64 2149092540, i64 2149092587, i64 2149092609, i64 2149092637, i64 2149092657}
!14 = !{i64 2149119617}
!15 = !{i64 2153462057}
!16 = !{i64 2153468381}
