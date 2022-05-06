; ModuleID = '/llk/IR/fs/ubifs/tnc_misc.c_pt.bc'
source_filename = "../fs/ubifs/tnc_misc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.ubifs_znode = type { ptr, ptr, ptr, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, [0 x %struct.ubifs_zbranch] }
%struct.ubifs_zbranch = type { %union.ubifs_key, %union.anon, i32, i32, i32, [0 x i8] }
%union.ubifs_key = type { [1 x i64] }
%union.anon = type { ptr }
%struct.ubifs_info = type { ptr, ptr, i32, i64, i64, %struct.spinlock, i32, i32, [16 x i8], i32, i32, i32, %struct.mutex, i32, i64, %struct.rb_root, i64, %struct.spinlock, i32, ptr, i64, i64, %struct.list_head, i32, %struct.rw_semaphore, i32, %struct.spinlock, %struct.wait_queue_head, %struct.kobject, %struct.completion, i16, %struct.mutex, %struct.ubifs_zbranch, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.rb_root, ptr, ptr, i32, i32, %struct.mutex, %struct.bu_info, %struct.mutex, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, [14 x %struct.ubifs_node_range], ptr, %struct.ubi_device_info, %struct.ubi_volume_info, %struct.rb_root, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, [24 x i8], i32, i32, i32, ptr, %struct.list_head, i32, i32, i32, %struct.list_head, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [3 x %struct.ubifs_lpt_heap], %struct.ubifs_lpt_heap, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i64, i64, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, ptr, ptr, i32, ptr, i8, %struct.list_head, %struct.list_head, i64, %struct.list_head, ptr, %struct.rb_root, %struct.ubifs_mount_opts, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
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
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ubifs_lpt_heap = type { ptr, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.ubifs_mount_opts = type { i16, [2 x i8] }
%struct.ubifs_idx_node = type <{ %struct.ubifs_ch, i16, i16, [0 x i8] }>
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.ubifs_branch = type { i32, i32, i32, [0 x i8] }

@.str = private unnamed_addr constant [3 x i8] c"zr\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"fs/ubifs/tnc_misc.c\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"znode->level <= zr->level\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"znode\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"zn->level >= 0\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"end > beg\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"*n >= -1 && *n < znode->child_cnt\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"keys_cmp(c, key, &zbr[0].key) < 0\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"keys_cmp(c, key, &zbr[*n].key) > 0\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"keys_cmp(c, key, &zbr[*n + 1].key) < 0\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"zn\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"!zbr->znode\00", align 1
@ubifs_clean_zn_cnt = external dso_local global %struct.atomic_t, align 4
@.str.12 = private unnamed_addr constant [29 x i8] c"bad key in node at LEB %d:%d\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"current fanout %d, branch count %d\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"max levels %d, znode level %d\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"bad branch %d\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"bad key type at slot %d: %d\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"bad target node (type %d) length (%d)\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"have to be %d\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"have to be in range of %d-%d\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"bad key order (keys %d and %d)\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"keys %d and %d are not hashed but equivalent\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"bad indexing node at LEB %d:%d, error %d\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ubifs_tnc_levelorder_next(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %3
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 36) #4
  br label %6

6:                                                ; preds = %5, %3
  %7 = icmp eq ptr %2, null
  br i1 %7, label %131, label %8, !prof !8

8:                                                ; preds = %6
  %9 = icmp eq ptr %2, %1
  br i1 %9, label %10, label %26, !prof !8

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.ubifs_znode, ptr %1, i32 0, i32 6
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %131, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ubifs_znode, ptr %1, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %21, label %131

18:                                               ; preds = %21
  %19 = add nuw nsw i32 %22, 1
  %20 = icmp eq i32 %19, %16
  br i1 %20, label %131, label %21

21:                                               ; preds = %18, %14
  %22 = phi i32 [ %19, %18 ], [ 0, %14 ]
  %23 = getelementptr %struct.ubifs_znode, ptr %1, i32 0, i32 13, i32 %22, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %18, label %131

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct.ubifs_znode, ptr %2, i32 0, i32 6
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr inbounds %struct.ubifs_znode, ptr %2, i32 0, i32 8
  %30 = load i32, ptr %29, align 8
  %31 = getelementptr inbounds %struct.ubifs_znode, ptr %1, i32 0, i32 6
  %32 = getelementptr inbounds %struct.ubifs_znode, ptr %1, i32 0, i32 7
  br label %33

33:                                               ; preds = %102, %26
  %34 = phi i32 [ %28, %26 ], [ %106, %102 ]
  %35 = phi ptr [ %2, %26 ], [ %103, %102 ]
  %36 = phi i32 [ %28, %26 ], [ %82, %102 ]
  %37 = phi i32 [ %30, %26 ], [ %104, %102 ]
  %38 = phi i32 [ 0, %26 ], [ %84, %102 ]
  %39 = load i32, ptr %31, align 8
  %40 = icmp sgt i32 %34, %39
  br i1 %40, label %41, label %42, !prof !8

41:                                               ; preds = %33
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 51) #4
  br label %42

42:                                               ; preds = %41, %33
  %43 = load ptr, ptr %35, align 8
  %44 = icmp eq ptr %43, %1
  br i1 %44, label %59, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.ubifs_znode, ptr %43, i32 0, i32 7
  %47 = load i32, ptr %46, align 4
  %48 = icmp slt i32 %37, %47
  br i1 %48, label %80, label %53

49:                                               ; preds = %53
  %50 = getelementptr inbounds %struct.ubifs_znode, ptr %57, i32 0, i32 7
  %51 = load i32, ptr %50, align 4
  %52 = icmp slt i32 %56, %51
  br i1 %52, label %80, label %53

53:                                               ; preds = %49, %45
  %54 = phi ptr [ %57, %49 ], [ %43, %45 ]
  %55 = getelementptr inbounds %struct.ubifs_znode, ptr %54, i32 0, i32 8
  %56 = load i32, ptr %55, align 8
  %57 = load ptr, ptr %54, align 8
  %58 = icmp eq ptr %57, %1
  br i1 %58, label %59, label %49

59:                                               ; preds = %53, %42
  %60 = phi ptr [ %35, %42 ], [ %54, %53 ]
  %61 = phi i32 [ %37, %42 ], [ %56, %53 ]
  %62 = load i32, ptr %32, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %80, label %64, !prof !9

64:                                               ; preds = %59
  %65 = add i32 %36, -1
  %66 = icmp ne i32 %38, 0
  %67 = icmp slt i32 %65, 0
  %68 = select i1 %66, i1 true, i1 %67
  br i1 %68, label %131, label %69

69:                                               ; preds = %64
  %70 = icmp sgt i32 %62, 0
  br i1 %70, label %74, label %79

71:                                               ; preds = %74
  %72 = add nuw nsw i32 %75, 1
  %73 = icmp eq i32 %72, %62
  br i1 %73, label %79, label %74

74:                                               ; preds = %71, %69
  %75 = phi i32 [ %72, %71 ], [ 0, %69 ]
  %76 = getelementptr %struct.ubifs_znode, ptr %1, i32 0, i32 13, i32 %75, i32 1
  %77 = load ptr, ptr %76, align 8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %71, label %80

79:                                               ; preds = %71, %69
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 78) #4
  br label %80

80:                                               ; preds = %79, %74, %59, %49, %45
  %81 = phi ptr [ null, %79 ], [ %60, %59 ], [ %35, %45 ], [ %77, %74 ], [ %54, %49 ]
  %82 = phi i32 [ %65, %79 ], [ %36, %59 ], [ %36, %45 ], [ %65, %74 ], [ %36, %49 ]
  %83 = phi i32 [ -1, %79 ], [ %61, %59 ], [ %37, %45 ], [ -1, %74 ], [ %56, %49 ]
  %84 = phi i32 [ 1, %79 ], [ %38, %59 ], [ %38, %45 ], [ 1, %74 ], [ %38, %49 ]
  %85 = load ptr, ptr %81, align 8
  %86 = add nsw i32 %83, 1
  %87 = getelementptr inbounds %struct.ubifs_znode, ptr %85, i32 0, i32 7
  %88 = load i32, ptr %87, align 4
  %89 = icmp sgt i32 %88, %86
  br i1 %89, label %93, label %102

90:                                               ; preds = %93
  %91 = add i32 %94, 1
  %92 = icmp eq i32 %91, %88
  br i1 %92, label %102, label %93

93:                                               ; preds = %90, %80
  %94 = phi i32 [ %91, %90 ], [ %86, %80 ]
  %95 = getelementptr %struct.ubifs_znode, ptr %85, i32 0, i32 13, i32 %94, i32 1
  %96 = load ptr, ptr %95, align 8
  %97 = icmp eq ptr %96, null
  br i1 %97, label %90, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.ubifs_znode, ptr %96, i32 0, i32 6
  %100 = load i32, ptr %99, align 8
  %101 = icmp eq i32 %100, %82
  br i1 %101, label %127, label %111

102:                                              ; preds = %124, %90, %80
  %103 = phi ptr [ %112, %124 ], [ %81, %80 ], [ %81, %90 ]
  %104 = phi i32 [ %126, %124 ], [ %88, %80 ], [ %88, %90 ]
  %105 = getelementptr inbounds %struct.ubifs_znode, ptr %103, i32 0, i32 6
  %106 = load i32, ptr %105, align 8
  br label %33

107:                                              ; preds = %119
  %108 = getelementptr inbounds %struct.ubifs_znode, ptr %122, i32 0, i32 6
  %109 = load i32, ptr %108, align 8
  %110 = icmp eq i32 %109, %82
  br i1 %110, label %127, label %111

111:                                              ; preds = %107, %98
  %112 = phi ptr [ %122, %107 ], [ %96, %98 ]
  %113 = getelementptr inbounds %struct.ubifs_znode, ptr %112, i32 0, i32 7
  %114 = load i32, ptr %113, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %119, label %124

116:                                              ; preds = %119
  %117 = add nuw nsw i32 %120, 1
  %118 = icmp eq i32 %117, %114
  br i1 %118, label %124, label %119

119:                                              ; preds = %116, %111
  %120 = phi i32 [ %117, %116 ], [ 0, %111 ]
  %121 = getelementptr %struct.ubifs_znode, ptr %112, i32 0, i32 13, i32 %120, i32 1
  %122 = load ptr, ptr %121, align 8
  %123 = icmp eq ptr %122, null
  br i1 %123, label %116, label %107

124:                                              ; preds = %116, %111
  %125 = getelementptr inbounds %struct.ubifs_znode, ptr %112, i32 0, i32 8
  %126 = load i32, ptr %125, align 8
  br label %102

127:                                              ; preds = %107, %98
  %128 = phi ptr [ %122, %107 ], [ %96, %98 ]
  %129 = icmp slt i32 %82, 0
  br i1 %129, label %130, label %131, !prof !8

130:                                              ; preds = %127
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 104) #4
  br label %131

131:                                              ; preds = %130, %127, %64, %21, %18, %14, %10, %6
  %132 = phi ptr [ %1, %6 ], [ null, %10 ], [ %128, %130 ], [ %128, %127 ], [ null, %14 ], [ %24, %21 ], [ null, %18 ], [ null, %64 ]
  ret ptr %132
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_search_zbranch(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ubifs_znode, ptr %1, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ubifs_znode, ptr %1, i32 0, i32 13
  %8 = icmp slt i32 %6, 1
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %4
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 133) #4
  br label %37

10:                                               ; preds = %4
  %11 = load i32, ptr %2, align 8
  %12 = getelementptr [2 x i32], ptr %2, i32 0, i32 1
  br label %13

13:                                               ; preds = %33, %10
  %14 = phi i32 [ %6, %10 ], [ %35, %33 ]
  %15 = phi i32 [ 0, %10 ], [ %34, %33 ]
  %16 = add i32 %14, %15
  %17 = ashr i32 %16, 1
  %18 = getelementptr %struct.ubifs_zbranch, ptr %7, i32 %17
  %19 = load i32, ptr %18, align 8
  %20 = icmp ult i32 %11, %19
  br i1 %20, label %33, label %21

21:                                               ; preds = %13
  %22 = icmp ugt i32 %11, %19
  br i1 %22, label %30, label %23

23:                                               ; preds = %21
  %24 = load i32, ptr %12, align 4
  %25 = getelementptr [2 x i32], ptr %18, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = icmp ugt i32 %24, %26
  br i1 %29, label %30, label %32

30:                                               ; preds = %28, %21
  %31 = add nsw i32 %17, 1
  br label %33

32:                                               ; preds = %28
  store i32 %17, ptr %3, align 4
  br label %95

33:                                               ; preds = %30, %23, %13
  %34 = phi i32 [ %31, %30 ], [ %15, %23 ], [ %15, %13 ]
  %35 = phi i32 [ %14, %30 ], [ %17, %23 ], [ %17, %13 ]
  %36 = icmp sgt i32 %35, %34
  br i1 %36, label %13, label %37

37:                                               ; preds = %33, %9
  %38 = phi i32 [ %6, %9 ], [ %35, %33 ]
  %39 = add i32 %38, -1
  store i32 %39, ptr %3, align 4
  %40 = icmp ult i32 %38, -2147483647
  br i1 %40, label %41, label %44, !prof !9

41:                                               ; preds = %37
  %42 = load i32, ptr %5, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %46, label %44, !prof !9

44:                                               ; preds = %41, %37
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 151) #4
  %45 = load i32, ptr %3, align 4
  br label %46

46:                                               ; preds = %44, %41
  %47 = phi i32 [ %45, %44 ], [ %39, %41 ]
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = load i32, ptr %2, align 8
  %51 = load i32, ptr %7, align 8
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %76, label %53

53:                                               ; preds = %49
  %54 = icmp ugt i32 %50, %51
  br i1 %54, label %61, label %55

55:                                               ; preds = %53
  %56 = getelementptr [2 x i32], ptr %2, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr %struct.ubifs_znode, ptr %1, i32 1, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = icmp ult i32 %57, %59
  br i1 %60, label %76, label %61

61:                                               ; preds = %55, %53
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 153) #4
  br label %76

62:                                               ; preds = %46
  %63 = getelementptr %struct.ubifs_zbranch, ptr %7, i32 %47
  %64 = load i32, ptr %2, align 8
  %65 = load i32, ptr %63, align 8
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %75, label %67

67:                                               ; preds = %62
  %68 = icmp ugt i32 %64, %65
  br i1 %68, label %76, label %69

69:                                               ; preds = %67
  %70 = getelementptr [2 x i32], ptr %2, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr [2 x i32], ptr %63, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = icmp ugt i32 %71, %73
  br i1 %74, label %76, label %75, !prof !10

75:                                               ; preds = %69, %62
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 155) #4
  br label %76

76:                                               ; preds = %75, %69, %67, %61, %55, %49
  %77 = load i32, ptr %3, align 4
  %78 = add i32 %77, 1
  %79 = load i32, ptr %5, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %76
  %82 = getelementptr %struct.ubifs_zbranch, ptr %7, i32 %78
  %83 = load i32, ptr %2, align 8
  %84 = load i32, ptr %82, align 8
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %95, label %86

86:                                               ; preds = %81
  %87 = icmp ugt i32 %83, %84
  br i1 %87, label %94, label %88

88:                                               ; preds = %86
  %89 = getelementptr [2 x i32], ptr %2, i32 0, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr [2 x i32], ptr %82, i32 0, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = icmp ult i32 %90, %92
  br i1 %93, label %95, label %94

94:                                               ; preds = %88, %86
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 157) #4
  br label %95

95:                                               ; preds = %94, %88, %81, %76, %32
  %96 = phi i32 [ 1, %32 ], [ 0, %94 ], [ 0, %76 ], [ 0, %81 ], [ 0, %88 ]
  ret i32 %96
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @ubifs_tnc_postorder_first(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %24, label %3, !prof !8

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ubifs_znode, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %11, label %24

7:                                                ; preds = %19
  %8 = getelementptr inbounds %struct.ubifs_znode, ptr %22, i32 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %7, %3
  %12 = phi ptr [ %22, %7 ], [ %0, %3 ]
  %13 = getelementptr inbounds %struct.ubifs_znode, ptr %12, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %19, label %24

16:                                               ; preds = %19
  %17 = add nuw nsw i32 %20, 1
  %18 = icmp eq i32 %17, %14
  br i1 %18, label %24, label %19

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %17, %16 ], [ 0, %11 ]
  %21 = getelementptr %struct.ubifs_znode, ptr %12, i32 0, i32 13, i32 %20, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %16, label %7

24:                                               ; preds = %16, %11, %7, %3, %1
  %25 = phi ptr [ null, %1 ], [ %0, %3 ], [ %12, %16 ], [ %22, %7 ], [ %12, %11 ]
  ret ptr %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ubifs_tnc_postorder_next(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5, !prof !8

4:                                                ; preds = %2
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 199) #4
  br label %5

5:                                                ; preds = %4, %2
  %6 = load ptr, ptr %1, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %44, label %8, !prof !8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ubifs_znode, ptr %1, i32 0, i32 8
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %10, 1
  %12 = getelementptr inbounds %struct.ubifs_znode, ptr %6, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, %11
  br i1 %14, label %18, label %44

15:                                               ; preds = %18
  %16 = add i32 %19, 1
  %17 = icmp eq i32 %16, %13
  br i1 %17, label %44, label %18

18:                                               ; preds = %15, %8
  %19 = phi i32 [ %16, %15 ], [ %11, %8 ]
  %20 = getelementptr %struct.ubifs_znode, ptr %6, i32 0, i32 13, i32 %19, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %15, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ubifs_znode, ptr %21, i32 0, i32 6
  %25 = load i32, ptr %24, align 8
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %31, label %44

27:                                               ; preds = %39
  %28 = getelementptr inbounds %struct.ubifs_znode, ptr %42, i32 0, i32 6
  %29 = load i32, ptr %28, align 8
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %27, %23
  %32 = phi ptr [ %42, %27 ], [ %21, %23 ]
  %33 = getelementptr inbounds %struct.ubifs_znode, ptr %32, i32 0, i32 7
  %34 = load i32, ptr %33, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %39, label %44

36:                                               ; preds = %39
  %37 = add nuw nsw i32 %40, 1
  %38 = icmp eq i32 %37, %34
  br i1 %38, label %44, label %39

39:                                               ; preds = %36, %31
  %40 = phi i32 [ %37, %36 ], [ 0, %31 ]
  %41 = getelementptr %struct.ubifs_znode, ptr %32, i32 0, i32 13, i32 %40, i32 1
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %36, label %27

44:                                               ; preds = %36, %31, %27, %23, %15, %8, %5
  %45 = phi ptr [ null, %5 ], [ %6, %8 ], [ %21, %23 ], [ %32, %36 ], [ %32, %31 ], [ %42, %27 ], [ %6, %15 ]
  ret ptr %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_destroy_tnc_subtree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %25, label %4, !prof !8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ubifs_znode, ptr %1, i32 0, i32 6
  %6 = load i32, ptr %5, align 8
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %12, label %26

8:                                                ; preds = %20
  %9 = getelementptr inbounds %struct.ubifs_znode, ptr %23, i32 0, i32 6
  %10 = load i32, ptr %9, align 8
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %8, %4
  %13 = phi ptr [ %23, %8 ], [ %1, %4 ]
  %14 = getelementptr inbounds %struct.ubifs_znode, ptr %13, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %20, label %26

17:                                               ; preds = %20
  %18 = add nuw nsw i32 %21, 1
  %19 = icmp eq i32 %18, %15
  br i1 %19, label %26, label %20

20:                                               ; preds = %17, %12
  %21 = phi i32 [ %18, %17 ], [ 0, %12 ]
  %22 = getelementptr %struct.ubifs_znode, ptr %13, i32 0, i32 13, i32 %21, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %17, label %8

25:                                               ; preds = %2
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 228) #4
  br label %26

26:                                               ; preds = %25, %17, %12, %8, %4
  %27 = phi ptr [ null, %25 ], [ %1, %4 ], [ %13, %17 ], [ %13, %12 ], [ %23, %8 ]
  br label %28

28:                                               ; preds = %77, %26
  %29 = phi i32 [ 0, %26 ], [ %63, %77 ]
  %30 = phi ptr [ %27, %26 ], [ %78, %77 ]
  %31 = getelementptr inbounds %struct.ubifs_znode, ptr %30, i32 0, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %62

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.ubifs_znode, ptr %30, i32 0, i32 6
  br label %36

36:                                               ; preds = %57, %34
  %37 = phi i32 [ %32, %34 ], [ %58, %57 ]
  %38 = phi i32 [ 0, %34 ], [ %60, %57 ]
  %39 = phi i32 [ %29, %34 ], [ %59, %57 ]
  %40 = getelementptr %struct.ubifs_znode, ptr %30, i32 0, i32 13, i32 %38, i32 1
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %57, label %43

43:                                               ; preds = %36
  %44 = load i32, ptr %35, align 8
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.ubifs_znode, ptr %41, i32 0, i32 4
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %48, 1
  %50 = xor i32 %49, 1
  %51 = add i32 %50, %39
  br label %52

52:                                               ; preds = %46, %43
  %53 = phi i32 [ %39, %43 ], [ %51, %46 ]
  %54 = tail call i32 @__cond_resched() #4
  %55 = load ptr, ptr %40, align 8
  tail call void @kfree(ptr noundef %55) #4
  %56 = load i32, ptr %31, align 4
  br label %57

57:                                               ; preds = %52, %36
  %58 = phi i32 [ %56, %52 ], [ %37, %36 ]
  %59 = phi i32 [ %53, %52 ], [ %39, %36 ]
  %60 = add nuw nsw i32 %38, 1
  %61 = icmp slt i32 %60, %58
  br i1 %61, label %36, label %62

62:                                               ; preds = %57, %28
  %63 = phi i32 [ %29, %28 ], [ %59, %57 ]
  %64 = icmp eq ptr %30, %1
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.ubifs_znode, ptr %1, i32 0, i32 4
  %67 = load volatile i32, ptr %66, align 4
  %68 = and i32 %67, 1
  %69 = xor i32 %68, 1
  %70 = add i32 %69, %63
  tail call void @kfree(ptr noundef %1) #4
  ret i32 %70

71:                                               ; preds = %62
  %72 = icmp eq ptr %30, null
  br i1 %72, label %73, label %74, !prof !8

73:                                               ; preds = %71
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 199) #4
  br label %74

74:                                               ; preds = %73, %71
  %75 = load ptr, ptr %30, align 8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %79, !prof !8

77:                                               ; preds = %107, %102, %98, %94, %86, %79, %74
  %78 = phi ptr [ null, %74 ], [ %75, %79 ], [ %92, %94 ], [ %103, %107 ], [ %103, %102 ], [ %113, %98 ], [ %75, %86 ]
  br label %28

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.ubifs_znode, ptr %30, i32 0, i32 8
  %81 = load i32, ptr %80, align 8
  %82 = add i32 %81, 1
  %83 = getelementptr inbounds %struct.ubifs_znode, ptr %75, i32 0, i32 7
  %84 = load i32, ptr %83, align 4
  %85 = icmp sgt i32 %84, %82
  br i1 %85, label %89, label %77

86:                                               ; preds = %89
  %87 = add i32 %90, 1
  %88 = icmp eq i32 %87, %84
  br i1 %88, label %77, label %89

89:                                               ; preds = %86, %79
  %90 = phi i32 [ %87, %86 ], [ %82, %79 ]
  %91 = getelementptr %struct.ubifs_znode, ptr %75, i32 0, i32 13, i32 %90, i32 1
  %92 = load ptr, ptr %91, align 8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %86, label %94

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.ubifs_znode, ptr %92, i32 0, i32 6
  %96 = load i32, ptr %95, align 8
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %102, label %77

98:                                               ; preds = %110
  %99 = getelementptr inbounds %struct.ubifs_znode, ptr %113, i32 0, i32 6
  %100 = load i32, ptr %99, align 8
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %77

102:                                              ; preds = %98, %94
  %103 = phi ptr [ %113, %98 ], [ %92, %94 ]
  %104 = getelementptr inbounds %struct.ubifs_znode, ptr %103, i32 0, i32 7
  %105 = load i32, ptr %104, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %110, label %77

107:                                              ; preds = %110
  %108 = add nuw nsw i32 %111, 1
  %109 = icmp eq i32 %108, %105
  br i1 %109, label %77, label %110

110:                                              ; preds = %107, %102
  %111 = phi i32 [ %108, %107 ], [ 0, %102 ]
  %112 = getelementptr %struct.ubifs_znode, ptr %103, i32 0, i32 13, i32 %111, i32 1
  %113 = load ptr, ptr %112, align 8
  %114 = icmp eq ptr %113, null
  br i1 %114, label %107, label %98
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ubifs_load_znode(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !9

8:                                                ; preds = %4
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 416) #4
  br label %9

9:                                                ; preds = %8, %4
  %10 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 94
  %11 = load i32, ptr %10, align 8
  %12 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %11, i32 noundef 3392) #5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %165, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 3
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 92
  %22 = load i32, ptr %21, align 4
  %23 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %22, i32 noundef 3136) #5
  %24 = icmp eq ptr %23, null
  br i1 %24, label %162, label %25

25:                                               ; preds = %14
  %26 = tail call i32 @ubifs_read_node(ptr noundef %0, ptr noundef nonnull %23, i32 noundef 9, i32 noundef %20, i32 noundef %16, i32 noundef %18) #4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %153, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.ubifs_idx_node, ptr %23, i32 0, i32 1
  %30 = load i16, ptr %29, align 8
  %31 = zext i16 %30 to i32
  %32 = getelementptr inbounds %struct.ubifs_znode, ptr %12, i32 0, i32 7
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.ubifs_idx_node, ptr %23, i32 0, i32 2
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i32
  %36 = getelementptr inbounds %struct.ubifs_znode, ptr %12, i32 0, i32 6
  store i32 %35, ptr %36, align 32
  %37 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 70
  %38 = load i32, ptr %37, align 4
  %39 = icmp slt i32 %38, %31
  %40 = icmp ugt i16 %34, 512
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %56, label %42

42:                                               ; preds = %28
  %43 = icmp eq i16 %30, 0
  br i1 %43, label %155, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.ubifs_idx_node, ptr %23, i32 0, i32 3
  %46 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 68
  %47 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 69
  %48 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 63
  %49 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 79
  %50 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %51 = load i32, ptr %46, align 4
  %52 = add i32 %51, 12
  %53 = load i32, ptr %47, align 8
  %54 = add i32 %52, %53
  %55 = load i32, ptr %48, align 8
  br label %64

56:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %38, i32 noundef %31) #4
  %57 = load i32, ptr %36, align 32
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef 512, i32 noundef %57) #4
  br label %150

58:                                               ; preds = %121
  %59 = add i32 %123, -1
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %155

61:                                               ; preds = %58
  %62 = getelementptr %struct.ubifs_znode, ptr %12, i32 0, i32 13, i32 0
  %63 = load i32, ptr %62, align 64
  br label %125

64:                                               ; preds = %121, %44
  %65 = phi i32 [ 0, %44 ], [ %122, %121 ]
  %66 = mul i32 %54, %65
  %67 = getelementptr i8, ptr %45, i32 %66
  %68 = getelementptr %struct.ubifs_znode, ptr %12, i32 0, i32 13, i32 %65
  %69 = getelementptr inbounds %struct.ubifs_branch, ptr %67, i32 0, i32 3
  %70 = load i32, ptr %69, align 8
  store i32 %70, ptr %68, align 8
  %71 = getelementptr [2 x i32], ptr %69, i32 0, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr [2 x i32], ptr %68, i32 0, i32 1
  store i32 %72, ptr %73, align 4
  %74 = load i32, ptr %67, align 1
  %75 = getelementptr %struct.ubifs_znode, ptr %12, i32 0, i32 13, i32 %65, i32 2
  store i32 %74, ptr %75, align 4
  %76 = getelementptr inbounds %struct.ubifs_branch, ptr %67, i32 0, i32 1
  %77 = load i32, ptr %76, align 1
  %78 = getelementptr %struct.ubifs_znode, ptr %12, i32 0, i32 13, i32 %65, i32 3
  store i32 %77, ptr %78, align 8
  %79 = getelementptr inbounds %struct.ubifs_branch, ptr %67, i32 0, i32 2
  %80 = load i32, ptr %79, align 1
  %81 = getelementptr %struct.ubifs_znode, ptr %12, i32 0, i32 13, i32 %65, i32 4
  store i32 %80, ptr %81, align 4
  %82 = getelementptr %struct.ubifs_znode, ptr %12, i32 0, i32 13, i32 %65, i32 1
  store ptr null, ptr %82, align 8
  %83 = icmp slt i32 %74, %55
  br i1 %83, label %96, label %84

84:                                               ; preds = %64
  %85 = load i32, ptr %49, align 8
  %86 = icmp sge i32 %74, %85
  %87 = icmp slt i32 %77, 0
  %88 = select i1 %86, i1 true, i1 %87
  br i1 %88, label %96, label %89

89:                                               ; preds = %84
  %90 = add i32 %80, %77
  %91 = load i32, ptr %50, align 8
  %92 = icmp sle i32 %90, %91
  %93 = and i32 %77, 7
  %94 = icmp eq i32 %93, 0
  %95 = and i1 %94, %92
  br i1 %95, label %97, label %96

96:                                               ; preds = %89, %84, %64
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %65) #4
  br label %150

97:                                               ; preds = %89
  %98 = lshr i32 %72, 29
  %99 = icmp sgt i32 %72, -1
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %65, i32 noundef %98) #4
  br label %150

101:                                              ; preds = %97
  %102 = load i32, ptr %36, align 32
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %121

104:                                              ; preds = %101
  %105 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 99, i32 %98
  %106 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 99, i32 %98, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %107, 0
  %109 = load i32, ptr %105, align 4
  br i1 %108, label %110, label %114

110:                                              ; preds = %104
  %111 = icmp eq i32 %80, %109
  br i1 %111, label %121, label %112

112:                                              ; preds = %110
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %98, i32 noundef %80) #4
  %113 = load i32, ptr %105, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %113) #4
  br label %150

114:                                              ; preds = %104
  %115 = icmp slt i32 %80, %109
  %116 = icmp sgt i32 %80, %107
  %117 = select i1 %115, i1 true, i1 %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %98, i32 noundef %80) #4
  %119 = load i32, ptr %105, align 4
  %120 = load i32, ptr %106, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %119, i32 noundef %120) #4
  br label %150

121:                                              ; preds = %114, %110, %101
  %122 = add nuw nsw i32 %65, 1
  %123 = load i32, ptr %32, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %64, label %58

125:                                              ; preds = %148, %61
  %126 = phi i32 [ %131, %148 ], [ %63, %61 ]
  %127 = phi i32 [ %129, %148 ], [ 0, %61 ]
  %128 = getelementptr %struct.ubifs_znode, ptr %12, i32 0, i32 13, i32 %127
  %129 = add nuw nsw i32 %127, 1
  %130 = getelementptr %struct.ubifs_znode, ptr %12, i32 0, i32 13, i32 %129
  %131 = load i32, ptr %130, align 8
  %132 = icmp ult i32 %126, %131
  br i1 %132, label %148, label %133

133:                                              ; preds = %125
  %134 = icmp ugt i32 %126, %131
  br i1 %134, label %143, label %135

135:                                              ; preds = %133
  %136 = getelementptr [2 x i32], ptr %128, i32 0, i32 1
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr [2 x i32], ptr %130, i32 0, i32 1
  %139 = load i32, ptr %138, align 4
  %140 = icmp ult i32 %137, %139
  br i1 %140, label %148, label %141

141:                                              ; preds = %135
  %142 = icmp ugt i32 %137, %139
  br i1 %142, label %143, label %144

143:                                              ; preds = %141, %133
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %127, i32 noundef %129) #4
  br label %150

144:                                              ; preds = %141
  %145 = and i32 %137, -1073741824
  %146 = icmp eq i32 %145, 1073741824
  br i1 %146, label %148, label %147

147:                                              ; preds = %144
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %127, i32 noundef %129) #4
  br label %150

148:                                              ; preds = %144, %135, %125
  %149 = icmp eq i32 %129, %59
  br i1 %149, label %155, label %125

150:                                              ; preds = %147, %143, %118, %112, %100, %96, %56
  %151 = phi i32 [ 1, %56 ], [ 5, %118 ], [ 4, %112 ], [ 3, %100 ], [ 2, %96 ], [ 7, %147 ], [ 6, %143 ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %16, i32 noundef %18, i32 noundef %151) #4
  %152 = load i32, ptr %21, align 4
  tail call void @ubifs_dump_node(ptr noundef %0, ptr noundef nonnull %23, i32 noundef %152) #4
  br label %153

153:                                              ; preds = %150, %25
  %154 = phi i32 [ -22, %150 ], [ %26, %25 ]
  tail call void @kfree(ptr noundef nonnull %23) #4
  br label %162

155:                                              ; preds = %148, %58, %42
  tail call void @kfree(ptr noundef nonnull %23) #4
  %156 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 84
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %156) #4, !srcloc !11
  %157 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %156, ptr %156, i32 1, ptr elementtype(i32) %156) #4, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @ubifs_clean_zn_cnt) #4, !srcloc !11
  %158 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ubifs_clean_zn_cnt, ptr nonnull @ubifs_clean_zn_cnt, i32 1, ptr nonnull elementtype(i32) @ubifs_clean_zn_cnt) #4, !srcloc !12
  store ptr %12, ptr %5, align 8
  store ptr %2, ptr %12, align 64
  %159 = tail call i64 @ktime_get_seconds() #4
  %160 = getelementptr inbounds %struct.ubifs_znode, ptr %12, i32 0, i32 5
  store i64 %159, ptr %160, align 8
  %161 = getelementptr inbounds %struct.ubifs_znode, ptr %12, i32 0, i32 8
  store i32 %3, ptr %161, align 8
  br label %165

162:                                              ; preds = %153, %14
  %163 = phi i32 [ %154, %153 ], [ -12, %14 ]
  tail call void @kfree(ptr noundef nonnull %12) #4
  %164 = inttoptr i32 %163 to ptr
  br label %165

165:                                              ; preds = %162, %155, %9
  %166 = phi ptr [ %164, %162 ], [ %12, %155 ], [ inttoptr (i32 -12 to ptr), %9 ]
  ret ptr %166
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_seconds() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_tnc_read_node(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr [2 x i32], ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = lshr i32 %5, 29
  %7 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @ubifs_get_wbuf(ptr noundef %0, i32 noundef %8) #4
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr %7, align 4
  %14 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 3
  %15 = load i32, ptr %14, align 8
  br i1 %10, label %18, label %16

16:                                               ; preds = %3
  %17 = tail call i32 @ubifs_read_node_wbuf(ptr noundef nonnull %9, ptr noundef %2, i32 noundef %6, i32 noundef %12, i32 noundef %13, i32 noundef %15) #4
  br label %20

18:                                               ; preds = %3
  %19 = tail call i32 @ubifs_read_node(ptr noundef %0, ptr noundef %2, i32 noundef %6, i32 noundef %12, i32 noundef %13, i32 noundef %15) #4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %20
  %24 = getelementptr i8, ptr %2, i32 24
  %25 = load i32, ptr %24, align 8
  %26 = load i32, ptr %1, align 8
  %27 = icmp eq i32 %26, %25
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = getelementptr i8, ptr %2, i32 28
  %30 = load i32, ptr %29, align 4
  %31 = load i32, ptr %4, align 4
  %32 = icmp eq i32 %31, %30
  br i1 %32, label %39, label %33

33:                                               ; preds = %28, %23
  %34 = load i32, ptr %7, align 4
  %35 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 3
  %36 = load i32, ptr %35, align 8
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %34, i32 noundef %36) #4
  %37 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  tail call void @ubifs_dump_node(ptr noundef %0, ptr noundef %2, i32 noundef %38) #4
  br label %39

39:                                               ; preds = %33, %28, %20
  %40 = phi i32 [ -22, %33 ], [ %21, %20 ], [ 0, %28 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_get_wbuf(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_read_node_wbuf(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_read_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(0) }

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
!10 = !{!"branch_weights", i32 2000, i32 2002}
!11 = !{i64 466909, i64 2147956880, i64 2147956906, i64 2147956953, i64 2147956975, i64 2147957003, i64 2147957023}
!12 = !{i64 2147969092, i64 2147969118, i64 2147969147, i64 2147969181, i64 2147969212, i64 2147969235}
