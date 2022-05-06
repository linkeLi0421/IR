; ModuleID = '/llk/IR/fs/ubifs/journal.c_pt.bc'
source_filename = "../fs/ubifs/journal.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%union.ubifs_key = type { [1 x i64] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.38, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.39, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.40, ptr, %struct.address_space, %struct.list_head, %union.anon.41, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.38 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.39 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.40 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.41 = type { ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ubifs_inode = type { %struct.inode, i64, i64, i32, i32, i32, i8, %struct.mutex, %struct.rw_semaphore, %struct.spinlock, i64, i64, i32, i32, i32, i32, ptr }
%struct.fscrypt_name = type { ptr, %struct.fscrypt_str, i32, i32, %struct.fscrypt_str, i8 }
%struct.fscrypt_str = type { ptr, i32 }
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.ubifs_info = type { ptr, ptr, i32, i64, i64, %struct.spinlock, i32, i32, [16 x i8], i32, i32, i32, %struct.mutex, i32, i64, %struct.rb_root, i64, %struct.spinlock, i32, ptr, i64, i64, %struct.list_head, i32, %struct.rw_semaphore, i32, %struct.spinlock, %struct.wait_queue_head, %struct.kobject, %struct.completion, i16, %struct.mutex, %struct.ubifs_zbranch, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.rb_root, ptr, ptr, i32, i32, %struct.mutex, %struct.bu_info, %struct.mutex, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, [14 x %struct.ubifs_node_range], ptr, %struct.ubi_device_info, %struct.ubi_volume_info, %struct.rb_root, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, [24 x i8], i32, i32, i32, ptr, %struct.list_head, i32, i32, i32, %struct.list_head, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [3 x %struct.ubifs_lpt_heap], %struct.ubifs_lpt_heap, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i64, i64, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, ptr, ptr, i32, ptr, i8, %struct.list_head, %struct.list_head, i64, %struct.list_head, ptr, %struct.rb_root, %struct.ubifs_mount_opts, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ubifs_zbranch = type { %union.ubifs_key, %union.anon.72, i32, i32, i32, [0 x i8] }
%union.anon.72 = type { ptr }
%struct.bu_info = type { %union.ubifs_key, [32 x %struct.ubifs_zbranch], ptr, i32, i32, i32, i32, i32 }
%struct.ubifs_lp_stats = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.ubifs_budg_info = type { i64, i64, i64, i64, i64, i32, i8, i32, i32, i32 }
%struct.ubifs_node_range = type { %union.anon.73, i32 }
%union.anon.73 = type { i32 }
%struct.ubi_device_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ubi_volume_info = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.ubifs_lpt_heap = type { ptr, i32, i32 }
%struct.ubifs_mount_opts = type { i16, [2 x i8] }
%struct.ubifs_dent_node = type { %struct.ubifs_ch, [16 x i8], i64, i8, i8, i16, i32, [0 x i8] }
%struct.ubifs_jhead = type { %struct.ubifs_wbuf, %struct.list_head, i8, ptr }
%struct.ubifs_wbuf = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, %struct.spinlock, %struct.hrtimer, i8, i32, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ubifs_ino_node = type { %struct.ubifs_ch, [16 x i8], i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i32, i16, [26 x i8], [0 x i8] }
%struct.ubifs_data_node = type { %struct.ubifs_ch, [16 x i8], i32, i16, i16, [0 x i8] }

@.str = private unnamed_addr constant [36 x i8] c"mutex_is_locked(&host_ui->ui_mutex)\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"fs/ubifs/journal.c\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"len <= UBIFS_BLOCK_SIZE\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"compr_len <= UBIFS_BLOCK_SIZE\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Cannot delete inode, it has too much xattrs!\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"dead directory entry '%s', error %d\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"ubifs_inode(xino)->xattr\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"inode->i_nlink == 0\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"ubifs_inode(fst_dir)->data_len == 0\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"ubifs_inode(snd_dir)->data_len == 0\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"mutex_is_locked(&ubifs_inode(fst_dir)->ui_mutex)\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"mutex_is_locked(&ubifs_inode(snd_dir)->ui_mutex)\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"ubifs_inode(old_dir)->data_len == 0\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"ubifs_inode(new_dir)->data_len == 0\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"mutex_is_locked(&ubifs_inode(old_dir)->ui_mutex)\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"mutex_is_locked(&ubifs_inode(new_dir)->ui_mutex)\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"mutex_is_locked(&new_ui->ui_mutex)\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"!ui->data_len\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"S_ISREG(inode->i_mode)\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"mutex_is_locked(&ui->ui_mutex)\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"bad data node (block %u, inode %lu)\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"inode->i_nlink > 0\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"stuck in space allocation\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"too many space allocation re-tries (%d)\00", align 1
@.str.24 = private unnamed_addr constant [46 x i8] c"cannot reserve %d bytes in jhead %d, error %d\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"!c->ro_media && !c->ro_mount\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"err < 0\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"!(hash & ~UBIFS_S_KEY_HASH_MASK)\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"fs/ubifs/key.h\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"fs/ubifs/ubifs.h\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"max_xattrs < c->max_orphans\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"fs/ubifs/misc.h\00", align 1
@.str.37 = private unnamed_addr constant [35 x i8] c"!(block & ~UBIFS_S_KEY_BLOCK_MASK)\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"out_len <= UBIFS_BLOCK_SIZE\00", align 1
@switch.table.ubifs_jnl_delete_xattr = private unnamed_addr constant [12 x i8] c"\05\04\00\01\00\03\00\00\00\02\00\06", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_jnl_update(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [0 x i8], align 1
  %8 = alloca %union.ubifs_key, align 8
  %9 = alloca %union.ubifs_key, align 8
  %10 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 10
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 144
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 65
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %16, %6
  %22 = phi i1 [ true, %6 ], [ %20, %16 ]
  %23 = icmp eq i32 %4, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %26 = load i32, ptr %25, align 8
  %27 = icmp eq i32 %26, 0
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  store i64 0, ptr %8, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  store i64 0, ptr %9, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %7) #8
  %30 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 7
  %31 = tail call zeroext i1 @mutex_is_locked(ptr noundef %30) #8
  br i1 %31, label %33, label %32, !prof !9

32:                                               ; preds = %28
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 554) #8
  br label %33

33:                                               ; preds = %32, %28
  %34 = getelementptr inbounds %struct.fscrypt_name, ptr %2, i32 0, i32 1
  %35 = getelementptr inbounds %struct.fscrypt_name, ptr %2, i32 0, i32 1, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 57
  br i1 %29, label %56, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.ubifs_inode, ptr %3, i32 0, i32 15
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, 160
  %42 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 10
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 1
  %52 = icmp ne i32 %51, 0
  br label %53

53:                                               ; preds = %48, %38
  %54 = phi i1 [ true, %38 ], [ %52, %48 ]
  %55 = or i1 %22, %54
  br label %56

56:                                               ; preds = %53, %33
  %57 = phi i32 [ 160, %33 ], [ %41, %53 ]
  %58 = phi i1 [ %22, %33 ], [ %55, %53 ]
  %59 = add i32 %36, 64
  %60 = and i32 %59, -8
  %61 = add i32 %57, 7
  %62 = and i32 %61, -8
  %63 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 15
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %60, 160
  %66 = add i32 %65, %62
  %67 = add i32 %66, %64
  %68 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %67, i32 noundef 3392) #9
  %69 = icmp eq ptr %68, null
  br i1 %69, label %280, label %70

70:                                               ; preds = %56
  %71 = tail call fastcc i32 @make_reservation(ptr noundef %0, i32 noundef 1, i32 noundef %67)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %267

73:                                               ; preds = %70
  %74 = icmp eq i32 %5, 0
  %75 = getelementptr inbounds %struct.ubifs_ch, ptr %68, i32 0, i32 4
  br i1 %74, label %76, label %97

76:                                               ; preds = %73
  store i8 2, ptr %75, align 4
  %77 = load ptr, ptr %34, align 4
  %78 = icmp eq ptr %77, null
  %79 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %80 = load i32, ptr %79, align 4
  br i1 %78, label %81, label %88

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.fscrypt_name, ptr %2, i32 0, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = icmp ult i32 %83, 536870912
  br i1 %84, label %86, label %85, !prof !9

85:                                               ; preds = %81
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 169) #8
  br label %86

86:                                               ; preds = %85, %81
  store i32 %80, ptr %8, align 8
  %87 = or i32 %83, 1073741824
  br label %109

88:                                               ; preds = %76
  %89 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 66
  %90 = load ptr, ptr %89, align 4
  %91 = load i32, ptr %35, align 4
  %92 = tail call i32 %90(ptr noundef nonnull %77, i32 noundef %91) #8
  %93 = icmp ult i32 %92, 536870912
  br i1 %93, label %95, label %94, !prof !9

94:                                               ; preds = %88
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 152) #8
  br label %95

95:                                               ; preds = %94, %88
  store i32 %80, ptr %8, align 8
  %96 = or i32 %92, 1073741824
  br label %109

97:                                               ; preds = %73
  store i8 3, ptr %75, align 4
  %98 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 66
  %101 = load ptr, ptr %100, align 4
  %102 = load ptr, ptr %34, align 4
  %103 = load i32, ptr %35, align 4
  %104 = tail call i32 %101(ptr noundef %102, i32 noundef %103) #8
  %105 = icmp ult i32 %104, 536870912
  br i1 %105, label %107, label %106, !prof !9

106:                                              ; preds = %97
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 221) #8
  br label %107

107:                                              ; preds = %106, %97
  store i32 %99, ptr %8, align 8
  %108 = or i32 %104, 1610612736
  br label %109

109:                                              ; preds = %107, %95, %86
  %110 = phi i32 [ %87, %86 ], [ %96, %95 ], [ %108, %107 ]
  %111 = phi i32 [ %80, %86 ], [ %80, %95 ], [ %99, %107 ]
  %112 = getelementptr inbounds [2 x i32], ptr %8, i32 0, i32 1
  store i32 %110, ptr %112, align 4
  %113 = getelementptr inbounds %struct.ubifs_dent_node, ptr %68, i32 0, i32 1
  store i32 %111, ptr %113, align 8
  %114 = getelementptr %struct.ubifs_dent_node, ptr %68, i32 0, i32 1, i32 4
  store i32 %110, ptr %114, align 4
  %115 = getelementptr %struct.ubifs_dent_node, ptr %68, i32 0, i32 1, i32 8
  store i64 0, ptr %115, align 32
  br i1 %23, label %116, label %120

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 10
  %118 = load i32, ptr %117, align 4
  %119 = zext i32 %118 to i64
  br label %120

120:                                              ; preds = %116, %109
  %121 = phi i64 [ %119, %116 ], [ 0, %109 ]
  %122 = getelementptr inbounds %struct.ubifs_dent_node, ptr %68, i32 0, i32 2
  store i64 %121, ptr %122, align 8
  %123 = load i16, ptr %3, align 8
  %124 = and i16 %123, -4096
  %125 = zext i16 %124 to i32
  %126 = add nsw i32 %125, -4096
  %127 = lshr exact i32 %126, 12
  %128 = icmp ult i32 %126, 49152
  br i1 %128, label %130, label %129

129:                                              ; preds = %130, %120
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ubifs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 434, 0\0A.popsection", ""() #8, !srcloc !10
  unreachable

130:                                              ; preds = %120
  %131 = trunc i32 %127 to i16
  %132 = lshr i16 2731, %131
  %133 = and i16 %132, 1
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %129, label %135

135:                                              ; preds = %130
  %136 = getelementptr inbounds [12 x i8], ptr @switch.table.ubifs_jnl_delete_xattr, i32 0, i32 %127
  %137 = load i8, ptr %136, align 1
  %138 = getelementptr inbounds %struct.ubifs_dent_node, ptr %68, i32 0, i32 4
  store i8 %137, ptr %138, align 1
  %139 = load i32, ptr %35, align 4
  %140 = trunc i32 %139 to i16
  %141 = getelementptr inbounds %struct.ubifs_dent_node, ptr %68, i32 0, i32 5
  store i16 %140, ptr %141, align 2
  %142 = getelementptr inbounds %struct.ubifs_dent_node, ptr %68, i32 0, i32 7
  %143 = load ptr, ptr %34, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %142, ptr align 1 %143, i32 %139, i1 false)
  %144 = load i32, ptr %35, align 4
  %145 = getelementptr %struct.ubifs_dent_node, ptr %68, i32 0, i32 7, i32 %144
  store i8 0, ptr %145, align 1
  %146 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %147 = load i16, ptr %146, align 4
  %148 = and i16 %147, 4
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %135
  %151 = tail call i32 @prandom_u32() #8
  br label %152

152:                                              ; preds = %150, %135
  %153 = phi i32 [ %151, %150 ], [ 0, %135 ]
  %154 = getelementptr inbounds %struct.ubifs_dent_node, ptr %68, i32 0, i32 6
  store i32 %153, ptr %154, align 4
  %155 = getelementptr inbounds %struct.ubifs_dent_node, ptr %68, i32 0, i32 3
  store i8 0, ptr %155, align 16
  tail call void @ubifs_prep_grp_node(ptr noundef %0, ptr noundef nonnull %68, i32 noundef %37, i32 noundef 0) #8
  %156 = getelementptr i8, ptr %68, i32 %60
  tail call fastcc void @pack_inode(ptr noundef %0, ptr noundef %156, ptr noundef %3, i32 noundef 0)
  %157 = getelementptr i8, ptr %156, i32 %62
  tail call fastcc void @pack_inode(ptr noundef %0, ptr noundef %157, ptr noundef %1, i32 noundef 1)
  br i1 %29, label %158, label %172

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 10
  %160 = load i32, ptr %159, align 4
  %161 = tail call i32 @ubifs_add_orphan(ptr noundef %0, i32 noundef %160) #8
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  %165 = load ptr, ptr %164, align 8
  %166 = getelementptr %struct.ubifs_jhead, ptr %165, i32 1, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %166) #8
  %167 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 24
  tail call void @up_read(ptr noundef %167) #8
  br label %267

168:                                              ; preds = %158
  %169 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 4
  %170 = load i64, ptr %169, align 8
  %171 = getelementptr inbounds %struct.ubifs_inode, ptr %3, i32 0, i32 2
  store i64 %170, ptr %171, align 8
  br label %172

172:                                              ; preds = %168, %152
  %173 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  %174 = load ptr, ptr %173, align 8
  %175 = getelementptr %struct.ubifs_jhead, ptr %174, i32 1
  %176 = getelementptr %struct.ubifs_jhead, ptr %174, i32 1, i32 0, i32 2
  %177 = load i32, ptr %176, align 8
  %178 = getelementptr %struct.ubifs_jhead, ptr %174, i32 1, i32 0, i32 3
  %179 = load i32, ptr %178, align 4
  %180 = getelementptr %struct.ubifs_jhead, ptr %174, i32 1, i32 0, i32 5
  %181 = load i32, ptr %180, align 4
  %182 = add i32 %181, %179
  %183 = tail call i32 @ubifs_wbuf_write_nolock(ptr noundef %175, ptr noundef nonnull %68, i32 noundef %67) #8
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %269

185:                                              ; preds = %172
  br i1 %58, label %186, label %189

186:                                              ; preds = %185
  %187 = tail call i32 @ubifs_wbuf_sync_nolock(ptr noundef %175) #8
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %196, label %269

189:                                              ; preds = %185
  %190 = load ptr, ptr %173, align 8
  %191 = getelementptr %struct.ubifs_jhead, ptr %190, i32 1
  %192 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 10
  %193 = load i32, ptr %192, align 4
  tail call void @ubifs_wbuf_add_ino_nolock(ptr noundef %191, i32 noundef %193) #8
  %194 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %195 = load i32, ptr %194, align 4
  tail call void @ubifs_wbuf_add_ino_nolock(ptr noundef %191, i32 noundef %195) #8
  br label %196

196:                                              ; preds = %189, %186
  %197 = load ptr, ptr %173, align 8
  %198 = getelementptr %struct.ubifs_jhead, ptr %197, i32 1, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %198) #8
  tail call void @kfree(ptr noundef nonnull %68) #8
  br i1 %23, label %213, label %199

199:                                              ; preds = %196
  %200 = load ptr, ptr %34, align 4
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %206

202:                                              ; preds = %199
  %203 = getelementptr inbounds %struct.fscrypt_name, ptr %2, i32 0, i32 3
  %204 = load i32, ptr %203, align 4
  %205 = call i32 @ubifs_tnc_remove_dh(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %204) #8
  br label %208

206:                                              ; preds = %199
  %207 = call i32 @ubifs_tnc_remove_nm(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %2) #8
  br label %208

208:                                              ; preds = %206, %202
  %209 = phi i32 [ %205, %202 ], [ %207, %206 ]
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %273

211:                                              ; preds = %208
  %212 = call i32 @ubifs_update_one_lp(ptr noundef %0, i32 noundef %177, i32 noundef -2147483647, i32 noundef %37, i32 noundef 0, i32 noundef 0) #8
  br label %215

213:                                              ; preds = %196
  %214 = call i32 @ubifs_tnc_add_nm(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %177, i32 noundef %182, i32 noundef %37, ptr noundef nonnull %7, ptr noundef %2) #8
  br label %215

215:                                              ; preds = %213, %211
  %216 = phi i32 [ %212, %211 ], [ %214, %213 ]
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %273

218:                                              ; preds = %215
  %219 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 10
  %220 = load i32, ptr %219, align 4
  store i32 %220, ptr %9, align 8
  %221 = getelementptr inbounds [2 x i32], ptr %9, i32 0, i32 1
  store i32 0, ptr %221, align 4
  %222 = add i32 %182, %60
  %223 = call i32 @ubifs_tnc_add(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %177, i32 noundef %222, i32 noundef %57, ptr noundef nonnull %7) #8
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %273

225:                                              ; preds = %218
  %226 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %227 = load i32, ptr %226, align 4
  store i32 %227, ptr %9, align 8
  store i32 0, ptr %221, align 4
  %228 = add i32 %222, %62
  %229 = load i32, ptr %63, align 4
  %230 = add i32 %229, 160
  %231 = call i32 @ubifs_tnc_add(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %177, i32 noundef %228, i32 noundef %230, ptr noundef nonnull %7) #8
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %273

233:                                              ; preds = %225
  %234 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 24
  call void @up_read(ptr noundef %234) #8
  %235 = getelementptr inbounds %struct.ubifs_inode, ptr %3, i32 0, i32 9
  call void @_raw_spin_lock(ptr noundef %235) #8
  %236 = getelementptr inbounds %struct.ubifs_inode, ptr %3, i32 0, i32 11
  %237 = load i64, ptr %236, align 8
  %238 = getelementptr inbounds %struct.ubifs_inode, ptr %3, i32 0, i32 10
  store i64 %237, ptr %238, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %239 = load i16, ptr %235, align 4
  %240 = add i16 %239, 1
  store i16 %240, ptr %235, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  br i1 %74, label %248, label %241

241:                                              ; preds = %233
  %242 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 9
  call void @_raw_spin_lock(ptr noundef %242) #8
  %243 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 11
  %244 = load i64, ptr %243, align 8
  %245 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 10
  store i64 %244, ptr %245, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %246 = load i16, ptr %242, align 4
  %247 = add i16 %246, 1
  store i16 %247, ptr %242, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  br label %248

248:                                              ; preds = %241, %233
  %249 = getelementptr inbounds %struct.ubifs_inode, ptr %3, i32 0, i32 6
  %250 = load i8, ptr %249, align 4
  %251 = and i8 %250, 1
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %255, label %253

253:                                              ; preds = %248
  call void @ubifs_release_dirty_inode_budget(ptr noundef %0, ptr noundef %3) #8
  %254 = load i8, ptr %249, align 4
  br label %255

255:                                              ; preds = %253, %248
  %256 = phi i8 [ %254, %253 ], [ %250, %248 ]
  %257 = and i8 %256, -2
  store i8 %257, ptr %249, align 4
  %258 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 6
  %259 = load i8, ptr %258, align 4
  %260 = and i8 %259, 1
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %264, label %262

262:                                              ; preds = %255
  call void @ubifs_release_dirty_inode_budget(ptr noundef %0, ptr noundef %1) #8
  %263 = load i8, ptr %258, align 4
  br label %264

264:                                              ; preds = %262, %255
  %265 = phi i8 [ %263, %262 ], [ %259, %255 ]
  %266 = and i8 %265, -2
  store i8 %266, ptr %258, align 4
  br label %280

267:                                              ; preds = %163, %70
  %268 = phi i32 [ %71, %70 ], [ %161, %163 ]
  tail call void @kfree(ptr noundef nonnull %68) #8
  br label %280

269:                                              ; preds = %186, %172
  %270 = phi i32 [ %187, %186 ], [ %183, %172 ]
  %271 = load ptr, ptr %173, align 8
  %272 = getelementptr %struct.ubifs_jhead, ptr %271, i32 1, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %272) #8
  tail call void @kfree(ptr noundef nonnull %68) #8
  br label %273

273:                                              ; preds = %269, %225, %218, %215, %208
  %274 = phi i32 [ %270, %269 ], [ %209, %208 ], [ %216, %215 ], [ %223, %218 ], [ %231, %225 ]
  call void @ubifs_ro_mode(ptr noundef %0, i32 noundef %274) #8
  br i1 %29, label %275, label %278

275:                                              ; preds = %273
  %276 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 10
  %277 = load i32, ptr %276, align 4
  call void @ubifs_delete_orphan(ptr noundef %0, i32 noundef %277) #8
  br label %278

278:                                              ; preds = %275, %273
  %279 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 24
  call void @up_read(ptr noundef %279) #8
  br label %280

280:                                              ; preds = %278, %267, %264, %56
  %281 = phi i32 [ %268, %267 ], [ %274, %278 ], [ 0, %264 ], [ -12, %56 ]
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  ret i32 %281
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @make_reservation(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 24
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 81
  %8 = icmp eq i32 %1, 1
  %9 = zext i1 %8 to i32
  %10 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  br label %11

11:                                               ; preds = %149, %3
  %12 = phi i32 [ 0, %3 ], [ %150, %149 ]
  %13 = phi i32 [ 0, %3 ], [ %140, %149 ]
  call void @down_read(ptr noundef %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr %struct.ubifs_jhead, ptr %14, i32 %1
  %16 = load i8, ptr %7, align 8
  %17 = and i8 %16, 3
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19, !prof !9

19:                                               ; preds = %11
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, i32 noundef 108) #8
  br label %20

20:                                               ; preds = %19, %11
  %21 = getelementptr inbounds %struct.ubifs_wbuf, ptr %15, i32 0, i32 9
  call void @mutex_lock(ptr noundef %21) #8
  %22 = load i8, ptr %7, align 8
  %23 = and i8 %22, 4
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %131

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.ubifs_wbuf, ptr %15, i32 0, i32 3
  %27 = getelementptr inbounds %struct.ubifs_wbuf, ptr %15, i32 0, i32 5
  %28 = getelementptr inbounds %struct.ubifs_wbuf, ptr %15, i32 0, i32 2
  %29 = load i32, ptr %28, align 8
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %80, label %73

31:                                               ; preds = %90
  %32 = load i32, ptr %28, align 8
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  %35 = load i32, ptr %27, align 4
  %36 = load i32, ptr %26, align 4
  %37 = load i32, ptr %10, align 8
  %38 = add i32 %36, %35
  %39 = sub i32 %37, %38
  %40 = icmp slt i32 %39, %2
  br i1 %40, label %41, label %133

41:                                               ; preds = %34, %31
  %42 = call i32 @ubifs_find_free_space(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %4, i32 noundef %9) #8
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %109, label %44

44:                                               ; preds = %41
  %45 = icmp eq i32 %42, -28
  br i1 %45, label %46, label %131

46:                                               ; preds = %44
  call void @mutex_unlock(ptr noundef %21) #8
  %47 = call i32 @ubifs_garbage_collect(ptr noundef %0, i32 noundef 0) #8
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %94

49:                                               ; preds = %46
  %50 = icmp eq i32 %47, -28
  br i1 %50, label %51, label %134

51:                                               ; preds = %49
  call void @mutex_lock(ptr noundef %21) #8
  %52 = load i8, ptr %7, align 8
  %53 = and i8 %52, 4
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %131

55:                                               ; preds = %51
  %56 = load i32, ptr %28, align 8
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %65, label %58

58:                                               ; preds = %55
  %59 = load i32, ptr %27, align 4
  %60 = load i32, ptr %26, align 4
  %61 = load i32, ptr %10, align 8
  %62 = add i32 %60, %59
  %63 = sub i32 %61, %62
  %64 = icmp slt i32 %63, %2
  br i1 %64, label %65, label %133

65:                                               ; preds = %58, %55
  %66 = call i32 @ubifs_find_free_space(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %4, i32 noundef %9) #8
  %67 = icmp sgt i32 %66, -1
  br i1 %67, label %109, label %68

68:                                               ; preds = %65
  %69 = icmp eq i32 %66, -28
  br i1 %69, label %70, label %131

70:                                               ; preds = %68
  call void @mutex_unlock(ptr noundef %21) #8
  %71 = call i32 @ubifs_garbage_collect(ptr noundef %0, i32 noundef 0) #8
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %134, label %94

73:                                               ; preds = %25
  %74 = load i32, ptr %27, align 4
  %75 = load i32, ptr %26, align 4
  %76 = load i32, ptr %10, align 8
  %77 = add i32 %75, %74
  %78 = sub i32 %76, %77
  %79 = icmp slt i32 %78, %2
  br i1 %79, label %80, label %133

80:                                               ; preds = %73, %25
  %81 = call i32 @ubifs_find_free_space(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %4, i32 noundef %9) #8
  %82 = icmp sgt i32 %81, -1
  br i1 %82, label %109, label %83

83:                                               ; preds = %80
  %84 = icmp eq i32 %81, -28
  br i1 %84, label %85, label %131

85:                                               ; preds = %83
  call void @mutex_unlock(ptr noundef %21) #8
  %86 = call i32 @ubifs_garbage_collect(ptr noundef %0, i32 noundef 0) #8
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = icmp eq i32 %86, -28
  br i1 %89, label %90, label %134

90:                                               ; preds = %88
  call void @mutex_lock(ptr noundef %21) #8
  %91 = load i8, ptr %7, align 8
  %92 = and i8 %91, 4
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %31, label %131

94:                                               ; preds = %85, %70, %46
  %95 = phi i32 [ %86, %85 ], [ %47, %46 ], [ %71, %70 ]
  call void @mutex_lock(ptr noundef %21) #8
  %96 = load i32, ptr %28, align 8
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %108, label %98

98:                                               ; preds = %94
  %99 = load i32, ptr %27, align 4
  %100 = load i32, ptr %26, align 4
  %101 = load i32, ptr %10, align 8
  %102 = add i32 %100, %99
  %103 = sub i32 %101, %102
  %104 = icmp slt i32 %103, %2
  br i1 %104, label %108, label %105

105:                                              ; preds = %98
  %106 = call i32 @ubifs_change_one_lp(ptr noundef %0, i32 noundef %95, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef 0, i32 noundef 16, i32 noundef 0) #8
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %133, label %131

108:                                              ; preds = %98, %94
  store i32 0, ptr %4, align 4
  br label %109

109:                                              ; preds = %108, %80, %65, %41
  %110 = phi i32 [ %95, %108 ], [ %81, %80 ], [ %42, %41 ], [ %66, %65 ]
  %111 = call i32 @ubifs_wbuf_sync_nolock(ptr noundef %15) #8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %109
  %114 = load i32, ptr %4, align 4
  %115 = call i32 @ubifs_add_bud_to_log(ptr noundef %0, i32 noundef %1, i32 noundef %110, i32 noundef %114) #8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i32, ptr %4, align 4
  %119 = call i32 @ubifs_wbuf_seek_nolock(ptr noundef %15, i32 noundef %110, i32 noundef %118) #8
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %133, label %131

121:                                              ; preds = %113, %109
  %122 = phi i32 [ %111, %109 ], [ %115, %113 ]
  %123 = icmp sgt i32 %122, -1
  br i1 %123, label %124, label %125, !prof !15

124:                                              ; preds = %121
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 212) #8
  br label %125

125:                                              ; preds = %124, %121
  %126 = call i32 @ubifs_change_one_lp(ptr noundef %0, i32 noundef %110, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef 0, i32 noundef 16, i32 noundef 0) #8
  %127 = icmp ne i32 %126, 0
  %128 = icmp eq i32 %122, -11
  %129 = select i1 %127, i1 %128, i1 false
  %130 = select i1 %129, i32 %126, i32 %122
  br label %131

131:                                              ; preds = %125, %117, %105, %90, %83, %68, %51, %44, %20
  %132 = phi i32 [ %130, %125 ], [ %119, %117 ], [ %106, %105 ], [ -30, %20 ], [ -30, %90 ], [ %81, %83 ], [ %42, %44 ], [ -30, %51 ], [ %66, %68 ]
  call void @mutex_unlock(ptr noundef %21) #8
  br label %134

133:                                              ; preds = %117, %105, %73, %58, %34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %158

134:                                              ; preds = %131, %88, %70, %49
  %135 = phi i32 [ %86, %88 ], [ %47, %49 ], [ %132, %131 ], [ %71, %70 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @up_read(ptr noundef %5) #8
  %136 = icmp eq i32 %135, -28
  %137 = icmp slt i32 %13, 2
  %138 = select i1 %137, i32 -11, i32 -28
  %139 = zext i1 %136 to i32
  %140 = add i32 %13, %139
  %141 = select i1 %136, i32 %138, i32 %135
  %142 = icmp eq i32 %141, -11
  br i1 %142, label %143, label %153

143:                                              ; preds = %134
  %144 = icmp eq i32 %12, 129
  br i1 %144, label %145, label %146

145:                                              ; preds = %143
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.22) #8
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %2, i32 noundef %1, i32 noundef -28) #8
  br label %155

146:                                              ; preds = %143
  %147 = icmp ugt i32 %12, 32
  br i1 %147, label %148, label %149

148:                                              ; preds = %146
  call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %12) #8
  br label %149

149:                                              ; preds = %148, %146
  %150 = add nuw nsw i32 %12, 1
  %151 = call i32 @ubifs_run_commit(ptr noundef %0) #8
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %11, label %158

153:                                              ; preds = %134
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %2, i32 noundef %1, i32 noundef %141) #8
  %154 = icmp eq i32 %141, -28
  br i1 %154, label %155, label %158

155:                                              ; preds = %153, %145
  call void @down_write(ptr noundef %5) #8
  call void @dump_stack() #10
  %156 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87
  call void @ubifs_dump_budg(ptr noundef %0, ptr noundef %156) #8
  call void @ubifs_dump_lprops(ptr noundef %0) #8
  %157 = call i32 @dbg_check_lprops(ptr noundef %0) #8
  call void @up_write(ptr noundef %5) #8
  br label %158

158:                                              ; preds = %155, %153, %149, %133
  %159 = phi i32 [ -28, %155 ], [ %141, %153 ], [ 0, %133 ], [ %151, %149 ]
  ret i32 %159
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dent_key_init(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 66
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fscrypt_name, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.fscrypt_name, ptr %3, i32 0, i32 1, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 %6(ptr noundef %8, i32 noundef %10) #8
  %12 = icmp ult i32 %11, 536870912
  br i1 %12, label %14, label %13, !prof !9

13:                                               ; preds = %4
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 152) #8
  br label %14

14:                                               ; preds = %13, %4
  store i32 %2, ptr %1, align 8
  %15 = or i32 %11, 1073741824
  %16 = getelementptr [2 x i32], ptr %1, i32 0, i32 1
  store i32 %15, ptr %16, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_prep_grp_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pack_inode(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 11
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.ubifs_ch, ptr %1, i32 0, i32 4
  store i8 0, ptr %8, align 1
  %9 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 1
  %10 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %9, align 8
  %12 = getelementptr %struct.ubifs_ino_node, ptr %1, i32 0, i32 1, i32 4
  store i32 0, ptr %12, align 4
  %13 = getelementptr %struct.ubifs_ino_node, ptr %1, i32 0, i32 1, i32 8
  store i64 0, ptr %13, align 1
  %14 = getelementptr inbounds %struct.ubifs_inode, ptr %2, i32 0, i32 1
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 2
  store i64 %15, ptr %16, align 1
  %17 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 14
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 4
  store i64 %18, ptr %19, align 1
  %20 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 14, i32 1
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 7
  store i32 %21, ptr %22, align 1
  %23 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 16
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 5
  store i64 %24, ptr %25, align 1
  %26 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 16, i32 1
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 8
  store i32 %27, ptr %28, align 1
  %29 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 15
  %30 = load i64, ptr %29, align 8
  %31 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 6
  store i64 %30, ptr %31, align 1
  %32 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 15, i32 1
  %33 = load i32, ptr %32, align 8
  %34 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 9
  store i32 %33, ptr %34, align 1
  %35 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 11
  store i32 %36, ptr %37, align 1
  %38 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 3
  %39 = load i32, ptr %38, align 8
  %40 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 12
  store i32 %39, ptr %40, align 1
  %41 = load i16, ptr %2, align 8
  %42 = zext i16 %41 to i32
  %43 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 13
  store i32 %42, ptr %43, align 1
  %44 = getelementptr inbounds %struct.ubifs_inode, ptr %2, i32 0, i32 12
  %45 = load i32, ptr %44, align 8
  %46 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 14
  store i32 %45, ptr %46, align 1
  %47 = getelementptr inbounds %struct.ubifs_inode, ptr %2, i32 0, i32 11
  %48 = load i64, ptr %47, align 8
  %49 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 3
  store i64 %48, ptr %49, align 1
  %50 = load i32, ptr %5, align 8
  %51 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 10
  store i32 %50, ptr %51, align 1
  %52 = getelementptr inbounds %struct.ubifs_inode, ptr %2, i32 0, i32 6
  %53 = load i8, ptr %52, align 4
  %54 = lshr i8 %53, 3
  %55 = and i8 %54, 3
  %56 = zext i8 %55 to i16
  %57 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 20
  store i16 %56, ptr %57, align 1
  %58 = getelementptr inbounds %struct.ubifs_inode, ptr %2, i32 0, i32 15
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 15
  store i32 %59, ptr %60, align 1
  %61 = getelementptr inbounds %struct.ubifs_inode, ptr %2, i32 0, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 16
  store i32 %62, ptr %63, align 1
  %64 = getelementptr inbounds %struct.ubifs_inode, ptr %2, i32 0, i32 3
  %65 = load i32, ptr %64, align 8
  %66 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 17
  store i32 %65, ptr %66, align 1
  %67 = getelementptr inbounds %struct.ubifs_inode, ptr %2, i32 0, i32 5
  %68 = load i32, ptr %67, align 8
  %69 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 19
  store i32 %68, ptr %69, align 1
  %70 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 18
  store i32 0, ptr %70, align 1
  %71 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 21
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(26) %71, i8 0, i32 26, i1 false) #8
  br i1 %7, label %79, label %72

72:                                               ; preds = %4
  %73 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 22
  %74 = getelementptr inbounds %struct.ubifs_inode, ptr %2, i32 0, i32 16
  %75 = load ptr, ptr %74, align 8
  %76 = load i32, ptr %58, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %73, ptr align 1 %75, i32 %76, i1 false)
  %77 = load i32, ptr %58, align 4
  %78 = add i32 %77, 160
  br label %79

79:                                               ; preds = %72, %4
  %80 = phi i32 [ 160, %4 ], [ %78, %72 ]
  tail call void @ubifs_prep_grp_node(ptr noundef %0, ptr noundef %1, i32 noundef %80, i32 noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_add_orphan(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_wbuf_add_ino_nolock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_remove_dh(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_remove_nm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_add_nm(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_add(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_ro_mode(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_delete_orphan(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_jnl_write_data(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [0 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  %9 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 16384
  %12 = icmp eq i32 %11, 0
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %6) #8
  %13 = icmp sgt i32 %4, 4096
  br i1 %13, label %14, label %15, !prof !15

14:                                               ; preds = %5
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 736) #8
  br label %15

15:                                               ; preds = %14, %5
  %16 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8240, i32 noundef 11328, i32 noundef 2) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 51
  tail call void @mutex_lock(ptr noundef %19) #8
  %20 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 52
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi ptr [ %16, %15 ], [ %21, %18 ]
  %24 = getelementptr inbounds %struct.ubifs_ch, ptr %23, i32 0, i32 4
  store i8 1, ptr %24, align 1
  %25 = getelementptr inbounds %struct.ubifs_data_node, ptr %23, i32 0, i32 1
  %26 = load i32, ptr %2, align 8
  store i32 %26, ptr %25, align 8
  %27 = getelementptr [2 x i32], ptr %2, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr %struct.ubifs_data_node, ptr %23, i32 0, i32 1, i32 4
  store i32 %28, ptr %29, align 4
  %30 = getelementptr %struct.ubifs_data_node, ptr %23, i32 0, i32 1, i32 8
  store i64 0, ptr %30, align 1
  %31 = getelementptr inbounds %struct.ubifs_data_node, ptr %23, i32 0, i32 2
  store i32 %4, ptr %31, align 1
  %32 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 12
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 6
  %38 = load i8, ptr %37, align 4
  %39 = lshr i8 %38, 3
  %40 = and i8 %39, 3
  %41 = zext i8 %40 to i32
  br label %42

42:                                               ; preds = %36, %22
  %43 = phi i32 [ %41, %36 ], [ 0, %22 ]
  store i32 %43, ptr %7, align 4
  store i32 8192, ptr %8, align 4
  %44 = getelementptr inbounds %struct.ubifs_data_node, ptr %23, i32 0, i32 5
  call void @ubifs_compress(ptr noundef %0, ptr noundef %3, i32 noundef %4, ptr noundef %44, ptr noundef nonnull %8, ptr noundef nonnull %7) #8
  %45 = load i32, ptr %8, align 4
  %46 = icmp sgt i32 %45, 4096
  br i1 %46, label %47, label %48, !prof !15

47:                                               ; preds = %42
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 769) #8
  br label %48

48:                                               ; preds = %47, %42
  br i1 %12, label %54, label %49

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.super_block, ptr %51, i32 0, i32 27
  %53 = load ptr, ptr %52, align 4
  call void @ubifs_assert_failed(ptr noundef %53, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 2121) #8
  br label %95

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.ubifs_data_node, ptr %23, i32 0, i32 4
  store i16 0, ptr %55, align 1
  %56 = load i32, ptr %8, align 4
  %57 = add i32 %56, 48
  %58 = load i32, ptr %7, align 4
  %59 = trunc i32 %58 to i16
  %60 = getelementptr inbounds %struct.ubifs_data_node, ptr %23, i32 0, i32 3
  store i16 %59, ptr %60, align 1
  %61 = call fastcc i32 @make_reservation(ptr noundef %0, i32 noundef 2, i32 noundef %57)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %95

63:                                               ; preds = %54
  call void @ubifs_prepare_node(ptr noundef %0, ptr noundef %23, i32 noundef %57, i32 noundef 0) #8
  %64 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr %struct.ubifs_jhead, ptr %65, i32 2
  %67 = getelementptr %struct.ubifs_jhead, ptr %65, i32 2, i32 0, i32 2
  %68 = load i32, ptr %67, align 8
  %69 = getelementptr %struct.ubifs_jhead, ptr %65, i32 2, i32 0, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr %struct.ubifs_jhead, ptr %65, i32 2, i32 0, i32 5
  %72 = load i32, ptr %71, align 4
  %73 = call i32 @ubifs_wbuf_write_nolock(ptr noundef %66, ptr noundef %23, i32 noundef %57) #8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %63
  %76 = add i32 %72, %70
  %77 = load ptr, ptr %64, align 8
  %78 = getelementptr %struct.ubifs_jhead, ptr %77, i32 2
  %79 = load i32, ptr %2, align 8
  call void @ubifs_wbuf_add_ino_nolock(ptr noundef %78, i32 noundef %79) #8
  %80 = load ptr, ptr %64, align 8
  %81 = getelementptr %struct.ubifs_jhead, ptr %80, i32 2, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %81) #8
  %82 = call i32 @ubifs_tnc_add(ptr noundef %0, ptr noundef %2, i32 noundef %68, i32 noundef %76, i32 noundef %57, ptr noundef nonnull %6) #8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %75
  %85 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 24
  call void @up_read(ptr noundef %85) #8
  br i1 %17, label %86, label %88

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 51
  call void @mutex_unlock(ptr noundef %87) #8
  br label %100

88:                                               ; preds = %84
  call void @kfree(ptr noundef %23) #8
  br label %100

89:                                               ; preds = %63
  %90 = load ptr, ptr %64, align 8
  %91 = getelementptr %struct.ubifs_jhead, ptr %90, i32 2, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %91) #8
  br label %92

92:                                               ; preds = %89, %75
  %93 = phi i32 [ %73, %89 ], [ %82, %75 ]
  call void @ubifs_ro_mode(ptr noundef %0, i32 noundef %93) #8
  %94 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 24
  call void @up_read(ptr noundef %94) #8
  br label %95

95:                                               ; preds = %92, %54, %49
  %96 = phi i32 [ -95, %49 ], [ %61, %54 ], [ %93, %92 ]
  br i1 %17, label %97, label %99

97:                                               ; preds = %95
  %98 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 51
  call void @mutex_unlock(ptr noundef %98) #8
  br label %100

99:                                               ; preds = %95
  call void @kfree(ptr noundef %23) #8
  br label %100

100:                                              ; preds = %99, %97, %88, %86
  %101 = phi i32 [ 0, %88 ], [ 0, %86 ], [ %96, %99 ], [ %96, %97 ]
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  ret i32 %101
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_compress(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_prepare_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_jnl_write_inode(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [0 x i8], align 1
  %4 = alloca %union.ubifs_key, align 8
  %5 = alloca %struct.fscrypt_name, align 4
  %6 = alloca %union.ubifs_key, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = select i1 %12, i1 %9, i1 false
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %3) #8
  br i1 %9, label %28, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 15
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 160
  %18 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 10
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 1
  br label %31

28:                                               ; preds = %2
  %29 = mul i32 %11, 160
  %30 = select i1 %13, i32 %29, i32 0
  br label %31

31:                                               ; preds = %28, %24, %14
  %32 = phi i32 [ 0, %28 ], [ 1, %14 ], [ %27, %24 ]
  %33 = phi i32 [ %30, %28 ], [ 0, %24 ], [ 0, %14 ]
  %34 = phi i32 [ 160, %28 ], [ %17, %24 ], [ %17, %14 ]
  %35 = add i32 %34, %33
  %36 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %35, i32 noundef 3136) #9
  %37 = icmp eq ptr %36, null
  br i1 %37, label %165, label %38

38:                                               ; preds = %31
  %39 = tail call fastcc i32 @make_reservation(ptr noundef %0, i32 noundef 1, i32 noundef %35)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %163

41:                                               ; preds = %38
  br i1 %13, label %42, label %104

42:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false)
  %43 = load i32, ptr %10, align 4
  %44 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %45 = load i32, ptr %44, align 8
  %46 = sdiv i32 %45, 2
  %47 = udiv i32 %46, 160
  %48 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 113
  %49 = load i32, ptr %48, align 8
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %52, label %51, !prof !9

51:                                               ; preds = %42
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef 283) #8
  br label %52

52:                                               ; preds = %51, %42
  %53 = icmp ugt i32 %43, %47
  br i1 %53, label %54, label %55

54:                                               ; preds = %52
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.4) #8
  br label %101

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %57 = load i32, ptr %56, align 4
  store i32 %57, ptr %4, align 8
  %58 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  store i32 1610612736, ptr %58, align 4
  %59 = call ptr @ubifs_tnc_next_ent(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  %60 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %64, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.fscrypt_name, ptr %5, i32 0, i32 1
  %63 = getelementptr inbounds %struct.fscrypt_name, ptr %5, i32 0, i32 1, i32 1
  br label %71

64:                                               ; preds = %93, %55
  %65 = phi ptr [ %36, %55 ], [ %94, %93 ]
  %66 = phi ptr [ null, %55 ], [ %72, %93 ]
  %67 = phi ptr [ %59, %55 ], [ %99, %93 ]
  %68 = icmp eq ptr %67, inttoptr (i32 -2 to ptr)
  br i1 %68, label %103, label %69

69:                                               ; preds = %64
  %70 = ptrtoint ptr %67 to i32
  call void @kfree(ptr noundef %66) #8
  br label %101

71:                                               ; preds = %93, %61
  %72 = phi ptr [ %59, %61 ], [ %99, %93 ]
  %73 = phi ptr [ null, %61 ], [ %72, %93 ]
  %74 = phi ptr [ %36, %61 ], [ %94, %93 ]
  %75 = getelementptr inbounds %struct.ubifs_dent_node, ptr %72, i32 0, i32 7
  store ptr %75, ptr %62, align 4
  %76 = getelementptr inbounds %struct.ubifs_dent_node, ptr %72, i32 0, i32 5
  %77 = load i16, ptr %76, align 1
  %78 = zext i16 %77 to i32
  store i32 %78, ptr %63, align 4
  %79 = load ptr, ptr %0, align 8
  %80 = getelementptr inbounds %struct.ubifs_dent_node, ptr %72, i32 0, i32 2
  %81 = load i64, ptr %80, align 1
  %82 = trunc i64 %81 to i32
  %83 = call ptr @ubifs_iget(ptr noundef %79, i32 noundef %82) #8
  %84 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %84, label %85, label %87

85:                                               ; preds = %71
  %86 = ptrtoint ptr %83 to i32
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %75, i32 noundef %86) #8
  call void @ubifs_ro_mode(ptr noundef %0, i32 noundef %86) #8
  call void @kfree(ptr noundef %73) #8
  call void @kfree(ptr noundef %72) #8
  br label %101

87:                                               ; preds = %71
  %88 = getelementptr inbounds %struct.ubifs_inode, ptr %83, i32 0, i32 6
  %89 = load i8, ptr %88, align 4
  %90 = and i8 %89, 2
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %93, !prof !15

92:                                               ; preds = %87
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 915) #8
  br label %93

93:                                               ; preds = %92, %87
  call void @clear_nlink(ptr noundef %83) #8
  call fastcc void @pack_inode(ptr noundef %0, ptr noundef %74, ptr noundef %83, i32 noundef 0)
  %94 = getelementptr i8, ptr %74, i32 160
  call void @iput(ptr noundef %83) #8
  call void @kfree(ptr noundef %73) #8
  %95 = getelementptr inbounds %struct.ubifs_dent_node, ptr %72, i32 0, i32 1
  %96 = load i32, ptr %95, align 8
  store i32 %96, ptr %4, align 8
  %97 = getelementptr %struct.ubifs_dent_node, ptr %72, i32 0, i32 1, i32 4
  %98 = load i32, ptr %97, align 4
  store i32 %98, ptr %58, align 4
  %99 = call ptr @ubifs_tnc_next_ent(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  %100 = icmp ugt ptr %99, inttoptr (i32 -4096 to ptr)
  br i1 %100, label %64, label %71

101:                                              ; preds = %85, %69, %54
  %102 = phi i32 [ %86, %85 ], [ %70, %69 ], [ -1, %54 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  br label %155

103:                                              ; preds = %64
  call void @kfree(ptr noundef %66) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  br label %104

104:                                              ; preds = %103, %41
  %105 = phi ptr [ %65, %103 ], [ %36, %41 ]
  call fastcc void @pack_inode(ptr noundef %0, ptr noundef %105, ptr noundef %1, i32 noundef 1)
  %106 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  %107 = load ptr, ptr %106, align 8
  %108 = getelementptr %struct.ubifs_jhead, ptr %107, i32 1
  %109 = getelementptr %struct.ubifs_jhead, ptr %107, i32 1, i32 0, i32 2
  %110 = load i32, ptr %109, align 8
  %111 = getelementptr %struct.ubifs_jhead, ptr %107, i32 1, i32 0, i32 3
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr %struct.ubifs_jhead, ptr %107, i32 1, i32 0, i32 5
  %114 = load i32, ptr %113, align 4
  %115 = add i32 %114, %112
  %116 = call i32 @ubifs_wbuf_write_nolock(ptr noundef %108, ptr noundef nonnull %36, i32 noundef %35) #8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %155

118:                                              ; preds = %104
  %119 = icmp eq i32 %32, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %118
  %121 = call i32 @ubifs_wbuf_sync_nolock(ptr noundef %108) #8
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %128, label %155

123:                                              ; preds = %118
  %124 = load ptr, ptr %106, align 8
  %125 = getelementptr %struct.ubifs_jhead, ptr %124, i32 1
  %126 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %127 = load i32, ptr %126, align 4
  call void @ubifs_wbuf_add_ino_nolock(ptr noundef %125, i32 noundef %127) #8
  br label %128

128:                                              ; preds = %123, %120
  %129 = load ptr, ptr %106, align 8
  %130 = getelementptr %struct.ubifs_jhead, ptr %129, i32 1, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %130) #8
  br i1 %9, label %131, label %139

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %133 = load i32, ptr %132, align 4
  %134 = call i32 @ubifs_tnc_remove_ino(ptr noundef %0, i32 noundef %133) #8
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %160

136:                                              ; preds = %131
  %137 = load i32, ptr %132, align 4
  call void @ubifs_delete_orphan(ptr noundef %0, i32 noundef %137) #8
  %138 = call i32 @ubifs_update_one_lp(ptr noundef %0, i32 noundef %110, i32 noundef -2147483647, i32 noundef %35, i32 noundef 0, i32 noundef 0) #8
  br label %144

139:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  %140 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %141 = load i32, ptr %140, align 4
  store i32 %141, ptr %6, align 8
  %142 = getelementptr inbounds [2 x i32], ptr %6, i32 0, i32 1
  store i32 0, ptr %142, align 4
  %143 = call i32 @ubifs_tnc_add(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %110, i32 noundef %115, i32 noundef %34, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  br label %144

144:                                              ; preds = %139, %136
  %145 = phi i32 [ %138, %136 ], [ %143, %139 ]
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %160

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 24
  call void @up_read(ptr noundef %148) #8
  %149 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 9
  call void @_raw_spin_lock(ptr noundef %149) #8
  %150 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 11
  %151 = load i64, ptr %150, align 8
  %152 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 10
  store i64 %151, ptr %152, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %153 = load i16, ptr %149, align 4
  %154 = add i16 %153, 1
  store i16 %154, ptr %149, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  br label %163

155:                                              ; preds = %120, %104, %101
  %156 = phi i32 [ %121, %120 ], [ %102, %101 ], [ %116, %104 ]
  %157 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  %158 = load ptr, ptr %157, align 8
  %159 = getelementptr %struct.ubifs_jhead, ptr %158, i32 1, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %159) #8
  br label %160

160:                                              ; preds = %155, %144, %131
  %161 = phi i32 [ %156, %155 ], [ %134, %131 ], [ %145, %144 ]
  call void @ubifs_ro_mode(ptr noundef %0, i32 noundef %161) #8
  %162 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 24
  call void @up_read(ptr noundef %162) #8
  br label %163

163:                                              ; preds = %160, %147, %38
  %164 = phi i32 [ 0, %147 ], [ %39, %38 ], [ %161, %160 ]
  call void @kfree(ptr noundef nonnull %36) #8
  br label %165

165:                                              ; preds = %163, %31
  %166 = phi i32 [ -12, %31 ], [ %164, %163 ]
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %3) #8
  ret i32 %166
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_tnc_next_ent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_iget(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_remove_ino(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_jnl_delete_inode(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !9

6:                                                ; preds = %2
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 1010) #8
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 4
  %15 = load i64, ptr %14, align 8
  %16 = icmp eq i64 %13, %15
  br i1 %16, label %19, label %17

17:                                               ; preds = %11, %7
  %18 = tail call i32 @ubifs_jnl_write_inode(ptr noundef %0, ptr noundef %1)
  br label %35

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 24
  tail call void @down_read(ptr noundef %20) #8
  %21 = load i64, ptr %12, align 8
  %22 = load i64, ptr %14, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  tail call void @up_read(ptr noundef %20) #8
  %25 = tail call i32 @ubifs_jnl_write_inode(ptr noundef %0, ptr noundef %1)
  br label %35

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %28 = load i32, ptr %27, align 4
  %29 = tail call i32 @ubifs_tnc_remove_ino(ptr noundef %0, i32 noundef %28) #8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  tail call void @ubifs_ro_mode(ptr noundef %0, i32 noundef %29) #8
  br label %34

32:                                               ; preds = %26
  %33 = load i32, ptr %27, align 4
  tail call void @ubifs_delete_orphan(ptr noundef %0, i32 noundef %33) #8
  br label %34

34:                                               ; preds = %32, %31
  tail call void @up_read(ptr noundef %20) #8
  br label %35

35:                                               ; preds = %34, %24, %17
  %36 = phi i32 [ %18, %17 ], [ %25, %24 ], [ %29, %34 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_jnl_xrename(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = alloca [0 x i8], align 1
  %10 = alloca %union.ubifs_key, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  store i64 0, ptr %10, align 8, !annotation !8
  %11 = icmp eq ptr %1, %4
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %9) #8
  %12 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 15
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15, !prof !9

15:                                               ; preds = %8
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 1069) #8
  br label %16

16:                                               ; preds = %15, %8
  %17 = getelementptr inbounds %struct.ubifs_inode, ptr %4, i32 0, i32 15
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20, !prof !9

20:                                               ; preds = %16
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 1070) #8
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 7
  %23 = tail call zeroext i1 @mutex_is_locked(ptr noundef %22) #8
  br i1 %23, label %25, label %24, !prof !9

24:                                               ; preds = %21
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 1071) #8
  br label %25

25:                                               ; preds = %24, %21
  %26 = getelementptr inbounds %struct.ubifs_inode, ptr %4, i32 0, i32 7
  %27 = tail call zeroext i1 @mutex_is_locked(ptr noundef %26) #8
  br i1 %27, label %29, label %28, !prof !9

28:                                               ; preds = %25
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 1072) #8
  br label %29

29:                                               ; preds = %28, %25
  %30 = getelementptr inbounds %struct.fscrypt_name, ptr %6, i32 0, i32 1
  %31 = getelementptr inbounds %struct.fscrypt_name, ptr %6, i32 0, i32 1, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 57
  %34 = getelementptr inbounds %struct.fscrypt_name, ptr %3, i32 0, i32 1
  %35 = getelementptr inbounds %struct.fscrypt_name, ptr %3, i32 0, i32 1, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 57
  %38 = add i32 %32, 64
  %39 = and i32 %38, -8
  %40 = add i32 %36, 64
  %41 = and i32 %40, -8
  %42 = select i1 %11, i32 160, i32 320
  %43 = add i32 %39, %42
  %44 = add i32 %43, %41
  %45 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %44, i32 noundef 3392) #9
  %46 = icmp eq ptr %45, null
  br i1 %46, label %258, label %47

47:                                               ; preds = %29
  %48 = tail call fastcc i32 @make_reservation(ptr noundef %0, i32 noundef 1, i32 noundef %44)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %256

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.ubifs_ch, ptr %45, i32 0, i32 4
  store i8 2, ptr %51, align 4
  %52 = getelementptr inbounds %struct.ubifs_dent_node, ptr %45, i32 0, i32 1
  %53 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 10
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 66
  %56 = load ptr, ptr %55, align 4
  %57 = load ptr, ptr %30, align 4
  %58 = load i32, ptr %31, align 4
  %59 = tail call i32 %56(ptr noundef %57, i32 noundef %58) #8
  %60 = icmp ult i32 %59, 536870912
  br i1 %60, label %62, label %61, !prof !9

61:                                               ; preds = %50
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 188) #8
  br label %62

62:                                               ; preds = %61, %50
  store i32 %54, ptr %52, align 8
  %63 = or i32 %59, 1073741824
  %64 = getelementptr %struct.ubifs_dent_node, ptr %45, i32 0, i32 1, i32 4
  store i32 %63, ptr %64, align 4
  %65 = getelementptr %struct.ubifs_dent_node, ptr %45, i32 0, i32 1, i32 8
  store i64 0, ptr %65, align 32
  %66 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 10
  %67 = load i32, ptr %66, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.ubifs_dent_node, ptr %45, i32 0, i32 2
  store i64 %68, ptr %69, align 8
  %70 = load i16, ptr %2, align 8
  %71 = and i16 %70, -4096
  %72 = zext i16 %71 to i32
  %73 = add nsw i32 %72, -4096
  %74 = lshr exact i32 %73, 12
  %75 = icmp ult i32 %73, 49152
  br i1 %75, label %77, label %76

76:                                               ; preds = %77, %62
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ubifs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 434, 0\0A.popsection", ""() #8, !srcloc !10
  unreachable

77:                                               ; preds = %62
  %78 = trunc i32 %74 to i16
  %79 = lshr i16 2731, %78
  %80 = and i16 %79, 1
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %76, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds [12 x i8], ptr @switch.table.ubifs_jnl_delete_xattr, i32 0, i32 %74
  %84 = load i8, ptr %83, align 1
  %85 = getelementptr inbounds %struct.ubifs_dent_node, ptr %45, i32 0, i32 4
  store i8 %84, ptr %85, align 1
  %86 = load i32, ptr %31, align 4
  %87 = trunc i32 %86 to i16
  %88 = getelementptr inbounds %struct.ubifs_dent_node, ptr %45, i32 0, i32 5
  store i16 %87, ptr %88, align 2
  %89 = getelementptr inbounds %struct.ubifs_dent_node, ptr %45, i32 0, i32 7
  %90 = load ptr, ptr %30, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %89, ptr align 1 %90, i32 %86, i1 false)
  %91 = load i32, ptr %31, align 4
  %92 = getelementptr %struct.ubifs_dent_node, ptr %45, i32 0, i32 7, i32 %91
  store i8 0, ptr %92, align 1
  %93 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %94 = load i16, ptr %93, align 4
  %95 = and i16 %94, 4
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %82
  %98 = tail call i32 @prandom_u32() #8
  br label %99

99:                                               ; preds = %97, %82
  %100 = phi i32 [ %98, %97 ], [ 0, %82 ]
  %101 = getelementptr inbounds %struct.ubifs_dent_node, ptr %45, i32 0, i32 6
  store i32 %100, ptr %101, align 4
  %102 = getelementptr inbounds %struct.ubifs_dent_node, ptr %45, i32 0, i32 3
  store i8 0, ptr %102, align 16
  tail call void @ubifs_prep_grp_node(ptr noundef %0, ptr noundef nonnull %45, i32 noundef %33, i32 noundef 0) #8
  %103 = getelementptr i8, ptr %45, i32 %39
  %104 = getelementptr inbounds %struct.ubifs_ch, ptr %103, i32 0, i32 4
  store i8 2, ptr %104, align 4
  %105 = getelementptr inbounds %struct.ubifs_dent_node, ptr %103, i32 0, i32 1
  %106 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %107 = load i32, ptr %106, align 4
  %108 = load ptr, ptr %55, align 4
  %109 = load ptr, ptr %34, align 4
  %110 = load i32, ptr %35, align 4
  %111 = tail call i32 %108(ptr noundef %109, i32 noundef %110) #8
  %112 = icmp ult i32 %111, 536870912
  br i1 %112, label %114, label %113, !prof !9

113:                                              ; preds = %99
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 188) #8
  br label %114

114:                                              ; preds = %113, %99
  store i32 %107, ptr %105, align 8
  %115 = or i32 %111, 1073741824
  %116 = getelementptr [2 x i32], ptr %105, i32 0, i32 1
  store i32 %115, ptr %116, align 4
  %117 = getelementptr i8, ptr %105, i32 8
  store i64 0, ptr %117, align 8
  %118 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 10
  %119 = load i32, ptr %118, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.ubifs_dent_node, ptr %103, i32 0, i32 2
  store i64 %120, ptr %121, align 8
  %122 = load i16, ptr %5, align 8
  %123 = and i16 %122, -4096
  %124 = zext i16 %123 to i32
  %125 = add nsw i32 %124, -4096
  %126 = lshr exact i32 %125, 12
  %127 = icmp ult i32 %125, 49152
  br i1 %127, label %129, label %128

128:                                              ; preds = %129, %114
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ubifs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 434, 0\0A.popsection", ""() #8, !srcloc !10
  unreachable

129:                                              ; preds = %114
  %130 = trunc i32 %126 to i16
  %131 = lshr i16 2731, %130
  %132 = and i16 %131, 1
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %128, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds [12 x i8], ptr @switch.table.ubifs_jnl_delete_xattr, i32 0, i32 %126
  %136 = load i8, ptr %135, align 1
  %137 = getelementptr inbounds %struct.ubifs_dent_node, ptr %103, i32 0, i32 4
  store i8 %136, ptr %137, align 1
  %138 = load i32, ptr %35, align 4
  %139 = trunc i32 %138 to i16
  %140 = getelementptr inbounds %struct.ubifs_dent_node, ptr %103, i32 0, i32 5
  store i16 %139, ptr %140, align 2
  %141 = getelementptr inbounds %struct.ubifs_dent_node, ptr %103, i32 0, i32 7
  %142 = load ptr, ptr %34, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %141, ptr align 1 %142, i32 %138, i1 false)
  %143 = load i32, ptr %35, align 4
  %144 = getelementptr [0 x i8], ptr %141, i32 0, i32 %143
  store i8 0, ptr %144, align 1
  %145 = load i16, ptr %93, align 4
  %146 = and i16 %145, 4
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %134
  %149 = tail call i32 @prandom_u32() #8
  br label %150

150:                                              ; preds = %148, %134
  %151 = phi i32 [ %149, %148 ], [ 0, %134 ]
  %152 = getelementptr inbounds %struct.ubifs_dent_node, ptr %103, i32 0, i32 6
  store i32 %151, ptr %152, align 4
  %153 = getelementptr inbounds %struct.ubifs_dent_node, ptr %103, i32 0, i32 3
  store i8 0, ptr %153, align 8
  tail call void @ubifs_prep_grp_node(ptr noundef %0, ptr noundef %103, i32 noundef %37, i32 noundef 0) #8
  %154 = getelementptr i8, ptr %103, i32 %41
  br i1 %11, label %155, label %156

155:                                              ; preds = %150
  tail call fastcc void @pack_inode(ptr noundef %0, ptr noundef %154, ptr noundef %1, i32 noundef 1)
  br label %158

156:                                              ; preds = %150
  tail call fastcc void @pack_inode(ptr noundef %0, ptr noundef %154, ptr noundef %1, i32 noundef 0)
  %157 = getelementptr i8, ptr %154, i32 160
  tail call fastcc void @pack_inode(ptr noundef %0, ptr noundef %157, ptr noundef %4, i32 noundef 1)
  br label %158

158:                                              ; preds = %156, %155
  %159 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  %160 = load ptr, ptr %159, align 8
  %161 = getelementptr %struct.ubifs_jhead, ptr %160, i32 1
  %162 = getelementptr %struct.ubifs_jhead, ptr %160, i32 1, i32 0, i32 2
  %163 = load i32, ptr %162, align 8
  %164 = getelementptr %struct.ubifs_jhead, ptr %160, i32 1, i32 0, i32 3
  %165 = load i32, ptr %164, align 4
  %166 = getelementptr %struct.ubifs_jhead, ptr %160, i32 1, i32 0, i32 5
  %167 = load i32, ptr %166, align 4
  %168 = add i32 %167, %165
  %169 = tail call i32 @ubifs_wbuf_write_nolock(ptr noundef %161, ptr noundef nonnull %45, i32 noundef %44) #8
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %249

171:                                              ; preds = %158
  %172 = icmp eq i32 %7, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %171
  %174 = tail call i32 @ubifs_wbuf_sync_nolock(ptr noundef %161) #8
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %181, label %249

176:                                              ; preds = %171
  %177 = load ptr, ptr %159, align 8
  %178 = getelementptr %struct.ubifs_jhead, ptr %177, i32 1
  %179 = load i32, ptr %106, align 4
  tail call void @ubifs_wbuf_add_ino_nolock(ptr noundef %178, i32 noundef %179) #8
  %180 = load i32, ptr %53, align 4
  tail call void @ubifs_wbuf_add_ino_nolock(ptr noundef %178, i32 noundef %180) #8
  br label %181

181:                                              ; preds = %176, %173
  %182 = load ptr, ptr %159, align 8
  %183 = getelementptr %struct.ubifs_jhead, ptr %182, i32 1, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %183) #8
  %184 = load i32, ptr %53, align 4
  %185 = load ptr, ptr %55, align 4
  %186 = load ptr, ptr %30, align 4
  %187 = load i32, ptr %31, align 4
  %188 = tail call i32 %185(ptr noundef %186, i32 noundef %187) #8
  %189 = icmp ult i32 %188, 536870912
  br i1 %189, label %191, label %190, !prof !9

190:                                              ; preds = %181
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 152) #8
  br label %191

191:                                              ; preds = %190, %181
  store i32 %184, ptr %10, align 8
  %192 = or i32 %188, 1073741824
  %193 = getelementptr inbounds [2 x i32], ptr %10, i32 0, i32 1
  store i32 %192, ptr %193, align 4
  %194 = call i32 @ubifs_tnc_add_nm(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %163, i32 noundef %168, i32 noundef %33, ptr noundef nonnull %9, ptr noundef %6) #8
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %253

196:                                              ; preds = %191
  %197 = add i32 %168, %39
  %198 = load i32, ptr %106, align 4
  %199 = load ptr, ptr %55, align 4
  %200 = load ptr, ptr %34, align 4
  %201 = load i32, ptr %35, align 4
  %202 = call i32 %199(ptr noundef %200, i32 noundef %201) #8
  %203 = icmp ult i32 %202, 536870912
  br i1 %203, label %205, label %204, !prof !9

204:                                              ; preds = %196
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 152) #8
  br label %205

205:                                              ; preds = %204, %196
  store i32 %198, ptr %10, align 8
  %206 = or i32 %202, 1073741824
  store i32 %206, ptr %193, align 4
  %207 = call i32 @ubifs_tnc_add_nm(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %163, i32 noundef %197, i32 noundef %37, ptr noundef nonnull %9, ptr noundef %3) #8
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %253

209:                                              ; preds = %205
  %210 = add i32 %197, %41
  %211 = load i32, ptr %106, align 4
  store i32 %211, ptr %10, align 8
  store i32 0, ptr %193, align 4
  %212 = call i32 @ubifs_tnc_add(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %163, i32 noundef %210, i32 noundef 160, ptr noundef nonnull %9) #8
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %253

214:                                              ; preds = %209
  br i1 %11, label %235, label %215

215:                                              ; preds = %214
  %216 = add i32 %210, 160
  %217 = load i32, ptr %53, align 4
  store i32 %217, ptr %10, align 8
  store i32 0, ptr %193, align 4
  %218 = call i32 @ubifs_tnc_add(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %163, i32 noundef %216, i32 noundef 160, ptr noundef nonnull %9) #8
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %253

220:                                              ; preds = %215
  %221 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 24
  call void @up_read(ptr noundef %221) #8
  %222 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 6
  %223 = load i8, ptr %222, align 4
  %224 = and i8 %223, 1
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %228, label %226

226:                                              ; preds = %220
  call void @ubifs_release_dirty_inode_budget(ptr noundef %0, ptr noundef %1) #8
  %227 = load i8, ptr %222, align 4
  br label %228

228:                                              ; preds = %226, %220
  %229 = phi i8 [ %227, %226 ], [ %223, %220 ]
  %230 = and i8 %229, -2
  store i8 %230, ptr %222, align 4
  %231 = getelementptr inbounds %struct.ubifs_inode, ptr %4, i32 0, i32 6
  %232 = load i8, ptr %231, align 4
  %233 = and i8 %232, 1
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %245, label %241

235:                                              ; preds = %214
  %236 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 24
  call void @up_read(ptr noundef %236) #8
  %237 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 6
  %238 = load i8, ptr %237, align 4
  %239 = and i8 %238, 1
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %245, label %241

241:                                              ; preds = %235, %228
  %242 = phi ptr [ %4, %228 ], [ %1, %235 ]
  %243 = phi ptr [ %231, %228 ], [ %237, %235 ]
  call void @ubifs_release_dirty_inode_budget(ptr noundef %0, ptr noundef %242) #8
  %244 = load i8, ptr %243, align 4
  br label %245

245:                                              ; preds = %241, %235, %228
  %246 = phi i8 [ %232, %228 ], [ %238, %235 ], [ %244, %241 ]
  %247 = phi ptr [ %231, %228 ], [ %237, %235 ], [ %243, %241 ]
  %248 = and i8 %246, -2
  store i8 %248, ptr %247, align 4
  br label %256

249:                                              ; preds = %173, %158
  %250 = phi i32 [ %174, %173 ], [ %169, %158 ]
  %251 = load ptr, ptr %159, align 8
  %252 = getelementptr %struct.ubifs_jhead, ptr %251, i32 1, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %252) #8
  br label %253

253:                                              ; preds = %249, %215, %209, %205, %191
  %254 = phi i32 [ %250, %249 ], [ %194, %191 ], [ %207, %205 ], [ %212, %209 ], [ %218, %215 ]
  call void @ubifs_ro_mode(ptr noundef %0, i32 noundef %254) #8
  %255 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 24
  call void @up_read(ptr noundef %255) #8
  br label %256

256:                                              ; preds = %253, %245, %47
  %257 = phi i32 [ 0, %245 ], [ %48, %47 ], [ %254, %253 ]
  call void @kfree(ptr noundef nonnull %45) #8
  br label %258

258:                                              ; preds = %256, %29
  %259 = phi i32 [ -12, %29 ], [ %257, %256 ]
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  ret i32 %259
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_jnl_rename(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef readonly %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = alloca [0 x i8], align 1
  %11 = alloca %union.ubifs_key, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  store i64 0, ptr %11, align 8, !annotation !8
  %12 = icmp eq ptr %5, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 11
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 0
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i1 [ false, %9 ], [ %16, %13 ]
  %19 = icmp eq ptr %1, %4
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %10) #8
  %20 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 15
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23, !prof !9

23:                                               ; preds = %17
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 1236) #8
  br label %24

24:                                               ; preds = %23, %17
  %25 = getelementptr inbounds %struct.ubifs_inode, ptr %4, i32 0, i32 15
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28, !prof !9

28:                                               ; preds = %24
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 1237) #8
  br label %29

29:                                               ; preds = %28, %24
  %30 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 7
  %31 = tail call zeroext i1 @mutex_is_locked(ptr noundef %30) #8
  br i1 %31, label %33, label %32, !prof !9

32:                                               ; preds = %29
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 1238) #8
  br label %33

33:                                               ; preds = %32, %29
  %34 = getelementptr inbounds %struct.ubifs_inode, ptr %4, i32 0, i32 7
  %35 = tail call zeroext i1 @mutex_is_locked(ptr noundef %34) #8
  br i1 %35, label %37, label %36, !prof !9

36:                                               ; preds = %33
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 1239) #8
  br label %37

37:                                               ; preds = %36, %33
  %38 = getelementptr inbounds %struct.fscrypt_name, ptr %6, i32 0, i32 1
  %39 = getelementptr inbounds %struct.fscrypt_name, ptr %6, i32 0, i32 1, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, 57
  %42 = getelementptr inbounds %struct.fscrypt_name, ptr %3, i32 0, i32 1
  %43 = getelementptr inbounds %struct.fscrypt_name, ptr %3, i32 0, i32 1, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, 57
  br i1 %12, label %55, label %46

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.ubifs_inode, ptr %5, i32 0, i32 7
  %48 = tail call zeroext i1 @mutex_is_locked(ptr noundef %47) #8
  br i1 %48, label %50, label %49, !prof !9

49:                                               ; preds = %46
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 1245) #8
  br label %50

50:                                               ; preds = %49, %46
  br i1 %18, label %55, label %51

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct.ubifs_inode, ptr %5, i32 0, i32 15
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, 160
  br label %55

55:                                               ; preds = %51, %50, %37
  %56 = phi i32 [ 160, %50 ], [ %54, %51 ], [ 0, %37 ]
  %57 = add i32 %40, 64
  %58 = and i32 %57, -8
  %59 = add i32 %44, 64
  %60 = and i32 %59, -8
  %61 = add i32 %56, 7
  %62 = and i32 %61, -8
  %63 = select i1 %19, i32 160, i32 320
  %64 = add i32 %58, %63
  %65 = add i32 %64, %60
  %66 = add i32 %65, %62
  %67 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %66, i32 noundef 3392) #9
  %68 = icmp eq ptr %67, null
  br i1 %68, label %335, label %69

69:                                               ; preds = %55
  %70 = tail call fastcc i32 @make_reservation(ptr noundef %0, i32 noundef 1, i32 noundef %66)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %333

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.ubifs_ch, ptr %67, i32 0, i32 4
  store i8 2, ptr %73, align 4
  %74 = getelementptr inbounds %struct.ubifs_dent_node, ptr %67, i32 0, i32 1
  %75 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 10
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 66
  %78 = load ptr, ptr %77, align 4
  %79 = load ptr, ptr %38, align 4
  %80 = load i32, ptr %39, align 4
  %81 = tail call i32 %78(ptr noundef %79, i32 noundef %80) #8
  %82 = icmp ult i32 %81, 536870912
  br i1 %82, label %84, label %83, !prof !9

83:                                               ; preds = %72
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 188) #8
  br label %84

84:                                               ; preds = %83, %72
  store i32 %76, ptr %74, align 8
  %85 = or i32 %81, 1073741824
  %86 = getelementptr %struct.ubifs_dent_node, ptr %67, i32 0, i32 1, i32 4
  store i32 %85, ptr %86, align 4
  %87 = getelementptr %struct.ubifs_dent_node, ptr %67, i32 0, i32 1, i32 8
  store i64 0, ptr %87, align 32
  %88 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 10
  %89 = load i32, ptr %88, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.ubifs_dent_node, ptr %67, i32 0, i32 2
  store i64 %90, ptr %91, align 8
  %92 = load i16, ptr %2, align 8
  %93 = and i16 %92, -4096
  %94 = zext i16 %93 to i32
  %95 = add nsw i32 %94, -4096
  %96 = lshr exact i32 %95, 12
  %97 = icmp ult i32 %95, 49152
  br i1 %97, label %99, label %98

98:                                               ; preds = %99, %84
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ubifs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 434, 0\0A.popsection", ""() #8, !srcloc !10
  unreachable

99:                                               ; preds = %84
  %100 = trunc i32 %96 to i16
  %101 = lshr i16 2731, %100
  %102 = and i16 %101, 1
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %98, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds [12 x i8], ptr @switch.table.ubifs_jnl_delete_xattr, i32 0, i32 %96
  %106 = load i8, ptr %105, align 1
  %107 = getelementptr inbounds %struct.ubifs_dent_node, ptr %67, i32 0, i32 4
  store i8 %106, ptr %107, align 1
  %108 = load i32, ptr %39, align 4
  %109 = trunc i32 %108 to i16
  %110 = getelementptr inbounds %struct.ubifs_dent_node, ptr %67, i32 0, i32 5
  store i16 %109, ptr %110, align 2
  %111 = getelementptr inbounds %struct.ubifs_dent_node, ptr %67, i32 0, i32 7
  %112 = load ptr, ptr %38, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %111, ptr align 1 %112, i32 %108, i1 false)
  %113 = load i32, ptr %39, align 4
  %114 = getelementptr %struct.ubifs_dent_node, ptr %67, i32 0, i32 7, i32 %113
  store i8 0, ptr %114, align 1
  %115 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %116 = load i16, ptr %115, align 4
  %117 = and i16 %116, 4
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %104
  %120 = tail call i32 @prandom_u32() #8
  br label %121

121:                                              ; preds = %119, %104
  %122 = phi i32 [ %120, %119 ], [ 0, %104 ]
  %123 = getelementptr inbounds %struct.ubifs_dent_node, ptr %67, i32 0, i32 6
  store i32 %122, ptr %123, align 4
  %124 = getelementptr inbounds %struct.ubifs_dent_node, ptr %67, i32 0, i32 3
  store i8 0, ptr %124, align 16
  tail call void @ubifs_prep_grp_node(ptr noundef %0, ptr noundef nonnull %67, i32 noundef %41, i32 noundef 0) #8
  %125 = getelementptr i8, ptr %67, i32 %58
  %126 = getelementptr inbounds %struct.ubifs_ch, ptr %125, i32 0, i32 4
  store i8 2, ptr %126, align 4
  %127 = getelementptr inbounds %struct.ubifs_dent_node, ptr %125, i32 0, i32 1
  %128 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %129 = load i32, ptr %128, align 4
  %130 = load ptr, ptr %77, align 4
  %131 = load ptr, ptr %42, align 4
  %132 = load i32, ptr %43, align 4
  %133 = tail call i32 %130(ptr noundef %131, i32 noundef %132) #8
  %134 = icmp ult i32 %133, 536870912
  br i1 %134, label %136, label %135, !prof !9

135:                                              ; preds = %121
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 188) #8
  br label %136

136:                                              ; preds = %135, %121
  store i32 %129, ptr %127, align 8
  %137 = or i32 %133, 1073741824
  %138 = getelementptr [2 x i32], ptr %127, i32 0, i32 1
  store i32 %137, ptr %138, align 4
  %139 = getelementptr i8, ptr %127, i32 8
  store i64 0, ptr %139, align 8
  %140 = icmp eq ptr %7, null
  br i1 %140, label %153, label %141

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 10
  %143 = load i32, ptr %142, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.ubifs_dent_node, ptr %125, i32 0, i32 2
  store i64 %144, ptr %145, align 8
  %146 = load i16, ptr %7, align 8
  %147 = and i16 %146, -4096
  %148 = zext i16 %147 to i32
  %149 = add nsw i32 %148, -4096
  %150 = lshr exact i32 %149, 12
  %151 = icmp ult i32 %149, 49152
  br i1 %151, label %155, label %152

152:                                              ; preds = %155, %141
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ubifs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 434, 0\0A.popsection", ""() #8, !srcloc !10
  unreachable

153:                                              ; preds = %136
  %154 = getelementptr inbounds %struct.ubifs_dent_node, ptr %125, i32 0, i32 2
  store i64 0, ptr %154, align 8
  br label %163

155:                                              ; preds = %141
  %156 = trunc i32 %150 to i16
  %157 = lshr i16 2731, %156
  %158 = and i16 %157, 1
  %159 = icmp eq i16 %158, 0
  br i1 %159, label %152, label %160

160:                                              ; preds = %155
  %161 = getelementptr inbounds [12 x i8], ptr @switch.table.ubifs_jnl_delete_xattr, i32 0, i32 %150
  %162 = load i8, ptr %161, align 1
  br label %163

163:                                              ; preds = %160, %153
  %164 = phi i8 [ 0, %153 ], [ %162, %160 ]
  %165 = getelementptr inbounds %struct.ubifs_dent_node, ptr %125, i32 0, i32 4
  store i8 %164, ptr %165, align 1
  %166 = load i32, ptr %43, align 4
  %167 = trunc i32 %166 to i16
  %168 = getelementptr inbounds %struct.ubifs_dent_node, ptr %125, i32 0, i32 5
  store i16 %167, ptr %168, align 2
  %169 = getelementptr inbounds %struct.ubifs_dent_node, ptr %125, i32 0, i32 7
  %170 = load ptr, ptr %42, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %169, ptr align 1 %170, i32 %166, i1 false)
  %171 = load i32, ptr %43, align 4
  %172 = getelementptr [0 x i8], ptr %169, i32 0, i32 %171
  store i8 0, ptr %172, align 1
  %173 = load i16, ptr %115, align 4
  %174 = and i16 %173, 4
  %175 = icmp eq i16 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %163
  %177 = tail call i32 @prandom_u32() #8
  br label %178

178:                                              ; preds = %176, %163
  %179 = phi i32 [ %177, %176 ], [ 0, %163 ]
  %180 = getelementptr inbounds %struct.ubifs_dent_node, ptr %125, i32 0, i32 6
  store i32 %179, ptr %180, align 4
  %181 = getelementptr inbounds %struct.ubifs_dent_node, ptr %125, i32 0, i32 3
  store i8 0, ptr %181, align 8
  tail call void @ubifs_prep_grp_node(ptr noundef %0, ptr noundef %125, i32 noundef %45, i32 noundef 0) #8
  %182 = getelementptr i8, ptr %125, i32 %60
  br i1 %12, label %185, label %183

183:                                              ; preds = %178
  tail call fastcc void @pack_inode(ptr noundef %0, ptr noundef %182, ptr noundef nonnull %5, i32 noundef 0)
  %184 = getelementptr i8, ptr %182, i32 %62
  br label %185

185:                                              ; preds = %183, %178
  %186 = phi ptr [ %184, %183 ], [ %182, %178 ]
  br i1 %19, label %187, label %188

187:                                              ; preds = %185
  tail call fastcc void @pack_inode(ptr noundef %0, ptr noundef %186, ptr noundef %1, i32 noundef 1)
  br label %190

188:                                              ; preds = %185
  tail call fastcc void @pack_inode(ptr noundef %0, ptr noundef %186, ptr noundef %1, i32 noundef 0)
  %189 = getelementptr i8, ptr %186, i32 160
  tail call fastcc void @pack_inode(ptr noundef %0, ptr noundef %189, ptr noundef %4, i32 noundef 1)
  br label %190

190:                                              ; preds = %188, %187
  br i1 %18, label %191, label %204

191:                                              ; preds = %190
  %192 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 10
  %193 = load i32, ptr %192, align 4
  %194 = tail call i32 @ubifs_add_orphan(ptr noundef %0, i32 noundef %193) #8
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %200, label %196

196:                                              ; preds = %191
  %197 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  %198 = load ptr, ptr %197, align 8
  %199 = getelementptr %struct.ubifs_jhead, ptr %198, i32 1, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %199) #8
  br label %330

200:                                              ; preds = %191
  %201 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 4
  %202 = load i64, ptr %201, align 8
  %203 = getelementptr inbounds %struct.ubifs_inode, ptr %5, i32 0, i32 2
  store i64 %202, ptr %203, align 8
  br label %204

204:                                              ; preds = %200, %190
  %205 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  %206 = load ptr, ptr %205, align 8
  %207 = getelementptr %struct.ubifs_jhead, ptr %206, i32 1
  %208 = getelementptr %struct.ubifs_jhead, ptr %206, i32 1, i32 0, i32 2
  %209 = load i32, ptr %208, align 8
  %210 = getelementptr %struct.ubifs_jhead, ptr %206, i32 1, i32 0, i32 3
  %211 = load i32, ptr %210, align 4
  %212 = getelementptr %struct.ubifs_jhead, ptr %206, i32 1, i32 0, i32 5
  %213 = load i32, ptr %212, align 4
  %214 = add i32 %213, %211
  %215 = tail call i32 @ubifs_wbuf_write_nolock(ptr noundef %207, ptr noundef nonnull %67, i32 noundef %66) #8
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %321

217:                                              ; preds = %204
  %218 = icmp eq i32 %8, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %217
  %220 = tail call i32 @ubifs_wbuf_sync_nolock(ptr noundef %207) #8
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %232, label %321

222:                                              ; preds = %217
  %223 = load ptr, ptr %205, align 8
  %224 = getelementptr %struct.ubifs_jhead, ptr %223, i32 1
  %225 = load i32, ptr %75, align 4
  tail call void @ubifs_wbuf_add_ino_nolock(ptr noundef %224, i32 noundef %225) #8
  %226 = load i32, ptr %128, align 4
  tail call void @ubifs_wbuf_add_ino_nolock(ptr noundef %224, i32 noundef %226) #8
  br i1 %12, label %232, label %227

227:                                              ; preds = %222
  %228 = load ptr, ptr %205, align 8
  %229 = getelementptr %struct.ubifs_jhead, ptr %228, i32 1
  %230 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 10
  %231 = load i32, ptr %230, align 4
  tail call void @ubifs_wbuf_add_ino_nolock(ptr noundef %229, i32 noundef %231) #8
  br label %232

232:                                              ; preds = %227, %222, %219
  %233 = load ptr, ptr %205, align 8
  %234 = getelementptr %struct.ubifs_jhead, ptr %233, i32 1, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %234) #8
  %235 = load i32, ptr %75, align 4
  %236 = load ptr, ptr %77, align 4
  %237 = load ptr, ptr %38, align 4
  %238 = load i32, ptr %39, align 4
  %239 = tail call i32 %236(ptr noundef %237, i32 noundef %238) #8
  %240 = icmp ult i32 %239, 536870912
  br i1 %240, label %242, label %241, !prof !9

241:                                              ; preds = %232
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 152) #8
  br label %242

242:                                              ; preds = %241, %232
  store i32 %235, ptr %11, align 8
  %243 = or i32 %239, 1073741824
  %244 = getelementptr inbounds [2 x i32], ptr %11, i32 0, i32 1
  store i32 %243, ptr %244, align 4
  %245 = call i32 @ubifs_tnc_add_nm(ptr noundef %0, ptr noundef nonnull %11, i32 noundef %209, i32 noundef %214, i32 noundef %41, ptr noundef nonnull %10, ptr noundef %6) #8
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %325

247:                                              ; preds = %242
  %248 = add i32 %214, %58
  br i1 %140, label %256, label %249

249:                                              ; preds = %247
  %250 = load i32, ptr %128, align 4
  call fastcc void @dent_key_init(ptr noundef %0, ptr noundef nonnull %11, i32 noundef %250, ptr noundef %3)
  %251 = call i32 @ubifs_tnc_add_nm(ptr noundef %0, ptr noundef nonnull %11, i32 noundef %209, i32 noundef %248, i32 noundef %45, ptr noundef nonnull %10, ptr noundef %3) #8
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %325

253:                                              ; preds = %249
  %254 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 10
  %255 = load i32, ptr %254, align 4
  call void @ubifs_delete_orphan(ptr noundef %0, i32 noundef %255) #8
  br label %263

256:                                              ; preds = %247
  %257 = call i32 @ubifs_update_one_lp(ptr noundef %0, i32 noundef %209, i32 noundef -2147483647, i32 noundef %45, i32 noundef 0, i32 noundef 0) #8
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %325

259:                                              ; preds = %256
  %260 = load i32, ptr %128, align 4
  call fastcc void @dent_key_init(ptr noundef %0, ptr noundef nonnull %11, i32 noundef %260, ptr noundef %3)
  %261 = call i32 @ubifs_tnc_remove_nm(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %3) #8
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %325

263:                                              ; preds = %259, %253
  %264 = add i32 %248, %60
  br i1 %12, label %272, label %265

265:                                              ; preds = %263
  %266 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 10
  %267 = load i32, ptr %266, align 4
  store i32 %267, ptr %11, align 8
  store i32 0, ptr %244, align 4
  %268 = call i32 @ubifs_tnc_add(ptr noundef %0, ptr noundef nonnull %11, i32 noundef %209, i32 noundef %264, i32 noundef %56, ptr noundef nonnull %10) #8
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %325

270:                                              ; preds = %265
  %271 = add i32 %264, %62
  br label %272

272:                                              ; preds = %270, %263
  %273 = phi i32 [ %264, %263 ], [ %271, %270 ]
  %274 = load i32, ptr %128, align 4
  store i32 %274, ptr %11, align 8
  store i32 0, ptr %244, align 4
  %275 = call i32 @ubifs_tnc_add(ptr noundef %0, ptr noundef nonnull %11, i32 noundef %209, i32 noundef %273, i32 noundef 160, ptr noundef nonnull %10) #8
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %325

277:                                              ; preds = %272
  br i1 %19, label %283, label %278

278:                                              ; preds = %277
  %279 = add i32 %273, 160
  %280 = load i32, ptr %75, align 4
  store i32 %280, ptr %11, align 8
  store i32 0, ptr %244, align 4
  %281 = call i32 @ubifs_tnc_add(ptr noundef %0, ptr noundef nonnull %11, i32 noundef %209, i32 noundef %279, i32 noundef 160, ptr noundef nonnull %10) #8
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %325

283:                                              ; preds = %278, %277
  %284 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 24
  call void @up_read(ptr noundef %284) #8
  br i1 %12, label %301, label %285

285:                                              ; preds = %283
  %286 = getelementptr inbounds %struct.ubifs_inode, ptr %5, i32 0, i32 6
  %287 = load i8, ptr %286, align 4
  %288 = and i8 %287, 1
  %289 = icmp eq i8 %288, 0
  br i1 %289, label %292, label %290

290:                                              ; preds = %285
  call void @ubifs_release_dirty_inode_budget(ptr noundef %0, ptr noundef nonnull %5) #8
  %291 = load i8, ptr %286, align 4
  br label %292

292:                                              ; preds = %290, %285
  %293 = phi i8 [ %291, %290 ], [ %287, %285 ]
  %294 = and i8 %293, -2
  store i8 %294, ptr %286, align 4
  %295 = getelementptr inbounds %struct.ubifs_inode, ptr %5, i32 0, i32 9
  call void @_raw_spin_lock(ptr noundef %295) #8
  %296 = getelementptr inbounds %struct.ubifs_inode, ptr %5, i32 0, i32 11
  %297 = load i64, ptr %296, align 8
  %298 = getelementptr inbounds %struct.ubifs_inode, ptr %5, i32 0, i32 10
  store i64 %297, ptr %298, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %299 = load i16, ptr %295, align 4
  %300 = add i16 %299, 1
  store i16 %300, ptr %295, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  br label %301

301:                                              ; preds = %292, %283
  %302 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 6
  %303 = load i8, ptr %302, align 4
  %304 = and i8 %303, 1
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %308, label %306

306:                                              ; preds = %301
  call void @ubifs_release_dirty_inode_budget(ptr noundef %0, ptr noundef %1) #8
  %307 = load i8, ptr %302, align 4
  br label %308

308:                                              ; preds = %306, %301
  %309 = phi i8 [ %307, %306 ], [ %303, %301 ]
  %310 = and i8 %309, -2
  store i8 %310, ptr %302, align 4
  br i1 %19, label %333, label %311

311:                                              ; preds = %308
  %312 = getelementptr inbounds %struct.ubifs_inode, ptr %4, i32 0, i32 6
  %313 = load i8, ptr %312, align 4
  %314 = and i8 %313, 1
  %315 = icmp eq i8 %314, 0
  br i1 %315, label %318, label %316

316:                                              ; preds = %311
  call void @ubifs_release_dirty_inode_budget(ptr noundef %0, ptr noundef %4) #8
  %317 = load i8, ptr %312, align 4
  br label %318

318:                                              ; preds = %316, %311
  %319 = phi i8 [ %317, %316 ], [ %313, %311 ]
  %320 = and i8 %319, -2
  store i8 %320, ptr %312, align 4
  br label %333

321:                                              ; preds = %219, %204
  %322 = phi i32 [ %220, %219 ], [ %215, %204 ]
  %323 = load ptr, ptr %205, align 8
  %324 = getelementptr %struct.ubifs_jhead, ptr %323, i32 1, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %324) #8
  br label %325

325:                                              ; preds = %321, %278, %272, %265, %259, %256, %249, %242
  %326 = phi i32 [ %322, %321 ], [ %245, %242 ], [ %251, %249 ], [ %268, %265 ], [ %275, %272 ], [ %281, %278 ], [ %257, %256 ], [ %261, %259 ]
  call void @ubifs_ro_mode(ptr noundef %0, i32 noundef %326) #8
  br i1 %18, label %327, label %330

327:                                              ; preds = %325
  %328 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 10
  %329 = load i32, ptr %328, align 4
  call void @ubifs_delete_orphan(ptr noundef %0, i32 noundef %329) #8
  br label %330

330:                                              ; preds = %327, %325, %196
  %331 = phi i32 [ %326, %327 ], [ %326, %325 ], [ %194, %196 ]
  %332 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 24
  call void @up_read(ptr noundef %332) #8
  br label %333

333:                                              ; preds = %330, %318, %308, %69
  %334 = phi i32 [ 0, %318 ], [ 0, %308 ], [ %70, %69 ], [ %331, %330 ]
  call void @kfree(ptr noundef nonnull %67) #8
  br label %335

335:                                              ; preds = %333, %55
  %336 = phi i32 [ -12, %55 ], [ %334, %333 ]
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  ret i32 %336
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_jnl_truncate(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [0 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.ubifs_key, align 8
  %9 = alloca %union.ubifs_key, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  store i64 0, ptr %8, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  store i64 0, ptr %9, align 8, !annotation !8
  %10 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 10
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %16, %4
  %22 = phi i1 [ true, %4 ], [ %20, %16 ]
  %23 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %24 = load i32, ptr %23, align 4
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %5) #8
  %25 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 15
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28, !prof !9

28:                                               ; preds = %21
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 1525) #8
  br label %29

29:                                               ; preds = %28, %21
  %30 = load i16, ptr %1, align 8
  %31 = and i16 %30, -4096
  %32 = icmp eq i16 %31, -32768
  br i1 %32, label %34, label %33, !prof !9

33:                                               ; preds = %29
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 1526) #8
  br label %34

34:                                               ; preds = %33, %29
  %35 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 7
  %36 = tail call zeroext i1 @mutex_is_locked(ptr noundef %35) #8
  br i1 %36, label %38, label %37, !prof !9

37:                                               ; preds = %34
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 1527) #8
  br label %38

38:                                               ; preds = %37, %34
  %39 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8504, i32 noundef 3136, i32 noundef 2) #9
  %40 = icmp eq ptr %39, null
  br i1 %40, label %210, label %41

41:                                               ; preds = %38
  %42 = getelementptr i8, ptr %39, i32 160
  %43 = getelementptr i8, ptr %39, i32 180
  store i8 4, ptr %43, align 4
  %44 = getelementptr i8, ptr %39, i32 184
  store i32 %24, ptr %44, align 8
  %45 = getelementptr i8, ptr %39, i32 200
  store i64 %2, ptr %45, align 8
  %46 = getelementptr i8, ptr %39, i32 208
  store i64 %3, ptr %46, align 16
  %47 = getelementptr i8, ptr %39, i32 188
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %47, i8 0, i32 12, i1 false) #8
  %48 = trunc i64 %3 to i32
  %49 = and i32 %48, 4095
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %117, label %51

51:                                               ; preds = %41
  %52 = getelementptr i8, ptr %39, i32 216
  %53 = lshr i64 %3, 12
  %54 = trunc i64 %53 to i32
  %55 = icmp ult i32 %54, 536870912
  br i1 %55, label %57, label %56, !prof !9

56:                                               ; preds = %51
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.28, i32 noundef 270) #8
  br label %57

57:                                               ; preds = %56, %51
  store i32 %24, ptr %8, align 8
  %58 = or i32 %54, 536870912
  %59 = getelementptr inbounds [2 x i32], ptr %8, i32 0, i32 1
  store i32 %58, ptr %59, align 4
  %60 = call i32 @ubifs_tnc_locate(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %52, ptr noundef null, ptr noundef null) #8
  switch i32 %60, label %208 [
    i32 -2, label %117
    i32 0, label %61
  ]

61:                                               ; preds = %57
  %62 = getelementptr i8, ptr %39, i32 256
  %63 = load i32, ptr %62, align 256
  %64 = add i32 %63, -4097
  %65 = icmp ult i32 %64, -4096
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, ptr %23, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %54, i32 noundef %67) #8
  call void @ubifs_dump_node(ptr noundef %0, ptr noundef %52, i32 noundef 8288) #8
  br label %208

68:                                               ; preds = %61
  %69 = icmp ugt i32 %63, %49
  br i1 %69, label %70, label %117

70:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 %63, ptr %7, align 4
  %71 = shl nuw nsw i32 %63, 1
  %72 = call noalias align 64 ptr @__kmalloc(i32 noundef %71, i32 noundef 3136) #9
  %73 = icmp eq ptr %72, null
  br i1 %73, label %104, label %74

74:                                               ; preds = %70
  %75 = getelementptr i8, ptr %39, i32 232
  %76 = load i32, ptr %75, align 8
  %77 = add i32 %76, -48
  %78 = getelementptr i8, ptr %39, i32 260
  %79 = load i16, ptr %78, align 4
  %80 = zext i16 %79 to i32
  store i32 %80, ptr %6, align 4
  %81 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %82 = load i32, ptr %81, align 4
  %83 = and i32 %82, 16384
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %105

85:                                               ; preds = %74
  %86 = icmp eq i16 %79, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %85
  store i32 %49, ptr %7, align 4
  br label %94

88:                                               ; preds = %85
  %89 = getelementptr i8, ptr %39, i32 264
  %90 = call i32 @ubifs_decompress(ptr noundef %0, ptr noundef %89, i32 noundef %77, ptr noundef nonnull %72, ptr noundef nonnull %7, i32 noundef %80) #8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %110

92:                                               ; preds = %88
  call void @ubifs_compress(ptr noundef %0, ptr noundef nonnull %72, i32 noundef %49, ptr noundef %89, ptr noundef nonnull %7, ptr noundef nonnull %6) #8
  %93 = load i32, ptr %81, align 4
  br label %94

94:                                               ; preds = %92, %87
  %95 = phi i32 [ %93, %92 ], [ %82, %87 ]
  %96 = and i32 %95, 16384
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %94
  %99 = getelementptr i8, ptr %39, i32 262
  store i16 0, ptr %99, align 2
  %100 = load i32, ptr %7, align 4
  %101 = icmp sgt i32 %100, 4096
  br i1 %101, label %102, label %112, !prof !15

102:                                              ; preds = %98
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.1, i32 noundef 1484) #8
  %103 = load i32, ptr %7, align 4
  br label %112

104:                                              ; preds = %70
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  br label %208

105:                                              ; preds = %94, %74
  %106 = phi i32 [ 2129, %74 ], [ 2121, %94 ]
  %107 = load ptr, ptr %10, align 4
  %108 = getelementptr inbounds %struct.super_block, ptr %107, i32 0, i32 27
  %109 = load ptr, ptr %108, align 4
  call void @ubifs_assert_failed(ptr noundef %109, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %106) #8
  br label %110

110:                                              ; preds = %105, %88
  %111 = phi i32 [ %90, %88 ], [ -95, %105 ]
  call void @kfree(ptr noundef nonnull %72) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  br label %208

112:                                              ; preds = %102, %98
  %113 = phi i32 [ %103, %102 ], [ %100, %98 ]
  %114 = load i32, ptr %6, align 4
  %115 = trunc i32 %114 to i16
  store i16 %115, ptr %78, align 4
  store i32 %49, ptr %62, align 256
  %116 = add i32 %113, 48
  call void @kfree(ptr noundef nonnull %72) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  br label %117

117:                                              ; preds = %112, %68, %57, %41
  %118 = phi i32 [ 0, %41 ], [ 0, %57 ], [ %116, %112 ], [ 0, %68 ]
  %119 = phi ptr [ null, %41 ], [ %52, %57 ], [ %52, %112 ], [ %52, %68 ]
  %120 = add i32 %118, 216
  %121 = call fastcc i32 @make_reservation(ptr noundef %0, i32 noundef 1, i32 noundef %120)
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %208

123:                                              ; preds = %117
  call fastcc void @pack_inode(ptr noundef %0, ptr noundef nonnull %39, ptr noundef %1, i32 noundef 0)
  %124 = icmp eq i32 %118, 0
  %125 = zext i1 %124 to i32
  call void @ubifs_prep_grp_node(ptr noundef %0, ptr noundef %42, i32 noundef 56, i32 noundef %125) #8
  br i1 %124, label %127, label %126

126:                                              ; preds = %123
  call void @ubifs_prep_grp_node(ptr noundef %0, ptr noundef %119, i32 noundef %118, i32 noundef 1) #8
  br label %127

127:                                              ; preds = %126, %123
  %128 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  %129 = load ptr, ptr %128, align 8
  %130 = getelementptr %struct.ubifs_jhead, ptr %129, i32 1
  %131 = getelementptr %struct.ubifs_jhead, ptr %129, i32 1, i32 0, i32 2
  %132 = load i32, ptr %131, align 8
  %133 = getelementptr %struct.ubifs_jhead, ptr %129, i32 1, i32 0, i32 3
  %134 = load i32, ptr %133, align 4
  %135 = getelementptr %struct.ubifs_jhead, ptr %129, i32 1, i32 0, i32 5
  %136 = load i32, ptr %135, align 4
  %137 = add i32 %136, %134
  %138 = call i32 @ubifs_wbuf_write_nolock(ptr noundef %130, ptr noundef nonnull %39, i32 noundef %120) #8
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %201

140:                                              ; preds = %127
  br i1 %22, label %141, label %144

141:                                              ; preds = %140
  %142 = call i32 @ubifs_wbuf_sync_nolock(ptr noundef %130) #8
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %147, label %201

144:                                              ; preds = %140
  %145 = load ptr, ptr %128, align 8
  %146 = getelementptr %struct.ubifs_jhead, ptr %145, i32 1
  call void @ubifs_wbuf_add_ino_nolock(ptr noundef %146, i32 noundef %24) #8
  br label %147

147:                                              ; preds = %144, %141
  %148 = load ptr, ptr %128, align 8
  %149 = getelementptr %struct.ubifs_jhead, ptr %148, i32 1, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %149) #8
  br i1 %124, label %154, label %150

150:                                              ; preds = %147
  %151 = add i32 %137, 216
  %152 = call i32 @ubifs_tnc_add(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %132, i32 noundef %151, i32 noundef %118, ptr noundef nonnull %5) #8
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %205

154:                                              ; preds = %150, %147
  store i32 %24, ptr %8, align 8
  %155 = getelementptr inbounds [2 x i32], ptr %8, i32 0, i32 1
  store i32 0, ptr %155, align 4
  %156 = call i32 @ubifs_tnc_add(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %132, i32 noundef %137, i32 noundef 160, ptr noundef nonnull %5) #8
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %205

158:                                              ; preds = %154
  %159 = call i32 @ubifs_update_one_lp(ptr noundef %0, i32 noundef %132, i32 noundef -2147483647, i32 noundef 56, i32 noundef 0, i32 noundef 0) #8
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %205

161:                                              ; preds = %158
  %162 = lshr i64 %3, 12
  %163 = xor i1 %50, true
  %164 = zext i1 %163 to i64
  %165 = add nuw nsw i64 %162, %164
  %166 = trunc i64 %165 to i32
  %167 = icmp ult i32 %166, 536870912
  br i1 %167, label %169, label %168, !prof !9

168:                                              ; preds = %161
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.28, i32 noundef 270) #8
  br label %169

169:                                              ; preds = %168, %161
  store i32 %24, ptr %8, align 8
  %170 = or i32 %166, 536870912
  store i32 %170, ptr %155, align 4
  %171 = lshr i64 %2, 12
  %172 = and i64 %2, 4095
  %173 = icmp eq i64 %172, 0
  %174 = sext i1 %173 to i64
  %175 = add nsw i64 %171, %174
  %176 = trunc i64 %175 to i32
  %177 = icmp ult i32 %176, 536870912
  br i1 %177, label %179, label %178, !prof !9

178:                                              ; preds = %169
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.28, i32 noundef 270) #8
  br label %179

179:                                              ; preds = %178, %169
  store i32 %24, ptr %9, align 8
  %180 = or i32 %176, 536870912
  %181 = getelementptr inbounds [2 x i32], ptr %9, i32 0, i32 1
  store i32 %180, ptr %181, align 4
  %182 = call i32 @ubifs_tnc_remove_range(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %9) #8
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %205

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 24
  call void @up_read(ptr noundef %185) #8
  %186 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 9
  call void @_raw_spin_lock(ptr noundef %186) #8
  %187 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 11
  %188 = load i64, ptr %187, align 8
  %189 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 10
  store i64 %188, ptr %189, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %190 = load i16, ptr %186, align 4
  %191 = add i16 %190, 1
  store i16 %191, ptr %186, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %192 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 6
  %193 = load i8, ptr %192, align 4
  %194 = and i8 %193, 1
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %198, label %196

196:                                              ; preds = %184
  call void @ubifs_release_dirty_inode_budget(ptr noundef %0, ptr noundef %1) #8
  %197 = load i8, ptr %192, align 4
  br label %198

198:                                              ; preds = %196, %184
  %199 = phi i8 [ %197, %196 ], [ %193, %184 ]
  %200 = and i8 %199, -2
  store i8 %200, ptr %192, align 4
  br label %208

201:                                              ; preds = %141, %127
  %202 = phi i32 [ %142, %141 ], [ %138, %127 ]
  %203 = load ptr, ptr %128, align 8
  %204 = getelementptr %struct.ubifs_jhead, ptr %203, i32 1, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %204) #8
  br label %205

205:                                              ; preds = %201, %179, %158, %154, %150
  %206 = phi i32 [ %202, %201 ], [ %152, %150 ], [ %156, %154 ], [ %159, %158 ], [ %182, %179 ]
  call void @ubifs_ro_mode(ptr noundef %0, i32 noundef %206) #8
  %207 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 24
  call void @up_read(ptr noundef %207) #8
  br label %208

208:                                              ; preds = %205, %198, %117, %110, %104, %66, %57
  %209 = phi i32 [ 0, %198 ], [ %121, %117 ], [ %206, %205 ], [ %60, %57 ], [ %111, %110 ], [ -12, %104 ], [ 0, %66 ]
  call void @kfree(ptr noundef nonnull %39) #8
  br label %210

210:                                              ; preds = %208, %38
  %211 = phi i32 [ -12, %38 ], [ %209, %208 ]
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  ret i32 %211
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_remove_range(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_jnl_delete_xattr(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [0 x i8], align 1
  %6 = alloca %union.ubifs_key, align 8
  %7 = alloca %union.ubifs_key, align 8
  %8 = alloca %union.ubifs_key, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  store i64 0, ptr %6, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  store i64 0, ptr %7, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  store i64 0, ptr %8, align 8, !annotation !8
  %9 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 10
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 144
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 65
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %15, %4
  %21 = phi i1 [ true, %4 ], [ %19, %15 ]
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %5) #8
  %22 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 11
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25, !prof !9

25:                                               ; preds = %20
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 1683) #8
  br label %26

26:                                               ; preds = %25, %20
  %27 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 7
  %28 = tail call zeroext i1 @mutex_is_locked(ptr noundef %27) #8
  br i1 %28, label %30, label %29, !prof !9

29:                                               ; preds = %26
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1684) #8
  br label %30

30:                                               ; preds = %29, %26
  %31 = getelementptr inbounds %struct.fscrypt_name, ptr %3, i32 0, i32 1
  %32 = getelementptr inbounds %struct.fscrypt_name, ptr %3, i32 0, i32 1, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 57
  %35 = add i32 %33, 64
  %36 = and i32 %35, -8
  %37 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 15
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, 160
  %40 = add i32 %36, 160
  %41 = add i32 %38, 167
  %42 = and i32 %41, -8
  %43 = add i32 %40, %42
  %44 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %43, i32 noundef 3392) #9
  %45 = icmp eq ptr %44, null
  br i1 %45, label %161, label %46

46:                                               ; preds = %30
  %47 = tail call fastcc i32 @make_reservation(ptr noundef %0, i32 noundef 1, i32 noundef %43)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @kfree(ptr noundef nonnull %44) #8
  br label %161

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.ubifs_ch, ptr %44, i32 0, i32 4
  store i8 3, ptr %51, align 4
  %52 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 66
  %55 = load ptr, ptr %54, align 4
  %56 = load ptr, ptr %31, align 4
  %57 = load i32, ptr %32, align 4
  %58 = tail call i32 %55(ptr noundef %56, i32 noundef %57) #8
  %59 = icmp ult i32 %58, 536870912
  br i1 %59, label %61, label %60, !prof !9

60:                                               ; preds = %50
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 221) #8
  br label %61

61:                                               ; preds = %60, %50
  store i32 %53, ptr %6, align 8
  %62 = or i32 %58, 1610612736
  %63 = getelementptr inbounds [2 x i32], ptr %6, i32 0, i32 1
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.ubifs_dent_node, ptr %44, i32 0, i32 1
  store i32 %53, ptr %64, align 8
  %65 = getelementptr %struct.ubifs_dent_node, ptr %44, i32 0, i32 1, i32 4
  store i32 %62, ptr %65, align 4
  %66 = getelementptr %struct.ubifs_dent_node, ptr %44, i32 0, i32 1, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 32 dereferenceable(16) %66, i8 0, i64 16, i1 false)
  %67 = load i16, ptr %2, align 8
  %68 = and i16 %67, -4096
  %69 = zext i16 %68 to i32
  %70 = add nsw i32 %69, -4096
  %71 = lshr exact i32 %70, 12
  %72 = icmp ult i32 %70, 49152
  br i1 %72, label %74, label %73

73:                                               ; preds = %74, %61
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ubifs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 434, 0\0A.popsection", ""() #8, !srcloc !10
  unreachable

74:                                               ; preds = %61
  %75 = trunc i32 %71 to i16
  %76 = lshr i16 2731, %75
  %77 = and i16 %76, 1
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %73, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds [12 x i8], ptr @switch.table.ubifs_jnl_delete_xattr, i32 0, i32 %71
  %81 = load i8, ptr %80, align 1
  %82 = getelementptr inbounds %struct.ubifs_dent_node, ptr %44, i32 0, i32 4
  store i8 %81, ptr %82, align 1
  %83 = load i32, ptr %32, align 4
  %84 = trunc i32 %83 to i16
  %85 = getelementptr inbounds %struct.ubifs_dent_node, ptr %44, i32 0, i32 5
  store i16 %84, ptr %85, align 2
  %86 = getelementptr inbounds %struct.ubifs_dent_node, ptr %44, i32 0, i32 7
  %87 = load ptr, ptr %31, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %86, ptr align 1 %87, i32 %83, i1 false)
  %88 = load i32, ptr %32, align 4
  %89 = getelementptr %struct.ubifs_dent_node, ptr %44, i32 0, i32 7, i32 %88
  store i8 0, ptr %89, align 1
  %90 = getelementptr inbounds %struct.ubifs_dent_node, ptr %44, i32 0, i32 3
  store i8 0, ptr %90, align 16
  tail call void @ubifs_prep_grp_node(ptr noundef %0, ptr noundef nonnull %44, i32 noundef %34, i32 noundef 0) #8
  %91 = getelementptr i8, ptr %44, i32 %36
  tail call fastcc void @pack_inode(ptr noundef %0, ptr noundef %91, ptr noundef %2, i32 noundef 0)
  %92 = getelementptr i8, ptr %91, i32 160
  tail call fastcc void @pack_inode(ptr noundef %0, ptr noundef %92, ptr noundef %1, i32 noundef 1)
  %93 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  %94 = load ptr, ptr %93, align 8
  %95 = getelementptr %struct.ubifs_jhead, ptr %94, i32 1
  %96 = getelementptr %struct.ubifs_jhead, ptr %94, i32 1, i32 0, i32 2
  %97 = load i32, ptr %96, align 8
  %98 = getelementptr %struct.ubifs_jhead, ptr %94, i32 1, i32 0, i32 3
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr %struct.ubifs_jhead, ptr %94, i32 1, i32 0, i32 5
  %101 = load i32, ptr %100, align 4
  %102 = tail call i32 @ubifs_wbuf_write_nolock(ptr noundef %95, ptr noundef nonnull %44, i32 noundef %43) #8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %79
  br i1 %21, label %105, label %108

105:                                              ; preds = %104
  %106 = tail call i32 @ubifs_wbuf_sync_nolock(ptr noundef %95) #8
  %107 = icmp ne i32 %106, 0
  br label %112

108:                                              ; preds = %104
  %109 = load ptr, ptr %93, align 8
  %110 = getelementptr %struct.ubifs_jhead, ptr %109, i32 1
  %111 = load i32, ptr %52, align 4
  tail call void @ubifs_wbuf_add_ino_nolock(ptr noundef %110, i32 noundef %111) #8
  br label %112

112:                                              ; preds = %108, %105, %79
  %113 = phi i1 [ false, %108 ], [ true, %79 ], [ %107, %105 ]
  %114 = phi i32 [ 0, %108 ], [ %102, %79 ], [ %106, %105 ]
  %115 = load ptr, ptr %93, align 8
  %116 = getelementptr %struct.ubifs_jhead, ptr %115, i32 1, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %116) #8
  tail call void @kfree(ptr noundef nonnull %44) #8
  br i1 %113, label %158, label %117

117:                                              ; preds = %112
  %118 = call i32 @ubifs_tnc_remove_nm(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %3) #8
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %158

120:                                              ; preds = %117
  %121 = call i32 @ubifs_update_one_lp(ptr noundef %0, i32 noundef %97, i32 noundef -2147483647, i32 noundef %34, i32 noundef 0, i32 noundef 0) #8
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %158

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 10
  %125 = load i32, ptr %124, align 4
  store i32 %125, ptr %7, align 8
  %126 = getelementptr inbounds [2 x i32], ptr %7, i32 0, i32 1
  store i32 0, ptr %126, align 4
  store i32 %125, ptr %8, align 8
  %127 = getelementptr inbounds [2 x i32], ptr %8, i32 0, i32 1
  store i32 -1, ptr %127, align 4
  %128 = call i32 @ubifs_tnc_remove_range(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %8) #8
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %158

130:                                              ; preds = %123
  %131 = call i32 @ubifs_update_one_lp(ptr noundef %0, i32 noundef %97, i32 noundef -2147483647, i32 noundef 160, i32 noundef 0, i32 noundef 0) #8
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %158

133:                                              ; preds = %130
  %134 = load i32, ptr %52, align 4
  store i32 %134, ptr %7, align 8
  store i32 0, ptr %126, align 4
  %135 = sub i32 -160, %38
  %136 = add i32 %43, %135
  %137 = add i32 %136, %99
  %138 = add i32 %137, %101
  %139 = call i32 @ubifs_tnc_add(ptr noundef %0, ptr noundef nonnull %7, i32 noundef %97, i32 noundef %138, i32 noundef %39, ptr noundef nonnull %5) #8
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %158

141:                                              ; preds = %133
  %142 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 24
  call void @up_read(ptr noundef %142) #8
  %143 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 9
  call void @_raw_spin_lock(ptr noundef %143) #8
  %144 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 11
  %145 = load i64, ptr %144, align 8
  %146 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 10
  store i64 %145, ptr %146, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %147 = load i16, ptr %143, align 4
  %148 = add i16 %147, 1
  store i16 %148, ptr %143, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %149 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 6
  %150 = load i8, ptr %149, align 4
  %151 = and i8 %150, 1
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %141
  call void @ubifs_release_dirty_inode_budget(ptr noundef %0, ptr noundef %1) #8
  %154 = load i8, ptr %149, align 4
  br label %155

155:                                              ; preds = %153, %141
  %156 = phi i8 [ %154, %153 ], [ %150, %141 ]
  %157 = and i8 %156, -2
  store i8 %157, ptr %149, align 4
  br label %161

158:                                              ; preds = %133, %130, %123, %120, %117, %112
  %159 = phi i32 [ %114, %112 ], [ %118, %117 ], [ %121, %120 ], [ %128, %123 ], [ %131, %130 ], [ %139, %133 ]
  call void @ubifs_ro_mode(ptr noundef %0, i32 noundef %159) #8
  %160 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 24
  call void @up_read(ptr noundef %160) #8
  br label %161

161:                                              ; preds = %158, %155, %49, %30
  %162 = phi i32 [ %47, %49 ], [ %159, %158 ], [ 0, %155 ], [ -12, %30 ]
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  ret i32 %162
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_jnl_change_xattr(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [0 x i8], align 1
  %5 = alloca %union.ubifs_key, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  store i64 0, ptr %5, align 8, !annotation !8
  %6 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 144
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 65
  %16 = icmp ne i32 %15, 0
  br label %17

17:                                               ; preds = %12, %3
  %18 = phi i1 [ true, %3 ], [ %16, %12 ]
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %4) #8
  %19 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23, !prof !15

22:                                               ; preds = %17
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 1805) #8
  br label %23

23:                                               ; preds = %22, %17
  %24 = getelementptr inbounds %struct.ubifs_inode, ptr %2, i32 0, i32 7
  %25 = tail call zeroext i1 @mutex_is_locked(ptr noundef %24) #8
  br i1 %25, label %27, label %26, !prof !9

26:                                               ; preds = %23
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1806) #8
  br label %27

27:                                               ; preds = %26, %23
  %28 = getelementptr inbounds %struct.ubifs_inode, ptr %2, i32 0, i32 15
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 160
  %31 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 15
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 160
  %34 = add i32 %29, 167
  %35 = and i32 %34, -8
  %36 = add i32 %32, 167
  %37 = and i32 %36, -8
  %38 = add i32 %37, %35
  %39 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %38, i32 noundef 3392) #9
  %40 = icmp eq ptr %39, null
  br i1 %40, label %105, label %41

41:                                               ; preds = %27
  %42 = tail call fastcc i32 @make_reservation(ptr noundef %0, i32 noundef 1, i32 noundef %38)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %103

44:                                               ; preds = %41
  tail call fastcc void @pack_inode(ptr noundef %0, ptr noundef nonnull %39, ptr noundef %2, i32 noundef 0)
  %45 = getelementptr i8, ptr %39, i32 %35
  tail call fastcc void @pack_inode(ptr noundef %0, ptr noundef %45, ptr noundef %1, i32 noundef 1)
  %46 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr %struct.ubifs_jhead, ptr %47, i32 1
  %49 = getelementptr %struct.ubifs_jhead, ptr %47, i32 1, i32 0, i32 2
  %50 = load i32, ptr %49, align 8
  %51 = getelementptr %struct.ubifs_jhead, ptr %47, i32 1, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr %struct.ubifs_jhead, ptr %47, i32 1, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, %52
  %56 = tail call i32 @ubifs_wbuf_write_nolock(ptr noundef %48, ptr noundef nonnull %39, i32 noundef %38) #8
  %57 = icmp eq i32 %56, 0
  %58 = load ptr, ptr %46, align 8
  br i1 %57, label %61, label %59

59:                                               ; preds = %44
  %60 = getelementptr %struct.ubifs_jhead, ptr %58, i32 1, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %60) #8
  br label %100

61:                                               ; preds = %44
  br i1 %18, label %69, label %62

62:                                               ; preds = %61
  %63 = getelementptr %struct.ubifs_jhead, ptr %58, i32 1
  %64 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 10
  %65 = load i32, ptr %64, align 4
  tail call void @ubifs_wbuf_add_ino_nolock(ptr noundef %63, i32 noundef %65) #8
  %66 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %67 = load i32, ptr %66, align 4
  tail call void @ubifs_wbuf_add_ino_nolock(ptr noundef %63, i32 noundef %67) #8
  %68 = load ptr, ptr %46, align 8
  br label %69

69:                                               ; preds = %62, %61
  %70 = phi ptr [ %68, %62 ], [ %58, %61 ]
  %71 = getelementptr %struct.ubifs_jhead, ptr %70, i32 1, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %71) #8
  %72 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 10
  %73 = load i32, ptr %72, align 4
  store i32 %73, ptr %5, align 8
  %74 = getelementptr inbounds [2 x i32], ptr %5, i32 0, i32 1
  store i32 0, ptr %74, align 4
  %75 = call i32 @ubifs_tnc_add(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %50, i32 noundef %55, i32 noundef %30, ptr noundef nonnull %4) #8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %100

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %79 = load i32, ptr %78, align 4
  store i32 %79, ptr %5, align 8
  store i32 0, ptr %74, align 4
  %80 = add i32 %55, %35
  %81 = call i32 @ubifs_tnc_add(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %50, i32 noundef %80, i32 noundef %33, ptr noundef nonnull %4) #8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %100

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 24
  call void @up_read(ptr noundef %84) #8
  %85 = getelementptr inbounds %struct.ubifs_inode, ptr %2, i32 0, i32 9
  call void @_raw_spin_lock(ptr noundef %85) #8
  %86 = getelementptr inbounds %struct.ubifs_inode, ptr %2, i32 0, i32 11
  %87 = load i64, ptr %86, align 8
  %88 = getelementptr inbounds %struct.ubifs_inode, ptr %2, i32 0, i32 10
  store i64 %87, ptr %88, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %89 = load i16, ptr %85, align 4
  %90 = add i16 %89, 1
  store i16 %90, ptr %85, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %91 = getelementptr inbounds %struct.ubifs_inode, ptr %2, i32 0, i32 6
  %92 = load i8, ptr %91, align 4
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %83
  call void @ubifs_release_dirty_inode_budget(ptr noundef %0, ptr noundef %2) #8
  %96 = load i8, ptr %91, align 4
  br label %97

97:                                               ; preds = %95, %83
  %98 = phi i8 [ %96, %95 ], [ %92, %83 ]
  %99 = and i8 %98, -2
  store i8 %99, ptr %91, align 4
  br label %103

100:                                              ; preds = %77, %69, %59
  %101 = phi i32 [ %75, %69 ], [ %81, %77 ], [ %56, %59 ]
  call void @ubifs_ro_mode(ptr noundef %0, i32 noundef %101) #8
  %102 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 24
  call void @up_read(ptr noundef %102) #8
  br label %103

103:                                              ; preds = %100, %97, %41
  %104 = phi i32 [ 0, %97 ], [ %42, %41 ], [ %101, %100 ]
  call void @kfree(ptr noundef nonnull %39) #8
  br label %105

105:                                              ; preds = %103, %27
  %106 = phi i32 [ -12, %27 ], [ %104, %103 ]
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret i32 %106
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_run_commit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_budg(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_lprops(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_check_lprops(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_find_free_space(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_garbage_collect(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_wbuf_sync_nolock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_add_bud_to_log(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_wbuf_seek_nolock(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_change_one_lp(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_wbuf_write_nolock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_update_one_lp(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_release_dirty_inode_budget(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_locate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_decompress(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2153486077, i64 2153486560, i64 2153486114, i64 2153486170, i64 2153486204, i64 2153486228, i64 2153486269, i64 2153486290, i64 2153486318, i64 2153486352}
!11 = !{i64 2149126121}
!12 = !{i64 2149121945}
!13 = !{i64 2149122020, i64 2149122047, i64 2149122094, i64 2149122116, i64 2149122144, i64 2149122164}
!14 = !{i64 2149149124}
!15 = !{!"branch_weights", i32 1, i32 2000}
