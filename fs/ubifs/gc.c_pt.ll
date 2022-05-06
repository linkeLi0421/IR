; ModuleID = '/llk/IR/fs/ubifs/gc.c_pt.bc'
source_filename = "../fs/ubifs/gc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
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
%struct.rb_root = type { ptr }
%struct.ubifs_mount_opts = type { i16, [2 x i8] }
%struct.ubifs_lprops = type { i32, i32, i32, i32, %union.anon.75 }
%union.anon.75 = type { %struct.list_head }
%struct.ubifs_wbuf = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, %struct.spinlock, %struct.hrtimer, i8, i32, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ubifs_jhead = type { %struct.ubifs_wbuf, %struct.list_head, i8, ptr }
%struct.ubifs_scan_leb = type { i32, i32, %struct.list_head, i32, ptr }
%struct.ubifs_scan_node = type { %struct.list_head, %union.ubifs_key, i64, i32, i32, i32, ptr }
%struct.ubifs_idx_node = type <{ %struct.ubifs_ch, i16, i16, [0 x i8] }>
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.ubifs_branch = type { i32, i32, i32, [0 x i8] }
%struct.ubifs_gced_idx_leb = type { %struct.list_head, i32, i32 }

@.str = private unnamed_addr constant [69 x i8] c"c->gc_lnum != -1 || wbuf->offs + wbuf->used == 0 || c->need_recovery\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"fs/ubifs/gc.c\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"c->gc_lnum != lnum\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"wbuf->lnum != lnum\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"!(lp->flags & LPROPS_INDEX)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"!list_empty(&sleb->nodes)\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"snod->type == UBIFS_IDX_NODE\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"commit lock is not locked!\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"!c->ro_media && !c->ro_mount\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"!wbuf->used\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"ret == LEB_RETAINED\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"ret < 0\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"ret != -ENOSPC && ret != -EAGAIN\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"!(lp->flags & LPROPS_TAKEN)\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"lp->flags & LPROPS_INDEX\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"lp->flags & LPROPS_TAKEN\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.17 = private unnamed_addr constant [14 x i8] c"gc_lnum != -1\00", align 1
@.str.18 = private unnamed_addr constant [194 x i8] c"snod->type == UBIFS_INO_NODE || snod->type == UBIFS_DATA_NODE || snod->type == UBIFS_DENT_NODE || snod->type == UBIFS_XENT_NODE || snod->type == UBIFS_TRUN_NODE || snod->type == UBIFS_AUTH_NODE\00", align 1
@.str.19 = private unnamed_addr constant [176 x i8] c"key_type(c, &snod->key) == UBIFS_DATA_KEY || key_type(c, &snod->key) == UBIFS_INO_KEY || key_type(c, &snod->key) == UBIFS_DENT_KEY || key_type(c, &snod->key) == UBIFS_XENT_KEY\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"key_type(c, &sa->key) == UBIFS_DATA_KEY\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"key_type(c, &sb->key) == UBIFS_DATA_KEY\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"sa->type == UBIFS_DATA_NODE\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"sb->type == UBIFS_DATA_NODE\00", align 1
@.str.24 = private unnamed_addr constant [83 x i8] c"key_type(c, &sa->key) != UBIFS_DATA_KEY && key_type(c, &sb->key) != UBIFS_DATA_KEY\00", align 1
@.str.25 = private unnamed_addr constant [59 x i8] c"sa->type != UBIFS_DATA_NODE && sb->type != UBIFS_DATA_NODE\00", align 1
@.str.26 = private unnamed_addr constant [83 x i8] c"key_type(c, &sa->key) == UBIFS_DENT_KEY || key_type(c, &sa->key) == UBIFS_XENT_KEY\00", align 1
@.str.27 = private unnamed_addr constant [83 x i8] c"key_type(c, &sb->key) == UBIFS_DENT_KEY || key_type(c, &sb->key) == UBIFS_XENT_KEY\00", align 1
@.str.28 = private unnamed_addr constant [59 x i8] c"sa->type == UBIFS_DENT_NODE || sa->type == UBIFS_XENT_NODE\00", align 1
@.str.29 = private unnamed_addr constant [59 x i8] c"sb->type == UBIFS_DENT_NODE || sb->type == UBIFS_XENT_NODE\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"mutex_is_locked(&c->lp_mutex)\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"fs/ubifs/misc.h\00", align 1
@.str.32 = private unnamed_addr constant [60 x i8] c"c->lst.empty_lebs >= 0 && c->lst.empty_lebs <= c->main_lebs\00", align 1
@switch.table.ubifs_garbage_collect_leb = private unnamed_addr constant [13 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 12], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_garbage_collect_leb(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.list_head, align 8
  %4 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 121
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ubifs_wbuf, ptr %5, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ubifs_wbuf, ptr %5, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = sub i32 0, %15
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 186
  %20 = load i8, ptr %19, align 4
  %21 = and i8 %20, 2
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %25, !prof !8

23:                                               ; preds = %18
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 499) #6
  %24 = load i32, ptr %8, align 4
  br label %25

25:                                               ; preds = %23, %18, %11, %2
  %26 = phi i32 [ %9, %2 ], [ -1, %11 ], [ -1, %18 ], [ %24, %23 ]
  %27 = icmp eq i32 %26, %7
  br i1 %27, label %28, label %29, !prof !8

28:                                               ; preds = %25
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 500) #6
  br label %29

29:                                               ; preds = %28, %25
  %30 = getelementptr inbounds %struct.ubifs_wbuf, ptr %5, i32 0, i32 2
  %31 = load i32, ptr %30, align 8
  %32 = icmp eq i32 %31, %7
  br i1 %32, label %33, label %34, !prof !8

33:                                               ; preds = %29
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 501) #6
  br label %34

34:                                               ; preds = %33, %29
  %35 = load i32, ptr %1, align 4
  %36 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, %35
  %39 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %40 = load i32, ptr %39, align 8
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %89

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47, !prof !9

47:                                               ; preds = %42
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 506) #6
  %48 = load i32, ptr %1, align 4
  %49 = load i32, ptr %39, align 8
  br label %50

50:                                               ; preds = %47, %42
  %51 = phi i32 [ %49, %47 ], [ %38, %42 ]
  %52 = phi i32 [ %48, %47 ], [ %35, %42 ]
  %53 = icmp eq i32 %52, %51
  br i1 %53, label %81, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 18
  %56 = load i32, ptr %55, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %70, %54
  %59 = phi i32 [ %71, %70 ], [ %56, %54 ]
  %60 = phi i32 [ %72, %70 ], [ 0, %54 ]
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %4, align 8
  %64 = getelementptr %struct.ubifs_jhead, ptr %63, i32 %60
  %65 = getelementptr inbounds %struct.ubifs_wbuf, ptr %64, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %65) #6
  %66 = tail call i32 @ubifs_wbuf_sync_nolock(ptr noundef %64) #6
  tail call void @mutex_unlock(ptr noundef %65) #6
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %399

68:                                               ; preds = %62
  %69 = load i32, ptr %55, align 4
  br label %70

70:                                               ; preds = %68, %58
  %71 = phi i32 [ %69, %68 ], [ %59, %58 ]
  %72 = add nuw nsw i32 %60, 1
  %73 = icmp slt i32 %72, %71
  br i1 %73, label %58, label %74

74:                                               ; preds = %70
  %75 = load i32, ptr %39, align 8
  br label %76

76:                                               ; preds = %74, %54
  %77 = phi i32 [ %75, %74 ], [ %51, %54 ]
  %78 = load i32, ptr %6, align 4
  %79 = tail call i32 @ubifs_change_one_lp(ptr noundef %0, i32 noundef %78, i32 noundef %77, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %399

81:                                               ; preds = %76, %50
  %82 = load i32, ptr %6, align 4
  %83 = tail call i32 @ubifs_leb_unmap(ptr noundef %0, i32 noundef %82) #6
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %399

85:                                               ; preds = %81
  %86 = load i32, ptr %8, align 4
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %399

88:                                               ; preds = %85
  store i32 %7, ptr %8, align 4
  br label %399

89:                                               ; preds = %34
  %90 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 122
  %91 = load ptr, ptr %90, align 8
  %92 = tail call ptr @ubifs_scan(ptr noundef %0, i32 noundef %7, i32 noundef 0, ptr noundef %91, i32 noundef 0) #6
  %93 = icmp ugt ptr %92, inttoptr (i32 -4096 to ptr)
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = ptrtoint ptr %92 to i32
  br label %399

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %92, i32 0, i32 2
  %98 = load volatile ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, %97
  br i1 %99, label %100, label %102, !prof !8

100:                                              ; preds = %96
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 542) #6
  %101 = load ptr, ptr %97, align 4
  br label %102

102:                                              ; preds = %100, %96
  %103 = phi ptr [ %101, %100 ], [ %98, %96 ]
  %104 = getelementptr inbounds %struct.ubifs_scan_node, ptr %103, i32 0, i32 3
  %105 = load i32, ptr %104, align 8
  %106 = icmp eq i32 %105, 9
  br i1 %106, label %107, label %152

107:                                              ; preds = %102
  %108 = icmp eq ptr %103, %97
  br i1 %108, label %137, label %109

109:                                              ; preds = %134, %107
  %110 = phi i32 [ %136, %134 ], [ 9, %107 ]
  %111 = phi ptr [ %132, %134 ], [ %103, %107 ]
  %112 = getelementptr inbounds %struct.ubifs_scan_node, ptr %111, i32 0, i32 6
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.ubifs_idx_node, ptr %113, i32 0, i32 2
  %115 = load i16, ptr %114, align 1
  %116 = zext i16 %115 to i32
  %117 = icmp eq i32 %110, 9
  br i1 %117, label %119, label %118, !prof !9

118:                                              ; preds = %109
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 554) #6
  br label %119

119:                                              ; preds = %118, %109
  %120 = getelementptr inbounds %struct.ubifs_idx_node, ptr %113, i32 0, i32 3
  %121 = getelementptr inbounds %struct.ubifs_branch, ptr %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.ubifs_scan_node, ptr %111, i32 0, i32 1
  %123 = load i32, ptr %121, align 8
  store i32 %123, ptr %122, align 8
  %124 = getelementptr %struct.ubifs_idx_node, ptr %113, i32 1, i32 0, i32 3
  %125 = load i32, ptr %124, align 4
  %126 = getelementptr [2 x i32], ptr %122, i32 0, i32 1
  store i32 %125, ptr %126, align 4
  %127 = getelementptr inbounds %struct.ubifs_scan_node, ptr %111, i32 0, i32 4
  %128 = load i32, ptr %127, align 4
  %129 = tail call i32 @ubifs_dirty_idx_node(ptr noundef %0, ptr noundef %122, i32 noundef %116, i32 noundef %7, i32 noundef %128) #6
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %391

131:                                              ; preds = %119
  %132 = load ptr, ptr %111, align 8
  %133 = icmp eq ptr %132, %97
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.ubifs_scan_node, ptr %132, i32 0, i32 3
  %136 = load i32, ptr %135, align 8
  br label %109

137:                                              ; preds = %131, %107
  %138 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %139 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %138, i32 noundef 3136, i32 noundef 16) #7
  %140 = icmp eq ptr %139, null
  br i1 %140, label %391, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.ubifs_gced_idx_leb, ptr %139, i32 0, i32 1
  store i32 %7, ptr %142, align 8
  %143 = getelementptr inbounds %struct.ubifs_gced_idx_leb, ptr %139, i32 0, i32 2
  store i32 0, ptr %143, align 4
  %144 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 123
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr inbounds %struct.list_head, ptr %145, i32 0, i32 1
  store ptr %139, ptr %146, align 4
  store ptr %145, ptr %139, align 8
  %147 = getelementptr inbounds %struct.list_head, ptr %139, i32 0, i32 1
  store ptr %144, ptr %147, align 4
  store volatile ptr %139, ptr %144, align 4
  %148 = load i32, ptr %39, align 8
  %149 = tail call i32 @ubifs_change_one_lp(ptr noundef %0, i32 noundef %7, i32 noundef %148, i32 noundef 0, i32 noundef 0, i32 noundef 32, i32 noundef 1) #6
  %150 = icmp eq i32 %149, 0
  %151 = select i1 %150, i32 1, i32 %149
  br label %391

152:                                              ; preds = %102
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  store ptr %3, ptr %3, align 8
  %153 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %153, align 4
  %154 = load ptr, ptr %4, align 8
  %155 = getelementptr inbounds %struct.ubifs_wbuf, ptr %154, i32 0, i32 2
  %156 = load i32, ptr %155, align 8
  %157 = icmp eq i32 %156, -1
  br i1 %157, label %158, label %163

158:                                              ; preds = %152
  %159 = call fastcc i32 @switch_gc_head(ptr noundef %0) #6
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %352

161:                                              ; preds = %158
  %162 = load ptr, ptr %97, align 4
  br label %163

163:                                              ; preds = %161, %152
  %164 = phi ptr [ %162, %161 ], [ %103, %152 ]
  %165 = icmp eq ptr %164, %97
  br i1 %165, label %225, label %166

166:                                              ; preds = %222, %163
  %167 = phi i32 [ %223, %222 ], [ 2147483647, %163 ]
  %168 = phi ptr [ %169, %222 ], [ %164, %163 ]
  %169 = load ptr, ptr %168, align 8
  %170 = getelementptr inbounds %struct.ubifs_scan_node, ptr %168, i32 0, i32 3
  %171 = load i32, ptr %170, align 8
  %172 = icmp ult i32 %171, 13
  br i1 %172, label %174, label %173

173:                                              ; preds = %174, %166
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 243) #6
  br label %181

174:                                              ; preds = %166
  %175 = trunc i32 %171 to i16
  %176 = lshr i16 4127, %175
  %177 = and i16 %176, 1
  %178 = icmp eq i16 %177, 0
  br i1 %178, label %173, label %179

179:                                              ; preds = %174
  %180 = getelementptr inbounds [13 x i32], ptr @switch.table.ubifs_garbage_collect_leb, i32 0, i32 %171
  br label %181

181:                                              ; preds = %179, %173
  %182 = phi ptr [ %170, %173 ], [ %180, %179 ]
  %183 = load i32, ptr %182, align 4
  %184 = icmp ult i32 %183, 4
  br i1 %184, label %190, label %185

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.list_head, ptr %168, i32 0, i32 1
  %187 = load ptr, ptr %186, align 4
  %188 = load ptr, ptr %168, align 4
  %189 = getelementptr inbounds %struct.list_head, ptr %188, i32 0, i32 1
  store ptr %187, ptr %189, align 4
  store volatile ptr %188, ptr %187, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %168, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %186, align 4
  call void @kfree(ptr noundef %168) #6
  br label %222

190:                                              ; preds = %181
  %191 = getelementptr inbounds %struct.ubifs_scan_node, ptr %168, i32 0, i32 1
  %192 = getelementptr [2 x i32], ptr %191, i32 0, i32 1
  %193 = load i32, ptr %192, align 4
  %194 = icmp sgt i32 %193, -1
  br i1 %194, label %196, label %195, !prof !10

195:                                              ; preds = %190
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 258) #6
  br label %196

196:                                              ; preds = %195, %190
  %197 = load i32, ptr %92, align 4
  %198 = getelementptr inbounds %struct.ubifs_scan_node, ptr %168, i32 0, i32 4
  %199 = load i32, ptr %198, align 4
  %200 = call i32 @ubifs_tnc_has_node(ptr noundef %0, ptr noundef %191, i32 noundef 0, i32 noundef %197, i32 noundef %199, i32 noundef 0) #6
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %343, label %202

202:                                              ; preds = %196
  %203 = icmp eq i32 %200, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %202
  %205 = getelementptr inbounds %struct.list_head, ptr %168, i32 0, i32 1
  %206 = load ptr, ptr %205, align 4
  %207 = load ptr, ptr %168, align 4
  %208 = getelementptr inbounds %struct.list_head, ptr %207, i32 0, i32 1
  store ptr %206, ptr %208, align 4
  store volatile ptr %207, ptr %206, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %168, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %205, align 4
  call void @kfree(ptr noundef %168) #6
  br label %222

209:                                              ; preds = %202
  %210 = getelementptr inbounds %struct.ubifs_scan_node, ptr %168, i32 0, i32 5
  %211 = load i32, ptr %210, align 8
  %212 = call i32 @llvm.smin.i32(i32 %211, i32 %167) #6
  %213 = load i32, ptr %192, align 4
  %214 = and i32 %213, -536870912
  %215 = icmp eq i32 %214, 536870912
  br i1 %215, label %222, label %216

216:                                              ; preds = %209
  %217 = getelementptr inbounds %struct.list_head, ptr %168, i32 0, i32 1
  %218 = load ptr, ptr %217, align 4
  %219 = load ptr, ptr %168, align 4
  %220 = getelementptr inbounds %struct.list_head, ptr %219, i32 0, i32 1
  store ptr %218, ptr %220, align 4
  store volatile ptr %219, ptr %218, align 4
  %221 = load ptr, ptr %153, align 4
  store ptr %168, ptr %153, align 4
  store ptr %3, ptr %168, align 4
  store ptr %221, ptr %217, align 4
  store volatile ptr %168, ptr %221, align 4
  br label %222

222:                                              ; preds = %216, %209, %204, %185
  %223 = phi i32 [ %167, %204 ], [ %212, %209 ], [ %212, %216 ], [ %167, %185 ]
  %224 = icmp eq ptr %169, %97
  br i1 %224, label %225, label %166

225:                                              ; preds = %222, %163
  %226 = phi i32 [ 2147483647, %163 ], [ %223, %222 ]
  call void @list_sort(ptr noundef %0, ptr noundef %97, ptr noundef nonnull @data_nodes_cmp) #6
  call void @list_sort(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull @nondata_nodes_cmp) #6
  %227 = call i32 @dbg_check_data_nodes_order(ptr noundef %0, ptr noundef %97) #6
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %343

229:                                              ; preds = %225
  %230 = call i32 @dbg_check_nondata_nodes_order(ptr noundef %0, ptr noundef nonnull %3) #6
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %343

232:                                              ; preds = %229
  %233 = getelementptr inbounds %struct.ubifs_wbuf, ptr %154, i32 0, i32 3
  %234 = getelementptr inbounds %struct.ubifs_wbuf, ptr %154, i32 0, i32 5
  br label %235

235:                                              ; preds = %340, %232
  %236 = load ptr, ptr %97, align 4
  br label %237

237:                                              ; preds = %258, %235
  %238 = phi ptr [ %236, %235 ], [ %239, %258 ]
  %239 = load ptr, ptr %238, align 8
  %240 = icmp eq ptr %238, %97
  br i1 %240, label %270, label %241

241:                                              ; preds = %237
  %242 = load i32, ptr %39, align 8
  %243 = load i32, ptr %233, align 4
  %244 = load i32, ptr %234, align 4
  %245 = add i32 %244, %243
  %246 = sub i32 %242, %245
  %247 = getelementptr inbounds %struct.ubifs_scan_node, ptr %238, i32 0, i32 5
  %248 = load i32, ptr %247, align 8
  %249 = icmp sgt i32 %248, %246
  br i1 %249, label %270, label %250

250:                                              ; preds = %241
  %251 = load i32, ptr %155, align 8
  %252 = call i32 @__cond_resched() #6
  %253 = getelementptr inbounds %struct.ubifs_scan_node, ptr %238, i32 0, i32 6
  %254 = load ptr, ptr %253, align 4
  %255 = load i32, ptr %247, align 8
  %256 = call i32 @ubifs_wbuf_write_nolock(ptr noundef %154, ptr noundef %254, i32 noundef %255) #6
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %343

258:                                              ; preds = %250
  %259 = getelementptr inbounds %struct.ubifs_scan_node, ptr %238, i32 0, i32 1
  %260 = load i32, ptr %92, align 4
  %261 = getelementptr inbounds %struct.ubifs_scan_node, ptr %238, i32 0, i32 4
  %262 = load i32, ptr %261, align 4
  %263 = load i32, ptr %247, align 8
  %264 = call i32 @ubifs_tnc_replace(ptr noundef %0, ptr noundef %259, i32 noundef %260, i32 noundef %262, i32 noundef %251, i32 noundef %245, i32 noundef %263) #6
  %265 = getelementptr inbounds %struct.list_head, ptr %238, i32 0, i32 1
  %266 = load ptr, ptr %265, align 4
  %267 = load ptr, ptr %238, align 4
  %268 = getelementptr inbounds %struct.list_head, ptr %267, i32 0, i32 1
  store ptr %266, ptr %268, align 4
  store volatile ptr %267, ptr %266, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %238, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %265, align 4
  call void @kfree(ptr noundef %238) #6
  %269 = icmp eq i32 %264, 0
  br i1 %269, label %237, label %343

270:                                              ; preds = %241, %237
  %271 = load ptr, ptr %3, align 8
  %272 = icmp eq ptr %271, %3
  br i1 %272, label %334, label %273

273:                                              ; preds = %270
  %274 = load i32, ptr %39, align 8
  %275 = load i32, ptr %233, align 4
  %276 = load i32, ptr %234, align 4
  %277 = add i32 %276, %275
  %278 = sub i32 %274, %277
  %279 = icmp slt i32 %278, %226
  br i1 %279, label %334, label %280

280:                                              ; preds = %301, %273
  %281 = phi i32 [ %302, %301 ], [ %276, %273 ]
  %282 = phi i32 [ %303, %301 ], [ %275, %273 ]
  %283 = phi i32 [ %304, %301 ], [ %274, %273 ]
  %284 = phi i32 [ %306, %301 ], [ %278, %273 ]
  %285 = phi i32 [ %305, %301 ], [ %277, %273 ]
  %286 = phi ptr [ %287, %301 ], [ %271, %273 ]
  %287 = load ptr, ptr %286, align 8
  %288 = getelementptr inbounds %struct.ubifs_scan_node, ptr %286, i32 0, i32 5
  %289 = load i32, ptr %288, align 8
  %290 = icmp sgt i32 %289, %284
  br i1 %290, label %291, label %308

291:                                              ; preds = %280
  %292 = getelementptr inbounds %struct.ubifs_scan_node, ptr %286, i32 0, i32 1
  %293 = getelementptr [2 x i32], ptr %292, i32 0, i32 1
  %294 = load i32, ptr %293, align 4
  %295 = and i32 %294, -536870912
  %296 = icmp eq i32 %295, 1073741824
  %297 = icmp eq i32 %289, 160
  %298 = select i1 %296, i1 true, i1 %297
  %299 = icmp eq ptr %287, %3
  %300 = select i1 %298, i1 true, i1 %299
  br i1 %300, label %334, label %301

301:                                              ; preds = %330, %291
  %302 = phi i32 [ %333, %330 ], [ %281, %291 ]
  %303 = phi i32 [ %332, %330 ], [ %282, %291 ]
  %304 = phi i32 [ %331, %330 ], [ %283, %291 ]
  %305 = add i32 %302, %303
  %306 = sub i32 %304, %305
  %307 = icmp slt i32 %306, %226
  br i1 %307, label %334, label %280

308:                                              ; preds = %280
  %309 = load i32, ptr %155, align 8
  %310 = call i32 @__cond_resched() #6
  %311 = getelementptr inbounds %struct.ubifs_scan_node, ptr %286, i32 0, i32 6
  %312 = load ptr, ptr %311, align 4
  %313 = load i32, ptr %288, align 8
  %314 = call i32 @ubifs_wbuf_write_nolock(ptr noundef %154, ptr noundef %312, i32 noundef %313) #6
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %343

316:                                              ; preds = %308
  %317 = getelementptr inbounds %struct.ubifs_scan_node, ptr %286, i32 0, i32 1
  %318 = load i32, ptr %92, align 4
  %319 = getelementptr inbounds %struct.ubifs_scan_node, ptr %286, i32 0, i32 4
  %320 = load i32, ptr %319, align 4
  %321 = load i32, ptr %288, align 8
  %322 = call i32 @ubifs_tnc_replace(ptr noundef %0, ptr noundef %317, i32 noundef %318, i32 noundef %320, i32 noundef %309, i32 noundef %285, i32 noundef %321) #6
  %323 = getelementptr inbounds %struct.list_head, ptr %286, i32 0, i32 1
  %324 = load ptr, ptr %323, align 4
  %325 = load ptr, ptr %286, align 4
  %326 = getelementptr inbounds %struct.list_head, ptr %325, i32 0, i32 1
  store ptr %324, ptr %326, align 4
  store volatile ptr %325, ptr %324, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %286, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %323, align 4
  call void @kfree(ptr noundef %286) #6
  %327 = icmp eq i32 %322, 0
  br i1 %327, label %328, label %343

328:                                              ; preds = %316
  %329 = icmp eq ptr %287, %3
  br i1 %329, label %334, label %330

330:                                              ; preds = %328
  %331 = load i32, ptr %39, align 8
  %332 = load i32, ptr %233, align 4
  %333 = load i32, ptr %234, align 4
  br label %301

334:                                              ; preds = %328, %301, %291, %273, %270
  %335 = load volatile ptr, ptr %97, align 4
  %336 = icmp eq ptr %335, %97
  br i1 %336, label %337, label %340

337:                                              ; preds = %334
  %338 = load volatile ptr, ptr %3, align 8
  %339 = icmp eq ptr %338, %3
  br i1 %339, label %354, label %340

340:                                              ; preds = %337, %334
  %341 = call fastcc i32 @switch_gc_head(ptr noundef %0) #6
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %235, label %343

343:                                              ; preds = %340, %316, %308, %258, %250, %229, %225, %196
  %344 = phi i32 [ %230, %229 ], [ %227, %225 ], [ %322, %316 ], [ %314, %308 ], [ %264, %258 ], [ %256, %250 ], [ %341, %340 ], [ %200, %196 ]
  %345 = load volatile ptr, ptr %3, align 8
  %346 = icmp eq ptr %345, %3
  br i1 %346, label %352, label %347

347:                                              ; preds = %343
  %348 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %92, i32 0, i32 2, i32 1
  %349 = load ptr, ptr %348, align 4
  %350 = load ptr, ptr %153, align 4
  %351 = getelementptr inbounds %struct.list_head, ptr %345, i32 0, i32 1
  store ptr %349, ptr %351, align 4
  store ptr %345, ptr %349, align 4
  store ptr %97, ptr %350, align 4
  store ptr %350, ptr %348, align 4
  br label %352

352:                                              ; preds = %347, %343, %158
  %353 = phi i32 [ %344, %347 ], [ %344, %343 ], [ %159, %158 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  br label %393

354:                                              ; preds = %337
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %355 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 18
  %356 = load i32, ptr %355, align 4
  %357 = icmp sgt i32 %356, 0
  br i1 %357, label %358, label %374

358:                                              ; preds = %370, %354
  %359 = phi i32 [ %371, %370 ], [ %356, %354 ]
  %360 = phi i32 [ %372, %370 ], [ 0, %354 ]
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %370, label %362

362:                                              ; preds = %358
  %363 = load ptr, ptr %4, align 8
  %364 = getelementptr %struct.ubifs_jhead, ptr %363, i32 %360
  %365 = getelementptr inbounds %struct.ubifs_wbuf, ptr %364, i32 0, i32 9
  call void @mutex_lock(ptr noundef %365) #6
  %366 = call i32 @ubifs_wbuf_sync_nolock(ptr noundef %364) #6
  call void @mutex_unlock(ptr noundef %365) #6
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %393

368:                                              ; preds = %362
  %369 = load i32, ptr %355, align 4
  br label %370

370:                                              ; preds = %368, %358
  %371 = phi i32 [ %369, %368 ], [ %359, %358 ]
  %372 = add nuw nsw i32 %360, 1
  %373 = icmp slt i32 %372, %371
  br i1 %373, label %358, label %374

374:                                              ; preds = %370, %354
  %375 = load i32, ptr %39, align 8
  %376 = call i32 @ubifs_change_one_lp(ptr noundef %0, i32 noundef %7, i32 noundef %375, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %393

378:                                              ; preds = %374
  %379 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 126
  store i32 %7, ptr %379, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !11
  %380 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 125
  %381 = load i32, ptr %380, align 8
  %382 = add i32 %381, 1
  store i32 %382, ptr %380, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !12
  %383 = load i32, ptr %8, align 4
  %384 = icmp eq i32 %383, -1
  br i1 %384, label %385, label %386

385:                                              ; preds = %378
  store i32 %7, ptr %8, align 4
  br label %391

386:                                              ; preds = %378
  %387 = call i32 @ubifs_wbuf_sync_nolock(ptr noundef %5) #6
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %389, label %391

389:                                              ; preds = %386
  %390 = call i32 @ubifs_leb_unmap(ptr noundef %0, i32 noundef %7) #6
  br label %391

391:                                              ; preds = %393, %389, %386, %385, %141, %137, %119
  %392 = phi i32 [ %394, %393 ], [ 2, %385 ], [ %387, %386 ], [ %390, %389 ], [ -12, %137 ], [ %151, %141 ], [ %129, %119 ]
  call void @ubifs_scan_destroy(ptr noundef %92) #6
  br label %399

393:                                              ; preds = %374, %362, %352
  %394 = phi i32 [ %376, %374 ], [ %353, %352 ], [ %366, %362 ]
  %395 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 126
  store i32 %7, ptr %395, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !13
  %396 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 125
  %397 = load i32, ptr %396, align 8
  %398 = add i32 %397, 1
  store i32 %398, ptr %396, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !14
  br label %391

399:                                              ; preds = %391, %94, %88, %85, %81, %76, %62
  %400 = phi i32 [ 2, %88 ], [ %95, %94 ], [ %392, %391 ], [ %79, %76 ], [ %83, %81 ], [ 0, %85 ], [ %66, %62 ]
  ret i32 %400
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_change_one_lp(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_unmap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_scan(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_dirty_idx_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_wbuf_sync_nolock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_scan_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_garbage_collect(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ubifs_lprops, align 4
  %4 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 96
  %5 = load i32, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !15
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 24
  %9 = tail call i32 @down_write_trylock(ptr noundef %8) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !9

11:                                               ; preds = %2
  tail call void @up_write(ptr noundef %8) #6
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.7) #6
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 676) #6
  br label %12

12:                                               ; preds = %11, %2
  %13 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 81
  %14 = load i8, ptr %13, align 8
  %15 = and i8 %14, 3
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17, !prof !9

17:                                               ; preds = %12
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 677) #6
  br label %18

18:                                               ; preds = %17, %12
  %19 = tail call i32 @ubifs_gc_should_commit(ptr noundef %0) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %134

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.ubifs_wbuf, ptr %7, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %22) #6
  %23 = load i8, ptr %13, align 8
  %24 = and i8 %23, 4
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %119

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ubifs_wbuf, ptr %7, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30, !prof !9

30:                                               ; preds = %26
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 690) #6
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr inbounds %struct.ubifs_lprops, ptr %3, i32 0, i32 3
  store i32 -1, ptr %32, align 4
  %33 = call i32 @__cond_resched() #6
  %34 = call i32 @ubifs_gc_should_commit(ptr noundef %0) #6
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %110

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 123
  %38 = icmp eq i32 %1, 0
  %39 = zext i1 %38 to i32
  %40 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %41 = getelementptr inbounds %struct.ubifs_wbuf, ptr %7, i32 0, i32 3
  %42 = getelementptr inbounds %struct.ubifs_wbuf, ptr %7, i32 0, i32 2
  %43 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 97
  br label %44

44:                                               ; preds = %97, %36
  %45 = phi i32 [ 0, %36 ], [ %99, %97 ]
  %46 = phi i32 [ %5, %36 ], [ %98, %97 ]
  %47 = icmp ugt i32 %45, 4
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load volatile ptr, ptr %37, align 4
  %50 = icmp eq ptr %49, %37
  br i1 %50, label %51, label %109

51:                                               ; preds = %48
  %52 = icmp ugt i32 %45, 32
  br i1 %52, label %106, label %53

53:                                               ; preds = %51, %44
  %54 = call i32 @ubifs_find_dirty_leb(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %46, i32 noundef %39) #6
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %103

56:                                               ; preds = %53
  %57 = load i32, ptr %40, align 8
  %58 = load i32, ptr %41, align 4
  %59 = load i32, ptr %27, align 4
  %60 = add i32 %58, %59
  %61 = sub i32 %57, %60
  %62 = load i32, ptr %42, align 8
  %63 = icmp eq i32 %62, -1
  %64 = select i1 %63, i32 0, i32 %61
  %65 = call i32 @ubifs_garbage_collect_leb(ptr noundef %0, ptr noundef nonnull %3)
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %56
  %68 = icmp eq i32 %65, -11
  br i1 %68, label %69, label %125

69:                                               ; preds = %67
  %70 = load i32, ptr %32, align 4
  %71 = call i32 @ubifs_change_one_lp(ptr noundef %0, i32 noundef %70, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef 0, i32 noundef 16, i32 noundef 0) #6
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  call void @ubifs_ro_mode(ptr noundef %0, i32 noundef %71) #6
  br label %74

74:                                               ; preds = %73, %69
  %75 = phi i32 [ %71, %73 ], [ -11, %69 ]
  store i32 -1, ptr %32, align 4
  br label %103

76:                                               ; preds = %56
  switch i32 %65, label %79 [
    i32 0, label %77
    i32 1, label %97
    i32 2, label %80
  ], !prof !16

77:                                               ; preds = %76
  %78 = load i32, ptr %32, align 4
  br label %103

79:                                               ; preds = %76
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 795) #6
  br label %80

80:                                               ; preds = %79, %76
  %81 = load i32, ptr %40, align 8
  %82 = load i32, ptr %41, align 4
  %83 = load i32, ptr %27, align 4
  %84 = add i32 %82, %83
  %85 = sub i32 %81, %84
  %86 = icmp sgt i32 %85, %64
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = ashr i32 %46, 1
  %89 = load i32, ptr %4, align 8
  %90 = call i32 @llvm.smax.i32(i32 %88, i32 %89)
  br label %97

91:                                               ; preds = %80
  %92 = icmp ult i32 %45, 4
  br i1 %92, label %97, label %93

93:                                               ; preds = %91
  %94 = shl i32 %46, 1
  %95 = load i32, ptr %43, align 4
  %96 = call i32 @llvm.smin.i32(i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %93, %91, %87, %76
  %98 = phi i32 [ %46, %91 ], [ %46, %76 ], [ %96, %93 ], [ %90, %87 ]
  %99 = add nuw nsw i32 %45, 1
  store i32 -1, ptr %32, align 4
  %100 = call i32 @__cond_resched() #6
  %101 = call i32 @ubifs_gc_should_commit(ptr noundef %0) #6
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %44, label %110

103:                                              ; preds = %77, %74, %53
  %104 = phi i32 [ %78, %77 ], [ %75, %74 ], [ %54, %53 ]
  %105 = icmp eq i32 %104, -28
  br i1 %105, label %106, label %110

106:                                              ; preds = %103, %51
  %107 = load volatile ptr, ptr %37, align 4
  %108 = icmp eq ptr %107, %37
  br i1 %108, label %110, label %109

109:                                              ; preds = %106, %48
  call void @ubifs_commit_required(ptr noundef %0) #6
  br label %110

110:                                              ; preds = %109, %106, %103, %97, %31
  %111 = phi i32 [ -28, %106 ], [ %104, %103 ], [ -11, %31 ], [ -11, %109 ], [ -11, %97 ]
  %112 = call i32 @ubifs_wbuf_sync_nolock(ptr noundef %7) #6
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 121
  %116 = load i32, ptr %115, align 4
  %117 = call i32 @ubifs_leb_unmap(ptr noundef %0, i32 noundef %116) #6
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %114, %21
  %120 = phi i32 [ %111, %114 ], [ -30, %21 ]
  call void @mutex_unlock(ptr noundef %22) #6
  br label %134

121:                                              ; preds = %114, %110
  %122 = phi i32 [ %117, %114 ], [ %112, %110 ]
  %123 = icmp sgt i32 %122, -1
  br i1 %123, label %124, label %125, !prof !8

124:                                              ; preds = %121
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 855) #6
  br label %125

125:                                              ; preds = %124, %121, %67
  %126 = phi i32 [ %122, %121 ], [ %122, %124 ], [ %65, %67 ]
  switch i32 %126, label %128 [
    i32 -11, label %127
    i32 -28, label %127
  ]

127:                                              ; preds = %125, %125
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 856) #6
  br label %128

128:                                              ; preds = %127, %125
  %129 = call i32 @ubifs_wbuf_sync_nolock(ptr noundef %7) #6
  call void @ubifs_ro_mode(ptr noundef %0, i32 noundef %126) #6
  call void @mutex_unlock(ptr noundef %22) #6
  %130 = load i32, ptr %32, align 4
  %131 = icmp eq i32 %130, -1
  br i1 %131, label %134, label %132

132:                                              ; preds = %128
  %133 = call i32 @ubifs_change_one_lp(ptr noundef %0, i32 noundef %130, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef 0, i32 noundef 16, i32 noundef 0) #6
  br label %134

134:                                              ; preds = %132, %128, %119, %18
  %135 = phi i32 [ %120, %119 ], [ -11, %18 ], [ %126, %132 ], [ %126, %128 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret i32 %135
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_gc_should_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_commit_required(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_find_dirty_leb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_ro_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_gc_start_commit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 144
  tail call void @mutex_lock(ptr noundef %2) #6
  %3 = tail call ptr @ubifs_fast_find_freeable(ptr noundef %0) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %47, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  br label %7

7:                                                ; preds = %44, %5
  %8 = phi ptr [ %3, %5 ], [ %45, %44 ]
  %9 = getelementptr inbounds %struct.ubifs_lprops, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !9

13:                                               ; preds = %7
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 892) #6
  %14 = load i32, ptr %9, align 4
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi i32 [ %10, %7 ], [ %14, %13 ]
  %17 = and i32 %16, 32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19, !prof !9

19:                                               ; preds = %15
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 893) #6
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.ubifs_lprops, ptr %8, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @ubifs_leb_unmap(ptr noundef %0, i32 noundef %22) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %115

25:                                               ; preds = %20
  %26 = load i32, ptr %6, align 8
  %27 = load i32, ptr %9, align 4
  %28 = tail call ptr @ubifs_change_lp(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %26, i32 noundef 0, i32 noundef %27, i32 noundef 0) #6
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = ptrtoint ptr %28 to i32
  br label %115

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.ubifs_lprops, ptr %28, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37, !prof !9

37:                                               ; preds = %32
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 902) #6
  %38 = load i32, ptr %33, align 4
  br label %39

39:                                               ; preds = %37, %32
  %40 = phi i32 [ %34, %32 ], [ %38, %37 ]
  %41 = and i32 %40, 32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43, !prof !9

43:                                               ; preds = %39
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 903) #6
  br label %44

44:                                               ; preds = %43, %39
  %45 = tail call ptr @ubifs_fast_find_freeable(ptr noundef %0) #6
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %7

47:                                               ; preds = %44, %1
  %48 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 123
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %48
  br i1 %50, label %51, label %56

51:                                               ; preds = %56, %47
  %52 = tail call ptr @ubifs_fast_find_frdi_idx(ptr noundef %0) #6
  %53 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  br label %64

56:                                               ; preds = %56, %47
  %57 = phi ptr [ %59, %56 ], [ %49, %47 ]
  %58 = getelementptr inbounds %struct.ubifs_gced_idx_leb, ptr %57, i32 0, i32 2
  store i32 1, ptr %58, align 4
  %59 = load ptr, ptr %57, align 4
  %60 = icmp eq ptr %59, %48
  br i1 %60, label %51, label %56

61:                                               ; preds = %105, %51
  %62 = phi ptr [ %52, %51 ], [ %113, %105 ]
  %63 = ptrtoint ptr %62 to i32
  br label %115

64:                                               ; preds = %105, %54
  %65 = phi ptr [ %52, %54 ], [ %113, %105 ]
  %66 = icmp eq ptr %65, null
  br i1 %66, label %115, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %69 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %68, i32 noundef 3136, i32 noundef 16) #7
  %70 = icmp eq ptr %69, null
  br i1 %70, label %115, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.ubifs_lprops, ptr %65, i32 0, i32 2
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, 16
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76, !prof !9

76:                                               ; preds = %71
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 924) #6
  %77 = load i32, ptr %72, align 4
  br label %78

78:                                               ; preds = %76, %71
  %79 = phi i32 [ %73, %71 ], [ %77, %76 ]
  %80 = and i32 %79, 32
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84, !prof !8

82:                                               ; preds = %78
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 925) #6
  %83 = load i32, ptr %72, align 4
  br label %84

84:                                               ; preds = %82, %78
  %85 = phi i32 [ %83, %82 ], [ %79, %78 ]
  %86 = and i32 %85, -17
  %87 = xor i32 %86, 48
  %88 = load i32, ptr %55, align 8
  %89 = tail call ptr @ubifs_change_lp(ptr noundef %0, ptr noundef nonnull %65, i32 noundef %88, i32 noundef 0, i32 noundef %87, i32 noundef 1) #6
  %90 = icmp ugt ptr %89, inttoptr (i32 -4096 to ptr)
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = ptrtoint ptr %89 to i32
  tail call void @kfree(ptr noundef nonnull %69) #6
  br label %115

93:                                               ; preds = %84
  %94 = getelementptr inbounds %struct.ubifs_lprops, ptr %89, i32 0, i32 2
  %95 = load i32, ptr %94, align 4
  %96 = and i32 %95, 16
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %100, !prof !8

98:                                               ; preds = %93
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 934) #6
  %99 = load i32, ptr %94, align 4
  br label %100

100:                                              ; preds = %98, %93
  %101 = phi i32 [ %95, %93 ], [ %99, %98 ]
  %102 = and i32 %101, 32
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %105, label %104, !prof !9

104:                                              ; preds = %100
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 935) #6
  br label %105

105:                                              ; preds = %104, %100
  %106 = getelementptr inbounds %struct.ubifs_lprops, ptr %89, i32 0, i32 3
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr inbounds %struct.ubifs_gced_idx_leb, ptr %69, i32 0, i32 1
  store i32 %107, ptr %108, align 8
  %109 = getelementptr inbounds %struct.ubifs_gced_idx_leb, ptr %69, i32 0, i32 2
  store i32 1, ptr %109, align 4
  %110 = load ptr, ptr %48, align 4
  %111 = getelementptr inbounds %struct.list_head, ptr %110, i32 0, i32 1
  store ptr %69, ptr %111, align 4
  store ptr %110, ptr %69, align 8
  %112 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  store ptr %48, ptr %112, align 4
  store volatile ptr %69, ptr %48, align 4
  %113 = tail call ptr @ubifs_fast_find_frdi_idx(ptr noundef %0) #6
  %114 = icmp ugt ptr %113, inttoptr (i32 -4096 to ptr)
  br i1 %114, label %61, label %64

115:                                              ; preds = %91, %67, %64, %61, %30, %20
  %116 = phi i32 [ %31, %30 ], [ %63, %61 ], [ %92, %91 ], [ -12, %67 ], [ 0, %64 ], [ %23, %20 ]
  %117 = tail call zeroext i1 @mutex_is_locked(ptr noundef %2) #6
  br i1 %117, label %119, label %118, !prof !9

118:                                              ; preds = %115
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 256) #6
  br label %119

119:                                              ; preds = %118, %115
  %120 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86
  %121 = load i32, ptr %120, align 8
  %122 = icmp sgt i32 %121, -1
  br i1 %122, label %123, label %127, !prof !9

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 62
  %125 = load i32, ptr %124, align 4
  %126 = icmp sgt i32 %121, %125
  br i1 %126, label %127, label %128, !prof !8

127:                                              ; preds = %123, %119
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef 258) #6
  br label %128

128:                                              ; preds = %127, %123
  tail call void @mutex_unlock(ptr noundef %2) #6
  ret i32 %116
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_fast_find_freeable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_change_lp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_fast_find_frdi_idx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_gc_end_commit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ubifs_wbuf, ptr %3, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %4) #6
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 123
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %30, label %8

8:                                                ; preds = %28, %1
  %9 = phi ptr [ %10, %28 ], [ %6, %1 ]
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ubifs_gced_idx_leb, ptr %9, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ubifs_gced_idx_leb, ptr %9, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @ubifs_leb_unmap(ptr noundef %0, i32 noundef %16) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load i32, ptr %15, align 4
  %21 = tail call i32 @ubifs_change_one_lp(ptr noundef %0, i32 noundef %20, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef 0, i32 noundef 16, i32 noundef -1) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %9, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %25, ptr %27, align 4
  store volatile ptr %26, ptr %25, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %24, align 4
  tail call void @kfree(ptr noundef %9) #6
  br label %28

28:                                               ; preds = %23, %8
  %29 = icmp eq ptr %10, %5
  br i1 %29, label %30, label %8

30:                                               ; preds = %28, %19, %14, %1
  %31 = phi i32 [ 0, %1 ], [ 0, %28 ], [ %21, %19 ], [ %17, %14 ]
  tail call void @mutex_unlock(ptr noundef %4) #6
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_destroy_idx_gc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 123
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 124
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi ptr [ %3, %5 ], [ %15, %7 ]
  %9 = load i32, ptr %6, align 4
  %10 = add i32 %9, -1
  store i32 %10, ptr %6, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  tail call void @kfree(ptr noundef %8) #6
  %15 = load volatile ptr, ptr %2, align 4
  %16 = icmp eq ptr %15, %2
  br i1 %16, label %17, label %7

17:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_get_idx_gc_leb(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 123
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ubifs_gced_idx_leb, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  tail call void @kfree(ptr noundef %3) #6
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi i32 [ %7, %5 ], [ -28, %1 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @switch_gc_head(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 121
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq i32 %3, -1
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %1
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 70) #6
  br label %8

8:                                                ; preds = %7, %1
  %9 = tail call i32 @ubifs_wbuf_sync_nolock(ptr noundef %5) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = tail call i32 @ubifs_leb_unmap(ptr noundef %0, i32 noundef %3) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = tail call i32 @ubifs_add_bud_to_log(ptr noundef %0, i32 noundef 0, i32 noundef %3, i32 noundef 0) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  store i32 -1, ptr %2, align 4
  %18 = tail call i32 @ubifs_wbuf_seek_nolock(ptr noundef %5, i32 noundef %3, i32 noundef 0) #6
  br label %19

19:                                               ; preds = %17, %14, %11, %8
  %20 = phi i32 [ %18, %17 ], [ %9, %8 ], [ %12, %11 ], [ %15, %14 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_wbuf_write_nolock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_add_bud_to_log(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_wbuf_seek_nolock(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_has_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_sort(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @data_nodes_cmp(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) #0 {
  %4 = tail call i32 @__cond_resched() #6
  %5 = icmp eq ptr %1, %2
  br i1 %5, label %43, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ubifs_scan_node, ptr %1, i32 0, i32 1
  %8 = getelementptr [2 x i32], ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, -536870912
  %11 = icmp eq i32 %10, 536870912
  br i1 %11, label %13, label %12, !prof !9

12:                                               ; preds = %6
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 119) #6
  br label %13

13:                                               ; preds = %12, %6
  %14 = getelementptr inbounds %struct.ubifs_scan_node, ptr %2, i32 0, i32 1
  %15 = getelementptr [2 x i32], ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, -536870912
  %18 = icmp eq i32 %17, 536870912
  br i1 %18, label %20, label %19, !prof !9

19:                                               ; preds = %13
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 120) #6
  br label %20

20:                                               ; preds = %19, %13
  %21 = getelementptr inbounds %struct.ubifs_scan_node, ptr %1, i32 0, i32 3
  %22 = load i32, ptr %21, align 8
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %25, label %24, !prof !9

24:                                               ; preds = %20
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 121) #6
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct.ubifs_scan_node, ptr %2, i32 0, i32 3
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %30, label %29, !prof !9

29:                                               ; preds = %25
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 122) #6
  br label %30

30:                                               ; preds = %29, %25
  %31 = load i32, ptr %7, align 8
  %32 = load i32, ptr %14, align 8
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, ptr %8, align 4
  %36 = and i32 %35, 536870911
  %37 = load i32, ptr %15, align 4
  %38 = and i32 %37, 536870911
  %39 = icmp ugt i32 %36, %38
  br i1 %39, label %42, label %43

40:                                               ; preds = %30
  %41 = icmp ugt i32 %31, %32
  br i1 %41, label %42, label %43

42:                                               ; preds = %40, %34
  br label %43

43:                                               ; preds = %42, %40, %34, %3
  %44 = phi i32 [ 1, %42 ], [ -1, %34 ], [ 0, %3 ], [ -1, %40 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nondata_nodes_cmp(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) #0 {
  %4 = tail call i32 @__cond_resched() #6
  %5 = icmp eq ptr %1, %2
  br i1 %5, label %78, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ubifs_scan_node, ptr %1, i32 0, i32 1
  %8 = getelementptr [2 x i32], ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, -536870912
  %11 = icmp eq i32 %10, 536870912
  br i1 %11, label %18, label %12, !prof !8

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.ubifs_scan_node, ptr %2, i32 0, i32 1
  %14 = getelementptr [2 x i32], ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, -536870912
  %17 = icmp eq i32 %16, 536870912
  br i1 %17, label %18, label %19, !prof !8

18:                                               ; preds = %12, %6
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 164) #6
  br label %19

19:                                               ; preds = %18, %12
  %20 = getelementptr inbounds %struct.ubifs_scan_node, ptr %1, i32 0, i32 3
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %27, label %23, !prof !8

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ubifs_scan_node, ptr %2, i32 0, i32 3
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %29, !prof !8

27:                                               ; preds = %23, %19
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, i32 noundef 166) #6
  %28 = load i32, ptr %20, align 8
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi i32 [ %28, %27 ], [ %21, %23 ]
  %31 = icmp eq i32 %30, 0
  %32 = getelementptr inbounds %struct.ubifs_scan_node, ptr %2, i32 0, i32 3
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %31, label %35, label %42

35:                                               ; preds = %29
  br i1 %34, label %36, label %78

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.ubifs_scan_node, ptr %2, i32 0, i32 5
  %38 = load i32, ptr %37, align 8
  %39 = getelementptr inbounds %struct.ubifs_scan_node, ptr %1, i32 0, i32 5
  %40 = load i32, ptr %39, align 8
  %41 = sub i32 %38, %40
  br label %78

42:                                               ; preds = %29
  br i1 %34, label %78, label %43

43:                                               ; preds = %42
  %44 = load i32, ptr %8, align 4
  %45 = and i32 %44, -1073741824
  %46 = icmp eq i32 %45, 1073741824
  br i1 %46, label %48, label %47, !prof !17

47:                                               ; preds = %43
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 178) #6
  br label %48

48:                                               ; preds = %47, %43
  %49 = getelementptr inbounds %struct.ubifs_scan_node, ptr %2, i32 0, i32 1
  %50 = getelementptr [2 x i32], ptr %49, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, -1073741824
  %53 = icmp eq i32 %52, 1073741824
  br i1 %53, label %55, label %54, !prof !17

54:                                               ; preds = %48
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 180) #6
  br label %55

55:                                               ; preds = %54, %48
  %56 = load i32, ptr %20, align 8
  %57 = add i32 %56, -4
  %58 = icmp ult i32 %57, -2
  br i1 %58, label %59, label %60, !prof !8

59:                                               ; preds = %55
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef 182) #6
  br label %60

60:                                               ; preds = %59, %55
  %61 = load i32, ptr %32, align 8
  %62 = add i32 %61, -4
  %63 = icmp ult i32 %62, -2
  br i1 %63, label %64, label %65, !prof !8

64:                                               ; preds = %60
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 184) #6
  br label %65

65:                                               ; preds = %64, %60
  %66 = load i32, ptr %7, align 8
  %67 = load i32, ptr %49, align 8
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i32, ptr %8, align 4
  %71 = and i32 %70, 536870911
  %72 = load i32, ptr %50, align 4
  %73 = and i32 %72, 536870911
  %74 = icmp ugt i32 %71, %73
  br i1 %74, label %77, label %78

75:                                               ; preds = %65
  %76 = icmp ugt i32 %66, %67
  br i1 %76, label %77, label %78

77:                                               ; preds = %75, %69
  br label %78

78:                                               ; preds = %77, %75, %69, %42, %36, %35, %3
  %79 = phi i32 [ %41, %36 ], [ 1, %77 ], [ -1, %69 ], [ 0, %3 ], [ -1, %35 ], [ 1, %42 ], [ -1, %75 ]
  ret i32 %79
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_check_data_nodes_order(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_check_nondata_nodes_order(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_replace(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 8003, i32 1}
!11 = !{i64 2153492791}
!12 = !{i64 2153492923}
!13 = !{i64 2153493055}
!14 = !{i64 2153493187}
!15 = !{!"auto-init"}
!16 = !{!"branch_weights", i32 1, i32 2001, i32 2001, i32 2000}
!17 = !{!"branch_weights", i32 4001, i32 1}
