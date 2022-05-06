; ModuleID = '/llk/IR/fs/ubifs/tnc.c_pt.bc'
source_filename = "../fs/ubifs/tnc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fscrypt_str = type { ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.ubifs_global_debug_info = type { i8, [3 x i8] }
%struct.ubifs_znode = type { ptr, ptr, ptr, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, [0 x %struct.ubifs_zbranch] }
%struct.ubifs_zbranch = type { %union.ubifs_key, %union.anon.72, i32, i32, i32, [0 x i8] }
%union.ubifs_key = type { [1 x i64] }
%union.anon.72 = type { ptr }
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
%struct.bu_info = type { %union.ubifs_key, [32 x %struct.ubifs_zbranch], ptr, i32, i32, i32, i32, i32 }
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
%struct.ubifs_old_idx = type { %struct.rb_node, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.ubifs_dent_node = type { %struct.ubifs_ch, [16 x i8], i64, i8, i8, i16, i32, [0 x i8] }
%struct.ubifs_wbuf = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, %struct.spinlock, %struct.hrtimer, i8, i32, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.fscrypt_name = type { ptr, %struct.fscrypt_str, i32, i32, %struct.fscrypt_str, i8 }
%struct.ubifs_debug_info = type { %struct.ubifs_zbranch, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i8, [10 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.38, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.39, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.40, ptr, %struct.address_space, %struct.list_head, %union.anon.41, i32, i32, ptr, ptr }
%union.anon.38 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.39 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.40 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.41 = type { ptr }

@.str = private unnamed_addr constant [37 x i8] c"key_type(c, key) < UBIFS_INVALID_KEY\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"fs/ubifs/tnc.c\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"buffer too small %d vs %d\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"failed to read from LEB %d:%d, error %d\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__const.ubifs_tnc_add_nm.noname = private unnamed_addr constant { ptr, %struct.fscrypt_str, i32, i32, %struct.fscrypt_str, i8, [3 x i8] } { ptr null, %struct.fscrypt_str { ptr @.str.4, i32 1 }, i32 0, i32 0, %struct.fscrypt_str zeroinitializer, i8 0, [3 x i8] zeroinitializer }, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"is_hash_key(c, key)\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"freed == n\00", align 1
@ubifs_clean_zn_cnt = external dso_local global %struct.atomic_t, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"err == 0\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"inode %lu has size %lld, but there are data at offset %lld\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"old idx added twice!\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"is_hash_key(c, &zbr->key)\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"zbr->len != 0\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"!zbr->leaf\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"cannot read node type %d from LEB %d:%d, error %d\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"wbuf && lnum >= 0 && lnum < c->leb_cnt && offs >= 0\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"!(offs & 7) && offs < c->leb_size\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"offs + len <= c->leb_size\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"bad node type (%d but expected %d)\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"expected node type %d\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"bad node length %d, expected %d\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"bad key in node at LEB %d:%d\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"bad node at LEB %d:%d\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"n >= 0\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"!ubifs_zn_obsolete(znode)\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"n >= 0 && n <= c->fanout\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"n != c->fanout\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"ubifs_zn_dirty(znode)\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"znode->parent\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"znode->iip == 0\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"c->zroot.znode\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"znode\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"p < c->zroot.znode->level\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"path[p - 1] >= 0\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"path[p - 1] < zp->child_cnt\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"znode == c->zroot.znode\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"path[p - 1] < znode->child_cnt\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"*n == 0\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"err == 1\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"err == NAME_GREATER\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"err == NAME_LESS\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"znode->level == 0\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"n >= 0 && n < c->fanout\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"znode->level != 0\00", align 1
@.str.44 = private unnamed_addr constant [23 x i8] c"!ubifs_zn_obsolete(zp)\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"ubifs_zn_dirty(zp)\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.46 = private unnamed_addr constant [30 x i8] c"c->cmt_state == COMMIT_BROKEN\00", align 1
@ubifs_dbg = external dso_local local_unnamed_addr global %struct.ubifs_global_debug_info, align 4
@.str.47 = private unnamed_addr constant [35 x i8] c"!(block & ~UBIFS_S_KEY_BLOCK_MASK)\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"fs/ubifs/key.h\00", align 1
@switch.table.ubifs_tnc_has_node = private unnamed_addr constant [3 x i32] [i32 0, i32 0, i32 1], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @insert_old_idx_znode(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ubifs_znode, ptr %1, i32 0, i32 8
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr %struct.ubifs_znode, ptr %3, i32 0, i32 13, i32 %7, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %5
  %12 = getelementptr %struct.ubifs_znode, ptr %3, i32 0, i32 13, i32 %7, i32 2
  %13 = getelementptr %struct.ubifs_znode, ptr %3, i32 0, i32 13, i32 %7, i32 3
  br label %21

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32, i32 2
  %20 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32, i32 3
  br label %21

21:                                               ; preds = %18, %11
  %22 = phi ptr [ %13, %11 ], [ %20, %18 ]
  %23 = phi ptr [ %12, %11 ], [ %19, %18 ]
  %24 = load i32, ptr %23, align 4
  %25 = load i32, ptr %22, align 8
  %26 = tail call fastcc i32 @insert_old_idx(ptr noundef %0, i32 noundef %24, i32 noundef %25)
  br label %27

27:                                               ; preds = %21, %14, %5
  %28 = phi i32 [ 0, %14 ], [ 0, %5 ], [ %26, %21 ]
  ret i32 %28
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @insert_old_idx(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3136, i32 noundef 20) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %46, label %7, !prof !8

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ubifs_old_idx, ptr %5, i32 0, i32 1
  store i32 %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ubifs_old_idx, ptr %5, i32 0, i32 2
  store i32 %2, ptr %9, align 8
  %10 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 44
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %41, label %13

13:                                               ; preds = %35, %7
  %14 = phi ptr [ %37, %35 ], [ %11, %7 ]
  %15 = getelementptr inbounds %struct.ubifs_old_idx, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %16, %1
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.rb_node, ptr %14, i32 0, i32 2
  br label %35

20:                                               ; preds = %13
  %21 = icmp slt i32 %16, %1
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.rb_node, ptr %14, i32 0, i32 1
  br label %35

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ubifs_old_idx, ptr %14, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = icmp sgt i32 %26, %2
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.rb_node, ptr %14, i32 0, i32 2
  br label %35

30:                                               ; preds = %24
  %31 = icmp slt i32 %26, %2
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.rb_node, ptr %14, i32 0, i32 1
  br label %35

34:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.9) #13
  tail call void @kfree(ptr noundef nonnull %5) #13
  br label %46

35:                                               ; preds = %32, %28, %22, %18
  %36 = phi ptr [ %19, %18 ], [ %23, %22 ], [ %29, %28 ], [ %33, %32 ]
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %13

39:                                               ; preds = %35
  %40 = ptrtoint ptr %14 to i32
  br label %41

41:                                               ; preds = %39, %7
  %42 = phi ptr [ %36, %39 ], [ %10, %7 ]
  %43 = phi i32 [ %40, %39 ], [ 0, %7 ]
  store i32 %43, ptr %5, align 8
  %44 = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 1
  store ptr null, ptr %44, align 4
  %45 = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 2
  store ptr null, ptr %45, align 8
  store ptr %5, ptr %42, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %5, ptr noundef %10) #13
  br label %46

46:                                               ; preds = %41, %34, %3
  %47 = phi i32 [ 0, %34 ], [ 0, %41 ], [ -12, %3 ]
  ret i32 %47
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @destroy_old_idx(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 44
  %3 = tail call ptr @rb_first_postorder(ptr noundef %2) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = tail call ptr @rb_next_postorder(ptr noundef nonnull %6) #13
  tail call void @kfree(ptr noundef nonnull %6) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5

9:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first_postorder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next_postorder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_lookup_level0(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %6 = tail call i64 @ktime_get_seconds() #13
  %7 = getelementptr [2 x i32], ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %4
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1177) #13
  br label %11

11:                                               ; preds = %10, %4
  %12 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32, i32 1
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %5, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %21, !prof !8

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32
  %17 = tail call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %16, ptr noundef null, i32 noundef 0) #13
  store ptr %17, ptr %5, align 4
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = ptrtoint ptr %17 to i32
  br label %84

21:                                               ; preds = %15, %11
  %22 = phi ptr [ %17, %15 ], [ %13, %11 ]
  %23 = getelementptr inbounds %struct.ubifs_znode, ptr %22, i32 0, i32 5
  store i64 %6, ptr %23, align 8
  %24 = tail call i32 @ubifs_search_zbranch(ptr noundef %0, ptr noundef %22, ptr noundef %1, ptr noundef %3) #13
  %25 = getelementptr inbounds %struct.ubifs_znode, ptr %22, i32 0, i32 6
  %26 = load i32, ptr %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %53, label %28

28:                                               ; preds = %47, %21
  %29 = phi ptr [ %48, %47 ], [ %22, %21 ]
  %30 = load i32, ptr %3, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, ptr %3, align 4
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi i32 [ 0, %32 ], [ %30, %28 ]
  %35 = getelementptr %struct.ubifs_znode, ptr %29, i32 0, i32 13, i32 %34, i32 1
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.ubifs_znode, ptr %29, i32 0, i32 5
  store i64 %6, ptr %39, align 8
  %40 = load ptr, ptr %35, align 8
  br label %47

41:                                               ; preds = %33
  %42 = getelementptr %struct.ubifs_znode, ptr %29, i32 0, i32 13, i32 %34
  %43 = tail call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %42, ptr noundef %29, i32 noundef %34) #13
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = ptrtoint ptr %43 to i32
  br label %84

47:                                               ; preds = %41, %38
  %48 = phi ptr [ %43, %41 ], [ %40, %38 ]
  %49 = tail call i32 @ubifs_search_zbranch(ptr noundef %0, ptr noundef %48, ptr noundef %1, ptr noundef %3) #13
  %50 = getelementptr inbounds %struct.ubifs_znode, ptr %48, i32 0, i32 6
  %51 = load i32, ptr %50, align 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %28

53:                                               ; preds = %47, %21
  %54 = phi ptr [ %22, %21 ], [ %48, %47 ]
  %55 = phi i32 [ %24, %21 ], [ %49, %47 ]
  store ptr %54, ptr %5, align 4
  store ptr %54, ptr %2, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %84

57:                                               ; preds = %53
  %58 = load i32, ptr %7, align 4
  %59 = and i32 %58, -1073741824
  %60 = icmp eq i32 %59, 1073741824
  br i1 %60, label %61, label %84

61:                                               ; preds = %57
  %62 = load i32, ptr %3, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %84

64:                                               ; preds = %61
  %65 = call fastcc i32 @tnc_prev(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %3)
  %66 = icmp eq i32 %65, -2
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 -1, ptr %3, align 4
  br label %84

68:                                               ; preds = %64
  %69 = icmp slt i32 %65, 0
  br i1 %69, label %84, label %70, !prof !8

70:                                               ; preds = %68
  %71 = load ptr, ptr %5, align 4
  %72 = load i32, ptr %3, align 4
  %73 = getelementptr %struct.ubifs_znode, ptr %71, i32 0, i32 13, i32 %72
  %74 = load i32, ptr %1, align 8
  %75 = load i32, ptr %73, align 8
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load i32, ptr %7, align 4
  %79 = getelementptr [2 x i32], ptr %73, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %83, label %82

82:                                               ; preds = %77, %70
  store i32 -1, ptr %3, align 4
  br label %84

83:                                               ; preds = %77
  store ptr %71, ptr %2, align 4
  br label %84

84:                                               ; preds = %83, %82, %68, %67, %61, %57, %53, %45, %19
  %85 = phi i32 [ %20, %19 ], [ 0, %67 ], [ 0, %82 ], [ 1, %83 ], [ 0, %61 ], [ 0, %57 ], [ %55, %53 ], [ %65, %68 ], [ %46, %45 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_seconds() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_load_znode(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_search_zbranch(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tnc_prev(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %1, align 4
  br label %10

8:                                                ; preds = %3
  %9 = add nsw i32 %4, -1
  store i32 %9, ptr %2, align 4
  br label %52

10:                                               ; preds = %14, %6
  %11 = phi ptr [ %12, %14 ], [ %7, %6 ]
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %52, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ubifs_znode, ptr %11, i32 0, i32 8
  %16 = load i32, ptr %15, align 8
  %17 = add i32 %16, -1
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %10

19:                                               ; preds = %14
  %20 = getelementptr %struct.ubifs_znode, ptr %12, i32 0, i32 13, i32 %17, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = getelementptr %struct.ubifs_znode, ptr %12, i32 0, i32 13, i32 %17
  %25 = tail call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %24, ptr noundef nonnull %12, i32 noundef %17) #13
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi ptr [ %25, %23 ], [ %21, %19 ]
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = ptrtoint ptr %27 to i32
  br label %52

31:                                               ; preds = %46, %26
  %32 = phi ptr [ %47, %46 ], [ %27, %26 ]
  %33 = getelementptr inbounds %struct.ubifs_znode, ptr %32, i32 0, i32 6
  %34 = load i32, ptr %33, align 8
  %35 = icmp eq i32 %34, 0
  %36 = getelementptr inbounds %struct.ubifs_znode, ptr %32, i32 0, i32 7
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, -1
  br i1 %35, label %51, label %39

39:                                               ; preds = %31
  %40 = getelementptr %struct.ubifs_znode, ptr %32, i32 0, i32 13, i32 %38, i32 1
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = getelementptr %struct.ubifs_znode, ptr %32, i32 0, i32 13, i32 %38
  %45 = tail call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %44, ptr noundef %32, i32 noundef %38) #13
  br label %46

46:                                               ; preds = %43, %39
  %47 = phi ptr [ %45, %43 ], [ %41, %39 ]
  %48 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %31

49:                                               ; preds = %46
  %50 = ptrtoint ptr %47 to i32
  br label %52

51:                                               ; preds = %31
  store ptr %32, ptr %1, align 4
  store i32 %38, ptr %2, align 4
  br label %52

52:                                               ; preds = %51, %49, %29, %10, %8
  %53 = phi i32 [ 0, %8 ], [ 0, %51 ], [ %50, %49 ], [ %30, %29 ], [ -2, %10 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_tnc_locate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.ubifs_zbranch, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store ptr null, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #13
  %9 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 31
  call void @mutex_lock(ptr noundef %9) #13
  %10 = call i32 @ubifs_lookup_level0(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %6)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %77, label %12

12:                                               ; preds = %5
  %13 = icmp eq ptr %3, null
  %14 = getelementptr [2 x i32], ptr %1, i32 0, i32 1
  %15 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 125
  %16 = getelementptr inbounds %struct.ubifs_zbranch, ptr %8, i32 0, i32 2
  %17 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 126
  %18 = icmp slt i32 %10, 0
  br i1 %18, label %77, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr %7, align 4
  %21 = load i32, ptr %6, align 4
  %22 = getelementptr %struct.ubifs_znode, ptr %20, i32 0, i32 13, i32 %21
  br i1 %13, label %28, label %23

23:                                               ; preds = %19
  %24 = getelementptr %struct.ubifs_znode, ptr %20, i32 0, i32 13, i32 %21, i32 2
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %3, align 4
  %26 = getelementptr %struct.ubifs_znode, ptr %20, i32 0, i32 13, i32 %21, i32 3
  %27 = load i32, ptr %26, align 8
  store i32 %27, ptr %4, align 4
  br label %28

28:                                               ; preds = %23, %19
  %29 = load i32, ptr %14, align 4
  %30 = and i32 %29, -1073741824
  %31 = icmp eq i32 %30, 1073741824
  br i1 %31, label %32, label %35

32:                                               ; preds = %73, %28
  %33 = phi ptr [ %22, %28 ], [ %67, %73 ]
  %34 = call fastcc i32 @tnc_read_hashed_node(ptr noundef %0, ptr noundef %33, ptr noundef %2)
  br label %77

35:                                               ; preds = %28
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef align 8 dereferenceable(24) %22, i32 24, i1 false)
  %36 = load i32, ptr %15, align 8
  call void @mutex_unlock(ptr noundef %9) #13
  %37 = load i32, ptr %16, align 4
  %38 = call ptr @ubifs_get_wbuf(ptr noundef %0, i32 noundef %37) #13
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %42

40:                                               ; preds = %73
  %41 = call i32 @ubifs_tnc_read_node(ptr noundef %0, ptr noundef %67, ptr noundef %2) #13
  br label %77

42:                                               ; preds = %35
  %43 = call i32 @ubifs_tnc_read_node(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %2) #13
  br label %79

44:                                               ; preds = %35
  %45 = call fastcc i32 @fallible_read_node(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, ptr noundef %2)
  %46 = icmp slt i32 %45, 1
  br i1 %46, label %59, label %47

47:                                               ; preds = %44
  %48 = load i32, ptr %17, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !10
  %49 = load i32, ptr %15, align 8
  %50 = icmp eq i32 %49, %36
  br i1 %50, label %79, label %51

51:                                               ; preds = %47
  %52 = add i32 %36, 1
  %53 = icmp eq i32 %52, %49
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  %55 = load i32, ptr %17, align 4
  %56 = icmp ne i32 %48, %55
  %57 = icmp eq i32 %48, %37
  %58 = or i1 %56, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %54, %51, %44
  call void @mutex_lock(ptr noundef %9) #13
  %60 = call i32 @ubifs_lookup_level0(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %6)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %59
  %63 = icmp slt i32 %60, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %62
  %65 = load ptr, ptr %7, align 4
  %66 = load i32, ptr %6, align 4
  %67 = getelementptr %struct.ubifs_znode, ptr %65, i32 0, i32 13, i32 %66
  br i1 %13, label %73, label %68

68:                                               ; preds = %64
  %69 = getelementptr %struct.ubifs_znode, ptr %65, i32 0, i32 13, i32 %66, i32 2
  %70 = load i32, ptr %69, align 4
  store i32 %70, ptr %3, align 4
  %71 = getelementptr %struct.ubifs_znode, ptr %65, i32 0, i32 13, i32 %66, i32 3
  %72 = load i32, ptr %71, align 8
  store i32 %72, ptr %4, align 4
  br label %73

73:                                               ; preds = %68, %64
  %74 = load i32, ptr %14, align 4
  %75 = and i32 %74, -1073741824
  %76 = icmp eq i32 %75, 1073741824
  br i1 %76, label %32, label %40

77:                                               ; preds = %62, %59, %40, %32, %12, %5
  %78 = phi i32 [ %34, %32 ], [ %41, %40 ], [ -2, %5 ], [ %10, %12 ], [ -2, %59 ], [ %60, %62 ]
  call void @mutex_unlock(ptr noundef %9) #13
  br label %79

79:                                               ; preds = %77, %54, %47, %42
  %80 = phi i32 [ %78, %77 ], [ %43, %42 ], [ 0, %47 ], [ 0, %54 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  ret i32 %80
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tnc_read_hashed_node(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr [2 x i32], ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, -1073741824
  %7 = icmp eq i32 %6, 1073741824
  br i1 %7, label %9, label %8, !prof !12

8:                                                ; preds = %3
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 388) #13
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20, !prof !8

17:                                               ; preds = %13
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 392) #13
  %18 = load ptr, ptr %10, align 8
  %19 = load i32, ptr %14, align 4
  br label %20

20:                                               ; preds = %17, %13
  %21 = phi i32 [ %19, %17 ], [ %15, %13 ]
  %22 = phi ptr [ %18, %17 ], [ %11, %13 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %2, ptr align 1 %22, i32 %21, i1 false)
  br label %58

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 186
  %25 = load i8, ptr %24, align 4
  %26 = and i8 %25, 4
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = tail call fastcc i32 @fallible_read_node(ptr noundef %0, ptr noundef %1, ptr noundef %1, ptr noundef %2)
  switch i32 %29, label %57 [
    i32 0, label %58
    i32 1, label %33
  ]

30:                                               ; preds = %23
  %31 = tail call i32 @ubifs_tnc_read_node(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %30, %28
  %34 = load ptr, ptr %10, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36, !prof !12

36:                                               ; preds = %33
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 312) #13
  br label %37

37:                                               ; preds = %36, %33
  %38 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42, !prof !8

41:                                               ; preds = %37
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 313) #13
  br label %42

42:                                               ; preds = %41, %37
  %43 = load i32, ptr %4, align 4
  %44 = and i32 %43, -1073741824
  %45 = icmp eq i32 %44, 1073741824
  br i1 %45, label %47, label %46, !prof !12

46:                                               ; preds = %42
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 314) #13
  br label %47

47:                                               ; preds = %46, %42
  %48 = tail call i32 @ubifs_validate_entry(ptr noundef %0, ptr noundef %2) #13
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  tail call void @dump_stack() #14
  %51 = load i32, ptr %38, align 4
  tail call void @ubifs_dump_node(ptr noundef %0, ptr noundef %2, i32 noundef %51) #13
  br label %58

52:                                               ; preds = %47
  %53 = load i32, ptr %38, align 4
  %54 = tail call ptr @kmemdup(ptr noundef %2, i32 noundef %53, i32 noundef 3136) #13
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  store ptr %54, ptr %10, align 8
  br label %58

57:                                               ; preds = %28
  br label %58

58:                                               ; preds = %57, %56, %52, %50, %30, %28, %20
  %59 = phi i32 [ 0, %20 ], [ %31, %30 ], [ %48, %50 ], [ 0, %52 ], [ 0, %56 ], [ -2, %28 ], [ %29, %57 ]
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_read_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_get_wbuf(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fallible_read_node(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr [2 x i32], ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 29
  %8 = getelementptr inbounds %struct.ubifs_zbranch, ptr %2, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ubifs_zbranch, ptr %2, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ubifs_zbranch, ptr %2, i32 0, i32 3
  %13 = load i32, ptr %12, align 8
  %14 = tail call i32 @ubifs_leb_read(ptr noundef %0, i32 noundef %11, ptr noundef %3, i32 noundef %13, i32 noundef %9, i32 noundef 1) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %4
  %17 = load i32, ptr %3, align 1
  %18 = icmp eq i32 %17, 101718065
  br i1 %18, label %19, label %62

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.ubifs_ch, ptr %3, i32 0, i32 4
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %7, %22
  br i1 %23, label %24, label %62

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.ubifs_ch, ptr %3, i32 0, i32 3
  %26 = load i32, ptr %25, align 1
  %27 = icmp eq i32 %26, %9
  br i1 %27, label %28, label %62

28:                                               ; preds = %24
  %29 = icmp eq i32 %7, 1
  br i1 %29, label %30, label %40

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %32 = load i16, ptr %31, align 4
  %33 = and i16 %32, 16
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 186
  %37 = load i8, ptr %36, align 4
  %38 = and i8 %37, 24
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %35, %30, %28
  %41 = getelementptr i8, ptr %3, i32 8
  %42 = add i32 %9, -8
  %43 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %41, i32 noundef %42) #15
  %44 = getelementptr inbounds %struct.ubifs_ch, ptr %3, i32 0, i32 1
  %45 = load i32, ptr %44, align 1
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %49, label %62

47:                                               ; preds = %4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %7, i32 noundef %11, i32 noundef %13, i32 noundef %14) #13
  %48 = icmp eq i32 %14, 1
  br i1 %48, label %49, label %62

49:                                               ; preds = %47, %40, %35
  %50 = getelementptr inbounds %struct.ubifs_dent_node, ptr %3, i32 0, i32 1
  %51 = load i32, ptr %50, align 8
  %52 = getelementptr %struct.ubifs_dent_node, ptr %3, i32 0, i32 1, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = load i32, ptr %1, align 8
  %55 = icmp eq i32 %54, %51
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load i32, ptr %5, align 4
  %58 = icmp ult i32 %57, %53
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = icmp ule i32 %57, %53
  %61 = zext i1 %60 to i32
  br label %62

62:                                               ; preds = %59, %56, %49, %47, %40, %24, %19, %16
  %63 = phi i32 [ %14, %47 ], [ 0, %16 ], [ 0, %19 ], [ 0, %24 ], [ 0, %40 ], [ 0, %49 ], [ 0, %56 ], [ %61, %59 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_tnc_get_bu_keys(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !9
  %5 = getelementptr [2 x i32], ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 536870911
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store ptr null, ptr %4, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.bu_info, ptr %1, i32 0, i32 5
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.bu_info, ptr %1, i32 0, i32 6
  store i32 0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.bu_info, ptr %1, i32 0, i32 7
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 31
  tail call void @mutex_lock(ptr noundef %11) #13
  %12 = call i32 @ubifs_lookup_level0(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %3)
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %157, label %14

14:                                               ; preds = %2
  %15 = icmp eq i32 %12, 0
  %16 = load ptr, ptr %4, align 4
  %17 = load i32, ptr %3, align 4
  br i1 %15, label %38, label %18

18:                                               ; preds = %14
  %19 = getelementptr %struct.ubifs_znode, ptr %16, i32 0, i32 13, i32 %17, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.bu_info, ptr %1, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = icmp sgt i32 %20, %22
  br i1 %23, label %161, label %24

24:                                               ; preds = %18
  %25 = load i32, ptr %8, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %8, align 4
  %27 = getelementptr %struct.bu_info, ptr %1, i32 0, i32 1, i32 %25
  %28 = getelementptr %struct.ubifs_znode, ptr %16, i32 0, i32 13, i32 %17
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %27, ptr noundef align 8 dereferenceable(24) %28, i32 24, i1 false)
  %29 = load i32, ptr %9, align 8
  %30 = add i32 %29, 1
  store i32 %30, ptr %9, align 8
  %31 = getelementptr %struct.ubifs_znode, ptr %16, i32 0, i32 13, i32 %17, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr %struct.ubifs_znode, ptr %16, i32 0, i32 13, i32 %17, i32 3
  %34 = load i32, ptr %33, align 8
  %35 = add i32 %20, 7
  %36 = add i32 %35, %34
  %37 = and i32 %36, -8
  br label %38

38:                                               ; preds = %24, %14
  %39 = phi i32 [ %32, %24 ], [ -1, %14 ]
  %40 = phi i32 [ %37, %24 ], [ 0, %14 ]
  %41 = phi i32 [ %20, %24 ], [ 0, %14 ]
  %42 = getelementptr inbounds %struct.bu_info, ptr %1, i32 0, i32 3
  br label %43

43:                                               ; preds = %147, %38
  %44 = phi ptr [ %16, %38 ], [ %95, %147 ]
  %45 = phi i32 [ %17, %38 ], [ %96, %147 ]
  %46 = phi i32 [ %39, %38 ], [ %138, %147 ]
  %47 = phi i32 [ %40, %38 ], [ %139, %147 ]
  %48 = phi i32 [ %41, %38 ], [ %140, %147 ]
  %49 = phi i32 [ %7, %38 ], [ %141, %147 ]
  %50 = add i32 %45, 1
  %51 = getelementptr inbounds %struct.ubifs_znode, ptr %44, i32 0, i32 7
  %52 = load i32, ptr %51, align 4
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %94, label %54

54:                                               ; preds = %58, %43
  %55 = phi ptr [ %56, %58 ], [ %44, %43 ]
  %56 = load ptr, ptr %55, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %160, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.ubifs_znode, ptr %55, i32 0, i32 8
  %60 = load i32, ptr %59, align 8
  %61 = add i32 %60, 1
  %62 = getelementptr inbounds %struct.ubifs_znode, ptr %56, i32 0, i32 7
  %63 = load i32, ptr %62, align 4
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %54

65:                                               ; preds = %58
  %66 = getelementptr %struct.ubifs_znode, ptr %56, i32 0, i32 13, i32 %61, i32 1
  %67 = load ptr, ptr %66, align 8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = getelementptr %struct.ubifs_znode, ptr %56, i32 0, i32 13, i32 %61
  %71 = call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %70, ptr noundef nonnull %56, i32 noundef %61) #13
  br label %72

72:                                               ; preds = %69, %65
  %73 = phi ptr [ %71, %69 ], [ %67, %65 ]
  %74 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %74, label %91, label %75

75:                                               ; preds = %87, %72
  %76 = phi ptr [ %88, %87 ], [ %73, %72 ]
  %77 = getelementptr inbounds %struct.ubifs_znode, ptr %76, i32 0, i32 6
  %78 = load i32, ptr %77, align 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %75
  %81 = getelementptr %struct.ubifs_znode, ptr %76, i32 0, i32 13, i32 0, i32 1
  %82 = load ptr, ptr %81, align 8
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = getelementptr %struct.ubifs_znode, ptr %76, i32 0, i32 13, i32 0
  %86 = call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %85, ptr noundef %76, i32 noundef 0) #13
  br label %87

87:                                               ; preds = %84, %80
  %88 = phi ptr [ %86, %84 ], [ %82, %80 ]
  %89 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  br i1 %89, label %91, label %75

90:                                               ; preds = %75
  store ptr %76, ptr %4, align 4
  br label %94

91:                                               ; preds = %87, %72
  %92 = phi ptr [ %88, %87 ], [ %73, %72 ]
  %93 = ptrtoint ptr %92 to i32
  br label %157

94:                                               ; preds = %90, %43
  %95 = phi ptr [ %76, %90 ], [ %44, %43 ]
  %96 = phi i32 [ 0, %90 ], [ %50, %43 ]
  store i32 %96, ptr %3, align 4
  %97 = getelementptr %struct.ubifs_znode, ptr %95, i32 0, i32 13, i32 %96
  %98 = load i32, ptr %97, align 8
  %99 = load i32, ptr %1, align 8
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %160

101:                                              ; preds = %94
  %102 = getelementptr [2 x i32], ptr %97, i32 0, i32 1
  %103 = load i32, ptr %102, align 4
  %104 = and i32 %103, -536870912
  %105 = icmp eq i32 %104, 536870912
  br i1 %105, label %106, label %160

106:                                              ; preds = %101
  %107 = icmp slt i32 %46, 0
  %108 = getelementptr %struct.ubifs_znode, ptr %95, i32 0, i32 13, i32 %96, i32 2
  %109 = load i32, ptr %108, align 4
  br i1 %107, label %110, label %120

110:                                              ; preds = %106
  %111 = getelementptr %struct.ubifs_znode, ptr %95, i32 0, i32 13, i32 %96, i32 3
  %112 = load i32, ptr %111, align 8
  %113 = getelementptr %struct.ubifs_znode, ptr %95, i32 0, i32 13, i32 %96, i32 4
  %114 = load i32, ptr %113, align 4
  %115 = add i32 %112, 7
  %116 = add i32 %115, %114
  %117 = and i32 %116, -8
  %118 = load i32, ptr %42, align 4
  %119 = icmp sgt i32 %114, %118
  br i1 %119, label %161, label %137

120:                                              ; preds = %106
  %121 = icmp eq i32 %109, %46
  br i1 %121, label %122, label %161

122:                                              ; preds = %120
  %123 = getelementptr %struct.ubifs_znode, ptr %95, i32 0, i32 13, i32 %96, i32 3
  %124 = load i32, ptr %123, align 8
  %125 = icmp eq i32 %124, %47
  br i1 %125, label %126, label %161

126:                                              ; preds = %122
  %127 = getelementptr %struct.ubifs_znode, ptr %95, i32 0, i32 13, i32 %96, i32 4
  %128 = load i32, ptr %127, align 4
  %129 = add i32 %128, 7
  %130 = and i32 %129, -8
  %131 = add i32 %130, %47
  %132 = add i32 %48, 7
  %133 = and i32 %132, -8
  %134 = add i32 %128, %133
  %135 = load i32, ptr %42, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %161, label %137

137:                                              ; preds = %126, %110
  %138 = phi i32 [ %109, %110 ], [ %46, %126 ]
  %139 = phi i32 [ %117, %110 ], [ %131, %126 ]
  %140 = phi i32 [ %114, %110 ], [ %134, %126 ]
  %141 = and i32 %103, 536870911
  %142 = xor i32 %49, -1
  %143 = add nsw i32 %141, %142
  %144 = load i32, ptr %9, align 8
  %145 = add i32 %143, %144
  store i32 %145, ptr %9, align 8
  %146 = icmp sgt i32 %145, 31
  br i1 %146, label %161, label %147

147:                                              ; preds = %137
  %148 = load i32, ptr %8, align 4
  %149 = add i32 %148, 1
  store i32 %149, ptr %8, align 4
  %150 = getelementptr %struct.bu_info, ptr %1, i32 0, i32 1, i32 %148
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %150, ptr noundef align 8 dereferenceable(24) %97, i32 24, i1 false)
  %151 = load i32, ptr %9, align 8
  %152 = add i32 %151, 1
  store i32 %152, ptr %9, align 8
  %153 = load i32, ptr %8, align 4
  %154 = icmp sgt i32 %153, 31
  %155 = icmp sgt i32 %152, 31
  %156 = select i1 %154, i1 true, i1 %155
  br i1 %156, label %161, label %43

157:                                              ; preds = %91, %2
  %158 = phi i32 [ %12, %2 ], [ %93, %91 ]
  %159 = icmp eq i32 %158, -2
  br i1 %159, label %160, label %161

160:                                              ; preds = %157, %101, %94, %54
  store i32 1, ptr %10, align 4
  br label %161

161:                                              ; preds = %160, %157, %147, %137, %126, %122, %120, %110, %18
  %162 = phi i32 [ 0, %160 ], [ %158, %157 ], [ -22, %18 ], [ 0, %147 ], [ 0, %137 ], [ 0, %126 ], [ 0, %120 ], [ 0, %122 ], [ -22, %110 ]
  %163 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 125
  %164 = load i32, ptr %163, align 8
  %165 = getelementptr inbounds %struct.bu_info, ptr %1, i32 0, i32 4
  store i32 %164, ptr %165, align 8
  call void @mutex_unlock(ptr noundef %11) #13
  %166 = icmp eq i32 %162, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %161
  %168 = load i32, ptr %9, align 8
  %169 = icmp sgt i32 %168, 32
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  store i32 32, ptr %9, align 8
  br label %171

171:                                              ; preds = %170, %167, %161
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %162
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tnc_next(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 4
  %5 = load i32, ptr %2, align 4
  %6 = add i32 %5, 1
  %7 = getelementptr inbounds %struct.ubifs_znode, ptr %4, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 %6, ptr %2, align 4
  br label %52

11:                                               ; preds = %15, %3
  %12 = phi ptr [ %13, %15 ], [ %4, %3 ]
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %52, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ubifs_znode, ptr %12, i32 0, i32 8
  %17 = load i32, ptr %16, align 8
  %18 = add i32 %17, 1
  %19 = getelementptr inbounds %struct.ubifs_znode, ptr %13, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %11

22:                                               ; preds = %15
  %23 = getelementptr %struct.ubifs_znode, ptr %13, i32 0, i32 13, i32 %18, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = getelementptr %struct.ubifs_znode, ptr %13, i32 0, i32 13, i32 %18
  %28 = tail call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %27, ptr noundef nonnull %13, i32 noundef %18) #13
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi ptr [ %28, %26 ], [ %24, %22 ]
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = ptrtoint ptr %30 to i32
  br label %52

34:                                               ; preds = %46, %29
  %35 = phi ptr [ %47, %46 ], [ %30, %29 ]
  %36 = getelementptr inbounds %struct.ubifs_znode, ptr %35, i32 0, i32 6
  %37 = load i32, ptr %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %34
  %40 = getelementptr %struct.ubifs_znode, ptr %35, i32 0, i32 13, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = getelementptr %struct.ubifs_znode, ptr %35, i32 0, i32 13, i32 0
  %45 = tail call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %44, ptr noundef %35, i32 noundef 0) #13
  br label %46

46:                                               ; preds = %43, %39
  %47 = phi ptr [ %45, %43 ], [ %41, %39 ]
  %48 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %34

49:                                               ; preds = %46
  %50 = ptrtoint ptr %47 to i32
  br label %52

51:                                               ; preds = %34
  store ptr %35, ptr %1, align 4
  store i32 0, ptr %2, align 4
  br label %52

52:                                               ; preds = %51, %49, %32, %11, %10
  %53 = phi i32 [ 0, %10 ], [ 0, %51 ], [ %50, %49 ], [ %33, %32 ], [ -2, %11 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_tnc_bulk_read(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bu_info, ptr %1, i32 0, i32 1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bu_info, ptr %1, i32 0, i32 1, i32 0, i32 3
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.bu_info, ptr %1, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -1
  %10 = getelementptr %struct.bu_info, ptr %1, i32 0, i32 1, i32 %9, i32 3
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr %struct.bu_info, ptr %1, i32 0, i32 1, i32 %9, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %13, %6
  %15 = add i32 %14, %11
  %16 = getelementptr inbounds %struct.bu_info, ptr %1, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = icmp sgt i32 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %17, i32 noundef %15) #13
  br label %160

20:                                               ; preds = %2
  %21 = tail call ptr @ubifs_get_wbuf(ptr noundef %0, i32 noundef %4) #13
  %22 = icmp eq ptr %21, null
  %23 = getelementptr inbounds %struct.bu_info, ptr %1, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  br i1 %22, label %79, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %21, align 8
  %27 = icmp sgt i32 %4, -1
  br i1 %27, label %28, label %34, !prof !13

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.ubifs_info, ptr %26, i32 0, i32 79
  %30 = load i32, ptr %29, align 8
  %31 = icmp sle i32 %30, %4
  %32 = icmp slt i32 %6, 0
  %33 = or i1 %32, %31
  br i1 %33, label %34, label %35, !prof !8

34:                                               ; preds = %28, %25
  tail call void @ubifs_assert_failed(ptr noundef %26, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 1653) #13
  br label %35

35:                                               ; preds = %34, %28
  %36 = and i32 %6, 7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42, !prof !12

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.ubifs_info, ptr %26, i32 0, i32 75
  %40 = load i32, ptr %39, align 8
  %41 = icmp sgt i32 %40, %6
  br i1 %41, label %45, label %42, !prof !12

42:                                               ; preds = %38, %35
  tail call void @ubifs_assert_failed(ptr noundef %26, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 1654) #13
  %43 = getelementptr inbounds %struct.ubifs_info, ptr %26, i32 0, i32 75
  %44 = load i32, ptr %43, align 8
  br label %45

45:                                               ; preds = %42, %38
  %46 = phi i32 [ %40, %38 ], [ %44, %42 ]
  %47 = add i32 %13, %11
  %48 = icmp sgt i32 %47, %46
  br i1 %48, label %49, label %50, !prof !8

49:                                               ; preds = %45
  tail call void @ubifs_assert_failed(ptr noundef %26, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 1655) #13
  br label %50

50:                                               ; preds = %49, %45
  %51 = getelementptr inbounds %struct.ubifs_wbuf, ptr %21, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %51) #13
  %52 = getelementptr inbounds %struct.ubifs_wbuf, ptr %21, i32 0, i32 2
  %53 = load i32, ptr %52, align 8
  %54 = icmp eq i32 %53, %4
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.ubifs_wbuf, ptr %21, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = icmp sgt i32 %47, %57
  br i1 %58, label %62, label %59

59:                                               ; preds = %55, %50
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %60 = load i16, ptr %51, align 4
  %61 = add i16 %60, 1
  store i16 %61, ptr %51, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  br label %76

62:                                               ; preds = %55
  %63 = sub i32 %57, %6
  %64 = tail call i32 @llvm.smax.i32(i32 %63, i32 0) #13
  %65 = getelementptr i8, ptr %24, i32 %64
  %66 = getelementptr inbounds %struct.ubifs_wbuf, ptr %21, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr i8, ptr %67, i32 %6
  %69 = getelementptr i8, ptr %68, i32 %64
  %70 = sub i32 0, %57
  %71 = getelementptr i8, ptr %69, i32 %70
  %72 = sub i32 %15, %64
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %65, ptr align 1 %71, i32 %72, i1 false) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %73 = load i16, ptr %51, align 4
  %74 = add i16 %73, 1
  store i16 %74, ptr %51, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  %75 = icmp slt i32 %63, 1
  br i1 %75, label %81, label %76

76:                                               ; preds = %62, %59
  %77 = phi i32 [ %15, %59 ], [ %64, %62 ]
  %78 = tail call i32 @ubifs_leb_read(ptr noundef %26, i32 noundef %4, ptr noundef %24, i32 noundef %6, i32 noundef %77, i32 noundef 0) #13
  br label %81

79:                                               ; preds = %20
  %80 = tail call i32 @ubifs_leb_read(ptr noundef %0, i32 noundef %4, ptr noundef %24, i32 noundef %6, i32 noundef %15, i32 noundef 0) #13
  br label %81

81:                                               ; preds = %79, %76, %62
  %82 = phi i32 [ %80, %79 ], [ 0, %62 ], [ %78, %76 ]
  %83 = getelementptr inbounds %struct.bu_info, ptr %1, i32 0, i32 4
  %84 = load i32, ptr %83, align 8
  %85 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 126
  %86 = load i32, ptr %85, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !10
  %87 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 125
  %88 = load i32, ptr %87, align 8
  %89 = icmp eq i32 %88, %84
  br i1 %89, label %98, label %90

90:                                               ; preds = %81
  %91 = add i32 %84, 1
  %92 = icmp eq i32 %91, %88
  br i1 %92, label %93, label %160

93:                                               ; preds = %90
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  %94 = load i32, ptr %85, align 4
  %95 = icmp ne i32 %86, %94
  %96 = icmp eq i32 %86, %4
  %97 = select i1 %95, i1 true, i1 %96
  br i1 %97, label %160, label %98

98:                                               ; preds = %93, %81
  switch i32 %82, label %99 [
    i32 -74, label %100
    i32 0, label %100
  ]

99:                                               ; preds = %98
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %4, i32 noundef %6, i32 noundef %82) #13
  tail call void @dump_stack() #14
  br label %160

100:                                              ; preds = %98, %98
  %101 = load i32, ptr %7, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %160

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.bu_info, ptr %1, i32 0, i32 2
  %105 = load ptr, ptr %104, align 8
  br label %106

106:                                              ; preds = %153, %103
  %107 = phi ptr [ %156, %153 ], [ %105, %103 ]
  %108 = phi i32 [ %157, %153 ], [ 0, %103 ]
  %109 = getelementptr %struct.bu_info, ptr %1, i32 0, i32 1, i32 %108
  %110 = getelementptr inbounds %struct.ubifs_ch, ptr %107, i32 0, i32 4
  %111 = load i8, ptr %110, align 1
  %112 = icmp eq i8 %111, 1
  br i1 %112, label %115, label %113

113:                                              ; preds = %106
  %114 = zext i8 %111 to i32
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %114, i32 noundef 1) #13
  br label %145

115:                                              ; preds = %106
  %116 = getelementptr %struct.bu_info, ptr %1, i32 0, i32 1, i32 %108, i32 4
  %117 = load i32, ptr %116, align 4
  %118 = getelementptr %struct.bu_info, ptr %1, i32 0, i32 1, i32 %108, i32 2
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr %struct.bu_info, ptr %1, i32 0, i32 1, i32 %108, i32 3
  %121 = load i32, ptr %120, align 8
  %122 = tail call i32 @ubifs_check_node(ptr noundef %0, ptr noundef %107, i32 noundef %117, i32 noundef %119, i32 noundef %121, i32 noundef 0, i32 noundef 0) #13
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %115
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef 1) #13
  br label %145

125:                                              ; preds = %115
  %126 = getelementptr inbounds %struct.ubifs_ch, ptr %107, i32 0, i32 3
  %127 = load i32, ptr %126, align 1
  %128 = load i32, ptr %116, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %131, label %130

130:                                              ; preds = %125
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %127, i32 noundef %128) #13
  br label %145

131:                                              ; preds = %125
  %132 = getelementptr i8, ptr %107, i32 24
  %133 = load i32, ptr %132, align 8
  %134 = load i32, ptr %109, align 8
  %135 = icmp eq i32 %134, %133
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = getelementptr i8, ptr %107, i32 28
  %138 = load i32, ptr %137, align 4
  %139 = getelementptr [2 x i32], ptr %109, i32 0, i32 1
  %140 = load i32, ptr %139, align 4
  %141 = icmp eq i32 %140, %138
  br i1 %141, label %153, label %142

142:                                              ; preds = %136, %131
  %143 = load i32, ptr %118, align 4
  %144 = load i32, ptr %120, align 8
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %143, i32 noundef %144) #13
  br label %145

145:                                              ; preds = %142, %130, %124, %113
  %146 = phi i32 [ %122, %124 ], [ -22, %142 ], [ -22, %130 ], [ -22, %113 ]
  %147 = getelementptr %struct.bu_info, ptr %1, i32 0, i32 1, i32 %108, i32 2
  %148 = load i32, ptr %147, align 4
  %149 = getelementptr %struct.bu_info, ptr %1, i32 0, i32 1, i32 %108, i32 3
  %150 = load i32, ptr %149, align 8
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %148, i32 noundef %150) #13
  %151 = getelementptr %struct.bu_info, ptr %1, i32 0, i32 1, i32 %108, i32 4
  %152 = load i32, ptr %151, align 4
  tail call void @ubifs_dump_node(ptr noundef %0, ptr noundef %107, i32 noundef %152) #13
  tail call void @dump_stack() #14
  br label %160

153:                                              ; preds = %136
  %154 = add i32 %127, 7
  %155 = and i32 %154, -8
  %156 = getelementptr i8, ptr %107, i32 %155
  %157 = add nuw nsw i32 %108, 1
  %158 = load i32, ptr %7, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %106, label %160

160:                                              ; preds = %153, %145, %100, %99, %93, %90, %19
  %161 = phi i32 [ -22, %19 ], [ %82, %99 ], [ %146, %145 ], [ -11, %90 ], [ -11, %93 ], [ 0, %100 ], [ 0, %153 ]
  ret i32 %161
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_tnc_lookup_nm(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = tail call i32 @ubifs_tnc_locate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef null) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ubifs_dent_node, ptr %2, i32 0, i32 5
  %11 = load i16, ptr %10, align 1
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.fscrypt_name, ptr %3, i32 0, i32 1, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %12
  br i1 %15, label %16, label %22

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.fscrypt_name, ptr %3, i32 0, i32 1
  %18 = getelementptr inbounds %struct.ubifs_dent_node, ptr %2, i32 0, i32 7
  %19 = load ptr, ptr %17, align 4
  %20 = tail call i32 @bcmp(ptr %18, ptr %19, i32 %12)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %44, label %22

22:                                               ; preds = %16, %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store ptr null, ptr %6, align 4, !annotation !9
  %23 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 31
  tail call void @mutex_lock(ptr noundef %23) #13
  %24 = call i32 @ubifs_lookup_level0(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %5) #13
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %22
  %27 = icmp slt i32 %24, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %26
  %29 = load i32, ptr %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32, !prof !8

31:                                               ; preds = %28
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 1825) #13
  br label %32

32:                                               ; preds = %31, %28
  %33 = call fastcc i32 @resolve_collision(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef %3) #13
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %42, label %35, !prof !8

35:                                               ; preds = %32
  %36 = icmp eq i32 %33, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %35
  %38 = load ptr, ptr %6, align 4
  %39 = load i32, ptr %5, align 4
  %40 = getelementptr %struct.ubifs_znode, ptr %38, i32 0, i32 13, i32 %39
  %41 = call fastcc i32 @tnc_read_hashed_node(ptr noundef %0, ptr noundef %40, ptr noundef %2) #13
  br label %42

42:                                               ; preds = %37, %35, %32, %26, %22
  %43 = phi i32 [ %33, %32 ], [ %41, %37 ], [ -2, %22 ], [ %24, %26 ], [ -2, %35 ]
  call void @mutex_unlock(ptr noundef %23) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  br label %44

44:                                               ; preds = %42, %16, %4
  %45 = phi i32 [ %43, %42 ], [ %7, %4 ], [ 0, %16 ]
  ret i32 %45
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_tnc_lookup_dh(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca %union.ubifs_key, align 8
  %8 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, 4
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %4
  %13 = tail call i32 @ubifs_tnc_locate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef null) #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.ubifs_dent_node, ptr %2, i32 0, i32 6
  %17 = load i32, ptr %16, align 1
  %18 = icmp eq i32 %17, %3
  br i1 %18, label %35, label %19

19:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  %20 = getelementptr [2 x i32], ptr %1, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, -1073741824
  %23 = icmp eq i32 %22, 1073741824
  br i1 %23, label %25, label %24, !prof !12

24:                                               ; preds = %19
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1929) #13
  br label %25

25:                                               ; preds = %24, %19
  %26 = load i32, ptr %1, align 8
  store i32 %26, ptr %7, align 8
  %27 = getelementptr inbounds [2 x i32], ptr %7, i32 0, i32 1
  store i32 1073741824, ptr %27, align 4
  %28 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 31
  tail call void @mutex_lock(ptr noundef %28) #13
  %29 = call i32 @ubifs_lookup_level0(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %5) #13
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %33, label %31, !prof !8

31:                                               ; preds = %25
  %32 = call fastcc i32 @search_dh_cookie(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef %29) #13
  br label %33

33:                                               ; preds = %31, %25
  %34 = phi i32 [ %29, %25 ], [ %32, %31 ]
  call void @mutex_unlock(ptr noundef %28) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  br label %35

35:                                               ; preds = %33, %15, %12, %4
  %36 = phi i32 [ %34, %33 ], [ -95, %4 ], [ %13, %12 ], [ 0, %15 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_tnc_add(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readnone %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.ubifs_zbranch, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 0, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store ptr null, ptr %8, align 4, !annotation !9
  %10 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 31
  tail call void @mutex_lock(ptr noundef %10) #13
  %11 = call fastcc i32 @lookup_level0_dirty(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %7)
  switch i32 %11, label %41 [
    i32 0, label %12
    i32 1, label %22
  ]

12:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #13
  %13 = getelementptr inbounds %struct.ubifs_zbranch, ptr %9, i32 0, i32 2
  %14 = getelementptr inbounds i8, ptr %9, i32 8
  store i64 0, ptr %14, align 8
  store i32 %2, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ubifs_zbranch, ptr %9, i32 0, i32 3
  store i32 %3, ptr %15, align 8
  %16 = getelementptr inbounds %struct.ubifs_zbranch, ptr %9, i32 0, i32 4
  store i32 %4, ptr %16, align 4
  %17 = load i64, ptr %1, align 8
  store i64 %17, ptr %9, align 8
  %18 = load ptr, ptr %8, align 4
  %19 = load i32, ptr %7, align 4
  %20 = add i32 %19, 1
  %21 = call fastcc i32 @tnc_insert(ptr noundef %0, ptr noundef %18, ptr noundef nonnull %9, i32 noundef %20)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #13
  br label %36

22:                                               ; preds = %6
  %23 = load ptr, ptr %8, align 4
  %24 = load i32, ptr %7, align 4
  %25 = getelementptr %struct.ubifs_znode, ptr %23, i32 0, i32 13, i32 %24, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  call void @kfree(ptr noundef nonnull %26) #13
  store ptr null, ptr %25, align 8
  br label %29

29:                                               ; preds = %28, %22
  %30 = getelementptr %struct.ubifs_znode, ptr %23, i32 0, i32 13, i32 %24, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr %struct.ubifs_znode, ptr %23, i32 0, i32 13, i32 %24, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = call i32 @ubifs_update_one_lp(ptr noundef %0, i32 noundef %31, i32 noundef -2147483647, i32 noundef %33, i32 noundef 0, i32 noundef 0) #13
  store i32 %2, ptr %30, align 4
  %35 = getelementptr %struct.ubifs_znode, ptr %23, i32 0, i32 13, i32 %24, i32 3
  store i32 %3, ptr %35, align 8
  store i32 %4, ptr %32, align 4
  br label %36

36:                                               ; preds = %29, %12
  %37 = phi i32 [ %34, %29 ], [ %21, %12 ]
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 @dbg_check_tnc(ptr noundef %0, i32 noundef 0) #13
  br label %41

41:                                               ; preds = %39, %36, %6
  %42 = phi i32 [ %37, %36 ], [ %40, %39 ], [ %11, %6 ]
  call void @mutex_unlock(ptr noundef %10) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lookup_level0_dirty(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %6 = tail call i64 @ktime_get_seconds() #13
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32
  %8 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16, !prof !8

11:                                               ; preds = %4
  %12 = tail call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %7, ptr noundef null, i32 noundef 0) #13
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = ptrtoint ptr %12 to i32
  br label %107

16:                                               ; preds = %11, %4
  %17 = tail call fastcc ptr @dirty_cow_znode(ptr noundef %0, ptr noundef %7)
  store ptr %17, ptr %5, align 4
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = ptrtoint ptr %17 to i32
  br label %107

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ubifs_znode, ptr %17, i32 0, i32 5
  store i64 %6, ptr %22, align 8
  %23 = tail call i32 @ubifs_search_zbranch(ptr noundef %0, ptr noundef %17, ptr noundef %1, ptr noundef %3) #13
  %24 = getelementptr inbounds %struct.ubifs_znode, ptr %17, i32 0, i32 6
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %60, label %27

27:                                               ; preds = %54, %21
  %28 = phi ptr [ %55, %54 ], [ %17, %21 ]
  %29 = load i32, ptr %3, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, ptr %3, align 4
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi i32 [ 0, %31 ], [ %29, %27 ]
  %34 = getelementptr %struct.ubifs_znode, ptr %28, i32 0, i32 13, i32 %33
  %35 = getelementptr %struct.ubifs_znode, ptr %28, i32 0, i32 13, i32 %33, i32 1
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.ubifs_znode, ptr %28, i32 0, i32 5
  store i64 %6, ptr %39, align 8
  %40 = tail call fastcc ptr @dirty_cow_znode(ptr noundef %0, ptr noundef %34)
  %41 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = ptrtoint ptr %40 to i32
  br label %107

44:                                               ; preds = %32
  %45 = tail call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %34, ptr noundef %28, i32 noundef %33) #13
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = ptrtoint ptr %45 to i32
  br label %107

49:                                               ; preds = %44
  %50 = tail call fastcc ptr @dirty_cow_znode(ptr noundef %0, ptr noundef %34)
  %51 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = ptrtoint ptr %50 to i32
  br label %107

54:                                               ; preds = %49, %38
  %55 = phi ptr [ %50, %49 ], [ %40, %38 ]
  %56 = tail call i32 @ubifs_search_zbranch(ptr noundef %0, ptr noundef %55, ptr noundef %1, ptr noundef %3) #13
  %57 = getelementptr inbounds %struct.ubifs_znode, ptr %55, i32 0, i32 6
  %58 = load i32, ptr %57, align 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %27

60:                                               ; preds = %54, %21
  %61 = phi ptr [ %17, %21 ], [ %55, %54 ]
  %62 = phi i32 [ %23, %21 ], [ %56, %54 ]
  store ptr %61, ptr %5, align 4
  store ptr %61, ptr %2, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %107

64:                                               ; preds = %60
  %65 = getelementptr [2 x i32], ptr %1, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, -1073741824
  %68 = icmp eq i32 %67, 1073741824
  br i1 %68, label %69, label %107

69:                                               ; preds = %64
  %70 = load i32, ptr %3, align 4
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %107

72:                                               ; preds = %69
  %73 = call fastcc i32 @tnc_prev(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %3)
  %74 = icmp eq i32 %73, -2
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 -1, ptr %3, align 4
  br label %107

76:                                               ; preds = %72
  %77 = icmp slt i32 %73, 0
  br i1 %77, label %107, label %78, !prof !8

78:                                               ; preds = %76
  %79 = load ptr, ptr %5, align 4
  %80 = load i32, ptr %3, align 4
  %81 = getelementptr %struct.ubifs_znode, ptr %79, i32 0, i32 13, i32 %80
  %82 = load i32, ptr %1, align 8
  %83 = load i32, ptr %81, align 8
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load i32, ptr %65, align 4
  %87 = getelementptr [2 x i32], ptr %81, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %91, label %90

90:                                               ; preds = %85, %78
  store i32 -1, ptr %3, align 4
  br label %107

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.ubifs_znode, ptr %79, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.ubifs_znode, ptr %79, i32 0, i32 4
  %97 = load volatile i32, ptr %96, align 4
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95, %91
  %101 = tail call fastcc ptr @dirty_cow_bottom_up(ptr noundef %0, ptr noundef %79)
  %102 = icmp ugt ptr %101, inttoptr (i32 -4096 to ptr)
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = ptrtoint ptr %101 to i32
  br label %107

105:                                              ; preds = %100, %95
  %106 = phi ptr [ %101, %100 ], [ %79, %95 ]
  store ptr %106, ptr %2, align 4
  br label %107

107:                                              ; preds = %105, %103, %90, %76, %75, %69, %64, %60, %52, %47, %42, %19, %14
  %108 = phi i32 [ %15, %14 ], [ %20, %19 ], [ 0, %75 ], [ 0, %90 ], [ %104, %103 ], [ 1, %105 ], [ 0, %69 ], [ 0, %64 ], [ %62, %60 ], [ %73, %76 ], [ %53, %52 ], [ %48, %47 ], [ %43, %42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 %108
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tnc_insert(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp sgt i32 %3, -1
  br i1 %5, label %6, label %10, !prof !12

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 70
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %8, %3
  br i1 %9, label %10, label %13, !prof !8

10:                                               ; preds = %6, %4
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 2087) #13
  %11 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 70
  %12 = load i32, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi i32 [ %12, %10 ], [ %8, %6 ]
  %15 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 70
  %16 = load ptr, ptr %1, align 8
  %17 = getelementptr inbounds %struct.ubifs_znode, ptr %1, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = icmp slt i32 %18, %14
  br i1 %19, label %31, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32, i32 4
  %22 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32, i32 2
  %23 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32, i32 3
  %24 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 94
  %25 = getelementptr [2 x i32], ptr %2, i32 0, i32 1
  %26 = getelementptr inbounds %struct.ubifs_zbranch, ptr %2, i32 0, i32 1
  %27 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 83
  %28 = getelementptr inbounds %struct.ubifs_zbranch, ptr %2, i32 0, i32 2
  %29 = getelementptr inbounds %struct.ubifs_zbranch, ptr %2, i32 0, i32 3
  %30 = getelementptr inbounds %struct.ubifs_zbranch, ptr %2, i32 0, i32 4
  br label %124

31:                                               ; preds = %360, %13
  %32 = phi i32 [ %3, %13 ], [ %363, %360 ]
  %33 = phi ptr [ %1, %13 ], [ %126, %360 ]
  %34 = phi ptr [ %16, %13 ], [ %366, %360 ]
  %35 = phi ptr [ %17, %13 ], [ %367, %360 ]
  %36 = phi i32 [ %14, %13 ], [ %369, %360 ]
  %37 = icmp eq i32 %32, %36
  br i1 %37, label %38, label %39, !prof !8

38:                                               ; preds = %31
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, i32 noundef 2093) #13
  br label %39

39:                                               ; preds = %38, %31
  %40 = getelementptr inbounds %struct.ubifs_znode, ptr %33, i32 0, i32 4
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45, !prof !8

44:                                               ; preds = %39
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 2033) #13
  br label %45

45:                                               ; preds = %44, %39
  %46 = getelementptr inbounds %struct.ubifs_znode, ptr %33, i32 0, i32 6
  %47 = load i32, ptr %46, align 8
  %48 = icmp eq i32 %47, 0
  %49 = load i32, ptr %35, align 4
  %50 = icmp sgt i32 %49, %32
  br i1 %48, label %70, label %51

51:                                               ; preds = %45
  br i1 %50, label %52, label %64

52:                                               ; preds = %62, %51
  %53 = phi i32 [ %55, %62 ], [ %49, %51 ]
  %54 = getelementptr %struct.ubifs_znode, ptr %33, i32 0, i32 13, i32 %53
  %55 = add nsw i32 %53, -1
  %56 = getelementptr %struct.ubifs_znode, ptr %33, i32 0, i32 13, i32 %55
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %54, ptr noundef align 8 dereferenceable(24) %56, i32 24, i1 false) #13
  %57 = getelementptr %struct.ubifs_znode, ptr %33, i32 0, i32 13, i32 %53, i32 1
  %58 = load ptr, ptr %57, align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.ubifs_znode, ptr %58, i32 0, i32 8
  store i32 %53, ptr %61, align 8
  br label %62

62:                                               ; preds = %60, %52
  %63 = icmp sgt i32 %55, %32
  br i1 %63, label %52, label %64

64:                                               ; preds = %62, %51
  %65 = getelementptr inbounds %struct.ubifs_zbranch, ptr %2, i32 0, i32 1
  %66 = load ptr, ptr %65, align 8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %77, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.ubifs_znode, ptr %66, i32 0, i32 8
  store i32 %32, ptr %69, align 8
  br label %77

70:                                               ; preds = %45
  br i1 %50, label %71, label %77

71:                                               ; preds = %71, %70
  %72 = phi i32 [ %74, %71 ], [ %49, %70 ]
  %73 = getelementptr %struct.ubifs_znode, ptr %33, i32 0, i32 13, i32 %72
  %74 = add nsw i32 %72, -1
  %75 = getelementptr %struct.ubifs_znode, ptr %33, i32 0, i32 13, i32 %74
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %73, ptr noundef align 8 dereferenceable(24) %75, i32 24, i1 false) #13
  %76 = icmp sgt i32 %74, %32
  br i1 %76, label %71, label %77

77:                                               ; preds = %71, %70, %68, %64
  %78 = getelementptr %struct.ubifs_znode, ptr %33, i32 0, i32 13, i32 %32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %78, ptr noundef align 8 dereferenceable(24) %2, i32 24, i1 false) #13
  %79 = load i32, ptr %35, align 4
  %80 = add i32 %79, 1
  store i32 %80, ptr %35, align 4
  %81 = icmp eq i32 %32, 0
  br i1 %81, label %82, label %402

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.ubifs_znode, ptr %33, i32 0, i32 9
  store i32 1, ptr %83, align 4
  %84 = icmp eq ptr %34, null
  br i1 %84, label %402, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.ubifs_znode, ptr %33, i32 0, i32 8
  %87 = load i32, ptr %86, align 8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %402

89:                                               ; preds = %85
  %90 = load ptr, ptr %33, align 8
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %96, !prof !8

92:                                               ; preds = %89
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 2000) #13
  %93 = load i32, ptr %86, align 8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %96, label %95, !prof !12

95:                                               ; preds = %92
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef 2001) #13
  br label %96

96:                                               ; preds = %95, %92, %89
  %97 = getelementptr inbounds %struct.ubifs_znode, ptr %33, i32 0, i32 13
  %98 = load ptr, ptr %33, align 8
  %99 = getelementptr %struct.ubifs_znode, ptr %33, i32 1, i32 1
  br label %100

100:                                              ; preds = %120, %96
  %101 = phi ptr [ %33, %96 ], [ %116, %120 ]
  %102 = phi ptr [ %98, %96 ], [ %118, %120 ]
  %103 = getelementptr inbounds %struct.ubifs_znode, ptr %102, i32 0, i32 13
  %104 = load i32, ptr %97, align 8
  %105 = load i32, ptr %103, align 8
  %106 = icmp ult i32 %104, %105
  br i1 %106, label %114, label %107

107:                                              ; preds = %100
  %108 = icmp ugt i32 %104, %105
  br i1 %108, label %402, label %109

109:                                              ; preds = %107
  %110 = load i32, ptr %99, align 4
  %111 = getelementptr %struct.ubifs_znode, ptr %102, i32 1, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = icmp ult i32 %110, %112
  br i1 %113, label %114, label %402

114:                                              ; preds = %109, %100
  %115 = load i64, ptr %97, align 8
  store i64 %115, ptr %103, align 8
  %116 = load ptr, ptr %101, align 8
  %117 = getelementptr inbounds %struct.ubifs_znode, ptr %116, i32 0, i32 9
  store i32 1, ptr %117, align 4
  %118 = load ptr, ptr %116, align 8
  %119 = icmp eq ptr %118, null
  br i1 %119, label %402, label %120

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.ubifs_znode, ptr %116, i32 0, i32 8
  %122 = load i32, ptr %121, align 8
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %100, label %402

124:                                              ; preds = %360, %20
  %125 = phi ptr [ %17, %20 ], [ %367, %360 ]
  %126 = phi ptr [ %16, %20 ], [ %366, %360 ]
  %127 = phi ptr [ %1, %20 ], [ %126, %360 ]
  %128 = phi i32 [ %3, %20 ], [ %363, %360 ]
  %129 = phi i32 [ 0, %20 ], [ %245, %360 ]
  %130 = getelementptr inbounds %struct.ubifs_znode, ptr %127, i32 0, i32 9
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %160, label %133

133:                                              ; preds = %124
  %134 = icmp eq ptr %126, null
  br i1 %134, label %148, label %135

135:                                              ; preds = %133
  %136 = getelementptr inbounds %struct.ubifs_znode, ptr %127, i32 0, i32 8
  %137 = load i32, ptr %136, align 8
  %138 = getelementptr %struct.ubifs_znode, ptr %126, i32 0, i32 13, i32 %137, i32 4
  %139 = load i32, ptr %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %160, label %141

141:                                              ; preds = %135
  %142 = getelementptr %struct.ubifs_znode, ptr %126, i32 0, i32 13, i32 %137, i32 2
  %143 = load i32, ptr %142, align 4
  %144 = getelementptr %struct.ubifs_znode, ptr %126, i32 0, i32 13, i32 %137, i32 3
  %145 = load i32, ptr %144, align 8
  %146 = tail call fastcc i32 @insert_old_idx(ptr noundef %0, i32 noundef %143, i32 noundef %145) #13
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %156, label %160

148:                                              ; preds = %133
  %149 = load i32, ptr %21, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %160, label %151

151:                                              ; preds = %148
  %152 = load i32, ptr %22, align 4
  %153 = load i32, ptr %23, align 8
  %154 = tail call fastcc i32 @insert_old_idx(ptr noundef %0, i32 noundef %152, i32 noundef %153) #13
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %151, %141
  %157 = phi ptr [ %142, %141 ], [ %22, %151 ]
  %158 = phi ptr [ %144, %141 ], [ %23, %151 ]
  %159 = phi ptr [ %138, %141 ], [ %21, %151 ]
  store i32 0, ptr %157, align 4
  store i32 0, ptr %158, align 8
  store i32 0, ptr %159, align 4
  br label %160

160:                                              ; preds = %156, %151, %148, %141, %135, %124
  %161 = load i32, ptr %24, align 8
  %162 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %161, i32 noundef 3392) #16
  %163 = icmp eq ptr %162, null
  br i1 %163, label %402, label %164

164:                                              ; preds = %160
  store ptr %126, ptr %162, align 64
  %165 = getelementptr inbounds %struct.ubifs_znode, ptr %127, i32 0, i32 6
  %166 = load i32, ptr %165, align 8
  %167 = getelementptr inbounds %struct.ubifs_znode, ptr %162, i32 0, i32 6
  store i32 %166, ptr %167, align 32
  %168 = load i32, ptr %165, align 8
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %188

170:                                              ; preds = %164
  %171 = load i32, ptr %25, align 4
  %172 = and i32 %171, -536870912
  %173 = icmp eq i32 %172, 536870912
  br i1 %173, label %174, label %188

174:                                              ; preds = %170
  %175 = load i32, ptr %15, align 4
  %176 = icmp eq i32 %128, %175
  br i1 %176, label %177, label %193

177:                                              ; preds = %174
  %178 = add i32 %128, -1
  %179 = getelementptr %struct.ubifs_znode, ptr %127, i32 0, i32 13, i32 %178
  %180 = load i32, ptr %179, align 8
  %181 = load i32, ptr %2, align 8
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %220

183:                                              ; preds = %177
  %184 = getelementptr [2 x i32], ptr %179, i32 0, i32 1
  %185 = load i32, ptr %184, align 4
  %186 = and i32 %185, -536870912
  %187 = icmp eq i32 %186, 536870912
  br i1 %187, label %229, label %220

188:                                              ; preds = %170, %164
  %189 = icmp eq i32 %129, 0
  %190 = load i32, ptr %15, align 4
  br i1 %189, label %224, label %191

191:                                              ; preds = %188
  %192 = icmp eq i32 %128, %190
  br i1 %192, label %229, label %193

193:                                              ; preds = %191, %174
  %194 = phi i32 [ %175, %174 ], [ %190, %191 ]
  %195 = phi i32 [ %129, %174 ], [ 0, %191 ]
  %196 = add i32 %194, 1
  %197 = sdiv i32 %196, 2
  %198 = icmp slt i32 %128, %197
  br i1 %198, label %220, label %199

199:                                              ; preds = %193
  %200 = getelementptr inbounds %struct.ubifs_znode, ptr %127, i32 0, i32 13
  %201 = load i32, ptr %200, align 8
  %202 = load i32, ptr %2, align 8
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %220

204:                                              ; preds = %199
  %205 = getelementptr %struct.ubifs_znode, ptr %127, i32 1, i32 1
  %206 = load i32, ptr %205, align 4
  %207 = and i32 %206, -536870912
  %208 = icmp eq i32 %207, 536870912
  br i1 %208, label %209, label %220

209:                                              ; preds = %204
  %210 = getelementptr %struct.ubifs_znode, ptr %127, i32 0, i32 13, i32 %128
  %211 = load i32, ptr %210, align 8
  %212 = icmp eq i32 %211, %201
  br i1 %212, label %213, label %218

213:                                              ; preds = %209
  %214 = getelementptr [2 x i32], ptr %210, i32 0, i32 1
  %215 = load i32, ptr %214, align 4
  %216 = and i32 %215, -536870912
  %217 = icmp eq i32 %216, 536870912
  br i1 %217, label %220, label %218

218:                                              ; preds = %213, %209
  %219 = sub i32 %194, %128
  br label %242

220:                                              ; preds = %213, %204, %199, %193, %183, %177
  %221 = phi i32 [ %128, %177 ], [ %194, %213 ], [ %194, %204 ], [ %194, %199 ], [ %194, %193 ], [ %128, %183 ]
  %222 = phi i32 [ %129, %177 ], [ %195, %213 ], [ %195, %204 ], [ %195, %199 ], [ %195, %193 ], [ %129, %183 ]
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %220, %188
  %225 = phi i32 [ %221, %220 ], [ %190, %188 ]
  %226 = add i32 %225, 1
  %227 = sdiv i32 %226, 2
  %228 = sub i32 %225, %227
  br label %229

229:                                              ; preds = %224, %220, %191, %183
  %230 = phi i32 [ 0, %224 ], [ %222, %220 ], [ %129, %191 ], [ 1, %183 ]
  %231 = phi i32 [ %227, %224 ], [ %221, %220 ], [ %128, %191 ], [ %128, %183 ]
  %232 = phi i32 [ %228, %224 ], [ 0, %220 ], [ 0, %191 ], [ 0, %183 ]
  %233 = icmp slt i32 %128, %231
  br i1 %233, label %234, label %237

234:                                              ; preds = %229
  %235 = add i32 %232, 1
  %236 = add nsw i32 %231, -1
  br label %242

237:                                              ; preds = %229
  %238 = sub i32 %128, %231
  %239 = icmp eq i32 %166, 0
  br i1 %239, label %242, label %240

240:                                              ; preds = %237
  %241 = load ptr, ptr %26, align 8
  store ptr %162, ptr %241, align 8
  br label %242

242:                                              ; preds = %240, %237, %234, %218
  %243 = phi i32 [ %236, %234 ], [ %231, %240 ], [ %231, %237 ], [ %128, %218 ]
  %244 = phi i32 [ %235, %234 ], [ %232, %240 ], [ %232, %237 ], [ %219, %218 ]
  %245 = phi i32 [ %230, %234 ], [ %230, %240 ], [ %230, %237 ], [ %195, %218 ]
  %246 = phi ptr [ %127, %234 ], [ %162, %240 ], [ %162, %237 ], [ %127, %218 ]
  %247 = phi i32 [ %128, %234 ], [ %238, %240 ], [ %238, %237 ], [ %128, %218 ]
  %248 = getelementptr inbounds %struct.ubifs_znode, ptr %162, i32 0, i32 4
  %249 = load i32, ptr %248, align 16
  %250 = or i32 %249, 1
  store i32 %250, ptr %248, align 16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #13, !srcloc !18
  %251 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #13, !srcloc !19
  %252 = getelementptr inbounds %struct.ubifs_znode, ptr %162, i32 0, i32 7
  store i32 %244, ptr %252, align 4
  store i32 %243, ptr %125, align 4
  %253 = icmp sgt i32 %244, 0
  br i1 %253, label %254, label %271

254:                                              ; preds = %268, %242
  %255 = phi i32 [ %269, %268 ], [ 0, %242 ]
  %256 = getelementptr %struct.ubifs_znode, ptr %162, i32 0, i32 13, i32 %255
  %257 = add i32 %255, %243
  %258 = getelementptr %struct.ubifs_znode, ptr %127, i32 0, i32 13, i32 %257
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %256, ptr noundef align 8 dereferenceable(24) %258, i32 24, i1 false)
  %259 = load i32, ptr %167, align 32
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %268, label %261

261:                                              ; preds = %254
  %262 = getelementptr %struct.ubifs_znode, ptr %162, i32 0, i32 13, i32 %255, i32 1
  %263 = load ptr, ptr %262, align 8
  %264 = icmp eq ptr %263, null
  br i1 %264, label %268, label %265

265:                                              ; preds = %261
  store ptr %162, ptr %263, align 8
  %266 = load ptr, ptr %262, align 8
  %267 = getelementptr inbounds %struct.ubifs_znode, ptr %266, i32 0, i32 8
  store i32 %255, ptr %267, align 8
  br label %268

268:                                              ; preds = %265, %261, %254
  %269 = add nuw nsw i32 %255, 1
  %270 = icmp eq i32 %269, %244
  br i1 %270, label %271, label %254

271:                                              ; preds = %268, %242
  %272 = getelementptr inbounds %struct.ubifs_znode, ptr %246, i32 0, i32 4
  %273 = load volatile i32, ptr %272, align 4
  %274 = and i32 %273, 1
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %277, !prof !8

276:                                              ; preds = %271
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 2033) #13
  br label %277

277:                                              ; preds = %276, %271
  %278 = getelementptr inbounds %struct.ubifs_znode, ptr %246, i32 0, i32 6
  %279 = load i32, ptr %278, align 8
  %280 = icmp eq i32 %279, 0
  %281 = getelementptr inbounds %struct.ubifs_znode, ptr %246, i32 0, i32 7
  %282 = load i32, ptr %281, align 4
  %283 = icmp sgt i32 %282, %247
  br i1 %280, label %302, label %284

284:                                              ; preds = %277
  br i1 %283, label %285, label %297

285:                                              ; preds = %295, %284
  %286 = phi i32 [ %288, %295 ], [ %282, %284 ]
  %287 = getelementptr %struct.ubifs_znode, ptr %246, i32 0, i32 13, i32 %286
  %288 = add nsw i32 %286, -1
  %289 = getelementptr %struct.ubifs_znode, ptr %246, i32 0, i32 13, i32 %288
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %287, ptr noundef align 8 dereferenceable(24) %289, i32 24, i1 false) #13
  %290 = getelementptr %struct.ubifs_znode, ptr %246, i32 0, i32 13, i32 %286, i32 1
  %291 = load ptr, ptr %290, align 8
  %292 = icmp eq ptr %291, null
  br i1 %292, label %295, label %293

293:                                              ; preds = %285
  %294 = getelementptr inbounds %struct.ubifs_znode, ptr %291, i32 0, i32 8
  store i32 %286, ptr %294, align 8
  br label %295

295:                                              ; preds = %293, %285
  %296 = icmp sgt i32 %288, %247
  br i1 %296, label %285, label %297

297:                                              ; preds = %295, %284
  %298 = load ptr, ptr %26, align 8
  %299 = icmp eq ptr %298, null
  br i1 %299, label %309, label %300

300:                                              ; preds = %297
  %301 = getelementptr inbounds %struct.ubifs_znode, ptr %298, i32 0, i32 8
  store i32 %247, ptr %301, align 8
  br label %309

302:                                              ; preds = %277
  br i1 %283, label %303, label %309

303:                                              ; preds = %303, %302
  %304 = phi i32 [ %306, %303 ], [ %282, %302 ]
  %305 = getelementptr %struct.ubifs_znode, ptr %246, i32 0, i32 13, i32 %304
  %306 = add nsw i32 %304, -1
  %307 = getelementptr %struct.ubifs_znode, ptr %246, i32 0, i32 13, i32 %306
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %305, ptr noundef align 8 dereferenceable(24) %307, i32 24, i1 false) #13
  %308 = icmp sgt i32 %306, %247
  br i1 %308, label %303, label %309

309:                                              ; preds = %303, %302, %300, %297
  %310 = getelementptr %struct.ubifs_znode, ptr %246, i32 0, i32 13, i32 %247
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %310, ptr noundef align 8 dereferenceable(24) %2, i32 24, i1 false) #13
  %311 = load i32, ptr %281, align 4
  %312 = add i32 %311, 1
  store i32 %312, ptr %281, align 4
  %313 = icmp eq i32 %247, 0
  br i1 %313, label %314, label %316

314:                                              ; preds = %309
  %315 = getelementptr inbounds %struct.ubifs_znode, ptr %246, i32 0, i32 9
  store i32 1, ptr %315, align 4
  br label %316

316:                                              ; preds = %314, %309
  %317 = icmp eq ptr %126, null
  br i1 %317, label %371, label %318

318:                                              ; preds = %316
  %319 = icmp eq ptr %246, %127
  %320 = and i1 %319, %313
  br i1 %320, label %321, label %360

321:                                              ; preds = %318
  %322 = getelementptr inbounds %struct.ubifs_znode, ptr %127, i32 0, i32 8
  %323 = load i32, ptr %322, align 8
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %360

325:                                              ; preds = %321
  %326 = load ptr, ptr %127, align 8
  %327 = icmp eq ptr %326, null
  br i1 %327, label %328, label %332, !prof !8

328:                                              ; preds = %325
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 2000) #13
  %329 = load i32, ptr %322, align 8
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %332, label %331, !prof !12

331:                                              ; preds = %328
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef 2001) #13
  br label %332

332:                                              ; preds = %331, %328, %325
  %333 = getelementptr inbounds %struct.ubifs_znode, ptr %127, i32 0, i32 13
  %334 = load ptr, ptr %127, align 8
  %335 = getelementptr %struct.ubifs_znode, ptr %127, i32 1, i32 1
  br label %336

336:                                              ; preds = %356, %332
  %337 = phi ptr [ %127, %332 ], [ %352, %356 ]
  %338 = phi ptr [ %334, %332 ], [ %354, %356 ]
  %339 = getelementptr inbounds %struct.ubifs_znode, ptr %338, i32 0, i32 13
  %340 = load i32, ptr %333, align 8
  %341 = load i32, ptr %339, align 8
  %342 = icmp ult i32 %340, %341
  br i1 %342, label %350, label %343

343:                                              ; preds = %336
  %344 = icmp ugt i32 %340, %341
  br i1 %344, label %360, label %345

345:                                              ; preds = %343
  %346 = load i32, ptr %335, align 4
  %347 = getelementptr %struct.ubifs_znode, ptr %338, i32 1, i32 1
  %348 = load i32, ptr %347, align 4
  %349 = icmp ult i32 %346, %348
  br i1 %349, label %350, label %360

350:                                              ; preds = %345, %336
  %351 = load i64, ptr %333, align 8
  store i64 %351, ptr %339, align 8
  %352 = load ptr, ptr %337, align 8
  %353 = getelementptr inbounds %struct.ubifs_znode, ptr %352, i32 0, i32 9
  store i32 1, ptr %353, align 4
  %354 = load ptr, ptr %352, align 8
  %355 = icmp eq ptr %354, null
  br i1 %355, label %360, label %356

356:                                              ; preds = %350
  %357 = getelementptr inbounds %struct.ubifs_znode, ptr %352, i32 0, i32 8
  %358 = load i32, ptr %357, align 8
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %336, label %360

360:                                              ; preds = %356, %350, %345, %343, %321, %318
  %361 = getelementptr inbounds %struct.ubifs_znode, ptr %127, i32 0, i32 8
  %362 = load i32, ptr %361, align 8
  %363 = add i32 %362, 1
  %364 = getelementptr inbounds %struct.ubifs_znode, ptr %162, i32 0, i32 13
  %365 = load i64, ptr %364, align 64
  store i64 %365, ptr %2, align 8
  store ptr %162, ptr %26, align 8
  store i32 0, ptr %28, align 4
  store i32 0, ptr %29, align 8
  store i32 0, ptr %30, align 4
  %366 = load ptr, ptr %126, align 8
  %367 = getelementptr inbounds %struct.ubifs_znode, ptr %126, i32 0, i32 7
  %368 = load i32, ptr %367, align 4
  %369 = load i32, ptr %15, align 4
  %370 = icmp slt i32 %368, %369
  br i1 %370, label %31, label %124

371:                                              ; preds = %316
  %372 = load i32, ptr %24, align 8
  %373 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %372, i32 noundef 3392) #16
  %374 = icmp eq ptr %373, null
  br i1 %374, label %402, label %375

375:                                              ; preds = %371
  %376 = getelementptr inbounds %struct.ubifs_znode, ptr %127, i32 0, i32 6
  %377 = getelementptr inbounds %struct.ubifs_znode, ptr %373, i32 0, i32 7
  store i32 2, ptr %377, align 4
  %378 = load i32, ptr %376, align 8
  %379 = add i32 %378, 1
  %380 = getelementptr inbounds %struct.ubifs_znode, ptr %373, i32 0, i32 6
  store i32 %379, ptr %380, align 32
  %381 = getelementptr inbounds %struct.ubifs_znode, ptr %373, i32 0, i32 4
  %382 = load i32, ptr %381, align 16
  %383 = or i32 %382, 1
  store i32 %383, ptr %381, align 16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #13, !srcloc !18
  %384 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #13, !srcloc !19
  %385 = getelementptr inbounds %struct.ubifs_znode, ptr %373, i32 0, i32 13
  %386 = getelementptr inbounds %struct.ubifs_znode, ptr %127, i32 0, i32 13
  %387 = load i64, ptr %386, align 8
  store i64 %387, ptr %385, align 64
  %388 = getelementptr inbounds %struct.ubifs_znode, ptr %373, i32 1, i32 2
  store ptr %127, ptr %388, align 8
  %389 = load i32, ptr %22, align 4
  %390 = getelementptr inbounds %struct.ubifs_znode, ptr %373, i32 1, i32 3
  store i32 %389, ptr %390, align 4
  %391 = load i32, ptr %23, align 8
  %392 = getelementptr inbounds %struct.ubifs_znode, ptr %373, i32 1, i32 4
  store i32 %391, ptr %392, align 16
  %393 = load i32, ptr %21, align 4
  %394 = getelementptr inbounds %struct.ubifs_zbranch, ptr %385, i32 0, i32 4
  store i32 %393, ptr %394, align 4
  %395 = getelementptr %struct.ubifs_znode, ptr %373, i32 1, i32 5
  %396 = getelementptr inbounds %struct.ubifs_znode, ptr %162, i32 0, i32 13
  %397 = load i64, ptr %396, align 64
  store i64 %397, ptr %395, align 8
  %398 = getelementptr %struct.ubifs_znode, ptr %373, i32 1, i32 6
  store ptr %162, ptr %398, align 32
  store i32 0, ptr %22, align 4
  store i32 0, ptr %23, align 8
  store i32 0, ptr %21, align 4
  %399 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32, i32 1
  store ptr %373, ptr %399, align 8
  store ptr %373, ptr %162, align 64
  %400 = getelementptr inbounds %struct.ubifs_znode, ptr %162, i32 0, i32 8
  store i32 1, ptr %400, align 8
  store ptr %373, ptr %127, align 8
  %401 = getelementptr inbounds %struct.ubifs_znode, ptr %127, i32 0, i32 8
  store i32 0, ptr %401, align 8
  br label %402

402:                                              ; preds = %375, %371, %160, %120, %114, %109, %107, %85, %82, %77
  %403 = phi i32 [ 0, %375 ], [ 0, %85 ], [ 0, %82 ], [ -12, %371 ], [ 0, %77 ], [ 0, %107 ], [ 0, %109 ], [ 0, %114 ], [ 0, %120 ], [ -12, %160 ]
  ret i32 %403
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_check_tnc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_tnc_replace(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store i32 0, ptr %8, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  store ptr null, ptr %9, align 4, !annotation !9
  %10 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 31
  tail call void @mutex_lock(ptr noundef %10) #13
  %11 = call fastcc i32 @lookup_level0_dirty(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9, ptr noundef nonnull %8)
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %236, label %13

13:                                               ; preds = %7
  switch i32 %11, label %234 [
    i32 1, label %14
    i32 0, label %228
  ]

14:                                               ; preds = %13
  %15 = load ptr, ptr %9, align 4
  %16 = load i32, ptr %8, align 4
  %17 = getelementptr %struct.ubifs_znode, ptr %15, i32 0, i32 13, i32 %16, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %2
  br i1 %19, label %20, label %42

20:                                               ; preds = %14
  %21 = getelementptr %struct.ubifs_znode, ptr %15, i32 0, i32 13, i32 %16, i32 3
  %22 = load i32, ptr %21, align 8
  %23 = icmp eq i32 %22, %3
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = getelementptr %struct.ubifs_znode, ptr %15, i32 0, i32 13, i32 %16, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  call void @kfree(ptr noundef nonnull %26) #13
  store ptr null, ptr %25, align 8
  %29 = load i32, ptr %17, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i32 [ %2, %24 ], [ %29, %28 ]
  %32 = getelementptr %struct.ubifs_znode, ptr %15, i32 0, i32 13, i32 %16, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = call i32 @ubifs_update_one_lp(ptr noundef %0, i32 noundef %31, i32 noundef -2147483647, i32 noundef %33, i32 noundef 0, i32 noundef 0) #13
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %236

36:                                               ; preds = %30
  store i32 %4, ptr %17, align 4
  br label %231

37:                                               ; preds = %20
  %38 = getelementptr [2 x i32], ptr %1, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, -1073741824
  %41 = icmp eq i32 %40, 1073741824
  br i1 %41, label %47, label %228

42:                                               ; preds = %14
  %43 = getelementptr [2 x i32], ptr %1, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, -1073741824
  %46 = icmp eq i32 %45, 1073741824
  br i1 %46, label %47, label %228

47:                                               ; preds = %42, %37
  %48 = phi ptr [ %43, %42 ], [ %38, %37 ]
  br label %49

49:                                               ; preds = %117, %47
  %50 = phi ptr [ %15, %47 ], [ %98, %117 ]
  %51 = phi i32 [ %16, %47 ], [ %99, %117 ]
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = add nsw i32 %51, -1
  br label %97

55:                                               ; preds = %59, %49
  %56 = phi ptr [ %57, %59 ], [ %50, %49 ]
  %57 = load ptr, ptr %56, align 8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %119, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.ubifs_znode, ptr %56, i32 0, i32 8
  %61 = load i32, ptr %60, align 8
  %62 = add i32 %61, -1
  %63 = icmp sgt i32 %62, -1
  br i1 %63, label %64, label %55

64:                                               ; preds = %59
  %65 = getelementptr %struct.ubifs_znode, ptr %57, i32 0, i32 13, i32 %62, i32 1
  %66 = load ptr, ptr %65, align 8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = getelementptr %struct.ubifs_znode, ptr %57, i32 0, i32 13, i32 %62
  %70 = call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %69, ptr noundef nonnull %57, i32 noundef %62) #13
  br label %71

71:                                               ; preds = %68, %64
  %72 = phi ptr [ %70, %68 ], [ %66, %64 ]
  %73 = icmp ugt ptr %72, inttoptr (i32 -4096 to ptr)
  br i1 %73, label %92, label %74

74:                                               ; preds = %89, %71
  %75 = phi ptr [ %90, %89 ], [ %72, %71 ]
  %76 = getelementptr inbounds %struct.ubifs_znode, ptr %75, i32 0, i32 6
  %77 = load i32, ptr %76, align 8
  %78 = icmp eq i32 %77, 0
  %79 = getelementptr inbounds %struct.ubifs_znode, ptr %75, i32 0, i32 7
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, -1
  br i1 %78, label %97, label %82

82:                                               ; preds = %74
  %83 = getelementptr %struct.ubifs_znode, ptr %75, i32 0, i32 13, i32 %81, i32 1
  %84 = load ptr, ptr %83, align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = getelementptr %struct.ubifs_znode, ptr %75, i32 0, i32 13, i32 %81
  %88 = call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %87, ptr noundef %75, i32 noundef %81) #13
  br label %89

89:                                               ; preds = %86, %82
  %90 = phi ptr [ %88, %86 ], [ %84, %82 ]
  %91 = icmp ugt ptr %90, inttoptr (i32 -4096 to ptr)
  br i1 %91, label %92, label %74

92:                                               ; preds = %89, %71
  %93 = phi ptr [ %72, %71 ], [ %90, %89 ]
  %94 = icmp eq ptr %93, inttoptr (i32 -2 to ptr)
  br i1 %94, label %119, label %95

95:                                               ; preds = %92
  %96 = icmp slt ptr %93, null
  br i1 %96, label %190, label %97

97:                                               ; preds = %95, %74, %53
  %98 = phi ptr [ %50, %95 ], [ %50, %53 ], [ %75, %74 ]
  %99 = phi i32 [ %51, %95 ], [ %54, %53 ], [ %81, %74 ]
  %100 = getelementptr %struct.ubifs_znode, ptr %98, i32 0, i32 13, i32 %99
  %101 = load i32, ptr %100, align 8
  %102 = load i32, ptr %1, align 8
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %97
  %105 = getelementptr [2 x i32], ptr %100, i32 0, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = load i32, ptr %48, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %104
  %110 = getelementptr %struct.ubifs_znode, ptr %98, i32 0, i32 13, i32 %99, i32 2
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, %2
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = getelementptr %struct.ubifs_znode, ptr %98, i32 0, i32 13, i32 %99, i32 3
  %115 = load i32, ptr %114, align 8
  %116 = icmp eq i32 %115, %3
  br i1 %116, label %118, label %117

117:                                              ; preds = %113, %109
  br label %49

118:                                              ; preds = %113
  store ptr %98, ptr %9, align 4
  store i32 %99, ptr %8, align 4
  br label %197

119:                                              ; preds = %104, %97, %92, %55
  %120 = load i32, ptr %8, align 4
  br label %121

121:                                              ; preds = %189, %119
  %122 = phi ptr [ %15, %119 ], [ %170, %189 ]
  %123 = phi i32 [ %120, %119 ], [ %171, %189 ]
  %124 = add i32 %123, 1
  %125 = getelementptr inbounds %struct.ubifs_znode, ptr %122, i32 0, i32 7
  %126 = load i32, ptr %125, align 4
  %127 = icmp slt i32 %124, %126
  br i1 %127, label %169, label %128

128:                                              ; preds = %132, %121
  %129 = phi ptr [ %130, %132 ], [ %122, %121 ]
  %130 = load ptr, ptr %129, align 8
  %131 = icmp eq ptr %130, null
  br i1 %131, label %228, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.ubifs_znode, ptr %129, i32 0, i32 8
  %134 = load i32, ptr %133, align 8
  %135 = add i32 %134, 1
  %136 = getelementptr inbounds %struct.ubifs_znode, ptr %130, i32 0, i32 7
  %137 = load i32, ptr %136, align 4
  %138 = icmp slt i32 %135, %137
  br i1 %138, label %139, label %128

139:                                              ; preds = %132
  %140 = getelementptr %struct.ubifs_znode, ptr %130, i32 0, i32 13, i32 %135, i32 1
  %141 = load ptr, ptr %140, align 8
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = getelementptr %struct.ubifs_znode, ptr %130, i32 0, i32 13, i32 %135
  %145 = call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %144, ptr noundef nonnull %130, i32 noundef %135) #13
  br label %146

146:                                              ; preds = %143, %139
  %147 = phi ptr [ %145, %143 ], [ %141, %139 ]
  %148 = icmp ugt ptr %147, inttoptr (i32 -4096 to ptr)
  br i1 %148, label %164, label %149

149:                                              ; preds = %161, %146
  %150 = phi ptr [ %162, %161 ], [ %147, %146 ]
  %151 = getelementptr inbounds %struct.ubifs_znode, ptr %150, i32 0, i32 6
  %152 = load i32, ptr %151, align 8
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %169, label %154

154:                                              ; preds = %149
  %155 = getelementptr %struct.ubifs_znode, ptr %150, i32 0, i32 13, i32 0, i32 1
  %156 = load ptr, ptr %155, align 8
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = getelementptr %struct.ubifs_znode, ptr %150, i32 0, i32 13, i32 0
  %160 = call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %159, ptr noundef %150, i32 noundef 0) #13
  br label %161

161:                                              ; preds = %158, %154
  %162 = phi ptr [ %160, %158 ], [ %156, %154 ]
  %163 = icmp ugt ptr %162, inttoptr (i32 -4096 to ptr)
  br i1 %163, label %164, label %149

164:                                              ; preds = %161, %146
  %165 = phi ptr [ %147, %146 ], [ %162, %161 ]
  %166 = icmp eq ptr %165, inttoptr (i32 -2 to ptr)
  br i1 %166, label %228, label %167

167:                                              ; preds = %164
  %168 = icmp slt ptr %165, null
  br i1 %168, label %190, label %169

169:                                              ; preds = %167, %149, %121
  %170 = phi ptr [ %122, %167 ], [ %122, %121 ], [ %150, %149 ]
  %171 = phi i32 [ %123, %167 ], [ %124, %121 ], [ 0, %149 ]
  %172 = getelementptr %struct.ubifs_znode, ptr %170, i32 0, i32 13, i32 %171
  %173 = load i32, ptr %172, align 8
  %174 = load i32, ptr %1, align 8
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %228

176:                                              ; preds = %169
  %177 = getelementptr [2 x i32], ptr %172, i32 0, i32 1
  %178 = load i32, ptr %177, align 4
  %179 = load i32, ptr %48, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %228

181:                                              ; preds = %176
  store ptr %170, ptr %9, align 4
  store i32 %171, ptr %8, align 4
  %182 = getelementptr %struct.ubifs_znode, ptr %170, i32 0, i32 13, i32 %171, i32 2
  %183 = load i32, ptr %182, align 4
  %184 = icmp eq i32 %183, %2
  br i1 %184, label %185, label %189

185:                                              ; preds = %181
  %186 = getelementptr %struct.ubifs_znode, ptr %170, i32 0, i32 13, i32 %171, i32 3
  %187 = load i32, ptr %186, align 8
  %188 = icmp eq i32 %187, %3
  br i1 %188, label %197, label %189

189:                                              ; preds = %185, %181
  br label %121

190:                                              ; preds = %167, %95
  %191 = phi ptr [ %122, %167 ], [ %15, %95 ]
  %192 = phi ptr [ %165, %167 ], [ %93, %95 ]
  %193 = ptrtoint ptr %192 to i32
  %194 = icmp slt ptr %192, null
  br i1 %194, label %236, label %195

195:                                              ; preds = %190
  %196 = icmp eq ptr %192, null
  br i1 %196, label %228, label %197

197:                                              ; preds = %195, %185, %118
  %198 = phi ptr [ %98, %118 ], [ %191, %195 ], [ %170, %185 ]
  %199 = getelementptr inbounds %struct.ubifs_znode, ptr %198, i32 0, i32 1
  %200 = load ptr, ptr %199, align 4
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %207

202:                                              ; preds = %197
  %203 = getelementptr inbounds %struct.ubifs_znode, ptr %198, i32 0, i32 4
  %204 = load volatile i32, ptr %203, align 4
  %205 = and i32 %204, 1
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %202, %197
  %208 = call fastcc ptr @dirty_cow_bottom_up(ptr noundef %0, ptr noundef %198)
  store ptr %208, ptr %9, align 4
  %209 = icmp ugt ptr %208, inttoptr (i32 -4096 to ptr)
  br i1 %209, label %210, label %212

210:                                              ; preds = %207
  %211 = ptrtoint ptr %208 to i32
  br label %236

212:                                              ; preds = %207, %202
  %213 = phi ptr [ %208, %207 ], [ %198, %202 ]
  %214 = load i32, ptr %8, align 4
  %215 = getelementptr %struct.ubifs_znode, ptr %213, i32 0, i32 13, i32 %214, i32 1
  %216 = load ptr, ptr %215, align 8
  %217 = icmp eq ptr %216, null
  br i1 %217, label %219, label %218

218:                                              ; preds = %212
  call void @kfree(ptr noundef nonnull %216) #13
  store ptr null, ptr %215, align 8
  br label %219

219:                                              ; preds = %218, %212
  %220 = getelementptr %struct.ubifs_znode, ptr %213, i32 0, i32 13, i32 %214, i32 2
  %221 = load i32, ptr %220, align 4
  %222 = getelementptr %struct.ubifs_znode, ptr %213, i32 0, i32 13, i32 %214, i32 4
  %223 = load i32, ptr %222, align 4
  %224 = call i32 @ubifs_update_one_lp(ptr noundef %0, i32 noundef %221, i32 noundef -2147483647, i32 noundef %223, i32 noundef 0, i32 noundef 0) #13
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %236

226:                                              ; preds = %219
  store i32 %4, ptr %220, align 4
  %227 = getelementptr %struct.ubifs_znode, ptr %213, i32 0, i32 13, i32 %214, i32 3
  br label %231

228:                                              ; preds = %195, %176, %169, %164, %128, %42, %37, %13
  %229 = call i32 @ubifs_update_one_lp(ptr noundef %0, i32 noundef %4, i32 noundef -2147483647, i32 noundef %6, i32 noundef 0, i32 noundef 0) #13
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %234, label %236

231:                                              ; preds = %226, %36
  %232 = phi ptr [ %21, %36 ], [ %227, %226 ]
  %233 = phi ptr [ %32, %36 ], [ %222, %226 ]
  store i32 %5, ptr %232, align 8
  store i32 %6, ptr %233, align 4
  br label %234

234:                                              ; preds = %231, %228, %13
  %235 = call i32 @dbg_check_tnc(ptr noundef %0, i32 noundef 0) #13
  br label %236

236:                                              ; preds = %234, %228, %219, %210, %190, %30, %7
  %237 = phi i32 [ %229, %228 ], [ %235, %234 ], [ %11, %7 ], [ %211, %210 ], [ %34, %30 ], [ %193, %190 ], [ %224, %219 ]
  call void @mutex_unlock(ptr noundef %10) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  ret i32 %237
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @dirty_cow_bottom_up(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 45
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %2
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 1095) #13
  br label %10

10:                                               ; preds = %9, %2
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %10
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1096) #13
  br label %13

13:                                               ; preds = %12, %10
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds %struct.ubifs_znode, ptr %14, i32 0, i32 6
  %16 = load i32, ptr %15, align 8
  %17 = icmp sgt i32 %16, 64
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = load ptr, ptr %3, align 8
  tail call void @kfree(ptr noundef %19) #13
  %20 = load ptr, ptr %6, align 8
  %21 = getelementptr inbounds %struct.ubifs_znode, ptr %20, i32 0, i32 6
  %22 = load i32, ptr %21, align 8
  %23 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %22, i32 4) #13
  %24 = extractvalue { i32, i1 } %23, 1
  br i1 %24, label %25, label %26, !prof !8

25:                                               ; preds = %18
  store ptr null, ptr %3, align 8
  br label %122

26:                                               ; preds = %18
  %27 = extractvalue { i32, i1 } %23, 0
  %28 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %27, i32 noundef 3136) #16
  store ptr %28, ptr %3, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %122, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %6, align 8
  br label %32

32:                                               ; preds = %30, %13
  %33 = phi ptr [ %14, %13 ], [ %31, %30 ]
  %34 = phi ptr [ %4, %13 ], [ %28, %30 ]
  %35 = getelementptr inbounds %struct.ubifs_znode, ptr %33, i32 0, i32 6
  %36 = load i32, ptr %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %64, %59, %41, %32
  %39 = phi ptr [ %1, %41 ], [ %1, %32 ], [ %48, %59 ], [ %46, %64 ]
  %40 = phi i32 [ 0, %41 ], [ 0, %32 ], [ %54, %59 ], [ %54, %64 ]
  br label %71

41:                                               ; preds = %32
  %42 = load ptr, ptr %1, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %38, label %44

44:                                               ; preds = %67, %41
  %45 = phi i32 [ %70, %67 ], [ %36, %41 ]
  %46 = phi ptr [ %65, %67 ], [ %42, %41 ]
  %47 = phi i32 [ %54, %67 ], [ 0, %41 ]
  %48 = phi ptr [ %46, %67 ], [ %1, %41 ]
  %49 = getelementptr inbounds %struct.ubifs_znode, ptr %48, i32 0, i32 8
  %50 = load i32, ptr %49, align 8
  %51 = icmp slt i32 %47, %45
  br i1 %51, label %53, label %52, !prof !12

52:                                               ; preds = %44
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, i32 noundef 1115) #13
  br label %53

53:                                               ; preds = %52, %44
  %54 = add i32 %47, 1
  %55 = getelementptr i32, ptr %34, i32 %47
  store i32 %50, ptr %55, align 4
  %56 = getelementptr inbounds %struct.ubifs_znode, ptr %46, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.ubifs_znode, ptr %48, i32 0, i32 4
  %61 = load volatile i32, ptr %60, align 4
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %38

64:                                               ; preds = %59, %53
  %65 = load ptr, ptr %46, align 8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %38, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr %6, align 8
  %69 = getelementptr inbounds %struct.ubifs_znode, ptr %68, i32 0, i32 6
  %70 = load i32, ptr %69, align 8
  br label %44

71:                                               ; preds = %118, %38
  %72 = phi ptr [ %121, %118 ], [ %39, %38 ]
  %73 = phi i32 [ %99, %118 ], [ %40, %38 ]
  %74 = load ptr, ptr %72, align 8
  %75 = icmp eq ptr %74, null
  br i1 %75, label %93, label %76

76:                                               ; preds = %71
  %77 = add i32 %73, -1
  %78 = getelementptr i32, ptr %34, i32 %77
  %79 = load i32, ptr %78, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83, !prof !8

81:                                               ; preds = %76
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 1129) #13
  %82 = load i32, ptr %78, align 4
  br label %83

83:                                               ; preds = %81, %76
  %84 = phi i32 [ %79, %76 ], [ %82, %81 ]
  %85 = getelementptr inbounds %struct.ubifs_znode, ptr %74, i32 0, i32 7
  %86 = load i32, ptr %85, align 4
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %90, label %88, !prof !12

88:                                               ; preds = %83
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef 1130) #13
  %89 = load i32, ptr %78, align 4
  br label %90

90:                                               ; preds = %88, %83
  %91 = phi i32 [ %89, %88 ], [ %84, %83 ]
  %92 = getelementptr %struct.ubifs_znode, ptr %74, i32 0, i32 13, i32 %91
  br label %97

93:                                               ; preds = %71
  %94 = load ptr, ptr %6, align 8
  %95 = icmp eq ptr %72, %94
  br i1 %95, label %97, label %96, !prof !12

96:                                               ; preds = %93
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 1134) #13
  br label %97

97:                                               ; preds = %96, %93, %90
  %98 = phi ptr [ %92, %90 ], [ %5, %96 ], [ %5, %93 ]
  %99 = phi i32 [ %77, %90 ], [ %73, %96 ], [ %73, %93 ]
  %100 = tail call fastcc ptr @dirty_cow_znode(ptr noundef %0, ptr noundef %98)
  %101 = icmp ule ptr %100, inttoptr (i32 -4096 to ptr)
  %102 = icmp ne i32 %99, 0
  %103 = select i1 %101, i1 %102, i1 false
  br i1 %103, label %104, label %122

104:                                              ; preds = %97
  %105 = add i32 %99, -1
  %106 = getelementptr i32, ptr %34, i32 %105
  %107 = load i32, ptr %106, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111, !prof !8

109:                                              ; preds = %104
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 1139) #13
  %110 = load i32, ptr %106, align 4
  br label %111

111:                                              ; preds = %109, %104
  %112 = phi i32 [ %107, %104 ], [ %110, %109 ]
  %113 = getelementptr inbounds %struct.ubifs_znode, ptr %100, i32 0, i32 7
  %114 = load i32, ptr %113, align 4
  %115 = icmp slt i32 %112, %114
  br i1 %115, label %118, label %116, !prof !12

116:                                              ; preds = %111
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1, i32 noundef 1140) #13
  %117 = load i32, ptr %106, align 4
  br label %118

118:                                              ; preds = %116, %111
  %119 = phi i32 [ %112, %111 ], [ %117, %116 ]
  %120 = getelementptr %struct.ubifs_znode, ptr %100, i32 0, i32 13, i32 %119, i32 1
  %121 = load ptr, ptr %120, align 8
  br label %71

122:                                              ; preds = %97, %26, %25
  %123 = phi ptr [ inttoptr (i32 -12 to ptr), %25 ], [ inttoptr (i32 -12 to ptr), %26 ], [ %100, %97 ]
  ret ptr %123
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_tnc_add_nm(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readnone %5, ptr nocapture noundef readonly %6) local_unnamed_addr #0 {
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca %struct.ubifs_zbranch, align 8
  %11 = alloca %struct.fscrypt_name, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store i32 0, ptr %8, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  store ptr null, ptr %9, align 4, !annotation !9
  %12 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 31
  tail call void @mutex_lock(ptr noundef %12) #13
  %13 = call fastcc i32 @lookup_level0_dirty(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9, ptr noundef nonnull %8)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %92, label %15

15:                                               ; preds = %7
  %16 = icmp eq i32 %13, 1
  br i1 %16, label %17, label %60

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 186
  %19 = load i8, ptr %18, align 4
  %20 = and i8 %19, 4
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = call fastcc i32 @fallible_resolve_collision(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef %6, i32 noundef 1)
  br label %26

24:                                               ; preds = %17
  %25 = call fastcc i32 @resolve_collision(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef %6)
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %92, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %9, align 4
  %31 = getelementptr inbounds %struct.ubifs_znode, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.ubifs_znode, ptr %30, i32 0, i32 4
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34, %29
  %40 = call fastcc ptr @dirty_cow_bottom_up(ptr noundef %0, ptr noundef %30)
  store ptr %40, ptr %9, align 4
  %41 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = ptrtoint ptr %40 to i32
  br label %87

44:                                               ; preds = %39, %34
  %45 = phi ptr [ %40, %39 ], [ %30, %34 ]
  %46 = icmp eq i32 %27, 1
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = load i32, ptr %8, align 4
  %49 = getelementptr %struct.ubifs_znode, ptr %45, i32 0, i32 13, i32 %48, i32 1
  %50 = load ptr, ptr %49, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  call void @kfree(ptr noundef nonnull %50) #13
  store ptr null, ptr %49, align 8
  br label %53

53:                                               ; preds = %52, %47
  %54 = getelementptr %struct.ubifs_znode, ptr %45, i32 0, i32 13, i32 %48, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr %struct.ubifs_znode, ptr %45, i32 0, i32 13, i32 %48, i32 4
  %57 = load i32, ptr %56, align 4
  %58 = call i32 @ubifs_update_one_lp(ptr noundef %0, i32 noundef %55, i32 noundef -2147483647, i32 noundef %57, i32 noundef 0, i32 noundef 0) #13
  store i32 %2, ptr %54, align 4
  %59 = getelementptr %struct.ubifs_znode, ptr %45, i32 0, i32 13, i32 %48, i32 3
  store i32 %3, ptr %59, align 8
  store i32 %4, ptr %56, align 4
  br label %87

60:                                               ; preds = %44, %15
  %61 = phi i32 [ %27, %44 ], [ %13, %15 ]
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %90

63:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #13
  %64 = getelementptr inbounds %struct.ubifs_zbranch, ptr %10, i32 0, i32 2
  %65 = getelementptr inbounds i8, ptr %10, i32 8
  store i64 0, ptr %65, align 8
  store i32 %2, ptr %64, align 4
  %66 = getelementptr inbounds %struct.ubifs_zbranch, ptr %10, i32 0, i32 3
  store i32 %3, ptr %66, align 8
  %67 = getelementptr inbounds %struct.ubifs_zbranch, ptr %10, i32 0, i32 4
  store i32 %4, ptr %67, align 4
  %68 = load i64, ptr %1, align 8
  store i64 %68, ptr %10, align 8
  %69 = load ptr, ptr %9, align 4
  %70 = load i32, ptr %8, align 4
  %71 = add i32 %70, 1
  %72 = call fastcc i32 @tnc_insert(ptr noundef %0, ptr noundef %69, ptr noundef nonnull %10, i32 noundef %71)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %63
  %75 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 186
  %76 = load i8, ptr %75, align 4
  %77 = and i8 %76, 4
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %11, ptr noundef nonnull align 4 dereferenceable(32) @__const.ubifs_tnc_add_nm.noname, i32 32, i1 false)
  %80 = call i32 @dbg_check_tnc(ptr noundef %0, i32 noundef 0) #13
  call void @mutex_unlock(ptr noundef %12) #13
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = call i32 @ubifs_tnc_remove_nm(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11)
  br label %85

84:                                               ; preds = %74, %63
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #13
  br label %87

85:                                               ; preds = %82, %79
  %86 = phi i32 [ %83, %82 ], [ %80, %79 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #13
  br label %94

87:                                               ; preds = %84, %53, %42
  %88 = phi i32 [ %43, %42 ], [ %58, %53 ], [ %72, %84 ]
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87, %60
  %91 = call i32 @dbg_check_tnc(ptr noundef %0, i32 noundef 0) #13
  br label %92

92:                                               ; preds = %90, %87, %26, %7
  %93 = phi i32 [ %88, %87 ], [ %91, %90 ], [ %27, %26 ], [ %13, %7 ]
  call void @mutex_unlock(ptr noundef %12) #13
  br label %94

94:                                               ; preds = %92, %85
  %95 = phi i32 [ %93, %92 ], [ %86, %85 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fallible_resolve_collision(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) unnamed_addr #0 {
  %7 = load ptr, ptr %2, align 4
  %8 = load i32, ptr %3, align 4
  %9 = getelementptr %struct.ubifs_znode, ptr %7, i32 0, i32 13, i32 %8
  %10 = tail call fastcc i32 @fallible_matches_name(ptr noundef %0, ptr noundef %9, ptr noundef %4)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %205, label %12, !prof !8

12:                                               ; preds = %6
  switch i32 %10, label %13 [
    i32 1, label %205
    i32 3, label %18
  ]

13:                                               ; preds = %12
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i32
  %16 = icmp eq i32 %10, 2
  %17 = or i1 %16, %14
  br i1 %17, label %18, label %116

18:                                               ; preds = %13, %12
  %19 = phi i32 [ %15, %13 ], [ 1, %12 ]
  %20 = phi i32 [ 0, %13 ], [ %8, %12 ]
  %21 = phi ptr [ null, %13 ], [ %7, %12 ]
  %22 = getelementptr [2 x i32], ptr %1, i32 0, i32 1
  %23 = icmp eq i32 %5, 0
  br label %24

24:                                               ; preds = %109, %18
  %25 = phi ptr [ %21, %18 ], [ %110, %109 ]
  %26 = phi i32 [ %20, %18 ], [ %111, %109 ]
  %27 = phi i32 [ %19, %18 ], [ %29, %109 ]
  br label %28

28:                                               ; preds = %113, %24
  %29 = phi i32 [ %27, %24 ], [ 0, %113 ]
  br label %30

30:                                               ; preds = %112, %28
  %31 = tail call fastcc i32 @tnc_prev(ptr noundef %0, ptr noundef %2, ptr noundef %3)
  %32 = icmp eq i32 %31, -2
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, ptr %3, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %115, label %36, !prof !12

36:                                               ; preds = %33
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1, i32 noundef 918) #13
  br label %115

37:                                               ; preds = %30
  %38 = icmp slt i32 %31, 0
  br i1 %38, label %205, label %39

39:                                               ; preds = %37
  %40 = load ptr, ptr %2, align 4
  %41 = load i32, ptr %3, align 4
  %42 = getelementptr %struct.ubifs_znode, ptr %40, i32 0, i32 13, i32 %41
  %43 = load i32, ptr %42, align 8
  %44 = load i32, ptr %1, align 8
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = getelementptr [2 x i32], ptr %42, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = load i32, ptr %22, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %105, label %51

51:                                               ; preds = %46, %39
  %52 = getelementptr inbounds %struct.ubifs_znode, ptr %40, i32 0, i32 7
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, -1
  %55 = icmp eq i32 %41, %54
  br i1 %55, label %56, label %116

56:                                               ; preds = %51
  %57 = add i32 %41, 1
  %58 = icmp slt i32 %57, %53
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  store i32 %57, ptr %3, align 4
  %60 = icmp eq i32 %57, 0
  br i1 %60, label %115, label %104, !prof !12

61:                                               ; preds = %66, %56
  %62 = phi ptr [ %63, %66 ], [ %40, %56 ]
  %63 = load ptr, ptr %62, align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 930) #13
  br label %103

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.ubifs_znode, ptr %62, i32 0, i32 8
  %68 = load i32, ptr %67, align 8
  %69 = add i32 %68, 1
  %70 = getelementptr inbounds %struct.ubifs_znode, ptr %63, i32 0, i32 7
  %71 = load i32, ptr %70, align 4
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %61

73:                                               ; preds = %66
  %74 = getelementptr %struct.ubifs_znode, ptr %63, i32 0, i32 13, i32 %69, i32 1
  %75 = load ptr, ptr %74, align 8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = getelementptr %struct.ubifs_znode, ptr %63, i32 0, i32 13, i32 %69
  %79 = tail call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %78, ptr noundef nonnull %63, i32 noundef %69) #13
  br label %80

80:                                               ; preds = %77, %73
  %81 = phi ptr [ %79, %77 ], [ %75, %73 ]
  %82 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  br i1 %82, label %99, label %83

83:                                               ; preds = %95, %80
  %84 = phi ptr [ %96, %95 ], [ %81, %80 ]
  %85 = getelementptr inbounds %struct.ubifs_znode, ptr %84, i32 0, i32 6
  %86 = load i32, ptr %85, align 8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %83
  %89 = getelementptr %struct.ubifs_znode, ptr %84, i32 0, i32 13, i32 0, i32 1
  %90 = load ptr, ptr %89, align 8
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = getelementptr %struct.ubifs_znode, ptr %84, i32 0, i32 13, i32 0
  %94 = tail call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %93, ptr noundef %84, i32 noundef 0) #13
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi ptr [ %94, %92 ], [ %90, %88 ]
  %97 = icmp ugt ptr %96, inttoptr (i32 -4096 to ptr)
  br i1 %97, label %99, label %83

98:                                               ; preds = %83
  store ptr %84, ptr %2, align 4
  br label %115

99:                                               ; preds = %95, %80
  %100 = phi ptr [ %81, %80 ], [ %96, %95 ]
  %101 = ptrtoint ptr %100 to i32
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 930) #13
  %102 = icmp eq ptr %100, inttoptr (i32 -2 to ptr)
  br i1 %102, label %103, label %205

103:                                              ; preds = %99, %65
  br label %205

104:                                              ; preds = %59
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1, i32 noundef 935) #13
  br label %115

105:                                              ; preds = %46
  %106 = tail call fastcc i32 @fallible_matches_name(ptr noundef %0, ptr noundef %42, ptr noundef %4)
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %205, label %108

108:                                              ; preds = %105
  switch i32 %106, label %112 [
    i32 1, label %205
    i32 3, label %109
  ]

109:                                              ; preds = %108
  %110 = load ptr, ptr %2, align 4
  %111 = load i32, ptr %3, align 4
  br label %24

112:                                              ; preds = %108
  br i1 %23, label %30, label %113

113:                                              ; preds = %112
  %114 = icmp eq i32 %106, 0
  br i1 %114, label %116, label %28

115:                                              ; preds = %104, %98, %59, %36, %33
  store i32 -1, ptr %3, align 4
  br label %116

116:                                              ; preds = %115, %113, %51, %13
  %117 = phi ptr [ %25, %51 ], [ null, %13 ], [ %25, %115 ], [ %25, %113 ]
  %118 = phi i32 [ %26, %51 ], [ 0, %13 ], [ %26, %115 ], [ %26, %113 ]
  %119 = phi i32 [ %29, %51 ], [ 0, %13 ], [ %29, %115 ], [ %29, %113 ]
  %120 = icmp eq i32 %10, 0
  %121 = icmp ne i32 %119, 0
  %122 = select i1 %120, i1 true, i1 %121
  br i1 %122, label %123, label %196

123:                                              ; preds = %116
  store ptr %7, ptr %2, align 4
  store i32 %8, ptr %3, align 4
  %124 = getelementptr [2 x i32], ptr %1, i32 0, i32 1
  br label %125

125:                                              ; preds = %195, %123
  %126 = phi ptr [ %7, %123 ], [ %179, %195 ]
  %127 = phi i32 [ %8, %123 ], [ %180, %195 ]
  %128 = phi ptr [ %117, %123 ], [ %179, %195 ]
  %129 = phi i32 [ %118, %123 ], [ %180, %195 ]
  br label %130

130:                                              ; preds = %195, %125
  %131 = phi ptr [ %179, %195 ], [ %126, %125 ]
  %132 = phi i32 [ %180, %195 ], [ %127, %125 ]
  %133 = add i32 %132, 1
  %134 = getelementptr inbounds %struct.ubifs_znode, ptr %131, i32 0, i32 7
  %135 = load i32, ptr %134, align 4
  %136 = icmp slt i32 %133, %135
  br i1 %136, label %178, label %137

137:                                              ; preds = %141, %130
  %138 = phi ptr [ %139, %141 ], [ %131, %130 ]
  %139 = load ptr, ptr %138, align 8
  %140 = icmp eq ptr %139, null
  br i1 %140, label %196, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.ubifs_znode, ptr %138, i32 0, i32 8
  %143 = load i32, ptr %142, align 8
  %144 = add i32 %143, 1
  %145 = getelementptr inbounds %struct.ubifs_znode, ptr %139, i32 0, i32 7
  %146 = load i32, ptr %145, align 4
  %147 = icmp slt i32 %144, %146
  br i1 %147, label %148, label %137

148:                                              ; preds = %141
  %149 = getelementptr %struct.ubifs_znode, ptr %139, i32 0, i32 13, i32 %144, i32 1
  %150 = load ptr, ptr %149, align 8
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = getelementptr %struct.ubifs_znode, ptr %139, i32 0, i32 13, i32 %144
  %154 = tail call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %153, ptr noundef nonnull %139, i32 noundef %144) #13
  br label %155

155:                                              ; preds = %152, %148
  %156 = phi ptr [ %154, %152 ], [ %150, %148 ]
  %157 = icmp ugt ptr %156, inttoptr (i32 -4096 to ptr)
  br i1 %157, label %173, label %158

158:                                              ; preds = %170, %155
  %159 = phi ptr [ %171, %170 ], [ %156, %155 ]
  %160 = getelementptr inbounds %struct.ubifs_znode, ptr %159, i32 0, i32 6
  %161 = load i32, ptr %160, align 8
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %178, label %163

163:                                              ; preds = %158
  %164 = getelementptr %struct.ubifs_znode, ptr %159, i32 0, i32 13, i32 0, i32 1
  %165 = load ptr, ptr %164, align 8
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = getelementptr %struct.ubifs_znode, ptr %159, i32 0, i32 13, i32 0
  %169 = tail call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %168, ptr noundef %159, i32 noundef 0) #13
  br label %170

170:                                              ; preds = %167, %163
  %171 = phi ptr [ %169, %167 ], [ %165, %163 ]
  %172 = icmp ugt ptr %171, inttoptr (i32 -4096 to ptr)
  br i1 %172, label %173, label %158

173:                                              ; preds = %170, %155
  %174 = phi ptr [ %156, %155 ], [ %171, %170 ]
  %175 = icmp eq ptr %174, inttoptr (i32 -2 to ptr)
  br i1 %175, label %196, label %176

176:                                              ; preds = %173
  %177 = icmp slt ptr %174, null
  br i1 %177, label %203, label %178

178:                                              ; preds = %176, %158, %130
  %179 = phi ptr [ %131, %176 ], [ %131, %130 ], [ %159, %158 ]
  %180 = phi i32 [ %132, %176 ], [ %133, %130 ], [ 0, %158 ]
  %181 = getelementptr %struct.ubifs_znode, ptr %179, i32 0, i32 13, i32 %180
  %182 = load i32, ptr %181, align 8
  %183 = load i32, ptr %1, align 8
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %196

185:                                              ; preds = %178
  %186 = getelementptr [2 x i32], ptr %181, i32 0, i32 1
  %187 = load i32, ptr %186, align 4
  %188 = load i32, ptr %124, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %196

190:                                              ; preds = %185
  %191 = tail call fastcc i32 @fallible_matches_name(ptr noundef %0, ptr noundef %181, ptr noundef %4)
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %205, label %193

193:                                              ; preds = %190
  %194 = icmp eq i32 %191, 2
  br i1 %194, label %196, label %195

195:                                              ; preds = %193
  store ptr %179, ptr %2, align 4
  store i32 %180, ptr %3, align 4
  switch i32 %191, label %130 [
    i32 1, label %205
    i32 3, label %125
  ]

196:                                              ; preds = %193, %185, %178, %173, %137, %116
  %197 = phi ptr [ %117, %116 ], [ %128, %137 ], [ %128, %193 ], [ %128, %173 ], [ %128, %178 ], [ %128, %185 ]
  %198 = phi i32 [ %118, %116 ], [ %129, %137 ], [ %129, %193 ], [ %129, %173 ], [ %129, %178 ], [ %129, %185 ]
  %199 = icmp eq i32 %5, 0
  %200 = icmp ne ptr %197, null
  %201 = select i1 %199, i1 %200, i1 false
  br i1 %201, label %202, label %205

202:                                              ; preds = %196
  store ptr %197, ptr %2, align 4
  store i32 %198, ptr %3, align 4
  br label %205

203:                                              ; preds = %176
  %204 = ptrtoint ptr %174 to i32
  br label %205

205:                                              ; preds = %203, %202, %196, %195, %190, %108, %105, %103, %99, %37, %12, %6
  %206 = phi i32 [ 1, %202 ], [ %10, %6 ], [ %10, %12 ], [ 0, %196 ], [ -22, %103 ], [ %101, %99 ], [ %204, %203 ], [ %191, %195 ], [ %191, %190 ], [ %106, %108 ], [ %106, %105 ], [ %31, %37 ]
  ret i32 %206
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @resolve_collision(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = load ptr, ptr %2, align 4
  %7 = load i32, ptr %3, align 4
  %8 = getelementptr %struct.ubifs_znode, ptr %6, i32 0, i32 13, i32 %7
  %9 = tail call fastcc i32 @matches_name(ptr noundef %0, ptr noundef %8, ptr noundef %4)
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %137, label %11, !prof !8

11:                                               ; preds = %5
  switch i32 %9, label %61 [
    i32 1, label %137
    i32 2, label %12
  ]

12:                                               ; preds = %11
  %13 = tail call fastcc i32 @tnc_prev(ptr noundef %0, ptr noundef %2, ptr noundef %3)
  %14 = icmp eq i32 %13, -2
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = getelementptr [2 x i32], ptr %1, i32 0, i32 1
  br label %22

17:                                               ; preds = %58, %12
  %18 = load i32, ptr %3, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20, !prof !12

20:                                               ; preds = %17
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1, i32 noundef 716) #13
  br label %21

21:                                               ; preds = %20, %17
  store i32 -1, ptr %3, align 4
  br label %137

22:                                               ; preds = %58, %15
  %23 = phi i32 [ %13, %15 ], [ %59, %58 ]
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %135, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %2, align 4
  %27 = load i32, ptr %3, align 4
  %28 = getelementptr %struct.ubifs_znode, ptr %26, i32 0, i32 13, i32 %27
  %29 = load i32, ptr %28, align 8
  %30 = load i32, ptr %1, align 8
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = getelementptr [2 x i32], ptr %28, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = load i32, ptr %16, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %53, label %37

37:                                               ; preds = %32, %25
  %38 = getelementptr inbounds %struct.ubifs_znode, ptr %26, i32 0, i32 7
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, -1
  %41 = icmp eq i32 %27, %40
  br i1 %41, label %42, label %137

42:                                               ; preds = %37
  %43 = tail call fastcc i32 @tnc_next(ptr noundef %0, ptr noundef %2, ptr noundef %3)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 756) #13
  %46 = icmp eq i32 %43, -2
  %47 = select i1 %46, i32 -22, i32 %43
  br label %137

48:                                               ; preds = %42
  %49 = load i32, ptr %3, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51, !prof !12

51:                                               ; preds = %48
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1, i32 noundef 761) #13
  br label %52

52:                                               ; preds = %51, %48
  store i32 -1, ptr %3, align 4
  br label %137

53:                                               ; preds = %32
  %54 = tail call fastcc i32 @matches_name(ptr noundef %0, ptr noundef %28, ptr noundef %4)
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %135, label %56

56:                                               ; preds = %53
  switch i32 %54, label %57 [
    i32 0, label %135
    i32 1, label %137
    i32 2, label %58
  ], !prof !20

57:                                               ; preds = %56
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.1, i32 noundef 773) #13
  br label %58

58:                                               ; preds = %57, %56
  %59 = tail call fastcc i32 @tnc_prev(ptr noundef %0, ptr noundef %2, ptr noundef %3)
  %60 = icmp eq i32 %59, -2
  br i1 %60, label %17, label %22

61:                                               ; preds = %11
  %62 = load i32, ptr %3, align 4
  %63 = load ptr, ptr %2, align 4
  %64 = getelementptr [2 x i32], ptr %1, i32 0, i32 1
  br label %65

65:                                               ; preds = %131, %61
  %66 = phi i32 [ %62, %61 ], [ %114, %131 ]
  %67 = phi ptr [ %63, %61 ], [ %115, %131 ]
  %68 = add i32 %66, 1
  %69 = getelementptr inbounds %struct.ubifs_znode, ptr %67, i32 0, i32 7
  %70 = load i32, ptr %69, align 4
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %113, label %72

72:                                               ; preds = %76, %65
  %73 = phi ptr [ %74, %76 ], [ %67, %65 ]
  %74 = load ptr, ptr %73, align 8
  %75 = icmp eq ptr %74, null
  br i1 %75, label %137, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.ubifs_znode, ptr %73, i32 0, i32 8
  %78 = load i32, ptr %77, align 8
  %79 = add i32 %78, 1
  %80 = getelementptr inbounds %struct.ubifs_znode, ptr %74, i32 0, i32 7
  %81 = load i32, ptr %80, align 4
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %83, label %72

83:                                               ; preds = %76
  %84 = getelementptr %struct.ubifs_znode, ptr %74, i32 0, i32 13, i32 %79, i32 1
  %85 = load ptr, ptr %84, align 8
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = getelementptr %struct.ubifs_znode, ptr %74, i32 0, i32 13, i32 %79
  %89 = tail call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %88, ptr noundef nonnull %74, i32 noundef %79) #13
  br label %90

90:                                               ; preds = %87, %83
  %91 = phi ptr [ %89, %87 ], [ %85, %83 ]
  %92 = icmp ugt ptr %91, inttoptr (i32 -4096 to ptr)
  br i1 %92, label %108, label %93

93:                                               ; preds = %105, %90
  %94 = phi ptr [ %106, %105 ], [ %91, %90 ]
  %95 = getelementptr inbounds %struct.ubifs_znode, ptr %94, i32 0, i32 6
  %96 = load i32, ptr %95, align 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %113, label %98

98:                                               ; preds = %93
  %99 = getelementptr %struct.ubifs_znode, ptr %94, i32 0, i32 13, i32 0, i32 1
  %100 = load ptr, ptr %99, align 8
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = getelementptr %struct.ubifs_znode, ptr %94, i32 0, i32 13, i32 0
  %104 = tail call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %103, ptr noundef %94, i32 noundef 0) #13
  br label %105

105:                                              ; preds = %102, %98
  %106 = phi ptr [ %104, %102 ], [ %100, %98 ]
  %107 = icmp ugt ptr %106, inttoptr (i32 -4096 to ptr)
  br i1 %107, label %108, label %93

108:                                              ; preds = %105, %90
  %109 = phi ptr [ %91, %90 ], [ %106, %105 ]
  %110 = icmp eq ptr %109, inttoptr (i32 -2 to ptr)
  br i1 %110, label %137, label %111

111:                                              ; preds = %108
  %112 = icmp slt ptr %109, null
  br i1 %112, label %133, label %113

113:                                              ; preds = %111, %93, %65
  %114 = phi i32 [ %66, %111 ], [ %68, %65 ], [ 0, %93 ]
  %115 = phi ptr [ %67, %111 ], [ %67, %65 ], [ %94, %93 ]
  %116 = getelementptr %struct.ubifs_znode, ptr %115, i32 0, i32 13, i32 %114
  %117 = load i32, ptr %116, align 8
  %118 = load i32, ptr %1, align 8
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %137

120:                                              ; preds = %113
  %121 = getelementptr [2 x i32], ptr %116, i32 0, i32 1
  %122 = load i32, ptr %121, align 4
  %123 = load i32, ptr %64, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %137

125:                                              ; preds = %120
  %126 = tail call fastcc i32 @matches_name(ptr noundef %0, ptr noundef %116, ptr noundef %4)
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %137, label %128

128:                                              ; preds = %125
  %129 = icmp eq i32 %126, 2
  br i1 %129, label %137, label %130

130:                                              ; preds = %128
  store ptr %115, ptr %2, align 4
  store i32 %114, ptr %3, align 4
  switch i32 %126, label %132 [
    i32 1, label %137
    i32 0, label %131
  ], !prof !21

131:                                              ; preds = %132, %130
  br label %65

132:                                              ; preds = %130
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.1, i32 noundef 797) #13
  br label %131

133:                                              ; preds = %111
  %134 = ptrtoint ptr %109 to i32
  br label %137

135:                                              ; preds = %56, %53, %22
  %136 = phi i32 [ %54, %56 ], [ %54, %53 ], [ %23, %22 ]
  br label %137

137:                                              ; preds = %135, %133, %130, %128, %125, %120, %113, %108, %72, %56, %52, %45, %37, %21, %11, %5
  %138 = phi i32 [ 0, %21 ], [ %47, %45 ], [ %9, %5 ], [ %9, %11 ], [ 0, %52 ], [ 0, %37 ], [ %134, %133 ], [ %136, %135 ], [ 1, %56 ], [ 0, %72 ], [ %126, %130 ], [ 0, %128 ], [ %126, %125 ], [ 0, %108 ], [ 0, %113 ], [ 0, %120 ]
  ret i32 %138
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_tnc_remove_nm(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store ptr null, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 31
  tail call void @mutex_lock(ptr noundef %6) #13
  %7 = call fastcc i32 @lookup_level0_dirty(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %4)
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %40

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 186
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, 4
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = call fastcc i32 @fallible_resolve_collision(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef %2, i32 noundef 0)
  br label %18

16:                                               ; preds = %9
  %17 = call fastcc i32 @resolve_collision(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef %2)
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %18
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr inbounds %struct.ubifs_znode, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ubifs_znode, ptr %22, i32 0, i32 4
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26, %21
  %32 = call fastcc ptr @dirty_cow_bottom_up(ptr noundef %0, ptr noundef %22)
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = ptrtoint ptr %32 to i32
  br label %40

36:                                               ; preds = %31, %26
  %37 = phi ptr [ %32, %31 ], [ %22, %26 ]
  %38 = load i32, ptr %4, align 4
  %39 = call fastcc i32 @tnc_delete(ptr noundef %0, ptr noundef %37, i32 noundef %38)
  br label %40

40:                                               ; preds = %36, %34, %18, %3
  %41 = phi i32 [ %35, %34 ], [ %39, %36 ], [ %19, %18 ], [ %7, %3 ]
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 @dbg_check_tnc(ptr noundef %0, i32 noundef 0) #13
  br label %45

45:                                               ; preds = %43, %40
  %46 = phi i32 [ %41, %40 ], [ %44, %43 ]
  call void @mutex_unlock(ptr noundef %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_tnc_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store ptr null, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 31
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = call fastcc i32 @lookup_level0_dirty(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %3)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = icmp eq i32 %6, 1
  br i1 %9, label %10, label %15

10:                                               ; preds = %8
  %11 = load ptr, ptr %4, align 4
  %12 = load i32, ptr %3, align 4
  %13 = call fastcc i32 @tnc_delete(ptr noundef %0, ptr noundef %11, i32 noundef %12)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10, %8
  %16 = call i32 @dbg_check_tnc(ptr noundef %0, i32 noundef 0) #13
  br label %17

17:                                               ; preds = %15, %10, %2
  %18 = phi i32 [ %13, %10 ], [ %16, %15 ], [ %6, %2 ]
  call void @mutex_unlock(ptr noundef %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tnc_delete(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ubifs_znode, ptr %1, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7, !prof !12

7:                                                ; preds = %3
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.1, i32 noundef 2509) #13
  br label %8

8:                                                ; preds = %7, %3
  %9 = icmp sgt i32 %2, -1
  br i1 %9, label %10, label %14, !prof !12

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 70
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, %2
  br i1 %13, label %15, label %14, !prof !12

14:                                               ; preds = %10, %8
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.1, i32 noundef 2510) #13
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr %struct.ubifs_znode, ptr %1, i32 0, i32 13, i32 %2, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @kfree(ptr noundef nonnull %17) #13
  store ptr null, ptr %16, align 8
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr %struct.ubifs_znode, ptr %1, i32 0, i32 13, i32 %2, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr %struct.ubifs_znode, ptr %1, i32 0, i32 13, i32 %2, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @ubifs_update_one_lp(ptr noundef %0, i32 noundef %22, i32 noundef -2147483647, i32 noundef %24, i32 noundef 0, i32 noundef 0) #13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.ubifs_znode, ptr %1, i32 0, i32 7
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, -1
  %31 = icmp sgt i32 %30, %2
  br i1 %31, label %33, label %41

32:                                               ; preds = %20
  tail call void @ubifs_dump_znode(ptr noundef %0, ptr noundef %1) #13
  br label %196

33:                                               ; preds = %33, %27
  %34 = phi i32 [ %36, %33 ], [ %2, %27 ]
  %35 = getelementptr %struct.ubifs_znode, ptr %1, i32 0, i32 13, i32 %34
  %36 = add nsw i32 %34, 1
  %37 = getelementptr %struct.ubifs_znode, ptr %1, i32 0, i32 13, i32 %36
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %35, ptr noundef align 8 dereferenceable(24) %37, i32 24, i1 false)
  %38 = load i32, ptr %28, align 4
  %39 = add i32 %38, -1
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %33, label %41

41:                                               ; preds = %33, %27
  %42 = phi i32 [ %30, %27 ], [ %39, %33 ]
  store i32 %42, ptr %28, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %196, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 83
  %46 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32, i32 4
  %47 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32, i32 2
  %48 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32, i32 3
  %49 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 84
  br label %50

50:                                               ; preds = %97, %44
  %51 = phi ptr [ %63, %97 ], [ %1, %44 ]
  %52 = getelementptr inbounds %struct.ubifs_znode, ptr %51, i32 0, i32 4
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %53, 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56, !prof !12

56:                                               ; preds = %50
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 2536) #13
  br label %57

57:                                               ; preds = %56, %50
  %58 = load volatile i32, ptr %52, align 4
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62, !prof !8

61:                                               ; preds = %57
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 2537) #13
  br label %62

62:                                               ; preds = %61, %57
  %63 = load ptr, ptr %51, align 8
  %64 = getelementptr inbounds %struct.ubifs_znode, ptr %51, i32 0, i32 8
  %65 = load i32, ptr %64, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #13, !srcloc !18
  %66 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 1, ptr elementtype(i32) %45) #13, !srcloc !22
  %67 = load ptr, ptr %51, align 8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %77, label %69

69:                                               ; preds = %62
  %70 = load i32, ptr %64, align 8
  %71 = getelementptr %struct.ubifs_znode, ptr %67, i32 0, i32 13, i32 %70, i32 4
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %87, label %74

74:                                               ; preds = %69
  %75 = getelementptr %struct.ubifs_znode, ptr %67, i32 0, i32 13, i32 %70, i32 2
  %76 = getelementptr %struct.ubifs_znode, ptr %67, i32 0, i32 13, i32 %70, i32 3
  br label %80

77:                                               ; preds = %62
  %78 = load i32, ptr %46, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %77, %74
  %81 = phi ptr [ %76, %74 ], [ %48, %77 ]
  %82 = phi ptr [ %75, %74 ], [ %47, %77 ]
  %83 = load i32, ptr %82, align 4
  %84 = load i32, ptr %81, align 8
  %85 = tail call fastcc i32 @insert_old_idx(ptr noundef %0, i32 noundef %83, i32 noundef %84) #13
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %196

87:                                               ; preds = %80, %77, %69
  %88 = getelementptr inbounds %struct.ubifs_znode, ptr %51, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %87
  %92 = load i32, ptr %52, align 4
  %93 = or i32 %92, 4
  store i32 %93, ptr %52, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #13, !srcloc !18
  %94 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #13, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @ubifs_clean_zn_cnt) #13, !srcloc !18
  %95 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ubifs_clean_zn_cnt, ptr nonnull @ubifs_clean_zn_cnt, i32 1, ptr nonnull elementtype(i32) @ubifs_clean_zn_cnt) #13, !srcloc !19
  br label %97

96:                                               ; preds = %87
  tail call void @kfree(ptr noundef %51) #13
  br label %97

97:                                               ; preds = %96, %91
  %98 = getelementptr inbounds %struct.ubifs_znode, ptr %63, i32 0, i32 7
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %50, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.ubifs_znode, ptr %63, i32 0, i32 7
  %103 = add i32 %99, -1
  store i32 %103, ptr %102, align 4
  %104 = getelementptr inbounds %struct.ubifs_znode, ptr %63, i32 0, i32 6
  %105 = load i32, ptr %104, align 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %109, !prof !8

107:                                              ; preds = %101
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.1, i32 noundef 2559) #13
  %108 = load i32, ptr %102, align 4
  br label %109

109:                                              ; preds = %107, %101
  %110 = phi i32 [ %108, %107 ], [ %103, %101 ]
  %111 = icmp slt i32 %65, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %122, %109
  %113 = phi i32 [ %115, %122 ], [ %65, %109 ]
  %114 = getelementptr %struct.ubifs_znode, ptr %63, i32 0, i32 13, i32 %113
  %115 = add nsw i32 %113, 1
  %116 = getelementptr %struct.ubifs_znode, ptr %63, i32 0, i32 13, i32 %115
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %114, ptr noundef align 8 dereferenceable(24) %116, i32 24, i1 false)
  %117 = getelementptr %struct.ubifs_znode, ptr %63, i32 0, i32 13, i32 %113, i32 1
  %118 = load ptr, ptr %117, align 8
  %119 = icmp eq ptr %118, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %112
  %121 = getelementptr inbounds %struct.ubifs_znode, ptr %118, i32 0, i32 8
  store i32 %113, ptr %121, align 8
  br label %122

122:                                              ; preds = %120, %112
  %123 = load i32, ptr %102, align 4
  %124 = icmp slt i32 %115, %123
  br i1 %124, label %112, label %125

125:                                              ; preds = %122, %109
  %126 = phi i32 [ %110, %109 ], [ %123, %122 ]
  %127 = load ptr, ptr %63, align 8
  %128 = icmp eq ptr %127, null
  %129 = icmp eq i32 %126, 1
  %130 = select i1 %128, i1 %129, i1 false
  br i1 %130, label %131, label %196

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32, i32 1
  br label %133

133:                                              ; preds = %192, %131
  %134 = phi ptr [ %63, %131 ], [ %151, %192 ]
  %135 = getelementptr inbounds %struct.ubifs_znode, ptr %134, i32 0, i32 6
  %136 = load i32, ptr %135, align 8
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %196, label %138

138:                                              ; preds = %133
  %139 = getelementptr %struct.ubifs_znode, ptr %134, i32 0, i32 13
  %140 = getelementptr %struct.ubifs_znode, ptr %134, i32 0, i32 13, i32 0, i32 1
  %141 = load ptr, ptr %140, align 8
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = tail call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %139, ptr noundef %134, i32 noundef 0) #13
  br label %145

145:                                              ; preds = %143, %138
  %146 = phi ptr [ %144, %143 ], [ %141, %138 ]
  %147 = icmp ugt ptr %146, inttoptr (i32 -4096 to ptr)
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = ptrtoint ptr %146 to i32
  br label %196

150:                                              ; preds = %145
  %151 = tail call fastcc ptr @dirty_cow_znode(ptr noundef %0, ptr noundef %139)
  %152 = icmp ugt ptr %151, inttoptr (i32 -4096 to ptr)
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = ptrtoint ptr %151 to i32
  br label %196

155:                                              ; preds = %150
  store ptr null, ptr %151, align 8
  %156 = getelementptr inbounds %struct.ubifs_znode, ptr %151, i32 0, i32 8
  store i32 0, ptr %156, align 8
  %157 = load i32, ptr %46, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %155
  %160 = load i32, ptr %47, align 4
  %161 = load i32, ptr %48, align 8
  %162 = tail call fastcc i32 @insert_old_idx(ptr noundef %0, i32 noundef %160, i32 noundef %161)
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %196

164:                                              ; preds = %159, %155
  %165 = getelementptr inbounds %struct.ubifs_znode, ptr %134, i32 1, i32 3
  %166 = load i32, ptr %165, align 4
  store i32 %166, ptr %47, align 4
  %167 = getelementptr inbounds %struct.ubifs_znode, ptr %134, i32 1, i32 4
  %168 = load i32, ptr %167, align 8
  store i32 %168, ptr %48, align 8
  %169 = getelementptr inbounds %struct.ubifs_zbranch, ptr %139, i32 0, i32 4
  %170 = load i32, ptr %169, align 4
  store i32 %170, ptr %46, align 4
  store ptr %151, ptr %132, align 8
  %171 = getelementptr inbounds %struct.ubifs_znode, ptr %134, i32 0, i32 4
  %172 = load volatile i32, ptr %171, align 4
  %173 = and i32 %172, 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %176, label %175, !prof !12

175:                                              ; preds = %164
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.1, i32 noundef 2592) #13
  br label %176

176:                                              ; preds = %175, %164
  %177 = load volatile i32, ptr %171, align 4
  %178 = and i32 %177, 1
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %181, !prof !8

180:                                              ; preds = %176
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.1, i32 noundef 2593) #13
  br label %181

181:                                              ; preds = %180, %176
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #13, !srcloc !18
  %182 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 1, ptr elementtype(i32) %45) #13, !srcloc !22
  %183 = getelementptr inbounds %struct.ubifs_znode, ptr %134, i32 0, i32 1
  %184 = load ptr, ptr %183, align 4
  %185 = icmp eq ptr %184, null
  br i1 %185, label %191, label %186

186:                                              ; preds = %181
  %187 = load i32, ptr %171, align 4
  %188 = or i32 %187, 4
  store i32 %188, ptr %171, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #13, !srcloc !18
  %189 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #13, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @ubifs_clean_zn_cnt) #13, !srcloc !18
  %190 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ubifs_clean_zn_cnt, ptr nonnull @ubifs_clean_zn_cnt, i32 1, ptr nonnull elementtype(i32) @ubifs_clean_zn_cnt) #13, !srcloc !19
  br label %192

191:                                              ; preds = %181
  tail call void @kfree(ptr noundef %134) #13
  br label %192

192:                                              ; preds = %191, %186
  %193 = getelementptr inbounds %struct.ubifs_znode, ptr %151, i32 0, i32 7
  %194 = load i32, ptr %193, align 4
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %133, label %196

196:                                              ; preds = %192, %159, %153, %148, %133, %125, %80, %41, %32
  %197 = phi i32 [ %25, %32 ], [ %149, %148 ], [ %154, %153 ], [ 0, %41 ], [ 0, %125 ], [ %162, %159 ], [ 0, %133 ], [ 0, %192 ], [ %85, %80 ]
  ret i32 %197
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_tnc_remove_dh(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca %union.ubifs_key, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store ptr null, ptr %5, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %8 = load i16, ptr %7, align 4
  %9 = and i16 %8, 4
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %69, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 31
  tail call void @mutex_lock(ptr noundef %12) #13
  %13 = call fastcc i32 @lookup_level0_dirty(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %4)
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %62, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 4
  %17 = load i32, ptr %4, align 4
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %19 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3136, i32 noundef 312) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %67, label %21

21:                                               ; preds = %15
  %22 = getelementptr %struct.ubifs_znode, ptr %16, i32 0, i32 13, i32 %17
  %23 = call fastcc i32 @tnc_read_hashed_node(ptr noundef %0, ptr noundef %22, ptr noundef nonnull %19)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %60

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.ubifs_dent_node, ptr %19, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, %2
  br i1 %28, label %41, label %29

29:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %30 = load i32, ptr %1, align 8
  store i32 %30, ptr %6, align 8
  %31 = getelementptr inbounds [2 x i32], ptr %6, i32 0, i32 1
  store i32 1073741824, ptr %31, align 4
  %32 = call i32 @ubifs_lookup_level0(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %4)
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %37, label %34, !prof !8

34:                                               ; preds = %29
  %35 = call fastcc i32 @search_dh_cookie(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %19, i32 noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef %32)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34, %29
  %38 = phi i32 [ %35, %34 ], [ %32, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  br label %60

39:                                               ; preds = %34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  %40 = load ptr, ptr %5, align 4
  br label %41

41:                                               ; preds = %39, %25
  %42 = phi ptr [ %40, %39 ], [ %16, %25 ]
  %43 = getelementptr inbounds %struct.ubifs_znode, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.ubifs_znode, ptr %42, i32 0, i32 4
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46, %41
  %52 = call fastcc ptr @dirty_cow_bottom_up(ptr noundef %0, ptr noundef %42)
  %53 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = ptrtoint ptr %52 to i32
  br label %60

56:                                               ; preds = %51, %46
  %57 = phi ptr [ %52, %51 ], [ %42, %46 ]
  %58 = load i32, ptr %4, align 4
  %59 = call fastcc i32 @tnc_delete(ptr noundef %0, ptr noundef %57, i32 noundef %58)
  br label %60

60:                                               ; preds = %56, %54, %37, %21
  %61 = phi i32 [ %23, %21 ], [ %55, %54 ], [ %59, %56 ], [ %38, %37 ]
  call void @kfree(ptr noundef nonnull %19) #13
  br label %62

62:                                               ; preds = %60, %11
  %63 = phi i32 [ %13, %11 ], [ %61, %60 ]
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 @dbg_check_tnc(ptr noundef %0, i32 noundef 0) #13
  br label %67

67:                                               ; preds = %65, %62, %15
  %68 = phi i32 [ %63, %62 ], [ %66, %65 ], [ -12, %15 ]
  call void @mutex_unlock(ptr noundef %12) #13
  br label %69

69:                                               ; preds = %67, %3
  %70 = phi i32 [ %68, %67 ], [ -95, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @search_dh_cookie(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = load ptr, ptr %4, align 4
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %10, label %58

10:                                               ; preds = %7
  %11 = load i32, ptr %5, align 4
  %12 = add i32 %11, 1
  %13 = getelementptr inbounds %struct.ubifs_znode, ptr %8, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %55, label %16

16:                                               ; preds = %20, %10
  %17 = phi ptr [ %18, %20 ], [ %8, %10 ]
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %140, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ubifs_znode, ptr %17, i32 0, i32 8
  %22 = load i32, ptr %21, align 8
  %23 = add i32 %22, 1
  %24 = getelementptr inbounds %struct.ubifs_znode, ptr %18, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %16

27:                                               ; preds = %20
  %28 = getelementptr %struct.ubifs_znode, ptr %18, i32 0, i32 13, i32 %23, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = getelementptr %struct.ubifs_znode, ptr %18, i32 0, i32 13, i32 %23
  %33 = tail call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %32, ptr noundef nonnull %18, i32 noundef %23) #13
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi ptr [ %33, %31 ], [ %29, %27 ]
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %52, label %37

37:                                               ; preds = %49, %34
  %38 = phi ptr [ %50, %49 ], [ %35, %34 ]
  %39 = getelementptr inbounds %struct.ubifs_znode, ptr %38, i32 0, i32 6
  %40 = load i32, ptr %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %37
  %43 = getelementptr %struct.ubifs_znode, ptr %38, i32 0, i32 13, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = getelementptr %struct.ubifs_znode, ptr %38, i32 0, i32 13, i32 0
  %48 = tail call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %47, ptr noundef %38, i32 noundef 0) #13
  br label %49

49:                                               ; preds = %46, %42
  %50 = phi ptr [ %48, %46 ], [ %44, %42 ]
  %51 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %52, label %37

52:                                               ; preds = %49, %34
  %53 = phi ptr [ %35, %34 ], [ %50, %49 ]
  %54 = ptrtoint ptr %53 to i32
  br label %140

55:                                               ; preds = %37, %10
  %56 = phi i32 [ %12, %10 ], [ 0, %37 ]
  %57 = phi ptr [ %8, %10 ], [ %38, %37 ]
  store i32 %56, ptr %5, align 4
  br label %58

58:                                               ; preds = %55, %7
  %59 = phi ptr [ %8, %7 ], [ %57, %55 ]
  %60 = getelementptr [2 x i32], ptr %1, i32 0, i32 1
  %61 = getelementptr inbounds %struct.ubifs_dent_node, ptr %2, i32 0, i32 6
  br label %62

62:                                               ; preds = %136, %58
  %63 = phi ptr [ %59, %58 ], [ %137, %136 ]
  %64 = load i32, ptr %5, align 4
  %65 = getelementptr %struct.ubifs_znode, ptr %63, i32 0, i32 13, i32 %64
  %66 = load i32, ptr %65, align 8
  %67 = load i32, ptr %1, align 8
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %140

69:                                               ; preds = %62
  %70 = getelementptr [2 x i32], ptr %65, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = load i32, ptr %60, align 4
  %73 = xor i32 %72, %71
  %74 = icmp ult i32 %73, 536870912
  br i1 %74, label %75, label %140

75:                                               ; preds = %69
  %76 = tail call fastcc i32 @tnc_read_hashed_node(ptr noundef %0, ptr noundef %65, ptr noundef %2)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %140

78:                                               ; preds = %75
  %79 = load i32, ptr %60, align 4
  %80 = load i32, ptr %70, align 4
  %81 = xor i32 %80, %79
  %82 = and i32 %81, 536870911
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load i32, ptr %61, align 1
  %86 = icmp eq i32 %85, %3
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store ptr %63, ptr %4, align 4
  br label %140

88:                                               ; preds = %84, %78
  %89 = load i32, ptr %5, align 4
  %90 = add i32 %89, 1
  %91 = getelementptr inbounds %struct.ubifs_znode, ptr %63, i32 0, i32 7
  %92 = load i32, ptr %91, align 4
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  store i32 %90, ptr %5, align 4
  br label %136

95:                                               ; preds = %99, %88
  %96 = phi ptr [ %97, %99 ], [ %63, %88 ]
  %97 = load ptr, ptr %96, align 8
  %98 = icmp eq ptr %97, null
  br i1 %98, label %140, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.ubifs_znode, ptr %96, i32 0, i32 8
  %101 = load i32, ptr %100, align 8
  %102 = add i32 %101, 1
  %103 = getelementptr inbounds %struct.ubifs_znode, ptr %97, i32 0, i32 7
  %104 = load i32, ptr %103, align 4
  %105 = icmp slt i32 %102, %104
  br i1 %105, label %106, label %95

106:                                              ; preds = %99
  %107 = getelementptr %struct.ubifs_znode, ptr %97, i32 0, i32 13, i32 %102, i32 1
  %108 = load ptr, ptr %107, align 8
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = getelementptr %struct.ubifs_znode, ptr %97, i32 0, i32 13, i32 %102
  %112 = tail call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %111, ptr noundef nonnull %97, i32 noundef %102) #13
  br label %113

113:                                              ; preds = %110, %106
  %114 = phi ptr [ %112, %110 ], [ %108, %106 ]
  %115 = icmp ugt ptr %114, inttoptr (i32 -4096 to ptr)
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = ptrtoint ptr %114 to i32
  br label %136

118:                                              ; preds = %130, %113
  %119 = phi ptr [ %131, %130 ], [ %114, %113 ]
  %120 = getelementptr inbounds %struct.ubifs_znode, ptr %119, i32 0, i32 6
  %121 = load i32, ptr %120, align 8
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %135, label %123

123:                                              ; preds = %118
  %124 = getelementptr %struct.ubifs_znode, ptr %119, i32 0, i32 13, i32 0, i32 1
  %125 = load ptr, ptr %124, align 8
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = getelementptr %struct.ubifs_znode, ptr %119, i32 0, i32 13, i32 0
  %129 = tail call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %128, ptr noundef %119, i32 noundef 0) #13
  br label %130

130:                                              ; preds = %127, %123
  %131 = phi ptr [ %129, %127 ], [ %125, %123 ]
  %132 = icmp ugt ptr %131, inttoptr (i32 -4096 to ptr)
  br i1 %132, label %133, label %118

133:                                              ; preds = %130
  %134 = ptrtoint ptr %131 to i32
  br label %136

135:                                              ; preds = %118
  store i32 0, ptr %5, align 4
  br label %136

136:                                              ; preds = %135, %133, %116, %94
  %137 = phi ptr [ %63, %94 ], [ %63, %116 ], [ %119, %135 ], [ %63, %133 ]
  %138 = phi i32 [ 0, %94 ], [ %117, %116 ], [ 0, %135 ], [ %134, %133 ]
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %62, label %140

140:                                              ; preds = %136, %95, %87, %75, %69, %62, %52, %16
  %141 = phi i32 [ 0, %87 ], [ %54, %52 ], [ -2, %95 ], [ %138, %136 ], [ %76, %75 ], [ -2, %62 ], [ -2, %69 ], [ -2, %16 ]
  ret i32 %141
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_tnc_remove_range(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store ptr null, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 31
  tail call void @mutex_lock(ptr noundef %6) #13
  %7 = getelementptr [2 x i32], ptr %1, i32 0, i32 1
  %8 = getelementptr [2 x i32], ptr %2, i32 0, i32 1
  br label %9

9:                                                ; preds = %183, %3
  %10 = call i32 @ubifs_lookup_level0(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %4)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %193, label %12

12:                                               ; preds = %9
  %13 = icmp eq i32 %10, 0
  %14 = load ptr, ptr %5, align 4
  br i1 %13, label %15, label %90

15:                                               ; preds = %12
  %16 = load i32, ptr %4, align 4
  %17 = add i32 %16, 1
  %18 = getelementptr inbounds %struct.ubifs_znode, ptr %14, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 %17, ptr %4, align 4
  br label %66

22:                                               ; preds = %26, %15
  %23 = phi ptr [ %24, %26 ], [ %14, %15 ]
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %189, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ubifs_znode, ptr %23, i32 0, i32 8
  %28 = load i32, ptr %27, align 8
  %29 = add i32 %28, 1
  %30 = getelementptr inbounds %struct.ubifs_znode, ptr %24, i32 0, i32 7
  %31 = load i32, ptr %30, align 4
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %22

33:                                               ; preds = %26
  %34 = getelementptr %struct.ubifs_znode, ptr %24, i32 0, i32 13, i32 %29, i32 1
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = getelementptr %struct.ubifs_znode, ptr %24, i32 0, i32 13, i32 %29
  %39 = call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %38, ptr noundef nonnull %24, i32 noundef %29) #13
  br label %40

40:                                               ; preds = %37, %33
  %41 = phi ptr [ %39, %37 ], [ %35, %33 ]
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %59, label %43

43:                                               ; preds = %55, %40
  %44 = phi ptr [ %56, %55 ], [ %41, %40 ]
  %45 = getelementptr inbounds %struct.ubifs_znode, ptr %44, i32 0, i32 6
  %46 = load i32, ptr %45, align 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %43
  %49 = getelementptr %struct.ubifs_znode, ptr %44, i32 0, i32 13, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = getelementptr %struct.ubifs_znode, ptr %44, i32 0, i32 13, i32 0
  %54 = call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %53, ptr noundef %44, i32 noundef 0) #13
  br label %55

55:                                               ; preds = %52, %48
  %56 = phi ptr [ %54, %52 ], [ %50, %48 ]
  %57 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %57, label %59, label %43

58:                                               ; preds = %43
  store ptr %44, ptr %5, align 4
  store i32 0, ptr %4, align 4
  br label %66

59:                                               ; preds = %55, %40
  %60 = phi ptr [ %41, %40 ], [ %56, %55 ]
  %61 = icmp eq ptr %60, inttoptr (i32 -2 to ptr)
  br i1 %61, label %189, label %62

62:                                               ; preds = %59
  %63 = icmp slt ptr %60, null
  br i1 %63, label %191, label %64

64:                                               ; preds = %62
  %65 = load i32, ptr %4, align 4
  br label %66

66:                                               ; preds = %64, %58, %21
  %67 = phi i32 [ %17, %21 ], [ 0, %58 ], [ %65, %64 ]
  %68 = phi ptr [ %14, %21 ], [ %44, %58 ], [ %14, %64 ]
  %69 = getelementptr %struct.ubifs_znode, ptr %68, i32 0, i32 13, i32 %67
  %70 = load i32, ptr %69, align 8
  %71 = load i32, ptr %1, align 8
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %189, label %73

73:                                               ; preds = %66
  %74 = icmp ugt i32 %70, %71
  br i1 %74, label %80, label %75

75:                                               ; preds = %73
  %76 = getelementptr [2 x i32], ptr %69, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = load i32, ptr %7, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %189, label %80

80:                                               ; preds = %75, %73
  %81 = load i32, ptr %2, align 8
  %82 = icmp ult i32 %70, %81
  br i1 %82, label %90, label %83

83:                                               ; preds = %80
  %84 = icmp ugt i32 %70, %81
  br i1 %84, label %189, label %85

85:                                               ; preds = %83
  %86 = getelementptr [2 x i32], ptr %69, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = load i32, ptr %8, align 4
  %89 = icmp ugt i32 %87, %88
  br i1 %89, label %189, label %90

90:                                               ; preds = %85, %80, %12
  %91 = phi ptr [ %68, %85 ], [ %68, %80 ], [ %14, %12 ]
  %92 = getelementptr inbounds %struct.ubifs_znode, ptr %91, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.ubifs_znode, ptr %91, i32 0, i32 4
  %97 = load volatile i32, ptr %96, align 4
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95, %90
  %101 = call fastcc ptr @dirty_cow_bottom_up(ptr noundef %0, ptr noundef %91)
  store ptr %101, ptr %5, align 4
  %102 = icmp ugt ptr %101, inttoptr (i32 -4096 to ptr)
  br i1 %102, label %187, label %103

103:                                              ; preds = %100, %95
  %104 = phi ptr [ %101, %100 ], [ %91, %95 ]
  %105 = load i32, ptr %4, align 4
  %106 = getelementptr inbounds %struct.ubifs_znode, ptr %104, i32 0, i32 7
  %107 = add i32 %105, 1
  %108 = load i32, ptr %106, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %165

110:                                              ; preds = %103
  %111 = getelementptr %struct.ubifs_znode, ptr %104, i32 0, i32 13, i32 %107
  %112 = load i32, ptr %111, align 8
  %113 = load i32, ptr %1, align 8
  %114 = icmp ult i32 %112, %113
  br i1 %114, label %161, label %120

115:                                              ; preds = %156
  %116 = getelementptr %struct.ubifs_znode, ptr %104, i32 0, i32 13, i32 %158
  %117 = load i32, ptr %116, align 8
  %118 = load i32, ptr %1, align 8
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %161, label %120

120:                                              ; preds = %115, %110
  %121 = phi i32 [ %118, %115 ], [ %113, %110 ]
  %122 = phi i32 [ %117, %115 ], [ %112, %110 ]
  %123 = phi ptr [ %116, %115 ], [ %111, %110 ]
  %124 = phi i32 [ %157, %115 ], [ 0, %110 ]
  %125 = phi i32 [ %158, %115 ], [ %107, %110 ]
  %126 = phi i32 [ %159, %115 ], [ %108, %110 ]
  %127 = icmp ugt i32 %122, %121
  br i1 %127, label %133, label %128

128:                                              ; preds = %120
  %129 = getelementptr [2 x i32], ptr %123, i32 0, i32 1
  %130 = load i32, ptr %129, align 4
  %131 = load i32, ptr %7, align 4
  %132 = icmp ult i32 %130, %131
  br i1 %132, label %161, label %133

133:                                              ; preds = %128, %120
  %134 = load i32, ptr %2, align 8
  %135 = icmp ult i32 %122, %134
  br i1 %135, label %143, label %136

136:                                              ; preds = %133
  %137 = icmp ugt i32 %122, %134
  br i1 %137, label %161, label %138

138:                                              ; preds = %136
  %139 = getelementptr [2 x i32], ptr %123, i32 0, i32 1
  %140 = load i32, ptr %139, align 4
  %141 = load i32, ptr %8, align 4
  %142 = icmp ugt i32 %140, %141
  br i1 %142, label %161, label %143

143:                                              ; preds = %138, %133
  %144 = getelementptr %struct.ubifs_znode, ptr %104, i32 0, i32 13, i32 %125, i32 1
  %145 = load ptr, ptr %144, align 8
  %146 = icmp eq ptr %145, null
  br i1 %146, label %148, label %147

147:                                              ; preds = %143
  call void @kfree(ptr noundef nonnull %145) #13
  store ptr null, ptr %144, align 8
  br label %148

148:                                              ; preds = %147, %143
  %149 = getelementptr %struct.ubifs_znode, ptr %104, i32 0, i32 13, i32 %125, i32 2
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr %struct.ubifs_znode, ptr %104, i32 0, i32 13, i32 %125, i32 4
  %152 = load i32, ptr %151, align 4
  %153 = call i32 @ubifs_update_one_lp(ptr noundef %0, i32 noundef %150, i32 noundef -2147483647, i32 noundef %152, i32 noundef 0, i32 noundef 0) #13
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %148
  call void @ubifs_dump_znode(ptr noundef %0, ptr noundef %104) #13
  br label %193

156:                                              ; preds = %148
  %157 = add i32 %124, 1
  %158 = add nsw i32 %125, 1
  %159 = load i32, ptr %106, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %115, label %161

161:                                              ; preds = %156, %138, %136, %128, %115, %110
  %162 = phi i32 [ %108, %110 ], [ %126, %136 ], [ %126, %138 ], [ %126, %128 ], [ %159, %115 ], [ %159, %156 ]
  %163 = phi i32 [ 0, %110 ], [ %124, %136 ], [ %124, %138 ], [ %124, %128 ], [ %157, %115 ], [ %157, %156 ]
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %161, %103
  %166 = load i32, ptr %4, align 4
  br label %183

167:                                              ; preds = %161
  %168 = load i32, ptr %4, align 4
  %169 = add i32 %163, 1
  %170 = add i32 %169, %168
  %171 = icmp slt i32 %170, %162
  br i1 %171, label %172, label %180

172:                                              ; preds = %172, %167
  %173 = phi i32 [ %177, %172 ], [ %170, %167 ]
  %174 = sub i32 %173, %163
  %175 = getelementptr %struct.ubifs_znode, ptr %104, i32 0, i32 13, i32 %174
  %176 = getelementptr %struct.ubifs_znode, ptr %104, i32 0, i32 13, i32 %173
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %175, ptr noundef align 8 dereferenceable(24) %176, i32 24, i1 false)
  %177 = add nsw i32 %173, 1
  %178 = load i32, ptr %106, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %172, label %180

180:                                              ; preds = %172, %167
  %181 = phi i32 [ %162, %167 ], [ %178, %172 ]
  %182 = sub i32 %181, %163
  store i32 %182, ptr %106, align 4
  br label %183

183:                                              ; preds = %180, %165
  %184 = phi i32 [ %166, %165 ], [ %168, %180 ]
  %185 = call fastcc i32 @tnc_delete(ptr noundef %0, ptr noundef %104, i32 noundef %184)
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %9, label %193

187:                                              ; preds = %100
  %188 = ptrtoint ptr %101 to i32
  br label %193

189:                                              ; preds = %85, %83, %75, %66, %59, %22
  %190 = call i32 @dbg_check_tnc(ptr noundef %0, i32 noundef 0) #13
  br label %193

191:                                              ; preds = %62
  %192 = ptrtoint ptr %60 to i32
  br label %193

193:                                              ; preds = %191, %189, %187, %183, %155, %9
  %194 = phi i32 [ %188, %187 ], [ %190, %189 ], [ %153, %155 ], [ %192, %191 ], [ %10, %9 ], [ %185, %183 ]
  call void @mutex_unlock(ptr noundef %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %194
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_znode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_tnc_remove_ino(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %union.ubifs_key, align 8
  %4 = alloca %union.ubifs_key, align 8
  %5 = alloca %struct.fscrypt_name, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store i64 0, ptr %4, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false)
  store i32 %1, ptr %3, align 8
  %6 = getelementptr inbounds [2 x i32], ptr %3, i32 0, i32 1
  store i32 1610612736, ptr %6, align 4
  %7 = call ptr @ubifs_tnc_next_ent(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %5)
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.fscrypt_name, ptr %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.fscrypt_name, ptr %5, i32 0, i32 1, i32 1
  %12 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  br label %19

13:                                               ; preds = %36, %2
  %14 = phi ptr [ null, %2 ], [ %20, %36 ]
  %15 = phi ptr [ %7, %2 ], [ %41, %36 ]
  %16 = icmp eq ptr %15, inttoptr (i32 -2 to ptr)
  br i1 %16, label %43, label %17

17:                                               ; preds = %13
  %18 = ptrtoint ptr %15 to i32
  call void @kfree(ptr noundef %14) #13
  br label %46

19:                                               ; preds = %36, %9
  %20 = phi ptr [ %7, %9 ], [ %41, %36 ]
  %21 = phi ptr [ null, %9 ], [ %20, %36 ]
  %22 = getelementptr inbounds %struct.ubifs_dent_node, ptr %20, i32 0, i32 2
  %23 = load i64, ptr %22, align 1
  %24 = trunc i64 %23 to i32
  call void @ubifs_evict_xattr_inode(ptr noundef %0, i32 noundef %24) #13
  %25 = getelementptr inbounds %struct.ubifs_dent_node, ptr %20, i32 0, i32 7
  store ptr %25, ptr %10, align 4
  %26 = getelementptr inbounds %struct.ubifs_dent_node, ptr %20, i32 0, i32 5
  %27 = load i16, ptr %26, align 1
  %28 = zext i16 %27 to i32
  store i32 %28, ptr %11, align 4
  %29 = call i32 @ubifs_tnc_remove_nm(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %5)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %19
  call void @kfree(ptr noundef %21) #13
  call void @kfree(ptr noundef %20) #13
  br label %46

32:                                               ; preds = %19
  store i32 %24, ptr %3, align 8
  store i32 0, ptr %6, align 4
  store i32 %24, ptr %4, align 8
  store i32 -1, ptr %12, align 4
  %33 = call i32 @ubifs_tnc_remove_range(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %34 = icmp eq i32 %33, 0
  call void @kfree(ptr noundef %21) #13
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  call void @kfree(ptr noundef %20) #13
  br label %46

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ubifs_dent_node, ptr %20, i32 0, i32 1
  %38 = load i32, ptr %37, align 8
  store i32 %38, ptr %3, align 8
  %39 = getelementptr %struct.ubifs_dent_node, ptr %20, i32 0, i32 1, i32 4
  %40 = load i32, ptr %39, align 4
  store i32 %40, ptr %6, align 4
  %41 = call ptr @ubifs_tnc_next_ent(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %5)
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %13, label %19

43:                                               ; preds = %13
  call void @kfree(ptr noundef %14) #13
  store i32 %1, ptr %3, align 8
  store i32 0, ptr %6, align 4
  store i32 %1, ptr %4, align 8
  %44 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  store i32 -1, ptr %44, align 4
  %45 = call i32 @ubifs_tnc_remove_range(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4)
  br label %46

46:                                               ; preds = %43, %35, %31, %17
  %47 = phi i32 [ %45, %43 ], [ %33, %35 ], [ %29, %31 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ubifs_tnc_next_ent(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !9
  %6 = getelementptr [2 x i32], ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store ptr null, ptr %5, align 4, !annotation !9
  %8 = and i32 %7, -1073741824
  %9 = icmp eq i32 %8, 1073741824
  br i1 %9, label %11, label %10, !prof !12

10:                                               ; preds = %3
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 2961) #13
  br label %11

11:                                               ; preds = %10, %3
  %12 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 31
  tail call void @mutex_lock(ptr noundef %12) #13
  %13 = call i32 @ubifs_lookup_level0(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %4)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %153, label %15, !prof !8

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.fscrypt_name, ptr %2, i32 0, i32 1, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  %19 = icmp eq i32 %13, 0
  br i1 %18, label %81, label %20

20:                                               ; preds = %15
  br i1 %19, label %33, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 186
  %23 = load i8, ptr %22, align 4
  %24 = and i8 %23, 4
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = call fastcc i32 @fallible_resolve_collision(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef %2, i32 noundef 0)
  br label %30

28:                                               ; preds = %21
  %29 = call fastcc i32 @resolve_collision(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef %2)
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %153, label %33, !prof !8

33:                                               ; preds = %30, %20
  %34 = load ptr, ptr %5, align 4
  %35 = load i32, ptr %4, align 4
  %36 = add i32 %35, 1
  %37 = getelementptr inbounds %struct.ubifs_znode, ptr %34, i32 0, i32 7
  %38 = load i32, ptr %37, align 4
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 %36, ptr %4, align 4
  br label %130

41:                                               ; preds = %45, %33
  %42 = phi ptr [ %43, %45 ], [ %34, %33 ]
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %153, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.ubifs_znode, ptr %42, i32 0, i32 8
  %47 = load i32, ptr %46, align 8
  %48 = add i32 %47, 1
  %49 = getelementptr inbounds %struct.ubifs_znode, ptr %43, i32 0, i32 7
  %50 = load i32, ptr %49, align 4
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %41

52:                                               ; preds = %45
  %53 = getelementptr %struct.ubifs_znode, ptr %43, i32 0, i32 13, i32 %48, i32 1
  %54 = load ptr, ptr %53, align 8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = getelementptr %struct.ubifs_znode, ptr %43, i32 0, i32 13, i32 %48
  %58 = call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %57, ptr noundef nonnull %43, i32 noundef %48) #13
  br label %59

59:                                               ; preds = %56, %52
  %60 = phi ptr [ %58, %56 ], [ %54, %52 ]
  %61 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %78, label %62

62:                                               ; preds = %74, %59
  %63 = phi ptr [ %75, %74 ], [ %60, %59 ]
  %64 = getelementptr inbounds %struct.ubifs_znode, ptr %63, i32 0, i32 6
  %65 = load i32, ptr %64, align 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %62
  %68 = getelementptr %struct.ubifs_znode, ptr %63, i32 0, i32 13, i32 0, i32 1
  %69 = load ptr, ptr %68, align 8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = getelementptr %struct.ubifs_znode, ptr %63, i32 0, i32 13, i32 0
  %73 = call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %72, ptr noundef %63, i32 noundef 0) #13
  br label %74

74:                                               ; preds = %71, %67
  %75 = phi ptr [ %73, %71 ], [ %69, %67 ]
  %76 = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  br i1 %76, label %78, label %62

77:                                               ; preds = %62
  store ptr %63, ptr %5, align 4
  store i32 0, ptr %4, align 4
  br label %130

78:                                               ; preds = %74, %59
  %79 = phi ptr [ %60, %59 ], [ %75, %74 ]
  %80 = ptrtoint ptr %79 to i32
  br label %153

81:                                               ; preds = %15
  %82 = load ptr, ptr %5, align 4
  %83 = load i32, ptr %4, align 4
  br i1 %19, label %84, label %130

84:                                               ; preds = %81
  %85 = add i32 %83, 1
  %86 = getelementptr inbounds %struct.ubifs_znode, ptr %82, i32 0, i32 7
  %87 = load i32, ptr %86, align 4
  %88 = icmp slt i32 %85, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i32 %85, ptr %4, align 4
  br label %130

90:                                               ; preds = %94, %84
  %91 = phi ptr [ %92, %94 ], [ %82, %84 ]
  %92 = load ptr, ptr %91, align 8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %153, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.ubifs_znode, ptr %91, i32 0, i32 8
  %96 = load i32, ptr %95, align 8
  %97 = add i32 %96, 1
  %98 = getelementptr inbounds %struct.ubifs_znode, ptr %92, i32 0, i32 7
  %99 = load i32, ptr %98, align 4
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %101, label %90

101:                                              ; preds = %94
  %102 = getelementptr %struct.ubifs_znode, ptr %92, i32 0, i32 13, i32 %97, i32 1
  %103 = load ptr, ptr %102, align 8
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = getelementptr %struct.ubifs_znode, ptr %92, i32 0, i32 13, i32 %97
  %107 = call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %106, ptr noundef nonnull %92, i32 noundef %97) #13
  br label %108

108:                                              ; preds = %105, %101
  %109 = phi ptr [ %107, %105 ], [ %103, %101 ]
  %110 = icmp ugt ptr %109, inttoptr (i32 -4096 to ptr)
  br i1 %110, label %127, label %111

111:                                              ; preds = %123, %108
  %112 = phi ptr [ %124, %123 ], [ %109, %108 ]
  %113 = getelementptr inbounds %struct.ubifs_znode, ptr %112, i32 0, i32 6
  %114 = load i32, ptr %113, align 8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %126, label %116

116:                                              ; preds = %111
  %117 = getelementptr %struct.ubifs_znode, ptr %112, i32 0, i32 13, i32 0, i32 1
  %118 = load ptr, ptr %117, align 8
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = getelementptr %struct.ubifs_znode, ptr %112, i32 0, i32 13, i32 0
  %122 = call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %121, ptr noundef %112, i32 noundef 0) #13
  br label %123

123:                                              ; preds = %120, %116
  %124 = phi ptr [ %122, %120 ], [ %118, %116 ]
  %125 = icmp ugt ptr %124, inttoptr (i32 -4096 to ptr)
  br i1 %125, label %127, label %111

126:                                              ; preds = %111
  store ptr %112, ptr %5, align 4
  store i32 0, ptr %4, align 4
  br label %130

127:                                              ; preds = %123, %108
  %128 = phi ptr [ %109, %108 ], [ %124, %123 ]
  %129 = ptrtoint ptr %128 to i32
  br label %153

130:                                              ; preds = %126, %89, %81, %77, %40
  %131 = phi i32 [ 0, %126 ], [ %85, %89 ], [ 0, %77 ], [ %36, %40 ], [ %83, %81 ]
  %132 = phi ptr [ %112, %126 ], [ %82, %89 ], [ %63, %77 ], [ %34, %40 ], [ %82, %81 ]
  %133 = getelementptr %struct.ubifs_znode, ptr %132, i32 0, i32 13, i32 %131
  %134 = getelementptr %struct.ubifs_znode, ptr %132, i32 0, i32 13, i32 %131, i32 4
  %135 = load i32, ptr %134, align 4
  %136 = call noalias align 64 ptr @__kmalloc(i32 noundef %135, i32 noundef 3136) #16
  %137 = icmp eq ptr %136, null
  br i1 %137, label %153, label %138, !prof !8

138:                                              ; preds = %130
  %139 = load i32, ptr %133, align 8
  %140 = load i32, ptr %1, align 8
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %151

142:                                              ; preds = %138
  %143 = getelementptr [2 x i32], ptr %133, i32 0, i32 1
  %144 = load i32, ptr %143, align 4
  %145 = xor i32 %144, %7
  %146 = icmp ult i32 %145, 536870912
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = call fastcc i32 @tnc_read_hashed_node(ptr noundef %0, ptr noundef %133, ptr noundef nonnull %136)
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %151, !prof !12

150:                                              ; preds = %147
  call void @mutex_unlock(ptr noundef %12) #13
  br label %156

151:                                              ; preds = %147, %142, %138
  %152 = phi i32 [ %148, %147 ], [ -2, %142 ], [ -2, %138 ]
  call void @kfree(ptr noundef nonnull %136) #13
  br label %153

153:                                              ; preds = %151, %130, %127, %90, %78, %41, %30, %11
  %154 = phi i32 [ %13, %11 ], [ %31, %30 ], [ %80, %78 ], [ %152, %151 ], [ %129, %127 ], [ -12, %130 ], [ -2, %90 ], [ -2, %41 ]
  call void @mutex_unlock(ptr noundef %12) #13
  %155 = inttoptr i32 %154 to ptr
  br label %156

156:                                              ; preds = %153, %150
  %157 = phi ptr [ %155, %153 ], [ %136, %150 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret ptr %157
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_evict_xattr_inode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_tnc_close(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 33
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 25
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 5
  br i1 %8, label %11, label %9, !prof !12

9:                                                ; preds = %5
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.1, i32 noundef 3048) #13
  %10 = load ptr, ptr %2, align 8
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi ptr [ %3, %5 ], [ %10, %9 ]
  br label %13

13:                                               ; preds = %24, %11
  %14 = phi ptr [ %16, %24 ], [ %12, %11 ]
  %15 = getelementptr inbounds %struct.ubifs_znode, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ubifs_znode, ptr %14, i32 0, i32 4
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  tail call void @kfree(ptr noundef %14) #13
  br label %22

22:                                               ; preds = %21, %13
  %23 = icmp eq ptr %16, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %22
  %25 = load ptr, ptr %2, align 8
  %26 = icmp eq ptr %16, %25
  br i1 %26, label %27, label %13

27:                                               ; preds = %24, %22, %1
  %28 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 84
  %33 = load volatile i32, ptr %32, align 4
  %34 = tail call i32 @ubifs_destroy_tnc_subtree(ptr noundef %0, ptr noundef nonnull %29) #13
  %35 = icmp eq i32 %34, %33
  br i1 %35, label %37, label %36, !prof !12

36:                                               ; preds = %31
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 3071) #13
  br label %37

37:                                               ; preds = %36, %31
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @ubifs_clean_zn_cnt) #13, !srcloc !18
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ubifs_clean_zn_cnt, ptr nonnull @ubifs_clean_zn_cnt, i32 %33, ptr nonnull elementtype(i32) @ubifs_clean_zn_cnt) #13, !srcloc !22
  br label %39

39:                                               ; preds = %37, %27
  %40 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 35
  %41 = load ptr, ptr %40, align 8
  tail call void @kfree(ptr noundef %41) #13
  %42 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 41
  %43 = load ptr, ptr %42, align 8
  tail call void @kfree(ptr noundef %43) #13
  %44 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 44
  %45 = tail call ptr @rb_first_postorder(ptr noundef %44) #13
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %47, %39
  %48 = phi ptr [ %49, %47 ], [ %45, %39 ]
  %49 = tail call ptr @rb_next_postorder(ptr noundef nonnull %48) #13
  tail call void @kfree(ptr noundef nonnull %48) #13
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %47

51:                                               ; preds = %47, %39
  store ptr null, ptr %44, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_destroy_tnc_subtree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @is_idx_node_in_tnc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc ptr @lookup_znode(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %5
  %9 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = ptrtoint ptr %6 to i32
  br label %18

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ubifs_znode, ptr %6, i32 0, i32 4
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 2, i32 1
  br label %18

18:                                               ; preds = %12, %10, %5
  %19 = phi i32 [ %11, %10 ], [ %17, %12 ], [ 0, %5 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @lookup_znode(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr [2 x i32], ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %5
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 3184) #13
  br label %11

11:                                               ; preds = %10, %5
  %12 = icmp slt i32 %2, 0
  br i1 %12, label %297, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32
  %19 = tail call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %18, ptr noundef null, i32 noundef 0) #13
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %297, label %21

21:                                               ; preds = %17, %13
  %22 = phi ptr [ %15, %13 ], [ %19, %17 ]
  %23 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, %3
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32, i32 3
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, %4
  br i1 %29, label %297, label %30

30:                                               ; preds = %26, %21
  %31 = getelementptr inbounds %struct.ubifs_znode, ptr %22, i32 0, i32 6
  %32 = load i32, ptr %31, align 8
  %33 = icmp sgt i32 %32, %2
  br i1 %33, label %34, label %297

34:                                               ; preds = %30
  %35 = add nuw nsw i32 %2, 1
  br label %36

36:                                               ; preds = %104, %34
  %37 = phi ptr [ %105, %104 ], [ %22, %34 ]
  %38 = call i32 @ubifs_search_zbranch(ptr noundef %0, ptr noundef %37, ptr noundef %1, ptr noundef nonnull %6) #13
  %39 = load i32, ptr %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %91

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.ubifs_znode, ptr %37, i32 0, i32 6
  %43 = load i32, ptr %42, align 8
  br label %44

44:                                               ; preds = %48, %41
  %45 = phi ptr [ %37, %41 ], [ %46, %48 ]
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %297, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.ubifs_znode, ptr %45, i32 0, i32 8
  %50 = load i32, ptr %49, align 8
  %51 = add i32 %50, -1
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %53, label %44

53:                                               ; preds = %48
  %54 = getelementptr %struct.ubifs_znode, ptr %46, i32 0, i32 13, i32 %51, i32 1
  %55 = load ptr, ptr %54, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = getelementptr %struct.ubifs_znode, ptr %46, i32 0, i32 13, i32 %51
  %59 = call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %58, ptr noundef nonnull %46, i32 noundef %51) #13
  br label %60

60:                                               ; preds = %57, %53
  %61 = phi ptr [ %59, %57 ], [ %55, %53 ]
  %62 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %62, label %81, label %63

63:                                               ; preds = %78, %60
  %64 = phi ptr [ %79, %78 ], [ %61, %60 ]
  %65 = getelementptr inbounds %struct.ubifs_znode, ptr %64, i32 0, i32 6
  %66 = load i32, ptr %65, align 8
  %67 = icmp eq i32 %66, %43
  br i1 %67, label %81, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.ubifs_znode, ptr %64, i32 0, i32 7
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, -1
  %72 = getelementptr %struct.ubifs_znode, ptr %64, i32 0, i32 13, i32 %71, i32 1
  %73 = load ptr, ptr %72, align 8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = getelementptr %struct.ubifs_znode, ptr %64, i32 0, i32 13, i32 %71
  %77 = call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %76, ptr noundef %64, i32 noundef %71) #13
  br label %78

78:                                               ; preds = %75, %68
  %79 = phi ptr [ %77, %75 ], [ %73, %68 ]
  %80 = icmp ugt ptr %79, inttoptr (i32 -4096 to ptr)
  br i1 %80, label %81, label %63

81:                                               ; preds = %78, %63, %60
  %82 = phi ptr [ %61, %60 ], [ %64, %63 ], [ %79, %78 ]
  %83 = icmp eq ptr %82, null
  br i1 %83, label %297, label %84

84:                                               ; preds = %81
  %85 = icmp ugt ptr %82, inttoptr (i32 -4096 to ptr)
  br i1 %85, label %297, label %86

86:                                               ; preds = %84
  %87 = call i32 @ubifs_search_zbranch(ptr noundef %0, ptr noundef nonnull %82, ptr noundef %1, ptr noundef nonnull %6) #13
  %88 = load i32, ptr %6, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91, !prof !8

90:                                               ; preds = %86
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 3223) #13
  br label %91

91:                                               ; preds = %90, %86, %36
  %92 = phi ptr [ %82, %90 ], [ %82, %86 ], [ %37, %36 ]
  %93 = getelementptr inbounds %struct.ubifs_znode, ptr %92, i32 0, i32 6
  %94 = load i32, ptr %93, align 8
  %95 = icmp eq i32 %94, %35
  %96 = load i32, ptr %6, align 4
  br i1 %95, label %107, label %97

97:                                               ; preds = %91
  %98 = getelementptr %struct.ubifs_znode, ptr %92, i32 0, i32 13, i32 %96, i32 1
  %99 = load ptr, ptr %98, align 8
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = getelementptr %struct.ubifs_znode, ptr %92, i32 0, i32 13, i32 %96
  %103 = call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %102, ptr noundef %92, i32 noundef %96) #13
  br label %104

104:                                              ; preds = %101, %97
  %105 = phi ptr [ %103, %101 ], [ %99, %97 ]
  %106 = icmp ugt ptr %105, inttoptr (i32 -4096 to ptr)
  br i1 %106, label %297, label %36

107:                                              ; preds = %91
  %108 = getelementptr %struct.ubifs_znode, ptr %92, i32 0, i32 13, i32 %96, i32 2
  %109 = load i32, ptr %108, align 4
  %110 = icmp eq i32 %109, %3
  br i1 %110, label %111, label %122

111:                                              ; preds = %107
  %112 = getelementptr %struct.ubifs_znode, ptr %92, i32 0, i32 13, i32 %96, i32 3
  %113 = load i32, ptr %112, align 8
  %114 = icmp eq i32 %113, %4
  br i1 %114, label %115, label %122

115:                                              ; preds = %111
  %116 = getelementptr %struct.ubifs_znode, ptr %92, i32 0, i32 13, i32 %96, i32 1
  %117 = load ptr, ptr %116, align 8
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %297

119:                                              ; preds = %115
  %120 = getelementptr %struct.ubifs_znode, ptr %92, i32 0, i32 13, i32 %96
  %121 = call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %120, ptr noundef %92, i32 noundef %96) #13
  br label %297

122:                                              ; preds = %111, %107
  %123 = load i32, ptr %7, align 4
  %124 = and i32 %123, -1073741824
  %125 = icmp eq i32 %124, 1073741824
  br i1 %125, label %126, label %297

126:                                              ; preds = %208, %122
  %127 = phi i32 [ %181, %208 ], [ %96, %122 ]
  %128 = phi ptr [ %180, %208 ], [ %92, %122 ]
  %129 = icmp eq i32 %127, 0
  br i1 %129, label %130, label %178

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.ubifs_znode, ptr %128, i32 0, i32 6
  %132 = load i32, ptr %131, align 8
  br label %133

133:                                              ; preds = %137, %130
  %134 = phi ptr [ %128, %130 ], [ %135, %137 ]
  %135 = load ptr, ptr %134, align 8
  %136 = icmp eq ptr %135, null
  br i1 %136, label %209, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.ubifs_znode, ptr %134, i32 0, i32 8
  %139 = load i32, ptr %138, align 8
  %140 = add i32 %139, -1
  %141 = icmp sgt i32 %140, -1
  br i1 %141, label %142, label %133

142:                                              ; preds = %137
  %143 = getelementptr %struct.ubifs_znode, ptr %135, i32 0, i32 13, i32 %140, i32 1
  %144 = load ptr, ptr %143, align 8
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = getelementptr %struct.ubifs_znode, ptr %135, i32 0, i32 13, i32 %140
  %148 = call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %147, ptr noundef nonnull %135, i32 noundef %140) #13
  br label %149

149:                                              ; preds = %146, %142
  %150 = phi ptr [ %148, %146 ], [ %144, %142 ]
  %151 = icmp ugt ptr %150, inttoptr (i32 -4096 to ptr)
  br i1 %151, label %170, label %152

152:                                              ; preds = %167, %149
  %153 = phi ptr [ %168, %167 ], [ %150, %149 ]
  %154 = getelementptr inbounds %struct.ubifs_znode, ptr %153, i32 0, i32 6
  %155 = load i32, ptr %154, align 8
  %156 = icmp eq i32 %155, %132
  br i1 %156, label %170, label %157

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.ubifs_znode, ptr %153, i32 0, i32 7
  %159 = load i32, ptr %158, align 4
  %160 = add i32 %159, -1
  %161 = getelementptr %struct.ubifs_znode, ptr %153, i32 0, i32 13, i32 %160, i32 1
  %162 = load ptr, ptr %161, align 8
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %157
  %165 = getelementptr %struct.ubifs_znode, ptr %153, i32 0, i32 13, i32 %160
  %166 = call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %165, ptr noundef %153, i32 noundef %160) #13
  br label %167

167:                                              ; preds = %164, %157
  %168 = phi ptr [ %166, %164 ], [ %162, %157 ]
  %169 = icmp ugt ptr %168, inttoptr (i32 -4096 to ptr)
  br i1 %169, label %170, label %152

170:                                              ; preds = %167, %152, %149
  %171 = phi ptr [ %150, %149 ], [ %153, %152 ], [ %168, %167 ]
  %172 = icmp eq ptr %171, null
  br i1 %172, label %209, label %173

173:                                              ; preds = %170
  %174 = icmp ugt ptr %171, inttoptr (i32 -4096 to ptr)
  br i1 %174, label %297, label %175

175:                                              ; preds = %173
  %176 = getelementptr inbounds %struct.ubifs_znode, ptr %171, i32 0, i32 7
  %177 = load i32, ptr %176, align 4
  br label %178

178:                                              ; preds = %175, %126
  %179 = phi i32 [ %177, %175 ], [ %127, %126 ]
  %180 = phi ptr [ %171, %175 ], [ %128, %126 ]
  %181 = add i32 %179, -1
  store i32 %181, ptr %6, align 4
  %182 = getelementptr %struct.ubifs_znode, ptr %180, i32 0, i32 13, i32 %181, i32 2
  %183 = load i32, ptr %182, align 4
  %184 = icmp eq i32 %183, %3
  br i1 %184, label %185, label %196

185:                                              ; preds = %178
  %186 = getelementptr %struct.ubifs_znode, ptr %180, i32 0, i32 13, i32 %181, i32 3
  %187 = load i32, ptr %186, align 8
  %188 = icmp eq i32 %187, %4
  br i1 %188, label %189, label %196

189:                                              ; preds = %185
  %190 = getelementptr %struct.ubifs_znode, ptr %180, i32 0, i32 13, i32 %181, i32 1
  %191 = load ptr, ptr %190, align 8
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %297

193:                                              ; preds = %189
  %194 = getelementptr %struct.ubifs_znode, ptr %180, i32 0, i32 13, i32 %181
  %195 = call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %194, ptr noundef %180, i32 noundef %181) #13
  br label %297

196:                                              ; preds = %185, %178
  %197 = getelementptr %struct.ubifs_znode, ptr %180, i32 0, i32 13, i32 %181
  %198 = load i32, ptr %197, align 8
  %199 = load i32, ptr %1, align 8
  %200 = icmp ult i32 %198, %199
  br i1 %200, label %209, label %201

201:                                              ; preds = %196
  %202 = icmp ugt i32 %198, %199
  br i1 %202, label %208, label %203

203:                                              ; preds = %201
  %204 = getelementptr [2 x i32], ptr %197, i32 0, i32 1
  %205 = load i32, ptr %204, align 4
  %206 = load i32, ptr %7, align 4
  %207 = icmp ult i32 %205, %206
  br i1 %207, label %209, label %208

208:                                              ; preds = %203, %201
  br label %126

209:                                              ; preds = %203, %196, %170, %133
  br label %210

210:                                              ; preds = %294, %209
  %211 = phi i32 [ %263, %294 ], [ %96, %209 ]
  %212 = phi ptr [ %264, %294 ], [ %92, %209 ]
  %213 = add i32 %211, 1
  store i32 %213, ptr %6, align 4
  %214 = getelementptr inbounds %struct.ubifs_znode, ptr %212, i32 0, i32 7
  %215 = load i32, ptr %214, align 4
  %216 = icmp slt i32 %213, %215
  br i1 %216, label %262, label %217

217:                                              ; preds = %210
  %218 = getelementptr inbounds %struct.ubifs_znode, ptr %212, i32 0, i32 6
  %219 = load i32, ptr %218, align 8
  br label %220

220:                                              ; preds = %224, %217
  %221 = phi ptr [ %212, %217 ], [ %222, %224 ]
  %222 = load ptr, ptr %221, align 8
  %223 = icmp eq ptr %222, null
  br i1 %223, label %297, label %224

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.ubifs_znode, ptr %221, i32 0, i32 8
  %226 = load i32, ptr %225, align 8
  %227 = add i32 %226, 1
  %228 = getelementptr inbounds %struct.ubifs_znode, ptr %222, i32 0, i32 7
  %229 = load i32, ptr %228, align 4
  %230 = icmp slt i32 %227, %229
  br i1 %230, label %231, label %220

231:                                              ; preds = %224
  %232 = getelementptr %struct.ubifs_znode, ptr %222, i32 0, i32 13, i32 %227, i32 1
  %233 = load ptr, ptr %232, align 8
  %234 = icmp eq ptr %233, null
  br i1 %234, label %235, label %238

235:                                              ; preds = %231
  %236 = getelementptr %struct.ubifs_znode, ptr %222, i32 0, i32 13, i32 %227
  %237 = call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %236, ptr noundef nonnull %222, i32 noundef %227) #13
  br label %238

238:                                              ; preds = %235, %231
  %239 = phi ptr [ %237, %235 ], [ %233, %231 ]
  %240 = icmp ugt ptr %239, inttoptr (i32 -4096 to ptr)
  br i1 %240, label %256, label %241

241:                                              ; preds = %253, %238
  %242 = phi ptr [ %254, %253 ], [ %239, %238 ]
  %243 = getelementptr inbounds %struct.ubifs_znode, ptr %242, i32 0, i32 6
  %244 = load i32, ptr %243, align 8
  %245 = icmp eq i32 %244, %219
  br i1 %245, label %256, label %246

246:                                              ; preds = %241
  %247 = getelementptr %struct.ubifs_znode, ptr %242, i32 0, i32 13, i32 0, i32 1
  %248 = load ptr, ptr %247, align 8
  %249 = icmp eq ptr %248, null
  br i1 %249, label %250, label %253

250:                                              ; preds = %246
  %251 = getelementptr %struct.ubifs_znode, ptr %242, i32 0, i32 13, i32 0
  %252 = call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %251, ptr noundef %242, i32 noundef 0) #13
  br label %253

253:                                              ; preds = %250, %246
  %254 = phi ptr [ %252, %250 ], [ %248, %246 ]
  %255 = icmp ugt ptr %254, inttoptr (i32 -4096 to ptr)
  br i1 %255, label %256, label %241

256:                                              ; preds = %253, %241, %238
  %257 = phi ptr [ %239, %238 ], [ %242, %241 ], [ %254, %253 ]
  %258 = icmp eq ptr %257, null
  br i1 %258, label %297, label %259

259:                                              ; preds = %256
  %260 = icmp ugt ptr %257, inttoptr (i32 -4096 to ptr)
  br i1 %260, label %297, label %261

261:                                              ; preds = %259
  store i32 0, ptr %6, align 4
  br label %262

262:                                              ; preds = %261, %210
  %263 = phi i32 [ 0, %261 ], [ %213, %210 ]
  %264 = phi ptr [ %257, %261 ], [ %212, %210 ]
  %265 = getelementptr %struct.ubifs_znode, ptr %264, i32 0, i32 13, i32 %263, i32 2
  %266 = load i32, ptr %265, align 4
  %267 = icmp eq i32 %266, %3
  br i1 %267, label %268, label %279

268:                                              ; preds = %262
  %269 = getelementptr %struct.ubifs_znode, ptr %264, i32 0, i32 13, i32 %263, i32 3
  %270 = load i32, ptr %269, align 8
  %271 = icmp eq i32 %270, %4
  br i1 %271, label %272, label %279

272:                                              ; preds = %268
  %273 = getelementptr %struct.ubifs_znode, ptr %264, i32 0, i32 13, i32 %263, i32 1
  %274 = load ptr, ptr %273, align 8
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %297

276:                                              ; preds = %272
  %277 = getelementptr %struct.ubifs_znode, ptr %264, i32 0, i32 13, i32 %263
  %278 = call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %277, ptr noundef %264, i32 noundef %263) #13
  br label %297

279:                                              ; preds = %268, %262
  %280 = getelementptr %struct.ubifs_znode, ptr %264, i32 0, i32 13, i32 %263
  %281 = load i32, ptr %280, align 8
  %282 = load i32, ptr %1, align 8
  %283 = icmp ult i32 %281, %282
  br i1 %283, label %294, label %284

284:                                              ; preds = %279
  %285 = icmp ugt i32 %281, %282
  br i1 %285, label %297, label %286

286:                                              ; preds = %284
  %287 = getelementptr [2 x i32], ptr %280, i32 0, i32 1
  %288 = load i32, ptr %287, align 4
  %289 = load i32, ptr %7, align 4
  %290 = icmp ult i32 %288, %289
  br i1 %290, label %294, label %291

291:                                              ; preds = %286
  %292 = icmp ugt i32 %288, %289
  %293 = zext i1 %292 to i32
  br label %294

294:                                              ; preds = %291, %286, %279
  %295 = phi i32 [ -1, %279 ], [ -1, %286 ], [ %293, %291 ]
  %296 = icmp sgt i32 %295, 0
  br i1 %296, label %297, label %210

297:                                              ; preds = %294, %284, %276, %272, %259, %256, %220, %193, %189, %173, %122, %119, %115, %104, %84, %81, %44, %30, %26, %17, %11
  %298 = phi ptr [ %19, %17 ], [ %22, %26 ], [ null, %30 ], [ null, %122 ], [ inttoptr (i32 -22 to ptr), %11 ], [ %121, %119 ], [ %117, %115 ], [ %195, %193 ], [ %191, %189 ], [ %278, %276 ], [ %274, %272 ], [ null, %220 ], [ null, %284 ], [ null, %256 ], [ null, %294 ], [ %257, %259 ], [ %171, %173 ], [ null, %44 ], [ %105, %104 ], [ %82, %84 ], [ null, %81 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  ret ptr %298
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_tnc_has_node(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 31
  tail call void @mutex_lock(ptr noundef %9) #13
  %10 = icmp eq i32 %5, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %6
  %12 = tail call fastcc ptr @lookup_znode(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %201, label %14

14:                                               ; preds = %11
  %15 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %21, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.ubifs_znode, ptr %12, i32 0, i32 4
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = xor i32 %19, 1
  br label %201

21:                                               ; preds = %14
  %22 = ptrtoint ptr %12 to i32
  %23 = icmp slt ptr %12, null
  br i1 %23, label %201, label %24

24:                                               ; preds = %21
  %25 = icmp ult ptr %12, inttoptr (i32 3 to ptr)
  br i1 %25, label %198, label %26

26:                                               ; preds = %24
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ubifs/tnc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3420, 0\0A.popsection", ""() #13, !srcloc !23
  unreachable

27:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store ptr null, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store i32 0, ptr %8, align 4, !annotation !9
  %28 = getelementptr [2 x i32], ptr %1, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, -1073741824
  %31 = icmp ne i32 %30, 1073741824
  %32 = call i32 @ubifs_lookup_level0(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %8) #13
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %196, label %34

34:                                               ; preds = %27
  %35 = icmp eq i32 %32, 0
  br i1 %35, label %196, label %36

36:                                               ; preds = %34
  %37 = load ptr, ptr %7, align 4
  %38 = load i32, ptr %8, align 4
  %39 = getelementptr %struct.ubifs_znode, ptr %37, i32 0, i32 13, i32 %38, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, %3
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = getelementptr %struct.ubifs_znode, ptr %37, i32 0, i32 13, i32 %38, i32 3
  %44 = load i32, ptr %43, align 8
  %45 = icmp eq i32 %44, %4
  %46 = select i1 %45, i1 true, i1 %31
  %47 = zext i1 %45 to i32
  br i1 %46, label %196, label %49

48:                                               ; preds = %36
  br i1 %31, label %196, label %49

49:                                               ; preds = %48, %42
  br label %50

50:                                               ; preds = %119, %49
  %51 = phi ptr [ %37, %49 ], [ %101, %119 ]
  %52 = phi i32 [ %38, %49 ], [ %100, %119 ]
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = add nsw i32 %52, -1
  store i32 %55, ptr %8, align 4
  br label %99

56:                                               ; preds = %60, %50
  %57 = phi ptr [ %58, %60 ], [ %51, %50 ]
  %58 = load ptr, ptr %57, align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %120, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.ubifs_znode, ptr %57, i32 0, i32 8
  %62 = load i32, ptr %61, align 8
  %63 = add i32 %62, -1
  %64 = icmp sgt i32 %63, -1
  br i1 %64, label %65, label %56

65:                                               ; preds = %60
  %66 = getelementptr %struct.ubifs_znode, ptr %58, i32 0, i32 13, i32 %63, i32 1
  %67 = load ptr, ptr %66, align 8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = getelementptr %struct.ubifs_znode, ptr %58, i32 0, i32 13, i32 %63
  %71 = call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %70, ptr noundef nonnull %58, i32 noundef %63) #13
  br label %72

72:                                               ; preds = %69, %65
  %73 = phi ptr [ %71, %69 ], [ %67, %65 ]
  %74 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %74, label %94, label %75

75:                                               ; preds = %90, %72
  %76 = phi ptr [ %91, %90 ], [ %73, %72 ]
  %77 = getelementptr inbounds %struct.ubifs_znode, ptr %76, i32 0, i32 6
  %78 = load i32, ptr %77, align 8
  %79 = icmp eq i32 %78, 0
  %80 = getelementptr inbounds %struct.ubifs_znode, ptr %76, i32 0, i32 7
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %81, -1
  br i1 %79, label %93, label %83

83:                                               ; preds = %75
  %84 = getelementptr %struct.ubifs_znode, ptr %76, i32 0, i32 13, i32 %82, i32 1
  %85 = load ptr, ptr %84, align 8
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = getelementptr %struct.ubifs_znode, ptr %76, i32 0, i32 13, i32 %82
  %89 = call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %88, ptr noundef %76, i32 noundef %82) #13
  br label %90

90:                                               ; preds = %87, %83
  %91 = phi ptr [ %89, %87 ], [ %85, %83 ]
  %92 = icmp ugt ptr %91, inttoptr (i32 -4096 to ptr)
  br i1 %92, label %94, label %75

93:                                               ; preds = %75
  store ptr %76, ptr %7, align 4
  store i32 %82, ptr %8, align 4
  br label %99

94:                                               ; preds = %90, %72
  %95 = phi ptr [ %73, %72 ], [ %91, %90 ]
  %96 = ptrtoint ptr %95 to i32
  switch i32 %96, label %194 [
    i32 -2, label %120
    i32 0, label %97
  ]

97:                                               ; preds = %94
  %98 = load i32, ptr %8, align 4
  br label %99

99:                                               ; preds = %97, %93, %54
  %100 = phi i32 [ %82, %93 ], [ %55, %54 ], [ %98, %97 ]
  %101 = phi ptr [ %76, %93 ], [ %51, %54 ], [ %51, %97 ]
  %102 = getelementptr %struct.ubifs_znode, ptr %101, i32 0, i32 13, i32 %100
  %103 = load i32, ptr %1, align 8
  %104 = load i32, ptr %102, align 8
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %120

106:                                              ; preds = %99
  %107 = load i32, ptr %28, align 4
  %108 = getelementptr [2 x i32], ptr %102, i32 0, i32 1
  %109 = load i32, ptr %108, align 4
  %110 = icmp eq i32 %107, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %106
  %112 = getelementptr %struct.ubifs_znode, ptr %101, i32 0, i32 13, i32 %100, i32 2
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, %3
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = getelementptr %struct.ubifs_znode, ptr %101, i32 0, i32 13, i32 %100, i32 3
  %117 = load i32, ptr %116, align 8
  %118 = icmp eq i32 %117, %4
  br i1 %118, label %196, label %119

119:                                              ; preds = %115, %111
  br label %50

120:                                              ; preds = %106, %99, %94, %56
  store ptr %37, ptr %7, align 4
  store i32 %38, ptr %8, align 4
  br label %121

121:                                              ; preds = %191, %120
  %122 = phi ptr [ %37, %120 ], [ %173, %191 ]
  %123 = phi i32 [ %38, %120 ], [ %172, %191 ]
  %124 = add i32 %123, 1
  %125 = getelementptr inbounds %struct.ubifs_znode, ptr %122, i32 0, i32 7
  %126 = load i32, ptr %125, align 4
  %127 = icmp slt i32 %124, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  store i32 %124, ptr %8, align 4
  br label %171

129:                                              ; preds = %133, %121
  %130 = phi ptr [ %131, %133 ], [ %122, %121 ]
  %131 = load ptr, ptr %130, align 8
  %132 = icmp eq ptr %131, null
  br i1 %132, label %196, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.ubifs_znode, ptr %130, i32 0, i32 8
  %135 = load i32, ptr %134, align 8
  %136 = add i32 %135, 1
  %137 = getelementptr inbounds %struct.ubifs_znode, ptr %131, i32 0, i32 7
  %138 = load i32, ptr %137, align 4
  %139 = icmp slt i32 %136, %138
  br i1 %139, label %140, label %129

140:                                              ; preds = %133
  %141 = getelementptr %struct.ubifs_znode, ptr %131, i32 0, i32 13, i32 %136, i32 1
  %142 = load ptr, ptr %141, align 8
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = getelementptr %struct.ubifs_znode, ptr %131, i32 0, i32 13, i32 %136
  %146 = call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %145, ptr noundef nonnull %131, i32 noundef %136) #13
  br label %147

147:                                              ; preds = %144, %140
  %148 = phi ptr [ %146, %144 ], [ %142, %140 ]
  %149 = icmp ugt ptr %148, inttoptr (i32 -4096 to ptr)
  br i1 %149, label %166, label %150

150:                                              ; preds = %162, %147
  %151 = phi ptr [ %163, %162 ], [ %148, %147 ]
  %152 = getelementptr inbounds %struct.ubifs_znode, ptr %151, i32 0, i32 6
  %153 = load i32, ptr %152, align 8
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %165, label %155

155:                                              ; preds = %150
  %156 = getelementptr %struct.ubifs_znode, ptr %151, i32 0, i32 13, i32 0, i32 1
  %157 = load ptr, ptr %156, align 8
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = getelementptr %struct.ubifs_znode, ptr %151, i32 0, i32 13, i32 0
  %161 = call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %160, ptr noundef %151, i32 noundef 0) #13
  br label %162

162:                                              ; preds = %159, %155
  %163 = phi ptr [ %161, %159 ], [ %157, %155 ]
  %164 = icmp ugt ptr %163, inttoptr (i32 -4096 to ptr)
  br i1 %164, label %166, label %150

165:                                              ; preds = %150
  store ptr %151, ptr %7, align 4
  store i32 0, ptr %8, align 4
  br label %171

166:                                              ; preds = %162, %147
  %167 = phi ptr [ %148, %147 ], [ %163, %162 ]
  %168 = ptrtoint ptr %167 to i32
  switch i32 %168, label %192 [
    i32 0, label %169
    i32 -2, label %196
  ]

169:                                              ; preds = %166
  %170 = load i32, ptr %8, align 4
  br label %171

171:                                              ; preds = %169, %165, %128
  %172 = phi i32 [ 0, %165 ], [ %124, %128 ], [ %170, %169 ]
  %173 = phi ptr [ %151, %165 ], [ %122, %128 ], [ %122, %169 ]
  %174 = getelementptr %struct.ubifs_znode, ptr %173, i32 0, i32 13, i32 %172
  %175 = load i32, ptr %1, align 8
  %176 = load i32, ptr %174, align 8
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %196

178:                                              ; preds = %171
  %179 = load i32, ptr %28, align 4
  %180 = getelementptr [2 x i32], ptr %174, i32 0, i32 1
  %181 = load i32, ptr %180, align 4
  %182 = icmp eq i32 %179, %181
  br i1 %182, label %183, label %196

183:                                              ; preds = %178
  %184 = getelementptr %struct.ubifs_znode, ptr %173, i32 0, i32 13, i32 %172, i32 2
  %185 = load i32, ptr %184, align 4
  %186 = icmp eq i32 %185, %3
  br i1 %186, label %187, label %191

187:                                              ; preds = %183
  %188 = getelementptr %struct.ubifs_znode, ptr %173, i32 0, i32 13, i32 %172, i32 3
  %189 = load i32, ptr %188, align 8
  %190 = icmp eq i32 %189, %4
  br i1 %190, label %196, label %191

191:                                              ; preds = %187, %183
  br label %121

192:                                              ; preds = %166
  %193 = ptrtoint ptr %167 to i32
  br label %196

194:                                              ; preds = %94
  %195 = ptrtoint ptr %95 to i32
  br label %196

196:                                              ; preds = %194, %192, %187, %178, %171, %166, %129, %115, %48, %42, %34, %27
  %197 = phi i32 [ %32, %27 ], [ 0, %34 ], [ %47, %42 ], [ 0, %48 ], [ %193, %192 ], [ %195, %194 ], [ 0, %129 ], [ 0, %166 ], [ 1, %187 ], [ 0, %171 ], [ 0, %178 ], [ 1, %115 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  br label %201

198:                                              ; preds = %24
  %199 = getelementptr inbounds [3 x i32], ptr @switch.table.ubifs_tnc_has_node, i32 0, i32 %22
  %200 = load i32, ptr %199, align 4
  br label %201

201:                                              ; preds = %198, %196, %21, %16, %11
  %202 = phi i32 [ %22, %21 ], [ %197, %196 ], [ 0, %11 ], [ %200, %198 ], [ %20, %16 ]
  call void @mutex_unlock(ptr noundef %9) #13
  ret i32 %202
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_dirty_idx_node(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 31
  tail call void @mutex_lock(ptr noundef %6) #13
  %7 = tail call fastcc ptr @lookup_znode(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  %12 = ptrtoint ptr %7 to i32
  br label %18

13:                                               ; preds = %9
  %14 = tail call fastcc ptr @dirty_cow_bottom_up(ptr noundef %0, ptr noundef nonnull %7)
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  %16 = ptrtoint ptr %14 to i32
  %17 = select i1 %15, i32 %16, i32 0
  br label %18

18:                                               ; preds = %13, %11, %5
  %19 = phi i32 [ %12, %11 ], [ 0, %5 ], [ %17, %13 ]
  tail call void @mutex_unlock(ptr noundef %6) #13
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dbg_check_inode_size(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.ubifs_key, align 8
  %6 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store ptr null, ptr %6, align 4, !annotation !9
  %7 = load i16, ptr %1, align 8
  %8 = and i16 %7, -4096
  %9 = icmp eq i16 %8, -32768
  br i1 %9, label %10, label %125

10:                                               ; preds = %3
  %11 = load i8, ptr @ubifs_dbg, align 4
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ubifs_debug_info, ptr %16, i32 0, i32 19
  %18 = load i8, ptr %17, align 4
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %125, label %21

21:                                               ; preds = %14, %10
  %22 = add i64 %2, 4095
  %23 = lshr i64 %22, 12
  %24 = trunc i64 %23 to i32
  %25 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %24, 536870912
  br i1 %27, label %30, label %28, !prof !12

28:                                               ; preds = %21
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 270) #13
  %29 = load i32, ptr %25, align 4
  br label %30

30:                                               ; preds = %28, %21
  %31 = phi i32 [ %26, %21 ], [ %29, %28 ]
  store i32 %26, ptr %5, align 8
  %32 = or i32 %24, 536870912
  %33 = getelementptr inbounds [2 x i32], ptr %5, i32 0, i32 1
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 31
  tail call void @mutex_lock(ptr noundef %34) #13
  %35 = call i32 @ubifs_lookup_level0(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %4)
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %123, label %37

37:                                               ; preds = %30
  %38 = icmp eq i32 %35, 0
  br i1 %38, label %39, label %115

39:                                               ; preds = %37
  %40 = load ptr, ptr %6, align 4
  %41 = load i32, ptr %4, align 4
  %42 = add i32 %41, 1
  %43 = getelementptr inbounds %struct.ubifs_znode, ptr %40, i32 0, i32 7
  %44 = load i32, ptr %43, align 4
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 %42, ptr %4, align 4
  br label %92

47:                                               ; preds = %51, %39
  %48 = phi ptr [ %49, %51 ], [ %40, %39 ]
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %123, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.ubifs_znode, ptr %48, i32 0, i32 8
  %53 = load i32, ptr %52, align 8
  %54 = add i32 %53, 1
  %55 = getelementptr inbounds %struct.ubifs_znode, ptr %49, i32 0, i32 7
  %56 = load i32, ptr %55, align 4
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %47

58:                                               ; preds = %51
  %59 = getelementptr %struct.ubifs_znode, ptr %49, i32 0, i32 13, i32 %54, i32 1
  %60 = load ptr, ptr %59, align 8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = getelementptr %struct.ubifs_znode, ptr %49, i32 0, i32 13, i32 %54
  %64 = call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %63, ptr noundef nonnull %49, i32 noundef %54) #13
  br label %65

65:                                               ; preds = %62, %58
  %66 = phi ptr [ %64, %62 ], [ %60, %58 ]
  %67 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  br i1 %67, label %84, label %68

68:                                               ; preds = %80, %65
  %69 = phi ptr [ %81, %80 ], [ %66, %65 ]
  %70 = getelementptr inbounds %struct.ubifs_znode, ptr %69, i32 0, i32 6
  %71 = load i32, ptr %70, align 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %68
  %74 = getelementptr %struct.ubifs_znode, ptr %69, i32 0, i32 13, i32 0, i32 1
  %75 = load ptr, ptr %74, align 8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = getelementptr %struct.ubifs_znode, ptr %69, i32 0, i32 13, i32 0
  %79 = call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %78, ptr noundef %69, i32 noundef 0) #13
  br label %80

80:                                               ; preds = %77, %73
  %81 = phi ptr [ %79, %77 ], [ %75, %73 ]
  %82 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  br i1 %82, label %84, label %68

83:                                               ; preds = %68
  store ptr %69, ptr %6, align 4
  store i32 0, ptr %4, align 4
  br label %92

84:                                               ; preds = %80, %65
  %85 = phi ptr [ %66, %65 ], [ %81, %80 ]
  %86 = ptrtoint ptr %85 to i32
  %87 = icmp eq ptr %85, inttoptr (i32 -2 to ptr)
  br i1 %87, label %123, label %88

88:                                               ; preds = %84
  %89 = icmp slt ptr %85, null
  br i1 %89, label %123, label %90

90:                                               ; preds = %88
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 3514) #13
  %91 = load i32, ptr %4, align 4
  br label %92

92:                                               ; preds = %90, %83, %46
  %93 = phi i32 [ %91, %90 ], [ %42, %46 ], [ 0, %83 ]
  %94 = phi ptr [ %40, %90 ], [ %40, %46 ], [ %69, %83 ]
  %95 = phi i32 [ %86, %90 ], [ 0, %46 ], [ 0, %83 ]
  %96 = getelementptr %struct.ubifs_znode, ptr %94, i32 0, i32 13, i32 %93
  %97 = load i32, ptr %96, align 8
  %98 = load i32, ptr %5, align 8
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %123, label %100

100:                                              ; preds = %92
  %101 = icmp ugt i32 %97, %98
  br i1 %101, label %107, label %102

102:                                              ; preds = %100
  %103 = getelementptr [2 x i32], ptr %96, i32 0, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = load i32, ptr %33, align 4
  %106 = icmp ult i32 %104, %105
  br i1 %106, label %123, label %107

107:                                              ; preds = %102, %100
  %108 = icmp ult i32 %97, %31
  br i1 %108, label %115, label %109

109:                                              ; preds = %107
  %110 = icmp ugt i32 %97, %31
  br i1 %110, label %123, label %111

111:                                              ; preds = %109
  %112 = getelementptr [2 x i32], ptr %96, i32 0, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = icmp ugt i32 %113, 1073741823
  br i1 %114, label %123, label %115

115:                                              ; preds = %111, %107, %37
  %116 = phi ptr [ %5, %37 ], [ %96, %107 ], [ %96, %111 ]
  %117 = getelementptr [2 x i32], ptr %116, i32 0, i32 1
  %118 = load i32, ptr %117, align 4
  %119 = and i32 %118, 536870911
  %120 = load i32, ptr %25, align 4
  %121 = zext i32 %119 to i64
  %122 = shl nuw nsw i64 %121, 12
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %120, i64 noundef %2, i64 noundef %122) #13
  call void @mutex_unlock(ptr noundef %34) #13
  call void @ubifs_dump_inode(ptr noundef %0, ptr noundef %1) #13
  call void @dump_stack() #14
  br label %125

123:                                              ; preds = %111, %109, %102, %92, %88, %84, %47, %30
  %124 = phi i32 [ %35, %30 ], [ %86, %88 ], [ 0, %84 ], [ %95, %92 ], [ %95, %102 ], [ %95, %111 ], [ %95, %109 ], [ 0, %47 ]
  call void @mutex_unlock(ptr noundef %34) #13
  br label %125

125:                                              ; preds = %123, %115, %14, %3
  %126 = phi i32 [ %124, %123 ], [ -22, %115 ], [ 0, %3 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %126
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_validate_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_check_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @dirty_cow_znode(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ubifs_znode, ptr %4, i32 0, i32 4
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %2
  %10 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %5) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %100

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 83
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #13, !srcloc !18
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #13, !srcloc !19
  %15 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 84
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #13, !srcloc !18
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #13, !srcloc !22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @ubifs_clean_zn_cnt) #13, !srcloc !18
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ubifs_clean_zn_cnt, ptr nonnull @ubifs_clean_zn_cnt, i32 1, ptr nonnull elementtype(i32) @ubifs_clean_zn_cnt) #13, !srcloc !22
  %18 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 7
  %23 = and i32 %22, -8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 88
  %26 = load i64, ptr %25, align 8
  %27 = sub i64 %26, %24
  store i64 %27, ptr %25, align 8
  %28 = tail call i32 @ubifs_update_one_lp(ptr noundef %0, i32 noundef %19, i32 noundef -2147483647, i32 noundef %21, i32 noundef 0, i32 noundef 0) #13
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %100, label %30, !prof !12

30:                                               ; preds = %12
  %31 = inttoptr i32 %28 to ptr
  br label %100

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 94
  %34 = load i32, ptr %33, align 8
  %35 = tail call ptr @kmemdup(ptr noundef %4, i32 noundef %34, i32 noundef 3136) #13
  %36 = icmp eq ptr %35, null
  br i1 %36, label %100, label %37, !prof !8

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.ubifs_znode, ptr %35, i32 0, i32 1
  store ptr null, ptr %38, align 4
  %39 = getelementptr inbounds %struct.ubifs_znode, ptr %35, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, -4
  %42 = or i32 %41, 1
  store i32 %42, ptr %39, align 4
  %43 = load volatile i32, ptr %5, align 4
  %44 = and i32 %43, 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46, !prof !12

46:                                               ; preds = %37
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 202) #13
  %47 = load i32, ptr %5, align 4
  br label %48

48:                                               ; preds = %46, %37
  %49 = phi i32 [ %47, %46 ], [ %43, %37 ]
  %50 = or i32 %49, 4
  store i32 %50, ptr %5, align 4
  %51 = getelementptr inbounds %struct.ubifs_znode, ptr %4, i32 0, i32 6
  %52 = load i32, ptr %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.ubifs_znode, ptr %35, i32 0, i32 7
  %56 = load i32, ptr %55, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %64, %54
  %59 = phi i32 [ %65, %64 ], [ 0, %54 ]
  %60 = getelementptr %struct.ubifs_znode, ptr %35, i32 0, i32 13, i32 %59, i32 1
  %61 = load ptr, ptr %60, align 8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  store ptr %35, ptr %61, align 8
  br label %64

64:                                               ; preds = %63, %58
  %65 = add nuw nsw i32 %59, 1
  %66 = icmp eq i32 %65, %56
  br i1 %66, label %67, label %58

67:                                               ; preds = %64, %54, %48
  %68 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 83
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %68) #13, !srcloc !18
  %69 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %68, ptr %68, i32 1, ptr elementtype(i32) %68) #13, !srcloc !19
  %70 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %70, label %100, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 4
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  store ptr %35, ptr %3, align 8
  %76 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 2
  store i32 0, ptr %76, align 4
  %77 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 3
  store i32 0, ptr %77, align 8
  store i32 0, ptr %72, align 4
  br label %100

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 2
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 3
  %82 = load i32, ptr %81, align 8
  %83 = tail call fastcc i32 @insert_old_idx(ptr noundef %0, i32 noundef %80, i32 noundef %82)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85, !prof !12

85:                                               ; preds = %78
  %86 = inttoptr i32 %83 to ptr
  br label %100

87:                                               ; preds = %78
  %88 = load i32, ptr %79, align 4
  %89 = load i32, ptr %72, align 4
  %90 = add i32 %89, 7
  %91 = and i32 %90, -8
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 88
  %94 = load i64, ptr %93, align 8
  %95 = sub i64 %94, %92
  store i64 %95, ptr %93, align 8
  %96 = tail call i32 @ubifs_update_one_lp(ptr noundef %0, i32 noundef %88, i32 noundef -2147483647, i32 noundef %89, i32 noundef 0, i32 noundef 0) #13
  store ptr %35, ptr %3, align 8
  store i32 0, ptr %79, align 4
  store i32 0, ptr %81, align 8
  store i32 0, ptr %72, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98, !prof !12

98:                                               ; preds = %87
  %99 = inttoptr i32 %96 to ptr
  br label %100

100:                                              ; preds = %98, %87, %85, %75, %67, %32, %30, %12, %9
  %101 = phi ptr [ %86, %85 ], [ %99, %98 ], [ %31, %30 ], [ %4, %12 ], [ %4, %9 ], [ %35, %67 ], [ %35, %87 ], [ %35, %75 ], [ inttoptr (i32 -12 to ptr), %32 ]
  ret ptr %101
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_update_one_lp(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fallible_matches_name(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %31

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %9, i32 noundef 3136) #16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %55, label %12

12:                                               ; preds = %7
  %13 = tail call fastcc i32 @fallible_read_node(ptr noundef %0, ptr noundef %1, ptr noundef %1, ptr noundef nonnull %10)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %53, label %15

15:                                               ; preds = %12
  switch i32 %13, label %16 [
    i32 0, label %53
    i32 1, label %17
  ], !prof !21

16:                                               ; preds = %15
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.1, i32 noundef 838) #13
  br label %17

17:                                               ; preds = %16, %15
  %18 = load ptr, ptr %4, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !12

20:                                               ; preds = %17
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 346) #13
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32, ptr %8, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25, !prof !8

24:                                               ; preds = %21
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 347) #13
  br label %25

25:                                               ; preds = %24, %21
  %26 = tail call i32 @ubifs_validate_entry(ptr noundef %0, ptr noundef nonnull %10) #13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store ptr %10, ptr %4, align 8
  br label %31

29:                                               ; preds = %25
  tail call void @dump_stack() #14
  %30 = load i32, ptr %8, align 4
  tail call void @ubifs_dump_node(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %30) #13
  br label %53

31:                                               ; preds = %28, %3
  %32 = phi ptr [ %5, %3 ], [ %10, %28 ]
  %33 = getelementptr inbounds %struct.ubifs_dent_node, ptr %32, i32 0, i32 5
  %34 = load i16, ptr %33, align 1
  %35 = zext i16 %34 to i32
  %36 = getelementptr inbounds %struct.ubifs_dent_node, ptr %32, i32 0, i32 7
  %37 = getelementptr inbounds %struct.fscrypt_name, ptr %2, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.fscrypt_name, ptr %2, i32 0, i32 1, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = tail call i32 @llvm.smin.i32(i32 %40, i32 %35)
  %42 = tail call i32 @memcmp(ptr noundef %36, ptr noundef %38, i32 noundef %41)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %31
  %45 = icmp eq i32 %40, %35
  br i1 %45, label %55, label %46

46:                                               ; preds = %44
  %47 = icmp ugt i32 %40, %35
  %48 = select i1 %47, i32 0, i32 2
  br label %55

49:                                               ; preds = %31
  %50 = lshr i32 %42, 30
  %51 = and i32 %50, 2
  %52 = xor i32 %51, 2
  br label %55

53:                                               ; preds = %29, %15, %12
  %54 = phi i32 [ %13, %12 ], [ %26, %29 ], [ 3, %15 ]
  tail call void @kfree(ptr noundef nonnull %10) #13
  br label %55

55:                                               ; preds = %53, %49, %46, %44, %7
  %56 = phi i32 [ %54, %53 ], [ -12, %7 ], [ 1, %44 ], [ %48, %46 ], [ %52, %49 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @matches_name(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %9, i32 noundef 3136) #16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %53, label %12

12:                                               ; preds = %7
  %13 = tail call i32 @ubifs_tnc_read_node(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %10) #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %51

15:                                               ; preds = %12
  %16 = load ptr, ptr %4, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18, !prof !12

18:                                               ; preds = %15
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 346) #13
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i32, ptr %8, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23, !prof !8

22:                                               ; preds = %19
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 347) #13
  br label %23

23:                                               ; preds = %22, %19
  %24 = tail call i32 @ubifs_validate_entry(ptr noundef %0, ptr noundef nonnull %10) #13
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store ptr %10, ptr %4, align 8
  br label %29

27:                                               ; preds = %23
  tail call void @dump_stack() #14
  %28 = load i32, ptr %8, align 4
  tail call void @ubifs_dump_node(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %28) #13
  br label %51

29:                                               ; preds = %26, %3
  %30 = phi ptr [ %5, %3 ], [ %10, %26 ]
  %31 = getelementptr inbounds %struct.ubifs_dent_node, ptr %30, i32 0, i32 5
  %32 = load i16, ptr %31, align 1
  %33 = zext i16 %32 to i32
  %34 = getelementptr inbounds %struct.ubifs_dent_node, ptr %30, i32 0, i32 7
  %35 = getelementptr inbounds %struct.fscrypt_name, ptr %2, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.fscrypt_name, ptr %2, i32 0, i32 1, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = tail call i32 @llvm.smin.i32(i32 %38, i32 %33)
  %40 = tail call i32 @memcmp(ptr noundef %34, ptr noundef %36, i32 noundef %39)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %29
  %43 = icmp eq i32 %38, %33
  br i1 %43, label %53, label %44

44:                                               ; preds = %42
  %45 = icmp ugt i32 %38, %33
  %46 = select i1 %45, i32 0, i32 2
  br label %53

47:                                               ; preds = %29
  %48 = lshr i32 %40, 30
  %49 = and i32 %48, 2
  %50 = xor i32 %49, 2
  br label %53

51:                                               ; preds = %27, %12
  %52 = phi i32 [ %13, %12 ], [ %24, %27 ]
  tail call void @kfree(ptr noundef nonnull %10) #13
  br label %53

53:                                               ; preds = %51, %47, %44, %42, %7
  %54 = phi i32 [ %52, %51 ], [ -12, %7 ], [ 1, %42 ], [ %46, %44 ], [ %50, %47 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { nounwind allocsize(0) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i64 2153563798}
!11 = !{i64 2153563937}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{!"branch_weights", i32 4000000, i32 4001}
!14 = !{i64 2149023317}
!15 = !{i64 2149019141}
!16 = !{i64 2149019216, i64 2149019243, i64 2149019290, i64 2149019312, i64 2149019340, i64 2149019360}
!17 = !{i64 2149046320}
!18 = !{i64 854713, i64 2148344684, i64 2148344710, i64 2148344757, i64 2148344779, i64 2148344807, i64 2148344827}
!19 = !{i64 2148356099, i64 2148356125, i64 2148356154, i64 2148356188, i64 2148356219, i64 2148356242}
!20 = !{!"branch_weights", i32 1, i32 2001, i32 2001, i32 2000}
!21 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!22 = !{i64 2148358456, i64 2148358482, i64 2148358511, i64 2148358545, i64 2148358576, i64 2148358599}
!23 = !{i64 2153613111, i64 2153613591, i64 2153613148, i64 2153613204, i64 2153613238, i64 2153613262, i64 2153613303, i64 2153613324, i64 2153613352, i64 2153613386}
