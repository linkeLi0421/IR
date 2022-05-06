; ModuleID = '/llk/IR/fs/fat/cache.c_pt.bc'
source_filename = "../fs/fat/cache.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fat_cache = type { %struct.list_head, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.fat_entry = type { i32, %union.anon.65, i32, [2 x ptr], ptr }
%union.anon.65 = type { [2 x ptr] }
%struct.fat_cache_id = type { i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, ptr, %struct.address_space, %struct.list_head, %union.anon.62, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.59 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.60 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.61 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.62 = type { ptr }
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
%struct.msdos_sb_info = type { i16, i16, i32, i8, i8, i16, i32, i32, i16, i32, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, i32, i32, i32, %struct.fat_mount_options, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.ratelimit_state, %struct.spinlock, [256 x %struct.hlist_head], %struct.spinlock, [256 x %struct.hlist_head], i32, %struct.callback_head }
%struct.fat_mount_options = type { %struct.kuid_t, %struct.kgid_t, i16, i16, i16, i32, ptr, i16, i8, i8, i8, i16, i16 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"fat_cache\00", align 1
@fat_cache_cachep = internal unnamed_addr global ptr null, align 4
@__func__.fat_get_cluster = private unnamed_addr constant [16 x i8] c"fat_get_cluster\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"%s: invalid start cluster (i_pos %lld, start %08x)\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"%s: detected the cluster chain loop (i_pos %lld)\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"%s: invalid cluster chain (i_pos %lld)\00", align 1
@fat_cache_lookup.nohit = internal global %struct.fat_cache zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"%s: request beyond EOF (i_pos %lld)\00", align 1
@__func__.fat_bmap_cluster = private unnamed_addr constant [17 x i8] c"fat_bmap_cluster\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @fat_cache_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 20, i32 noundef 0, i32 noundef 1179648, ptr noundef nonnull @init_once) #7
  store ptr %1, ptr @fat_cache_cachep, align 4
  %2 = icmp eq ptr %1, null
  %3 = select i1 %2, i32 -12, i32 0
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_once(ptr noundef %0) #2 {
  store volatile ptr %0, ptr %0, align 4
  %2 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %0, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fat_cache_destroy() local_unnamed_addr #3 {
  %1 = load ptr, ptr @fat_cache_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fat_cache_inval_inode(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr i8, ptr %0, i32 -96
  tail call void @_raw_spin_lock(ptr noundef %2) #7
  %3 = getelementptr i8, ptr %0, i32 -92
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %23, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -84
  br label %8

8:                                                ; preds = %19, %6
  %9 = phi ptr [ %4, %6 ], [ %21, %19 ]
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %12, ptr %11, align 4
  store volatile ptr %9, ptr %9, align 4
  store ptr %9, ptr %10, align 4
  %14 = load i32, ptr %7, align 4
  %15 = add i32 %14, -1
  store i32 %15, ptr %7, align 4
  %16 = load volatile ptr, ptr %9, align 4
  %17 = icmp eq ptr %16, %9
  br i1 %17, label %19, label %18, !prof !8

18:                                               ; preds = %8
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fat/cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 69, 0\0A.popsection", ""() #7, !srcloc !9
  unreachable

19:                                               ; preds = %8
  %20 = load ptr, ptr @fat_cache_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %20, ptr noundef %9) #7
  %21 = load volatile ptr, ptr %3, align 4
  %22 = icmp eq ptr %21, %3
  br i1 %22, label %23, label %8

23:                                               ; preds = %19, %1
  %24 = getelementptr i8, ptr %0, i32 -80
  %25 = load i32, ptr %24, align 8
  %26 = add i32 %25, 1
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 1, i32 %26
  store i32 %28, ptr %24, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %29 = load i16, ptr %2, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fat_get_cluster(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #3 {
  %5 = alloca %struct.fat_entry, align 4
  %6 = alloca %struct.fat_cache_id, align 4
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 4
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds %struct.msdos_sb_info, ptr %10, i32 0, i32 1
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i64
  %16 = ashr i64 %12, %15
  %17 = trunc i64 %16 to i32
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 28, i1 false), !annotation !14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false), !annotation !14
  %18 = getelementptr i8, ptr %0, i32 -96
  %19 = getelementptr i8, ptr %0, i32 -64
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23, !prof !15

22:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fat/cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 234, 0\0A.popsection", ""() #7, !srcloc !16
  unreachable

23:                                               ; preds = %4
  store i32 0, ptr %2, align 4
  %24 = load i32, ptr %19, align 8
  store i32 %24, ptr %3, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.msdos_sb_info, ptr %10, i32 0, i32 10
  %28 = load i32, ptr %27, align 4
  %29 = icmp ugt i32 %28, %24
  br i1 %29, label %37, label %30

30:                                               ; preds = %26, %23
  %31 = load ptr, ptr %9, align 4
  %32 = getelementptr inbounds %struct.msdos_sb_info, ptr %31, i32 0, i32 30
  %33 = tail call i32 @___ratelimit(ptr noundef %32, ptr noundef nonnull @__func__.fat_get_cluster) #7
  %34 = getelementptr i8, ptr %0, i32 -48
  %35 = load i64, ptr %34, align 8
  %36 = load i32, ptr %3, align 4
  tail call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %8, i32 noundef %33, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.fat_get_cluster, i64 noundef %35, i32 noundef %36) #8
  br label %173

37:                                               ; preds = %26
  %38 = icmp eq i32 %1, 0
  br i1 %38, label %173, label %39

39:                                               ; preds = %37
  tail call void @_raw_spin_lock(ptr noundef %18) #7
  %40 = getelementptr i8, ptr %0, i32 -92
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %40
  br i1 %42, label %93, label %43

43:                                               ; preds = %61, %39
  %44 = phi ptr [ %64, %61 ], [ %41, %39 ]
  %45 = phi ptr [ %63, %61 ], [ @fat_cache_lookup.nohit, %39 ]
  %46 = phi i32 [ %62, %61 ], [ -1, %39 ]
  %47 = getelementptr inbounds %struct.fat_cache, ptr %44, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = icmp sgt i32 %48, %1
  br i1 %49, label %61, label %50

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.fat_cache, ptr %45, i32 0, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = icmp slt i32 %52, %48
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.fat_cache, ptr %44, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, %48
  %58 = icmp slt i32 %57, %1
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = sub i32 %1, %48
  br label %66

61:                                               ; preds = %54, %50, %43
  %62 = phi i32 [ %46, %50 ], [ %46, %43 ], [ %56, %54 ]
  %63 = phi ptr [ %45, %50 ], [ %45, %43 ], [ %44, %54 ]
  %64 = load ptr, ptr %44, align 4
  %65 = icmp eq ptr %64, %40
  br i1 %65, label %66, label %43

66:                                               ; preds = %61, %59
  %67 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %68 = phi ptr [ %44, %59 ], [ %63, %61 ]
  %69 = icmp eq ptr %68, @fat_cache_lookup.nohit
  br i1 %69, label %93, label %70

70:                                               ; preds = %66
  %71 = icmp eq ptr %41, %68
  br i1 %71, label %79, label %72

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = load ptr, ptr %68, align 4
  %76 = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  store ptr %74, ptr %76, align 4
  store volatile ptr %75, ptr %74, align 4
  %77 = load ptr, ptr %40, align 4
  %78 = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  store ptr %68, ptr %78, align 4
  store ptr %77, ptr %68, align 4
  store ptr %40, ptr %73, align 4
  store volatile ptr %68, ptr %40, align 4
  br label %79

79:                                               ; preds = %72, %70
  %80 = getelementptr i8, ptr %0, i32 -80
  %81 = load i32, ptr %80, align 8
  store i32 %81, ptr %6, align 4
  %82 = getelementptr inbounds %struct.fat_cache, ptr %68, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.fat_cache_id, ptr %6, i32 0, i32 1
  store i32 %83, ptr %84, align 4
  %85 = getelementptr inbounds %struct.fat_cache, ptr %68, i32 0, i32 2
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr inbounds %struct.fat_cache_id, ptr %6, i32 0, i32 2
  store i32 %86, ptr %87, align 4
  %88 = getelementptr inbounds %struct.fat_cache, ptr %68, i32 0, i32 3
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.fat_cache_id, ptr %6, i32 0, i32 3
  store i32 %89, ptr %90, align 4
  %91 = add i32 %86, %67
  store i32 %91, ptr %2, align 4
  %92 = add i32 %89, %67
  store i32 %92, ptr %3, align 4
  br label %93

93:                                               ; preds = %79, %66, %39
  %94 = phi i32 [ %81, %79 ], [ 0, %66 ], [ 0, %39 ]
  %95 = phi i32 [ %89, %79 ], [ 0, %66 ], [ 0, %39 ]
  %96 = phi i32 [ %83, %79 ], [ 0, %66 ], [ 0, %39 ]
  %97 = phi i32 [ %67, %79 ], [ %67, %66 ], [ -1, %39 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %98 = load i16, ptr %18, align 4
  %99 = add i16 %98, 1
  store i16 %99, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  %100 = icmp slt i32 %97, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %93
  store i32 0, ptr %6, align 4
  %102 = getelementptr inbounds %struct.fat_cache_id, ptr %6, i32 0, i32 2
  store i32 -1, ptr %102, align 4
  %103 = getelementptr inbounds %struct.fat_cache_id, ptr %6, i32 0, i32 3
  store i32 -1, ptr %103, align 4
  %104 = getelementptr inbounds %struct.fat_cache_id, ptr %6, i32 0, i32 1
  store i32 0, ptr %104, align 4
  br label %105

105:                                              ; preds = %101, %93
  %106 = phi i32 [ 0, %101 ], [ %94, %93 ]
  %107 = phi i32 [ -1, %101 ], [ %95, %93 ]
  %108 = phi i32 [ 0, %101 ], [ %96, %93 ]
  %109 = getelementptr inbounds %struct.fat_entry, ptr %5, i32 0, i32 2
  store i32 0, ptr %5, align 4
  %110 = getelementptr inbounds %struct.fat_entry, ptr %5, i32 0, i32 1
  store ptr null, ptr %110, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %109, i8 0, i64 16, i1 false) #7
  %111 = load i32, ptr %2, align 4
  %112 = icmp slt i32 %111, %1
  br i1 %112, label %113, label %155

113:                                              ; preds = %105
  %114 = getelementptr inbounds %struct.fat_cache_id, ptr %6, i32 0, i32 1
  %115 = getelementptr inbounds %struct.fat_cache_id, ptr %6, i32 0, i32 3
  %116 = getelementptr inbounds %struct.fat_cache_id, ptr %6, i32 0, i32 2
  br label %117

117:                                              ; preds = %149, %113
  %118 = phi i32 [ %106, %113 ], [ %150, %149 ]
  %119 = phi i32 [ %107, %113 ], [ %151, %149 ]
  %120 = phi i32 [ %108, %113 ], [ %152, %149 ]
  %121 = phi i32 [ %111, %113 ], [ %147, %149 ]
  %122 = icmp sgt i32 %121, %17
  br i1 %122, label %123, label %129

123:                                              ; preds = %117
  store i32 %120, ptr %114, align 4
  store i32 %119, ptr %115, align 4
  store i32 %118, ptr %6, align 4
  %124 = load ptr, ptr %9, align 4
  %125 = getelementptr inbounds %struct.msdos_sb_info, ptr %124, i32 0, i32 30
  %126 = call i32 @___ratelimit(ptr noundef %125, ptr noundef nonnull @__func__.fat_get_cluster) #7
  %127 = getelementptr i8, ptr %0, i32 -48
  %128 = load i64, ptr %127, align 8
  call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %8, i32 noundef %126, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.fat_get_cluster, i64 noundef %128) #8
  br label %157

129:                                              ; preds = %117
  %130 = load i32, ptr %3, align 4
  %131 = call i32 @fat_ent_read(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %130) #7
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %156, label %133

133:                                              ; preds = %129
  switch i32 %131, label %141 [
    i32 0, label %134
    i32 268435455, label %140
  ]

134:                                              ; preds = %133
  store i32 %120, ptr %114, align 4
  store i32 %119, ptr %115, align 4
  store i32 %118, ptr %6, align 4
  %135 = load ptr, ptr %9, align 4
  %136 = getelementptr inbounds %struct.msdos_sb_info, ptr %135, i32 0, i32 30
  %137 = call i32 @___ratelimit(ptr noundef %136, ptr noundef nonnull @__func__.fat_get_cluster) #7
  %138 = getelementptr i8, ptr %0, i32 -48
  %139 = load i64, ptr %138, align 8
  call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %8, i32 noundef %137, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.fat_get_cluster, i64 noundef %139) #8
  br label %157

140:                                              ; preds = %133
  store i32 %120, ptr %114, align 4
  store i32 %119, ptr %115, align 4
  store i32 %118, ptr %6, align 4
  call fastcc void @fat_cache_add(ptr noundef %0, ptr noundef nonnull %6)
  br label %157

141:                                              ; preds = %133
  %142 = load i32, ptr %2, align 4
  %143 = add i32 %142, 1
  store i32 %143, ptr %2, align 4
  store i32 %131, ptr %3, align 4
  %144 = add i32 %120, 1
  %145 = add i32 %119, %144
  %146 = icmp eq i32 %145, %131
  %147 = load i32, ptr %2, align 4
  br i1 %146, label %149, label %148

148:                                              ; preds = %141
  store i32 %147, ptr %116, align 4
  br label %149

149:                                              ; preds = %148, %141
  %150 = phi i32 [ 0, %148 ], [ %118, %141 ]
  %151 = phi i32 [ %131, %148 ], [ %119, %141 ]
  %152 = phi i32 [ 0, %148 ], [ %144, %141 ]
  %153 = icmp slt i32 %147, %1
  br i1 %153, label %117, label %154

154:                                              ; preds = %149
  store i32 %152, ptr %114, align 4
  store i32 %151, ptr %115, align 4
  store i32 %150, ptr %6, align 4
  br label %155

155:                                              ; preds = %154, %105
  call fastcc void @fat_cache_add(ptr noundef %0, ptr noundef nonnull %6)
  br label %157

156:                                              ; preds = %129
  store i32 %120, ptr %114, align 4
  store i32 %119, ptr %115, align 4
  store i32 %118, ptr %6, align 4
  br label %157

157:                                              ; preds = %156, %155, %140, %134, %123
  %158 = phi i32 [ -5, %123 ], [ -5, %134 ], [ 268435455, %140 ], [ 0, %155 ], [ %131, %156 ]
  store ptr null, ptr %110, align 4
  %159 = load i32, ptr %109, align 4
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %173

161:                                              ; preds = %169, %157
  %162 = phi i32 [ %170, %169 ], [ %159, %157 ]
  %163 = phi i32 [ %171, %169 ], [ 0, %157 ]
  %164 = getelementptr %struct.fat_entry, ptr %5, i32 0, i32 3, i32 %163
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %169, label %167

167:                                              ; preds = %161
  call void @__brelse(ptr noundef nonnull %165) #7
  %168 = load i32, ptr %109, align 4
  br label %169

169:                                              ; preds = %167, %161
  %170 = phi i32 [ %162, %161 ], [ %168, %167 ]
  %171 = add nuw nsw i32 %163, 1
  %172 = icmp slt i32 %171, %170
  br i1 %172, label %161, label %173

173:                                              ; preds = %169, %157, %37, %30
  %174 = phi i32 [ -5, %30 ], [ 0, %37 ], [ %158, %157 ], [ %158, %169 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #7
  ret i32 %174
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__fat_fs_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_ent_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fat_cache_add(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.fat_cache_id, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %117, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 -96
  tail call void @_raw_spin_lock(ptr noundef %7) #7
  %8 = load i32, ptr %1, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %0, i32 -80
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %8, %12
  br i1 %13, label %14, label %114

14:                                               ; preds = %10, %6
  %15 = getelementptr i8, ptr %0, i32 -92
  br label %16

16:                                               ; preds = %20, %14
  %17 = phi ptr [ %15, %14 ], [ %18, %20 ]
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %15
  br i1 %19, label %41, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.fat_cache, ptr %18, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr %3, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %16

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.fat_cache, ptr %18, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.fat_cache_id, ptr %1, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %32, label %31, !prof !8

31:                                               ; preds = %25
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fat/cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 125, 0\0A.popsection", ""() #7, !srcloc !17
  unreachable

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.fat_cache_id, ptr %1, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.fat_cache, ptr %18, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp sgt i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 %34, ptr %35, align 4
  br label %39

39:                                               ; preds = %38, %32
  %40 = icmp eq ptr %18, null
  br i1 %40, label %41, label %103

41:                                               ; preds = %39, %16
  %42 = getelementptr i8, ptr %0, i32 -84
  %43 = load i32, ptr %42, align 4
  %44 = icmp slt i32 %43, 8
  br i1 %44, label %45, label %90

45:                                               ; preds = %41
  %46 = add nsw i32 %43, 1
  store i32 %46, ptr %42, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %47 = load i16, ptr %7, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  %49 = load ptr, ptr @fat_cache_cachep, align 4
  %50 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %49, i32 noundef 3136) #7
  %51 = icmp eq ptr %50, null
  tail call void @_raw_spin_lock(ptr noundef %7) #7
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load i32, ptr %42, align 4
  %54 = add i32 %53, -1
  store i32 %54, ptr %42, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %55 = load i16, ptr %7, align 4
  %56 = add i16 %55, 1
  store i16 %56, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %117

57:                                               ; preds = %61, %45
  %58 = phi ptr [ %59, %61 ], [ %15, %45 ]
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, %15
  br i1 %60, label %93, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.fat_cache, ptr %59, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = load i32, ptr %3, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %57

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.fat_cache, ptr %59, i32 0, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.fat_cache_id, ptr %1, i32 0, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %73, label %72, !prof !8

72:                                               ; preds = %66
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fat/cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 125, 0\0A.popsection", ""() #7, !srcloc !17
  unreachable

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.fat_cache_id, ptr %1, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.fat_cache, ptr %59, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = icmp sgt i32 %75, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store i32 %75, ptr %76, align 4
  br label %80

80:                                               ; preds = %79, %73
  %81 = icmp eq ptr %59, null
  br i1 %81, label %93, label %82

82:                                               ; preds = %80
  %83 = load i32, ptr %42, align 4
  %84 = add i32 %83, -1
  store i32 %84, ptr %42, align 4
  %85 = load volatile ptr, ptr %50, align 8
  %86 = icmp eq ptr %85, %50
  br i1 %86, label %88, label %87, !prof !8

87:                                               ; preds = %82
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fat/cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 69, 0\0A.popsection", ""() #7, !srcloc !9
  unreachable

88:                                               ; preds = %82
  %89 = load ptr, ptr @fat_cache_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %89, ptr noundef nonnull %50) #7
  br label %103

90:                                               ; preds = %41
  %91 = getelementptr i8, ptr %0, i32 -88
  %92 = load ptr, ptr %91, align 4
  br label %93

93:                                               ; preds = %90, %80, %57
  %94 = phi ptr [ %92, %90 ], [ %50, %80 ], [ %50, %57 ]
  %95 = load i32, ptr %3, align 4
  %96 = getelementptr inbounds %struct.fat_cache, ptr %94, i32 0, i32 2
  store i32 %95, ptr %96, align 4
  %97 = getelementptr inbounds %struct.fat_cache_id, ptr %1, i32 0, i32 3
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr inbounds %struct.fat_cache, ptr %94, i32 0, i32 3
  store i32 %98, ptr %99, align 4
  %100 = getelementptr inbounds %struct.fat_cache_id, ptr %1, i32 0, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = getelementptr inbounds %struct.fat_cache, ptr %94, i32 0, i32 1
  store i32 %101, ptr %102, align 4
  br label %103

103:                                              ; preds = %93, %88, %39
  %104 = phi ptr [ %59, %88 ], [ %94, %93 ], [ %18, %39 ]
  %105 = load ptr, ptr %15, align 4
  %106 = icmp eq ptr %105, %104
  br i1 %106, label %114, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.list_head, ptr %104, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = load ptr, ptr %104, align 4
  %111 = getelementptr inbounds %struct.list_head, ptr %110, i32 0, i32 1
  store ptr %109, ptr %111, align 4
  store volatile ptr %110, ptr %109, align 4
  %112 = load ptr, ptr %15, align 4
  %113 = getelementptr inbounds %struct.list_head, ptr %112, i32 0, i32 1
  store ptr %104, ptr %113, align 4
  store ptr %112, ptr %104, align 4
  store ptr %15, ptr %108, align 4
  store volatile ptr %104, ptr %15, align 4
  br label %114

114:                                              ; preds = %107, %103, %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %115 = load i16, ptr %7, align 4
  %116 = add i16 %115, 1
  store i16 %116, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %117

117:                                              ; preds = %114, %52, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fat_get_mapped_cluster(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #3 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.msdos_sb_info, ptr %11, i32 0, i32 1
  %13 = load i16, ptr %12, align 2
  %14 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 2
  %15 = load i8, ptr %14, align 4
  %16 = load i16, ptr %11, align 4
  %17 = zext i16 %16 to i32
  %18 = add nsw i32 %17, -1
  %19 = trunc i64 %1 to i32
  %20 = and i32 %18, %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !annotation !14
  %21 = getelementptr i8, ptr %0, i32 -64
  %22 = load i32, ptr %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  br label %66

25:                                               ; preds = %5
  %26 = zext i16 %13 to i32
  %27 = zext i8 %15 to i32
  %28 = sub nsw i32 %26, %27
  %29 = zext i32 %28 to i64
  %30 = lshr i64 %1, %29
  %31 = trunc i64 %30 to i32
  %32 = call i32 @fat_get_cluster(ptr noundef %0, i32 noundef %31, ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %25
  %35 = icmp eq i32 %32, 268435455
  br i1 %35, label %36, label %41

36:                                               ; preds = %34
  %37 = getelementptr i8, ptr %0, i32 -48
  %38 = load i64, ptr %37, align 8
  tail call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.fat_bmap_cluster, i64 noundef %38) #8
  br label %39

39:                                               ; preds = %36, %25
  %40 = phi i32 [ %32, %25 ], [ -5, %36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  br label %66

41:                                               ; preds = %34
  %42 = load i32, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %66, label %44

44:                                               ; preds = %41
  %45 = icmp eq i32 %42, 0
  br i1 %45, label %66, label %46

46:                                               ; preds = %44
  %47 = zext i32 %42 to i64
  %48 = add nsw i64 %47, -2
  %49 = load i16, ptr %11, align 4
  %50 = zext i16 %49 to i64
  %51 = mul nsw i64 %48, %50
  %52 = getelementptr inbounds %struct.msdos_sb_info, ptr %11, i32 0, i32 9
  %53 = load i32, ptr %52, align 4
  %54 = zext i32 %53 to i64
  %55 = sext i32 %20 to i64
  %56 = add nsw i64 %54, %55
  %57 = add nsw i64 %56, %51
  store i64 %57, ptr %4, align 8
  %58 = load i16, ptr %11, align 4
  %59 = zext i16 %58 to i32
  %60 = sub i32 %59, %20
  store i32 %60, ptr %3, align 4
  %61 = zext i32 %60 to i64
  %62 = sub i64 %2, %1
  %63 = icmp ult i64 %62, %61
  br i1 %63, label %64, label %66

64:                                               ; preds = %46
  %65 = trunc i64 %62 to i32
  store i32 %65, ptr %3, align 4
  br label %66

66:                                               ; preds = %64, %46, %44, %41, %39, %24
  %67 = phi i32 [ %42, %41 ], [ 0, %44 ], [ 0, %64 ], [ 0, %46 ], [ %40, %39 ], [ 0, %24 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fat_bmap(ptr noundef %0, i64 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #3 {
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  store i64 0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  %11 = getelementptr inbounds %struct.msdos_sb_info, ptr %10, i32 0, i32 4
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 32
  br i1 %13, label %32, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.msdos_sb_info, ptr %10, i32 0, i32 8
  %20 = load i16, ptr %19, align 4
  %21 = zext i16 %20 to i32
  %22 = getelementptr inbounds %struct.msdos_sb_info, ptr %10, i32 0, i32 24
  %23 = load i32, ptr %22, align 4
  %24 = lshr i32 %21, %23
  %25 = zext i32 %24 to i64
  %26 = icmp ugt i64 %25, %1
  br i1 %26, label %27, label %83

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.msdos_sb_info, ptr %10, i32 0, i32 7
  %29 = load i32, ptr %28, align 4
  %30 = zext i32 %29 to i64
  %31 = add i64 %30, %1
  store i64 %31, ptr %2, align 8
  store i32 1, ptr %3, align 4
  br label %83

32:                                               ; preds = %14, %6
  br i1 %5, label %69, label %33

33:                                               ; preds = %32
  %34 = load ptr, ptr %7, align 4
  %35 = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 3
  %36 = load i32, ptr %35, align 16
  %37 = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 2
  %38 = load i8, ptr %37, align 4
  %39 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 22
  %40 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  br label %41

41:                                               ; preds = %49, %33
  %42 = load volatile i32, ptr %39, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %45, %41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !18
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !19
  %46 = load volatile i32, ptr %39, align 4
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %45

49:                                               ; preds = %45, %41
  %50 = phi i32 [ %42, %41 ], [ %46, %45 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !20
  %51 = load i64, ptr %40, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !21
  %52 = load volatile i32, ptr %39, align 4
  %53 = icmp eq i32 %52, %50
  br i1 %53, label %54, label %41

54:                                               ; preds = %49
  %55 = add i32 %36, -1
  %56 = zext i32 %55 to i64
  %57 = add i64 %51, %56
  %58 = zext i8 %38 to i64
  %59 = ashr i64 %57, %58
  %60 = icmp ugt i64 %59, %1
  br i1 %60, label %80, label %61

61:                                               ; preds = %54
  %62 = icmp eq i32 %4, 0
  br i1 %62, label %83, label %63

63:                                               ; preds = %61
  %64 = getelementptr i8, ptr %0, i32 -72
  %65 = load i64, ptr %64, align 8
  %66 = add i64 %65, %56
  %67 = ashr i64 %66, %58
  %68 = icmp ugt i64 %67, %1
  br i1 %68, label %80, label %83

69:                                               ; preds = %32
  %70 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 21
  %71 = load i64, ptr %70, align 8
  %72 = load ptr, ptr %7, align 4
  %73 = getelementptr inbounds %struct.super_block, ptr %72, i32 0, i32 2
  %74 = load i8, ptr %73, align 4
  %75 = zext i8 %74 to i32
  %76 = add nsw i32 %75, -9
  %77 = zext i32 %76 to i64
  %78 = lshr i64 %71, %77
  %79 = icmp ugt i64 %78, %1
  br i1 %79, label %80, label %83

80:                                               ; preds = %69, %63, %54
  %81 = phi i64 [ %78, %69 ], [ %59, %54 ], [ %67, %63 ]
  %82 = tail call i32 @fat_get_mapped_cluster(ptr noundef %0, i64 noundef %1, i64 noundef %81, ptr noundef %3, ptr noundef %2)
  br label %83

83:                                               ; preds = %80, %69, %63, %61, %27, %18
  %84 = phi i32 [ %82, %80 ], [ 0, %27 ], [ 0, %18 ], [ 0, %69 ], [ 0, %61 ], [ 0, %63 ]
  ret i32 %84
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!9 = !{i64 2152558525, i64 2152559003, i64 2152558562, i64 2152558618, i64 2152558652, i64 2152558676, i64 2152558717, i64 2152558738, i64 2152558766, i64 2152558800}
!10 = !{i64 2148931931}
!11 = !{i64 2148927755}
!12 = !{i64 2148927830, i64 2148927857, i64 2148927904, i64 2148927926, i64 2148927954, i64 2148927974}
!13 = !{i64 2148954934}
!14 = !{!"auto-init"}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2152574948, i64 2152575427, i64 2152574985, i64 2152575041, i64 2152575075, i64 2152575099, i64 2152575140, i64 2152575161, i64 2152575189, i64 2152575223}
!17 = !{i64 2152570893, i64 2152571372, i64 2152570930, i64 2152570986, i64 2152571020, i64 2152571044, i64 2152571085, i64 2152571106, i64 2152571134, i64 2152571168}
!18 = !{i64 2151462957}
!19 = !{i64 2151462799}
!20 = !{i64 2151463101}
!21 = !{i64 2149174736}
