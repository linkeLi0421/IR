; ModuleID = '/llk/IR/fs/ntfs/dir.c_pt.bc'
source_filename = "../fs/ntfs/dir.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._ntfs_inode = type { %struct.rwlock_t, i64, i64, i32, i32, i16, %struct.atomic_t, ptr, i32, ptr, i32, %struct.runlist, %struct.mutex, ptr, i32, i32, ptr, %struct.runlist, %union.anon.71, %struct.mutex, i32, %union.anon.74 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.atomic_t = type { i32 }
%struct.runlist = type { ptr, %struct.rw_semaphore }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.71 = type { %struct.anon.73 }
%struct.anon.73 = type { i64, i32, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%union.anon.74 = type { ptr }
%struct.big_ntfs_inode = type { %struct._ntfs_inode, %struct.inode }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.37, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.38, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.39, ptr, %struct.address_space, %struct.list_head, %union.anon.40, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.37 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.38 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.39 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.40 = type { ptr }
%struct.ntfs_attr_search_ctx = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr }
%struct.ATTR_RECORD = type { i32, i32, i8, i8, i16, i16, i16, %union.anon.83 }
%union.anon.83 = type { %struct.anon.85 }
%struct.anon.85 = type { i64, i64, i16, i8, [5 x i8], i64, i64, i64, i64 }
%struct.anon.84 = type { i32, i16, i8, i8 }
%struct.INDEX_ROOT = type { i32, i32, i32, i8, [3 x i8], %struct.INDEX_HEADER }
%struct.INDEX_HEADER = type { i32, i32, i32, i8, [3 x i8] }
%struct.ntfs_volume = type { ptr, i64, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, i8, i8, i16, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, i64, i64, i64, i64, i32, ptr, i32, ptr, ptr, ptr, %struct.rw_semaphore, ptr, %struct.rw_semaphore, ptr, i16, i8, i8, ptr, ptr, ptr, ptr }
%struct.INDEX_ENTRY = type <{ %union.anon.75, i16, i16, i16, i16, %union.anon.78 }>
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { i64 }
%union.anon.78 = type <{ %struct.GUID, [50 x i8] }>
%struct.GUID = type { i32, i16, i16, [8 x i8] }
%struct.ntfs_name = type <{ i64, i8, i8, [0 x i16] }>
%struct.page = type { i32, %union.anon.3, %union.anon.18, %struct.atomic_t }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.18 = type { %struct.atomic_t }
%struct.INDEX_BLOCK = type { i32, i16, i16, i64, i64, %struct.INDEX_HEADER }
%struct.file = type { %union.anon.0, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
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
%struct.dir_context = type { ptr, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.43, %struct.list_head, %struct.list_head, %union.anon.44 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.41 }
%union.anon.41 = type { i64 }
%union.anon.43 = type { %struct.list_head }
%union.anon.44 = type { %struct.hlist_node }

@I30 = dso_local global [5 x i16] [i16 36, i16 73, i16 51, i16 48, i16 0], align 2
@__func__.ntfs_lookup_inode_by_name = private unnamed_addr constant [26 x i8] c"ntfs_lookup_inode_by_name\00", align 1
@.str = private unnamed_addr constant [45 x i8] c"map_mft_record() failed with error code %ld.\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Index root attribute missing in directory inode 0x%lx.\00", align 1
@.str.2 = private unnamed_addr constant [171 x i8] c"Found already allocated name in phase 1. Please run chkdsk and if that doesn't find any errors please report you saw this message to linux-ntfs-dev@lists.sourceforge.net.\00", align 1
@.str.3 = private unnamed_addr constant [108 x i8] c"No index allocation attribute but index entry requires one. Directory inode 0x%lx is corrupt or driver bug.\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Failed to map directory index page, error %ld.\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"Out of bounds check failed. Corrupt directory inode 0x%lx or driver bug.\00", align 1
@.str.6 = private unnamed_addr constant [86 x i8] c"Directory index record with vcn 0x%llx is corrupt.  Corrupt inode 0x%lx.  Run chkdsk.\00", align 1
@.str.7 = private unnamed_addr constant [125 x i8] c"Actual VCN (0x%llx) of index buffer is different from expected VCN (0x%llx). Directory inode 0x%lx is corrupt or driver bug.\00", align 1
@.str.8 = private unnamed_addr constant [159 x i8] c"Index buffer (VCN 0x%llx) of directory inode 0x%lx has a size (%u) differing from the directory specified size (%u). Directory inode is corrupt or driver bug.\00", align 1
@.str.9 = private unnamed_addr constant [139 x i8] c"Index buffer (VCN 0x%llx) of directory inode 0x%lx crosses page boundary. Impossible! Cannot access! This is probably a bug in the driver.\00", align 1
@.str.10 = private unnamed_addr constant [81 x i8] c"Size of index buffer (VCN 0x%llx) of directory inode 0x%lx exceeds maximum size.\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"Index entry out of bounds in directory inode 0x%lx.\00", align 1
@.str.12 = private unnamed_addr constant [171 x i8] c"Found already allocated name in phase 2. Please run chkdsk and if that doesn't find any errors please report you saw this message to linux-ntfs-dev@lists.sourceforge.net.\00", align 1
@.str.13 = private unnamed_addr constant [75 x i8] c"Index entry with child node found in a leaf node in directory inode 0x%lx.\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"Negative child node vcn in directory inode 0x%lx.\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"Corrupt directory.  Aborting lookup.\00", align 1
@ntfs_dir_ops = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr @ntfs_readdir, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ntfs_dir_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@__func__.ntfs_readdir = private unnamed_addr constant [13 x i8] c"ntfs_readdir\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"Failed to get bitmap attribute.\00", align 1
@.str.17 = private unnamed_addr constant [61 x i8] c"Current index allocation position exceeds index bitmap size.\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"Reading index bitmap failed.\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"Reading index allocation data failed.\00", align 1
@.str.20 = private unnamed_addr constant [126 x i8] c"Actual VCN (0x%llx) of index buffer is different from expected VCN (0x%llx). Directory inode 0x%lx is corrupt or driver bug. \00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@__func__.ntfs_filldir = private unnamed_addr constant [13 x i8] c"ntfs_filldir\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"Skipping unrepresentable inode 0x%llx.\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @ntfs_lookup_inode_by_name(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.big_ntfs_inode, ptr %0, i32 0, i32 1
  %9 = load i16, ptr %8, align 8
  %10 = and i16 %9, -4096
  %11 = icmp eq i16 %10, 16384
  br i1 %11, label %13, label %12, !prof !8

12:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 86, 0\0A.popsection", ""() #7, !srcloc !9
  unreachable

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 3
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18, !prof !8

18:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 87, 0\0A.popsection", ""() #7, !srcloc !10
  unreachable

19:                                               ; preds = %13
  %20 = tail call ptr @map_mft_record(ptr noundef %0) #7
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = ptrtoint ptr %20 to i32
  %24 = sub i32 0, %23
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup_inode_by_name, ptr noundef %7, ptr noundef nonnull @.str, i32 noundef %24) #7
  %25 = sext i32 %23 to i64
  br label %518

26:                                               ; preds = %19
  %27 = tail call ptr @ntfs_attr_get_search_ctx(ptr noundef %0, ptr noundef %20) #7
  %28 = icmp eq ptr %27, null
  br i1 %28, label %503, label %29, !prof !11

29:                                               ; preds = %26
  %30 = tail call i32 @ntfs_attr_lookup(i32 noundef 144, ptr noundef nonnull @I30, i32 noundef 4, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %27) #7
  switch i32 %30, label %482 [
    i32 0, label %34
    i32 -2, label %31
  ], !prof !12

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup_inode_by_name, ptr noundef %7, ptr noundef nonnull @.str.1, i32 noundef %33) #7
  br label %498

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %27, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ATTR_RECORD, ptr %36, i32 0, i32 7
  %38 = getelementptr inbounds %struct.anon.84, ptr %37, i32 0, i32 1
  %39 = load i16, ptr %38, align 1
  %40 = zext i16 %39 to i32
  %41 = getelementptr i8, ptr %36, i32 %40
  %42 = getelementptr inbounds %struct.INDEX_ROOT, ptr %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.INDEX_HEADER, ptr %42, i32 0, i32 1
  %44 = load i32, ptr %43, align 1
  %45 = getelementptr i8, ptr %42, i32 %44
  %46 = load i32, ptr %42, align 1
  %47 = getelementptr i8, ptr %42, i32 %46
  %48 = load ptr, ptr %27, align 4
  %49 = icmp ult ptr %47, %48
  %50 = getelementptr i8, ptr %47, i32 16
  %51 = icmp ugt ptr %50, %45
  %52 = select i1 %49, i1 true, i1 %51
  br i1 %52, label %514, label %53

53:                                               ; preds = %34
  %54 = getelementptr inbounds %struct.ntfs_volume, ptr %6, i32 0, i32 25
  %55 = getelementptr inbounds %struct.ntfs_volume, ptr %6, i32 0, i32 24
  %56 = getelementptr inbounds %struct.ntfs_volume, ptr %6, i32 0, i32 2
  br label %57

57:                                               ; preds = %146, %53
  %58 = phi ptr [ null, %53 ], [ %134, %146 ]
  %59 = phi ptr [ %47, %53 ], [ %150, %146 ]
  %60 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %59, i32 0, i32 2
  %61 = load i16, ptr %60, align 1
  %62 = zext i16 %61 to i32
  %63 = getelementptr i8, ptr %59, i32 %62
  %64 = icmp ugt ptr %63, %45
  br i1 %64, label %514, label %65

65:                                               ; preds = %57
  %66 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %59, i32 0, i32 3
  %67 = load i16, ptr %66, align 1
  %68 = and i16 %67, 2
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %70, label %156

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %59, i32 1
  %72 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %59, i32 0, i32 5, i32 1, i32 48
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = load ptr, ptr %54, align 4
  %76 = load i32, ptr %55, align 8
  %77 = tail call zeroext i1 @ntfs_are_names_equal(ptr noundef %1, i32 noundef %2, ptr noundef %71, i32 noundef %74, i32 noundef 0, ptr noundef %75, i32 noundef %76) #7
  br i1 %77, label %78, label %98

78:                                               ; preds = %140, %70
  %79 = phi ptr [ %58, %70 ], [ %134, %140 ]
  %80 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %59, i32 0, i32 5, i32 1, i32 49
  %81 = load i8, ptr %80, align 1
  %82 = icmp eq i8 %81, 2
  br i1 %82, label %83, label %94

83:                                               ; preds = %78
  %84 = icmp eq ptr %79, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %83
  %86 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %87 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %86, i32 noundef 3136, i32 noundef 10) #8
  %88 = icmp eq ptr %87, null
  br i1 %88, label %492, label %89

89:                                               ; preds = %85, %83
  %90 = phi ptr [ %79, %83 ], [ %87, %85 ]
  %91 = load i64, ptr %59, align 1
  store i64 %91, ptr %90, align 1
  %92 = getelementptr inbounds %struct.ntfs_name, ptr %90, i32 0, i32 1
  store i8 2, ptr %92, align 1
  %93 = getelementptr inbounds %struct.ntfs_name, ptr %90, i32 0, i32 2
  store i8 0, ptr %93, align 1
  br label %95

94:                                               ; preds = %78
  tail call void @kfree(ptr noundef %79) #7
  br label %95

95:                                               ; preds = %94, %89
  %96 = phi ptr [ null, %94 ], [ %90, %89 ]
  store ptr %96, ptr %3, align 4
  %97 = load i64, ptr %59, align 1
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %27) #7
  tail call void @unmap_mft_record(ptr noundef %0) #7
  br label %518

98:                                               ; preds = %70
  %99 = load volatile i32, ptr %56, align 4
  %100 = and i32 %99, 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %133

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %59, i32 0, i32 5, i32 1, i32 49
  %104 = load i8, ptr %103, align 1
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %133, label %106

106:                                              ; preds = %102
  %107 = load i8, ptr %72, align 1
  %108 = zext i8 %107 to i32
  %109 = load ptr, ptr %54, align 4
  %110 = load i32, ptr %55, align 8
  %111 = tail call zeroext i1 @ntfs_are_names_equal(ptr noundef %1, i32 noundef %2, ptr noundef %71, i32 noundef %108, i32 noundef 1, ptr noundef %109, i32 noundef %110) #7
  br i1 %111, label %112, label %133

112:                                              ; preds = %106
  %113 = load i8, ptr %103, align 1
  %114 = load i8, ptr %72, align 1
  %115 = icmp eq ptr %58, null
  br i1 %115, label %116, label %132

116:                                              ; preds = %112
  %117 = icmp eq i8 %113, 2
  %118 = zext i8 %114 to i32
  %119 = shl nuw nsw i32 %118, 1
  %120 = add nuw nsw i32 %119, 10
  %121 = select i1 %117, i32 10, i32 %120
  %122 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %121, i32 noundef 3136) #9
  %123 = icmp eq ptr %122, null
  br i1 %123, label %492, label %124

124:                                              ; preds = %116
  %125 = load i64, ptr %59, align 1
  store i64 %125, ptr %122, align 64
  %126 = getelementptr inbounds %struct.ntfs_name, ptr %122, i32 0, i32 1
  store i8 %113, ptr %126, align 8
  %127 = getelementptr inbounds %struct.ntfs_name, ptr %122, i32 0, i32 2
  br i1 %117, label %130, label %128

128:                                              ; preds = %124
  store i8 %114, ptr %127, align 1
  %129 = getelementptr inbounds %struct.ntfs_name, ptr %122, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %129, ptr align 1 %71, i32 %119, i1 false)
  br label %131

130:                                              ; preds = %124
  store i8 0, ptr %127, align 1
  br label %131

131:                                              ; preds = %130, %128
  store ptr %122, ptr %3, align 4
  br label %133

132:                                              ; preds = %112
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup_inode_by_name, ptr noundef %7, ptr noundef nonnull @.str.2) #7
  br label %514

133:                                              ; preds = %131, %106, %102, %98
  %134 = phi ptr [ %58, %98 ], [ %58, %106 ], [ %58, %102 ], [ %122, %131 ]
  %135 = load i8, ptr %72, align 1
  %136 = zext i8 %135 to i32
  %137 = load ptr, ptr %54, align 4
  %138 = load i32, ptr %55, align 8
  %139 = tail call i32 @ntfs_collate_names(ptr noundef %1, i32 noundef %2, ptr noundef %71, i32 noundef %136, i32 noundef 1, i32 noundef 1, ptr noundef %137, i32 noundef %138) #7
  switch i32 %139, label %146 [
    i32 -1, label %156
    i32 0, label %140
  ]

140:                                              ; preds = %133
  %141 = load i8, ptr %72, align 1
  %142 = zext i8 %141 to i32
  %143 = load ptr, ptr %54, align 4
  %144 = load i32, ptr %55, align 8
  %145 = tail call i32 @ntfs_collate_names(ptr noundef %1, i32 noundef %2, ptr noundef %71, i32 noundef %142, i32 noundef 1, i32 noundef 0, ptr noundef %143, i32 noundef %144) #7
  switch i32 %145, label %146 [
    i32 -1, label %156
    i32 0, label %78
  ]

146:                                              ; preds = %140, %133
  %147 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %59, i32 0, i32 1
  %148 = load i16, ptr %147, align 1
  %149 = zext i16 %148 to i32
  %150 = getelementptr i8, ptr %59, i32 %149
  %151 = load ptr, ptr %27, align 4
  %152 = icmp ult ptr %150, %151
  %153 = getelementptr i8, ptr %150, i32 16
  %154 = icmp ugt ptr %153, %45
  %155 = select i1 %152, i1 true, i1 %154
  br i1 %155, label %514, label %57

156:                                              ; preds = %140, %133, %65
  %157 = phi ptr [ %58, %65 ], [ %134, %133 ], [ %134, %140 ]
  %158 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %59, i32 0, i32 3
  %159 = load i16, ptr %158, align 1
  %160 = and i16 %159, 1
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %156
  %163 = icmp eq ptr %157, null
  br i1 %163, label %492, label %164

164:                                              ; preds = %162
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %27) #7
  tail call void @unmap_mft_record(ptr noundef %0) #7
  %165 = load i64, ptr %157, align 1
  br label %518

166:                                              ; preds = %156
  %167 = load volatile i32, ptr %14, align 4
  %168 = and i32 %167, 32
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 4
  %172 = load i32, ptr %171, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup_inode_by_name, ptr noundef %7, ptr noundef nonnull @.str.3, i32 noundef %172) #7
  br label %488

173:                                              ; preds = %166
  %174 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %59, i32 0, i32 1
  %175 = load i16, ptr %174, align 1
  %176 = zext i16 %175 to i32
  %177 = getelementptr i8, ptr %59, i32 %176
  %178 = getelementptr i8, ptr %177, i32 -8
  %179 = load i64, ptr %178, align 8
  %180 = getelementptr inbounds %struct.big_ntfs_inode, ptr %0, i32 0, i32 1, i32 9
  %181 = load ptr, ptr %180, align 8
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %27) #7
  tail call void @unmap_mft_record(ptr noundef %0) #7
  %182 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 18
  %183 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 18, i32 0, i32 3
  %184 = load i8, ptr %183, align 1
  %185 = zext i8 %184 to i64
  %186 = shl i64 %179, %185
  %187 = lshr i64 %186, 12
  %188 = trunc i64 %187 to i32
  %189 = tail call fastcc ptr @ntfs_map_page(ptr noundef %181, i32 noundef %188)
  %190 = icmp ugt ptr %189, inttoptr (i32 -4096 to ptr)
  br i1 %190, label %193, label %191

191:                                              ; preds = %173
  %192 = getelementptr inbounds %struct.ntfs_volume, ptr %6, i32 0, i32 13
  br label %198

193:                                              ; preds = %439, %173
  %194 = phi ptr [ %157, %173 ], [ %412, %439 ]
  %195 = phi ptr [ %189, %173 ], [ %445, %439 ]
  %196 = ptrtoint ptr %195 to i32
  %197 = sub i32 0, %196
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup_inode_by_name, ptr noundef %7, ptr noundef nonnull @.str.4, i32 noundef %197) #7
  br label %482

198:                                              ; preds = %439, %191
  %199 = phi ptr [ %189, %191 ], [ %445, %439 ]
  %200 = phi ptr [ %157, %191 ], [ %412, %439 ]
  %201 = phi i64 [ %179, %191 ], [ %431, %439 ]
  %202 = getelementptr inbounds %struct.page, ptr %199, i32 0, i32 1
  %203 = load volatile i32, ptr %202, align 4
  %204 = and i32 %203, 1
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %208, label %206, !prof !8

206:                                              ; preds = %198
  %207 = add i32 %203, -1
  br label %210

208:                                              ; preds = %198
  %209 = ptrtoint ptr %199 to i32
  br label %210

210:                                              ; preds = %208, %206
  %211 = phi i32 [ %207, %206 ], [ %209, %208 ]
  %212 = inttoptr i32 %211 to ptr
  %213 = load volatile i32, ptr %212, align 4
  %214 = and i32 %213, 1
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %210
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %212) #7, !srcloc !13
  %217 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %212, ptr %212, i32 1, ptr elementtype(i32) %212) #7, !srcloc !14
  %218 = extractvalue { i32, i32, i32 } %217, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  %219 = and i32 %218, 1
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %222, label %221

221:                                              ; preds = %216, %210
  tail call void @__folio_lock(ptr noundef %212) #7
  br label %222

222:                                              ; preds = %221, %216
  %223 = tail call ptr @page_address(ptr noundef %199) #7
  %224 = getelementptr i8, ptr %223, i32 4096
  br label %225

225:                                              ; preds = %433, %222
  %226 = phi i64 [ %201, %222 ], [ %431, %433 ]
  %227 = phi ptr [ %200, %222 ], [ %412, %433 ]
  %228 = load i8, ptr %183, align 1
  %229 = zext i8 %228 to i64
  %230 = shl i64 %226, %229
  %231 = trunc i64 %230 to i32
  %232 = and i32 %231, 4095
  %233 = getelementptr i8, ptr %223, i32 %232
  %234 = icmp ult ptr %233, %223
  %235 = icmp ugt ptr %233, %224
  %236 = or i1 %234, %235
  br i1 %236, label %237, label %240

237:                                              ; preds = %225
  %238 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 4
  %239 = load i32, ptr %238, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup_inode_by_name, ptr noundef %7, ptr noundef nonnull @.str.5, i32 noundef %239) #7
  br label %454

240:                                              ; preds = %225
  %241 = load i32, ptr %233, align 1
  %242 = icmp eq i32 %241, 1480871497
  br i1 %242, label %246, label %243, !prof !8

243:                                              ; preds = %240
  %244 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 4
  %245 = load i32, ptr %244, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup_inode_by_name, ptr noundef %7, ptr noundef nonnull @.str.6, i64 noundef %226, i32 noundef %245) #7
  br label %454

246:                                              ; preds = %240
  %247 = getelementptr inbounds %struct.INDEX_BLOCK, ptr %233, i32 0, i32 4
  %248 = load i64, ptr %247, align 1
  %249 = icmp eq i64 %248, %226
  br i1 %249, label %253, label %250

250:                                              ; preds = %246
  %251 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 4
  %252 = load i32, ptr %251, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup_inode_by_name, ptr noundef %7, ptr noundef nonnull @.str.7, i64 noundef %248, i64 noundef %226, i32 noundef %252) #7
  br label %454

253:                                              ; preds = %246
  %254 = getelementptr inbounds %struct.INDEX_BLOCK, ptr %233, i32 0, i32 5
  %255 = getelementptr inbounds %struct.INDEX_HEADER, ptr %254, i32 0, i32 2
  %256 = load i32, ptr %255, align 1
  %257 = add i32 %256, 24
  %258 = load i32, ptr %182, align 8
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %263, label %260

260:                                              ; preds = %253
  %261 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 4
  %262 = load i32, ptr %261, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup_inode_by_name, ptr noundef %7, ptr noundef nonnull @.str.8, i64 noundef %226, i32 noundef %262, i32 noundef %257, i32 noundef %258) #7
  br label %454

263:                                              ; preds = %253
  %264 = getelementptr i8, ptr %233, i32 %257
  %265 = icmp ugt ptr %264, %224
  br i1 %265, label %266, label %269

266:                                              ; preds = %263
  %267 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 4
  %268 = load i32, ptr %267, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup_inode_by_name, ptr noundef %7, ptr noundef nonnull @.str.9, i64 noundef %226, i32 noundef %268) #7
  br label %454

269:                                              ; preds = %263
  %270 = getelementptr inbounds %struct.INDEX_HEADER, ptr %254, i32 0, i32 1
  %271 = load i32, ptr %270, align 1
  %272 = getelementptr i8, ptr %254, i32 %271
  %273 = icmp ugt ptr %272, %264
  br i1 %273, label %274, label %277

274:                                              ; preds = %269
  %275 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 4
  %276 = load i32, ptr %275, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup_inode_by_name, ptr noundef %7, ptr noundef nonnull @.str.10, i64 noundef %226, i32 noundef %276) #7
  br label %454

277:                                              ; preds = %269
  %278 = load i32, ptr %254, align 1
  %279 = getelementptr i8, ptr %254, i32 %278
  %280 = icmp ult ptr %279, %233
  %281 = getelementptr i8, ptr %279, i32 16
  %282 = icmp ugt ptr %281, %272
  %283 = select i1 %280, i1 true, i1 %282
  br i1 %283, label %292, label %284

284:                                              ; preds = %402, %277
  %285 = phi ptr [ %390, %402 ], [ %227, %277 ]
  %286 = phi ptr [ %406, %402 ], [ %279, %277 ]
  %287 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %286, i32 0, i32 2
  %288 = load i16, ptr %287, align 1
  %289 = zext i16 %288 to i32
  %290 = getelementptr i8, ptr %286, i32 %289
  %291 = icmp ugt ptr %290, %272
  br i1 %291, label %292, label %296

292:                                              ; preds = %402, %284, %277
  %293 = phi ptr [ %285, %284 ], [ %390, %402 ], [ %227, %277 ]
  %294 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 4
  %295 = load i32, ptr %294, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup_inode_by_name, ptr noundef %7, ptr noundef nonnull @.str.11, i32 noundef %295) #7
  br label %454

296:                                              ; preds = %284
  %297 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %286, i32 0, i32 3
  %298 = load i16, ptr %297, align 1
  %299 = and i16 %298, 2
  %300 = icmp eq i16 %299, 0
  br i1 %300, label %301, label %411

301:                                              ; preds = %296
  %302 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %286, i32 1
  %303 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %286, i32 0, i32 5, i32 1, i32 48
  %304 = load i8, ptr %303, align 1
  %305 = zext i8 %304 to i32
  %306 = load ptr, ptr %54, align 4
  %307 = load i32, ptr %55, align 8
  %308 = tail call zeroext i1 @ntfs_are_names_equal(ptr noundef %1, i32 noundef %2, ptr noundef %302, i32 noundef %305, i32 noundef 0, ptr noundef %306, i32 noundef %307) #7
  br i1 %308, label %309, label %329

309:                                              ; preds = %396, %301
  %310 = phi ptr [ %285, %301 ], [ %390, %396 ]
  %311 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %286, i32 0, i32 5, i32 1, i32 49
  %312 = load i8, ptr %311, align 1
  %313 = icmp eq i8 %312, 2
  br i1 %313, label %314, label %325

314:                                              ; preds = %309
  %315 = icmp eq ptr %310, null
  br i1 %315, label %316, label %320

316:                                              ; preds = %314
  %317 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %318 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %317, i32 noundef 3136, i32 noundef 10) #8
  %319 = icmp eq ptr %318, null
  br i1 %319, label %454, label %320

320:                                              ; preds = %316, %314
  %321 = phi ptr [ %310, %314 ], [ %318, %316 ]
  %322 = load i64, ptr %286, align 1
  store i64 %322, ptr %321, align 1
  %323 = getelementptr inbounds %struct.ntfs_name, ptr %321, i32 0, i32 1
  store i8 2, ptr %323, align 1
  %324 = getelementptr inbounds %struct.ntfs_name, ptr %321, i32 0, i32 2
  store i8 0, ptr %324, align 1
  br label %326

325:                                              ; preds = %309
  tail call void @kfree(ptr noundef %310) #7
  br label %326

326:                                              ; preds = %325, %320
  %327 = phi ptr [ null, %325 ], [ %321, %320 ]
  store ptr %327, ptr %3, align 4
  %328 = load i64, ptr %286, align 1
  tail call void @unlock_page(ptr noundef %199) #7
  tail call fastcc void @ntfs_unmap_page(ptr noundef %199)
  br label %518

329:                                              ; preds = %301
  %330 = load volatile i32, ptr %56, align 4
  %331 = and i32 %330, 4
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %389

333:                                              ; preds = %329
  %334 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %286, i32 0, i32 5, i32 1, i32 49
  %335 = load i8, ptr %334, align 1
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %389, label %337

337:                                              ; preds = %333
  %338 = load i8, ptr %303, align 1
  %339 = zext i8 %338 to i32
  %340 = load ptr, ptr %54, align 4
  %341 = load i32, ptr %55, align 8
  %342 = tail call zeroext i1 @ntfs_are_names_equal(ptr noundef %1, i32 noundef %2, ptr noundef %302, i32 noundef %339, i32 noundef 1, ptr noundef %340, i32 noundef %341) #7
  br i1 %342, label %343, label %389

343:                                              ; preds = %337
  %344 = load i8, ptr %334, align 1
  %345 = load i8, ptr %303, align 1
  %346 = icmp eq ptr %285, null
  br i1 %346, label %373, label %347

347:                                              ; preds = %343
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup_inode_by_name, ptr noundef %7, ptr noundef nonnull @.str.12) #7
  tail call void @unlock_page(ptr noundef %199) #7
  %348 = load i32, ptr %199, align 4
  %349 = lshr i32 %348, 30
  %350 = icmp eq i32 %349, 2
  br i1 %350, label %356, label %351

351:                                              ; preds = %347
  %352 = icmp ne i32 %349, 3
  %353 = load i32, ptr @movable_zone, align 4
  %354 = icmp ne i32 %353, 2
  %355 = select i1 %352, i1 true, i1 %354
  br i1 %355, label %357, label %356

356:                                              ; preds = %351, %347
  tail call void @kunmap_high(ptr noundef %199) #7
  br label %357

357:                                              ; preds = %356, %351
  %358 = load volatile i32, ptr %202, align 4
  %359 = and i32 %358, 1
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %363, label %361, !prof !8

361:                                              ; preds = %357
  %362 = add i32 %358, -1
  br label %365

363:                                              ; preds = %357
  %364 = ptrtoint ptr %199 to i32
  br label %365

365:                                              ; preds = %363, %361
  %366 = phi i32 [ %362, %361 ], [ %364, %363 ]
  %367 = inttoptr i32 %366 to ptr
  %368 = getelementptr inbounds %struct.page, ptr %367, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %368) #7, !srcloc !13
  %369 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %368, ptr %368, i32 1, ptr elementtype(i32) %368) #7, !srcloc !17
  %370 = extractvalue { i32, i32 } %369, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !18
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %514

372:                                              ; preds = %365
  tail call void @__put_page(ptr noundef %367) #7
  br label %514

373:                                              ; preds = %343
  %374 = icmp eq i8 %344, 2
  %375 = zext i8 %345 to i32
  %376 = shl nuw nsw i32 %375, 1
  %377 = add nuw nsw i32 %376, 10
  %378 = select i1 %374, i32 10, i32 %377
  %379 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %378, i32 noundef 3136) #9
  %380 = icmp eq ptr %379, null
  br i1 %380, label %454, label %381

381:                                              ; preds = %373
  %382 = load i64, ptr %286, align 1
  store i64 %382, ptr %379, align 64
  %383 = getelementptr inbounds %struct.ntfs_name, ptr %379, i32 0, i32 1
  store i8 %344, ptr %383, align 8
  %384 = getelementptr inbounds %struct.ntfs_name, ptr %379, i32 0, i32 2
  br i1 %374, label %387, label %385

385:                                              ; preds = %381
  store i8 %345, ptr %384, align 1
  %386 = getelementptr inbounds %struct.ntfs_name, ptr %379, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %386, ptr align 1 %302, i32 %376, i1 false)
  br label %388

387:                                              ; preds = %381
  store i8 0, ptr %384, align 1
  br label %388

388:                                              ; preds = %387, %385
  store ptr %379, ptr %3, align 4
  br label %389

389:                                              ; preds = %388, %337, %333, %329
  %390 = phi ptr [ %285, %329 ], [ %285, %337 ], [ %285, %333 ], [ %379, %388 ]
  %391 = load i8, ptr %303, align 1
  %392 = zext i8 %391 to i32
  %393 = load ptr, ptr %54, align 4
  %394 = load i32, ptr %55, align 8
  %395 = tail call i32 @ntfs_collate_names(ptr noundef %1, i32 noundef %2, ptr noundef %302, i32 noundef %392, i32 noundef 1, i32 noundef 1, ptr noundef %393, i32 noundef %394) #7
  switch i32 %395, label %402 [
    i32 -1, label %411
    i32 0, label %396
  ]

396:                                              ; preds = %389
  %397 = load i8, ptr %303, align 1
  %398 = zext i8 %397 to i32
  %399 = load ptr, ptr %54, align 4
  %400 = load i32, ptr %55, align 8
  %401 = tail call i32 @ntfs_collate_names(ptr noundef %1, i32 noundef %2, ptr noundef %302, i32 noundef %398, i32 noundef 1, i32 noundef 0, ptr noundef %399, i32 noundef %400) #7
  switch i32 %401, label %402 [
    i32 -1, label %411
    i32 0, label %309
  ]

402:                                              ; preds = %396, %389
  %403 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %286, i32 0, i32 1
  %404 = load i16, ptr %403, align 1
  %405 = zext i16 %404 to i32
  %406 = getelementptr i8, ptr %286, i32 %405
  %407 = icmp ult ptr %406, %233
  %408 = getelementptr i8, ptr %406, i32 16
  %409 = icmp ugt ptr %408, %272
  %410 = select i1 %407, i1 true, i1 %409
  br i1 %410, label %292, label %284

411:                                              ; preds = %396, %389, %296
  %412 = phi ptr [ %285, %296 ], [ %390, %389 ], [ %390, %396 ]
  %413 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %286, i32 0, i32 3
  %414 = load i16, ptr %413, align 1
  %415 = and i16 %414, 1
  %416 = icmp eq i16 %415, 0
  br i1 %416, label %450, label %417

417:                                              ; preds = %411
  %418 = getelementptr inbounds %struct.INDEX_HEADER, ptr %254, i32 0, i32 3
  %419 = load i8, ptr %418, align 1
  %420 = and i8 %419, 1
  %421 = icmp eq i8 %420, 0
  br i1 %421, label %422, label %425

422:                                              ; preds = %417
  %423 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 4
  %424 = load i32, ptr %423, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup_inode_by_name, ptr noundef %7, ptr noundef nonnull @.str.13, i32 noundef %424) #7
  br label %454

425:                                              ; preds = %417
  %426 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %286, i32 0, i32 1
  %427 = load i16, ptr %426, align 1
  %428 = zext i16 %427 to i32
  %429 = getelementptr i8, ptr %286, i32 -8
  %430 = getelementptr i8, ptr %429, i32 %428
  %431 = load i64, ptr %430, align 8
  %432 = icmp sgt i64 %431, -1
  br i1 %432, label %433, label %447

433:                                              ; preds = %425
  %434 = load i8, ptr %192, align 8
  %435 = zext i8 %434 to i64
  %436 = xor i64 %431, %226
  %437 = shl i64 %436, %435
  %438 = icmp ult i64 %437, 4096
  br i1 %438, label %225, label %439

439:                                              ; preds = %433
  tail call void @unlock_page(ptr noundef %199) #7
  tail call fastcc void @ntfs_unmap_page(ptr noundef %199)
  %440 = load i8, ptr %183, align 1
  %441 = zext i8 %440 to i64
  %442 = shl i64 %431, %441
  %443 = lshr i64 %442, 12
  %444 = trunc i64 %443 to i32
  %445 = tail call fastcc ptr @ntfs_map_page(ptr noundef %181, i32 noundef %444)
  %446 = icmp ugt ptr %445, inttoptr (i32 -4096 to ptr)
  br i1 %446, label %193, label %198

447:                                              ; preds = %425
  %448 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 4
  %449 = load i32, ptr %448, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup_inode_by_name, ptr noundef %7, ptr noundef nonnull @.str.14, i32 noundef %449) #7
  br label %454

450:                                              ; preds = %411
  %451 = icmp eq ptr %412, null
  br i1 %451, label %454, label %452

452:                                              ; preds = %450
  tail call void @unlock_page(ptr noundef %199) #7
  tail call fastcc void @ntfs_unmap_page(ptr noundef %199)
  %453 = load i64, ptr %412, align 1
  br label %518

454:                                              ; preds = %450, %447, %422, %373, %316, %292, %274, %266, %260, %250, %243, %237
  %455 = phi i32 [ 0, %237 ], [ 0, %243 ], [ 0, %250 ], [ 0, %260 ], [ 0, %266 ], [ 0, %274 ], [ 0, %292 ], [ 0, %422 ], [ 0, %447 ], [ -12, %316 ], [ -2, %450 ], [ -12, %373 ]
  %456 = phi ptr [ %227, %237 ], [ %227, %243 ], [ %227, %250 ], [ %227, %260 ], [ %227, %266 ], [ %227, %274 ], [ %293, %292 ], [ %412, %422 ], [ %412, %447 ], [ null, %316 ], [ null, %450 ], [ null, %373 ]
  tail call void @unlock_page(ptr noundef %199) #7
  %457 = load i32, ptr %199, align 4
  %458 = lshr i32 %457, 30
  %459 = icmp eq i32 %458, 2
  br i1 %459, label %465, label %460

460:                                              ; preds = %454
  %461 = icmp ne i32 %458, 3
  %462 = load i32, ptr @movable_zone, align 4
  %463 = icmp ne i32 %462, 2
  %464 = select i1 %461, i1 true, i1 %463
  br i1 %464, label %466, label %465

465:                                              ; preds = %460, %454
  tail call void @kunmap_high(ptr noundef %199) #7
  br label %466

466:                                              ; preds = %465, %460
  %467 = load volatile i32, ptr %202, align 4
  %468 = and i32 %467, 1
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %472, label %470, !prof !8

470:                                              ; preds = %466
  %471 = add i32 %467, -1
  br label %474

472:                                              ; preds = %466
  %473 = ptrtoint ptr %199 to i32
  br label %474

474:                                              ; preds = %472, %470
  %475 = phi i32 [ %471, %470 ], [ %473, %472 ]
  %476 = inttoptr i32 %475 to ptr
  %477 = getelementptr inbounds %struct.page, ptr %476, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %477) #7, !srcloc !13
  %478 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %477, ptr %477, i32 1, ptr elementtype(i32) %477) #7, !srcloc !17
  %479 = extractvalue { i32, i32 } %478, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !18
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %481, label %482

481:                                              ; preds = %474
  tail call void @__put_page(ptr noundef %476) #7
  br label %482

482:                                              ; preds = %481, %474, %193, %29
  %483 = phi ptr [ null, %193 ], [ %20, %29 ], [ null, %474 ], [ null, %481 ]
  %484 = phi ptr [ null, %193 ], [ %27, %29 ], [ null, %474 ], [ null, %481 ]
  %485 = phi i32 [ %196, %193 ], [ %30, %29 ], [ %455, %474 ], [ %455, %481 ]
  %486 = phi ptr [ %194, %193 ], [ null, %29 ], [ %456, %474 ], [ %456, %481 ]
  %487 = icmp eq i32 %485, 0
  br i1 %487, label %488, label %492

488:                                              ; preds = %514, %482, %170
  %489 = phi ptr [ %157, %170 ], [ %486, %482 ], [ %517, %514 ]
  %490 = phi ptr [ %27, %170 ], [ %484, %482 ], [ %516, %514 ]
  %491 = phi ptr [ %20, %170 ], [ %483, %482 ], [ %515, %514 ]
  br label %492

492:                                              ; preds = %488, %482, %162, %116, %85
  %493 = phi ptr [ %489, %488 ], [ %486, %482 ], [ null, %85 ], [ null, %162 ], [ null, %116 ]
  %494 = phi ptr [ %490, %488 ], [ %484, %482 ], [ %27, %85 ], [ %27, %162 ], [ %27, %116 ]
  %495 = phi ptr [ %491, %488 ], [ %483, %482 ], [ %20, %85 ], [ %20, %162 ], [ %20, %116 ]
  %496 = phi i32 [ -5, %488 ], [ %485, %482 ], [ -12, %85 ], [ -2, %162 ], [ -12, %116 ]
  %497 = icmp eq ptr %494, null
  br i1 %497, label %503, label %498

498:                                              ; preds = %492, %31
  %499 = phi i32 [ -5, %31 ], [ %496, %492 ]
  %500 = phi ptr [ %20, %31 ], [ %495, %492 ]
  %501 = phi ptr [ %27, %31 ], [ %494, %492 ]
  %502 = phi ptr [ null, %31 ], [ %493, %492 ]
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %501) #7
  br label %503

503:                                              ; preds = %498, %492, %26
  %504 = phi i32 [ %499, %498 ], [ %496, %492 ], [ -12, %26 ]
  %505 = phi ptr [ %500, %498 ], [ %495, %492 ], [ %20, %26 ]
  %506 = phi ptr [ %502, %498 ], [ %493, %492 ], [ null, %26 ]
  %507 = icmp eq ptr %505, null
  br i1 %507, label %509, label %508

508:                                              ; preds = %503
  tail call void @unmap_mft_record(ptr noundef %0) #7
  br label %509

509:                                              ; preds = %508, %503
  %510 = icmp eq ptr %506, null
  br i1 %510, label %512, label %511

511:                                              ; preds = %509
  tail call void @kfree(ptr noundef nonnull %506) #7
  store ptr null, ptr %3, align 4
  br label %512

512:                                              ; preds = %511, %509
  %513 = sext i32 %504 to i64
  br label %518

514:                                              ; preds = %372, %365, %146, %132, %57, %34
  %515 = phi ptr [ %20, %132 ], [ null, %365 ], [ null, %372 ], [ %20, %34 ], [ %20, %57 ], [ %20, %146 ]
  %516 = phi ptr [ %27, %132 ], [ null, %365 ], [ null, %372 ], [ %27, %34 ], [ %27, %57 ], [ %27, %146 ]
  %517 = phi ptr [ %58, %132 ], [ %285, %365 ], [ %285, %372 ], [ null, %34 ], [ %134, %146 ], [ %58, %57 ]
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_lookup_inode_by_name, ptr noundef %7, ptr noundef nonnull @.str.15) #7
  br label %488

518:                                              ; preds = %512, %452, %326, %164, %95, %22
  %519 = phi i64 [ %25, %22 ], [ %513, %512 ], [ %453, %452 ], [ %328, %326 ], [ %165, %164 ], [ %97, %95 ]
  ret i64 %519
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @map_mft_record(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_attr_get_search_ctx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_attr_lookup(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ntfs_are_names_equal(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_attr_put_search_ctx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mft_record(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_collate_names(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ntfs_map_page(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = tail call ptr @read_cache_page(ptr noundef %0, i32 noundef %1, ptr noundef null, ptr noundef null) #7
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %59, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 4
  %7 = lshr i32 %6, 30
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = icmp ne i32 %7, 3
  %11 = load i32, ptr @movable_zone, align 4
  %12 = icmp ne i32 %11, 2
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = tail call ptr @page_address(ptr noundef %3) #7
  br label %18

16:                                               ; preds = %9, %5
  %17 = tail call ptr @kmap_high(ptr noundef %3) #7
  br label %18

18:                                               ; preds = %16, %14
  %19 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !8

23:                                               ; preds = %18
  %24 = add i32 %20, -1
  br label %27

25:                                               ; preds = %18
  %26 = ptrtoint ptr %3 to i32
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = inttoptr i32 %28 to ptr
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 256
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %59, label %33

33:                                               ; preds = %27
  %34 = load i32, ptr %3, align 4
  %35 = lshr i32 %34, 30
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = icmp ne i32 %35, 3
  %39 = load i32, ptr @movable_zone, align 4
  %40 = icmp ne i32 %39, 2
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %43, label %42

42:                                               ; preds = %37, %33
  tail call void @kunmap_high(ptr noundef %3) #7
  br label %43

43:                                               ; preds = %42, %37
  %44 = load volatile i32, ptr %19, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47, !prof !8

47:                                               ; preds = %43
  %48 = add i32 %44, -1
  br label %51

49:                                               ; preds = %43
  %50 = ptrtoint ptr %3 to i32
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = inttoptr i32 %52 to ptr
  %54 = getelementptr inbounds %struct.page, ptr %53, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %54) #7, !srcloc !13
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %54, ptr %54, i32 1, ptr elementtype(i32) %54) #7, !srcloc !17
  %56 = extractvalue { i32, i32 } %55, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !18
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  tail call void @__put_page(ptr noundef %53) #7
  br label %59

59:                                               ; preds = %58, %51, %27, %2
  %60 = phi ptr [ %3, %27 ], [ %3, %2 ], [ inttoptr (i32 -5 to ptr), %51 ], [ inttoptr (i32 -5 to ptr), %58 ]
  ret ptr %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ntfs_unmap_page(ptr noundef %0) unnamed_addr #3 {
  %2 = load i32, ptr %0, align 4
  %3 = lshr i32 %2, 30
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = icmp ne i32 %3, 3
  %7 = load i32, ptr @movable_zone, align 4
  %8 = icmp ne i32 %7, 2
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %5, %1
  tail call void @kunmap_high(ptr noundef %0) #7
  br label %11

11:                                               ; preds = %10, %5
  %12 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16, !prof !8

16:                                               ; preds = %11
  %17 = add i32 %13, -1
  br label %20

18:                                               ; preds = %11
  %19 = ptrtoint ptr %0 to i32
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = inttoptr i32 %21 to ptr
  %23 = getelementptr inbounds %struct.page, ptr %22, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #7, !srcloc !13
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 1, ptr elementtype(i32) %23) #7, !srcloc !17
  %25 = extractvalue { i32, i32 } %24, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !18
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  tail call void @__put_page(ptr noundef %22) #7
  br label %28

28:                                               ; preds = %27, %20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ntfs_readdir(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 22
  %12 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 13
  br label %13

13:                                               ; preds = %21, %2
  %14 = load volatile i32, ptr %11, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %17, %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !19
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !20
  %18 = load volatile i32, ptr %11, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %17

21:                                               ; preds = %17, %13
  %22 = phi i32 [ %14, %13 ], [ %18, %17 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !21
  %23 = load i64, ptr %12, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !22
  %24 = load volatile i32, ptr %11, align 4
  %25 = icmp eq i32 %24, %22
  br i1 %25, label %26, label %13

26:                                               ; preds = %21
  %27 = getelementptr i8, ptr %6, i32 -200
  %28 = getelementptr inbounds %struct.dir_context, ptr %1, i32 0, i32 1
  %29 = load i64, ptr %28, align 8
  %30 = getelementptr inbounds %struct.ntfs_volume, ptr %10, i32 0, i32 14
  %31 = load i32, ptr %30, align 4
  %32 = zext i32 %31 to i64
  %33 = add i64 %23, %32
  %34 = icmp slt i64 %29, %33
  br i1 %34, label %35, label %664

35:                                               ; preds = %26
  switch i64 %29, label %65 [
    i64 0, label %36
    i64 1, label %48
  ]

36:                                               ; preds = %35
  %37 = load ptr, ptr %1, align 8
  %38 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.dentry, ptr %39, i32 0, i32 5
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.inode, ptr %41, i32 0, i32 10
  %43 = load i32, ptr %42, align 4
  %44 = zext i32 %43 to i64
  %45 = tail call i32 %37(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef 1, i64 noundef 0, i64 noundef %44, i32 noundef 4) #7
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %664

47:                                               ; preds = %36
  store i64 1, ptr %28, align 8
  br label %48

48:                                               ; preds = %47, %35
  %49 = load ptr, ptr %1, align 8
  %50 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.dentry, ptr %51, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %52) #7
  %53 = getelementptr inbounds %struct.dentry, ptr %51, i32 0, i32 3
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.dentry, ptr %54, i32 0, i32 5
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.inode, ptr %56, i32 0, i32 10
  %58 = load i32, ptr %57, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !23
  %59 = load i16, ptr %52, align 4
  %60 = add i16 %59, 1
  store i16 %60, ptr %52, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !26
  %61 = zext i32 %58 to i64
  %62 = tail call i32 %49(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef 2, i64 noundef 1, i64 noundef %61, i32 noundef 4) #7
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %664

64:                                               ; preds = %48
  store i64 2, ptr %28, align 8
  br label %65

65:                                               ; preds = %64, %35
  %66 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %67 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %66, i32 noundef 3136, i32 noundef 1531) #8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %651, label %69, !prof !11

69:                                               ; preds = %65
  %70 = load i64, ptr %28, align 8
  %71 = load i32, ptr %30, align 4
  %72 = zext i32 %71 to i64
  %73 = icmp slt i64 %70, %72
  br i1 %73, label %74, label %193

74:                                               ; preds = %69
  %75 = tail call ptr @map_mft_record(ptr noundef %27) #7
  %76 = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = ptrtoint ptr %75 to i32
  br label %651

79:                                               ; preds = %74
  %80 = tail call ptr @ntfs_attr_get_search_ctx(ptr noundef %27, ptr noundef %75) #7
  %81 = icmp eq ptr %80, null
  br i1 %81, label %651, label %82, !prof !11

82:                                               ; preds = %79
  %83 = load i64, ptr %28, align 8
  %84 = trunc i64 %83 to i32
  %85 = tail call i32 @ntfs_attr_lookup(i32 noundef 144, ptr noundef nonnull @I30, i32 noundef 4, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %80) #7
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %90, label %87, !prof !8

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 10
  %89 = load i32, ptr %88, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_readdir, ptr noundef %8, ptr noundef nonnull @.str.1, i32 noundef %89) #7
  br label %651

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %80, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.ATTR_RECORD, ptr %92, i32 0, i32 7
  %94 = load i32, ptr %93, align 1
  %95 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %94, i32 noundef 3136) #9
  %96 = icmp eq ptr %95, null
  br i1 %96, label %651, label %97, !prof !11

97:                                               ; preds = %90
  %98 = load ptr, ptr %91, align 4
  %99 = getelementptr inbounds %struct.ATTR_RECORD, ptr %98, i32 0, i32 7
  %100 = getelementptr inbounds %struct.anon.84, ptr %99, i32 0, i32 1
  %101 = load i16, ptr %100, align 1
  %102 = zext i16 %101 to i32
  %103 = getelementptr i8, ptr %98, i32 %102
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %95, ptr align 1 %103, i32 %94, i1 false)
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %80) #7
  tail call void @unmap_mft_record(ptr noundef %27) #7
  %104 = getelementptr inbounds %struct.INDEX_ROOT, ptr %95, i32 0, i32 5
  %105 = getelementptr inbounds %struct.INDEX_ROOT, ptr %95, i32 0, i32 5, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr i8, ptr %104, i32 %106
  %108 = load i32, ptr %104, align 16
  %109 = getelementptr i8, ptr %104, i32 %108
  %110 = icmp ult ptr %109, %95
  %111 = getelementptr i8, ptr %109, i32 16
  %112 = icmp ugt ptr %111, %107
  %113 = select i1 %110, i1 true, i1 %112
  br i1 %113, label %651, label %114, !prof !27

114:                                              ; preds = %97
  %115 = ptrtoint ptr %95 to i32
  %116 = getelementptr inbounds %struct.ntfs_volume, ptr %10, i32 0, i32 2
  br label %117

117:                                              ; preds = %174, %114
  %118 = phi ptr [ %109, %114 ], [ %178, %174 ]
  %119 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %118, i32 0, i32 2
  %120 = load i16, ptr %119, align 1
  %121 = zext i16 %120 to i32
  %122 = getelementptr i8, ptr %118, i32 %121
  %123 = icmp ugt ptr %122, %107
  br i1 %123, label %651, label %124, !prof !11

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %118, i32 0, i32 3
  %126 = load i16, ptr %125, align 1
  %127 = and i16 %126, 2
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %129, label %183

129:                                              ; preds = %124
  %130 = ptrtoint ptr %118 to i32
  %131 = sub i32 %130, %115
  %132 = icmp slt i32 %131, %84
  br i1 %132, label %174, label %133

133:                                              ; preds = %129
  %134 = sext i32 %131 to i64
  store i64 %134, ptr %28, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store ptr %67, ptr %4, align 4
  %135 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %118, i32 0, i32 5, i32 1, i32 49
  %136 = load i8, ptr %135, align 1
  %137 = icmp eq i8 %136, 2
  br i1 %137, label %159, label %138

138:                                              ; preds = %133
  %139 = load i64, ptr %118, align 1
  %140 = trunc i64 %139 to i32
  %141 = icmp eq i32 %140, 5
  br i1 %141, label %159, label %142

142:                                              ; preds = %138
  %143 = icmp ult i32 %140, 16
  br i1 %143, label %144, label %148

144:                                              ; preds = %142
  %145 = load volatile i32, ptr %116, align 4
  %146 = and i32 %145, 2
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %159, label %148

148:                                              ; preds = %144, %142
  %149 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %118, i32 1
  %150 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %118, i32 0, i32 5, i32 1, i32 48
  %151 = load i8, ptr %150, align 1
  %152 = zext i8 %151 to i32
  %153 = call i32 @ntfs_ucstonls(ptr noundef %10, ptr noundef %149, i32 noundef %152, ptr noundef nonnull %4, i32 noundef 1531) #7
  %154 = icmp slt i32 %153, 1
  br i1 %154, label %155, label %160

155:                                              ; preds = %148
  %156 = load ptr, ptr %10, align 8
  %157 = load i64, ptr %118, align 1
  %158 = and i64 %157, 4294967295
  call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.ntfs_filldir, ptr noundef %156, ptr noundef nonnull @.str.23, i64 noundef %158) #7
  br label %159

159:                                              ; preds = %155, %144, %138, %133
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %174

160:                                              ; preds = %148
  %161 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %118, i32 0, i32 5, i32 1, i32 40
  %162 = load i32, ptr %161, align 1
  %163 = and i32 %162, 268435456
  %164 = icmp eq i32 %163, 0
  %165 = select i1 %164, i32 8, i32 4
  %166 = load i64, ptr %118, align 1
  %167 = load ptr, ptr %4, align 4
  %168 = and i64 %166, 4294967295
  %169 = load ptr, ptr %1, align 8
  %170 = load i64, ptr %28, align 8
  %171 = call i32 %169(ptr noundef %1, ptr noundef %167, i32 noundef %153, i64 noundef %170, i64 noundef %168, i32 noundef %165) #7
  %172 = icmp eq i32 %171, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br i1 %172, label %174, label %173

173:                                              ; preds = %160
  call void @kfree(ptr noundef nonnull %95) #7
  br label %585

174:                                              ; preds = %160, %159, %129
  %175 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %118, i32 0, i32 1
  %176 = load i16, ptr %175, align 1
  %177 = zext i16 %176 to i32
  %178 = getelementptr i8, ptr %118, i32 %177
  %179 = icmp ult ptr %178, %95
  %180 = getelementptr i8, ptr %178, i32 16
  %181 = icmp ugt ptr %180, %107
  %182 = select i1 %179, i1 true, i1 %181
  br i1 %182, label %651, label %117, !prof !27

183:                                              ; preds = %124
  call void @kfree(ptr noundef nonnull %95) #7
  %184 = getelementptr i8, ptr %6, i32 -176
  %185 = load volatile i32, ptr %184, align 4
  %186 = and i32 %185, 32
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %581, label %188

188:                                              ; preds = %183
  %189 = load i32, ptr %30, align 4
  %190 = zext i32 %189 to i64
  store i64 %190, ptr %28, align 8
  %191 = load i32, ptr %30, align 4
  %192 = zext i32 %191 to i64
  br label %193

193:                                              ; preds = %188, %69
  %194 = phi i64 [ %72, %69 ], [ %192, %188 ]
  %195 = phi i64 [ %70, %69 ], [ %190, %188 ]
  %196 = sub i64 %195, %194
  %197 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 9
  %198 = load ptr, ptr %197, align 8
  %199 = call ptr @ntfs_attr_iget(ptr noundef %6, i32 noundef 176, ptr noundef nonnull @I30, i32 noundef 4) #7
  %200 = icmp ugt ptr %199, inttoptr (i32 -4096 to ptr)
  br i1 %200, label %201, label %203

201:                                              ; preds = %193
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_readdir, ptr noundef %8, ptr noundef nonnull @.str.16) #7
  %202 = ptrtoint ptr %199 to i32
  br label %651

203:                                              ; preds = %193
  %204 = getelementptr inbounds %struct.inode, ptr %199, i32 0, i32 9
  %205 = load ptr, ptr %204, align 8
  %206 = getelementptr i8, ptr %6, i32 -36
  %207 = load i8, ptr %206, align 4
  %208 = zext i8 %207 to i64
  %209 = ashr i64 %196, %208
  %210 = getelementptr inbounds %struct.inode, ptr %199, i32 0, i32 22
  %211 = getelementptr inbounds %struct.inode, ptr %199, i32 0, i32 13
  br label %212

212:                                              ; preds = %220, %203
  %213 = load volatile i32, ptr %210, align 4
  %214 = and i32 %213, 1
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %220, label %216

216:                                              ; preds = %216, %212
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !19
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !20
  %217 = load volatile i32, ptr %210, align 4
  %218 = and i32 %217, 1
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %216

220:                                              ; preds = %216, %212
  %221 = phi i32 [ %213, %212 ], [ %217, %216 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !21
  %222 = load i64, ptr %211, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !22
  %223 = load volatile i32, ptr %210, align 4
  %224 = icmp eq i32 %223, %221
  br i1 %224, label %225, label %212

225:                                              ; preds = %220
  %226 = getelementptr i8, ptr %6, i32 -48
  %227 = ashr i64 %209, 3
  %228 = icmp slt i64 %227, %222
  br i1 %228, label %230, label %229, !prof !8

229:                                              ; preds = %225
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_readdir, ptr noundef %8, ptr noundef nonnull @.str.17) #7
  br label %617

230:                                              ; preds = %225
  %231 = and i64 %209, -32768
  %232 = lshr exact i64 %231, 15
  %233 = trunc i64 %232 to i32
  %234 = call fastcc ptr @ntfs_map_page(ptr noundef %205, i32 noundef %233)
  %235 = icmp ugt ptr %234, inttoptr (i32 -4096 to ptr)
  br i1 %235, label %241, label %236

236:                                              ; preds = %230
  %237 = trunc i64 %209 to i32
  %238 = and i32 %237, 32767
  %239 = getelementptr i8, ptr %6, i32 -35
  %240 = getelementptr inbounds %struct.ntfs_volume, ptr %10, i32 0, i32 2
  br label %245

241:                                              ; preds = %274, %230
  %242 = phi ptr [ null, %230 ], [ %270, %274 ]
  %243 = phi ptr [ %234, %230 ], [ %278, %274 ]
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_readdir, ptr noundef %8, ptr noundef nonnull @.str.18) #7
  %244 = ptrtoint ptr %243 to i32
  br label %617

245:                                              ; preds = %274, %236
  %246 = phi ptr [ %234, %236 ], [ %278, %274 ]
  %247 = phi ptr [ null, %236 ], [ %271, %274 ]
  %248 = phi ptr [ null, %236 ], [ %270, %274 ]
  %249 = phi i32 [ %238, %236 ], [ 0, %274 ]
  %250 = phi i64 [ %231, %236 ], [ %275, %274 ]
  %251 = phi i64 [ -1, %236 ], [ %269, %274 ]
  %252 = phi i64 [ %196, %236 ], [ %255, %274 ]
  %253 = call ptr @page_address(ptr noundef %246) #7
  br label %254

254:                                              ; preds = %285, %245
  %255 = phi i64 [ %252, %245 ], [ %288, %285 ]
  %256 = phi i64 [ %251, %245 ], [ %269, %285 ]
  %257 = phi i32 [ %249, %245 ], [ %272, %285 ]
  %258 = phi ptr [ %248, %245 ], [ %270, %285 ]
  %259 = phi ptr [ %247, %245 ], [ %271, %285 ]
  %260 = lshr i32 %257, 3
  %261 = getelementptr i8, ptr %253, i32 %260
  %262 = load i8, ptr %261, align 1
  %263 = zext i8 %262 to i32
  %264 = and i32 %257, 7
  %265 = shl nuw nsw i32 1, %264
  %266 = and i32 %265, %263
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %289

268:                                              ; preds = %436, %254
  %269 = phi i64 [ %256, %254 ], [ %352, %436 ]
  %270 = phi ptr [ %258, %254 ], [ %353, %436 ]
  %271 = phi ptr [ %259, %254 ], [ %354, %436 ]
  %272 = add nuw nsw i32 %257, 1
  %273 = icmp eq i32 %257, 32767
  br i1 %273, label %274, label %280, !prof !11

274:                                              ; preds = %268
  call fastcc void @ntfs_unmap_page(ptr noundef %246)
  %275 = add i64 %250, 32768
  %276 = lshr exact i64 %275, 15
  %277 = trunc i64 %276 to i32
  %278 = call fastcc ptr @ntfs_map_page(ptr noundef %205, i32 noundef %277)
  %279 = icmp ugt ptr %278, inttoptr (i32 -4096 to ptr)
  br i1 %279, label %241, label %245

280:                                              ; preds = %268
  %281 = zext i32 %272 to i64
  %282 = add i64 %250, %281
  %283 = ashr i64 %282, 3
  %284 = icmp slt i64 %283, %23
  br i1 %284, label %285, label %577, !prof !8

285:                                              ; preds = %280
  %286 = load i8, ptr %206, align 4
  %287 = zext i8 %286 to i64
  %288 = shl i64 %282, %287
  br label %254

289:                                              ; preds = %254
  %290 = xor i64 %256, %255
  %291 = icmp ult i64 %290, 4096
  br i1 %291, label %351, label %292

292:                                              ; preds = %289
  %293 = icmp eq ptr %258, null
  br i1 %293, label %321, label %294, !prof !11

294:                                              ; preds = %292
  call void @unlock_page(ptr noundef nonnull %258) #7
  %295 = load i32, ptr %258, align 4
  %296 = lshr i32 %295, 30
  %297 = icmp eq i32 %296, 2
  br i1 %297, label %303, label %298

298:                                              ; preds = %294
  %299 = icmp ne i32 %296, 3
  %300 = load i32, ptr @movable_zone, align 4
  %301 = icmp ne i32 %300, 2
  %302 = select i1 %299, i1 true, i1 %301
  br i1 %302, label %304, label %303

303:                                              ; preds = %298, %294
  call void @kunmap_high(ptr noundef nonnull %258) #7
  br label %304

304:                                              ; preds = %303, %298
  %305 = getelementptr inbounds %struct.page, ptr %258, i32 0, i32 1
  %306 = load volatile i32, ptr %305, align 4
  %307 = and i32 %306, 1
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %311, label %309, !prof !8

309:                                              ; preds = %304
  %310 = add i32 %306, -1
  br label %313

311:                                              ; preds = %304
  %312 = ptrtoint ptr %258 to i32
  br label %313

313:                                              ; preds = %311, %309
  %314 = phi i32 [ %310, %309 ], [ %312, %311 ]
  %315 = inttoptr i32 %314 to ptr
  %316 = getelementptr inbounds %struct.page, ptr %315, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %316) #7, !srcloc !13
  %317 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %316, ptr %316, i32 1, ptr elementtype(i32) %316) #7, !srcloc !17
  %318 = extractvalue { i32, i32 } %317, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !18
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %321

320:                                              ; preds = %313
  call void @__put_page(ptr noundef %315) #7
  br label %321

321:                                              ; preds = %320, %313, %292
  %322 = lshr i64 %255, 12
  %323 = trunc i64 %322 to i32
  %324 = call fastcc ptr @ntfs_map_page(ptr noundef %198, i32 noundef %323)
  %325 = icmp ugt ptr %324, inttoptr (i32 -4096 to ptr)
  br i1 %325, label %326, label %328

326:                                              ; preds = %321
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_readdir, ptr noundef %8, ptr noundef nonnull @.str.19) #7
  %327 = ptrtoint ptr %324 to i32
  br label %586

328:                                              ; preds = %321
  %329 = getelementptr inbounds %struct.page, ptr %324, i32 0, i32 1
  %330 = load volatile i32, ptr %329, align 4
  %331 = and i32 %330, 1
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %335, label %333, !prof !8

333:                                              ; preds = %328
  %334 = add i32 %330, -1
  br label %337

335:                                              ; preds = %328
  %336 = ptrtoint ptr %324 to i32
  br label %337

337:                                              ; preds = %335, %333
  %338 = phi i32 [ %334, %333 ], [ %336, %335 ]
  %339 = inttoptr i32 %338 to ptr
  %340 = load volatile i32, ptr %339, align 4
  %341 = and i32 %340, 1
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %348

343:                                              ; preds = %337
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %339) #7, !srcloc !13
  %344 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %339, ptr %339, i32 1, ptr elementtype(i32) %339) #7, !srcloc !14
  %345 = extractvalue { i32, i32, i32 } %344, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  %346 = and i32 %345, 1
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %349, label %348

348:                                              ; preds = %343, %337
  call void @__folio_lock(ptr noundef %339) #7
  br label %349

349:                                              ; preds = %348, %343
  %350 = call ptr @page_address(ptr noundef %324) #7
  br label %351

351:                                              ; preds = %349, %289
  %352 = phi i64 [ %255, %349 ], [ %256, %289 ]
  %353 = phi ptr [ %324, %349 ], [ %258, %289 ]
  %354 = phi ptr [ %350, %349 ], [ %259, %289 ]
  %355 = load i32, ptr %226, align 8
  %356 = add i32 %355, -1
  %357 = zext i32 %356 to i64
  %358 = xor i64 %357, -1
  %359 = and i64 %255, %358
  %360 = trunc i64 %359 to i32
  %361 = and i32 %360, 4095
  %362 = getelementptr i8, ptr %354, i32 %361
  %363 = icmp ult ptr %362, %354
  %364 = getelementptr i8, ptr %354, i32 4096
  %365 = icmp ugt ptr %362, %364
  %366 = or i1 %363, %365
  br i1 %366, label %367, label %370, !prof !11

367:                                              ; preds = %351
  %368 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 10
  %369 = load i32, ptr %368, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_readdir, ptr noundef %8, ptr noundef nonnull @.str.5, i32 noundef %369) #7
  br label %586

370:                                              ; preds = %351
  %371 = load i32, ptr %362, align 1
  %372 = icmp eq i32 %371, 1480871497
  br i1 %372, label %379, label %373, !prof !8

373:                                              ; preds = %370
  %374 = load i8, ptr %239, align 1
  %375 = zext i8 %374 to i64
  %376 = lshr i64 %255, %375
  %377 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 10
  %378 = load i32, ptr %377, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_readdir, ptr noundef %8, ptr noundef nonnull @.str.6, i64 noundef %376, i32 noundef %378) #7
  br label %586

379:                                              ; preds = %370
  %380 = getelementptr inbounds %struct.INDEX_BLOCK, ptr %362, i32 0, i32 4
  %381 = load i64, ptr %380, align 1
  %382 = load i8, ptr %239, align 1
  %383 = zext i8 %382 to i64
  %384 = ashr i64 %359, %383
  %385 = icmp eq i64 %381, %384
  br i1 %385, label %390, label %386, !prof !8

386:                                              ; preds = %379
  %387 = lshr i64 %255, %383
  %388 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 10
  %389 = load i32, ptr %388, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_readdir, ptr noundef %8, ptr noundef nonnull @.str.20, i64 noundef %381, i64 noundef %387, i32 noundef %389) #7
  br label %586

390:                                              ; preds = %379
  %391 = getelementptr inbounds %struct.INDEX_BLOCK, ptr %362, i32 0, i32 5
  %392 = getelementptr inbounds %struct.INDEX_HEADER, ptr %391, i32 0, i32 2
  %393 = load i32, ptr %392, align 1
  %394 = add i32 %393, 24
  %395 = icmp eq i32 %394, %355
  br i1 %395, label %400, label %396, !prof !8

396:                                              ; preds = %390
  %397 = lshr i64 %255, %383
  %398 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 10
  %399 = load i32, ptr %398, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_readdir, ptr noundef %8, ptr noundef nonnull @.str.8, i64 noundef %397, i32 noundef %399, i32 noundef %394, i32 noundef %355) #7
  br label %586

400:                                              ; preds = %390
  %401 = getelementptr i8, ptr %362, i32 %355
  %402 = icmp ugt ptr %401, %364
  br i1 %402, label %403, label %407, !prof !11

403:                                              ; preds = %400
  %404 = lshr i64 %255, %383
  %405 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 10
  %406 = load i32, ptr %405, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_readdir, ptr noundef %8, ptr noundef nonnull @.str.9, i64 noundef %404, i32 noundef %406) #7
  br label %586

407:                                              ; preds = %400
  %408 = getelementptr inbounds %struct.INDEX_HEADER, ptr %391, i32 0, i32 1
  %409 = load i32, ptr %408, align 1
  %410 = getelementptr i8, ptr %391, i32 %409
  %411 = icmp ugt ptr %410, %401
  br i1 %411, label %412, label %416, !prof !11

412:                                              ; preds = %407
  %413 = lshr i64 %255, %383
  %414 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 10
  %415 = load i32, ptr %414, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_readdir, ptr noundef %8, ptr noundef nonnull @.str.10, i64 noundef %413, i32 noundef %415) #7
  br label %586

416:                                              ; preds = %407
  %417 = load i32, ptr %391, align 1
  %418 = getelementptr i8, ptr %391, i32 %417
  %419 = icmp ult ptr %418, %362
  %420 = getelementptr i8, ptr %418, i32 16
  %421 = icmp ugt ptr %420, %410
  %422 = select i1 %419, i1 true, i1 %421
  br i1 %422, label %586, label %423, !prof !27

423:                                              ; preds = %416
  %424 = sub i64 %255, %359
  %425 = ptrtoint ptr %362 to i32
  %426 = icmp eq ptr %353, null
  %427 = getelementptr inbounds %struct.page, ptr %353, i32 0, i32 1
  %428 = ptrtoint ptr %353 to i32
  br label %429

429:                                              ; preds = %568, %423
  %430 = phi ptr [ %418, %423 ], [ %572, %568 ]
  %431 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %430, i32 0, i32 2
  %432 = load i16, ptr %431, align 1
  %433 = zext i16 %432 to i32
  %434 = getelementptr i8, ptr %430, i32 %433
  %435 = icmp ugt ptr %434, %410
  br i1 %435, label %586, label %436, !prof !11

436:                                              ; preds = %429
  %437 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %430, i32 0, i32 3
  %438 = load i16, ptr %437, align 1
  %439 = and i16 %438, 2
  %440 = icmp eq i16 %439, 0
  br i1 %440, label %441, label %268

441:                                              ; preds = %436
  %442 = ptrtoint ptr %430 to i32
  %443 = sub i32 %442, %425
  %444 = sext i32 %443 to i64
  %445 = icmp sgt i64 %424, %444
  br i1 %445, label %568, label %446

446:                                              ; preds = %441
  %447 = load i64, ptr %380, align 1
  %448 = load i8, ptr %239, align 1
  %449 = zext i8 %448 to i64
  %450 = shl i64 %447, %449
  %451 = add i64 %450, %444
  %452 = load i32, ptr %30, align 4
  %453 = zext i32 %452 to i64
  %454 = add i64 %451, %453
  store i64 %454, ptr %28, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store ptr %67, ptr %3, align 4
  %455 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %430, i32 0, i32 5, i32 1, i32 49
  %456 = load i8, ptr %455, align 1
  %457 = icmp eq i8 %456, 2
  br i1 %457, label %513, label %458

458:                                              ; preds = %446
  %459 = load i64, ptr %430, align 1
  %460 = trunc i64 %459 to i32
  %461 = icmp eq i32 %460, 5
  br i1 %461, label %513, label %462

462:                                              ; preds = %458
  %463 = icmp ult i32 %460, 16
  br i1 %463, label %464, label %468

464:                                              ; preds = %462
  %465 = load volatile i32, ptr %240, align 4
  %466 = and i32 %465, 2
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %513, label %468

468:                                              ; preds = %464, %462
  %469 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %430, i32 1
  %470 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %430, i32 0, i32 5, i32 1, i32 48
  %471 = load i8, ptr %470, align 1
  %472 = zext i8 %471 to i32
  %473 = call i32 @ntfs_ucstonls(ptr noundef %10, ptr noundef %469, i32 noundef %472, ptr noundef nonnull %3, i32 noundef 1531) #7
  %474 = icmp slt i32 %473, 1
  br i1 %474, label %475, label %479

475:                                              ; preds = %468
  %476 = load ptr, ptr %10, align 8
  %477 = load i64, ptr %430, align 1
  %478 = and i64 %477, 4294967295
  call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.ntfs_filldir, ptr noundef %476, ptr noundef nonnull @.str.23, i64 noundef %478) #7
  br label %513

479:                                              ; preds = %468
  %480 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %430, i32 0, i32 5, i32 1, i32 40
  %481 = load i32, ptr %480, align 1
  %482 = and i32 %481, 268435456
  %483 = icmp eq i32 %482, 0
  %484 = select i1 %483, i32 8, i32 4
  %485 = load i64, ptr %430, align 1
  br i1 %426, label %487, label %486

486:                                              ; preds = %479
  call void @unlock_page(ptr noundef nonnull %353) #7
  br label %487

487:                                              ; preds = %486, %479
  %488 = load ptr, ptr %3, align 4
  %489 = and i64 %485, 4294967295
  %490 = load ptr, ptr %1, align 8
  %491 = load i64, ptr %28, align 8
  %492 = call i32 %490(ptr noundef %1, ptr noundef %488, i32 noundef %473, i64 noundef %491, i64 noundef %489, i32 noundef %484) #7
  %493 = icmp ne i32 %492, 0
  %494 = or i1 %426, %493
  br i1 %494, label %514, label %495

495:                                              ; preds = %487
  %496 = load volatile i32, ptr %427, align 4
  %497 = and i32 %496, 1
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %501, label %499, !prof !8

499:                                              ; preds = %495
  %500 = add i32 %496, -1
  br label %501

501:                                              ; preds = %499, %495
  %502 = phi i32 [ %500, %499 ], [ %428, %495 ]
  %503 = inttoptr i32 %502 to ptr
  %504 = load volatile i32, ptr %503, align 4
  %505 = and i32 %504, 1
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %507, label %512

507:                                              ; preds = %501
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %503) #7, !srcloc !13
  %508 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %503, ptr %503, i32 1, ptr elementtype(i32) %503) #7, !srcloc !14
  %509 = extractvalue { i32, i32, i32 } %508, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  %510 = and i32 %509, 1
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %513, label %512

512:                                              ; preds = %507, %501
  call void @__folio_lock(ptr noundef %503) #7
  br label %513

513:                                              ; preds = %512, %507, %475, %464, %458, %446
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br label %568

514:                                              ; preds = %487
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br i1 %493, label %515, label %568

515:                                              ; preds = %514
  %516 = ptrtoint ptr %353 to i32
  %517 = load i32, ptr %353, align 4
  %518 = lshr i32 %517, 30
  %519 = icmp eq i32 %518, 2
  br i1 %519, label %525, label %520

520:                                              ; preds = %515
  %521 = icmp ne i32 %518, 3
  %522 = load i32, ptr @movable_zone, align 4
  %523 = icmp ne i32 %522, 2
  %524 = select i1 %521, i1 true, i1 %523
  br i1 %524, label %526, label %525

525:                                              ; preds = %520, %515
  call void @kunmap_high(ptr noundef %353) #7
  br label %526

526:                                              ; preds = %525, %520
  %527 = load volatile i32, ptr %427, align 4
  %528 = and i32 %527, 1
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %532, label %530, !prof !8

530:                                              ; preds = %526
  %531 = add i32 %527, -1
  br label %532

532:                                              ; preds = %530, %526
  %533 = phi i32 [ %531, %530 ], [ %516, %526 ]
  %534 = inttoptr i32 %533 to ptr
  %535 = getelementptr inbounds %struct.page, ptr %534, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %535) #7, !srcloc !13
  %536 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %535, ptr %535, i32 1, ptr elementtype(i32) %535) #7, !srcloc !17
  %537 = extractvalue { i32, i32 } %536, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !18
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %539, label %540

539:                                              ; preds = %532
  call void @__put_page(ptr noundef %534) #7
  br label %540

540:                                              ; preds = %539, %532
  %541 = load i32, ptr %246, align 4
  %542 = lshr i32 %541, 30
  %543 = icmp eq i32 %542, 2
  br i1 %543, label %549, label %544

544:                                              ; preds = %540
  %545 = icmp ne i32 %542, 3
  %546 = load i32, ptr @movable_zone, align 4
  %547 = icmp ne i32 %546, 2
  %548 = select i1 %545, i1 true, i1 %547
  br i1 %548, label %550, label %549

549:                                              ; preds = %544, %540
  call void @kunmap_high(ptr noundef %246) #7
  br label %550

550:                                              ; preds = %549, %544
  %551 = getelementptr inbounds %struct.page, ptr %246, i32 0, i32 1
  %552 = load volatile i32, ptr %551, align 4
  %553 = and i32 %552, 1
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %557, label %555, !prof !8

555:                                              ; preds = %550
  %556 = add i32 %552, -1
  br label %559

557:                                              ; preds = %550
  %558 = ptrtoint ptr %246 to i32
  br label %559

559:                                              ; preds = %557, %555
  %560 = phi i32 [ %556, %555 ], [ %558, %557 ]
  %561 = inttoptr i32 %560 to ptr
  %562 = getelementptr inbounds %struct.page, ptr %561, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %562) #7, !srcloc !13
  %563 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %562, ptr %562, i32 1, ptr elementtype(i32) %562) #7, !srcloc !17
  %564 = extractvalue { i32, i32 } %563, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !18
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %566, label %567

566:                                              ; preds = %559
  call void @__put_page(ptr noundef %561) #7
  br label %567

567:                                              ; preds = %566, %559
  call void @iput(ptr noundef %199) #7
  br label %585

568:                                              ; preds = %514, %513, %441
  %569 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %430, i32 0, i32 1
  %570 = load i16, ptr %569, align 1
  %571 = zext i16 %570 to i32
  %572 = getelementptr i8, ptr %430, i32 %571
  %573 = icmp ult ptr %572, %362
  %574 = getelementptr i8, ptr %572, i32 16
  %575 = icmp ugt ptr %574, %410
  %576 = select i1 %573, i1 true, i1 %575
  br i1 %576, label %586, label %429, !prof !27

577:                                              ; preds = %280
  %578 = icmp eq ptr %270, null
  br i1 %578, label %580, label %579

579:                                              ; preds = %577
  call void @unlock_page(ptr noundef nonnull %270) #7
  call fastcc void @ntfs_unmap_page(ptr noundef nonnull %270)
  br label %580

580:                                              ; preds = %579, %577
  call fastcc void @ntfs_unmap_page(ptr noundef %246)
  call void @iput(ptr noundef %199) #7
  br label %581

581:                                              ; preds = %580, %183
  %582 = load i32, ptr %30, align 4
  %583 = zext i32 %582 to i64
  %584 = add i64 %23, %583
  store i64 %584, ptr %28, align 8
  br label %585

585:                                              ; preds = %581, %567, %173
  call void @kfree(ptr noundef nonnull %67) #7
  br label %664

586:                                              ; preds = %568, %429, %416, %412, %403, %396, %386, %373, %367, %326
  %587 = phi i32 [ %327, %326 ], [ 0, %367 ], [ 0, %373 ], [ 0, %386 ], [ 0, %396 ], [ 0, %403 ], [ 0, %412 ], [ 0, %568 ], [ 0, %429 ], [ 0, %416 ]
  %588 = phi ptr [ null, %326 ], [ %353, %367 ], [ %353, %373 ], [ %353, %386 ], [ %353, %396 ], [ %353, %403 ], [ %353, %412 ], [ %353, %568 ], [ %353, %429 ], [ %353, %416 ]
  %589 = icmp eq ptr %246, null
  br i1 %589, label %620, label %590

590:                                              ; preds = %586
  %591 = load i32, ptr %246, align 4
  %592 = lshr i32 %591, 30
  %593 = icmp eq i32 %592, 2
  br i1 %593, label %599, label %594

594:                                              ; preds = %590
  %595 = icmp ne i32 %592, 3
  %596 = load i32, ptr @movable_zone, align 4
  %597 = icmp ne i32 %596, 2
  %598 = select i1 %595, i1 true, i1 %597
  br i1 %598, label %600, label %599

599:                                              ; preds = %594, %590
  call void @kunmap_high(ptr noundef nonnull %246) #7
  br label %600

600:                                              ; preds = %599, %594
  %601 = getelementptr inbounds %struct.page, ptr %246, i32 0, i32 1
  %602 = load volatile i32, ptr %601, align 4
  %603 = and i32 %602, 1
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %607, label %605, !prof !8

605:                                              ; preds = %600
  %606 = add i32 %602, -1
  br label %609

607:                                              ; preds = %600
  %608 = ptrtoint ptr %246 to i32
  br label %609

609:                                              ; preds = %607, %605
  %610 = phi i32 [ %606, %605 ], [ %608, %607 ]
  %611 = inttoptr i32 %610 to ptr
  %612 = getelementptr inbounds %struct.page, ptr %611, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %612) #7, !srcloc !13
  %613 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %612, ptr %612, i32 1, ptr elementtype(i32) %612) #7, !srcloc !17
  %614 = extractvalue { i32, i32 } %613, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !18
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %616, label %617

616:                                              ; preds = %609
  call void @__put_page(ptr noundef %611) #7
  br label %617

617:                                              ; preds = %616, %609, %241, %229
  %618 = phi i32 [ 0, %229 ], [ %244, %241 ], [ %587, %609 ], [ %587, %616 ]
  %619 = phi ptr [ null, %229 ], [ %242, %241 ], [ %588, %609 ], [ %588, %616 ]
  call void @iput(ptr noundef %199) #7
  br label %620

620:                                              ; preds = %617, %586
  %621 = phi i32 [ %618, %617 ], [ %587, %586 ]
  %622 = phi ptr [ %619, %617 ], [ %588, %586 ]
  %623 = icmp eq ptr %622, null
  br i1 %623, label %651, label %624

624:                                              ; preds = %620
  call void @unlock_page(ptr noundef nonnull %622) #7
  %625 = load i32, ptr %622, align 4
  %626 = lshr i32 %625, 30
  %627 = icmp eq i32 %626, 2
  br i1 %627, label %633, label %628

628:                                              ; preds = %624
  %629 = icmp ne i32 %626, 3
  %630 = load i32, ptr @movable_zone, align 4
  %631 = icmp ne i32 %630, 2
  %632 = select i1 %629, i1 true, i1 %631
  br i1 %632, label %634, label %633

633:                                              ; preds = %628, %624
  call void @kunmap_high(ptr noundef nonnull %622) #7
  br label %634

634:                                              ; preds = %633, %628
  %635 = getelementptr inbounds %struct.page, ptr %622, i32 0, i32 1
  %636 = load volatile i32, ptr %635, align 4
  %637 = and i32 %636, 1
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %641, label %639, !prof !8

639:                                              ; preds = %634
  %640 = add i32 %636, -1
  br label %643

641:                                              ; preds = %634
  %642 = ptrtoint ptr %622 to i32
  br label %643

643:                                              ; preds = %641, %639
  %644 = phi i32 [ %640, %639 ], [ %642, %641 ]
  %645 = inttoptr i32 %644 to ptr
  %646 = getelementptr inbounds %struct.page, ptr %645, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %646) #7, !srcloc !13
  %647 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %646, ptr %646, i32 1, ptr elementtype(i32) %646) #7, !srcloc !17
  %648 = extractvalue { i32, i32 } %647, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !18
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %650, label %651

650:                                              ; preds = %643
  call void @__put_page(ptr noundef %645) #7
  br label %651

651:                                              ; preds = %650, %643, %620, %201, %174, %117, %97, %90, %87, %79, %77, %65
  %652 = phi ptr [ null, %620 ], [ null, %643 ], [ null, %650 ], [ %80, %90 ], [ null, %79 ], [ null, %65 ], [ %80, %87 ], [ null, %77 ], [ null, %201 ], [ null, %97 ], [ null, %117 ], [ null, %174 ]
  %653 = phi i32 [ %621, %620 ], [ %621, %643 ], [ %621, %650 ], [ -12, %90 ], [ -12, %79 ], [ -12, %65 ], [ %85, %87 ], [ %78, %77 ], [ %202, %201 ], [ 0, %97 ], [ 0, %117 ], [ 0, %174 ]
  %654 = phi ptr [ null, %620 ], [ null, %643 ], [ null, %650 ], [ null, %90 ], [ null, %79 ], [ null, %65 ], [ null, %87 ], [ null, %77 ], [ null, %201 ], [ %95, %97 ], [ %95, %117 ], [ %95, %174 ]
  %655 = phi ptr [ null, %620 ], [ null, %643 ], [ null, %650 ], [ %75, %90 ], [ %75, %79 ], [ null, %65 ], [ %75, %87 ], [ null, %77 ], [ null, %201 ], [ null, %97 ], [ null, %117 ], [ null, %174 ]
  call void @kfree(ptr noundef %654) #7
  call void @kfree(ptr noundef %67) #7
  %656 = icmp eq ptr %652, null
  br i1 %656, label %658, label %657

657:                                              ; preds = %651
  call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %652) #7
  br label %658

658:                                              ; preds = %657, %651
  %659 = icmp eq ptr %655, null
  br i1 %659, label %661, label %660

660:                                              ; preds = %658
  call void @unmap_mft_record(ptr noundef %27) #7
  br label %661

661:                                              ; preds = %660, %658
  %662 = icmp eq i32 %653, 0
  %663 = select i1 %662, i32 -5, i32 %653
  br label %664

664:                                              ; preds = %661, %585, %48, %36, %26
  %665 = phi i32 [ %663, %661 ], [ 0, %585 ], [ 0, %26 ], [ 0, %36 ], [ 0, %48 ]
  ret i32 %665
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ntfs_dir_open(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 22
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  br label %5

5:                                                ; preds = %13, %2
  %6 = load volatile i32, ptr %3, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %9, %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !19
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !20
  %10 = load volatile i32, ptr %3, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %9

13:                                               ; preds = %9, %5
  %14 = phi i32 [ %6, %5 ], [ %10, %9 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !21
  %15 = load i64, ptr %4, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !22
  %16 = load volatile i32, ptr %3, align 4
  %17 = icmp eq i32 %16, %14
  br i1 %17, label %18, label %5

18:                                               ; preds = %13
  %19 = icmp sgt i64 %15, 17592186040320
  %20 = select i1 %19, i32 -27, i32 0
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_attr_iget(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_ucstonls(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_warning(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind allocsize(0) }

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
!9 = !{i64 2153344640, i64 2153345117, i64 2153344677, i64 2153344733, i64 2153344767, i64 2153344791, i64 2153344832, i64 2153344853, i64 2153344881, i64 2153344915}
!10 = !{i64 2153345643, i64 2153346120, i64 2153345680, i64 2153345736, i64 2153345770, i64 2153345794, i64 2153345835, i64 2153345856, i64 2153345884, i64 2153345918}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!13 = !{i64 891340, i64 2148381311, i64 2148381337, i64 2148381384, i64 2148381406, i64 2148381434, i64 2148381454}
!14 = !{i64 2148401188, i64 2148401220, i64 2148401249, i64 2148401283, i64 2148401314, i64 2148401337}
!15 = !{i64 2148502528}
!16 = !{i64 2148493405}
!17 = !{i64 2148395767, i64 2148395799, i64 2148395828, i64 2148395862, i64 2148395893, i64 2148395916}
!18 = !{i64 2148493608}
!19 = !{i64 2151343981}
!20 = !{i64 2151343823}
!21 = !{i64 2151344125}
!22 = !{i64 2149538368}
!23 = !{i64 2149059944}
!24 = !{i64 2149055768}
!25 = !{i64 2149055843, i64 2149055870, i64 2149055917, i64 2149055939, i64 2149055967, i64 2149055987}
!26 = !{i64 2149082947}
!27 = !{!"branch_weights", i32 4001, i32 4000000}
