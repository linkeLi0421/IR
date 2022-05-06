; ModuleID = '/llk/IR/fs/ubifs/lprops.c_pt.bc'
source_filename = "../fs/ubifs/lprops.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.ubifs_lprops = type { i32, i32, i32, i32, %union.anon.75 }
%union.anon.75 = type { %struct.list_head }
%struct.ubifs_pnode = type { ptr, ptr, i32, i32, i32, i32, [4 x %struct.ubifs_lprops] }
%struct.ubifs_debug_info = type { %struct.ubifs_zbranch, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i8, [10 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ubifs_jhead = type { %struct.ubifs_wbuf, %struct.list_head, i8, ptr }
%struct.ubifs_wbuf = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, %struct.spinlock, %struct.hrtimer, i8, i32, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ubifs_scan_leb = type { i32, i32, %struct.list_head, i32, ptr }
%struct.ubifs_scan_node = type { %struct.list_head, %union.ubifs_key, i64, i32, i32, i32, ptr }
%struct.ubifs_idx_node = type <{ %struct.ubifs_ch, i16, i16, [0 x i8] }>
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.ubifs_branch = type { i32, i32, i32, [0 x i8] }

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"fs/ubifs/lprops.c\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"c->in_a_category_cnt <= c->main_lebs\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"!(lprops->flags & LPROPS_INDEX)\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"!(spc & 7)\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"mutex_is_locked(&c->lp_mutex)\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"c->lst.empty_lebs >= 0 && c->lst.empty_lebs <= c->main_lebs\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"c->freeable_cnt >= 0\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"c->freeable_cnt <= c->main_lebs\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"c->lst.taken_empty_lebs >= 0\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"c->lst.taken_empty_lebs <= c->lst.empty_lebs\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"!(c->lst.total_free & 7) && !(c->lst.total_dirty & 7)\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"!(c->lst.total_dead & 7) && !(c->lst.total_dark & 7)\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"!(c->lst.total_used & 7)\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"free == LPROPS_NC || free >= 0\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"dirty == LPROPS_NC || dirty >= 0\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"lprops == ubifs_lpt_lookup_dirty(c, lprops->lnum)\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"!(lprops->free & 7) && !(lprops->dirty & 7)\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"cannot change properties of LEB %d, error %d\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"cannot update properties of LEB %d, error %d\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"cannot read properties of LEB %d, error %d\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"!(lprops->flags & LPROPS_TAKEN)\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"lprops->free == c->leb_size\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"lprops->free + lprops->dirty == c->leb_size\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"c->freeable_cnt > 0\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"(lprops->flags & LPROPS_INDEX)\00", align 1
@.str.26 = private unnamed_addr constant [59 x i8] c"non-empty LEB %d on empty list (free %d dirty %d flags %d)\00", align 1
@.str.27 = private unnamed_addr constant [55 x i8] c"taken LEB %d on empty list (free %d dirty %d flags %d)\00", align 1
@.str.28 = private unnamed_addr constant [65 x i8] c"non-freeable LEB %d on freeable list (free %d dirty %d flags %d)\00", align 1
@.str.29 = private unnamed_addr constant [58 x i8] c"taken LEB %d on freeable list (free %d dirty %d flags %d)\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"freeable list count %d expected %d\00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"idx_gc list count %d expected %d\00", align 1
@.str.32 = private unnamed_addr constant [65 x i8] c"non-freeable LEB %d on frdi_idx list (free %d dirty %d flags %d)\00", align 1
@.str.33 = private unnamed_addr constant [58 x i8] c"taken LEB %d on frdi_idx list (free %d dirty %d flags %d)\00", align 1
@.str.34 = private unnamed_addr constant [62 x i8] c"non-index LEB %d on frdi_idx list (free %d dirty %d flags %d)\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"null ptr in LPT heap cat %d\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"bad ptr in LPT heap cat %d\00", align 1
@.str.37 = private unnamed_addr constant [29 x i8] c"taken LEB in LPT heap cat %d\00", align 1
@.str.38 = private unnamed_addr constant [46 x i8] c"lprops %zx lp %zx lprops->lnum %d lp->lnum %d\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"failed cat %d hpos %d err %d\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"bad overall accounting\00", align 1
@.str.41 = private unnamed_addr constant [91 x i8] c"calculated: empty_lebs %d, idx_lebs %d, total_free %lld, total_dirty %lld, total_used %lld\00", align 1
@.str.42 = private unnamed_addr constant [97 x i8] c"read from lprops: empty_lebs %d, idx_lebs %d, total_free %lld, total_dirty %lld, total_used %lld\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"bad dead/dark space accounting\00", align 1
@.str.44 = private unnamed_addr constant [45 x i8] c"calculated: total_dead %lld, total_dark %lld\00", align 1
@.str.45 = private unnamed_addr constant [51 x i8] c"read from lprops: total_dead %lld, total_dark %lld\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"cpos < heap->cnt\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"!list_empty(&lprops->list)\00", align 1
@.str.50 = private unnamed_addr constant [26 x i8] c"c->in_a_category_cnt >= 0\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"hpos >= 0 && hpos < heap->cnt\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"heap->arr[hpos] == lprops\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"fs/ubifs/misc.h\00", align 1
@ubifs_dbg = external dso_local local_unnamed_addr global %struct.ubifs_global_debug_info, align 4
@.str.54 = private unnamed_addr constant [32 x i8] c"bad LEB category %d expected %d\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"bad LPT list (category %d)\00", align 1
@.str.56 = private unnamed_addr constant [27 x i8] c"bad LPT heap (category %d)\00", align 1
@.str.57 = private unnamed_addr constant [32 x i8] c"indexing node in data LEB %d:%d\00", align 1
@.str.58 = private unnamed_addr constant [56 x i8] c"bad calculated accounting for LEB %d: free %d, dirty %d\00", align 1
@.str.59 = private unnamed_addr constant [36 x i8] c"indexing node without indexing flag\00", align 1
@.str.60 = private unnamed_addr constant [29 x i8] c"data node with indexing flag\00", align 1
@.str.61 = private unnamed_addr constant [83 x i8] c"bad accounting of LEB %d: free %d, dirty %d flags %#x, should be free %d, dirty %d\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_add_to_cat(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  switch i32 %2, label %186 [
    i32 1, label %4
    i32 2, label %4
    i32 3, label %4
    i32 0, label %159
    i32 4, label %165
    i32 5, label %171
    i32 6, label %180
  ]

4:                                                ; preds = %3, %3, %3
  %5 = add nsw i32 %2, -1
  %6 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 %5
  %7 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 %5, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 %5, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %107, label %12

12:                                               ; preds = %4
  %13 = ptrtoint ptr %1 to i32
  %14 = lshr i32 %13, 4
  %15 = and i32 %14, 127
  %16 = add nuw nsw i32 %15, 127
  %17 = icmp slt i32 %16, %8
  br i1 %17, label %19, label %18, !prof !8

18:                                               ; preds = %12
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.1, i32 noundef 180) #8
  br label %19

19:                                               ; preds = %18, %12
  switch i32 %2, label %38 [
    i32 3, label %20
    i32 2, label %26
  ]

20:                                               ; preds = %19
  %21 = load i32, ptr %1, align 4
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr ptr, ptr %22, i32 %16
  %24 = load ptr, ptr %23, align 4
  %25 = load i32, ptr %24, align 4
  br label %46

26:                                               ; preds = %19
  %27 = load i32, ptr %1, align 4
  %28 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, %27
  %31 = load ptr, ptr %6, align 4
  %32 = getelementptr ptr, ptr %31, i32 %16
  %33 = load ptr, ptr %32, align 4
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ubifs_lprops, ptr %33, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, %34
  br label %46

38:                                               ; preds = %19
  %39 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = load ptr, ptr %6, align 4
  %42 = getelementptr ptr, ptr %41, i32 %16
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.ubifs_lprops, ptr %43, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  br label %46

46:                                               ; preds = %38, %26, %20
  %47 = phi ptr [ %43, %38 ], [ %33, %26 ], [ %24, %20 ]
  %48 = phi i32 [ %40, %38 ], [ %30, %26 ], [ %21, %20 ]
  %49 = phi i32 [ %45, %38 ], [ %37, %26 ], [ %25, %20 ]
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %158

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.ubifs_lprops, ptr %47, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, -16
  store i32 %54, ptr %52, align 4
  %55 = getelementptr inbounds %struct.ubifs_lprops, ptr %47, i32 0, i32 4
  %56 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 160
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  store ptr %55, ptr %58, align 4
  store ptr %57, ptr %55, align 4
  %59 = getelementptr inbounds %struct.ubifs_lprops, ptr %47, i32 0, i32 4, i32 0, i32 1
  store ptr %56, ptr %59, align 4
  store volatile ptr %55, ptr %56, align 4
  %60 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 4
  store i32 %16, ptr %60, align 4
  %61 = load ptr, ptr %6, align 4
  %62 = getelementptr ptr, ptr %61, i32 %16
  store ptr %1, ptr %62, align 4
  %63 = load i32, ptr %60, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %156, label %65

65:                                               ; preds = %51
  switch i32 %2, label %73 [
    i32 3, label %66
    i32 2, label %68
  ]

66:                                               ; preds = %65
  %67 = load i32, ptr %1, align 4
  br label %76

68:                                               ; preds = %65
  %69 = load i32, ptr %1, align 4
  %70 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, %69
  br label %76

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  br label %76

76:                                               ; preds = %73, %68, %66
  %77 = phi i32 [ %75, %73 ], [ %72, %68 ], [ %67, %66 ]
  br label %78

78:                                               ; preds = %98, %76
  %79 = phi i32 [ %63, %76 ], [ %81, %98 ]
  %80 = add i32 %79, -1
  %81 = sdiv i32 %80, 2
  %82 = load ptr, ptr %6, align 4
  %83 = getelementptr ptr, ptr %82, i32 %81
  %84 = load ptr, ptr %83, align 4
  switch i32 %2, label %92 [
    i32 3, label %85
    i32 2, label %87
  ]

85:                                               ; preds = %78
  %86 = load i32, ptr %84, align 4
  br label %95

87:                                               ; preds = %78
  %88 = load i32, ptr %84, align 4
  %89 = getelementptr inbounds %struct.ubifs_lprops, ptr %84, i32 0, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = add i32 %90, %88
  br label %95

92:                                               ; preds = %78
  %93 = getelementptr inbounds %struct.ubifs_lprops, ptr %84, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  br label %95

95:                                               ; preds = %92, %87, %85
  %96 = phi i32 [ %94, %92 ], [ %91, %87 ], [ %86, %85 ]
  %97 = icmp slt i32 %96, %77
  br i1 %97, label %98, label %156

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.ubifs_lprops, ptr %84, i32 0, i32 4
  store i32 %79, ptr %99, align 4
  %100 = load ptr, ptr %6, align 4
  %101 = getelementptr ptr, ptr %100, i32 %81
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr ptr, ptr %100, i32 %79
  store ptr %102, ptr %103, align 4
  %104 = load ptr, ptr %6, align 4
  %105 = getelementptr ptr, ptr %104, i32 %81
  store ptr %1, ptr %105, align 4
  store i32 %81, ptr %60, align 4
  %106 = icmp ult i32 %79, 3
  br i1 %106, label %156, label %78

107:                                              ; preds = %4
  %108 = add nsw i32 %8, 1
  store i32 %108, ptr %7, align 4
  %109 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 4
  store i32 %8, ptr %109, align 4
  %110 = load ptr, ptr %6, align 4
  %111 = getelementptr ptr, ptr %110, i32 %8
  store ptr %1, ptr %111, align 4
  %112 = load i32, ptr %109, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %156, label %114

114:                                              ; preds = %107
  switch i32 %2, label %122 [
    i32 3, label %115
    i32 2, label %117
  ]

115:                                              ; preds = %114
  %116 = load i32, ptr %1, align 4
  br label %125

117:                                              ; preds = %114
  %118 = load i32, ptr %1, align 4
  %119 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 1
  %120 = load i32, ptr %119, align 4
  %121 = add i32 %120, %118
  br label %125

122:                                              ; preds = %114
  %123 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 1
  %124 = load i32, ptr %123, align 4
  br label %125

125:                                              ; preds = %122, %117, %115
  %126 = phi i32 [ %124, %122 ], [ %121, %117 ], [ %116, %115 ]
  br label %127

127:                                              ; preds = %147, %125
  %128 = phi i32 [ %112, %125 ], [ %130, %147 ]
  %129 = add i32 %128, -1
  %130 = sdiv i32 %129, 2
  %131 = load ptr, ptr %6, align 4
  %132 = getelementptr ptr, ptr %131, i32 %130
  %133 = load ptr, ptr %132, align 4
  switch i32 %2, label %141 [
    i32 3, label %134
    i32 2, label %136
  ]

134:                                              ; preds = %127
  %135 = load i32, ptr %133, align 4
  br label %144

136:                                              ; preds = %127
  %137 = load i32, ptr %133, align 4
  %138 = getelementptr inbounds %struct.ubifs_lprops, ptr %133, i32 0, i32 1
  %139 = load i32, ptr %138, align 4
  %140 = add i32 %139, %137
  br label %144

141:                                              ; preds = %127
  %142 = getelementptr inbounds %struct.ubifs_lprops, ptr %133, i32 0, i32 1
  %143 = load i32, ptr %142, align 4
  br label %144

144:                                              ; preds = %141, %136, %134
  %145 = phi i32 [ %143, %141 ], [ %140, %136 ], [ %135, %134 ]
  %146 = icmp slt i32 %145, %126
  br i1 %146, label %147, label %156

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.ubifs_lprops, ptr %133, i32 0, i32 4
  store i32 %128, ptr %148, align 4
  %149 = load ptr, ptr %6, align 4
  %150 = getelementptr ptr, ptr %149, i32 %130
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr ptr, ptr %149, i32 %128
  store ptr %151, ptr %152, align 4
  %153 = load ptr, ptr %6, align 4
  %154 = getelementptr ptr, ptr %153, i32 %130
  store ptr %1, ptr %154, align 4
  store i32 %130, ptr %109, align 4
  %155 = icmp ult i32 %128, 3
  br i1 %155, label %156, label %127

156:                                              ; preds = %147, %144, %107, %98, %95, %51
  %157 = phi i32 [ 0, %107 ], [ 0, %51 ], [ %128, %144 ], [ %130, %147 ], [ %79, %95 ], [ %81, %98 ]
  tail call void @dbg_check_heap(ptr noundef %0, ptr noundef %6, i32 noundef %2, i32 noundef %157) #8
  br label %187

158:                                              ; preds = %46
  tail call void @dbg_check_heap(ptr noundef %0, ptr noundef %6, i32 noundef %2, i32 noundef -1) #8
  br label %159

159:                                              ; preds = %158, %3
  %160 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 4
  %161 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 160
  %162 = load ptr, ptr %161, align 4
  %163 = getelementptr inbounds %struct.list_head, ptr %162, i32 0, i32 1
  store ptr %160, ptr %163, align 4
  store ptr %162, ptr %160, align 4
  %164 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 4, i32 0, i32 1
  store ptr %161, ptr %164, align 4
  store volatile ptr %160, ptr %161, align 4
  br label %187

165:                                              ; preds = %3
  %166 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 4
  %167 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 161
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr inbounds %struct.list_head, ptr %168, i32 0, i32 1
  store ptr %166, ptr %169, align 4
  store ptr %168, ptr %166, align 4
  %170 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 4, i32 0, i32 1
  store ptr %167, ptr %170, align 4
  store volatile ptr %166, ptr %167, align 4
  br label %187

171:                                              ; preds = %3
  %172 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 4
  %173 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 162
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.list_head, ptr %174, i32 0, i32 1
  store ptr %172, ptr %175, align 4
  store ptr %174, ptr %172, align 4
  %176 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 4, i32 0, i32 1
  store ptr %173, ptr %176, align 4
  store volatile ptr %172, ptr %173, align 4
  %177 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 164
  %178 = load i32, ptr %177, align 8
  %179 = add i32 %178, 1
  store i32 %179, ptr %177, align 8
  br label %187

180:                                              ; preds = %3
  %181 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 4
  %182 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 163
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr inbounds %struct.list_head, ptr %183, i32 0, i32 1
  store ptr %181, ptr %184, align 4
  store ptr %183, ptr %181, align 4
  %185 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 4, i32 0, i32 1
  store ptr %182, ptr %185, align 4
  store volatile ptr %181, ptr %182, align 4
  br label %187

186:                                              ; preds = %3
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 287) #8
  br label %187

187:                                              ; preds = %186, %180, %171, %165, %159, %156
  %188 = phi i32 [ %2, %186 ], [ 6, %180 ], [ 5, %171 ], [ 4, %165 ], [ 0, %159 ], [ %2, %156 ]
  %189 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 2
  %190 = load i32, ptr %189, align 4
  %191 = and i32 %190, -16
  %192 = or i32 %191, %188
  store i32 %192, ptr %189, align 4
  %193 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 165
  %194 = load i32, ptr %193, align 4
  %195 = add i32 %194, 1
  store i32 %195, ptr %193, align 4
  %196 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 62
  %197 = load i32, ptr %196, align 4
  %198 = icmp sgt i32 %195, %197
  br i1 %198, label %199, label %200, !prof !9

199:                                              ; preds = %187
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 293) #8
  br label %200

200:                                              ; preds = %199, %187
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_replace_cat(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ubifs_lprops, ptr %2, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 15
  switch i32 %6, label %22 [
    i32 1, label %7
    i32 2, label %7
    i32 3, label %7
    i32 0, label %14
    i32 4, label %14
    i32 5, label %14
    i32 6, label %14
  ]

7:                                                ; preds = %3, %3, %3
  %8 = getelementptr inbounds %struct.ubifs_lprops, ptr %2, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = add nsw i32 %6, -1
  %11 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr ptr, ptr %12, i32 %9
  store ptr %2, ptr %13, align 4
  br label %23

14:                                               ; preds = %3, %3, %3, %3
  %15 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 4
  %16 = getelementptr inbounds %struct.ubifs_lprops, ptr %2, i32 0, i32 4
  %17 = load ptr, ptr %15, align 4
  store ptr %17, ptr %16, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %16, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 4, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ubifs_lprops, ptr %2, i32 0, i32 4, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  store ptr %16, ptr %20, align 4
  br label %23

22:                                               ; preds = %3
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 360) #8
  br label %23

23:                                               ; preds = %22, %14, %7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_ensure_cat(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 31
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %56

7:                                                ; preds = %2
  %8 = load i32, ptr %1, align 4
  %9 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = and i32 %4, 32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %38, label %15, !prof !8

15:                                               ; preds = %12
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 403) #8
  br label %38

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %8
  %20 = icmp eq i32 %19, %10
  %21 = and i32 %4, 32
  %22 = icmp eq i32 %21, 0
  br i1 %20, label %23, label %25

23:                                               ; preds = %16
  %24 = select i1 %22, i32 5, i32 6
  br label %38

25:                                               ; preds = %16
  br i1 %22, label %30, label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 91
  %28 = load i32, ptr %27, align 8
  %29 = icmp slt i32 %19, %28
  br i1 %29, label %56, label %38

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 96
  %32 = load i32, ptr %31, align 8
  %33 = icmp sge i32 %18, %32
  %34 = icmp sgt i32 %18, %8
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = icmp sgt i32 %8, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %36, %30, %26, %23, %15, %12
  %39 = phi i32 [ 3, %36 ], [ 1, %30 ], [ 2, %26 ], [ %24, %23 ], [ 4, %15 ], [ 4, %12 ]
  %40 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 4
  %41 = load volatile ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %40
  br i1 %42, label %43, label %45, !prof !9

43:                                               ; preds = %38
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.1, i32 noundef 320) #8
  %44 = load ptr, ptr %40, align 4
  br label %45

45:                                               ; preds = %43, %38
  %46 = phi ptr [ %41, %38 ], [ %44, %43 ]
  %47 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 4, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  store ptr %48, ptr %49, align 4
  store volatile ptr %46, ptr %48, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %40, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %47, align 4
  %50 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 165
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, -1
  store i32 %52, ptr %50, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55, !prof !9

54:                                               ; preds = %45
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1, i32 noundef 328) #8
  br label %55

55:                                               ; preds = %54, %45
  tail call void @ubifs_add_to_cat(ptr noundef %0, ptr noundef %1, i32 noundef %39)
  br label %56

56:                                               ; preds = %55, %36, %26, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_categorize_lprops(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %39

7:                                                ; preds = %2
  %8 = load i32, ptr %1, align 4
  %9 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = and i32 %4, 32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %39, label %15, !prof !8

15:                                               ; preds = %12
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 403) #8
  br label %39

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %8
  %20 = icmp eq i32 %19, %10
  %21 = and i32 %4, 32
  %22 = icmp eq i32 %21, 0
  br i1 %20, label %23, label %25

23:                                               ; preds = %16
  %24 = select i1 %22, i32 5, i32 6
  br label %39

25:                                               ; preds = %16
  br i1 %22, label %30, label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 91
  %28 = load i32, ptr %27, align 8
  %29 = icmp slt i32 %19, %28
  br i1 %29, label %38, label %39

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 96
  %32 = load i32, ptr %31, align 8
  %33 = icmp sge i32 %18, %32
  %34 = icmp sgt i32 %18, %8
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = icmp sgt i32 %8, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %36, %26
  br label %39

39:                                               ; preds = %38, %36, %30, %26, %23, %15, %12, %2
  %40 = phi i32 [ 0, %38 ], [ 0, %2 ], [ 4, %12 ], [ 4, %15 ], [ %24, %23 ], [ 2, %26 ], [ 1, %30 ], [ 3, %36 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_calc_dark(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, 7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !8

5:                                                ; preds = %2
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 469) #8
  br label %6

6:                                                ; preds = %5, %2
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 97
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, %1
  %10 = sub i32 %1, %8
  %11 = icmp ult i32 %10, 56
  %12 = add i32 %1, -56
  %13 = select i1 %11, i32 %12, i32 %8
  %14 = select i1 %9, i32 %1, i32 %13
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ubifs_change_lp(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 144
  %8 = tail call zeroext i1 @mutex_is_locked(ptr noundef %7) #8
  br i1 %8, label %10, label %9, !prof !8

9:                                                ; preds = %6
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 534) #8
  br label %10

10:                                               ; preds = %9, %6
  %11 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86
  %12 = load i32, ptr %11, align 8
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %18, !prof !8

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 62
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %12, %16
  br i1 %17, label %18, label %19, !prof !9

18:                                               ; preds = %14, %10
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 536) #8
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 164
  %21 = load i32, ptr %20, align 8
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25, !prof !9

23:                                               ; preds = %19
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 537) #8
  %24 = load i32, ptr %20, align 8
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi i32 [ %21, %19 ], [ %24, %23 ]
  %27 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 62
  %28 = load i32, ptr %27, align 4
  %29 = icmp sgt i32 %26, %28
  br i1 %29, label %30, label %31, !prof !9

30:                                               ; preds = %25
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 538) #8
  br label %31

31:                                               ; preds = %30, %25
  %32 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37, !prof !9

35:                                               ; preds = %31
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 539) #8
  %36 = load i32, ptr %32, align 4
  br label %37

37:                                               ; preds = %35, %31
  %38 = phi i32 [ %33, %31 ], [ %36, %35 ]
  %39 = load i32, ptr %11, align 8
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %42, !prof !9

41:                                               ; preds = %37
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 540) #8
  br label %42

42:                                               ; preds = %41, %37
  %43 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 3
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 7
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %52, !prof !8

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 4
  %49 = load i64, ptr %48, align 8
  %50 = and i64 %49, 7
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %53, label %52, !prof !8

52:                                               ; preds = %47, %42
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 541) #8
  br label %53

53:                                               ; preds = %52, %47
  %54 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 6
  %55 = load i64, ptr %54, align 8
  %56 = and i64 %55, 7
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %63, !prof !8

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 7
  %60 = load i64, ptr %59, align 8
  %61 = and i64 %60, 7
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %64, label %63, !prof !8

63:                                               ; preds = %58, %53
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 542) #8
  br label %64

64:                                               ; preds = %63, %58
  %65 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 5
  %66 = load i64, ptr %65, align 8
  %67 = and i64 %66, 7
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %70, label %69, !prof !8

69:                                               ; preds = %64
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 543) #8
  br label %70

70:                                               ; preds = %69, %64
  %71 = icmp ne i32 %2, -2147483647
  %72 = icmp slt i32 %2, 0
  %73 = and i1 %71, %72
  br i1 %73, label %74, label %75, !prof !9

74:                                               ; preds = %70
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 544) #8
  br label %75

75:                                               ; preds = %74, %70
  %76 = icmp ne i32 %3, -2147483647
  %77 = icmp slt i32 %3, 0
  %78 = and i1 %76, %77
  br i1 %78, label %79, label %80, !prof !9

79:                                               ; preds = %75
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 545) #8
  br label %80

80:                                               ; preds = %79, %75
  %81 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 63
  %84 = load i32, ptr %83, align 8
  %85 = sub i32 %82, %84
  %86 = and i32 %85, 3
  %87 = sub nsw i32 0, %86
  %88 = getelementptr %struct.ubifs_lprops, ptr %1, i32 %87
  %89 = getelementptr i8, ptr %88, i32 -24
  %90 = getelementptr inbounds %struct.ubifs_pnode, ptr %89, i32 0, i32 2
  %91 = load volatile i32, ptr %90, align 4
  %92 = and i32 %91, 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %80
  %95 = load volatile i32, ptr %90, align 4
  %96 = and i32 %95, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94, %80
  %99 = tail call ptr @ubifs_lpt_lookup_dirty(ptr noundef %0, i32 noundef %82) #8
  %100 = icmp ugt ptr %99, inttoptr (i32 -4096 to ptr)
  br i1 %100, label %386, label %105

101:                                              ; preds = %94
  %102 = tail call ptr @ubifs_lpt_lookup_dirty(ptr noundef %0, i32 noundef %82) #8
  %103 = icmp eq ptr %102, %1
  br i1 %103, label %105, label %104, !prof !8

104:                                              ; preds = %101
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 552) #8
  br label %105

105:                                              ; preds = %104, %101, %98
  %106 = phi ptr [ %1, %104 ], [ %1, %101 ], [ %99, %98 ]
  %107 = load i32, ptr %106, align 4
  %108 = and i32 %107, 7
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %115, !prof !8

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.ubifs_lprops, ptr %106, i32 0, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = and i32 %112, 7
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %116, label %115, !prof !8

115:                                              ; preds = %110, %105
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 554) #8
  br label %116

116:                                              ; preds = %115, %110
  %117 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 85
  tail call void @_raw_spin_lock(ptr noundef %117) #8
  %118 = getelementptr inbounds %struct.ubifs_lprops, ptr %106, i32 0, i32 2
  %119 = load i32, ptr %118, align 4
  %120 = and i32 %119, 16
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %131, label %122

122:                                              ; preds = %116
  %123 = load i32, ptr %106, align 4
  %124 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %125 = load i32, ptr %124, align 8
  %126 = icmp eq i32 %123, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load i32, ptr %32, align 4
  %129 = add i32 %128, -1
  store i32 %129, ptr %32, align 4
  %130 = load i32, ptr %118, align 4
  br label %131

131:                                              ; preds = %127, %122, %116
  %132 = phi i32 [ %130, %127 ], [ %119, %122 ], [ %119, %116 ]
  %133 = and i32 %132, 32
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %169

135:                                              ; preds = %131
  %136 = load i32, ptr %106, align 4
  %137 = getelementptr inbounds %struct.ubifs_lprops, ptr %106, i32 0, i32 1
  %138 = load i32, ptr %137, align 4
  %139 = add i32 %138, %136
  %140 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 96
  %141 = load i32, ptr %140, align 8
  %142 = icmp slt i32 %139, %141
  br i1 %142, label %157, label %143

143:                                              ; preds = %135
  %144 = and i32 %139, 7
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %147, label %146, !prof !8

146:                                              ; preds = %143
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 469) #8
  br label %147

147:                                              ; preds = %146, %143
  %148 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 97
  %149 = load i32, ptr %148, align 4
  %150 = icmp slt i32 %139, %149
  %151 = sub i32 %139, %149
  %152 = icmp ult i32 %151, 56
  %153 = add i32 %139, -56
  %154 = select i1 %152, i32 %153, i32 %149
  %155 = select i1 %150, i32 %139, i32 %154
  %156 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 7
  br label %157

157:                                              ; preds = %147, %135
  %158 = phi ptr [ %156, %147 ], [ %54, %135 ]
  %159 = phi i32 [ %155, %147 ], [ %139, %135 ]
  %160 = sext i32 %159 to i64
  %161 = load i64, ptr %158, align 8
  %162 = sub i64 %161, %160
  store i64 %162, ptr %158, align 8
  %163 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %164 = load i32, ptr %163, align 8
  %165 = sub i32 %164, %139
  %166 = sext i32 %165 to i64
  %167 = load i64, ptr %65, align 8
  %168 = sub i64 %167, %166
  store i64 %168, ptr %65, align 8
  br label %169

169:                                              ; preds = %157, %131
  %170 = icmp eq i32 %2, -2147483647
  br i1 %170, label %192, label %171

171:                                              ; preds = %169
  %172 = add i32 %2, 7
  %173 = and i32 %172, -8
  %174 = load i32, ptr %106, align 4
  %175 = sub i32 %173, %174
  %176 = sext i32 %175 to i64
  %177 = load i64, ptr %43, align 8
  %178 = add i64 %177, %176
  store i64 %178, ptr %43, align 8
  %179 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %180 = load i32, ptr %179, align 8
  %181 = icmp eq i32 %173, %180
  %182 = load i32, ptr %106, align 4
  br i1 %181, label %183, label %185

183:                                              ; preds = %171
  %184 = icmp eq i32 %182, %173
  br i1 %184, label %191, label %187

185:                                              ; preds = %171
  %186 = icmp eq i32 %182, %180
  br i1 %186, label %187, label %191

187:                                              ; preds = %185, %183
  %188 = phi i32 [ 1, %183 ], [ -1, %185 ]
  %189 = load i32, ptr %11, align 8
  %190 = add i32 %189, %188
  store i32 %190, ptr %11, align 8
  br label %191

191:                                              ; preds = %187, %185, %183
  store i32 %173, ptr %106, align 4
  br label %192

192:                                              ; preds = %191, %169
  %193 = icmp eq i32 %3, -2147483647
  br i1 %193, label %204, label %194

194:                                              ; preds = %192
  %195 = add i32 %3, 7
  %196 = and i32 %195, -8
  %197 = getelementptr inbounds %struct.ubifs_lprops, ptr %106, i32 0, i32 1
  %198 = load i32, ptr %197, align 4
  %199 = sub i32 %196, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 4
  %202 = load i64, ptr %201, align 8
  %203 = add i64 %202, %200
  store i64 %203, ptr %201, align 8
  store i32 %196, ptr %197, align 4
  br label %204

204:                                              ; preds = %194, %192
  %205 = icmp eq i32 %4, -2147483647
  %206 = load i32, ptr %118, align 4
  br i1 %205, label %220, label %207

207:                                              ; preds = %204
  %208 = and i32 %206, 32
  %209 = icmp eq i32 %208, 0
  %210 = and i32 %4, 32
  %211 = icmp eq i32 %210, 0
  br i1 %209, label %213, label %212

212:                                              ; preds = %207
  br i1 %211, label %214, label %219

213:                                              ; preds = %207
  br i1 %211, label %219, label %214

214:                                              ; preds = %213, %212
  %215 = phi i32 [ -1, %212 ], [ 1, %213 ]
  %216 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 2
  %217 = load i32, ptr %216, align 8
  %218 = add i32 %217, %215
  store i32 %218, ptr %216, align 8
  br label %219

219:                                              ; preds = %214, %213, %212
  store i32 %4, ptr %118, align 4
  br label %220

220:                                              ; preds = %219, %204
  %221 = phi i32 [ %4, %219 ], [ %206, %204 ]
  %222 = and i32 %221, 32
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %259

224:                                              ; preds = %220
  %225 = load i32, ptr %106, align 4
  %226 = getelementptr inbounds %struct.ubifs_lprops, ptr %106, i32 0, i32 1
  %227 = load i32, ptr %226, align 4
  %228 = add i32 %227, %225
  %229 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 96
  %230 = load i32, ptr %229, align 8
  %231 = icmp slt i32 %228, %230
  br i1 %231, label %246, label %232

232:                                              ; preds = %224
  %233 = and i32 %228, 7
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %236, label %235, !prof !8

235:                                              ; preds = %232
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 469) #8
  br label %236

236:                                              ; preds = %235, %232
  %237 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 97
  %238 = load i32, ptr %237, align 4
  %239 = icmp slt i32 %228, %238
  %240 = sub i32 %228, %238
  %241 = icmp ult i32 %240, 56
  %242 = add i32 %228, -56
  %243 = select i1 %241, i32 %242, i32 %238
  %244 = select i1 %239, i32 %228, i32 %243
  %245 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 7
  br label %246

246:                                              ; preds = %236, %224
  %247 = phi ptr [ %245, %236 ], [ %54, %224 ]
  %248 = phi i32 [ %244, %236 ], [ %228, %224 ]
  %249 = sext i32 %248 to i64
  %250 = load i64, ptr %247, align 8
  %251 = add i64 %250, %249
  store i64 %251, ptr %247, align 8
  %252 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %253 = load i32, ptr %252, align 8
  %254 = sub i32 %253, %228
  %255 = sext i32 %254 to i64
  %256 = load i64, ptr %65, align 8
  %257 = add i64 %256, %255
  store i64 %257, ptr %65, align 8
  %258 = load i32, ptr %118, align 4
  br label %259

259:                                              ; preds = %246, %220
  %260 = phi i32 [ %258, %246 ], [ %221, %220 ]
  %261 = and i32 %260, 16
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %272, label %263

263:                                              ; preds = %259
  %264 = load i32, ptr %106, align 4
  %265 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %266 = load i32, ptr %265, align 8
  %267 = icmp eq i32 %264, %266
  br i1 %267, label %268, label %272

268:                                              ; preds = %263
  %269 = load i32, ptr %32, align 4
  %270 = add i32 %269, 1
  store i32 %270, ptr %32, align 4
  %271 = load i32, ptr %118, align 4
  br label %272

272:                                              ; preds = %268, %263, %259
  %273 = phi i32 [ %271, %268 ], [ %260, %263 ], [ %260, %259 ]
  %274 = and i32 %273, 15
  %275 = and i32 %273, 16
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %309

277:                                              ; preds = %272
  %278 = load i32, ptr %106, align 4
  %279 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %280 = load i32, ptr %279, align 8
  %281 = icmp eq i32 %278, %280
  br i1 %281, label %282, label %286

282:                                              ; preds = %277
  %283 = and i32 %273, 32
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %309, label %285, !prof !8

285:                                              ; preds = %282
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 403) #8
  br label %309

286:                                              ; preds = %277
  %287 = getelementptr inbounds %struct.ubifs_lprops, ptr %106, i32 0, i32 1
  %288 = load i32, ptr %287, align 4
  %289 = add i32 %288, %278
  %290 = icmp eq i32 %289, %280
  %291 = and i32 %273, 32
  %292 = icmp eq i32 %291, 0
  br i1 %290, label %293, label %295

293:                                              ; preds = %286
  %294 = select i1 %292, i32 5, i32 6
  br label %309

295:                                              ; preds = %286
  br i1 %292, label %300, label %296

296:                                              ; preds = %295
  %297 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 91
  %298 = load i32, ptr %297, align 8
  %299 = icmp slt i32 %289, %298
  br i1 %299, label %308, label %309

300:                                              ; preds = %295
  %301 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 96
  %302 = load i32, ptr %301, align 8
  %303 = icmp sge i32 %288, %302
  %304 = icmp sgt i32 %288, %278
  %305 = select i1 %303, i1 %304, i1 false
  br i1 %305, label %309, label %306

306:                                              ; preds = %300
  %307 = icmp sgt i32 %278, 0
  br i1 %307, label %309, label %308

308:                                              ; preds = %306, %296
  br label %309

309:                                              ; preds = %308, %306, %300, %296, %293, %285, %282, %272
  %310 = phi i32 [ 0, %308 ], [ 0, %272 ], [ 4, %282 ], [ 4, %285 ], [ %294, %293 ], [ 2, %296 ], [ 1, %300 ], [ 3, %306 ]
  %311 = icmp eq i32 %274, %310
  br i1 %311, label %312, label %320

312:                                              ; preds = %309
  %313 = add nsw i32 %274, -4
  %314 = icmp ult i32 %313, -3
  br i1 %314, label %380, label %315

315:                                              ; preds = %312
  %316 = add nsw i32 %274, -1
  %317 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 %316
  %318 = getelementptr inbounds %struct.ubifs_lprops, ptr %106, i32 0, i32 4
  %319 = load i32, ptr %318, align 4
  tail call fastcc void @adjust_lpt_heap(ptr noundef %317, ptr noundef %106, i32 noundef %319, i32 noundef %274) #8
  br label %380

320:                                              ; preds = %309
  switch i32 %274, label %372 [
    i32 1, label %321
    i32 2, label %321
    i32 3, label %321
    i32 5, label %356
    i32 0, label %361
    i32 4, label %361
    i32 6, label %361
  ]

321:                                              ; preds = %320, %320, %320
  %322 = getelementptr inbounds %struct.ubifs_lprops, ptr %106, i32 0, i32 4
  %323 = load i32, ptr %322, align 4
  %324 = add nsw i32 %274, -1
  %325 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 %324
  %326 = icmp sgt i32 %323, -1
  br i1 %326, label %327, label %331, !prof !8

327:                                              ; preds = %321
  %328 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 %324, i32 1
  %329 = load i32, ptr %328, align 4
  %330 = icmp slt i32 %323, %329
  br i1 %330, label %332, label %331, !prof !8

331:                                              ; preds = %327, %321
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.1, i32 noundef 221) #8
  br label %332

332:                                              ; preds = %331, %327
  %333 = load ptr, ptr %325, align 4
  %334 = getelementptr ptr, ptr %333, i32 %323
  %335 = load ptr, ptr %334, align 4
  %336 = icmp eq ptr %335, %106
  br i1 %336, label %338, label %337, !prof !8

337:                                              ; preds = %332
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.1, i32 noundef 222) #8
  br label %338

338:                                              ; preds = %337, %332
  %339 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 %324, i32 1
  %340 = load i32, ptr %339, align 4
  %341 = add i32 %340, -1
  store i32 %341, ptr %339, align 4
  %342 = icmp slt i32 %323, %341
  br i1 %342, label %343, label %355

343:                                              ; preds = %338
  %344 = load ptr, ptr %325, align 4
  %345 = getelementptr ptr, ptr %344, i32 %341
  %346 = load ptr, ptr %345, align 4
  %347 = getelementptr ptr, ptr %344, i32 %323
  store ptr %346, ptr %347, align 4
  %348 = load ptr, ptr %325, align 4
  %349 = getelementptr ptr, ptr %348, i32 %323
  %350 = load ptr, ptr %349, align 4
  %351 = getelementptr inbounds %struct.ubifs_lprops, ptr %350, i32 0, i32 4
  store i32 %323, ptr %351, align 4
  %352 = load ptr, ptr %325, align 4
  %353 = getelementptr ptr, ptr %352, i32 %323
  %354 = load ptr, ptr %353, align 4
  tail call fastcc void @adjust_lpt_heap(ptr noundef %325, ptr noundef %354, i32 noundef %323, i32 noundef %274) #8
  br label %355

355:                                              ; preds = %343, %338
  tail call void @dbg_check_heap(ptr noundef %0, ptr noundef %325, i32 noundef %274, i32 noundef -1) #8
  br label %373

356:                                              ; preds = %320
  %357 = load i32, ptr %20, align 8
  %358 = add i32 %357, -1
  store i32 %358, ptr %20, align 8
  %359 = icmp slt i32 %358, 0
  br i1 %359, label %360, label %361, !prof !9

360:                                              ; preds = %356
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 315) #8
  br label %361

361:                                              ; preds = %360, %356, %320, %320, %320
  %362 = getelementptr inbounds %struct.ubifs_lprops, ptr %106, i32 0, i32 4
  %363 = load volatile ptr, ptr %362, align 4
  %364 = icmp eq ptr %363, %362
  br i1 %364, label %365, label %367, !prof !9

365:                                              ; preds = %361
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.1, i32 noundef 320) #8
  %366 = load ptr, ptr %362, align 4
  br label %367

367:                                              ; preds = %365, %361
  %368 = phi ptr [ %363, %361 ], [ %366, %365 ]
  %369 = getelementptr inbounds %struct.ubifs_lprops, ptr %106, i32 0, i32 4, i32 0, i32 1
  %370 = load ptr, ptr %369, align 4
  %371 = getelementptr inbounds %struct.list_head, ptr %368, i32 0, i32 1
  store ptr %370, ptr %371, align 4
  store volatile ptr %368, ptr %370, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %362, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %369, align 4
  br label %373

372:                                              ; preds = %320
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 324) #8
  br label %373

373:                                              ; preds = %372, %367, %355
  %374 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 165
  %375 = load i32, ptr %374, align 4
  %376 = add i32 %375, -1
  store i32 %376, ptr %374, align 4
  %377 = icmp slt i32 %376, 0
  br i1 %377, label %378, label %379, !prof !9

378:                                              ; preds = %373
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1, i32 noundef 328) #8
  br label %379

379:                                              ; preds = %378, %373
  tail call void @ubifs_add_to_cat(ptr noundef %0, ptr noundef %106, i32 noundef %310) #8
  br label %380

380:                                              ; preds = %379, %315, %312
  %381 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 124
  %382 = load i32, ptr %381, align 4
  %383 = add i32 %382, %5
  store i32 %383, ptr %381, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %384 = load i16, ptr %117, align 4
  %385 = add i16 %384, 1
  store i16 %385, ptr %117, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  br label %386

386:                                              ; preds = %380, %98
  %387 = phi ptr [ %106, %380 ], [ %99, %98 ]
  ret ptr %387
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_lpt_lookup_dirty(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_get_lp_stats(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 85
  tail call void @_raw_spin_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(56) %1, ptr noundef align 8 dereferenceable(56) %4, i32 56, i1 false)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %5 = load i16, ptr %3, align 4
  %6 = add i16 %5, 1
  store i16 %6, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_change_one_lp(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 144
  tail call void @mutex_lock(ptr noundef %8) #8
  %9 = tail call ptr @ubifs_lpt_lookup_dirty(ptr noundef %0, i32 noundef %1) #8
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = ptrtoint ptr %9 to i32
  br label %23

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.ubifs_lprops, ptr %9, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %15, %4
  %17 = xor i32 %5, -1
  %18 = and i32 %16, %17
  %19 = tail call ptr @ubifs_change_lp(ptr noundef %0, ptr noundef %9, i32 noundef %2, i32 noundef %3, i32 noundef %18, i32 noundef %6)
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  %21 = ptrtoint ptr %19 to i32
  %22 = select i1 %20, i32 %21, i32 0
  br label %23

23:                                               ; preds = %13, %11
  %24 = phi i32 [ %12, %11 ], [ %22, %13 ]
  %25 = tail call zeroext i1 @mutex_is_locked(ptr noundef %8) #8
  br i1 %25, label %27, label %26, !prof !8

26:                                               ; preds = %23
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.53, i32 noundef 256) #8
  br label %27

27:                                               ; preds = %26, %23
  %28 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86
  %29 = load i32, ptr %28, align 8
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %35, !prof !8

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 62
  %33 = load i32, ptr %32, align 4
  %34 = icmp sgt i32 %29, %33
  br i1 %34, label %35, label %36, !prof !9

35:                                               ; preds = %31, %27
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.53, i32 noundef 258) #8
  br label %36

36:                                               ; preds = %35, %31
  tail call void @mutex_unlock(ptr noundef %8) #8
  %37 = icmp eq i32 %24, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %1, i32 noundef %24) #8
  br label %39

39:                                               ; preds = %38, %36
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_update_one_lp(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 144
  tail call void @mutex_lock(ptr noundef %7) #8
  %8 = tail call ptr @ubifs_lpt_lookup_dirty(ptr noundef %0, i32 noundef %1) #8
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = ptrtoint ptr %8 to i32
  br label %25

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.ubifs_lprops, ptr %8, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, %4
  %16 = xor i32 %5, -1
  %17 = and i32 %15, %16
  %18 = getelementptr inbounds %struct.ubifs_lprops, ptr %8, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %3
  %21 = tail call ptr @ubifs_change_lp(ptr noundef %0, ptr noundef %8, i32 noundef %2, i32 noundef %20, i32 noundef %17, i32 noundef 0)
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  %23 = ptrtoint ptr %21 to i32
  %24 = select i1 %22, i32 %23, i32 0
  br label %25

25:                                               ; preds = %12, %10
  %26 = phi i32 [ %11, %10 ], [ %24, %12 ]
  %27 = tail call zeroext i1 @mutex_is_locked(ptr noundef %7) #8
  br i1 %27, label %29, label %28, !prof !8

28:                                               ; preds = %25
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.53, i32 noundef 256) #8
  br label %29

29:                                               ; preds = %28, %25
  %30 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86
  %31 = load i32, ptr %30, align 8
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %33, label %37, !prof !8

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 62
  %35 = load i32, ptr %34, align 4
  %36 = icmp sgt i32 %31, %35
  br i1 %36, label %37, label %38, !prof !9

37:                                               ; preds = %33, %29
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.53, i32 noundef 258) #8
  br label %38

38:                                               ; preds = %37, %33
  tail call void @mutex_unlock(ptr noundef %7) #8
  %39 = icmp eq i32 %26, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %1, i32 noundef %26) #8
  br label %41

41:                                               ; preds = %40, %38
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_read_one_lp(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 144
  tail call void @mutex_lock(ptr noundef %4) #8
  %5 = tail call ptr @ubifs_lpt_lookup(ptr noundef %0, i32 noundef %1) #8
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = ptrtoint ptr %5 to i32
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %1, i32 noundef %8) #8
  br label %10

9:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %2, ptr noundef align 4 dereferenceable(24) %5, i32 24, i1 false)
  br label %10

10:                                               ; preds = %9, %7
  %11 = phi i32 [ %8, %7 ], [ 0, %9 ]
  %12 = tail call zeroext i1 @mutex_is_locked(ptr noundef %4) #8
  br i1 %12, label %14, label %13, !prof !8

13:                                               ; preds = %10
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.53, i32 noundef 256) #8
  br label %14

14:                                               ; preds = %13, %10
  %15 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86
  %16 = load i32, ptr %15, align 8
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %22, !prof !8

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 62
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %16, %20
  br i1 %21, label %22, label %23, !prof !9

22:                                               ; preds = %18, %14
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.53, i32 noundef 258) #8
  br label %23

23:                                               ; preds = %22, %18
  tail call void @mutex_unlock(ptr noundef %4) #8
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_lpt_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ubifs_fast_find_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 144
  %3 = tail call zeroext i1 @mutex_is_locked(ptr noundef %2) #8
  br i1 %3, label %5, label %4, !prof !8

4:                                                ; preds = %1
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 759) #8
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 2, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %5
  %10 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ubifs_lprops, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17, !prof !8

17:                                               ; preds = %9
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 766) #8
  %18 = load i32, ptr %13, align 4
  br label %19

19:                                               ; preds = %17, %9
  %20 = phi i32 [ %14, %9 ], [ %18, %17 ]
  %21 = and i32 %20, 32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23, !prof !8

23:                                               ; preds = %19
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 767) #8
  br label %24

24:                                               ; preds = %23, %19, %5
  %25 = phi ptr [ null, %5 ], [ %12, %23 ], [ %12, %19 ]
  ret ptr %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ubifs_fast_find_empty(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 144
  %3 = tail call zeroext i1 @mutex_is_locked(ptr noundef %2) #8
  br i1 %3, label %5, label %4, !prof !8

4:                                                ; preds = %1
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 782) #8
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 161
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %7, i32 -16
  %11 = getelementptr i8, ptr %7, i32 -8
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15, !prof !8

15:                                               ; preds = %9
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 788) #8
  %16 = load i32, ptr %11, align 4
  br label %17

17:                                               ; preds = %15, %9
  %18 = phi i32 [ %12, %9 ], [ %16, %15 ]
  %19 = and i32 %18, 32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21, !prof !8

21:                                               ; preds = %17
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 789) #8
  br label %22

22:                                               ; preds = %21, %17
  %23 = load i32, ptr %10, align 4
  %24 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %28, label %27, !prof !8

27:                                               ; preds = %22
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 790) #8
  br label %28

28:                                               ; preds = %27, %22, %5
  %29 = phi ptr [ null, %5 ], [ %10, %27 ], [ %10, %22 ]
  ret ptr %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ubifs_fast_find_freeable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 144
  %3 = tail call zeroext i1 @mutex_is_locked(ptr noundef %2) #8
  br i1 %3, label %5, label %4, !prof !8

4:                                                ; preds = %1
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 805) #8
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 162
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %36, label %9

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %7, i32 -16
  %11 = getelementptr i8, ptr %7, i32 -8
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15, !prof !8

15:                                               ; preds = %9
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 811) #8
  %16 = load i32, ptr %11, align 4
  br label %17

17:                                               ; preds = %15, %9
  %18 = phi i32 [ %12, %9 ], [ %16, %15 ]
  %19 = and i32 %18, 32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21, !prof !8

21:                                               ; preds = %17
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 812) #8
  br label %22

22:                                               ; preds = %21, %17
  %23 = load i32, ptr %10, align 4
  %24 = getelementptr i8, ptr %7, i32 -12
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, %23
  %27 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %31, label %30, !prof !8

30:                                               ; preds = %22
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 813) #8
  br label %31

31:                                               ; preds = %30, %22
  %32 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 164
  %33 = load i32, ptr %32, align 8
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %35, label %36, !prof !9

35:                                               ; preds = %31
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 814) #8
  br label %36

36:                                               ; preds = %35, %31, %5
  %37 = phi ptr [ null, %5 ], [ %10, %35 ], [ %10, %31 ]
  ret ptr %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ubifs_fast_find_frdi_idx(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 144
  %3 = tail call zeroext i1 @mutex_is_locked(ptr noundef %2) #8
  br i1 %3, label %5, label %4, !prof !8

4:                                                ; preds = %1
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 829) #8
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 163
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %31, label %9

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %7, i32 -16
  %11 = getelementptr i8, ptr %7, i32 -8
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15, !prof !8

15:                                               ; preds = %9
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 835) #8
  %16 = load i32, ptr %11, align 4
  br label %17

17:                                               ; preds = %15, %9
  %18 = phi i32 [ %12, %9 ], [ %16, %15 ]
  %19 = and i32 %18, 32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22, !prof !9

21:                                               ; preds = %17
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, i32 noundef 836) #8
  br label %22

22:                                               ; preds = %21, %17
  %23 = load i32, ptr %10, align 4
  %24 = getelementptr i8, ptr %7, i32 -12
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, %23
  %27 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %31, label %30, !prof !8

30:                                               ; preds = %22
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 837) #8
  br label %31

31:                                               ; preds = %30, %22, %5
  %32 = phi ptr [ null, %5 ], [ %10, %30 ], [ %10, %22 ]
  ret ptr %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dbg_check_cats(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i8, ptr @ubifs_dbg, align 4
  %3 = and i8 %2, 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ubifs_debug_info, ptr %7, i32 0, i32 19
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  %12 = and i8 %2, 8
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %11, i1 %13, i1 false
  %15 = and i8 %9, 8
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %209, label %18

18:                                               ; preds = %5, %1
  %19 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 161
  %20 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  br label %21

21:                                               ; preds = %37, %18
  %22 = phi ptr [ %19, %18 ], [ %23, %37 ]
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %19
  br i1 %24, label %47, label %25

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %23, i32 -16
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr %20, align 8
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = getelementptr i8, ptr %23, i32 -4
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr i8, ptr %23, i32 -12
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr i8, ptr %23, i32 -8
  %36 = load i32, ptr %35, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %32, i32 noundef %27, i32 noundef %34, i32 noundef %36) #8
  br label %209

37:                                               ; preds = %25
  %38 = getelementptr i8, ptr %23, i32 -8
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %21, label %42

42:                                               ; preds = %37
  %43 = getelementptr i8, ptr %23, i32 -4
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr i8, ptr %23, i32 -12
  %46 = load i32, ptr %45, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %44, i32 noundef %27, i32 noundef %46, i32 noundef %39) #8
  br label %209

47:                                               ; preds = %21
  %48 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 162
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %48
  br i1 %50, label %79, label %51

51:                                               ; preds = %47
  %52 = load i32, ptr %20, align 8
  br label %53

53:                                               ; preds = %75, %51
  %54 = phi ptr [ %49, %51 ], [ %77, %75 ]
  %55 = phi i32 [ 0, %51 ], [ %76, %75 ]
  %56 = getelementptr i8, ptr %54, i32 -16
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr i8, ptr %54, i32 -12
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, %57
  %61 = icmp eq i32 %60, %52
  br i1 %61, label %67, label %62

62:                                               ; preds = %53
  %63 = getelementptr i8, ptr %54, i32 -4
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr i8, ptr %54, i32 -8
  %66 = load i32, ptr %65, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %64, i32 noundef %57, i32 noundef %59, i32 noundef %66) #8
  br label %209

67:                                               ; preds = %53
  %68 = getelementptr i8, ptr %54, i32 -8
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, 16
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = getelementptr i8, ptr %54, i32 -4
  %74 = load i32, ptr %73, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef %74, i32 noundef %57, i32 noundef %59, i32 noundef %69) #8
  br label %209

75:                                               ; preds = %67
  %76 = add i32 %55, 1
  %77 = load ptr, ptr %54, align 4
  %78 = icmp eq ptr %77, %48
  br i1 %78, label %79, label %53

79:                                               ; preds = %75, %47
  %80 = phi i32 [ 0, %47 ], [ %76, %75 ]
  %81 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 164
  %82 = load i32, ptr %81, align 8
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %80, i32 noundef %82) #8
  br label %209

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 123
  br label %87

87:                                               ; preds = %87, %85
  %88 = phi i32 [ 0, %85 ], [ %92, %87 ]
  %89 = phi ptr [ %86, %85 ], [ %90, %87 ]
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, %86
  %92 = add i32 %88, 1
  br i1 %91, label %93, label %87

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 124
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %88, %95
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef %88, i32 noundef %95) #8
  br label %209

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 163
  br label %100

100:                                              ; preds = %129, %98
  %101 = phi ptr [ %99, %98 ], [ %102, %129 ]
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, %99
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 0, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %135, label %161

108:                                              ; preds = %100
  %109 = getelementptr i8, ptr %102, i32 -16
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr i8, ptr %102, i32 -12
  %112 = load i32, ptr %111, align 4
  %113 = add i32 %112, %110
  %114 = load i32, ptr %20, align 8
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %121, label %116

116:                                              ; preds = %108
  %117 = getelementptr i8, ptr %102, i32 -4
  %118 = load i32, ptr %117, align 4
  %119 = getelementptr i8, ptr %102, i32 -8
  %120 = load i32, ptr %119, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.32, i32 noundef %118, i32 noundef %110, i32 noundef %112, i32 noundef %120) #8
  br label %209

121:                                              ; preds = %108
  %122 = getelementptr i8, ptr %102, i32 -8
  %123 = load i32, ptr %122, align 4
  %124 = and i32 %123, 16
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %121
  %127 = getelementptr i8, ptr %102, i32 -4
  %128 = load i32, ptr %127, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.33, i32 noundef %128, i32 noundef %110, i32 noundef %112, i32 noundef %123) #8
  br label %209

129:                                              ; preds = %121
  %130 = and i32 %123, 32
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %100

132:                                              ; preds = %129
  %133 = getelementptr i8, ptr %102, i32 -4
  %134 = load i32, ptr %133, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef %134, i32 noundef %110, i32 noundef %112, i32 noundef %123) #8
  br label %209

135:                                              ; preds = %104
  %136 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 0
  %137 = load ptr, ptr %136, align 4
  br label %141

138:                                              ; preds = %154
  %139 = add nuw nsw i32 %142, 1
  %140 = icmp eq i32 %139, %106
  br i1 %140, label %161, label %141

141:                                              ; preds = %138, %135
  %142 = phi i32 [ 0, %135 ], [ %139, %138 ]
  %143 = getelementptr ptr, ptr %137, i32 %142
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %148

146:                                              ; preds = %192, %168, %141
  %147 = phi i32 [ 3, %192 ], [ 2, %168 ], [ 1, %141 ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.35, i32 noundef %147) #8
  br label %209

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.ubifs_lprops, ptr %144, i32 0, i32 4
  %150 = load i32, ptr %149, align 4
  %151 = icmp eq i32 %150, %142
  br i1 %151, label %154, label %152

152:                                              ; preds = %197, %173, %148
  %153 = phi i32 [ 3, %197 ], [ 2, %173 ], [ 1, %148 ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %153) #8
  br label %209

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.ubifs_lprops, ptr %144, i32 0, i32 2
  %156 = load i32, ptr %155, align 4
  %157 = and i32 %156, 16
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %138, label %159

159:                                              ; preds = %201, %177, %154
  %160 = phi i32 [ 3, %201 ], [ 2, %177 ], [ 1, %154 ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.37, i32 noundef %160) #8
  br label %209

161:                                              ; preds = %138, %104
  %162 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 1, i32 1
  %163 = load i32, ptr %162, align 4
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %185

165:                                              ; preds = %161
  %166 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 1
  %167 = load ptr, ptr %166, align 4
  br label %168

168:                                              ; preds = %182, %165
  %169 = phi i32 [ 0, %165 ], [ %183, %182 ]
  %170 = getelementptr ptr, ptr %167, i32 %169
  %171 = load ptr, ptr %170, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %146, label %173

173:                                              ; preds = %168
  %174 = getelementptr inbounds %struct.ubifs_lprops, ptr %171, i32 0, i32 4
  %175 = load i32, ptr %174, align 4
  %176 = icmp eq i32 %175, %169
  br i1 %176, label %177, label %152

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.ubifs_lprops, ptr %171, i32 0, i32 2
  %179 = load i32, ptr %178, align 4
  %180 = and i32 %179, 16
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %159

182:                                              ; preds = %177
  %183 = add nuw nsw i32 %169, 1
  %184 = icmp eq i32 %183, %163
  br i1 %184, label %185, label %168

185:                                              ; preds = %182, %161
  %186 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 2, i32 1
  %187 = load i32, ptr %186, align 4
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %209

189:                                              ; preds = %185
  %190 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 2
  %191 = load ptr, ptr %190, align 4
  br label %192

192:                                              ; preds = %206, %189
  %193 = phi i32 [ 0, %189 ], [ %207, %206 ]
  %194 = getelementptr ptr, ptr %191, i32 %193
  %195 = load ptr, ptr %194, align 4
  %196 = icmp eq ptr %195, null
  br i1 %196, label %146, label %197

197:                                              ; preds = %192
  %198 = getelementptr inbounds %struct.ubifs_lprops, ptr %195, i32 0, i32 4
  %199 = load i32, ptr %198, align 4
  %200 = icmp eq i32 %199, %193
  br i1 %200, label %201, label %152

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.ubifs_lprops, ptr %195, i32 0, i32 2
  %203 = load i32, ptr %202, align 4
  %204 = and i32 %203, 16
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %159

206:                                              ; preds = %201
  %207 = add nuw nsw i32 %193, 1
  %208 = icmp eq i32 %207, %187
  br i1 %208, label %209, label %192

209:                                              ; preds = %206, %185, %159, %152, %146, %132, %126, %116, %97, %84, %72, %62, %42, %30, %5
  %210 = phi i32 [ -22, %30 ], [ -22, %42 ], [ -22, %62 ], [ -22, %72 ], [ -22, %84 ], [ -22, %97 ], [ -22, %116 ], [ -22, %126 ], [ -22, %132 ], [ -22, %159 ], [ -22, %152 ], [ -22, %146 ], [ 0, %185 ], [ 0, %5 ], [ 0, %206 ]
  ret i32 %210
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dbg_check_heap(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load i8, ptr @ubifs_dbg, align 4
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ubifs_debug_info, ptr %10, i32 0, i32 19
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  %15 = and i8 %5, 8
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %14, i1 %16, i1 false
  %18 = and i8 %12, 8
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %76, label %21

21:                                               ; preds = %8, %4
  %22 = getelementptr inbounds %struct.ubifs_lpt_heap, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %76

25:                                               ; preds = %70, %21
  %26 = phi i32 [ %71, %70 ], [ 0, %21 ]
  %27 = load ptr, ptr %1, align 4
  %28 = getelementptr ptr, ptr %27, i32 %26
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq i32 %26, %3
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.ubifs_lprops, ptr %29, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 15
  %35 = icmp eq i32 %34, %2
  br i1 %35, label %36, label %74

36:                                               ; preds = %31, %25
  %37 = getelementptr inbounds %struct.ubifs_lprops, ptr %29, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, %26
  br i1 %39, label %40, label %74

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.ubifs_lprops, ptr %29, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = tail call ptr @ubifs_lpt_lookup(ptr noundef %0, i32 noundef %42) #8
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %74, label %45

45:                                               ; preds = %40
  %46 = icmp eq ptr %29, %43
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  %48 = icmp eq i32 %26, 0
  br i1 %48, label %70, label %49

49:                                               ; preds = %47
  %50 = load ptr, ptr %1, align 4
  br label %60

51:                                               ; preds = %45
  %52 = ptrtoint ptr %29 to i32
  %53 = ptrtoint ptr %43 to i32
  %54 = load i32, ptr %41, align 4
  %55 = getelementptr inbounds %struct.ubifs_lprops, ptr %43, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.38, i32 noundef %52, i32 noundef %53, i32 noundef %54, i32 noundef %56) #8
  br label %74

57:                                               ; preds = %65
  %58 = add nuw nsw i32 %61, 1
  %59 = icmp eq i32 %58, %26
  br i1 %59, label %70, label %60

60:                                               ; preds = %57, %49
  %61 = phi i32 [ 0, %49 ], [ %58, %57 ]
  %62 = getelementptr ptr, ptr %50, i32 %61
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, %29
  br i1 %64, label %74, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.ubifs_lprops, ptr %63, i32 0, i32 3
  %67 = load i32, ptr %66, align 4
  %68 = load i32, ptr %41, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %74, label %57

70:                                               ; preds = %57, %47
  %71 = add nuw nsw i32 %26, 1
  %72 = load i32, ptr %22, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %25, label %76

74:                                               ; preds = %65, %60, %51, %40, %36, %31
  %75 = phi i32 [ 4, %51 ], [ 6, %65 ], [ 5, %60 ], [ 3, %40 ], [ 2, %36 ], [ 1, %31 ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %2, i32 noundef %26, i32 noundef %75) #8
  tail call void @dump_stack() #9
  tail call void @ubifs_dump_heap(ptr noundef %0, ptr noundef %1, i32 noundef %2) #8
  br label %76

76:                                               ; preds = %74, %70, %21, %8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_heap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dbg_check_lprops(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ubifs_lp_stats, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #8
  %3 = load i8, ptr @ubifs_dbg, align 4
  %4 = and i8 %3, 8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ubifs_debug_info, ptr %8, i32 0, i32 19
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %106, label %13

13:                                               ; preds = %6, %1
  %14 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 18
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  br label %23

19:                                               ; preds = %23
  %20 = add nuw nsw i32 %24, 1
  %21 = load i32, ptr %14, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %19, %17
  %24 = phi i32 [ 0, %17 ], [ %20, %19 ]
  %25 = load ptr, ptr %18, align 8
  %26 = getelementptr %struct.ubifs_jhead, ptr %25, i32 %24
  %27 = getelementptr inbounds %struct.ubifs_wbuf, ptr %26, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %27) #8
  %28 = tail call i32 @ubifs_wbuf_sync_nolock(ptr noundef %26) #8
  tail call void @mutex_unlock(ptr noundef %27) #8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %19, label %106

30:                                               ; preds = %19, %13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i32 56, i1 false)
  %31 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 63
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 79
  %34 = load i32, ptr %33, align 8
  %35 = add i32 %34, -1
  %36 = call i32 @ubifs_lpt_scan_nolock(ptr noundef %0, i32 noundef %32, i32 noundef %35, ptr noundef nonnull @scan_check_cb, ptr noundef nonnull %2) #8
  switch i32 %36, label %106 [
    i32 -28, label %37
    i32 0, label %37
  ]

37:                                               ; preds = %30, %30
  %38 = load i32, ptr %2, align 8
  %39 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86
  %40 = load i32, ptr %39, align 8
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %2, i32 0, i32 2
  %44 = load i32, ptr %43, align 8
  %45 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 2
  %46 = load i32, ptr %45, align 8
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %2, i32 0, i32 3
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 3
  %52 = load i64, ptr %51, align 8
  %53 = icmp eq i64 %50, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %2, i32 0, i32 4
  %56 = load i64, ptr %55, align 8
  %57 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 4
  %58 = load i64, ptr %57, align 8
  %59 = icmp eq i64 %56, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %2, i32 0, i32 5
  %62 = load i64, ptr %61, align 8
  %63 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 5
  %64 = load i64, ptr %63, align 8
  %65 = icmp eq i64 %62, %64
  br i1 %65, label %85, label %66

66:                                               ; preds = %60, %54, %48, %42, %37
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.40) #8
  %67 = load i32, ptr %2, align 8
  %68 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %2, i32 0, i32 2
  %69 = load i32, ptr %68, align 8
  %70 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %2, i32 0, i32 3
  %71 = load i64, ptr %70, align 8
  %72 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %2, i32 0, i32 4
  %73 = load i64, ptr %72, align 8
  %74 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %2, i32 0, i32 5
  %75 = load i64, ptr %74, align 8
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %67, i32 noundef %69, i64 noundef %71, i64 noundef %73, i64 noundef %75) #8
  %76 = load i32, ptr %39, align 8
  %77 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 2
  %78 = load i32, ptr %77, align 8
  %79 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 3
  %80 = load i64, ptr %79, align 8
  %81 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 4
  %82 = load i64, ptr %81, align 8
  %83 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 5
  %84 = load i64, ptr %83, align 8
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef %76, i32 noundef %78, i64 noundef %80, i64 noundef %82, i64 noundef %84) #8
  br label %106

85:                                               ; preds = %60
  %86 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %2, i32 0, i32 6
  %87 = load i64, ptr %86, align 8
  %88 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 6
  %89 = load i64, ptr %88, align 8
  %90 = icmp eq i64 %87, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %2, i32 0, i32 7
  %93 = load i64, ptr %92, align 8
  %94 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 7
  %95 = load i64, ptr %94, align 8
  %96 = icmp eq i64 %93, %95
  br i1 %96, label %104, label %97

97:                                               ; preds = %91, %85
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.43) #8
  %98 = load i64, ptr %86, align 8
  %99 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %2, i32 0, i32 7
  %100 = load i64, ptr %99, align 8
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.44, i64 noundef %98, i64 noundef %100) #8
  %101 = load i64, ptr %88, align 8
  %102 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 7
  %103 = load i64, ptr %102, align 8
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.45, i64 noundef %101, i64 noundef %103) #8
  br label %106

104:                                              ; preds = %91
  %105 = call i32 @dbg_check_cats(ptr noundef %0)
  br label %106

106:                                              ; preds = %104, %97, %66, %30, %23, %6
  %107 = phi i32 [ 0, %6 ], [ %36, %30 ], [ -22, %66 ], [ -22, %97 ], [ %105, %104 ], [ %28, %23 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #8
  ret i32 %107
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_lpt_scan_nolock(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scan_check_cb(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %54, label %11

11:                                               ; preds = %4
  %12 = and i32 %8, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %48

14:                                               ; preds = %11
  %15 = load i32, ptr %1, align 4
  %16 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = and i32 %8, 32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %48, label %22, !prof !8

22:                                               ; preds = %19
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 403) #8
  %23 = load i32, ptr %7, align 4
  %24 = and i32 %23, 15
  br label %48

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %15
  %29 = icmp eq i32 %28, %17
  %30 = and i32 %8, 32
  %31 = icmp eq i32 %30, 0
  br i1 %29, label %32, label %34

32:                                               ; preds = %25
  %33 = select i1 %31, i32 5, i32 6
  br label %48

34:                                               ; preds = %25
  br i1 %31, label %39, label %35

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 91
  %37 = load i32, ptr %36, align 8
  %38 = icmp slt i32 %28, %37
  br i1 %38, label %47, label %48

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 96
  %41 = load i32, ptr %40, align 8
  %42 = icmp sge i32 %27, %41
  %43 = icmp sgt i32 %27, %15
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = icmp sgt i32 %15, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %45, %35
  br label %48

48:                                               ; preds = %47, %45, %39, %35, %32, %22, %19, %11
  %49 = phi i32 [ %9, %11 ], [ %9, %19 ], [ %24, %22 ], [ %9, %32 ], [ %9, %35 ], [ %9, %39 ], [ %9, %45 ], [ %9, %47 ]
  %50 = phi i32 [ %8, %11 ], [ %8, %19 ], [ %23, %22 ], [ %8, %32 ], [ %8, %35 ], [ %8, %39 ], [ %8, %45 ], [ %8, %47 ]
  %51 = phi i32 [ 0, %11 ], [ 4, %19 ], [ 4, %22 ], [ %33, %32 ], [ 2, %35 ], [ 1, %39 ], [ 3, %45 ], [ 0, %47 ]
  %52 = icmp eq i32 %51, %49
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef %49, i32 noundef %51) #8
  br label %366

54:                                               ; preds = %48, %4
  %55 = phi i32 [ %50, %48 ], [ %8, %4 ]
  %56 = phi i32 [ %51, %48 ], [ 0, %4 ]
  %57 = icmp eq i32 %2, 0
  br i1 %57, label %101, label %58

58:                                               ; preds = %54
  switch i32 %56, label %78 [
    i32 4, label %59
    i32 5, label %61
    i32 6, label %63
    i32 0, label %65
  ]

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 161
  br label %67

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 162
  br label %67

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 163
  br label %67

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 160
  br label %67

67:                                               ; preds = %65, %63, %61, %59
  %68 = phi ptr [ %66, %65 ], [ %64, %63 ], [ %62, %61 ], [ %60, %59 ]
  %69 = icmp eq ptr %68, null
  br i1 %69, label %78, label %70

70:                                               ; preds = %74, %67
  %71 = phi ptr [ %72, %74 ], [ %68, %67 ]
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, %68
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = getelementptr i8, ptr %72, i32 -16
  %76 = icmp eq ptr %75, %1
  br i1 %76, label %78, label %70

77:                                               ; preds = %70
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.55, i32 noundef %56) #8
  br label %366

78:                                               ; preds = %74, %67, %58
  %79 = add nsw i32 %56, -1
  %80 = icmp ult i32 %79, 3
  br i1 %80, label %81, label %101

81:                                               ; preds = %78
  %82 = add nsw i32 %56, -1
  %83 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 %82
  %84 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 4
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, -1
  %87 = load ptr, ptr %83, align 4
  br i1 %86, label %88, label %91

88:                                               ; preds = %81
  %89 = getelementptr ptr, ptr %87, i32 -1
  %90 = load ptr, ptr %89, align 4
  br label %97

91:                                               ; preds = %81
  %92 = getelementptr ptr, ptr %87, i32 %85
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.ubifs_lprops, ptr %93, i32 0, i32 3
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, %6
  br i1 %96, label %97, label %100

97:                                               ; preds = %91, %88
  %98 = phi ptr [ %90, %88 ], [ %93, %91 ]
  %99 = icmp eq ptr %98, %1
  br i1 %99, label %101, label %100

100:                                              ; preds = %97, %91
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.56, i32 noundef %56) #8
  br label %366

101:                                              ; preds = %97, %78, %54
  %102 = load i32, ptr %1, align 4
  %103 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %104 = load i32, ptr %103, align 8
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %106, label %131

106:                                              ; preds = %101
  %107 = load i32, ptr %3, align 8
  %108 = add i32 %107, 1
  store i32 %108, ptr %3, align 8
  %109 = load i32, ptr %103, align 8
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %3, i32 0, i32 3
  %112 = load i64, ptr %111, align 8
  %113 = add i64 %112, %110
  store i64 %113, ptr %111, align 8
  %114 = load i32, ptr %103, align 8
  %115 = and i32 %114, 7
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %118, label %117, !prof !8

117:                                              ; preds = %106
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 469) #8
  br label %118

118:                                              ; preds = %117, %106
  %119 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 97
  %120 = load i32, ptr %119, align 4
  %121 = icmp slt i32 %114, %120
  %122 = sub i32 %114, %120
  %123 = icmp ult i32 %122, 56
  %124 = add i32 %114, -56
  %125 = select i1 %123, i32 %124, i32 %120
  %126 = select i1 %121, i32 %114, i32 %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %3, i32 0, i32 7
  %129 = load i64, ptr %128, align 8
  %130 = add i64 %129, %127
  store i64 %130, ptr %128, align 8
  br label %366

131:                                              ; preds = %101
  %132 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 1
  %133 = load i32, ptr %132, align 4
  %134 = add i32 %133, %102
  %135 = icmp eq i32 %134, %104
  %136 = and i32 %55, 32
  %137 = icmp eq i32 %136, 0
  %138 = select i1 %135, i1 %137, i1 false
  br i1 %138, label %139, label %166

139:                                              ; preds = %131
  %140 = sext i32 %102 to i64
  %141 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %3, i32 0, i32 3
  %142 = load i64, ptr %141, align 8
  %143 = add i64 %142, %140
  store i64 %143, ptr %141, align 8
  %144 = load i32, ptr %132, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %3, i32 0, i32 4
  %147 = load i64, ptr %146, align 8
  %148 = add i64 %147, %145
  store i64 %148, ptr %146, align 8
  %149 = load i32, ptr %103, align 8
  %150 = and i32 %149, 7
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %153, label %152, !prof !8

152:                                              ; preds = %139
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 469) #8
  br label %153

153:                                              ; preds = %152, %139
  %154 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 97
  %155 = load i32, ptr %154, align 4
  %156 = icmp slt i32 %149, %155
  %157 = sub i32 %149, %155
  %158 = icmp ult i32 %157, 56
  %159 = add i32 %149, -56
  %160 = select i1 %158, i32 %159, i32 %155
  %161 = select i1 %156, i32 %149, i32 %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %3, i32 0, i32 7
  %164 = load i64, ptr %163, align 8
  %165 = add i64 %164, %162
  store i64 %165, ptr %163, align 8
  br label %366

166:                                              ; preds = %131
  %167 = tail call noalias ptr @__vmalloc(i32 noundef %104, i32 noundef 3136) #10
  %168 = icmp eq ptr %167, null
  br i1 %168, label %366, label %169

169:                                              ; preds = %166
  %170 = tail call ptr @ubifs_scan(ptr noundef %0, i32 noundef %6, i32 noundef 0, ptr noundef nonnull %167, i32 noundef 0) #8
  %171 = icmp ugt ptr %170, inttoptr (i32 -4096 to ptr)
  br i1 %171, label %172, label %177

172:                                              ; preds = %169
  %173 = ptrtoint ptr %170 to i32
  %174 = icmp eq ptr %170, inttoptr (i32 -117 to ptr)
  br i1 %174, label %175, label %364

175:                                              ; preds = %172
  tail call void @ubifs_dump_lprops(ptr noundef %0) #8
  %176 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87
  tail call void @ubifs_dump_budg(ptr noundef %0, ptr noundef %176) #8
  br label %364

177:                                              ; preds = %169
  %178 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %170, i32 0, i32 2
  %179 = load ptr, ptr %178, align 4
  %180 = icmp eq ptr %179, %178
  br i1 %180, label %235, label %181

181:                                              ; preds = %231, %177
  %182 = phi ptr [ %233, %231 ], [ %179, %177 ]
  %183 = phi i32 [ %193, %231 ], [ -1, %177 ]
  %184 = phi i32 [ %232, %231 ], [ 0, %177 ]
  %185 = tail call i32 @__cond_resched() #8
  %186 = icmp eq i32 %183, -1
  br i1 %186, label %187, label %192

187:                                              ; preds = %181
  %188 = getelementptr inbounds %struct.ubifs_scan_node, ptr %182, i32 0, i32 3
  %189 = load i32, ptr %188, align 8
  %190 = icmp eq i32 %189, 9
  %191 = zext i1 %190 to i32
  br label %192

192:                                              ; preds = %187, %181
  %193 = phi i32 [ %191, %187 ], [ %183, %181 ]
  %194 = icmp eq i32 %193, 0
  %195 = getelementptr inbounds %struct.ubifs_scan_node, ptr %182, i32 0, i32 3
  %196 = load i32, ptr %195, align 8
  %197 = icmp eq i32 %196, 9
  br i1 %194, label %202, label %198

198:                                              ; preds = %192
  br i1 %197, label %203, label %199

199:                                              ; preds = %198
  %200 = getelementptr inbounds %struct.ubifs_scan_node, ptr %182, i32 0, i32 4
  %201 = load i32, ptr %200, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.57, i32 noundef %6, i32 noundef %201) #8
  br label %363

202:                                              ; preds = %192
  br i1 %197, label %203, label %216

203:                                              ; preds = %202, %198
  %204 = getelementptr inbounds %struct.ubifs_scan_node, ptr %182, i32 0, i32 6
  %205 = load ptr, ptr %204, align 4
  %206 = getelementptr inbounds %struct.ubifs_idx_node, ptr %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.ubifs_branch, ptr %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.ubifs_scan_node, ptr %182, i32 0, i32 1
  %209 = load i32, ptr %207, align 8
  store i32 %209, ptr %208, align 8
  %210 = getelementptr %struct.ubifs_idx_node, ptr %205, i32 1, i32 0, i32 3
  %211 = load i32, ptr %210, align 4
  %212 = getelementptr [2 x i32], ptr %208, i32 0, i32 1
  store i32 %211, ptr %212, align 4
  %213 = getelementptr inbounds %struct.ubifs_idx_node, ptr %205, i32 0, i32 2
  %214 = load i16, ptr %213, align 1
  %215 = zext i16 %214 to i32
  br label %216

216:                                              ; preds = %203, %202
  %217 = phi i32 [ %215, %203 ], [ 0, %202 ]
  %218 = getelementptr inbounds %struct.ubifs_scan_node, ptr %182, i32 0, i32 1
  %219 = getelementptr inbounds %struct.ubifs_scan_node, ptr %182, i32 0, i32 4
  %220 = load i32, ptr %219, align 4
  %221 = tail call i32 @ubifs_tnc_has_node(ptr noundef %0, ptr noundef %218, i32 noundef %217, i32 noundef %6, i32 noundef %220, i32 noundef %193) #8
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %231, label %223

223:                                              ; preds = %216
  %224 = icmp slt i32 %221, 0
  br i1 %224, label %363, label %225

225:                                              ; preds = %223
  %226 = getelementptr inbounds %struct.ubifs_scan_node, ptr %182, i32 0, i32 5
  %227 = load i32, ptr %226, align 8
  %228 = add i32 %227, 7
  %229 = and i32 %228, -8
  %230 = add i32 %229, %184
  br label %231

231:                                              ; preds = %225, %216
  %232 = phi i32 [ %230, %225 ], [ %184, %216 ]
  %233 = load ptr, ptr %182, align 4
  %234 = icmp eq ptr %233, %178
  br i1 %234, label %235, label %181

235:                                              ; preds = %231, %177
  %236 = phi i32 [ 0, %177 ], [ %232, %231 ]
  %237 = phi i32 [ -1, %177 ], [ %193, %231 ]
  %238 = load i32, ptr %103, align 8
  %239 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %170, i32 0, i32 3
  %240 = load i32, ptr %239, align 4
  %241 = sub i32 %238, %240
  %242 = sub i32 %240, %236
  %243 = icmp sgt i32 %241, %238
  %244 = icmp slt i32 %241, 0
  %245 = or i1 %243, %244
  br i1 %245, label %250, label %246

246:                                              ; preds = %235
  %247 = icmp sgt i32 %242, %238
  %248 = icmp slt i32 %242, 0
  %249 = or i1 %247, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %246, %235
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.58, i32 noundef %6, i32 noundef %241, i32 noundef %242) #8
  br label %363

251:                                              ; preds = %246
  %252 = load i32, ptr %1, align 4
  %253 = load i32, ptr %132, align 4
  %254 = add i32 %253, %252
  %255 = icmp eq i32 %254, %238
  %256 = add nuw i32 %241, %242
  %257 = icmp eq i32 %256, %238
  %258 = select i1 %255, i1 %257, i1 false
  br i1 %258, label %259, label %271

259:                                              ; preds = %251
  %260 = icmp eq i32 %237, 0
  br i1 %260, label %267, label %261

261:                                              ; preds = %259
  %262 = load i32, ptr %7, align 4
  %263 = and i32 %262, 32
  %264 = icmp eq i32 %263, 0
  %265 = icmp eq i32 %252, %238
  %266 = select i1 %264, i1 true, i1 %265
  br i1 %266, label %296, label %271

267:                                              ; preds = %259
  %268 = icmp eq i32 %240, 0
  %269 = icmp eq i32 %252, %238
  %270 = select i1 %268, i1 true, i1 %269
  br i1 %270, label %296, label %282

271:                                              ; preds = %261, %251
  %272 = icmp eq i32 %237, 0
  %273 = xor i1 %272, true
  %274 = icmp eq i32 %254, %256
  %275 = select i1 %273, i1 %274, i1 false
  br i1 %275, label %276, label %282

276:                                              ; preds = %271
  %277 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 39
  %278 = load i32, ptr %277, align 8
  %279 = icmp eq i32 %6, %278
  %280 = select i1 %279, i32 %242, i32 %253
  %281 = select i1 %279, i32 %241, i32 %252
  br label %282

282:                                              ; preds = %276, %271, %267
  %283 = phi i1 [ %272, %271 ], [ %272, %276 ], [ true, %267 ]
  %284 = phi i32 [ %242, %271 ], [ %280, %276 ], [ %242, %267 ]
  %285 = phi i32 [ %241, %271 ], [ %281, %276 ], [ %241, %267 ]
  %286 = icmp eq i32 %252, %285
  %287 = icmp eq i32 %253, %284
  %288 = select i1 %286, i1 %287, i1 false
  br i1 %288, label %289, label %357

289:                                              ; preds = %282
  br i1 %283, label %296, label %290

290:                                              ; preds = %289
  %291 = load i32, ptr %7, align 4
  %292 = and i32 %291, 32
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %301

294:                                              ; preds = %290
  %295 = icmp eq i32 %252, %238
  br i1 %295, label %296, label %354

296:                                              ; preds = %294, %289, %267, %261
  %297 = phi i32 [ %238, %294 ], [ %252, %289 ], [ %252, %267 ], [ %252, %261 ]
  %298 = load i32, ptr %7, align 4
  %299 = and i32 %298, 32
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %354

301:                                              ; preds = %296, %290
  %302 = phi i1 [ true, %296 ], [ false, %290 ]
  %303 = phi i32 [ %297, %296 ], [ %252, %290 ]
  %304 = icmp eq i32 %303, %238
  br i1 %304, label %305, label %308

305:                                              ; preds = %301
  %306 = load i32, ptr %3, align 8
  %307 = add i32 %306, 1
  store i32 %307, ptr %3, align 8
  br label %308

308:                                              ; preds = %305, %301
  br i1 %302, label %313, label %309

309:                                              ; preds = %308
  %310 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %3, i32 0, i32 2
  %311 = load i32, ptr %310, align 8
  %312 = add i32 %311, 1
  store i32 %312, ptr %310, align 8
  br label %313

313:                                              ; preds = %309, %308
  %314 = load i32, ptr %7, align 4
  %315 = and i32 %314, 32
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %325

317:                                              ; preds = %313
  %318 = load i32, ptr %103, align 8
  %319 = add i32 %253, %303
  %320 = sub i32 %318, %319
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %3, i32 0, i32 5
  %323 = load i64, ptr %322, align 8
  %324 = add i64 %323, %321
  store i64 %324, ptr %322, align 8
  br label %325

325:                                              ; preds = %317, %313
  %326 = sext i32 %303 to i64
  %327 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %3, i32 0, i32 3
  %328 = load i64, ptr %327, align 8
  %329 = add i64 %328, %326
  store i64 %329, ptr %327, align 8
  %330 = sext i32 %253 to i64
  %331 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %3, i32 0, i32 4
  %332 = load i64, ptr %331, align 8
  %333 = add i64 %332, %330
  store i64 %333, ptr %331, align 8
  %334 = load i32, ptr %7, align 4
  %335 = and i32 %334, 32
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %353

337:                                              ; preds = %325
  %338 = add i32 %253, %303
  %339 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 96
  %340 = load i32, ptr %339, align 8
  %341 = icmp slt i32 %338, %340
  br i1 %341, label %342, label %344

342:                                              ; preds = %337
  %343 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %3, i32 0, i32 6
  br label %347

344:                                              ; preds = %337
  %345 = tail call i32 @ubifs_calc_dark(ptr noundef %0, i32 noundef %338)
  %346 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %3, i32 0, i32 7
  br label %347

347:                                              ; preds = %344, %342
  %348 = phi ptr [ %343, %342 ], [ %346, %344 ]
  %349 = phi i32 [ %338, %342 ], [ %345, %344 ]
  %350 = sext i32 %349 to i64
  %351 = load i64, ptr %348, align 8
  %352 = add i64 %351, %350
  store i64 %352, ptr %348, align 8
  br label %353

353:                                              ; preds = %347, %325
  tail call void @ubifs_scan_destroy(ptr noundef %170) #8
  tail call void @vfree(ptr noundef nonnull %167) #8
  br label %366

354:                                              ; preds = %296, %294
  %355 = phi ptr [ @.str.59, %294 ], [ @.str.60, %296 ]
  %356 = phi i32 [ %252, %294 ], [ %297, %296 ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull %355) #8
  br label %357

357:                                              ; preds = %354, %282
  %358 = phi i32 [ %285, %282 ], [ %356, %354 ]
  %359 = phi i32 [ %284, %282 ], [ %253, %354 ]
  %360 = load i32, ptr %1, align 4
  %361 = load i32, ptr %132, align 4
  %362 = load i32, ptr %7, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.61, i32 noundef %6, i32 noundef %360, i32 noundef %361, i32 noundef %362, i32 noundef %358, i32 noundef %359) #8
  tail call void @ubifs_dump_leb(ptr noundef %0, i32 noundef %6) #8
  br label %363

363:                                              ; preds = %357, %250, %223, %199
  tail call void @ubifs_scan_destroy(ptr noundef %170) #8
  br label %364

364:                                              ; preds = %363, %175, %172
  %365 = phi i32 [ -117, %175 ], [ %173, %172 ], [ -22, %363 ]
  tail call void @vfree(ptr noundef nonnull %167) #8
  br label %366

366:                                              ; preds = %364, %353, %166, %153, %118, %100, %77, %53
  %367 = phi i32 [ -22, %53 ], [ 0, %118 ], [ %365, %364 ], [ 0, %353 ], [ 0, %153 ], [ -22, %77 ], [ -22, %100 ], [ -12, %166 ]
  ret i32 %367
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @adjust_lpt_heap(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #6 {
  switch i32 %3, label %12 [
    i32 3, label %5
    i32 2, label %7
  ]

5:                                                ; preds = %4
  %6 = load i32, ptr %1, align 4
  br label %15

7:                                                ; preds = %4
  %8 = load i32, ptr %1, align 4
  %9 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %8
  br label %15

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %7, %5
  %16 = phi i32 [ %14, %12 ], [ %11, %7 ], [ %6, %5 ]
  %17 = icmp eq i32 %2, 0
  br i1 %17, label %70, label %18

18:                                               ; preds = %15
  %19 = add i32 %2, -1
  %20 = sdiv i32 %19, 2
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr ptr, ptr %21, i32 %20
  %23 = load ptr, ptr %22, align 4
  switch i32 %3, label %31 [
    i32 3, label %24
    i32 2, label %26
  ]

24:                                               ; preds = %18
  %25 = load i32, ptr %23, align 4
  br label %34

26:                                               ; preds = %18
  %27 = load i32, ptr %23, align 4
  %28 = getelementptr inbounds %struct.ubifs_lprops, ptr %23, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, %27
  br label %34

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.ubifs_lprops, ptr %23, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %31, %26, %24
  %35 = phi i32 [ %33, %31 ], [ %30, %26 ], [ %25, %24 ]
  %36 = icmp sgt i32 %16, %35
  br i1 %36, label %37, label %70

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 4
  br label %39

39:                                               ; preds = %67, %37
  %40 = phi ptr [ %56, %67 ], [ %23, %37 ]
  %41 = phi i32 [ %42, %67 ], [ %2, %37 ]
  %42 = phi i32 [ %53, %67 ], [ %20, %37 ]
  %43 = getelementptr inbounds %struct.ubifs_lprops, ptr %40, i32 0, i32 4
  store i32 %41, ptr %43, align 4
  %44 = load ptr, ptr %0, align 4
  %45 = getelementptr ptr, ptr %44, i32 %42
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr ptr, ptr %44, i32 %41
  store ptr %46, ptr %47, align 4
  %48 = load ptr, ptr %0, align 4
  %49 = getelementptr ptr, ptr %48, i32 %42
  store ptr %1, ptr %49, align 4
  store i32 %42, ptr %38, align 4
  %50 = icmp eq i32 %42, 0
  br i1 %50, label %160, label %51

51:                                               ; preds = %39
  %52 = add nsw i32 %42, -1
  %53 = sdiv i32 %52, 2
  %54 = load ptr, ptr %0, align 4
  %55 = getelementptr ptr, ptr %54, i32 %53
  %56 = load ptr, ptr %55, align 4
  switch i32 %3, label %64 [
    i32 3, label %57
    i32 2, label %59
  ]

57:                                               ; preds = %51
  %58 = load i32, ptr %56, align 4
  br label %67

59:                                               ; preds = %51
  %60 = load i32, ptr %56, align 4
  %61 = getelementptr inbounds %struct.ubifs_lprops, ptr %56, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, %60
  br label %67

64:                                               ; preds = %51
  %65 = getelementptr inbounds %struct.ubifs_lprops, ptr %56, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  br label %67

67:                                               ; preds = %64, %59, %57
  %68 = phi i32 [ %66, %64 ], [ %63, %59 ], [ %58, %57 ]
  %69 = icmp sgt i32 %16, %68
  br i1 %69, label %39, label %160

70:                                               ; preds = %34, %15
  %71 = getelementptr inbounds %struct.ubifs_lpt_heap, ptr %0, i32 0, i32 1
  %72 = shl i32 %2, 1
  %73 = or i32 %72, 1
  %74 = load i32, ptr %71, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %160

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 4
  br label %78

78:                                               ; preds = %127, %76
  %79 = phi i32 [ %74, %76 ], [ %137, %127 ]
  %80 = phi i32 [ %73, %76 ], [ %136, %127 ]
  %81 = phi i32 [ %72, %76 ], [ %135, %127 ]
  %82 = phi i32 [ %2, %76 ], [ %130, %127 ]
  %83 = load ptr, ptr %0, align 4
  %84 = getelementptr ptr, ptr %83, i32 %80
  %85 = load ptr, ptr %84, align 4
  switch i32 %3, label %93 [
    i32 3, label %86
    i32 2, label %88
  ]

86:                                               ; preds = %78
  %87 = load i32, ptr %85, align 4
  br label %96

88:                                               ; preds = %78
  %89 = load i32, ptr %85, align 4
  %90 = getelementptr inbounds %struct.ubifs_lprops, ptr %85, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = add i32 %91, %89
  br label %96

93:                                               ; preds = %78
  %94 = getelementptr inbounds %struct.ubifs_lprops, ptr %85, i32 0, i32 1
  %95 = load i32, ptr %94, align 4
  br label %96

96:                                               ; preds = %93, %88, %86
  %97 = phi i32 [ %95, %93 ], [ %92, %88 ], [ %87, %86 ]
  %98 = icmp slt i32 %16, %97
  %99 = add i32 %81, 2
  %100 = icmp slt i32 %99, %79
  br i1 %98, label %101, label %139

101:                                              ; preds = %96
  br i1 %100, label %102, label %121

102:                                              ; preds = %101
  %103 = getelementptr ptr, ptr %83, i32 %99
  %104 = load ptr, ptr %103, align 4
  switch i32 %3, label %112 [
    i32 3, label %105
    i32 2, label %107
  ]

105:                                              ; preds = %102
  %106 = load i32, ptr %104, align 4
  br label %115

107:                                              ; preds = %102
  %108 = load i32, ptr %104, align 4
  %109 = getelementptr inbounds %struct.ubifs_lprops, ptr %104, i32 0, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = add i32 %110, %108
  br label %115

112:                                              ; preds = %102
  %113 = getelementptr inbounds %struct.ubifs_lprops, ptr %104, i32 0, i32 1
  %114 = load i32, ptr %113, align 4
  br label %115

115:                                              ; preds = %112, %107, %105
  %116 = phi i32 [ %114, %112 ], [ %111, %107 ], [ %106, %105 ]
  %117 = icmp sgt i32 %116, %97
  %118 = select i1 %117, i32 %99, i32 %80
  %119 = getelementptr ptr, ptr %83, i32 %118
  %120 = load ptr, ptr %119, align 4
  br label %121

121:                                              ; preds = %115, %101
  %122 = phi ptr [ %85, %101 ], [ %120, %115 ]
  %123 = phi i32 [ %80, %101 ], [ %118, %115 ]
  %124 = getelementptr inbounds %struct.ubifs_lprops, ptr %122, i32 0, i32 4
  store i32 %82, ptr %124, align 4
  %125 = load ptr, ptr %0, align 4
  %126 = getelementptr ptr, ptr %125, i32 %123
  br label %127

127:                                              ; preds = %156, %121
  %128 = phi ptr [ %126, %121 ], [ %159, %156 ]
  %129 = phi ptr [ %125, %121 ], [ %158, %156 ]
  %130 = phi i32 [ %123, %121 ], [ %99, %156 ]
  %131 = load ptr, ptr %128, align 4
  %132 = getelementptr ptr, ptr %129, i32 %82
  store ptr %131, ptr %132, align 4
  %133 = load ptr, ptr %0, align 4
  %134 = getelementptr ptr, ptr %133, i32 %130
  store ptr %1, ptr %134, align 4
  store i32 %130, ptr %77, align 4
  %135 = shl i32 %130, 1
  %136 = or i32 %135, 1
  %137 = load i32, ptr %71, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %78, label %160

139:                                              ; preds = %96
  br i1 %100, label %140, label %160

140:                                              ; preds = %139
  %141 = getelementptr ptr, ptr %83, i32 %99
  %142 = load ptr, ptr %141, align 4
  switch i32 %3, label %150 [
    i32 3, label %143
    i32 2, label %145
  ]

143:                                              ; preds = %140
  %144 = load i32, ptr %142, align 4
  br label %153

145:                                              ; preds = %140
  %146 = load i32, ptr %142, align 4
  %147 = getelementptr inbounds %struct.ubifs_lprops, ptr %142, i32 0, i32 1
  %148 = load i32, ptr %147, align 4
  %149 = add i32 %148, %146
  br label %153

150:                                              ; preds = %140
  %151 = getelementptr inbounds %struct.ubifs_lprops, ptr %142, i32 0, i32 1
  %152 = load i32, ptr %151, align 4
  br label %153

153:                                              ; preds = %150, %145, %143
  %154 = phi i32 [ %152, %150 ], [ %149, %145 ], [ %144, %143 ]
  %155 = icmp slt i32 %16, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.ubifs_lprops, ptr %142, i32 0, i32 4
  store i32 %82, ptr %157, align 4
  %158 = load ptr, ptr %0, align 4
  %159 = getelementptr ptr, ptr %158, i32 %99
  br label %127

160:                                              ; preds = %153, %139, %127, %70, %67, %39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_wbuf_sync_nolock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_scan(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_lprops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_budg(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_has_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_scan_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_leb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

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
!10 = !{i64 2149109040}
!11 = !{i64 2149104864}
!12 = !{i64 2149104939, i64 2149104966, i64 2149105013, i64 2149105035, i64 2149105063, i64 2149105083}
!13 = !{i64 2149132043}
