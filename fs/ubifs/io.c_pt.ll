; ModuleID = '/llk/IR/fs/ubifs/io.c_pt.bc'
source_filename = "../fs/ubifs/io.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.ubifs_global_debug_info = type { i8, [3 x i8] }
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
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ubifs_debug_info = type { %struct.ubifs_zbranch, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i8, [10 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.ubifs_stats_info = type { i32, i32, i32 }
%struct.ubifs_pad_node = type <{ %struct.ubifs_ch, i32 }>
%struct.ubifs_wbuf = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, %struct.spinlock, %struct.hrtimer, i8, i32, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ubifs_jhead = type { %struct.ubifs_wbuf, %struct.list_head, i8, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.38, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.39, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.40, ptr, %struct.address_space, %struct.list_head, %union.anon.41, i32, i32, ptr, ptr }
%union.anon.38 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%union.anon.39 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.40 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.41 = type { ptr }

@.str = private unnamed_addr constant [37 x i8] c"switched to read-only mode, error %d\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"reading %d bytes from LEB %d:%d failed, error %d\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"!c->ro_media && !c->ro_mount\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"fs/ubifs/io.c\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"writing %d bytes to LEB %d:%d failed, error %d\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"changing %d bytes in LEB %d failed, error %d\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"unmap LEB %d failed, error %d\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"mapping LEB %d failed, error %d\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"ubi_is_mapped failed for LEB %d, error %d\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"lnum >= 0 && lnum < c->leb_cnt && offs >= 0\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"!(offs & 7) && offs < c->leb_size\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"bad magic %#08x, expected %#08x\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"bad node type %d\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"bad CRC: calculated %#08x, read %#08x\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"bad node length %d\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"bad node at LEB %d:%d\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"pad >= 0\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"len >= UBIFS_CH_SZ\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"!(wbuf->avail & 7)\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"wbuf->offs + wbuf->size <= c->leb_size\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"wbuf->size >= c->min_io_size\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"wbuf->size <= c->max_write_size\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"wbuf->size % c->min_io_size == 0\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"!((wbuf->offs + wbuf->size) % c->max_write_size)\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"lnum >= 0 && lnum < c->leb_cnt\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"offs >= 0 && offs <= c->leb_size\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"offs % c->min_io_size == 0 && !(offs & 7)\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"lnum != wbuf->lnum\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"wbuf->used == 0\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"cannot sync write-buffer, error %d\00", align 1
@.str.30 = private unnamed_addr constant [54 x i8] c"len > 0 && wbuf->lnum >= 0 && wbuf->lnum < c->leb_cnt\00", align 1
@.str.31 = private unnamed_addr constant [52 x i8] c"wbuf->offs >= 0 && wbuf->offs % c->min_io_size == 0\00", align 1
@.str.32 = private unnamed_addr constant [47 x i8] c"!(wbuf->offs & 7) && wbuf->offs <= c->leb_size\00", align 1
@.str.33 = private unnamed_addr constant [45 x i8] c"wbuf->avail > 0 && wbuf->avail <= wbuf->size\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"mutex_is_locked(&wbuf->io_mutex)\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"!c->space_fixup\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"aligned_len - len < 8\00", align 1
@.str.37 = private unnamed_addr constant [45 x i8] c"cannot write %d bytes to LEB %d:%d, error %d\00", align 1
@.str.38 = private unnamed_addr constant [49 x i8] c"offs % c->min_io_size == 0 && offs < c->leb_size\00", align 1
@.str.39 = private unnamed_addr constant [52 x i8] c"wbuf && lnum >= 0 && lnum < c->leb_cnt && offs >= 0\00", align 1
@.str.40 = private unnamed_addr constant [41 x i8] c"type >= 0 && type < UBIFS_NODE_TYPES_CNT\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"bad node type (%d but expected %d)\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"expected node type %d\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"bad node length %d, expected %d\00", align 1
@.str.44 = private unnamed_addr constant [48 x i8] c"len >= UBIFS_CH_SZ && offs + len <= c->leb_size\00", align 1
@.str.45 = private unnamed_addr constant [45 x i8] c"bad node at LEB %d:%d, LEB mapping status %d\00", align 1
@ubifs_wbuf_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"&wbuf->io_mutex\00", align 1
@ubifs_dbg = external dso_local local_unnamed_addr global %struct.ubifs_global_debug_info, align 4
@.str.47 = private unnamed_addr constant [43 x i8] c"sequence number overflow %llu, end of life\00", align 1
@.str.48 = private unnamed_addr constant [50 x i8] c"running out of sequence numbers, end of life soon\00", align 1
@dirty_writeback_interval = external dso_local local_unnamed_addr global i32, align 4
@.str.49 = private unnamed_addr constant [30 x i8] c"!hrtimer_active(&wbuf->timer)\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"delta <= ULONG_MAX\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_ro_mode(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 81
  %4 = load i8, ptr %3, align 8
  %5 = and i8 %4, 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = or i8 %4, 4
  store i8 %8, ptr %3, align 8
  %9 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %10 = load i16, ptr %9, align 4
  %11 = and i16 %10, -17
  store i16 %11, ptr %9, align 4
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, 1
  store i32 %15, ptr %13, align 4
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %1) #9
  tail call void @dump_stack() #10
  br label %16

16:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_leb_read(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 100
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @ubi_leb_read(ptr noundef %8, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = icmp ne i32 %9, -74
  %13 = icmp ne i32 %5, 0
  %14 = or i1 %13, %12
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %4, i32 noundef %1, i32 noundef %3, i32 noundef %9) #9
  tail call void @dump_stack() #10
  br label %16

16:                                               ; preds = %15, %11, %6
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_leb_write(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 81
  %7 = load i8, ptr %6, align 8
  %8 = and i8 %7, 3
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10, !prof !8

10:                                               ; preds = %5
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 110) #9
  %11 = load i8, ptr %6, align 8
  br label %12

12:                                               ; preds = %10, %5
  %13 = phi i8 [ %11, %10 ], [ %7, %5 ]
  %14 = and i8 %13, 4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %12
  %17 = load i8, ptr @ubifs_dbg, align 4
  %18 = and i8 %17, 32
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ubifs_debug_info, ptr %22, i32 0, i32 19
  %24 = load i8, ptr %23, align 4
  %25 = and i8 %24, 32
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 100
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @ubi_leb_write(ptr noundef %29, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #9
  br label %33

31:                                               ; preds = %20, %16
  %32 = tail call i32 @dbg_leb_write(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #9
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi i32 [ %32, %31 ], [ %30, %27 ]
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %4, i32 noundef %1, i32 noundef %3, i32 noundef %34) #9
  %37 = load i8, ptr %6, align 8
  %38 = and i8 %37, 4
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = or i8 %37, 4
  store i8 %41, ptr %6, align 8
  %42 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %43 = load i16, ptr %42, align 4
  %44 = and i16 %43, -17
  store i16 %44, ptr %42, align 4
  %45 = load ptr, ptr %0, align 8
  %46 = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 10
  %47 = load i32, ptr %46, align 4
  %48 = or i32 %47, 1
  store i32 %48, ptr %46, align 4
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %34) #9
  tail call void @dump_stack() #10
  br label %49

49:                                               ; preds = %40, %36
  tail call void @dump_stack() #10
  br label %50

50:                                               ; preds = %49, %33, %12
  %51 = phi i32 [ -30, %12 ], [ %34, %49 ], [ 0, %33 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_leb_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_leb_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_leb_change(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 81
  %6 = load i8, ptr %5, align 8
  %7 = and i8 %6, 3
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9, !prof !8

9:                                                ; preds = %4
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 130) #9
  %10 = load i8, ptr %5, align 8
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi i8 [ %10, %9 ], [ %6, %4 ]
  %13 = and i8 %12, 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %49

15:                                               ; preds = %11
  %16 = load i8, ptr @ubifs_dbg, align 4
  %17 = and i8 %16, 32
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ubifs_debug_info, ptr %21, i32 0, i32 19
  %23 = load i8, ptr %22, align 4
  %24 = and i8 %23, 32
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 100
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @ubi_leb_change(ptr noundef %28, i32 noundef %1, ptr noundef %2, i32 noundef %3) #9
  br label %32

30:                                               ; preds = %19, %15
  %31 = tail call i32 @dbg_leb_change(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #9
  br label %32

32:                                               ; preds = %30, %26
  %33 = phi i32 [ %31, %30 ], [ %29, %26 ]
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %3, i32 noundef %1, i32 noundef %33) #9
  %36 = load i8, ptr %5, align 8
  %37 = and i8 %36, 4
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = or i8 %36, 4
  store i8 %40, ptr %5, align 8
  %41 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %42 = load i16, ptr %41, align 4
  %43 = and i16 %42, -17
  store i16 %43, ptr %41, align 4
  %44 = load ptr, ptr %0, align 8
  %45 = getelementptr inbounds %struct.super_block, ptr %44, i32 0, i32 10
  %46 = load i32, ptr %45, align 4
  %47 = or i32 %46, 1
  store i32 %47, ptr %45, align 4
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %33) #9
  tail call void @dump_stack() #10
  br label %48

48:                                               ; preds = %39, %35
  tail call void @dump_stack() #10
  br label %49

49:                                               ; preds = %48, %32, %11
  %50 = phi i32 [ -30, %11 ], [ %33, %48 ], [ 0, %32 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_leb_change(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_leb_change(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_leb_unmap(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 81
  %4 = load i8, ptr %3, align 8
  %5 = and i8 %4, 3
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7, !prof !8

7:                                                ; preds = %2
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 150) #9
  %8 = load i8, ptr %3, align 8
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i8 [ %8, %7 ], [ %4, %2 ]
  %11 = and i8 %10, 4
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %47

13:                                               ; preds = %9
  %14 = load i8, ptr @ubifs_dbg, align 4
  %15 = and i8 %14, 32
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ubifs_debug_info, ptr %19, i32 0, i32 19
  %21 = load i8, ptr %20, align 4
  %22 = and i8 %21, 32
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 100
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @ubi_leb_unmap(ptr noundef %26, i32 noundef %1) #9
  br label %30

28:                                               ; preds = %17, %13
  %29 = tail call i32 @dbg_leb_unmap(ptr noundef %0, i32 noundef %1) #9
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i32 [ %29, %28 ], [ %27, %24 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %1, i32 noundef %31) #9
  %34 = load i8, ptr %3, align 8
  %35 = and i8 %34, 4
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = or i8 %34, 4
  store i8 %38, ptr %3, align 8
  %39 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %40 = load i16, ptr %39, align 4
  %41 = and i16 %40, -17
  store i16 %41, ptr %39, align 4
  %42 = load ptr, ptr %0, align 8
  %43 = getelementptr inbounds %struct.super_block, ptr %42, i32 0, i32 10
  %44 = load i32, ptr %43, align 4
  %45 = or i32 %44, 1
  store i32 %45, ptr %43, align 4
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %31) #9
  tail call void @dump_stack() #10
  br label %46

46:                                               ; preds = %37, %33
  tail call void @dump_stack() #10
  br label %47

47:                                               ; preds = %46, %30, %9
  %48 = phi i32 [ -30, %9 ], [ %31, %46 ], [ 0, %30 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_leb_unmap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_leb_unmap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_leb_map(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 81
  %4 = load i8, ptr %3, align 8
  %5 = and i8 %4, 3
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7, !prof !8

7:                                                ; preds = %2
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 169) #9
  %8 = load i8, ptr %3, align 8
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i8 [ %8, %7 ], [ %4, %2 ]
  %11 = and i8 %10, 4
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %47

13:                                               ; preds = %9
  %14 = load i8, ptr @ubifs_dbg, align 4
  %15 = and i8 %14, 32
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ubifs_debug_info, ptr %19, i32 0, i32 19
  %21 = load i8, ptr %20, align 4
  %22 = and i8 %21, 32
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 100
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @ubi_leb_map(ptr noundef %26, i32 noundef %1) #9
  br label %30

28:                                               ; preds = %17, %13
  %29 = tail call i32 @dbg_leb_map(ptr noundef %0, i32 noundef %1) #9
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i32 [ %29, %28 ], [ %27, %24 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %1, i32 noundef %31) #9
  %34 = load i8, ptr %3, align 8
  %35 = and i8 %34, 4
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = or i8 %34, 4
  store i8 %38, ptr %3, align 8
  %39 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %40 = load i16, ptr %39, align 4
  %41 = and i16 %40, -17
  store i16 %41, ptr %39, align 4
  %42 = load ptr, ptr %0, align 8
  %43 = getelementptr inbounds %struct.super_block, ptr %42, i32 0, i32 10
  %44 = load i32, ptr %43, align 4
  %45 = or i32 %44, 1
  store i32 %45, ptr %43, align 4
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %31) #9
  tail call void @dump_stack() #10
  br label %46

46:                                               ; preds = %37, %33
  tail call void @dump_stack() #10
  br label %47

47:                                               ; preds = %46, %30, %9
  %48 = phi i32 [ -30, %9 ], [ %31, %46 ], [ 0, %30 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_leb_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_leb_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_is_mapped(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 100
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @ubi_is_mapped(ptr noundef %4, i32 noundef %1) #9
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %1, i32 noundef %5) #9
  tail call void @dump_stack() #10
  br label %8

8:                                                ; preds = %7, %2
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_is_mapped(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_check_node(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = icmp sgt i32 %3, -1
  br i1 %8, label %9, label %15, !prof !8

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 79
  %11 = load i32, ptr %10, align 8
  %12 = icmp sgt i32 %11, %3
  %13 = icmp sgt i32 %4, -1
  %14 = and i1 %13, %12
  br i1 %14, label %16, label %15, !prof !8

15:                                               ; preds = %9, %7
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, i32 noundef 251) #9
  br label %16

16:                                               ; preds = %15, %9
  %17 = and i32 %4, 7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23, !prof !8

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %21 = load i32, ptr %20, align 8
  %22 = icmp sgt i32 %21, %4
  br i1 %22, label %24, label %23, !prof !8

23:                                               ; preds = %19, %16
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, i32 noundef 252) #9
  br label %24

24:                                               ; preds = %23, %19
  %25 = load i32, ptr %1, align 1
  %26 = icmp eq i32 %25, 101718065
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = icmp eq i32 %5, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %25, i32 noundef 101718065) #9
  br label %30

30:                                               ; preds = %29, %27
  %31 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 195
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %105, label %100

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.ubifs_ch, ptr %1, i32 0, i32 4
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp ugt i8 %36, 13
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = icmp eq i32 %5, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %39
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %37) #9
  br label %42

42:                                               ; preds = %41, %39
  %43 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 195
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %105, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.ubifs_stats_info, ptr %44, i32 0, i32 1
  br label %100

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.ubifs_ch, ptr %1, i32 0, i32 3
  %50 = load i32, ptr %49, align 1
  %51 = add i32 %50, %4
  %52 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %53 = load i32, ptr %52, align 8
  %54 = icmp sgt i32 %51, %53
  br i1 %54, label %97, label %55

55:                                               ; preds = %48
  %56 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 99, i32 %37
  %57 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 99, i32 %37, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  %60 = load i32, ptr %56, align 4
  br i1 %59, label %61, label %63

61:                                               ; preds = %55
  %62 = icmp eq i32 %50, %60
  br i1 %62, label %67, label %97

63:                                               ; preds = %55
  %64 = icmp slt i32 %50, %60
  %65 = icmp sgt i32 %50, %58
  %66 = select i1 %64, i1 true, i1 %65
  br i1 %66, label %97, label %67

67:                                               ; preds = %63, %61
  %68 = icmp eq i32 %6, 0
  %69 = icmp eq i8 %36, 1
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %71, label %81

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 186
  %73 = load i8, ptr %72, align 4
  %74 = and i8 %73, 24
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %78 = load i16, ptr %77, align 4
  %79 = and i16 %78, 16
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %81, label %110

81:                                               ; preds = %76, %71, %67
  %82 = getelementptr i8, ptr %1, i32 8
  %83 = add i32 %50, -8
  %84 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %82, i32 noundef %83) #11
  %85 = getelementptr inbounds %struct.ubifs_ch, ptr %1, i32 0, i32 1
  %86 = load i32, ptr %85, align 1
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %110, label %88

88:                                               ; preds = %81
  %89 = icmp eq i32 %5, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %88
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %84, i32 noundef %86) #9
  br label %91

91:                                               ; preds = %90, %88
  %92 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 195
  %93 = load ptr, ptr %92, align 8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %105, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.ubifs_stats_info, ptr %93, i32 0, i32 2
  br label %100

97:                                               ; preds = %63, %61, %48
  %98 = icmp eq i32 %5, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %97
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %50) #9
  br label %108

100:                                              ; preds = %95, %46, %30
  %101 = phi ptr [ %96, %95 ], [ %47, %46 ], [ %32, %30 ]
  %102 = phi i32 [ -117, %95 ], [ -22, %46 ], [ -117, %30 ]
  %103 = load i32, ptr %101, align 4
  %104 = add i32 %103, 1
  store i32 %104, ptr %101, align 4
  br label %105

105:                                              ; preds = %100, %91, %42, %30
  %106 = phi i32 [ -117, %30 ], [ -22, %42 ], [ -117, %91 ], [ %102, %100 ]
  %107 = icmp eq i32 %5, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105, %99
  %109 = phi i32 [ -22, %99 ], [ %106, %105 ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %3, i32 noundef %4) #9
  tail call void @ubifs_dump_node(ptr noundef %0, ptr noundef %1, i32 noundef %2) #9
  tail call void @dump_stack() #10
  br label %110

110:                                              ; preds = %108, %105, %97, %81, %76
  %111 = phi i32 [ 0, %76 ], [ 0, %81 ], [ %109, %108 ], [ %106, %105 ], [ -22, %97 ]
  ret i32 %111
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_pad(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp slt i32 %2, 0
  br i1 %4, label %5, label %6, !prof !9

5:                                                ; preds = %3
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, i32 noundef 332) #9
  br label %8

6:                                                ; preds = %3
  %7 = icmp ugt i32 %2, 27
  br i1 %7, label %8, label %20

8:                                                ; preds = %6, %5
  store i32 101718065, ptr %1, align 1
  %9 = getelementptr inbounds %struct.ubifs_ch, ptr %1, i32 0, i32 4
  store i8 5, ptr %9, align 1
  %10 = getelementptr inbounds %struct.ubifs_ch, ptr %1, i32 0, i32 5
  store i8 0, ptr %10, align 1
  %11 = getelementptr inbounds %struct.ubifs_ch, ptr %1, i32 0, i32 6
  %12 = getelementptr %struct.ubifs_ch, ptr %1, i32 0, i32 6, i32 1
  store i8 0, ptr %12, align 1
  store i8 0, ptr %11, align 1
  %13 = getelementptr %struct.ubifs_ch, ptr %1, i32 0, i32 2
  store i64 0, ptr %13, align 1
  %14 = getelementptr inbounds %struct.ubifs_ch, ptr %1, i32 0, i32 3
  store i32 28, ptr %14, align 1
  %15 = add i32 %2, -28
  %16 = getelementptr inbounds %struct.ubifs_pad_node, ptr %1, i32 0, i32 1
  store i32 %15, ptr %16, align 1
  %17 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %13, i32 noundef 20) #11
  %18 = getelementptr inbounds %struct.ubifs_ch, ptr %1, i32 0, i32 1
  store i32 %17, ptr %18, align 1
  %19 = getelementptr i8, ptr %1, i32 28
  tail call void @llvm.memset.p0.i32(ptr align 1 %19, i8 0, i32 %15, i1 false)
  br label %23

20:                                               ; preds = %6
  %21 = icmp eq i32 %2, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call void @llvm.memset.p0.i32(ptr align 1 %1, i8 -50, i32 %2, i1 false)
  br label %23

23:                                               ; preds = %22, %20, %8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_init_node(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %5) #9
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 3
  %7 = load i64, ptr %6, align 8
  %8 = add i64 %7, 1
  store i64 %8, ptr %6, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %9 = load i16, ptr %5, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %11 = icmp ugt i64 %8, -4294967297
  br i1 %11, label %12, label %16, !prof !9

12:                                               ; preds = %4
  %13 = icmp ugt i64 %8, -16777217
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.47, i64 noundef %8) #9
  tail call void @ubifs_ro_mode(ptr noundef %0, i32 noundef -22) #9
  br label %15

15:                                               ; preds = %14, %12
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %0, ptr noundef nonnull @.str.48) #9
  br label %16

16:                                               ; preds = %15, %4
  %17 = icmp ult i32 %2, 24
  br i1 %17, label %18, label %19, !prof !9

18:                                               ; preds = %16
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.3, i32 noundef 383) #9
  br label %19

19:                                               ; preds = %18, %16
  store i32 101718065, ptr %1, align 1
  %20 = getelementptr inbounds %struct.ubifs_ch, ptr %1, i32 0, i32 3
  store i32 %2, ptr %20, align 1
  %21 = getelementptr inbounds %struct.ubifs_ch, ptr %1, i32 0, i32 5
  store i8 0, ptr %21, align 1
  %22 = getelementptr inbounds %struct.ubifs_ch, ptr %1, i32 0, i32 2
  store i64 %8, ptr %22, align 1
  %23 = getelementptr inbounds %struct.ubifs_ch, ptr %1, i32 0, i32 6
  %24 = getelementptr %struct.ubifs_ch, ptr %1, i32 0, i32 6, i32 1
  store i8 0, ptr %24, align 1
  store i8 0, ptr %23, align 1
  %25 = icmp eq i32 %3, 0
  br i1 %25, label %56, label %26

26:                                               ; preds = %19
  %27 = add i32 %2, 7
  %28 = and i32 %27, -8
  %29 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 71
  %30 = load i32, ptr %29, align 8
  %31 = add i32 %28, -1
  %32 = add i32 %31, %30
  %33 = sub i32 0, %30
  %34 = and i32 %32, %33
  %35 = sub i32 %34, %28
  %36 = getelementptr i8, ptr %1, i32 %28
  %37 = icmp slt i32 %35, 0
  br i1 %37, label %38, label %39, !prof !9

38:                                               ; preds = %26
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, i32 noundef 332) #9
  br label %41

39:                                               ; preds = %26
  %40 = icmp ugt i32 %35, 27
  br i1 %40, label %41, label %53

41:                                               ; preds = %39, %38
  store i32 101718065, ptr %36, align 1
  %42 = getelementptr inbounds %struct.ubifs_ch, ptr %36, i32 0, i32 4
  store i8 5, ptr %42, align 1
  %43 = getelementptr inbounds %struct.ubifs_ch, ptr %36, i32 0, i32 5
  store i8 0, ptr %43, align 1
  %44 = getelementptr inbounds %struct.ubifs_ch, ptr %36, i32 0, i32 6
  %45 = getelementptr %struct.ubifs_ch, ptr %36, i32 0, i32 6, i32 1
  store i8 0, ptr %45, align 1
  store i8 0, ptr %44, align 1
  %46 = getelementptr %struct.ubifs_ch, ptr %36, i32 0, i32 2
  store i64 0, ptr %46, align 1
  %47 = getelementptr inbounds %struct.ubifs_ch, ptr %36, i32 0, i32 3
  store i32 28, ptr %47, align 1
  %48 = add i32 %35, -28
  %49 = getelementptr inbounds %struct.ubifs_pad_node, ptr %36, i32 0, i32 1
  store i32 %48, ptr %49, align 1
  %50 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %46, i32 noundef 20) #11
  %51 = getelementptr inbounds %struct.ubifs_ch, ptr %36, i32 0, i32 1
  store i32 %50, ptr %51, align 1
  %52 = getelementptr i8, ptr %36, i32 28
  tail call void @llvm.memset.p0.i32(ptr align 1 %52, i8 0, i32 %48, i1 false) #9
  br label %56

53:                                               ; preds = %39
  %54 = icmp eq i32 %34, %28
  br i1 %54, label %56, label %55

55:                                               ; preds = %53
  tail call void @llvm.memset.p0.i32(ptr align 1 %36, i8 -50, i32 %35, i1 false) #9
  br label %56

56:                                               ; preds = %55, %53, %41, %19
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ubifs_crc_node(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr i8, ptr %1, i32 8
  %5 = add i32 %2, -8
  %6 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %4, i32 noundef %5) #11
  %7 = getelementptr inbounds %struct.ubifs_ch, ptr %1, i32 0, i32 1
  store i32 %6, ptr %7, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_prepare_node_hmac(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  tail call void @ubifs_init_node(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %4)
  %6 = getelementptr i8, ptr %1, i32 8
  %7 = add i32 %2, -8
  %8 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %6, i32 noundef %7) #11
  %9 = getelementptr inbounds %struct.ubifs_ch, ptr %1, i32 0, i32 1
  store i32 %8, ptr %9, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_prepare_node(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call void @ubifs_init_node(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #9
  %5 = getelementptr i8, ptr %1, i32 8
  %6 = add i32 %2, -8
  %7 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %5, i32 noundef %6) #11
  %8 = getelementptr inbounds %struct.ubifs_ch, ptr %1, i32 0, i32 1
  store i32 %7, ptr %8, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_prep_grp_node(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %5) #9
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 3
  %7 = load i64, ptr %6, align 8
  %8 = add i64 %7, 1
  store i64 %8, ptr %6, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %9 = load i16, ptr %5, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %11 = icmp ugt i64 %8, -4294967297
  br i1 %11, label %12, label %16, !prof !9

12:                                               ; preds = %4
  %13 = icmp ugt i64 %8, -16777217
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.47, i64 noundef %8) #9
  tail call void @ubifs_ro_mode(ptr noundef %0, i32 noundef -22) #9
  br label %15

15:                                               ; preds = %14, %12
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %0, ptr noundef nonnull @.str.48) #9
  br label %16

16:                                               ; preds = %15, %4
  %17 = icmp ult i32 %2, 24
  br i1 %17, label %18, label %19, !prof !9

18:                                               ; preds = %16
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.3, i32 noundef 476) #9
  br label %19

19:                                               ; preds = %18, %16
  store i32 101718065, ptr %1, align 1
  %20 = getelementptr inbounds %struct.ubifs_ch, ptr %1, i32 0, i32 3
  store i32 %2, ptr %20, align 1
  %21 = icmp eq i32 %3, 0
  %22 = select i1 %21, i8 1, i8 2
  %23 = getelementptr inbounds %struct.ubifs_ch, ptr %1, i32 0, i32 5
  store i8 %22, ptr %23, align 1
  %24 = getelementptr %struct.ubifs_ch, ptr %1, i32 0, i32 2
  store i64 %8, ptr %24, align 1
  %25 = getelementptr inbounds %struct.ubifs_ch, ptr %1, i32 0, i32 6
  %26 = getelementptr %struct.ubifs_ch, ptr %1, i32 0, i32 6, i32 1
  store i8 0, ptr %26, align 1
  store i8 0, ptr %25, align 1
  %27 = add i32 %2, -8
  %28 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %24, i32 noundef %27) #11
  %29 = getelementptr inbounds %struct.ubifs_ch, ptr %1, i32 0, i32 1
  store i32 %28, ptr %29, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_wbuf_sync_nolock(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 12
  %4 = load i8, ptr %3, align 8
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = and i8 %4, -3
  store i8 %8, ptr %3, align 8
  %9 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 11
  %10 = tail call i32 @hrtimer_cancel(ptr noundef %9) #9
  br label %11

11:                                               ; preds = %7, %1
  %12 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %146, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %146, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 4
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24, !prof !8

24:                                               ; preds = %19
  tail call void @ubifs_assert_failed(ptr noundef %2, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.3, i32 noundef 570) #9
  br label %25

25:                                               ; preds = %24, %19
  %26 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 6
  %29 = load i32, ptr %28, align 8
  %30 = add i32 %29, %27
  %31 = getelementptr inbounds %struct.ubifs_info, ptr %2, i32 0, i32 75
  %32 = load i32, ptr %31, align 8
  %33 = icmp sgt i32 %30, %32
  br i1 %33, label %34, label %36, !prof !9

34:                                               ; preds = %25
  tail call void @ubifs_assert_failed(ptr noundef %2, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.3, i32 noundef 571) #9
  %35 = load i32, ptr %28, align 8
  br label %36

36:                                               ; preds = %34, %25
  %37 = phi i32 [ %29, %25 ], [ %35, %34 ]
  %38 = getelementptr inbounds %struct.ubifs_info, ptr %2, i32 0, i32 71
  %39 = load i32, ptr %38, align 8
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %43, !prof !9

41:                                               ; preds = %36
  tail call void @ubifs_assert_failed(ptr noundef %2, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.3, i32 noundef 572) #9
  %42 = load i32, ptr %28, align 8
  br label %43

43:                                               ; preds = %41, %36
  %44 = phi i32 [ %37, %36 ], [ %42, %41 ]
  %45 = getelementptr inbounds %struct.ubifs_info, ptr %2, i32 0, i32 73
  %46 = load i32, ptr %45, align 8
  %47 = icmp sgt i32 %44, %46
  br i1 %47, label %48, label %50, !prof !9

48:                                               ; preds = %43
  tail call void @ubifs_assert_failed(ptr noundef %2, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.3, i32 noundef 573) #9
  %49 = load i32, ptr %28, align 8
  br label %50

50:                                               ; preds = %48, %43
  %51 = phi i32 [ %44, %43 ], [ %49, %48 ]
  %52 = load i32, ptr %38, align 8
  %53 = srem i32 %51, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55, !prof !8

55:                                               ; preds = %50
  tail call void @ubifs_assert_failed(ptr noundef %2, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.3, i32 noundef 574) #9
  br label %56

56:                                               ; preds = %55, %50
  %57 = getelementptr inbounds %struct.ubifs_info, ptr %2, i32 0, i32 81
  %58 = load i8, ptr %57, align 8
  %59 = and i8 %58, 3
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %62, label %61, !prof !8

61:                                               ; preds = %56
  tail call void @ubifs_assert_failed(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 575) #9
  br label %62

62:                                               ; preds = %61, %56
  %63 = load i32, ptr %31, align 8
  %64 = load i32, ptr %26, align 4
  %65 = sub i32 %63, %64
  %66 = load i32, ptr %45, align 8
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load i32, ptr %28, align 8
  %70 = add i32 %69, %64
  %71 = srem i32 %70, %66
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73, !prof !8

73:                                               ; preds = %68
  tail call void @ubifs_assert_failed(ptr noundef %2, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.3, i32 noundef 577) #9
  br label %74

74:                                               ; preds = %73, %68, %62
  %75 = load i8, ptr %57, align 8
  %76 = and i8 %75, 4
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %146

78:                                               ; preds = %74
  %79 = load i32, ptr %12, align 4
  %80 = load i32, ptr %38, align 8
  %81 = add i32 %79, -1
  %82 = add i32 %81, %80
  %83 = sub i32 0, %80
  %84 = and i32 %82, %83
  %85 = sub i32 %84, %79
  %86 = icmp eq i32 %84, %79
  br i1 %86, label %108, label %87

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr i8, ptr %89, i32 %79
  %91 = icmp slt i32 %85, 0
  br i1 %91, label %92, label %93, !prof !9

92:                                               ; preds = %87
  tail call void @ubifs_assert_failed(ptr noundef %2, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, i32 noundef 332) #9
  br label %95

93:                                               ; preds = %87
  %94 = icmp ugt i32 %85, 27
  br i1 %94, label %95, label %107

95:                                               ; preds = %93, %92
  store i32 101718065, ptr %90, align 1
  %96 = getelementptr inbounds %struct.ubifs_ch, ptr %90, i32 0, i32 4
  store i8 5, ptr %96, align 1
  %97 = getelementptr inbounds %struct.ubifs_ch, ptr %90, i32 0, i32 5
  store i8 0, ptr %97, align 1
  %98 = getelementptr inbounds %struct.ubifs_ch, ptr %90, i32 0, i32 6
  %99 = getelementptr %struct.ubifs_ch, ptr %90, i32 0, i32 6, i32 1
  store i8 0, ptr %99, align 1
  store i8 0, ptr %98, align 1
  %100 = getelementptr %struct.ubifs_ch, ptr %90, i32 0, i32 2
  store i64 0, ptr %100, align 1
  %101 = getelementptr inbounds %struct.ubifs_ch, ptr %90, i32 0, i32 3
  store i32 28, ptr %101, align 1
  %102 = add i32 %85, -28
  %103 = getelementptr inbounds %struct.ubifs_pad_node, ptr %90, i32 0, i32 1
  store i32 %102, ptr %103, align 1
  %104 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %100, i32 noundef 20) #11
  %105 = getelementptr inbounds %struct.ubifs_ch, ptr %90, i32 0, i32 1
  store i32 %104, ptr %105, align 1
  %106 = getelementptr i8, ptr %90, i32 28
  tail call void @llvm.memset.p0.i32(ptr align 1 %106, i8 0, i32 %102, i1 false) #9
  br label %108

107:                                              ; preds = %93
  tail call void @llvm.memset.p0.i32(ptr align 1 %90, i8 -50, i32 %85, i1 false) #9
  br label %108

108:                                              ; preds = %107, %95, %78
  %109 = load i32, ptr %16, align 8
  %110 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = load i32, ptr %26, align 4
  %113 = tail call i32 @ubifs_leb_write(ptr noundef %2, i32 noundef %109, ptr noundef %111, i32 noundef %112, i32 noundef %84)
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %146

115:                                              ; preds = %108
  %116 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %116) #9
  %117 = load i32, ptr %26, align 4
  %118 = add i32 %117, %84
  store i32 %118, ptr %26, align 4
  %119 = load i32, ptr %31, align 8
  %120 = sub i32 %119, %118
  %121 = load i32, ptr %45, align 8
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %132, label %123

123:                                              ; preds = %115
  %124 = add i32 %121, -1
  %125 = and i32 %124, %118
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %123
  %128 = add i32 %124, %118
  %129 = sub i32 0, %121
  %130 = and i32 %128, %129
  %131 = sub i32 %130, %118
  br label %132

132:                                              ; preds = %127, %123, %115
  %133 = phi i32 [ %131, %127 ], [ %120, %115 ], [ %121, %123 ]
  store i32 %133, ptr %28, align 8
  store i32 %133, ptr %20, align 8
  store i32 0, ptr %12, align 4
  %134 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 13
  store i32 0, ptr %134, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %135 = load i16, ptr %116, align 4
  %136 = add i16 %135, 1
  store i16 %136, ptr %116, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %137 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 8
  %138 = load ptr, ptr %137, align 8
  %139 = icmp eq ptr %138, null
  br i1 %139, label %146, label %140

140:                                              ; preds = %132
  %141 = load i32, ptr %16, align 8
  %142 = load i32, ptr %31, align 8
  %143 = load i32, ptr %26, align 4
  %144 = sub i32 %142, %143
  %145 = tail call i32 %138(ptr noundef %2, i32 noundef %141, i32 noundef %144, i32 noundef %85) #9
  br label %146

146:                                              ; preds = %140, %132, %108, %74, %15, %11
  %147 = phi i32 [ 0, %15 ], [ 0, %11 ], [ -30, %74 ], [ %113, %108 ], [ %145, %140 ], [ 0, %132 ]
  ret i32 %147
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_wbuf_seek_nolock(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = icmp sgt i32 %1, -1
  br i1 %5, label %6, label %10, !prof !8

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %4, i32 0, i32 79
  %8 = load i32, ptr %7, align 8
  %9 = icmp sgt i32 %8, %1
  br i1 %9, label %11, label %10, !prof !8

10:                                               ; preds = %6, %3
  tail call void @ubifs_assert_failed(ptr noundef %4, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.3, i32 noundef 638) #9
  br label %11

11:                                               ; preds = %10, %6
  %12 = icmp sgt i32 %2, -1
  br i1 %12, label %13, label %17, !prof !8

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.ubifs_info, ptr %4, i32 0, i32 75
  %15 = load i32, ptr %14, align 8
  %16 = icmp slt i32 %15, %2
  br i1 %16, label %17, label %18, !prof !9

17:                                               ; preds = %13, %11
  tail call void @ubifs_assert_failed(ptr noundef %4, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.3, i32 noundef 639) #9
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr inbounds %struct.ubifs_info, ptr %4, i32 0, i32 71
  %20 = load i32, ptr %19, align 8
  %21 = srem i32 %2, %20
  %22 = and i32 %2, 7
  %23 = or i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25, !prof !8

25:                                               ; preds = %18
  tail call void @ubifs_assert_failed(ptr noundef %4, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.3, i32 noundef 640) #9
  br label %26

26:                                               ; preds = %25, %18
  %27 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 2
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, %1
  br i1 %29, label %30, label %31, !prof !9

30:                                               ; preds = %26
  tail call void @ubifs_assert_failed(ptr noundef %4, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.3, i32 noundef 641) #9
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35, !prof !8

35:                                               ; preds = %31
  tail call void @ubifs_assert_failed(ptr noundef %4, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.3, i32 noundef 642) #9
  br label %36

36:                                               ; preds = %35, %31
  %37 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %37) #9
  store i32 %1, ptr %27, align 8
  %38 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 3
  store i32 %2, ptr %38, align 4
  %39 = getelementptr inbounds %struct.ubifs_info, ptr %4, i32 0, i32 75
  %40 = load i32, ptr %39, align 8
  %41 = sub i32 %40, %2
  %42 = getelementptr inbounds %struct.ubifs_info, ptr %4, i32 0, i32 73
  %43 = load i32, ptr %42, align 8
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %54, label %45

45:                                               ; preds = %36
  %46 = add i32 %43, -1
  %47 = and i32 %46, %2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = add i32 %46, %2
  %51 = sub i32 0, %43
  %52 = and i32 %50, %51
  %53 = sub i32 %52, %2
  br label %54

54:                                               ; preds = %49, %45, %36
  %55 = phi i32 [ %53, %49 ], [ %41, %36 ], [ %43, %45 ]
  %56 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 6
  store i32 %55, ptr %56, align 8
  %57 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 4
  store i32 %55, ptr %57, align 8
  store i32 0, ptr %32, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %58 = load i16, ptr %37, align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr %37, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_bg_wbufs_sync(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 81
  %3 = load i8, ptr %2, align 8
  %4 = and i8 %3, 3
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6, !prof !8

6:                                                ; preds = %1
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 672) #9
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 120
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %78, label %11

11:                                               ; preds = %7
  store i32 0, ptr %8, align 8
  %12 = load i8, ptr %2, align 8
  %13 = and i8 %12, 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %54

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 18
  %17 = load i32, ptr %16, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %78

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  br label %21

21:                                               ; preds = %50, %19
  %22 = phi i32 [ 0, %19 ], [ %51, %50 ]
  %23 = load ptr, ptr %20, align 8
  %24 = getelementptr %struct.ubifs_jhead, ptr %23, i32 %22
  %25 = tail call i32 @__cond_resched() #9
  %26 = getelementptr inbounds %struct.ubifs_wbuf, ptr %24, i32 0, i32 9
  %27 = tail call zeroext i1 @mutex_is_locked(ptr noundef %26) #9
  br i1 %27, label %50, label %28

28:                                               ; preds = %21
  tail call void @mutex_lock(ptr noundef %26) #9
  %29 = getelementptr inbounds %struct.ubifs_wbuf, ptr %24, i32 0, i32 12
  %30 = load i8, ptr %29, align 8
  %31 = and i8 %30, 2
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  tail call void @mutex_unlock(ptr noundef %26) #9
  br label %50

34:                                               ; preds = %28
  %35 = tail call i32 @ubifs_wbuf_sync_nolock(ptr noundef %24)
  tail call void @mutex_unlock(ptr noundef %26) #9
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef %35) #9
  %38 = load i8, ptr %2, align 8
  %39 = and i8 %38, 4
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = or i8 %38, 4
  store i8 %42, ptr %2, align 8
  %43 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %44 = load i16, ptr %43, align 4
  %45 = and i16 %44, -17
  store i16 %45, ptr %43, align 4
  %46 = load ptr, ptr %0, align 8
  %47 = getelementptr inbounds %struct.super_block, ptr %46, i32 0, i32 10
  %48 = load i32, ptr %47, align 4
  %49 = or i32 %48, 1
  store i32 %49, ptr %47, align 4
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %35) #9
  tail call void @dump_stack() #10
  br label %54

50:                                               ; preds = %34, %33, %21
  %51 = add nuw nsw i32 %22, 1
  %52 = load i32, ptr %16, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %21, label %78

54:                                               ; preds = %41, %37, %11
  %55 = phi i32 [ -30, %11 ], [ %35, %37 ], [ %35, %41 ]
  %56 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 18
  %57 = load i32, ptr %56, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  br label %61

61:                                               ; preds = %74, %59
  %62 = phi i32 [ 0, %59 ], [ %75, %74 ]
  %63 = load ptr, ptr %60, align 8
  %64 = getelementptr %struct.ubifs_jhead, ptr %63, i32 %62
  %65 = getelementptr inbounds %struct.ubifs_wbuf, ptr %64, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %65) #9
  %66 = getelementptr inbounds %struct.ubifs_wbuf, ptr %64, i32 0, i32 12
  %67 = load i8, ptr %66, align 8
  %68 = and i8 %67, 1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %61
  %71 = and i8 %67, -3
  store i8 %71, ptr %66, align 8
  %72 = getelementptr inbounds %struct.ubifs_wbuf, ptr %64, i32 0, i32 11
  %73 = tail call i32 @hrtimer_cancel(ptr noundef %72) #9
  br label %74

74:                                               ; preds = %70, %61
  tail call void @mutex_unlock(ptr noundef %65) #9
  %75 = add nuw nsw i32 %62, 1
  %76 = load i32, ptr %56, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %61, label %78

78:                                               ; preds = %74, %54, %50, %15, %7
  %79 = phi i32 [ 0, %7 ], [ %55, %54 ], [ 0, %15 ], [ %55, %74 ], [ 0, %50 ]
  ret i32 %79
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_wbuf_write_nolock(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = add i32 %2, 7
  %6 = and i32 %5, -8
  %7 = icmp sgt i32 %2, 0
  br i1 %7, label %8, label %16, !prof !8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %16, !prof !8

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ubifs_info, ptr %4, i32 0, i32 79
  %14 = load i32, ptr %13, align 8
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %17, label %16, !prof !8

16:                                               ; preds = %12, %8, %3
  tail call void @ubifs_assert_failed(ptr noundef %4, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.3, i32 noundef 748) #9
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %26, !prof !8

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ubifs_info, ptr %4, i32 0, i32 71
  %23 = load i32, ptr %22, align 8
  %24 = srem i32 %19, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26, !prof !8

26:                                               ; preds = %21, %17
  tail call void @ubifs_assert_failed(ptr noundef %4, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.3, i32 noundef 749) #9
  %27 = load i32, ptr %18, align 4
  br label %28

28:                                               ; preds = %26, %21
  %29 = phi i32 [ %19, %21 ], [ %27, %26 ]
  %30 = and i32 %29, 7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36, !prof !8

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ubifs_info, ptr %4, i32 0, i32 75
  %34 = load i32, ptr %33, align 8
  %35 = icmp sgt i32 %29, %34
  br i1 %35, label %36, label %37, !prof !9

36:                                               ; preds = %32, %28
  tail call void @ubifs_assert_failed(ptr noundef %4, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.3, i32 noundef 750) #9
  br label %37

37:                                               ; preds = %36, %32
  %38 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 4
  %39 = load i32, ptr %38, align 8
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %45, !prof !8

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 6
  %43 = load i32, ptr %42, align 8
  %44 = icmp sgt i32 %39, %43
  br i1 %44, label %45, label %48, !prof !9

45:                                               ; preds = %41, %37
  tail call void @ubifs_assert_failed(ptr noundef %4, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.3, i32 noundef 751) #9
  %46 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 6
  %47 = load i32, ptr %46, align 8
  br label %48

48:                                               ; preds = %45, %41
  %49 = phi i32 [ %43, %41 ], [ %47, %45 ]
  %50 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 6
  %51 = getelementptr inbounds %struct.ubifs_info, ptr %4, i32 0, i32 71
  %52 = load i32, ptr %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %56, !prof !9

54:                                               ; preds = %48
  tail call void @ubifs_assert_failed(ptr noundef %4, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.3, i32 noundef 752) #9
  %55 = load i32, ptr %50, align 8
  br label %56

56:                                               ; preds = %54, %48
  %57 = phi i32 [ %49, %48 ], [ %55, %54 ]
  %58 = getelementptr inbounds %struct.ubifs_info, ptr %4, i32 0, i32 73
  %59 = load i32, ptr %58, align 8
  %60 = icmp sgt i32 %57, %59
  br i1 %60, label %61, label %63, !prof !9

61:                                               ; preds = %56
  tail call void @ubifs_assert_failed(ptr noundef %4, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.3, i32 noundef 753) #9
  %62 = load i32, ptr %50, align 8
  br label %63

63:                                               ; preds = %61, %56
  %64 = phi i32 [ %57, %56 ], [ %62, %61 ]
  %65 = load i32, ptr %51, align 8
  %66 = srem i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68, !prof !8

68:                                               ; preds = %63
  tail call void @ubifs_assert_failed(ptr noundef %4, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.3, i32 noundef 754) #9
  br label %69

69:                                               ; preds = %68, %63
  %70 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 9
  %71 = tail call zeroext i1 @mutex_is_locked(ptr noundef %70) #9
  br i1 %71, label %73, label %72, !prof !8

72:                                               ; preds = %69
  tail call void @ubifs_assert_failed(ptr noundef %4, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.3, i32 noundef 755) #9
  br label %73

73:                                               ; preds = %72, %69
  %74 = getelementptr inbounds %struct.ubifs_info, ptr %4, i32 0, i32 81
  %75 = load i8, ptr %74, align 8
  %76 = and i8 %75, 3
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %79, label %78, !prof !8

78:                                               ; preds = %73
  tail call void @ubifs_assert_failed(ptr noundef %4, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 756) #9
  br label %79

79:                                               ; preds = %78, %73
  %80 = getelementptr inbounds %struct.ubifs_info, ptr %4, i32 0, i32 30
  %81 = load i16, ptr %80, align 4
  %82 = and i16 %81, 2
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %85, label %84, !prof !8

84:                                               ; preds = %79
  tail call void @ubifs_assert_failed(ptr noundef %4, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3, i32 noundef 757) #9
  br label %85

85:                                               ; preds = %84, %79
  %86 = getelementptr inbounds %struct.ubifs_info, ptr %4, i32 0, i32 75
  %87 = load i32, ptr %86, align 8
  %88 = load i32, ptr %18, align 4
  %89 = sub i32 %87, %88
  %90 = load i32, ptr %58, align 8
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %100, label %92

92:                                               ; preds = %85
  %93 = load i32, ptr %50, align 8
  %94 = add i32 %93, %88
  %95 = srem i32 %94, %90
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97, !prof !8

97:                                               ; preds = %92
  tail call void @ubifs_assert_failed(ptr noundef %4, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.3, i32 noundef 759) #9
  %98 = load i32, ptr %86, align 8
  %99 = load i32, ptr %18, align 4
  br label %100

100:                                              ; preds = %97, %92, %85
  %101 = phi i32 [ %88, %92 ], [ %99, %97 ], [ %88, %85 ]
  %102 = phi i32 [ %87, %92 ], [ %98, %97 ], [ %87, %85 ]
  %103 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 5
  %104 = load i32, ptr %103, align 4
  %105 = add i32 %101, %104
  %106 = sub i32 %102, %105
  %107 = icmp slt i32 %106, %6
  br i1 %107, label %338, label %108

108:                                              ; preds = %100
  %109 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 12
  %110 = load i8, ptr %109, align 8
  %111 = and i8 %110, 1
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = and i8 %110, -3
  store i8 %114, ptr %109, align 8
  %115 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 11
  %116 = tail call i32 @hrtimer_cancel(ptr noundef %115) #9
  br label %117

117:                                              ; preds = %113, %108
  %118 = load i8, ptr %74, align 8
  %119 = and i8 %118, 4
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %347

121:                                              ; preds = %117
  %122 = load i32, ptr %38, align 8
  %123 = icmp sgt i32 %6, %122
  br i1 %123, label %192, label %124

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = load i32, ptr %103, align 4
  %128 = getelementptr i8, ptr %126, i32 %127
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %128, ptr align 1 %1, i32 %2, i1 false)
  %129 = icmp sgt i32 %6, %2
  br i1 %129, label %130, label %161

130:                                              ; preds = %124
  %131 = sub i32 %6, %2
  %132 = icmp sgt i32 %131, 7
  br i1 %132, label %140, label %133, !prof !9

133:                                              ; preds = %130
  %134 = load ptr, ptr %125, align 4
  %135 = load i32, ptr %103, align 4
  %136 = getelementptr i8, ptr %134, i32 %135
  %137 = getelementptr i8, ptr %136, i32 %2
  %138 = icmp slt i32 %131, 0
  br i1 %138, label %139, label %159, !prof !9

139:                                              ; preds = %133
  tail call void @ubifs_assert_failed(ptr noundef %4, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, i32 noundef 332) #9
  br label %146

140:                                              ; preds = %130
  tail call void @ubifs_assert_failed(ptr noundef %4, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3, i32 noundef 778) #9
  %141 = load ptr, ptr %125, align 4
  %142 = load i32, ptr %103, align 4
  %143 = getelementptr i8, ptr %141, i32 %142
  %144 = getelementptr i8, ptr %143, i32 %2
  %145 = icmp ugt i32 %131, 27
  br i1 %145, label %146, label %159

146:                                              ; preds = %140, %139
  %147 = phi ptr [ %144, %140 ], [ %137, %139 ]
  store i32 101718065, ptr %147, align 1
  %148 = getelementptr inbounds %struct.ubifs_ch, ptr %147, i32 0, i32 4
  store i8 5, ptr %148, align 1
  %149 = getelementptr inbounds %struct.ubifs_ch, ptr %147, i32 0, i32 5
  store i8 0, ptr %149, align 1
  %150 = getelementptr inbounds %struct.ubifs_ch, ptr %147, i32 0, i32 6
  %151 = getelementptr %struct.ubifs_ch, ptr %147, i32 0, i32 6, i32 1
  store i8 0, ptr %151, align 1
  store i8 0, ptr %150, align 1
  %152 = getelementptr %struct.ubifs_ch, ptr %147, i32 0, i32 2
  store i64 0, ptr %152, align 1
  %153 = getelementptr inbounds %struct.ubifs_ch, ptr %147, i32 0, i32 3
  store i32 28, ptr %153, align 1
  %154 = add i32 %131, -28
  %155 = getelementptr inbounds %struct.ubifs_pad_node, ptr %147, i32 0, i32 1
  store i32 %154, ptr %155, align 1
  %156 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %152, i32 noundef 20) #11
  %157 = getelementptr inbounds %struct.ubifs_ch, ptr %147, i32 0, i32 1
  store i32 %156, ptr %157, align 1
  %158 = getelementptr i8, ptr %147, i32 28
  tail call void @llvm.memset.p0.i32(ptr align 1 %158, i8 0, i32 %154, i1 false) #9
  br label %161

159:                                              ; preds = %140, %133
  %160 = phi ptr [ %144, %140 ], [ %137, %133 ]
  tail call void @llvm.memset.p0.i32(ptr align 1 %160, i8 -50, i32 %131, i1 false) #9
  br label %161

161:                                              ; preds = %159, %146, %124
  %162 = load i32, ptr %38, align 8
  %163 = icmp eq i32 %6, %162
  br i1 %163, label %164, label %184

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 2
  %166 = load i32, ptr %165, align 8
  %167 = load ptr, ptr %125, align 4
  %168 = load i32, ptr %18, align 4
  %169 = load i32, ptr %50, align 8
  %170 = tail call i32 @ubifs_leb_write(ptr noundef %4, i32 noundef %166, ptr noundef %167, i32 noundef %168, i32 noundef %169)
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %338

172:                                              ; preds = %164
  %173 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %173) #9
  %174 = load i32, ptr %50, align 8
  %175 = load i32, ptr %18, align 4
  %176 = add i32 %175, %174
  store i32 %176, ptr %18, align 4
  %177 = load i32, ptr %86, align 8
  %178 = sub i32 %177, %176
  %179 = load i32, ptr %58, align 8
  %180 = tail call i32 @llvm.smin.i32(i32 %178, i32 %179)
  store i32 %180, ptr %50, align 8
  store i32 %180, ptr %38, align 8
  store i32 0, ptr %103, align 4
  %181 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 13
  store i32 0, ptr %181, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %182 = load i16, ptr %173, align 4
  %183 = add i16 %182, 1
  store i16 %183, ptr %173, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  br label %301

184:                                              ; preds = %161
  %185 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %185) #9
  %186 = load i32, ptr %38, align 8
  %187 = sub i32 %186, %6
  store i32 %187, ptr %38, align 8
  %188 = load i32, ptr %103, align 4
  %189 = add i32 %188, %6
  store i32 %189, ptr %103, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %190 = load i16, ptr %185, align 4
  %191 = add i16 %190, 1
  store i16 %191, ptr %185, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  br label %301

192:                                              ; preds = %121
  %193 = load i32, ptr %103, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %213, label %195

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 1
  %197 = load ptr, ptr %196, align 4
  %198 = getelementptr i8, ptr %197, i32 %193
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %198, ptr align 1 %1, i32 %122, i1 false)
  %199 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 2
  %200 = load i32, ptr %199, align 8
  %201 = load ptr, ptr %196, align 4
  %202 = load i32, ptr %18, align 4
  %203 = load i32, ptr %50, align 8
  %204 = tail call i32 @ubifs_leb_write(ptr noundef %4, i32 noundef %200, ptr noundef %201, i32 noundef %202, i32 noundef %203)
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %338

206:                                              ; preds = %195
  %207 = load i32, ptr %50, align 8
  %208 = load i32, ptr %18, align 4
  %209 = add i32 %208, %207
  store i32 %209, ptr %18, align 4
  %210 = load i32, ptr %38, align 8
  %211 = sub i32 %2, %210
  %212 = sub i32 %6, %210
  br label %231

213:                                              ; preds = %192
  %214 = load i32, ptr %18, align 4
  %215 = load i32, ptr %58, align 8
  %216 = add i32 %215, -1
  %217 = and i32 %216, %214
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %231, label %219

219:                                              ; preds = %213
  %220 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 2
  %221 = load i32, ptr %220, align 8
  %222 = load i32, ptr %50, align 8
  %223 = tail call i32 @ubifs_leb_write(ptr noundef %4, i32 noundef %221, ptr noundef %1, i32 noundef %214, i32 noundef %222)
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %338

225:                                              ; preds = %219
  %226 = load i32, ptr %50, align 8
  %227 = load i32, ptr %18, align 4
  %228 = add i32 %227, %226
  store i32 %228, ptr %18, align 4
  %229 = sub i32 %2, %226
  %230 = sub i32 %6, %226
  br label %231

231:                                              ; preds = %225, %213, %206
  %232 = phi i32 [ %209, %206 ], [ %228, %225 ], [ %214, %213 ]
  %233 = phi i32 [ %212, %206 ], [ %230, %225 ], [ %6, %213 ]
  %234 = phi i32 [ %210, %206 ], [ %226, %225 ], [ 0, %213 ]
  %235 = phi i32 [ %211, %206 ], [ %229, %225 ], [ %2, %213 ]
  %236 = getelementptr inbounds %struct.ubifs_info, ptr %4, i32 0, i32 74
  %237 = load i32, ptr %236, align 4
  %238 = ashr i32 %233, %237
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %253, label %240

240:                                              ; preds = %231
  %241 = shl i32 %238, %237
  %242 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 2
  %243 = load i32, ptr %242, align 8
  %244 = getelementptr i8, ptr %1, i32 %234
  %245 = tail call i32 @ubifs_leb_write(ptr noundef %4, i32 noundef %243, ptr noundef %244, i32 noundef %232, i32 noundef %241)
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %338

247:                                              ; preds = %240
  %248 = load i32, ptr %18, align 4
  %249 = add i32 %248, %241
  store i32 %249, ptr %18, align 4
  %250 = sub i32 %233, %241
  %251 = sub i32 %235, %241
  %252 = add i32 %241, %234
  br label %253

253:                                              ; preds = %247, %231
  %254 = phi i32 [ %250, %247 ], [ %233, %231 ]
  %255 = phi i32 [ %252, %247 ], [ %234, %231 ]
  %256 = phi i32 [ %251, %247 ], [ %235, %231 ]
  %257 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %257) #9
  %258 = icmp eq i32 %254, 0
  br i1 %258, label %291, label %259

259:                                              ; preds = %253
  %260 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 1
  %261 = load ptr, ptr %260, align 4
  %262 = getelementptr i8, ptr %1, i32 %255
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %261, ptr align 1 %262, i32 %256, i1 false)
  %263 = icmp sgt i32 %254, %256
  br i1 %263, label %264, label %291

264:                                              ; preds = %259
  %265 = sub i32 %254, %256
  %266 = icmp sgt i32 %265, 7
  br i1 %266, label %272, label %267, !prof !9

267:                                              ; preds = %264
  %268 = load ptr, ptr %260, align 4
  %269 = getelementptr i8, ptr %268, i32 %256
  %270 = icmp slt i32 %265, 0
  br i1 %270, label %271, label %289, !prof !9

271:                                              ; preds = %267
  tail call void @ubifs_assert_failed(ptr noundef %4, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, i32 noundef 332) #9
  br label %276

272:                                              ; preds = %264
  tail call void @ubifs_assert_failed(ptr noundef %4, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3, i32 noundef 879) #9
  %273 = load ptr, ptr %260, align 4
  %274 = getelementptr i8, ptr %273, i32 %256
  %275 = icmp ugt i32 %265, 27
  br i1 %275, label %276, label %289

276:                                              ; preds = %272, %271
  %277 = phi ptr [ %274, %272 ], [ %269, %271 ]
  store i32 101718065, ptr %277, align 1
  %278 = getelementptr inbounds %struct.ubifs_ch, ptr %277, i32 0, i32 4
  store i8 5, ptr %278, align 1
  %279 = getelementptr inbounds %struct.ubifs_ch, ptr %277, i32 0, i32 5
  store i8 0, ptr %279, align 1
  %280 = getelementptr inbounds %struct.ubifs_ch, ptr %277, i32 0, i32 6
  %281 = getelementptr %struct.ubifs_ch, ptr %277, i32 0, i32 6, i32 1
  store i8 0, ptr %281, align 1
  store i8 0, ptr %280, align 1
  %282 = getelementptr %struct.ubifs_ch, ptr %277, i32 0, i32 2
  store i64 0, ptr %282, align 1
  %283 = getelementptr inbounds %struct.ubifs_ch, ptr %277, i32 0, i32 3
  store i32 28, ptr %283, align 1
  %284 = add i32 %265, -28
  %285 = getelementptr inbounds %struct.ubifs_pad_node, ptr %277, i32 0, i32 1
  store i32 %284, ptr %285, align 1
  %286 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %282, i32 noundef 20) #11
  %287 = getelementptr inbounds %struct.ubifs_ch, ptr %277, i32 0, i32 1
  store i32 %286, ptr %287, align 1
  %288 = getelementptr i8, ptr %277, i32 28
  tail call void @llvm.memset.p0.i32(ptr align 1 %288, i8 0, i32 %284, i1 false) #9
  br label %291

289:                                              ; preds = %272, %267
  %290 = phi ptr [ %274, %272 ], [ %269, %267 ]
  tail call void @llvm.memset.p0.i32(ptr align 1 %290, i8 -50, i32 %265, i1 false) #9
  br label %291

291:                                              ; preds = %289, %276, %259, %253
  %292 = load i32, ptr %86, align 8
  %293 = load i32, ptr %18, align 4
  %294 = sub i32 %292, %293
  %295 = load i32, ptr %58, align 8
  %296 = tail call i32 @llvm.smin.i32(i32 %294, i32 %295)
  store i32 %296, ptr %50, align 8
  %297 = sub i32 %296, %254
  store i32 %297, ptr %38, align 8
  store i32 %254, ptr %103, align 4
  %298 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 13
  store i32 0, ptr %298, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %299 = load i16, ptr %257, align 4
  %300 = add i16 %299, 1
  store i16 %300, ptr %257, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  br label %301

301:                                              ; preds = %291, %184, %172
  %302 = phi i32 [ 0, %172 ], [ 0, %184 ], [ %255, %291 ]
  %303 = phi i32 [ %2, %172 ], [ %2, %184 ], [ %256, %291 ]
  %304 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 8
  %305 = load ptr, ptr %304, align 8
  %306 = icmp eq ptr %305, null
  br i1 %306, label %317, label %307

307:                                              ; preds = %301
  %308 = load i32, ptr %86, align 8
  %309 = load i32, ptr %18, align 4
  %310 = load i32, ptr %103, align 4
  %311 = add i32 %309, %310
  %312 = sub i32 %308, %311
  %313 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 2
  %314 = load i32, ptr %313, align 8
  %315 = tail call i32 %305(ptr noundef %4, i32 noundef %314, i32 noundef %312, i32 noundef 0) #9
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %338

317:                                              ; preds = %307, %301
  %318 = load i32, ptr %103, align 4
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %347, label %320

320:                                              ; preds = %317
  %321 = load i32, ptr @dirty_writeback_interval, align 4
  %322 = mul i32 %321, 10
  %323 = zext i32 %322 to i64
  %324 = mul nuw nsw i64 %323, 1000000
  %325 = zext i32 %321 to i64
  %326 = mul nuw nsw i64 %325, 1000000
  %327 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 11
  %328 = tail call zeroext i1 @hrtimer_active(ptr noundef %327) #9
  br i1 %328, label %329, label %330, !prof !9

329:                                              ; preds = %320
  tail call void @ubifs_assert_failed(ptr noundef %4, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.3, i32 noundef 520) #9
  br label %330

330:                                              ; preds = %329, %320
  %331 = icmp ugt i64 %326, 4294967295
  br i1 %331, label %332, label %333, !prof !9

332:                                              ; preds = %330
  tail call void @ubifs_assert_failed(ptr noundef %4, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.3, i32 noundef 521) #9
  br label %333

333:                                              ; preds = %332, %330
  %334 = load i8, ptr %109, align 8
  %335 = and i8 %334, 1
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %337, label %347

337:                                              ; preds = %333
  tail call void @hrtimer_start_range_ns(ptr noundef %327, i64 noundef %324, i64 noundef %326, i32 noundef 1) #9
  br label %347

338:                                              ; preds = %307, %240, %219, %195, %164, %100
  %339 = phi i32 [ 0, %164 ], [ %302, %307 ], [ 0, %195 ], [ %234, %240 ], [ 0, %219 ], [ 0, %100 ]
  %340 = phi i32 [ %170, %164 ], [ %315, %307 ], [ %204, %195 ], [ %245, %240 ], [ %223, %219 ], [ -28, %100 ]
  %341 = phi i32 [ %2, %164 ], [ %303, %307 ], [ %2, %195 ], [ %235, %240 ], [ %2, %219 ], [ %2, %100 ]
  %342 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 2
  %343 = load i32, ptr %342, align 8
  %344 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %4, ptr noundef nonnull @.str.37, i32 noundef %341, i32 noundef %343, i32 noundef %344, i32 noundef %340) #9
  %345 = add i32 %341, %339
  tail call void @ubifs_dump_node(ptr noundef %4, ptr noundef %1, i32 noundef %345) #9
  tail call void @dump_stack() #10
  %346 = load i32, ptr %342, align 8
  tail call void @ubifs_dump_leb(ptr noundef %4, i32 noundef %346) #9
  br label %347

347:                                              ; preds = %338, %337, %333, %317, %117
  %348 = phi i32 [ %340, %338 ], [ -30, %117 ], [ 0, %317 ], [ 0, %333 ], [ 0, %337 ]
  ret i32 %348
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_leb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_write_node_hmac(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 71
  %8 = load i32, ptr %7, align 8
  %9 = add i32 %2, -1
  %10 = add i32 %9, %8
  %11 = sub i32 0, %8
  %12 = and i32 %10, %11
  %13 = icmp sgt i32 %3, -1
  br i1 %13, label %14, label %20, !prof !8

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 79
  %16 = load i32, ptr %15, align 8
  %17 = icmp sle i32 %16, %3
  %18 = icmp slt i32 %4, 0
  %19 = or i1 %18, %17
  br i1 %19, label %20, label %22, !prof !9

20:                                               ; preds = %14, %6
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, i32 noundef 939) #9
  %21 = load i32, ptr %7, align 8
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %8, %14 ], [ %21, %20 ]
  %24 = srem i32 %4, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30, !prof !8

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %28 = load i32, ptr %27, align 8
  %29 = icmp sgt i32 %28, %4
  br i1 %29, label %31, label %30, !prof !8

30:                                               ; preds = %26, %22
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, i32 noundef 940) #9
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 81
  %33 = load i8, ptr %32, align 8
  %34 = and i8 %33, 3
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %37, label %36, !prof !8

36:                                               ; preds = %31
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 941) #9
  br label %37

37:                                               ; preds = %36, %31
  %38 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %39 = load i16, ptr %38, align 4
  %40 = and i16 %39, 2
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %43, label %42, !prof !8

42:                                               ; preds = %37
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3, i32 noundef 942) #9
  br label %43

43:                                               ; preds = %42, %37
  %44 = load i8, ptr %32, align 8
  %45 = and i8 %44, 4
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  tail call void @ubifs_init_node(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1) #9
  %48 = getelementptr i8, ptr %1, i32 8
  %49 = add i32 %2, -8
  %50 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %48, i32 noundef %49) #11
  %51 = getelementptr inbounds %struct.ubifs_ch, ptr %1, i32 0, i32 1
  store i32 %50, ptr %51, align 1
  %52 = tail call i32 @ubifs_leb_write(ptr noundef %0, i32 noundef %3, ptr noundef %1, i32 noundef %4, i32 noundef %12)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  tail call void @ubifs_dump_node(ptr noundef %0, ptr noundef %1, i32 noundef %2) #9
  br label %55

55:                                               ; preds = %54, %47, %43
  %56 = phi i32 [ -30, %43 ], [ %52, %54 ], [ 0, %47 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_write_node(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @ubifs_write_node_hmac(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef -1)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_read_node_wbuf(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr %0, align 8
  %8 = icmp ne ptr %0, null
  %9 = icmp sgt i32 %4, -1
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %17, !prof !14

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ubifs_info, ptr %7, i32 0, i32 79
  %13 = load i32, ptr %12, align 8
  %14 = icmp sle i32 %13, %4
  %15 = icmp slt i32 %5, 0
  %16 = or i1 %15, %14
  br i1 %16, label %17, label %18, !prof !9

17:                                               ; preds = %11, %6
  tail call void @ubifs_assert_failed(ptr noundef %7, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, i32 noundef 1002) #9
  br label %18

18:                                               ; preds = %17, %11
  %19 = and i32 %5, 7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25, !prof !8

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.ubifs_info, ptr %7, i32 0, i32 75
  %23 = load i32, ptr %22, align 8
  %24 = icmp sgt i32 %23, %5
  br i1 %24, label %26, label %25, !prof !8

25:                                               ; preds = %21, %18
  tail call void @ubifs_assert_failed(ptr noundef %7, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, i32 noundef 1003) #9
  br label %26

26:                                               ; preds = %25, %21
  %27 = icmp ugt i32 %2, 13
  br i1 %27, label %28, label %29, !prof !9

28:                                               ; preds = %26
  tail call void @ubifs_assert_failed(ptr noundef %7, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.3, i32 noundef 1004) #9
  br label %29

29:                                               ; preds = %28, %26
  %30 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %30) #9
  %31 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = icmp eq i32 %32, %4
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = add i32 %5, %3
  %36 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = icmp sgt i32 %35, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %34, %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %40 = load i16, ptr %30, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %30, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %42 = tail call i32 @ubifs_read_node(ptr noundef %7, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  br label %78

43:                                               ; preds = %34
  %44 = sub i32 %37, %5
  %45 = tail call i32 @llvm.smax.i32(i32 %44, i32 0)
  %46 = getelementptr i8, ptr %1, i32 %45
  %47 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i8, ptr %48, i32 %5
  %50 = getelementptr i8, ptr %49, i32 %45
  %51 = sub i32 0, %37
  %52 = getelementptr i8, ptr %50, i32 %51
  %53 = sub i32 %3, %45
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %46, ptr align 1 %52, i32 %53, i1 false)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %54 = load i16, ptr %30, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr %30, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %56 = icmp slt i32 %44, 1
  br i1 %56, label %62, label %57

57:                                               ; preds = %43
  %58 = getelementptr inbounds %struct.ubifs_info, ptr %7, i32 0, i32 100
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 @ubi_leb_read(ptr noundef %59, i32 noundef %4, ptr noundef %1, i32 noundef %5, i32 noundef %45, i32 noundef 0) #9
  switch i32 %60, label %61 [
    i32 0, label %62
    i32 -74, label %62
  ]

61:                                               ; preds = %57
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %7, ptr noundef nonnull @.str.1, i32 noundef %45, i32 noundef %4, i32 noundef %5, i32 noundef %60) #9
  tail call void @dump_stack() #10
  br label %78

62:                                               ; preds = %57, %57, %43
  %63 = getelementptr inbounds %struct.ubifs_ch, ptr %1, i32 0, i32 4
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %65, %2
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %7, ptr noundef nonnull @.str.41, i32 noundef %65, i32 noundef %2) #9
  br label %77

68:                                               ; preds = %62
  %69 = tail call i32 @ubifs_check_node(ptr noundef %7, ptr noundef %1, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 0, i32 noundef 0)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %7, ptr noundef nonnull @.str.42, i32 noundef %2) #9
  br label %78

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.ubifs_ch, ptr %1, i32 0, i32 3
  %74 = load i32, ptr %73, align 1
  %75 = icmp eq i32 %74, %3
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %7, ptr noundef nonnull @.str.43, i32 noundef %74, i32 noundef %3) #9
  br label %77

77:                                               ; preds = %76, %67
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %7, ptr noundef nonnull @.str.15, i32 noundef %4, i32 noundef %5) #9
  tail call void @ubifs_dump_node(ptr noundef %7, ptr noundef %1, i32 noundef %3) #9
  tail call void @dump_stack() #10
  br label %78

78:                                               ; preds = %77, %72, %71, %61, %39
  %79 = phi i32 [ -22, %77 ], [ %69, %71 ], [ %42, %39 ], [ %60, %61 ], [ 0, %72 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_read_node(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = icmp sgt i32 %4, -1
  br i1 %7, label %8, label %14, !prof !8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 79
  %10 = load i32, ptr %9, align 8
  %11 = icmp sle i32 %10, %4
  %12 = icmp slt i32 %5, 0
  %13 = or i1 %12, %11
  br i1 %13, label %14, label %15, !prof !9

14:                                               ; preds = %8, %6
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, i32 noundef 1077) #9
  br label %15

15:                                               ; preds = %14, %8
  %16 = icmp ugt i32 %3, 23
  br i1 %16, label %17, label %22, !prof !8

17:                                               ; preds = %15
  %18 = add i32 %5, %3
  %19 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %20 = load i32, ptr %19, align 8
  %21 = icmp sgt i32 %18, %20
  br i1 %21, label %22, label %23, !prof !9

22:                                               ; preds = %17, %15
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.3, i32 noundef 1078) #9
  br label %23

23:                                               ; preds = %22, %17
  %24 = and i32 %5, 7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30, !prof !8

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %28 = load i32, ptr %27, align 8
  %29 = icmp sgt i32 %28, %5
  br i1 %29, label %31, label %30, !prof !8

30:                                               ; preds = %26, %23
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, i32 noundef 1079) #9
  br label %31

31:                                               ; preds = %30, %26
  %32 = icmp ugt i32 %2, 13
  br i1 %32, label %33, label %34, !prof !9

33:                                               ; preds = %31
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.3, i32 noundef 1080) #9
  br label %34

34:                                               ; preds = %33, %31
  %35 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 100
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @ubi_leb_read(ptr noundef %36, i32 noundef %4, ptr noundef %1, i32 noundef %5, i32 noundef %3, i32 noundef 0) #9
  switch i32 %37, label %38 [
    i32 0, label %39
    i32 -74, label %39
  ]

38:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %37) #9
  tail call void @dump_stack() #10
  br label %83

39:                                               ; preds = %34, %34
  %40 = getelementptr inbounds %struct.ubifs_ch, ptr %1, i32 0, i32 4
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %42, %2
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 186
  %46 = load i8, ptr %45, align 4
  %47 = and i8 %46, 32
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %44
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %42, i32 noundef %2) #9
  br label %69

50:                                               ; preds = %39
  %51 = tail call i32 @ubifs_check_node(ptr noundef %0, ptr noundef %1, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 0, i32 noundef 0)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 186
  %55 = load i8, ptr %54, align 4
  %56 = and i8 %55, 32
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %83

58:                                               ; preds = %53
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef %2) #9
  br label %83

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.ubifs_ch, ptr %1, i32 0, i32 3
  %61 = load i32, ptr %60, align 1
  %62 = icmp eq i32 %61, %3
  br i1 %62, label %83, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 186
  %65 = load i8, ptr %64, align 4
  %66 = and i8 %65, 32
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef %61, i32 noundef %3) #9
  br label %69

69:                                               ; preds = %68, %63, %49, %44
  %70 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 186
  %71 = load i8, ptr %70, align 4
  %72 = and i8 %71, 32
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load ptr, ptr %35, align 4
  %76 = tail call i32 @ubi_is_mapped(ptr noundef %75, i32 noundef %4) #9
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.45, i32 noundef %4, i32 noundef %5, i32 noundef %76) #9
  %77 = load i8, ptr %70, align 4
  br label %78

78:                                               ; preds = %74, %69
  %79 = phi i8 [ %77, %74 ], [ %71, %69 ]
  %80 = and i8 %79, 32
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  tail call void @ubifs_dump_node(ptr noundef %0, ptr noundef %1, i32 noundef %3) #9
  tail call void @dump_stack() #10
  br label %83

83:                                               ; preds = %82, %78, %59, %58, %53, %38
  %84 = phi i32 [ %37, %38 ], [ %51, %58 ], [ %51, %53 ], [ 0, %59 ], [ -22, %82 ], [ -22, %78 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_wbuf_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 73
  %4 = load i32, ptr %3, align 8
  %5 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %4, i32 noundef 3264) #12
  %6 = getelementptr inbounds %struct.ubifs_wbuf, ptr %1, i32 0, i32 1
  store ptr %5, ptr %6, align 4
  %7 = icmp eq ptr %5, null
  br i1 %7, label %35, label %8

8:                                                ; preds = %2
  %9 = load i32, ptr %3, align 8
  %10 = udiv i32 %9, 24
  %11 = shl nuw nsw i32 %10, 2
  %12 = add nuw nsw i32 %11, 4
  %13 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %12, i32 noundef 3264) #12
  %14 = getelementptr inbounds %struct.ubifs_wbuf, ptr %1, i32 0, i32 14
  store ptr %13, ptr %14, align 8
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %17) #9
  store ptr null, ptr %6, align 4
  br label %35

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.ubifs_wbuf, ptr %1, i32 0, i32 5
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ubifs_wbuf, ptr %1, i32 0, i32 3
  store i32 -1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ubifs_wbuf, ptr %1, i32 0, i32 2
  store i32 -1, ptr %21, align 8
  %22 = load i32, ptr %3, align 8
  %23 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 76
  %24 = load i32, ptr %23, align 4
  %25 = srem i32 %24, %22
  %26 = sub i32 %22, %25
  %27 = getelementptr inbounds %struct.ubifs_wbuf, ptr %1, i32 0, i32 6
  store i32 %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.ubifs_wbuf, ptr %1, i32 0, i32 4
  store i32 %26, ptr %28, align 8
  %29 = getelementptr inbounds %struct.ubifs_wbuf, ptr %1, i32 0, i32 8
  store ptr null, ptr %29, align 8
  %30 = getelementptr inbounds %struct.ubifs_wbuf, ptr %1, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %30, ptr noundef nonnull @.str.46, ptr noundef nonnull @ubifs_wbuf_init.__key) #9
  %31 = getelementptr inbounds %struct.ubifs_wbuf, ptr %1, i32 0, i32 10
  store i32 0, ptr %31, align 8
  store ptr %0, ptr %1, align 8
  %32 = getelementptr inbounds %struct.ubifs_wbuf, ptr %1, i32 0, i32 13
  store i32 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.ubifs_wbuf, ptr %1, i32 0, i32 11
  tail call void @hrtimer_init(ptr noundef %33, i32 noundef 1, i32 noundef 1) #9
  %34 = getelementptr inbounds %struct.ubifs_wbuf, ptr %1, i32 0, i32 11, i32 2
  store ptr @wbuf_timer_callback_nolock, ptr %34, align 8
  br label %35

35:                                               ; preds = %18, %16, %2
  %36 = phi i32 [ 0, %18 ], [ -12, %16 ], [ -12, %2 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wbuf_timer_callback_nolock(ptr nocapture noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = getelementptr i8, ptr %0, i32 48
  %4 = load i8, ptr %3, align 8
  %5 = or i8 %4, 2
  store i8 %5, ptr %3, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %6, i32 0, i32 120
  store i32 1, ptr %7, align 8
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.ubifs_info, ptr %8, i32 0, i32 117
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ubifs_info, ptr %8, i32 0, i32 119
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  store i32 1, ptr %13, align 4
  %17 = tail call i32 @wake_up_process(ptr noundef nonnull %10) #9
  br label %18

18:                                               ; preds = %16, %12, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_wbuf_add_ino_nolock(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %7) #9
  %8 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 14
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.ubifs_wbuf, ptr %0, i32 0, i32 13
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  %17 = getelementptr i32, ptr %13, i32 %15
  store i32 %1, ptr %17, align 4
  br label %18

18:                                               ; preds = %11, %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %19 = load i16, ptr %7, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  br label %21

21:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_sync_wbufs_by_inode(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 18
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %84

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  %8 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  br label %9

9:                                                ; preds = %80, %6
  %10 = phi i32 [ 0, %6 ], [ %81, %80 ]
  %11 = load ptr, ptr %7, align 8
  %12 = getelementptr %struct.ubifs_jhead, ptr %11, i32 %10
  %13 = icmp eq i32 %10, 0
  br i1 %13, label %80, label %14

14:                                               ; preds = %9
  %15 = load i32, ptr %8, align 4
  %16 = getelementptr inbounds %struct.ubifs_wbuf, ptr %12, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %16) #9
  %17 = getelementptr inbounds %struct.ubifs_wbuf, ptr %12, i32 0, i32 13
  %18 = load i32, ptr %17, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %74

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.ubifs_wbuf, ptr %12, i32 0, i32 14
  %22 = load ptr, ptr %21, align 8
  br label %26

23:                                               ; preds = %26
  %24 = add nuw nsw i32 %27, 1
  %25 = icmp eq i32 %24, %18
  br i1 %25, label %77, label %26

26:                                               ; preds = %23, %20
  %27 = phi i32 [ 0, %20 ], [ %24, %23 ]
  %28 = getelementptr i32, ptr %22, i32 %27
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, %15
  br i1 %30, label %31, label %23

31:                                               ; preds = %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %32 = load i16, ptr %16, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %34 = getelementptr inbounds %struct.ubifs_wbuf, ptr %12, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %34) #9
  %35 = load i32, ptr %8, align 4
  tail call void @_raw_spin_lock(ptr noundef %16) #9
  %36 = load i32, ptr %17, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %31
  %39 = load ptr, ptr %21, align 8
  br label %43

40:                                               ; preds = %43
  %41 = add nuw nsw i32 %44, 1
  %42 = icmp eq i32 %41, %36
  br i1 %42, label %51, label %43

43:                                               ; preds = %40, %38
  %44 = phi i32 [ 0, %38 ], [ %41, %40 ]
  %45 = getelementptr i32, ptr %39, i32 %44
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, %35
  br i1 %47, label %55, label %40

48:                                               ; preds = %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %49 = load i16, ptr %16, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  br label %54

51:                                               ; preds = %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %52 = load i16, ptr %16, align 4
  %53 = add i16 %52, 1
  store i16 %53, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  br label %54

54:                                               ; preds = %51, %48
  tail call void @mutex_unlock(ptr noundef %34) #9
  br label %80

55:                                               ; preds = %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %56 = load i16, ptr %16, align 4
  %57 = add i16 %56, 1
  store i16 %57, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %58 = tail call i32 @ubifs_wbuf_sync_nolock(ptr noundef %12)
  tail call void @mutex_unlock(ptr noundef %34) #9
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %80, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 81
  %62 = load i8, ptr %61, align 8
  %63 = and i8 %62, 4
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %60
  %66 = or i8 %62, 4
  store i8 %66, ptr %61, align 8
  %67 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %68 = load i16, ptr %67, align 4
  %69 = and i16 %68, -17
  store i16 %69, ptr %67, align 4
  %70 = load ptr, ptr %0, align 8
  %71 = getelementptr inbounds %struct.super_block, ptr %70, i32 0, i32 10
  %72 = load i32, ptr %71, align 4
  %73 = or i32 %72, 1
  store i32 %73, ptr %71, align 4
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %58) #9
  tail call void @dump_stack() #10
  br label %84

74:                                               ; preds = %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %75 = load i16, ptr %16, align 4
  %76 = add i16 %75, 1
  store i16 %76, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  br label %80

77:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %78 = load i16, ptr %16, align 4
  %79 = add i16 %78, 1
  store i16 %79, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  br label %80

80:                                               ; preds = %77, %74, %55, %54, %9
  %81 = add nuw nsw i32 %10, 1
  %82 = load i32, ptr %3, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %9, label %84

84:                                               ; preds = %80, %65, %60, %2
  %85 = phi i32 [ %58, %60 ], [ %58, %65 ], [ 0, %2 ], [ 0, %80 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_leb_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hrtimer_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readonly willreturn }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2148966149}
!11 = !{i64 2148961973}
!12 = !{i64 2148962048, i64 2148962075, i64 2148962122, i64 2148962144, i64 2148962172, i64 2148962192}
!13 = !{i64 2148989152}
!14 = !{!"branch_weights", i32 4000000, i32 4001}
