; ModuleID = '/llk/IR/fs/squashfs/block.c_pt.bc'
source_filename = "../fs/squashfs/block.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.bvec_iter_all = type { %struct.bio_vec, i32, i32 }
%struct.bio_vec = type { ptr, i32, i32 }
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
%struct.squashfs_sb_info = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i64, i64, i32, i16, i64, i32, i32, i32, i32, i8 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, %union.anon.46, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%union.anon.46 = type {}
%struct.page = type { i32, %union.anon.3, %union.anon.18, %struct.atomic_t }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.18 = type { %struct.atomic_t }
%struct.squashfs_page_actor = type { ptr, i32, i32, i32 }

@squashfs_read_data.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [20 x i8] c"fs/squashfs/block.c\00", align 1
@squashfs_read_data.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"\013SQUASHFS error: Failed to read block 0x%llx: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"squashfs read failed\00", align 1
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@bvec_virt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/bvec.h\00", align 1
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@copy_bio_to_actor.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @squashfs_read_data(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2, ptr noundef writeonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bvec_iter_all, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store ptr null, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !annotation !8
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %12, label %96

12:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #9
  %13 = getelementptr inbounds %struct.bvec_iter_all, ptr %8, i32 0, i32 2
  %14 = getelementptr inbounds %struct.bvec_iter_all, ptr %8, i32 0, i32 1
  %15 = add i64 %1, 2
  %16 = getelementptr inbounds %struct.squashfs_sb_info, ptr %10, i32 0, i32 19
  %17 = getelementptr inbounds i8, ptr %8, i32 12
  store i32 0, ptr %17, align 4
  %18 = load i64, ptr %16, align 8
  %19 = icmp ugt i64 %15, %18
  br i1 %19, label %84, label %20

20:                                               ; preds = %12
  %21 = call fastcc i32 @squashfs_bio_read(ptr noundef %0, i64 noundef %1, i32 noundef 2, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %84

23:                                               ; preds = %20
  %24 = load ptr, ptr %6, align 4
  %25 = getelementptr inbounds %struct.bio, ptr %24, i32 0, i32 13
  %26 = load i16, ptr %25, align 4
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.bio, ptr %24, i32 0, i32 16
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr %struct.bio_vec, ptr %30, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = lshr i32 %33, 12
  %35 = getelementptr %struct.page, ptr %31, i32 %34
  store ptr %35, ptr %8, align 4
  %36 = and i32 %33, 4095
  %37 = getelementptr inbounds %struct.bio_vec, ptr %8, i32 0, i32 2
  store i32 %36, ptr %37, align 4
  %38 = sub nuw nsw i32 4096, %36
  %39 = getelementptr %struct.bio_vec, ptr %30, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = tail call i32 @llvm.umin.i32(i32 %38, i32 %40) #9
  %42 = getelementptr inbounds %struct.bio_vec, ptr %8, i32 0, i32 1
  store i32 %41, ptr %42, align 4
  store i32 %41, ptr %13, align 4
  %43 = icmp ugt i32 %40, %38
  br i1 %43, label %48, label %44

44:                                               ; preds = %28
  store i32 1, ptr %14, align 4
  store i32 0, ptr %13, align 4
  br label %48

45:                                               ; preds = %23
  %46 = load i1, ptr @squashfs_read_data.__already_done, align 1
  br i1 %46, label %83, label %47, !prof !9

47:                                               ; preds = %45
  store i1 true, ptr @squashfs_read_data.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 174, i32 noundef 9, ptr noundef null) #9
  br label %83

48:                                               ; preds = %44, %28
  %49 = load i32, ptr %35, align 4
  %50 = lshr i32 %49, 30
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = icmp eq i32 %50, 3
  %54 = load i32, ptr @movable_zone, align 4
  %55 = icmp eq i32 %54, 2
  %56 = select i1 %53, i1 %55, i1 false
  br label %57

57:                                               ; preds = %52, %48
  %58 = phi i1 [ true, %48 ], [ %56, %52 ]
  %59 = load i1, ptr @bvec_virt.__already_done, align 1
  %60 = xor i1 %59, true
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %62, label %63, !prof !10

62:                                               ; preds = %57
  store i1 true, ptr @bvec_virt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 240, i32 noundef 9, ptr noundef null) #9
  br label %63

63:                                               ; preds = %62, %57
  %64 = tail call ptr @page_address(ptr noundef %35) #9
  %65 = getelementptr i8, ptr %64, i32 %36
  %66 = load i32, ptr %7, align 4
  %67 = getelementptr i8, ptr %65, i32 %66
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  %70 = add nsw i32 %41, -1
  %71 = icmp ult i32 %66, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = add nuw i32 %66, 1
  %74 = getelementptr i8, ptr %65, i32 %73
  br label %86

75:                                               ; preds = %63
  %76 = call fastcc zeroext i1 @bio_next_segment(ptr noundef %24, ptr noundef nonnull %8)
  %77 = load i1, ptr @squashfs_read_data.__already_done.1, align 1
  %78 = select i1 %76, i1 true, i1 %77
  br i1 %78, label %80, label %79, !prof !9

79:                                               ; preds = %75
  store i1 true, ptr @squashfs_read_data.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 184, i32 noundef 9, ptr noundef null) #9
  br label %80

80:                                               ; preds = %79, %75
  br i1 %76, label %81, label %83

81:                                               ; preds = %80
  %82 = call fastcc ptr @bvec_virt(ptr noundef nonnull %8)
  br label %86

83:                                               ; preds = %80, %47, %45
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #9
  br label %134

84:                                               ; preds = %20, %12
  %85 = phi i32 [ %21, %20 ], [ -5, %12 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #9
  br label %138

86:                                               ; preds = %81, %72
  %87 = phi ptr [ %74, %72 ], [ %82, %81 ]
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i32
  %90 = shl nuw nsw i32 %89, 8
  tail call void @bio_free_pages(ptr noundef %24) #9
  tail call void @bio_put(ptr noundef %24) #9
  %91 = lshr i32 %89, 7
  %92 = and i32 %90, 32512
  %93 = or i32 %92, %69
  %94 = icmp eq i32 %93, 0
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #9
  %95 = select i1 %94, i32 32768, i32 %93
  br label %101

96:                                               ; preds = %5
  %97 = lshr i32 %2, 24
  %98 = and i32 %97, 1
  %99 = and i32 %2, -16777217
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %142, label %101

101:                                              ; preds = %96, %86
  %102 = phi i64 [ %1, %96 ], [ %15, %86 ]
  %103 = phi i32 [ %99, %96 ], [ %95, %86 ]
  %104 = phi i32 [ %98, %96 ], [ %91, %86 ]
  %105 = getelementptr inbounds %struct.squashfs_page_actor, ptr %4, i32 0, i32 2
  %106 = load i32, ptr %105, align 4
  %107 = icmp sgt i32 %103, %106
  br i1 %107, label %142, label %108

108:                                              ; preds = %101
  %109 = sext i32 %103 to i64
  %110 = add i64 %102, %109
  %111 = getelementptr inbounds %struct.squashfs_sb_info, ptr %10, i32 0, i32 19
  %112 = load i64, ptr %111, align 8
  %113 = icmp ugt i64 %110, %112
  br i1 %113, label %142, label %114

114:                                              ; preds = %108
  %115 = icmp eq ptr %3, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %114
  store i64 %110, ptr %3, align 8
  br label %117

117:                                              ; preds = %116, %114
  %118 = call fastcc i32 @squashfs_bio_read(ptr noundef %0, i64 noundef %102, i32 noundef %103, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %138

120:                                              ; preds = %117
  %121 = icmp eq i32 %104, 1
  br i1 %121, label %130, label %122

122:                                              ; preds = %120
  %123 = getelementptr inbounds %struct.squashfs_sb_info, ptr %10, i32 0, i32 12
  %124 = load ptr, ptr %123, align 8
  %125 = icmp eq ptr %124, null
  %126 = load ptr, ptr %6, align 4
  br i1 %125, label %134, label %127

127:                                              ; preds = %122
  %128 = load i32, ptr %7, align 4
  %129 = tail call i32 @squashfs_decompress(ptr noundef %10, ptr noundef %126, i32 noundef %128, i32 noundef %103, ptr noundef %4) #9
  br label %134

130:                                              ; preds = %120
  %131 = load ptr, ptr %6, align 4
  %132 = load i32, ptr %7, align 4
  %133 = tail call fastcc i32 @copy_bio_to_actor(ptr noundef %131, ptr noundef %4, i32 noundef %132, i32 noundef %103)
  br label %134

134:                                              ; preds = %130, %127, %122, %83
  %135 = phi ptr [ %126, %127 ], [ %131, %130 ], [ %24, %83 ], [ %126, %122 ]
  %136 = phi i32 [ %129, %127 ], [ %133, %130 ], [ -5, %83 ], [ -5, %122 ]
  %137 = phi i64 [ %102, %127 ], [ %102, %130 ], [ %1, %83 ], [ %102, %122 ]
  tail call void @bio_free_pages(ptr noundef %135) #9
  tail call void @bio_put(ptr noundef %135) #9
  br label %138

138:                                              ; preds = %134, %117, %84
  %139 = phi i32 [ %118, %117 ], [ %136, %134 ], [ %85, %84 ]
  %140 = phi i64 [ %102, %117 ], [ %137, %134 ], [ %1, %84 ]
  %141 = icmp slt i32 %139, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %138, %108, %101, %96
  %143 = phi i64 [ %140, %138 ], [ %1, %96 ], [ %102, %101 ], [ %102, %108 ]
  %144 = phi i32 [ %139, %138 ], [ -5, %96 ], [ -5, %101 ], [ -5, %108 ]
  %145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i64 noundef %143, i32 noundef %144) #10
  %146 = getelementptr inbounds %struct.squashfs_sb_info, ptr %10, i32 0, i32 24
  %147 = load i8, ptr %146, align 8, !range !11
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %142
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.3) #11
  unreachable

150:                                              ; preds = %142, %138
  %151 = phi i32 [ %139, %138 ], [ %144, %142 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  ret i32 %151
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @squashfs_bio_read(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.squashfs_sb_info, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  %11 = sext i32 %10 to i64
  %12 = xor i64 %11, -1
  %13 = and i64 %12, %1
  %14 = getelementptr inbounds %struct.squashfs_sb_info, ptr %7, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = zext i32 %15 to i64
  %17 = lshr i64 %13, %16
  %18 = sext i32 %2 to i64
  %19 = add i64 %1, -1
  %20 = add i64 %19, %18
  %21 = or i64 %20, %11
  %22 = add i64 %21, 1
  %23 = lshr i64 %22, %16
  %24 = and i64 %1, 4294963200
  %25 = sub i64 %13, %24
  %26 = trunc i64 %25 to i32
  %27 = sub i64 %23, %17
  %28 = shl i64 %27, %16
  %29 = trunc i64 %28 to i32
  %30 = add i32 %26, 4095
  %31 = add i32 %30, %29
  %32 = lshr i32 %31, 12
  %33 = icmp ult i32 %31, 1052672
  %34 = trunc i32 %32 to i16
  br i1 %33, label %35, label %37

35:                                               ; preds = %5
  %36 = tail call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext %34, ptr noundef nonnull @fs_bio_set) #9
  br label %39

37:                                               ; preds = %5
  %38 = tail call ptr @bio_kmalloc(i32 noundef 3072, i16 noundef zeroext %34) #9
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi ptr [ %36, %35 ], [ %38, %37 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %89, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.bio, ptr %40, i32 0, i32 3
  %46 = load i16, ptr %45, align 4
  %47 = and i16 %46, -2049
  store i16 %47, ptr %45, align 4
  %48 = getelementptr inbounds %struct.bio, ptr %40, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %44
  br i1 %50, label %53, label %51

51:                                               ; preds = %42
  %52 = and i16 %46, -2177
  store i16 %52, ptr %45, align 4
  br label %53

53:                                               ; preds = %51, %42
  store ptr %44, ptr %48, align 4
  %54 = getelementptr inbounds %struct.bio, ptr %40, i32 0, i32 2
  store i32 0, ptr %54, align 4
  %55 = load i32, ptr %8, align 4
  %56 = ashr i32 %55, 9
  %57 = sext i32 %56 to i64
  %58 = mul i64 %17, %57
  %59 = getelementptr inbounds %struct.bio, ptr %40, i32 0, i32 8
  store i64 %58, ptr %59, align 4
  %60 = icmp ult i32 %31, 4096
  br i1 %60, label %78, label %61

61:                                               ; preds = %53
  %62 = call i32 @llvm.umax.i32(i32 %32, i32 1)
  br label %63

63:                                               ; preds = %74, %61
  %64 = phi i32 [ %76, %74 ], [ 0, %61 ]
  %65 = phi i32 [ %75, %74 ], [ %29, %61 ]
  %66 = phi i32 [ 0, %74 ], [ %26, %61 ]
  %67 = sub i32 4096, %66
  %68 = tail call i32 @llvm.umin.i32(i32 %67, i32 %65)
  %69 = tail call ptr @__alloc_pages(i32 noundef 3072, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %70 = icmp eq ptr %69, null
  br i1 %70, label %87, label %71

71:                                               ; preds = %63
  %72 = tail call i32 @bio_add_page(ptr noundef nonnull %40, ptr noundef nonnull %69, i32 noundef %68, i32 noundef %66) #9
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %87, label %74

74:                                               ; preds = %71
  %75 = sub i32 %65, %68
  %76 = add nuw nsw i32 %64, 1
  %77 = icmp eq i32 %76, %62
  br i1 %77, label %78, label %63

78:                                               ; preds = %74, %53
  %79 = tail call i32 @submit_bio_wait(ptr noundef nonnull %40) #9
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  store ptr %40, ptr %3, align 4
  %82 = load i32, ptr %14, align 8
  %83 = shl nsw i32 -1, %82
  %84 = xor i32 %83, -1
  %85 = trunc i64 %1 to i32
  %86 = and i32 %84, %85
  store i32 %86, ptr %4, align 4
  br label %89

87:                                               ; preds = %78, %71, %63
  %88 = phi i32 [ %79, %78 ], [ -12, %63 ], [ -5, %71 ]
  tail call void @bio_free_pages(ptr noundef nonnull %40) #9
  tail call void @bio_put(ptr noundef nonnull %40) #9
  br label %89

89:                                               ; preds = %87, %81, %39
  %90 = phi i32 [ %88, %87 ], [ 0, %81 ], [ -12, %39 ]
  ret i32 %90
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @bio_next_segment(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.bvec_iter_all, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 13
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = icmp slt i32 %4, %7
  br i1 %8, label %9, label %41

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 16
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.bvec_iter_all, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr %1, align 4
  %17 = getelementptr %struct.page, ptr %16, i32 1
  store ptr %17, ptr %1, align 4
  br label %27

18:                                               ; preds = %9
  %19 = getelementptr %struct.bio_vec, ptr %11, i32 %4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr %struct.bio_vec, ptr %11, i32 %4, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = lshr i32 %22, 12
  %24 = getelementptr %struct.page, ptr %20, i32 %23
  store ptr %24, ptr %1, align 4
  %25 = load i32, ptr %21, align 4
  %26 = and i32 %25, 4095
  br label %27

27:                                               ; preds = %18, %15
  %28 = phi i32 [ %26, %18 ], [ 0, %15 ]
  %29 = getelementptr inbounds %struct.bio_vec, ptr %1, i32 0, i32 2
  store i32 %28, ptr %29, align 4
  %30 = sub nuw nsw i32 4096, %28
  %31 = getelementptr %struct.bio_vec, ptr %11, i32 %4, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = sub i32 %32, %13
  %34 = tail call i32 @llvm.umin.i32(i32 %30, i32 %33) #9
  %35 = getelementptr inbounds %struct.bio_vec, ptr %1, i32 0, i32 1
  store i32 %34, ptr %35, align 4
  %36 = add i32 %34, %13
  store i32 %36, ptr %12, align 4
  %37 = load i32, ptr %31, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = add nsw i32 %4, 1
  store i32 %40, ptr %3, align 4
  store i32 0, ptr %12, align 4
  br label %41

41:                                               ; preds = %39, %27, %2
  ret i1 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @bvec_virt(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 4
  %3 = load i32, ptr %2, align 4
  %4 = lshr i32 %3, 30
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = icmp eq i32 %4, 3
  %8 = load i32, ptr @movable_zone, align 4
  %9 = icmp eq i32 %8, 2
  %10 = select i1 %7, i1 %9, i1 false
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi i1 [ true, %1 ], [ %10, %6 ]
  %13 = load i1, ptr @bvec_virt.__already_done, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %18, !prof !10

16:                                               ; preds = %11
  store i1 true, ptr @bvec_virt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 240, i32 noundef 9, ptr noundef null) #9
  %17 = load ptr, ptr %0, align 4
  br label %18

18:                                               ; preds = %16, %11
  %19 = phi ptr [ %17, %16 ], [ %2, %11 ]
  %20 = tail call ptr @page_address(ptr noundef %19) #9
  %21 = getelementptr inbounds %struct.bio_vec, ptr %0, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i8, ptr %20, i32 %22
  ret ptr %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_free_pages(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @squashfs_decompress(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @copy_bio_to_actor(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.squashfs_page_actor, ptr %1, i32 0, i32 3
  store i32 1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 13
  %7 = load i16, ptr %6, align 4
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %4
  %10 = icmp sgt i32 %3, 0
  br i1 %10, label %11, label %124

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 16
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.bio_vec, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.bio_vec, ptr %13, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 4095
  %19 = sub nuw nsw i32 4096, %18
  %20 = icmp ugt i32 %15, %19
  %21 = tail call i32 @llvm.umin.i32(i32 %19, i32 %15) #9
  %22 = select i1 %20, i32 %21, i32 0
  %23 = xor i1 %20, true
  %24 = zext i1 %23 to i32
  %25 = load ptr, ptr %13, align 4
  %26 = lshr i32 %17, 12
  %27 = getelementptr %struct.page, ptr %25, i32 %26
  %28 = load ptr, ptr %1, align 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.squashfs_page_actor, ptr %1, i32 0, i32 1
  br label %34

31:                                               ; preds = %4
  %32 = load i1, ptr @copy_bio_to_actor.__already_done, align 1
  br i1 %32, label %124, label %33, !prof !9

33:                                               ; preds = %31
  store i1 true, ptr @copy_bio_to_actor.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 43, i32 noundef 9, ptr noundef null) #9
  br label %124

34:                                               ; preds = %116, %11
  %35 = phi i32 [ %2, %11 ], [ %122, %116 ]
  %36 = phi ptr [ %29, %11 ], [ %84, %116 ]
  %37 = phi i32 [ 0, %11 ], [ %69, %116 ]
  %38 = phi i32 [ 0, %11 ], [ %83, %116 ]
  %39 = phi i32 [ %22, %11 ], [ %121, %116 ]
  %40 = phi i32 [ %24, %11 ], [ %120, %116 ]
  %41 = phi i32 [ %18, %11 ], [ %119, %116 ]
  %42 = phi i32 [ %21, %11 ], [ %118, %116 ]
  %43 = phi ptr [ %27, %11 ], [ %117, %116 ]
  %44 = sub i32 %42, %35
  %45 = sub nuw nsw i32 4096, %38
  %46 = tail call i32 @llvm.smin.i32(i32 %44, i32 %45)
  %47 = sub i32 %3, %37
  %48 = tail call i32 @llvm.smin.i32(i32 %46, i32 %47)
  %49 = getelementptr i8, ptr %36, i32 %38
  %50 = load i32, ptr %43, align 4
  %51 = lshr i32 %50, 30
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %58, label %53

53:                                               ; preds = %34
  %54 = icmp eq i32 %51, 3
  %55 = load i32, ptr @movable_zone, align 4
  %56 = icmp eq i32 %55, 2
  %57 = select i1 %54, i1 %56, i1 false
  br label %58

58:                                               ; preds = %53, %34
  %59 = phi i1 [ true, %34 ], [ %57, %53 ]
  %60 = load i1, ptr @bvec_virt.__already_done, align 1
  %61 = xor i1 %60, true
  %62 = select i1 %59, i1 %61, i1 false
  br i1 %62, label %63, label %64, !prof !10

63:                                               ; preds = %58
  store i1 true, ptr @bvec_virt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 240, i32 noundef 9, ptr noundef null) #9
  br label %64

64:                                               ; preds = %63, %58
  %65 = tail call ptr @page_address(ptr noundef %43) #9
  %66 = getelementptr i8, ptr %65, i32 %41
  %67 = getelementptr i8, ptr %66, i32 %35
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %49, ptr align 1 %67, i32 %48, i1 false)
  %68 = add i32 %48, %38
  %69 = add i32 %48, %37
  %70 = add i32 %48, %35
  %71 = icmp ugt i32 %68, 4095
  br i1 %71, label %72, label %82

72:                                               ; preds = %64
  %73 = load i32, ptr %5, align 4
  %74 = load i32, ptr %30, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %124, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %1, align 4
  %78 = add i32 %73, 1
  store i32 %78, ptr %5, align 4
  %79 = getelementptr ptr, ptr %77, i32 %73
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %124, label %82

82:                                               ; preds = %76, %64
  %83 = phi i32 [ %68, %64 ], [ 0, %76 ]
  %84 = phi ptr [ %36, %64 ], [ %80, %76 ]
  %85 = icmp ult i32 %70, %42
  br i1 %85, label %116, label %86

86:                                               ; preds = %82
  %87 = load i16, ptr %6, align 4
  %88 = zext i16 %87 to i32
  %89 = icmp slt i32 %40, %88
  br i1 %89, label %90, label %124

90:                                               ; preds = %86
  %91 = load ptr, ptr %12, align 4
  %92 = icmp eq i32 %39, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = getelementptr %struct.page, ptr %43, i32 1
  br label %103

95:                                               ; preds = %90
  %96 = getelementptr %struct.bio_vec, ptr %91, i32 %40
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr %struct.bio_vec, ptr %91, i32 %40, i32 2
  %99 = load i32, ptr %98, align 4
  %100 = lshr i32 %99, 12
  %101 = getelementptr %struct.page, ptr %97, i32 %100
  %102 = and i32 %99, 4095
  br label %103

103:                                              ; preds = %95, %93
  %104 = phi ptr [ %101, %95 ], [ %94, %93 ]
  %105 = phi i32 [ %102, %95 ], [ 0, %93 ]
  %106 = sub nuw nsw i32 4096, %105
  %107 = getelementptr %struct.bio_vec, ptr %91, i32 %40, i32 1
  %108 = load i32, ptr %107, align 4
  %109 = sub i32 %108, %39
  %110 = tail call i32 @llvm.umin.i32(i32 %106, i32 %109) #9
  %111 = add i32 %110, %39
  %112 = icmp eq i32 %111, %108
  %113 = zext i1 %112 to i32
  %114 = add nsw i32 %40, %113
  %115 = select i1 %112, i32 0, i32 %111
  br label %116

116:                                              ; preds = %103, %82
  %117 = phi ptr [ %43, %82 ], [ %104, %103 ]
  %118 = phi i32 [ %42, %82 ], [ %110, %103 ]
  %119 = phi i32 [ %41, %82 ], [ %105, %103 ]
  %120 = phi i32 [ %40, %82 ], [ %114, %103 ]
  %121 = phi i32 [ %39, %82 ], [ %115, %103 ]
  %122 = phi i32 [ %70, %82 ], [ 0, %103 ]
  %123 = icmp slt i32 %69, %3
  br i1 %123, label %34, label %124

124:                                              ; preds = %116, %86, %76, %72, %33, %31, %9
  %125 = phi i32 [ 0, %33 ], [ 0, %31 ], [ 0, %9 ], [ %69, %72 ], [ %69, %86 ], [ %69, %76 ], [ %69, %116 ]
  ret i32 %125
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_kmalloc(i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bio_wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { cold noreturn nounwind }

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
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i8 0, i8 2}
