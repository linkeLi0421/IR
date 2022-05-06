; ModuleID = '/llk/IR/fs/ext4/balloc.c_pt.bc'
source_filename = "../fs/ext4/balloc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.ext4_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i32, i64, %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, ptr, %struct.kobject, %struct.completion, ptr, ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.ext4_orphan_info, i32, i32, i32, ptr, i32, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.atomic_t, %struct.rb_root, %struct.rwlock_t, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i64, i32, i32, ptr, i32, ptr, %struct.timer_list, ptr, i32, ptr, i32, ptr, i32, %struct.shrinker, %struct.list_head, i32, %struct.ext4_es_stats, ptr, ptr, [16 x i8], %struct.spinlock, [1 x %struct.ext4_journal_trigger], %struct.ratelimit_state, %struct.ratelimit_state, %struct.ratelimit_state, %struct.atomic_t, %struct.atomic_t, %struct.fscrypt_dummy_policy, %struct.percpu_rw_semaphore, ptr, i64, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i64, ptr, i64, i32, i32, i32, i64, ptr, i64, %struct.work_struct, %struct.atomic_t, [2 x %struct.list_head], [2 x %struct.list_head], i32, %struct.spinlock, ptr, %struct.ext4_fc_stats, i32, %struct.ext4_fc_replay_state, [52 x i8] }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ext4_orphan_info = type { i32, i32, ptr }
%struct.rb_root = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ext4_es_stats = type { i32, %struct.percpu_counter, %struct.percpu_counter, i64, i64, %struct.percpu_counter, %struct.percpu_counter }
%struct.ext4_journal_trigger = type { %struct.jbd2_buffer_trigger_type, ptr }
%struct.jbd2_buffer_trigger_type = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.fscrypt_dummy_policy = type {}
%struct.ext4_fc_stats = type { [10 x i32], i32, i32, i32, i32, i32, i64 }
%struct.ext4_fc_replay_state = type { i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ext4_group_desc = type { i32, i32, i32, i16, i16, i16, i16, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i16, i16, i32 }
%struct.bgl_lock = type { %struct.spinlock, [60 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.71, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.51 }
%struct.llist_node = type { ptr }
%union.anon.51 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.52 }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.71 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.40 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.40 = type { %struct.callback_head }
%struct.ext4_allocation_request = type { ptr, i32, i32, i32, i32, i64, i64, i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.41, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.42, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.43, ptr, %struct.address_space, %struct.list_head, %union.anon.44, i32, i32, ptr, ptr }
%union.anon.41 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%union.anon.42 = type { %struct.callback_head }
%union.anon.43 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.44 = type { ptr }

@__func__.ext4_get_group_desc = private unnamed_addr constant [20 x i8] c"ext4_get_group_desc\00", align 1
@.str = private unnamed_addr constant [66 x i8] c"block_group >= groups_count - block_group = %u, groups_count = %u\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"Group descriptor not loaded - block_group = %u, group_desc = %u, desc = %u\00", align 1
@__func__.ext4_read_block_bitmap_nowait = private unnamed_addr constant [30 x i8] c"ext4_read_block_bitmap_nowait\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Invalid block bitmap block %llu in block_group %u\00", align 1
@.str.3 = private unnamed_addr constant [75 x i8] c"Cannot get buffer for block bitmap - block_group = %u, block_bitmap = %llu\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Block bitmap for bg 0 marked uninitialized\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Failed to init block bitmap for group %u: %d\00", align 1
@__func__.ext4_wait_block_bitmap = private unnamed_addr constant [23 x i8] c"ext4_wait_block_bitmap\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"Cannot read block bitmap - block_group = %u, block_bitmap = %llu\00", align 1
@ext4_has_metadata_csum.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"fs/ext4/ext4.h\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"\010Assertion failure in %s() at %s:%d: '%s'\0A\00", align 1
@__func__.ext4_init_block_bitmap = private unnamed_addr constant [23 x i8] c"ext4_init_block_bitmap\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"fs/ext4/balloc.c\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"buffer_locked(bh)\00", align 1
@__tracepoint_ext4_read_block_bitmap_load = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__func__.ext4_validate_block_bitmap = private unnamed_addr constant [27 x i8] c"ext4_validate_block_bitmap\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"bg %u: bad block bitmap checksum\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"bg %u: block %llu: invalid block bitmap\00", align 1
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @ext4_get_group_number(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 18
  %6 = load i32, ptr %5, align 16
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ext4_super_block, ptr %10, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = zext i32 %12 to i64
  %14 = sub i64 %1, %13
  br i1 %8, label %26, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 12
  %20 = load i32, ptr %19, align 16
  %21 = add nuw nsw i32 %18, 3
  %22 = add i32 %21, %20
  %23 = zext i32 %22 to i64
  %24 = lshr i64 %14, %23
  %25 = trunc i64 %24 to i32
  br label %37

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 2
  %28 = load i32, ptr %27, align 8
  %29 = icmp ult i64 %14, 4294967296
  br i1 %29, label %30, label %33, !prof !8

30:                                               ; preds = %26
  %31 = trunc i64 %14 to i32
  %32 = udiv i32 %31, %28
  br label %37

33:                                               ; preds = %26
  %34 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %28, i64 %14) #11, !srcloc !9
  %35 = extractvalue { i64, i64 } %34, 1
  %36 = trunc i64 %35 to i32
  br label %37

37:                                               ; preds = %33, %30, %15
  %38 = phi i32 [ %25, %15 ], [ %32, %30 ], [ %36, %33 ]
  ret i32 %38
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_get_group_no_and_offset(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ext4_super_block, ptr %8, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = zext i32 %10 to i64
  %12 = sub i64 %1, %11
  %13 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = icmp ult i64 %12, 4294967296
  br i1 %15, label %16, label %23, !prof !8

16:                                               ; preds = %4
  %17 = trunc i64 %12 to i32
  %18 = freeze i32 %17
  %19 = freeze i32 %14
  %20 = udiv i32 %18, %19
  %21 = mul i32 %20, %19
  %22 = sub i32 %18, %21
  br label %30

23:                                               ; preds = %4
  %24 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %14, i64 %12) #11, !srcloc !9
  %25 = extractvalue { i64, i64 } %24, 0
  %26 = extractvalue { i64, i64 } %24, 1
  %27 = lshr i64 %25, 32
  %28 = trunc i64 %27 to i32
  %29 = trunc i64 %26 to i32
  br label %30

30:                                               ; preds = %23, %16
  %31 = phi i32 [ %20, %16 ], [ %29, %23 ]
  %32 = phi i32 [ %22, %16 ], [ %28, %23 ]
  %33 = icmp eq ptr %3, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 12
  %36 = load i32, ptr %35, align 16
  %37 = lshr i32 %32, %36
  store i32 %37, ptr %3, align 4
  br label %38

38:                                               ; preds = %34, %30
  %39 = icmp eq ptr %2, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %38
  store i32 %31, ptr %2, align 4
  br label %41

41:                                               ; preds = %40, %38
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_free_clusters_after_init(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 8
  %7 = load i32, ptr %6, align 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %8 = add i32 %7, -1
  %9 = icmp eq i32 %8, %1
  %10 = load ptr, ptr %4, align 4
  br i1 %9, label %11, label %23

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 15
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ext4_super_block, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = mul i32 %17, %1
  %19 = getelementptr inbounds %struct.ext4_super_block, ptr %13, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %18
  %22 = sub i32 %15, %21
  br label %30

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 15
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ext4_super_block, ptr %27, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  br label %30

30:                                               ; preds = %23, %11
  %31 = phi i32 [ %20, %11 ], [ %29, %23 ]
  %32 = phi i32 [ %17, %11 ], [ %25, %23 ]
  %33 = phi i32 [ %22, %11 ], [ %25, %23 ]
  %34 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 11
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 12
  %37 = load i32, ptr %36, align 16
  %38 = zext i32 %1 to i64
  %39 = zext i32 %32 to i64
  %40 = mul nuw i64 %39, %38
  %41 = zext i32 %31 to i64
  %42 = add nuw i64 %40, %41
  %43 = tail call fastcc i32 @ext4_num_base_meta_clusters(ptr noundef %0, i32 noundef %1) #12
  %44 = tail call i64 @ext4_block_bitmap(ptr noundef %0, ptr noundef %2) #12
  %45 = load ptr, ptr %4, align 4
  %46 = getelementptr inbounds %struct.ext4_sb_info, ptr %45, i32 0, i32 18
  %47 = load i32, ptr %46, align 16
  %48 = and i32 %47, 2
  %49 = icmp eq i32 %48, 0
  %50 = getelementptr inbounds %struct.ext4_sb_info, ptr %45, i32 0, i32 15
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.ext4_super_block, ptr %51, i32 0, i32 5
  %53 = load i32, ptr %52, align 4
  %54 = zext i32 %53 to i64
  %55 = sub i64 %44, %54
  br i1 %49, label %67, label %56

56:                                               ; preds = %30
  %57 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  %58 = load i8, ptr %57, align 4
  %59 = zext i8 %58 to i32
  %60 = getelementptr inbounds %struct.ext4_sb_info, ptr %45, i32 0, i32 12
  %61 = load i32, ptr %60, align 16
  %62 = add nuw nsw i32 %59, 3
  %63 = add i32 %62, %61
  %64 = zext i32 %63 to i64
  %65 = lshr i64 %55, %64
  %66 = trunc i64 %65 to i32
  br label %78

67:                                               ; preds = %30
  %68 = getelementptr inbounds %struct.ext4_sb_info, ptr %45, i32 0, i32 2
  %69 = load i32, ptr %68, align 8
  %70 = icmp ult i64 %55, 4294967296
  br i1 %70, label %71, label %74, !prof !8

71:                                               ; preds = %67
  %72 = trunc i64 %55 to i32
  %73 = udiv i32 %72, %69
  br label %78

74:                                               ; preds = %67
  %75 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %69, i64 %55) #11, !srcloc !9
  %76 = extractvalue { i64, i64 } %75, 1
  %77 = trunc i64 %76 to i32
  br label %78

78:                                               ; preds = %74, %71, %56
  %79 = phi i32 [ %66, %56 ], [ %73, %71 ], [ %77, %74 ]
  %80 = icmp eq i32 %79, %1
  br i1 %80, label %81, label %94

81:                                               ; preds = %78
  %82 = tail call i64 @ext4_block_bitmap(ptr noundef %0, ptr noundef %2) #12
  %83 = sub i64 %82, %42
  %84 = load i32, ptr %36, align 16
  %85 = zext i32 %84 to i64
  %86 = lshr i64 %83, %85
  %87 = trunc i64 %86 to i32
  %88 = icmp ugt i32 %43, %87
  br i1 %88, label %94, label %89

89:                                               ; preds = %81
  %90 = icmp eq i32 %43, %87
  %91 = zext i1 %90 to i32
  %92 = add i32 %43, %91
  %93 = select i1 %90, i32 -1, i32 %87
  br label %94

94:                                               ; preds = %89, %81, %78
  %95 = phi i32 [ %43, %78 ], [ %43, %81 ], [ %92, %89 ]
  %96 = phi i32 [ -1, %78 ], [ -1, %81 ], [ %93, %89 ]
  %97 = tail call i64 @ext4_inode_bitmap(ptr noundef %0, ptr noundef %2) #12
  %98 = load ptr, ptr %4, align 4
  %99 = getelementptr inbounds %struct.ext4_sb_info, ptr %98, i32 0, i32 18
  %100 = load i32, ptr %99, align 16
  %101 = and i32 %100, 2
  %102 = icmp eq i32 %101, 0
  %103 = getelementptr inbounds %struct.ext4_sb_info, ptr %98, i32 0, i32 15
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.ext4_super_block, ptr %104, i32 0, i32 5
  %106 = load i32, ptr %105, align 4
  %107 = zext i32 %106 to i64
  %108 = sub i64 %97, %107
  br i1 %102, label %120, label %109

109:                                              ; preds = %94
  %110 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  %111 = load i8, ptr %110, align 4
  %112 = zext i8 %111 to i32
  %113 = getelementptr inbounds %struct.ext4_sb_info, ptr %98, i32 0, i32 12
  %114 = load i32, ptr %113, align 16
  %115 = add nuw nsw i32 %112, 3
  %116 = add i32 %115, %114
  %117 = zext i32 %116 to i64
  %118 = lshr i64 %108, %117
  %119 = trunc i64 %118 to i32
  br label %131

120:                                              ; preds = %94
  %121 = getelementptr inbounds %struct.ext4_sb_info, ptr %98, i32 0, i32 2
  %122 = load i32, ptr %121, align 8
  %123 = icmp ult i64 %108, 4294967296
  br i1 %123, label %124, label %127, !prof !8

124:                                              ; preds = %120
  %125 = trunc i64 %108 to i32
  %126 = udiv i32 %125, %122
  br label %131

127:                                              ; preds = %120
  %128 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %122, i64 %108) #11, !srcloc !9
  %129 = extractvalue { i64, i64 } %128, 1
  %130 = trunc i64 %129 to i32
  br label %131

131:                                              ; preds = %127, %124, %109
  %132 = phi i32 [ %119, %109 ], [ %126, %124 ], [ %130, %127 ]
  %133 = icmp eq i32 %132, %1
  br i1 %133, label %134, label %147

134:                                              ; preds = %131
  %135 = tail call i64 @ext4_inode_bitmap(ptr noundef %0, ptr noundef %2) #12
  %136 = sub i64 %135, %42
  %137 = load i32, ptr %36, align 16
  %138 = zext i32 %137 to i64
  %139 = lshr i64 %136, %138
  %140 = trunc i64 %139 to i32
  %141 = icmp ugt i32 %95, %140
  br i1 %141, label %147, label %142

142:                                              ; preds = %134
  %143 = icmp eq i32 %95, %140
  %144 = zext i1 %143 to i32
  %145 = add i32 %95, %144
  %146 = select i1 %143, i32 -1, i32 %140
  br label %147

147:                                              ; preds = %142, %134, %131
  %148 = phi i32 [ %95, %131 ], [ %95, %134 ], [ %145, %142 ]
  %149 = phi i32 [ -1, %131 ], [ -1, %134 ], [ %146, %142 ]
  %150 = tail call i64 @ext4_inode_table(ptr noundef %0, ptr noundef %2) #12
  %151 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 5
  %152 = load i32, ptr %151, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %219, label %154

154:                                              ; preds = %147
  %155 = load ptr, ptr %4, align 4
  %156 = getelementptr inbounds %struct.ext4_sb_info, ptr %155, i32 0, i32 18
  %157 = load i32, ptr %156, align 16
  %158 = and i32 %157, 2
  %159 = icmp eq i32 %158, 0
  %160 = getelementptr inbounds %struct.ext4_sb_info, ptr %155, i32 0, i32 15
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.ext4_super_block, ptr %161, i32 0, i32 5
  %163 = load i32, ptr %162, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  %166 = getelementptr inbounds %struct.ext4_sb_info, ptr %155, i32 0, i32 12
  %167 = getelementptr inbounds %struct.ext4_sb_info, ptr %155, i32 0, i32 2
  br label %168

168:                                              ; preds = %214, %154
  %169 = phi i32 [ 0, %154 ], [ %217, %214 ]
  %170 = phi i32 [ -1, %154 ], [ %216, %214 ]
  %171 = phi i32 [ %148, %154 ], [ %215, %214 ]
  %172 = sext i32 %169 to i64
  %173 = add i64 %150, %172
  %174 = sub i64 %173, %164
  br i1 %159, label %184, label %175

175:                                              ; preds = %168
  %176 = load i8, ptr %165, align 4
  %177 = zext i8 %176 to i32
  %178 = load i32, ptr %166, align 16
  %179 = add nuw nsw i32 %177, 3
  %180 = add i32 %179, %178
  %181 = zext i32 %180 to i64
  %182 = lshr i64 %174, %181
  %183 = trunc i64 %182 to i32
  br label %194

184:                                              ; preds = %168
  %185 = load i32, ptr %167, align 8
  %186 = icmp ult i64 %174, 4294967296
  br i1 %186, label %187, label %190, !prof !8

187:                                              ; preds = %184
  %188 = trunc i64 %174 to i32
  %189 = udiv i32 %188, %185
  br label %194

190:                                              ; preds = %184
  %191 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %185, i64 %174) #11, !srcloc !9
  %192 = extractvalue { i64, i64 } %191, 1
  %193 = trunc i64 %192 to i32
  br label %194

194:                                              ; preds = %190, %187, %175
  %195 = phi i32 [ %183, %175 ], [ %189, %187 ], [ %193, %190 ]
  %196 = icmp eq i32 %195, %1
  br i1 %196, label %197, label %214

197:                                              ; preds = %194
  %198 = sub i64 %173, %42
  %199 = load i32, ptr %36, align 16
  %200 = zext i32 %199 to i64
  %201 = lshr i64 %198, %200
  %202 = trunc i64 %201 to i32
  %203 = icmp ugt i32 %171, %202
  %204 = icmp eq i32 %149, %202
  %205 = select i1 %203, i1 true, i1 %204
  %206 = icmp eq i32 %96, %202
  %207 = select i1 %205, i1 true, i1 %206
  %208 = icmp eq i32 %170, %202
  %209 = select i1 %207, i1 true, i1 %208
  br i1 %209, label %214, label %210

210:                                              ; preds = %197
  %211 = icmp eq i32 %171, %202
  %212 = add i32 %171, 1
  %213 = select i1 %211, i32 %170, i32 %202
  br label %214

214:                                              ; preds = %210, %197, %194
  %215 = phi i32 [ %171, %197 ], [ %171, %194 ], [ %212, %210 ]
  %216 = phi i32 [ %170, %197 ], [ %170, %194 ], [ %213, %210 ]
  %217 = add nuw i32 %169, 1
  %218 = icmp eq i32 %217, %152
  br i1 %218, label %219, label %168

219:                                              ; preds = %214, %147
  %220 = phi i32 [ %148, %147 ], [ %215, %214 ]
  %221 = add i32 %33, -1
  %222 = add i32 %221, %35
  %223 = lshr i32 %222, %37
  %224 = icmp ne i32 %96, -1
  %225 = sext i1 %224 to i32
  %226 = icmp ne i32 %149, -1
  %227 = sext i1 %226 to i32
  %228 = add i32 %223, %225
  %229 = add i32 %228, %227
  %230 = sub i32 %229, %220
  ret i32 %230
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ext4_get_group_desc(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 8
  %7 = load i32, ptr %6, align 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_get_group_desc, i32 noundef 277, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str, i32 noundef %1, i32 noundef %7) #12
  br label %34

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 28
  %13 = load i32, ptr %12, align 64
  %14 = lshr i32 %1, %13
  %15 = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, -1
  %18 = and i32 %17, %1
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %19 = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 16
  %20 = load volatile ptr, ptr %19, align 8
  %21 = getelementptr ptr, ptr %20, i32 %14
  %22 = load ptr, ptr %21, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %10
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_get_group_desc, i32 noundef 294, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.1, i32 noundef %1, i32 noundef %14, i32 noundef %18) #12
  br label %34

25:                                               ; preds = %10
  %26 = getelementptr inbounds %struct.buffer_head, ptr %22, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %4, align 4
  %29 = load i32, ptr %28, align 64
  %30 = mul i32 %29, %18
  %31 = getelementptr i8, ptr %27, i32 %30
  %32 = icmp eq ptr %2, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  store ptr %22, ptr %2, align 4
  br label %34

34:                                               ; preds = %33, %25, %24, %9
  %35 = phi ptr [ null, %9 ], [ null, %24 ], [ %31, %33 ], [ %31, %25 ]
  ret ptr %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ext4_read_block_bitmap_nowait(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 8
  %7 = load i32, ptr %6, align 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_get_group_desc, i32 noundef 277, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str, i32 noundef %1, i32 noundef %7) #12
  br label %166

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 28
  %13 = load i32, ptr %12, align 64
  %14 = lshr i32 %1, %13
  %15 = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, -1
  %18 = and i32 %17, %1
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %19 = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 16
  %20 = load volatile ptr, ptr %19, align 8
  %21 = getelementptr ptr, ptr %20, i32 %14
  %22 = load ptr, ptr %21, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %10
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_get_group_desc, i32 noundef 294, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.1, i32 noundef %1, i32 noundef %14, i32 noundef %18) #12
  br label %166

25:                                               ; preds = %10
  %26 = getelementptr inbounds %struct.buffer_head, ptr %22, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %4, align 4
  %29 = load i32, ptr %28, align 64
  %30 = mul i32 %29, %18
  %31 = getelementptr i8, ptr %27, i32 %30
  %32 = icmp eq ptr %31, null
  br i1 %32, label %166, label %33

33:                                               ; preds = %25
  %34 = tail call i64 @ext4_block_bitmap(ptr noundef %0, ptr noundef nonnull %31) #12
  %35 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 15
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ext4_super_block, ptr %36, i32 0, i32 5
  %38 = load i32, ptr %37, align 4
  %39 = zext i32 %38 to i64
  %40 = icmp ugt i64 %34, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.ext4_super_block, ptr %36, i32 0, i32 29
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 128
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.ext4_super_block, ptr %36, i32 0, i32 50
  %48 = load i32, ptr %47, align 8
  %49 = zext i32 %48 to i64
  %50 = shl nuw i64 %49, 32
  br label %51

51:                                               ; preds = %46, %41
  %52 = phi i64 [ %50, %46 ], [ 0, %41 ]
  %53 = getelementptr inbounds %struct.ext4_super_block, ptr %36, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = zext i32 %54 to i64
  %56 = or i64 %52, %55
  %57 = icmp ult i64 %34, %56
  br i1 %57, label %59, label %58

58:                                               ; preds = %51, %33
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_read_block_bitmap_nowait, i32 noundef 437, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.2, i64 noundef %34, i32 noundef %1) #12
  tail call void @ext4_mark_group_bitmap_corrupted(ptr noundef %0, i32 noundef %1, i32 noundef 4) #12
  br label %166

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  %63 = load i32, ptr %62, align 16
  %64 = tail call ptr @__getblk_gfp(ptr noundef %61, i64 noundef %34, i32 noundef %63, i32 noundef 8) #12
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %67, !prof !13

66:                                               ; preds = %59
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.ext4_read_block_bitmap_nowait, i32 noundef 446, ptr noundef nonnull @.str.3, i32 noundef %1, i64 noundef %34) #12
  br label %166

67:                                               ; preds = %59
  br i1 %2, label %68, label %75

68:                                               ; preds = %67
  %69 = load volatile i32, ptr %64, align 4
  %70 = and i32 %69, 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %73 = getelementptr inbounds %struct.buffer_head, ptr %64, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %73) #12, !srcloc !15
  %74 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %73, ptr %73, i32 1, ptr elementtype(i32) %73) #12, !srcloc !16
  br label %166

75:                                               ; preds = %68, %67
  %76 = load volatile i32, ptr %64, align 4
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load volatile i32, ptr %64, align 4
  %81 = and i32 %80, 33554432
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %158

83:                                               ; preds = %79, %75
  %84 = load volatile i32, ptr %64, align 4
  %85 = and i32 %84, 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %64) #12, !srcloc !15
  %88 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %64, ptr nonnull %64, i32 4, ptr nonnull elementtype(i32) %64) #12, !srcloc !17
  %89 = extractvalue { i32, i32, i32 } %88, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  %90 = and i32 %89, 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %87, %83
  tail call void @__lock_buffer(ptr noundef nonnull %64) #12
  br label %93

93:                                               ; preds = %92, %87
  %94 = load volatile i32, ptr %64, align 4
  %95 = and i32 %94, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load volatile i32, ptr %64, align 4
  %99 = and i32 %98, 33554432
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %157

101:                                              ; preds = %97, %93
  tail call fastcc void @ext4_lock_group(ptr noundef %0, i32 noundef %1)
  %102 = tail call fastcc i32 @ext4_has_group_desc_csum(ptr noundef %0)
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %138, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.ext4_group_desc, ptr %31, i32 0, i32 6
  %106 = load i16, ptr %105, align 2
  %107 = and i16 %106, 2
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %138, label %109

109:                                              ; preds = %104
  %110 = icmp eq i32 %1, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %109
  %112 = load ptr, ptr %4, align 4
  %113 = getelementptr inbounds %struct.ext4_sb_info, ptr %112, i32 0, i32 41
  %114 = load ptr, ptr %113, align 16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  %115 = load i16, ptr %114, align 4
  %116 = add i16 %115, 1
  store i16 %116, ptr %114, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !22
  tail call void @unlock_buffer(ptr noundef nonnull %64) #12
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_read_block_bitmap_nowait, i32 noundef 471, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.4) #12
  br label %161

117:                                              ; preds = %109
  %118 = tail call fastcc i32 @ext4_init_block_bitmap(ptr noundef %0, ptr noundef nonnull %64, i32 noundef %1, ptr noundef nonnull %31)
  tail call void @_set_bit(i32 noundef 25, ptr noundef nonnull %64) #12
  %119 = load volatile i32, ptr %64, align 4
  %120 = and i32 %119, 1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull %64) #12
  br label %123

123:                                              ; preds = %122, %117
  %124 = load volatile i32, ptr %64, align 4
  %125 = and i32 %124, 16777216
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  tail call void @_set_bit(i32 noundef 24, ptr noundef nonnull %64) #12
  br label %128

128:                                              ; preds = %127, %123
  %129 = load ptr, ptr %4, align 4
  %130 = getelementptr inbounds %struct.ext4_sb_info, ptr %129, i32 0, i32 41
  %131 = load ptr, ptr %130, align 16
  %132 = and i32 %1, 63
  %133 = getelementptr [64 x %struct.bgl_lock], ptr %131, i32 0, i32 %132
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  %134 = load i16, ptr %133, align 4
  %135 = add i16 %134, 1
  store i16 %135, ptr %133, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !22
  tail call void @unlock_buffer(ptr noundef nonnull %64) #12
  %136 = icmp eq i32 %118, 0
  br i1 %136, label %158, label %137

137:                                              ; preds = %128
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_read_block_bitmap_nowait, i32 noundef 483, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.5, i32 noundef %1, i32 noundef %118) #12
  br label %161

138:                                              ; preds = %104, %101
  %139 = load ptr, ptr %4, align 4
  %140 = getelementptr inbounds %struct.ext4_sb_info, ptr %139, i32 0, i32 41
  %141 = load ptr, ptr %140, align 16
  %142 = and i32 %1, 63
  %143 = getelementptr [64 x %struct.bgl_lock], ptr %141, i32 0, i32 %142
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  %144 = load i16, ptr %143, align 4
  %145 = add i16 %144, 1
  store i16 %145, ptr %143, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !22
  %146 = load volatile i32, ptr %64, align 4
  %147 = and i32 %146, 1
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %138
  tail call void @_set_bit(i32 noundef 25, ptr noundef nonnull %64) #12
  br label %157

150:                                              ; preds = %138
  %151 = load volatile i32, ptr %64, align 4
  %152 = and i32 %151, 32
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  tail call void @_set_bit(i32 noundef 5, ptr noundef nonnull %64) #12
  br label %155

155:                                              ; preds = %154, %150
  tail call fastcc void @trace_ext4_read_block_bitmap_load(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2)
  %156 = select i1 %2, i32 536576, i32 12288
  tail call void @ext4_read_bh_nowait(ptr noundef nonnull %64, i32 noundef %156, ptr noundef nonnull @ext4_end_bitmap_read) #12
  br label %166

157:                                              ; preds = %149, %97
  tail call void @unlock_buffer(ptr noundef nonnull %64) #12
  br label %158

158:                                              ; preds = %157, %128, %79
  %159 = tail call fastcc i32 @ext4_validate_block_bitmap(ptr noundef %0, ptr noundef nonnull %31, i32 noundef %1, ptr noundef nonnull %64)
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %158, %137, %111
  %162 = phi i32 [ %159, %158 ], [ -117, %111 ], [ %118, %137 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %163 = getelementptr inbounds %struct.buffer_head, ptr %64, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %163) #12, !srcloc !15
  %164 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %163, ptr %163, i32 1, ptr elementtype(i32) %163) #12, !srcloc !16
  %165 = inttoptr i32 %162 to ptr
  br label %166

166:                                              ; preds = %161, %158, %155, %72, %66, %58, %25, %24, %9
  %167 = phi ptr [ inttoptr (i32 -117 to ptr), %58 ], [ inttoptr (i32 -12 to ptr), %66 ], [ null, %72 ], [ %165, %161 ], [ %64, %155 ], [ %64, %158 ], [ inttoptr (i32 -117 to ptr), %25 ], [ inttoptr (i32 -117 to ptr), %9 ], [ inttoptr (i32 -117 to ptr), %24 ]
  ret ptr %167
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_block_bitmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_mark_group_bitmap_corrupted(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_warning(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_lock_group(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 41
  %6 = load ptr, ptr %5, align 16
  %7 = and i32 %1, 63
  %8 = getelementptr [64 x %struct.bgl_lock], ptr %6, i32 0, i32 %7
  %9 = tail call i32 @_raw_spin_trylock(ptr noundef %8) #12
  %10 = icmp eq i32 %9, 0
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 105
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #12
  br i1 %10, label %18, label %13

13:                                               ; preds = %2
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 0, i32 -1, ptr elementtype(i32) %12) #12, !srcloc !23
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !24
  br label %24

18:                                               ; preds = %2
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 8, i32 1, ptr elementtype(i32) %12) #12, !srcloc !23
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 8
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !24
  br label %23

23:                                               ; preds = %22, %18
  tail call void @_raw_spin_lock(ptr noundef %8) #12
  br label %24

24:                                               ; preds = %23, %17, %13
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_has_group_desc_csum(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 30
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %1
  %11 = and i32 %7, 1024
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %35, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 119
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  %17 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %31, !prof !13

20:                                               ; preds = %13
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 3289, i32 noundef 9, ptr noundef null) #12
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr inbounds %struct.ext4_sb_info, ptr %21, i32 0, i32 15
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ext4_super_block, ptr %23, i32 0, i32 30
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 1024
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.ext4_sb_info, ptr %21, i32 0, i32 119
  %30 = load ptr, ptr %29, align 8
  br label %31

31:                                               ; preds = %28, %13
  %32 = phi ptr [ %30, %28 ], [ %15, %13 ]
  %33 = icmp ne ptr %32, null
  %34 = zext i1 %33 to i32
  br label %35

35:                                               ; preds = %31, %20, %10, %1
  %36 = phi i32 [ 1, %1 ], [ 0, %20 ], [ %34, %31 ], [ 0, %10 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_init_block_bitmap(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = load volatile i32, ptr %1, align 4
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12, !prof !13

10:                                               ; preds = %4
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.ext4_init_block_bitmap, ptr noundef nonnull @.str.9, i32 noundef 188, ptr noundef nonnull @.str.10) #13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/balloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 188, 0\0A.popsection", ""() #12, !srcloc !25
  unreachable

12:                                               ; preds = %4
  %13 = tail call i32 @ext4_group_desc_csum_verify(ptr noundef %0, i32 noundef %2, ptr noundef %3) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void @ext4_mark_group_bitmap_corrupted(ptr noundef %0, i32 noundef %2, i32 noundef 12) #12
  br label %257

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  %20 = load i32, ptr %19, align 16
  tail call void @llvm.memset.p0.i32(ptr align 1 %18, i8 0, i32 %20, i1 false)
  %21 = tail call fastcc i32 @ext4_num_base_meta_clusters(ptr noundef %0, i32 noundef %2)
  %22 = lshr i32 %21, 3
  %23 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 4
  %24 = load i32, ptr %23, align 8
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %26, label %257

26:                                               ; preds = %16
  %27 = icmp eq i32 %21, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %28, %26
  %29 = phi i32 [ %37, %28 ], [ 0, %26 ]
  %30 = load ptr, ptr %17, align 4
  %31 = and i32 %29, 31
  %32 = shl nuw i32 1, %31
  %33 = lshr i32 %29, 5
  %34 = getelementptr i32, ptr %30, i32 %33
  %35 = load i32, ptr %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, ptr %34, align 4
  %37 = add nuw i32 %29, 1
  %38 = icmp eq i32 %37, %21
  br i1 %38, label %39, label %28

39:                                               ; preds = %28, %26
  %40 = zext i32 %2 to i64
  %41 = load ptr, ptr %5, align 4
  %42 = getelementptr inbounds %struct.ext4_sb_info, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = zext i32 %43 to i64
  %45 = mul nuw i64 %44, %40
  %46 = getelementptr inbounds %struct.ext4_sb_info, ptr %41, i32 0, i32 15
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.ext4_super_block, ptr %47, i32 0, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = zext i32 %49 to i64
  %51 = add nuw i64 %45, %50
  %52 = tail call i64 @ext4_block_bitmap(ptr noundef %0, ptr noundef %3) #12
  %53 = load ptr, ptr %5, align 4
  %54 = getelementptr inbounds %struct.ext4_sb_info, ptr %53, i32 0, i32 18
  %55 = load i32, ptr %54, align 16
  %56 = and i32 %55, 2
  %57 = icmp eq i32 %56, 0
  %58 = getelementptr inbounds %struct.ext4_sb_info, ptr %53, i32 0, i32 15
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.ext4_super_block, ptr %59, i32 0, i32 5
  %61 = load i32, ptr %60, align 4
  %62 = zext i32 %61 to i64
  %63 = sub i64 %52, %62
  br i1 %57, label %75, label %64

64:                                               ; preds = %39
  %65 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  %66 = load i8, ptr %65, align 4
  %67 = zext i8 %66 to i32
  %68 = getelementptr inbounds %struct.ext4_sb_info, ptr %53, i32 0, i32 12
  %69 = load i32, ptr %68, align 16
  %70 = add nuw nsw i32 %67, 3
  %71 = add i32 %70, %69
  %72 = zext i32 %71 to i64
  %73 = lshr i64 %63, %72
  %74 = trunc i64 %73 to i32
  br label %86

75:                                               ; preds = %39
  %76 = getelementptr inbounds %struct.ext4_sb_info, ptr %53, i32 0, i32 2
  %77 = load i32, ptr %76, align 8
  %78 = icmp ult i64 %63, 4294967296
  br i1 %78, label %79, label %82, !prof !8

79:                                               ; preds = %75
  %80 = trunc i64 %63 to i32
  %81 = udiv i32 %80, %77
  br label %86

82:                                               ; preds = %75
  %83 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %77, i64 %63) #11, !srcloc !9
  %84 = extractvalue { i64, i64 } %83, 1
  %85 = trunc i64 %84 to i32
  br label %86

86:                                               ; preds = %82, %79, %64
  %87 = phi i32 [ %74, %64 ], [ %81, %79 ], [ %85, %82 ]
  %88 = icmp eq i32 %87, %2
  br i1 %88, label %89, label %103

89:                                               ; preds = %86
  %90 = sub i64 %52, %51
  %91 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 12
  %92 = load i32, ptr %91, align 16
  %93 = zext i32 %92 to i64
  %94 = lshr i64 %90, %93
  %95 = trunc i64 %94 to i32
  %96 = load ptr, ptr %17, align 4
  %97 = and i32 %95, 31
  %98 = shl nuw i32 1, %97
  %99 = lshr i32 %95, 5
  %100 = getelementptr i32, ptr %96, i32 %99
  %101 = load i32, ptr %100, align 4
  %102 = or i32 %98, %101
  store i32 %102, ptr %100, align 4
  br label %103

103:                                              ; preds = %89, %86
  %104 = tail call i64 @ext4_inode_bitmap(ptr noundef %0, ptr noundef %3) #12
  %105 = load ptr, ptr %5, align 4
  %106 = getelementptr inbounds %struct.ext4_sb_info, ptr %105, i32 0, i32 18
  %107 = load i32, ptr %106, align 16
  %108 = and i32 %107, 2
  %109 = icmp eq i32 %108, 0
  %110 = getelementptr inbounds %struct.ext4_sb_info, ptr %105, i32 0, i32 15
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.ext4_super_block, ptr %111, i32 0, i32 5
  %113 = load i32, ptr %112, align 4
  %114 = zext i32 %113 to i64
  %115 = sub i64 %104, %114
  br i1 %109, label %127, label %116

116:                                              ; preds = %103
  %117 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  %118 = load i8, ptr %117, align 4
  %119 = zext i8 %118 to i32
  %120 = getelementptr inbounds %struct.ext4_sb_info, ptr %105, i32 0, i32 12
  %121 = load i32, ptr %120, align 16
  %122 = add nuw nsw i32 %119, 3
  %123 = add i32 %122, %121
  %124 = zext i32 %123 to i64
  %125 = lshr i64 %115, %124
  %126 = trunc i64 %125 to i32
  br label %138

127:                                              ; preds = %103
  %128 = getelementptr inbounds %struct.ext4_sb_info, ptr %105, i32 0, i32 2
  %129 = load i32, ptr %128, align 8
  %130 = icmp ult i64 %115, 4294967296
  br i1 %130, label %131, label %134, !prof !8

131:                                              ; preds = %127
  %132 = trunc i64 %115 to i32
  %133 = udiv i32 %132, %129
  br label %138

134:                                              ; preds = %127
  %135 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %129, i64 %115) #11, !srcloc !9
  %136 = extractvalue { i64, i64 } %135, 1
  %137 = trunc i64 %136 to i32
  br label %138

138:                                              ; preds = %134, %131, %116
  %139 = phi i32 [ %126, %116 ], [ %133, %131 ], [ %137, %134 ]
  %140 = icmp eq i32 %139, %2
  br i1 %140, label %141, label %155

141:                                              ; preds = %138
  %142 = sub i64 %104, %51
  %143 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 12
  %144 = load i32, ptr %143, align 16
  %145 = zext i32 %144 to i64
  %146 = lshr i64 %142, %145
  %147 = trunc i64 %146 to i32
  %148 = load ptr, ptr %17, align 4
  %149 = and i32 %147, 31
  %150 = shl nuw i32 1, %149
  %151 = lshr i32 %147, 5
  %152 = getelementptr i32, ptr %148, i32 %151
  %153 = load i32, ptr %152, align 4
  %154 = or i32 %150, %153
  store i32 %154, ptr %152, align 4
  br label %155

155:                                              ; preds = %141, %138
  %156 = tail call i64 @ext4_inode_table(ptr noundef %0, ptr noundef %3) #12
  %157 = tail call i64 @ext4_inode_table(ptr noundef %0, ptr noundef %3) #12
  %158 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 5
  %159 = load i32, ptr %158, align 4
  %160 = zext i32 %159 to i64
  %161 = add i64 %157, %160
  %162 = icmp ult i64 %156, %161
  br i1 %162, label %163, label %223

163:                                              ; preds = %155
  %164 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  %165 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 12
  br label %166

166:                                              ; preds = %216, %163
  %167 = phi i64 [ %156, %163 ], [ %217, %216 ]
  %168 = load ptr, ptr %5, align 4
  %169 = getelementptr inbounds %struct.ext4_sb_info, ptr %168, i32 0, i32 18
  %170 = load i32, ptr %169, align 16
  %171 = and i32 %170, 2
  %172 = icmp eq i32 %171, 0
  %173 = getelementptr inbounds %struct.ext4_sb_info, ptr %168, i32 0, i32 15
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.ext4_super_block, ptr %174, i32 0, i32 5
  %176 = load i32, ptr %175, align 4
  %177 = zext i32 %176 to i64
  %178 = sub i64 %167, %177
  br i1 %172, label %189, label %179

179:                                              ; preds = %166
  %180 = load i8, ptr %164, align 4
  %181 = zext i8 %180 to i32
  %182 = getelementptr inbounds %struct.ext4_sb_info, ptr %168, i32 0, i32 12
  %183 = load i32, ptr %182, align 16
  %184 = add nuw nsw i32 %181, 3
  %185 = add i32 %184, %183
  %186 = zext i32 %185 to i64
  %187 = lshr i64 %178, %186
  %188 = trunc i64 %187 to i32
  br label %200

189:                                              ; preds = %166
  %190 = getelementptr inbounds %struct.ext4_sb_info, ptr %168, i32 0, i32 2
  %191 = load i32, ptr %190, align 8
  %192 = icmp ult i64 %178, 4294967296
  br i1 %192, label %193, label %196, !prof !8

193:                                              ; preds = %189
  %194 = trunc i64 %178 to i32
  %195 = udiv i32 %194, %191
  br label %200

196:                                              ; preds = %189
  %197 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %191, i64 %178) #11, !srcloc !9
  %198 = extractvalue { i64, i64 } %197, 1
  %199 = trunc i64 %198 to i32
  br label %200

200:                                              ; preds = %196, %193, %179
  %201 = phi i32 [ %188, %179 ], [ %195, %193 ], [ %199, %196 ]
  %202 = icmp eq i32 %201, %2
  br i1 %202, label %203, label %216

203:                                              ; preds = %200
  %204 = sub i64 %167, %51
  %205 = load i32, ptr %165, align 16
  %206 = zext i32 %205 to i64
  %207 = lshr i64 %204, %206
  %208 = trunc i64 %207 to i32
  %209 = load ptr, ptr %17, align 4
  %210 = and i32 %208, 31
  %211 = shl nuw i32 1, %210
  %212 = lshr i32 %208, 5
  %213 = getelementptr i32, ptr %209, i32 %212
  %214 = load i32, ptr %213, align 4
  %215 = or i32 %211, %214
  store i32 %215, ptr %213, align 4
  br label %216

216:                                              ; preds = %203, %200
  %217 = add nuw i64 %167, 1
  %218 = tail call i64 @ext4_inode_table(ptr noundef %0, ptr noundef %3) #12
  %219 = load i32, ptr %158, align 4
  %220 = zext i32 %219 to i64
  %221 = add i64 %218, %220
  %222 = icmp ult i64 %217, %221
  br i1 %222, label %166, label %223

223:                                              ; preds = %216, %155
  %224 = load ptr, ptr %5, align 4
  %225 = getelementptr inbounds %struct.ext4_sb_info, ptr %224, i32 0, i32 8
  %226 = load i32, ptr %225, align 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %227 = add i32 %226, -1
  %228 = icmp eq i32 %227, %2
  %229 = load ptr, ptr %5, align 4
  br i1 %228, label %230, label %242

230:                                              ; preds = %223
  %231 = getelementptr inbounds %struct.ext4_sb_info, ptr %229, i32 0, i32 15
  %232 = load ptr, ptr %231, align 4
  %233 = getelementptr inbounds %struct.ext4_super_block, ptr %232, i32 0, i32 1
  %234 = load i32, ptr %233, align 4
  %235 = getelementptr inbounds %struct.ext4_sb_info, ptr %229, i32 0, i32 2
  %236 = load i32, ptr %235, align 8
  %237 = mul i32 %236, %2
  %238 = getelementptr inbounds %struct.ext4_super_block, ptr %232, i32 0, i32 5
  %239 = load i32, ptr %238, align 4
  %240 = add i32 %239, %237
  %241 = sub i32 %234, %240
  br label %245

242:                                              ; preds = %223
  %243 = getelementptr inbounds %struct.ext4_sb_info, ptr %229, i32 0, i32 2
  %244 = load i32, ptr %243, align 8
  br label %245

245:                                              ; preds = %242, %230
  %246 = phi i32 [ %241, %230 ], [ %244, %242 ]
  %247 = getelementptr inbounds %struct.ext4_sb_info, ptr %229, i32 0, i32 11
  %248 = load i32, ptr %247, align 4
  %249 = add i32 %246, -1
  %250 = add i32 %249, %248
  %251 = getelementptr inbounds %struct.ext4_sb_info, ptr %229, i32 0, i32 12
  %252 = load i32, ptr %251, align 16
  %253 = lshr i32 %250, %252
  %254 = load i32, ptr %19, align 16
  %255 = shl i32 %254, 3
  %256 = load ptr, ptr %17, align 4
  tail call void @ext4_mark_bitmap_end(i32 noundef %253, i32 noundef %255, ptr noundef %256) #12
  br label %257

257:                                              ; preds = %245, %16, %15
  %258 = phi i32 [ 0, %245 ], [ -74, %15 ], [ -117, %16 ]
  ret i32 %258
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_read_block_bitmap_load(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #4 {
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_read_block_bitmap_load, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.thread.pointer() #12
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 5
  %11 = getelementptr i32, ptr @__cpu_online_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !26
  %18 = tail call i32 @__traceiter_ext4_read_block_bitmap_load(ptr noundef null, ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !27
  br label %19

19:                                               ; preds = %17, %6, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_read_bh_nowait(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_end_bitmap_read(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_validate_block_bitmap(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 25
  %8 = load i16, ptr %7, align 8
  %9 = and i16 %8, 32
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %174

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 8
  %13 = load i32, ptr %12, align 32
  %14 = icmp ugt i32 %13, %2
  br i1 %14, label %16, label %15, !prof !8

15:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3364, 0\0A.popsection", ""() #12, !srcloc !28
  unreachable

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 28
  %18 = load i32, ptr %17, align 64
  %19 = lshr i32 %2, %18
  %20 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, -1
  %23 = and i32 %22, %2
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %24 = load ptr, ptr %5, align 4
  %25 = getelementptr inbounds %struct.ext4_sb_info, ptr %24, i32 0, i32 58
  %26 = load volatile ptr, ptr %25, align 4
  %27 = getelementptr ptr, ptr %26, i32 %19
  %28 = load ptr, ptr %27, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %29 = getelementptr ptr, ptr %28, i32 %23
  %30 = load ptr, ptr %29, align 4
  %31 = load volatile i32, ptr %3, align 4
  %32 = and i32 %31, 16777216
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %174

34:                                               ; preds = %16
  %35 = load volatile i32, ptr %30, align 4
  %36 = and i32 %35, 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %174

38:                                               ; preds = %34
  %39 = load ptr, ptr %5, align 4
  %40 = getelementptr inbounds %struct.ext4_sb_info, ptr %39, i32 0, i32 41
  %41 = load ptr, ptr %40, align 16
  %42 = and i32 %2, 63
  %43 = getelementptr [64 x %struct.bgl_lock], ptr %41, i32 0, i32 %42
  %44 = tail call i32 @_raw_spin_trylock(ptr noundef %43) #12
  %45 = icmp eq i32 %44, 0
  %46 = load ptr, ptr %5, align 4
  %47 = getelementptr inbounds %struct.ext4_sb_info, ptr %46, i32 0, i32 105
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #12
  br i1 %45, label %53, label %48

48:                                               ; preds = %38
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 0, i32 -1, ptr elementtype(i32) %47) #12, !srcloc !23
  %50 = extractvalue { i32, i32, i32 } %49, 0
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %48
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !24
  br label %59

53:                                               ; preds = %38
  %54 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 8, i32 1, ptr elementtype(i32) %47) #12, !srcloc !23
  %55 = extractvalue { i32, i32, i32 } %54, 0
  %56 = icmp eq i32 %55, 8
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !24
  br label %58

58:                                               ; preds = %57, %53
  tail call void @_raw_spin_lock(ptr noundef %43) #12
  br label %59

59:                                               ; preds = %58, %52, %48
  %60 = load volatile i32, ptr %3, align 4
  %61 = and i32 %60, 16777216
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %167

63:                                               ; preds = %59
  %64 = tail call i32 @ext4_block_bitmap_csum_verify(ptr noundef %0, i32 noundef %2, ptr noundef %1, ptr noundef %3) #12
  %65 = icmp eq i32 %64, 0
  %66 = load ptr, ptr %5, align 4
  br i1 %65, label %149, label %67, !prof !13

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.ext4_sb_info, ptr %66, i32 0, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.ext4_sb_info, ptr %66, i32 0, i32 15
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.ext4_super_block, ptr %71, i32 0, i32 29
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 512
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %162

76:                                               ; preds = %67
  %77 = zext i32 %2 to i64
  %78 = getelementptr inbounds %struct.ext4_sb_info, ptr %66, i32 0, i32 2
  %79 = load i32, ptr %78, align 8
  %80 = zext i32 %79 to i64
  %81 = mul nuw i64 %80, %77
  %82 = getelementptr inbounds %struct.ext4_super_block, ptr %71, i32 0, i32 5
  %83 = load i32, ptr %82, align 4
  %84 = zext i32 %83 to i64
  %85 = add nuw i64 %81, %84
  %86 = tail call i64 @ext4_block_bitmap(ptr noundef %0, ptr noundef %1) #12
  %87 = sub i64 %86, %85
  %88 = trunc i64 %87 to i32
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %146, label %90

90:                                               ; preds = %76
  %91 = getelementptr inbounds %struct.ext4_sb_info, ptr %66, i32 0, i32 12
  %92 = load i32, ptr %91, align 16
  %93 = lshr i32 %88, %92
  %94 = icmp slt i32 %93, %69
  br i1 %94, label %95, label %146

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 5
  %97 = load ptr, ptr %96, align 4
  %98 = lshr i32 %93, 5
  %99 = getelementptr i32, ptr %97, i32 %98
  %100 = load volatile i32, ptr %99, align 4
  %101 = and i32 %93, 31
  %102 = shl nuw i32 1, %101
  %103 = and i32 %100, %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %146, label %105

105:                                              ; preds = %95
  %106 = tail call i64 @ext4_inode_bitmap(ptr noundef %0, ptr noundef %1) #12
  %107 = sub i64 %106, %85
  %108 = trunc i64 %107 to i32
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %146, label %110

110:                                              ; preds = %105
  %111 = load i32, ptr %91, align 16
  %112 = lshr i32 %108, %111
  %113 = icmp slt i32 %112, %69
  br i1 %113, label %114, label %146

114:                                              ; preds = %110
  %115 = load ptr, ptr %96, align 4
  %116 = lshr i32 %112, 5
  %117 = getelementptr i32, ptr %115, i32 %116
  %118 = load volatile i32, ptr %117, align 4
  %119 = and i32 %112, 31
  %120 = shl nuw i32 1, %119
  %121 = and i32 %118, %120
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %146, label %123

123:                                              ; preds = %114
  %124 = tail call i64 @ext4_inode_table(ptr noundef %0, ptr noundef %1) #12
  %125 = sub i64 %124, %85
  %126 = trunc i64 %125 to i32
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %146, label %128

128:                                              ; preds = %123
  %129 = load i32, ptr %91, align 16
  %130 = lshr i32 %126, %129
  %131 = icmp slt i32 %130, %69
  br i1 %131, label %132, label %146

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.ext4_sb_info, ptr %66, i32 0, i32 5
  %134 = load i32, ptr %133, align 4
  %135 = add i32 %134, %126
  %136 = lshr i32 %135, %129
  %137 = icmp ult i32 %136, %69
  br i1 %137, label %138, label %146

138:                                              ; preds = %132
  %139 = load ptr, ptr %96, align 4
  %140 = tail call i32 @_find_next_zero_bit_le(ptr noundef %139, i32 noundef %136, i32 noundef %130) #12
  %141 = load i32, ptr %133, align 4
  %142 = add i32 %141, %126
  %143 = load i32, ptr %91, align 16
  %144 = lshr i32 %142, %143
  %145 = icmp ult i32 %140, %144
  br i1 %145, label %146, label %162

146:                                              ; preds = %138, %132, %128, %123, %114, %110, %105, %95, %90, %76
  %147 = phi i64 [ %86, %95 ], [ %86, %90 ], [ %86, %76 ], [ %106, %114 ], [ %106, %110 ], [ %106, %105 ], [ %124, %132 ], [ %124, %128 ], [ %124, %123 ], [ %124, %138 ]
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %162, label %155, !prof !8

149:                                              ; preds = %63
  %150 = getelementptr inbounds %struct.ext4_sb_info, ptr %66, i32 0, i32 41
  %151 = load ptr, ptr %150, align 16
  %152 = getelementptr [64 x %struct.bgl_lock], ptr %151, i32 0, i32 %42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  %153 = load i16, ptr %152, align 4
  %154 = add i16 %153, 1
  store i16 %154, ptr %152, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !22
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_validate_block_bitmap, i32 noundef 390, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.12, i32 noundef %2) #12
  tail call void @ext4_mark_group_bitmap_corrupted(ptr noundef %0, i32 noundef %2, i32 noundef 4) #12
  br label %174

155:                                              ; preds = %146
  %156 = load ptr, ptr %5, align 4
  %157 = getelementptr inbounds %struct.ext4_sb_info, ptr %156, i32 0, i32 41
  %158 = load ptr, ptr %157, align 16
  %159 = getelementptr [64 x %struct.bgl_lock], ptr %158, i32 0, i32 %42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  %160 = load i16, ptr %159, align 4
  %161 = add i16 %160, 1
  store i16 %161, ptr %159, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !22
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_validate_block_bitmap, i32 noundef 399, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.13, i32 noundef %2, i64 noundef %147) #12
  tail call void @ext4_mark_group_bitmap_corrupted(ptr noundef %0, i32 noundef %2, i32 noundef 4) #12
  br label %174

162:                                              ; preds = %146, %138, %67
  %163 = load volatile i32, ptr %3, align 4
  %164 = and i32 %163, 16777216
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  tail call void @_set_bit(i32 noundef 24, ptr noundef %3) #12
  br label %167

167:                                              ; preds = %166, %162, %59
  %168 = load ptr, ptr %5, align 4
  %169 = getelementptr inbounds %struct.ext4_sb_info, ptr %168, i32 0, i32 41
  %170 = load ptr, ptr %169, align 16
  %171 = getelementptr [64 x %struct.bgl_lock], ptr %170, i32 0, i32 %42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  %172 = load i16, ptr %171, align 4
  %173 = add i16 %172, 1
  store i16 %173, ptr %171, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !22
  br label %174

174:                                              ; preds = %167, %155, %149, %34, %16, %4
  %175 = phi i32 [ 0, %167 ], [ -74, %149 ], [ -117, %155 ], [ 0, %4 ], [ 0, %16 ], [ -117, %34 ]
  ret i32 %175
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_wait_block_bitmap(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = load volatile i32, ptr %2, align 4
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %51, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 8
  %11 = load i32, ptr %10, align 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %12 = icmp ugt i32 %11, %1
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_get_group_desc, i32 noundef 277, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str, i32 noundef %1, i32 noundef %11) #12
  br label %51

14:                                               ; preds = %7
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr inbounds %struct.ext4_sb_info, ptr %15, i32 0, i32 28
  %17 = load i32, ptr %16, align 64
  %18 = lshr i32 %1, %17
  %19 = getelementptr inbounds %struct.ext4_sb_info, ptr %15, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, -1
  %22 = and i32 %21, %1
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %23 = getelementptr inbounds %struct.ext4_sb_info, ptr %15, i32 0, i32 16
  %24 = load volatile ptr, ptr %23, align 8
  %25 = getelementptr ptr, ptr %24, i32 %18
  %26 = load ptr, ptr %25, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %14
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_get_group_desc, i32 noundef 294, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.1, i32 noundef %1, i32 noundef %18, i32 noundef %22) #12
  br label %51

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.buffer_head, ptr %26, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %8, align 4
  %33 = load i32, ptr %32, align 64
  %34 = mul i32 %33, %22
  %35 = getelementptr i8, ptr %31, i32 %34
  %36 = icmp eq ptr %35, null
  br i1 %36, label %51, label %37

37:                                               ; preds = %29
  %38 = load volatile i32, ptr %2, align 4
  %39 = and i32 %38, 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void @__wait_on_buffer(ptr noundef %2) #12
  br label %42

42:                                               ; preds = %41, %37
  %43 = load volatile i32, ptr %2, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 3
  %48 = load i64, ptr %47, align 8
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_wait_block_bitmap, i32 noundef 533, i1 noundef zeroext false, i32 noundef 5, i64 noundef 0, ptr noundef nonnull @.str.6, i32 noundef %1, i64 noundef %48) #12
  tail call void @ext4_mark_group_bitmap_corrupted(ptr noundef %0, i32 noundef %1, i32 noundef 4) #12
  br label %51

49:                                               ; preds = %42
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %2) #12
  %50 = tail call fastcc i32 @ext4_validate_block_bitmap(ptr noundef %0, ptr noundef nonnull %35, i32 noundef %1, ptr noundef %2)
  br label %51

51:                                               ; preds = %49, %46, %29, %28, %13, %3
  %52 = phi i32 [ %50, %49 ], [ -5, %46 ], [ 0, %3 ], [ -117, %29 ], [ -117, %13 ], [ -117, %28 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ext4_read_block_bitmap(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @ext4_read_block_bitmap_nowait(ptr noundef %0, i32 noundef %1, i1 noundef zeroext false)
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @ext4_wait_block_bitmap(ptr noundef %0, i32 noundef %1, ptr noundef %3)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %9 = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #12, !srcloc !15
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #12, !srcloc !16
  %11 = inttoptr i32 %6 to ptr
  br label %12

12:                                               ; preds = %8, %5, %2
  %13 = phi ptr [ %11, %8 ], [ %3, %2 ], [ %3, %5 ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_claim_free_clusters(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = tail call fastcc i32 @ext4_has_free_clusters(ptr noundef %0, i64 noundef %1, i32 noundef %2)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 39
  %8 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %7, i64 noundef %1, i32 noundef %8) #12
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi i32 [ 0, %6 ], [ -28, %3 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_has_free_clusters(ptr noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 36
  %5 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 39
  %6 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 36, i32 1
  %7 = load volatile i64, ptr %6, align 8
  %8 = tail call i64 @llvm.smax.i64(i64 %7, i64 0) #12
  %9 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 39, i32 1
  %10 = load volatile i64, ptr %9, align 8
  %11 = tail call i64 @llvm.smax.i64(i64 %10, i64 0) #12
  %12 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 22
  %13 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %12, ptr elementtype(i64) %12) #12, !srcloc !29
  %14 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ext4_super_block, ptr %15, i32 0, i32 29
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 128
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.ext4_super_block, ptr %15, i32 0, i32 51
  %22 = load i32, ptr %21, align 4
  %23 = zext i32 %22 to i64
  %24 = shl nuw i64 %23, 32
  br label %25

25:                                               ; preds = %20, %3
  %26 = phi i64 [ %24, %20 ], [ 0, %3 ]
  %27 = getelementptr inbounds %struct.ext4_super_block, ptr %15, i32 0, i32 2
  %28 = load i32, ptr %27, align 8
  %29 = zext i32 %28 to i64
  %30 = or i64 %26, %29
  %31 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 12
  %32 = load i32, ptr %31, align 16
  %33 = zext i32 %32 to i64
  %34 = lshr i64 %30, %33
  %35 = add i64 %13, %1
  %36 = add i64 %35, %34
  %37 = add i64 %11, %36
  %38 = sub i64 %8, %37
  %39 = load i32, ptr @percpu_counter_batch, align 4
  %40 = load i32, ptr @nr_cpu_ids, align 4
  %41 = shl i32 %39, 2
  %42 = mul i32 %41, %40
  %43 = zext i32 %42 to i64
  %44 = icmp slt i64 %38, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %25
  %46 = tail call i64 @__percpu_counter_sum(ptr noundef %4) #12
  %47 = tail call i64 @llvm.smax.i64(i64 %46, i64 0) #12
  %48 = tail call i64 @__percpu_counter_sum(ptr noundef %5) #12
  %49 = tail call i64 @llvm.smax.i64(i64 %48, i64 0) #12
  %50 = add i64 %49, %36
  br label %51

51:                                               ; preds = %45, %25
  %52 = phi i64 [ %50, %45 ], [ %37, %25 ]
  %53 = phi i64 [ %49, %45 ], [ %11, %25 ]
  %54 = phi i64 [ %47, %45 ], [ %8, %25 ]
  %55 = icmp slt i64 %54, %52
  br i1 %55, label %56, label %92

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 23
  %58 = tail call ptr @llvm.thread.pointer() #12
  %59 = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 83
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.cred, ptr %60, i32 0, i32 7
  %62 = load i32, ptr %61, align 4
  %63 = load i32, ptr %57, align 16
  %64 = icmp eq i32 %63, %62
  br i1 %64, label %82, label %65

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 24
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = insertvalue [1 x i32] undef, i32 %67, 0
  %71 = tail call i32 @in_group_p([1 x i32] %70) #12
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %69, %65
  %74 = tail call zeroext i1 @capable(i32 noundef 24) #12
  %75 = and i32 %2, 4096
  %76 = icmp ne i32 %75, 0
  %77 = or i1 %76, %74
  %78 = xor i1 %77, true
  %79 = add i64 %35, %53
  %80 = icmp slt i64 %54, %79
  %81 = select i1 %78, i1 true, i1 %80
  br i1 %81, label %85, label %92

82:                                               ; preds = %69, %56
  %83 = add i64 %35, %53
  %84 = icmp slt i64 %54, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %82, %73
  %86 = and i32 %2, 8192
  %87 = icmp ne i32 %86, 0
  %88 = add i64 %53, %1
  %89 = icmp sge i64 %54, %88
  %90 = select i1 %87, i1 %89, i1 false
  %91 = zext i1 %90 to i32
  br label %92

92:                                               ; preds = %85, %82, %73, %51
  %93 = phi i32 [ 1, %51 ], [ 1, %82 ], [ %91, %85 ], [ 1, %73 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_should_retry_alloc(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 47
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %36, label %8

8:                                                ; preds = %2
  %9 = load i32, ptr %1, align 4
  %10 = add i32 %9, 1
  store i32 %10, ptr %1, align 4
  %11 = icmp sgt i32 %10, 3
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 40
  %14 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %13, i64 noundef 1, i32 noundef %14) #12
  br label %36

15:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !30
  %16 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 64
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr inbounds %struct.ext4_sb_info, ptr %20, i32 0, i32 17
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 1073741824
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 68
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #12, !srcloc !15
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #12, !srcloc !31
  %28 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 67
  %29 = tail call zeroext i1 @flush_work(ptr noundef %28) #12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #12, !srcloc !15
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #12, !srcloc !16
  br label %31

31:                                               ; preds = %25, %19
  %32 = tail call fastcc i32 @ext4_has_free_clusters(ptr noundef %4, i64 noundef 1, i32 noundef 0)
  br label %36

33:                                               ; preds = %15
  %34 = load ptr, ptr %5, align 4
  %35 = tail call i32 @jbd2_journal_force_commit_nested(ptr noundef %34) #12
  br label %36

36:                                               ; preds = %33, %31, %12, %2
  %37 = phi i32 [ 0, %12 ], [ %32, %31 ], [ 1, %33 ], [ 0, %2 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_force_commit_nested(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @ext4_new_meta_blocks(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #2 {
  %7 = alloca %struct.ext4_allocation_request, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 0, i64 56, i1 false)
  store ptr %1, ptr %7, align 8
  %8 = getelementptr inbounds %struct.ext4_allocation_request, ptr %7, i32 0, i32 5
  store i64 %2, ptr %8, align 8
  %9 = icmp eq ptr %4, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ext4_allocation_request, ptr %7, i32 0, i32 1
  store i32 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ext4_allocation_request, ptr %7, i32 0, i32 8
  store i32 %3, ptr %12, align 8
  %13 = call i64 @ext4_mb_new_blocks(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %5) #12
  br label %20

14:                                               ; preds = %6
  %15 = load i32, ptr %4, align 4
  %16 = getelementptr inbounds %struct.ext4_allocation_request, ptr %7, i32 0, i32 1
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ext4_allocation_request, ptr %7, i32 0, i32 8
  store i32 %3, ptr %17, align 8
  %18 = call i64 @ext4_mb_new_blocks(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %5) #12
  %19 = load i32, ptr %16, align 4
  store i32 %19, ptr %4, align 4
  br label %20

20:                                               ; preds = %14, %10
  %21 = phi i64 [ %13, %10 ], [ %18, %14 ]
  %22 = phi ptr [ %11, %10 ], [ %16, %14 ]
  %23 = load i32, ptr %5, align 4
  %24 = icmp ne i32 %23, 0
  %25 = and i32 %3, 1024
  %26 = icmp eq i32 %25, 0
  %27 = or i1 %26, %24
  br i1 %27, label %42, label %28

28:                                               ; preds = %20
  %29 = load i32, ptr %22, align 4
  %30 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 27
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.ext4_sb_info, ptr %33, i32 0, i32 12
  %35 = load i32, ptr %34, align 16
  %36 = shl i32 %29, %35
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 19
  %39 = load i8, ptr %38, align 2
  %40 = zext i8 %39 to i64
  %41 = shl i64 %37, %40
  call void @inode_add_bytes(ptr noundef %1, i64 noundef %41) #12
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 1) #12
  br label %42

42:                                               ; preds = %28, %20
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #12
  ret i64 %21
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_mb_new_blocks(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @ext4_count_free_clusters(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 8
  %5 = load i32, ptr %4, align 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %75, label %7

7:                                                ; preds = %71, %1
  %8 = phi i32 [ %73, %71 ], [ 0, %1 ]
  %9 = phi i64 [ %72, %71 ], [ 0, %1 ]
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 8
  %12 = load i32, ptr %11, align 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %13 = icmp ugt i32 %12, %8
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_get_group_desc, i32 noundef 277, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str, i32 noundef %8, i32 noundef %12) #12
  br label %71

15:                                               ; preds = %7
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr inbounds %struct.ext4_sb_info, ptr %16, i32 0, i32 28
  %18 = load i32, ptr %17, align 64
  %19 = lshr i32 %8, %18
  %20 = getelementptr inbounds %struct.ext4_sb_info, ptr %16, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, -1
  %23 = and i32 %22, %8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %24 = getelementptr inbounds %struct.ext4_sb_info, ptr %16, i32 0, i32 16
  %25 = load volatile ptr, ptr %24, align 8
  %26 = getelementptr ptr, ptr %25, i32 %19
  %27 = load ptr, ptr %26, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_get_group_desc, i32 noundef 294, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.1, i32 noundef %8, i32 noundef %19, i32 noundef %23) #12
  br label %71

30:                                               ; preds = %15
  %31 = getelementptr inbounds %struct.buffer_head, ptr %27, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %2, align 4
  %34 = load i32, ptr %33, align 64
  %35 = mul i32 %34, %23
  %36 = getelementptr i8, ptr %32, i32 %35
  %37 = icmp eq ptr %36, null
  br i1 %37, label %71, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.ext4_sb_info, ptr %33, i32 0, i32 58
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %67, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.ext4_sb_info, ptr %33, i32 0, i32 8
  %44 = load i32, ptr %43, align 32
  %45 = icmp ugt i32 %44, %8
  br i1 %45, label %47, label %46, !prof !8

46:                                               ; preds = %42
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3364, 0\0A.popsection", ""() #12, !srcloc !28
  unreachable

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.ext4_sb_info, ptr %33, i32 0, i32 28
  %49 = load i32, ptr %48, align 64
  %50 = lshr i32 %8, %49
  %51 = getelementptr inbounds %struct.ext4_sb_info, ptr %33, i32 0, i32 7
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, -1
  %54 = and i32 %53, %8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %55 = load ptr, ptr %2, align 4
  %56 = getelementptr inbounds %struct.ext4_sb_info, ptr %55, i32 0, i32 58
  %57 = load volatile ptr, ptr %56, align 4
  %58 = getelementptr ptr, ptr %57, i32 %50
  %59 = load ptr, ptr %58, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %60 = getelementptr ptr, ptr %59, i32 %54
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %47
  %64 = load volatile i32, ptr %61, align 4
  %65 = and i32 %64, 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63, %47, %38
  %68 = tail call i32 @ext4_free_group_clusters(ptr noundef %0, ptr noundef nonnull %36) #12
  %69 = zext i32 %68 to i64
  %70 = add i64 %9, %69
  br label %71

71:                                               ; preds = %67, %63, %30, %29, %14
  %72 = phi i64 [ %9, %63 ], [ %70, %67 ], [ %9, %30 ], [ %9, %14 ], [ %9, %29 ]
  %73 = add nuw i32 %8, 1
  %74 = icmp eq i32 %73, %5
  br i1 %74, label %75, label %7

75:                                               ; preds = %71, %1
  %76 = phi i64 [ 0, %1 ], [ %72, %71 ]
  ret i64 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_free_group_clusters(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @ext4_bg_has_super(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %71, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ext4_super_block, ptr %6, i32 0, i32 28
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 512
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ext4_super_block, ptr %6, i32 0, i32 84
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %71, label %17

17:                                               ; preds = %13
  %18 = getelementptr %struct.ext4_super_block, ptr %6, i32 0, i32 84, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %1
  %21 = zext i1 %20 to i32
  br label %71

22:                                               ; preds = %8
  %23 = icmp ult i32 %1, 2
  br i1 %23, label %71, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.ext4_super_block, ptr %6, i32 0, i32 30
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %71, label %29

29:                                               ; preds = %24
  %30 = and i32 %1, 1
  %31 = icmp eq i32 %30, 0
  %32 = icmp ult i32 %1, 3
  %33 = or i1 %32, %31
  br i1 %33, label %71, label %34

34:                                               ; preds = %37, %29
  %35 = phi i32 [ %39, %37 ], [ %1, %29 ]
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %71, label %37

37:                                               ; preds = %34
  %38 = freeze i32 %35
  %39 = udiv i32 %38, 3
  %40 = mul i32 %39, 3
  %41 = sub i32 %38, %40
  %42 = icmp ne i32 %41, 0
  %43 = icmp ult i32 %35, 9
  %44 = or i1 %43, %42
  br i1 %44, label %45, label %34

45:                                               ; preds = %37
  %46 = icmp ult i32 %1, 5
  br i1 %46, label %71, label %47

47:                                               ; preds = %50, %45
  %48 = phi i32 [ %52, %50 ], [ %1, %45 ]
  %49 = icmp eq i32 %48, 5
  br i1 %49, label %71, label %50

50:                                               ; preds = %47
  %51 = freeze i32 %48
  %52 = udiv i32 %51, 5
  %53 = mul i32 %52, 5
  %54 = sub i32 %51, %53
  %55 = icmp ne i32 %54, 0
  %56 = icmp ult i32 %48, 25
  %57 = or i1 %56, %55
  br i1 %57, label %58, label %47

58:                                               ; preds = %50
  %59 = icmp ult i32 %1, 7
  br i1 %59, label %71, label %60

60:                                               ; preds = %63, %58
  %61 = phi i32 [ %65, %63 ], [ %1, %58 ]
  %62 = icmp eq i32 %61, 7
  br i1 %62, label %71, label %63

63:                                               ; preds = %60
  %64 = freeze i32 %61
  %65 = udiv i32 %64, 7
  %66 = mul i32 %65, 7
  %67 = sub i32 %64, %66
  %68 = icmp ne i32 %67, 0
  %69 = icmp ult i32 %61, 49
  %70 = or i1 %69, %68
  br i1 %70, label %71, label %60

71:                                               ; preds = %63, %60, %58, %47, %45, %34, %29, %24, %22, %17, %13, %2
  %72 = phi i32 [ 1, %2 ], [ 1, %13 ], [ 1, %24 ], [ 1, %22 ], [ 0, %29 ], [ %21, %17 ], [ 0, %58 ], [ 0, %45 ], [ 0, %63 ], [ 1, %60 ], [ 1, %47 ], [ 1, %34 ]
  ret i32 %72
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @ext4_bg_num_gdb(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ext4_super_block, ptr %6, i32 0, i32 47
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ext4_super_block, ptr %6, i32 0, i32 29
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %2
  %16 = freeze i32 %10
  %17 = udiv i32 %1, %16
  %18 = icmp ult i32 %17, %8
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = tail call i32 @ext4_bg_has_super(ptr noundef %0, i32 noundef %1) #12
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 0, i32 %8
  br label %42

23:                                               ; preds = %2
  %24 = tail call i32 @ext4_bg_has_super(ptr noundef %0, i32 noundef %1) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 6
  %28 = load i32, ptr %27, align 8
  br label %42

29:                                               ; preds = %15
  %30 = mul i32 %17, %16
  %31 = sub i32 %1, %30
  %32 = sub i32 %1, %31
  %33 = add i32 %10, -1
  %34 = add i32 %33, %32
  %35 = icmp eq i32 %31, 0
  %36 = add i32 %32, 1
  %37 = icmp eq i32 %36, %1
  %38 = or i1 %35, %37
  %39 = icmp eq i32 %34, %1
  %40 = select i1 %38, i1 true, i1 %39
  %41 = zext i1 %40 to i32
  br label %42

42:                                               ; preds = %29, %26, %23, %19
  %43 = phi i32 [ %41, %29 ], [ %28, %26 ], [ 0, %23 ], [ %22, %19 ]
  ret i32 %43
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i64 @ext4_inode_to_goal_block(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 110
  %7 = load i32, ptr %6, align 4
  %8 = shl nuw i32 1, %7
  %9 = getelementptr i8, ptr %0, i32 -136
  %10 = load i32, ptr %9, align 8
  %11 = icmp sgt i32 %8, 3
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = sub nsw i32 0, %8
  %14 = and i32 %10, %13
  %15 = load i16, ptr %0, align 8
  %16 = and i16 %15, -4096
  %17 = icmp eq i16 %16, -32768
  %18 = zext i1 %17 to i32
  %19 = add nuw i32 %14, %18
  br label %20

20:                                               ; preds = %12, %1
  %21 = phi i32 [ %10, %1 ], [ %19, %12 ]
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = zext i32 %24 to i64
  %26 = mul nuw i64 %25, %22
  %27 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 15
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ext4_super_block, ptr %28, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = zext i32 %30 to i64
  %32 = add nuw i64 %26, %31
  %33 = getelementptr inbounds %struct.ext4_super_block, ptr %28, i32 0, i32 29
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 128
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %20
  %38 = getelementptr inbounds %struct.ext4_super_block, ptr %28, i32 0, i32 50
  %39 = load i32, ptr %38, align 8
  %40 = zext i32 %39 to i64
  %41 = shl nuw i64 %40, 32
  br label %42

42:                                               ; preds = %37, %20
  %43 = phi i64 [ %41, %37 ], [ 0, %20 ]
  %44 = getelementptr inbounds %struct.ext4_super_block, ptr %28, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = zext i32 %45 to i64
  %47 = or i64 %43, %46
  %48 = add i64 %47, -1
  %49 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 17
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 134217728
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %42
  %54 = add nuw i64 %32, %25
  %55 = icmp ugt i64 %54, %48
  %56 = tail call ptr @llvm.thread.pointer() #12
  %57 = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 52
  %58 = load i32, ptr %57, align 8
  %59 = srem i32 %58, 16
  br i1 %55, label %62, label %60

60:                                               ; preds = %53
  %61 = lshr i32 %24, 4
  br label %66

62:                                               ; preds = %53
  %63 = sub i64 %48, %32
  %64 = lshr i64 %63, 4
  %65 = trunc i64 %64 to i32
  br label %66

66:                                               ; preds = %62, %60
  %67 = phi i32 [ %65, %62 ], [ %61, %60 ]
  %68 = mul i32 %59, %67
  %69 = sext i32 %68 to i64
  %70 = add i64 %32, %69
  br label %71

71:                                               ; preds = %66, %42
  %72 = phi i64 [ %70, %66 ], [ %32, %42 ]
  ret i64 %72
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @ext4_num_base_meta_clusters(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @ext4_bg_has_super(ptr noundef %0, i32 noundef %1)
  %6 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 29
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 47
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = mul i32 %16, %14
  %18 = icmp ugt i32 %17, %1
  br i1 %18, label %19, label %55

19:                                               ; preds = %12
  %20 = icmp eq i32 %5, 0
  br i1 %20, label %79, label %23

21:                                               ; preds = %2
  %22 = icmp eq i32 %5, 0
  br i1 %22, label %79, label %30

23:                                               ; preds = %19
  %24 = udiv i32 %1, %16
  %25 = icmp ult i32 %24, %14
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = tail call i32 @ext4_bg_has_super(ptr noundef %0, i32 noundef %1) #12
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 0, i32 %14
  br label %48

30:                                               ; preds = %21
  %31 = tail call i32 @ext4_bg_has_super(ptr noundef %0, i32 noundef %1) #12
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 6
  %35 = load i32, ptr %34, align 8
  br label %48

36:                                               ; preds = %23
  %37 = urem i32 %1, %16
  %38 = sub i32 %1, %37
  %39 = add i32 %16, -1
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %37, 0
  %42 = add i32 %38, 1
  %43 = icmp eq i32 %42, %1
  %44 = or i1 %41, %43
  %45 = icmp eq i32 %40, %1
  %46 = select i1 %44, i1 true, i1 %45
  %47 = zext i1 %46 to i32
  br label %48

48:                                               ; preds = %36, %33, %30, %26
  %49 = phi i32 [ %47, %36 ], [ %35, %33 ], [ 0, %30 ], [ %29, %26 ]
  %50 = add i32 %49, 1
  %51 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 37
  %52 = load i16, ptr %51, align 2
  %53 = zext i16 %52 to i32
  %54 = add i32 %50, %53
  br label %79

55:                                               ; preds = %12
  %56 = freeze i32 %16
  %57 = udiv i32 %1, %56
  %58 = icmp ult i32 %57, %14
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = tail call i32 @ext4_bg_has_super(ptr noundef %0, i32 noundef %1) #12
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %61, i32 0, i32 %14
  br label %76

63:                                               ; preds = %55
  %64 = mul i32 %57, %56
  %65 = sub i32 %1, %64
  %66 = sub i32 %1, %65
  %67 = add i32 %16, -1
  %68 = add i32 %67, %66
  %69 = icmp eq i32 %65, 0
  %70 = add i32 %66, 1
  %71 = icmp eq i32 %70, %1
  %72 = or i1 %69, %71
  %73 = icmp eq i32 %68, %1
  %74 = select i1 %72, i1 true, i1 %73
  %75 = zext i1 %74 to i32
  br label %76

76:                                               ; preds = %63, %59
  %77 = phi i32 [ %75, %63 ], [ %62, %59 ]
  %78 = add i32 %77, %5
  br label %79

79:                                               ; preds = %76, %48, %21, %19
  %80 = phi i32 [ %54, %48 ], [ 0, %19 ], [ %78, %76 ], [ 0, %21 ]
  %81 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 11
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %80, -1
  %84 = add i32 %83, %82
  %85 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 12
  %86 = load i32, ptr %85, align 16
  %87 = lshr i32 %84, %86
  ret i32 %87
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_inode_bitmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_inode_table(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_group_desc_csum_verify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_mark_bitmap_end(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_read_block_bitmap_load(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_block_bitmap_csum_verify(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p([1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_add_bytes(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }

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
!9 = !{i64 2147725348, i64 2147725628, i64 2147725962, i64 2147726296}
!10 = !{i64 2153783806}
!11 = !{i64 2149237608}
!12 = !{i64 2149237825}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2152552835}
!15 = !{i64 427120, i64 2147917091, i64 2147917117, i64 2147917164, i64 2147917186, i64 2147917214, i64 2147917234}
!16 = !{i64 2147930863, i64 2147930889, i64 2147930918, i64 2147930952, i64 2147930983, i64 2147931006}
!17 = !{i64 2147936968, i64 2147937000, i64 2147937029, i64 2147937063, i64 2147937094, i64 2147937117}
!18 = !{i64 2148038284}
!19 = !{i64 2149084904}
!20 = !{i64 2149080728}
!21 = !{i64 2149080803, i64 2149080830, i64 2149080877, i64 2149080899, i64 2149080927, i64 2149080947}
!22 = !{i64 2149107907}
!23 = !{i64 413689, i64 413714, i64 413736, i64 413752, i64 413764, i64 413784, i64 413808, i64 413824, i64 413836}
!24 = !{i64 2147928139}
!25 = !{i64 2156508227, i64 2156508708, i64 2156508264, i64 2156508320, i64 2156508354, i64 2156508378, i64 2156508419, i64 2156508440, i64 2156508468, i64 2156508502}
!26 = !{i64 2155325041}
!27 = !{i64 2155325245}
!28 = !{i64 2153778108, i64 2153778588, i64 2153778145, i64 2153778201, i64 2153778235, i64 2153778259, i64 2153778300, i64 2153778321, i64 2153778349, i64 2153778383}
!29 = !{i64 416734, i64 416755}
!30 = !{i64 2156517281}
!31 = !{i64 2147928506, i64 2147928532, i64 2147928561, i64 2147928595, i64 2147928626, i64 2147928649}
