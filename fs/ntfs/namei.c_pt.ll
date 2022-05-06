; ModuleID = '/llk/IR/fs/ntfs/namei.c_pt.bc'
source_filename = "../fs/ntfs/namei.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.62, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.63, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.64, ptr, %struct.address_space, %struct.list_head, %union.anon.65, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.62 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.63 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.64 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.65 = type { ptr }
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
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.68, %struct.list_head, %struct.list_head, %union.anon.69 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.lockref = type { %union.anon.66 }
%union.anon.66 = type { i64 }
%union.anon.68 = type { %struct.list_head }
%union.anon.69 = type { %struct.hlist_node }
%struct.anon = type { i32, i32 }
%struct.ntfs_name = type <{ i64, i8, i8, [0 x i16] }>
%struct.ntfs_attr_search_ctx = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr }
%struct.ATTR_RECORD = type { i32, i32, i8, i8, i16, i16, i16, %union.anon.74 }
%union.anon.74 = type { %struct.anon.76 }
%struct.anon.76 = type { i64, i64, i16, i8, [5 x i8], i64, i64, i64, i64 }
%struct.anon.75 = type { i32, i16, i8, i8 }
%struct.FILE_NAME_ATTR = type <{ i64, i64, i64, i64, i64, i64, i64, i32, %union.anon.77, i8, i8, [0 x i16] }>
%union.anon.77 = type { %struct.anon.79 }
%struct.anon.79 = type { i32 }

@ntfs_dir_inode_ops = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @ntfs_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@ntfs_export_ops = dso_local local_unnamed_addr constant %struct.export_operations { ptr null, ptr @ntfs_fh_to_dentry, ptr @ntfs_fh_to_parent, ptr null, ptr @ntfs_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@__func__.ntfs_lookup = private unnamed_addr constant [12 x i8] c"ntfs_lookup\00", align 1
@.str = private unnamed_addr constant [35 x i8] c"Failed to convert name to Unicode.\00", align 1
@ntfs_name_cache = external dso_local local_unnamed_addr global ptr, align 4
@.str.1 = private unnamed_addr constant [131 x i8] c"Found stale reference to inode 0x%lx (reference sequence number = 0x%x, inode sequence number = 0x%x), returning -EIO. Run chkdsk.\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"ntfs_iget(0x%lx) failed with error code %li.\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"ntfs_lookup_ino_by_name() failed with error code %i.\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"Inode corrupt: No WIN32 namespace counterpart to DOS file name. Run chkdsk.\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Illegal file name attribute. Run chkdsk.\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed, returning error code %i.\00", align 1
@__func__.ntfs_get_parent = private unnamed_addr constant [16 x i8] c"ntfs_get_parent\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"Inode 0x%lx does not have a file name attribute.  Run chkdsk.\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ntfs_lookup(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca %struct.qstr, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store ptr null, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  store ptr null, ptr %5, align 4
  %11 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %12 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = call i32 @ntfs_nlstoucs(ptr noundef %10, ptr noundef %13, i32 noundef %15, ptr noundef nonnull %4) #5
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = icmp eq i32 %16, -36
  br i1 %19, label %22, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %10, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup, ptr noundef %21, ptr noundef nonnull @.str) #5
  br label %22

22:                                               ; preds = %20, %18
  %23 = inttoptr i32 %16 to ptr
  br label %158

24:                                               ; preds = %3
  %25 = getelementptr i8, ptr %0, i32 -200
  %26 = load ptr, ptr %4, align 4
  %27 = call i64 @ntfs_lookup_inode_by_name(ptr noundef %25, ptr noundef %26, i32 noundef %16, ptr noundef nonnull %5) #5
  %28 = load ptr, ptr @ntfs_name_cache, align 4
  %29 = load ptr, ptr %4, align 4
  call void @kmem_cache_free(ptr noundef %28, ptr noundef %29) #5
  %30 = and i64 %27, 140737488355328
  %31 = icmp eq i64 %30, 0
  %32 = trunc i64 %27 to i32
  br i1 %31, label %33, label %61

33:                                               ; preds = %24
  %34 = load ptr, ptr %10, align 8
  %35 = call ptr @ntfs_iget(ptr noundef %34, i32 noundef %32) #5
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %55, label %37

37:                                               ; preds = %33
  %38 = call zeroext i1 @is_bad_inode(ptr noundef %35) #5
  br i1 %38, label %48, label %39

39:                                               ; preds = %37
  %40 = lshr i64 %27, 48
  %41 = trunc i64 %40 to i32
  %42 = getelementptr i8, ptr %35, i32 -168
  %43 = load i16, ptr %42, align 8
  %44 = zext i16 %43 to i32
  %45 = icmp eq i32 %41, %44
  %46 = icmp eq i32 %32, 0
  %47 = or i1 %46, %45
  br i1 %47, label %48, label %53

48:                                               ; preds = %39, %37
  %49 = load ptr, ptr %5, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %68

51:                                               ; preds = %48
  %52 = call ptr @d_splice_alias(ptr noundef %35, ptr noundef %1) #5
  br label %158

53:                                               ; preds = %39
  %54 = load ptr, ptr %10, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup, ptr noundef %54, ptr noundef nonnull @.str.1, i32 noundef %32, i32 noundef %41, i32 noundef %44) #5
  call void @iput(ptr noundef %35) #5
  br label %58

55:                                               ; preds = %33
  %56 = load ptr, ptr %10, align 8
  %57 = ptrtoint ptr %35 to i32
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup, ptr noundef %56, ptr noundef nonnull @.str.2, i32 noundef %32, i32 noundef %57) #5
  br label %58

58:                                               ; preds = %55, %53
  %59 = phi ptr [ %35, %55 ], [ inttoptr (i32 -5 to ptr), %53 ]
  %60 = load ptr, ptr %5, align 4
  call void @kfree(ptr noundef %60) #5
  br label %158

61:                                               ; preds = %24
  %62 = icmp eq i32 %32, -2
  br i1 %62, label %63, label %64

63:                                               ; preds = %61
  call void @d_add(ptr noundef %1, ptr noundef null) #5
  br label %158

64:                                               ; preds = %61
  %65 = load ptr, ptr %10, align 8
  %66 = sub i32 0, %32
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup, ptr noundef %65, ptr noundef nonnull @.str.3, i32 noundef %66) #5
  %67 = inttoptr i32 %32 to ptr
  br label %158

68:                                               ; preds = %48
  %69 = getelementptr i8, ptr %35, i32 -200
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #5
  %70 = getelementptr inbounds %struct.qstr, ptr %6, i32 0, i32 1
  %71 = getelementptr inbounds %struct.ntfs_name, ptr %49, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %72 = load i8, ptr %71, align 1
  %73 = icmp eq i8 %72, 2
  br i1 %73, label %82, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.ntfs_name, ptr %49, i32 0, i32 3
  %76 = getelementptr inbounds %struct.ntfs_name, ptr %49, i32 0, i32 2
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = call i32 @ntfs_ucstonls(ptr noundef %10, ptr noundef %75, i32 noundef %78, ptr noundef %70, i32 noundef 0) #5
  %80 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 1
  store i32 %79, ptr %80, align 4
  %81 = load ptr, ptr %5, align 4
  call void @kfree(ptr noundef %81) #5
  br label %135

82:                                               ; preds = %68
  call void @kfree(ptr noundef nonnull %49) #5
  %83 = call ptr @map_mft_record(ptr noundef %69) #5
  %84 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = ptrtoint ptr %83 to i32
  br label %152

87:                                               ; preds = %82
  %88 = call ptr @ntfs_attr_get_search_ctx(ptr noundef %69, ptr noundef %83) #5
  %89 = icmp eq ptr %88, null
  br i1 %89, label %148, label %90, !prof !9

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %88, i32 0, i32 1
  br label %92

92:                                               ; preds = %126, %90
  %93 = call i32 @ntfs_attr_lookup(i32 noundef 48, ptr noundef null, i32 noundef 0, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %88) #5
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %99, label %95, !prof !10

95:                                               ; preds = %92
  %96 = load ptr, ptr %10, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup, ptr noundef %96, ptr noundef nonnull @.str.4) #5
  %97 = icmp eq i32 %93, -2
  %98 = select i1 %97, i32 -5, i32 %93
  br label %146

99:                                               ; preds = %92
  %100 = load ptr, ptr %91, align 4
  %101 = getelementptr inbounds %struct.ATTR_RECORD, ptr %100, i32 0, i32 2
  %102 = load i8, ptr %101, align 1
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %144

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.ATTR_RECORD, ptr %100, i32 0, i32 5
  %106 = load i16, ptr %105, align 1
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %108, label %144

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.ATTR_RECORD, ptr %100, i32 0, i32 7
  %110 = load i32, ptr %109, align 1
  %111 = getelementptr inbounds %struct.anon.75, ptr %109, i32 0, i32 1
  %112 = load i16, ptr %111, align 1
  %113 = zext i16 %112 to i32
  %114 = add i32 %110, %113
  %115 = getelementptr inbounds %struct.ATTR_RECORD, ptr %100, i32 0, i32 1
  %116 = load i32, ptr %115, align 1
  %117 = icmp ugt i32 %114, %116
  br i1 %117, label %144, label %118

118:                                              ; preds = %108
  %119 = getelementptr i8, ptr %100, i32 %113
  %120 = getelementptr inbounds %struct.FILE_NAME_ATTR, ptr %119, i32 0, i32 9
  %121 = load i8, ptr %120, align 1
  %122 = zext i8 %121 to i32
  %123 = shl nuw nsw i32 %122, 1
  %124 = add nuw nsw i32 %123, 66
  %125 = icmp ugt i32 %124, %110
  br i1 %125, label %144, label %126

126:                                              ; preds = %118
  %127 = getelementptr inbounds %struct.FILE_NAME_ATTR, ptr %119, i32 0, i32 10
  %128 = load i8, ptr %127, align 1
  %129 = icmp eq i8 %128, 1
  br i1 %129, label %130, label %92

130:                                              ; preds = %126
  %131 = zext i8 %121 to i32
  %132 = getelementptr inbounds %struct.FILE_NAME_ATTR, ptr %119, i32 0, i32 11
  %133 = call i32 @ntfs_ucstonls(ptr noundef %10, ptr noundef %132, i32 noundef %131, ptr noundef %70, i32 noundef 0) #5
  %134 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 1
  store i32 %133, ptr %134, align 4
  call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %88) #5
  call void @unmap_mft_record(ptr noundef %69) #5
  br label %135

135:                                              ; preds = %130, %74
  %136 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 1
  %137 = load i32, ptr %136, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %152, label %139

139:                                              ; preds = %135
  %140 = load ptr, ptr %70, align 8
  %141 = call i32 @full_name_hash(ptr noundef %1, ptr noundef %140, i32 noundef %137) #6
  store i32 %141, ptr %6, align 8
  %142 = call ptr @d_add_ci(ptr noundef %1, ptr noundef %35, ptr noundef nonnull %6) #5
  %143 = load ptr, ptr %70, align 8
  call void @kfree(ptr noundef %143) #5
  br label %156

144:                                              ; preds = %118, %108, %104, %99
  %145 = load ptr, ptr %10, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup, ptr noundef %145, ptr noundef nonnull @.str.5) #5
  br label %146

146:                                              ; preds = %144, %95
  %147 = phi i32 [ -5, %144 ], [ %98, %95 ]
  call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %88) #5
  br label %148

148:                                              ; preds = %146, %87
  %149 = phi i32 [ %147, %146 ], [ -12, %87 ]
  %150 = icmp eq ptr %83, null
  br i1 %150, label %152, label %151

151:                                              ; preds = %148
  call void @unmap_mft_record(ptr noundef %69) #5
  br label %152

152:                                              ; preds = %151, %148, %135, %85
  %153 = phi i32 [ %149, %151 ], [ %149, %148 ], [ %86, %85 ], [ %137, %135 ]
  call void @iput(ptr noundef %35) #5
  %154 = load ptr, ptr %10, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup, ptr noundef %154, ptr noundef nonnull @.str.6, i32 noundef %153) #5
  %155 = inttoptr i32 %153 to ptr
  br label %156

156:                                              ; preds = %152, %139
  %157 = phi ptr [ %155, %152 ], [ %142, %139 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #5
  br label %158

158:                                              ; preds = %156, %64, %63, %58, %51, %22
  %159 = phi ptr [ %23, %22 ], [ null, %63 ], [ %67, %64 ], [ %59, %58 ], [ %157, %156 ], [ %52, %51 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  ret ptr %159
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ntfs_fh_to_dentry(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call ptr @generic_fh_to_dentry(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @ntfs_nfs_get_inode) #5
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ntfs_fh_to_parent(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call ptr @generic_fh_to_parent(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @ntfs_nfs_get_inode) #5
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ntfs_get_parent(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -200
  %5 = tail call ptr @map_mft_record(ptr noundef %4) #5
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %53, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @ntfs_attr_get_search_ctx(ptr noundef %4, ptr noundef %5) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10, !prof !9

10:                                               ; preds = %7
  %11 = tail call i32 @ntfs_attr_lookup(i32 noundef 48, ptr noundef null, i32 noundef 0, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %8) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16, !prof !10

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %8, i32 0, i32 1
  br label %26

15:                                               ; preds = %7
  tail call void @unmap_mft_record(ptr noundef %4) #5
  br label %53

16:                                               ; preds = %31, %10
  %17 = phi i32 [ %11, %10 ], [ %32, %31 ]
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %8) #5
  tail call void @unmap_mft_record(ptr noundef %4) #5
  %18 = icmp eq i32 %17, -2
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 10
  %23 = load i32, ptr %22, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_get_parent, ptr noundef %21, ptr noundef nonnull @.str.7, i32 noundef %23) #5
  br label %24

24:                                               ; preds = %19, %16
  %25 = inttoptr i32 %17 to ptr
  br label %53

26:                                               ; preds = %31, %13
  %27 = load ptr, ptr %14, align 4
  %28 = getelementptr inbounds %struct.ATTR_RECORD, ptr %27, i32 0, i32 2
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %34, label %31, !prof !10

31:                                               ; preds = %34, %26
  %32 = tail call i32 @ntfs_attr_lookup(i32 noundef 48, ptr noundef null, i32 noundef 0, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %8) #5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %26, label %16, !prof !10

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.ATTR_RECORD, ptr %27, i32 0, i32 7
  %36 = getelementptr inbounds %struct.anon.75, ptr %35, i32 0, i32 1
  %37 = load i16, ptr %36, align 1
  %38 = zext i16 %37 to i32
  %39 = getelementptr i8, ptr %27, i32 %38
  %40 = load i32, ptr %35, align 1
  %41 = getelementptr i8, ptr %39, i32 %40
  %42 = getelementptr inbounds %struct.ATTR_RECORD, ptr %27, i32 0, i32 1
  %43 = load i32, ptr %42, align 1
  %44 = getelementptr i8, ptr %27, i32 %43
  %45 = icmp ugt ptr %41, %44
  br i1 %45, label %31, label %46, !prof !9

46:                                               ; preds = %34
  %47 = load i64, ptr %39, align 1
  %48 = trunc i64 %47 to i32
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %8) #5
  tail call void @unmap_mft_record(ptr noundef %4) #5
  %49 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %50 = load ptr, ptr %49, align 4
  %51 = tail call ptr @ntfs_iget(ptr noundef %50, i32 noundef %48) #5
  %52 = tail call ptr @d_obtain_alias(ptr noundef %51) #5
  br label %53

53:                                               ; preds = %46, %24, %15, %1
  %54 = phi ptr [ inttoptr (i32 -12 to ptr), %15 ], [ %25, %24 ], [ %52, %46 ], [ %5, %1 ]
  ret ptr %54
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_nlstoucs(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ntfs_lookup_inode_by_name(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_iget(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_ucstonls(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @map_mft_record(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_attr_get_search_ctx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_attr_lookup(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_attr_put_search_ctx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mft_record(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @full_name_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_add_ci(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @generic_fh_to_dentry(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ntfs_nfs_get_inode(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = trunc i64 %1 to i32
  %5 = tail call ptr @ntfs_iget(ptr noundef %0, i32 noundef %4) #5
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call zeroext i1 @is_bad_inode(ptr noundef %5) #5
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 44
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, %2
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %7
  tail call void @iput(ptr noundef %5) #5
  br label %14

14:                                               ; preds = %13, %9, %3
  %15 = phi ptr [ %5, %3 ], [ inttoptr (i32 -116 to ptr), %13 ], [ %5, %9 ]
  ret ptr %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @generic_fh_to_parent(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_alias(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 2000, i32 1}
