; ModuleID = '/llk/IR/fs/squashfs/cache.c_pt.bc'
source_filename = "../fs/squashfs/cache.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.squashfs_cache = type { ptr, i32, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.squashfs_cache_entry = type { i64, i32, i32, i64, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, ptr }
%struct.squashfs_page_actor = type { ptr, i32, i32, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.squashfs_sb_info = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i64, i64, i32, i16, i64, i32, i32, i32, i32, i8 }

@.str = private unnamed_addr constant [56 x i8] c"\013SQUASHFS error: Unable to read %s cache entry [%llx]\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"\013SQUASHFS error: Failed to allocate %s cache\0A\00", align 1
@squashfs_cache_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"&cache->wait_queue\00", align 1
@squashfs_cache_init.__key.3 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"&cache->entry[i].wait_queue\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"\013SQUASHFS error: Failed to allocate %s cache entry\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"\013SQUASHFS error: Failed to allocate %s buffer\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @squashfs_cache_get(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = alloca %struct.wait_queue_entry, align 4
  %7 = getelementptr inbounds %struct.squashfs_cache, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.squashfs_cache, ptr %1, i32 0, i32 2
  %9 = getelementptr inbounds %struct.squashfs_cache, ptr %1, i32 0, i32 1
  %10 = getelementptr inbounds %struct.squashfs_cache, ptr %1, i32 0, i32 10
  %11 = getelementptr inbounds %struct.squashfs_cache, ptr %1, i32 0, i32 5
  %12 = getelementptr inbounds %struct.squashfs_cache, ptr %1, i32 0, i32 4
  %13 = getelementptr inbounds %struct.squashfs_cache, ptr %1, i32 0, i32 9
  br label %14

14:                                               ; preds = %55, %4
  %15 = load i32, ptr %8, align 4
  %16 = load i32, ptr %9, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = load ptr, ptr %10, align 4
  br label %20

20:                                               ; preds = %27, %18
  %21 = phi i32 [ %15, %18 ], [ %29, %27 ]
  %22 = phi i32 [ 0, %18 ], [ %30, %27 ]
  %23 = getelementptr %struct.squashfs_cache_entry, ptr %19, i32 %21
  %24 = load i64, ptr %23, align 8
  %25 = icmp eq i64 %24, %2
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 %21, ptr %8, align 4
  br label %32

27:                                               ; preds = %20
  %28 = add i32 %21, 1
  %29 = srem i32 %28, %16
  %30 = add nuw nsw i32 %22, 1
  %31 = icmp eq i32 %30, %16
  br i1 %31, label %36, label %20

32:                                               ; preds = %26, %14
  %33 = phi i32 [ %22, %26 ], [ 0, %14 ]
  %34 = phi i32 [ %21, %26 ], [ %15, %14 ]
  %35 = icmp eq i32 %33, %16
  br i1 %35, label %36, label %100

36:                                               ; preds = %32, %27
  %37 = load i32, ptr %11, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %36
  %40 = load i32, ptr %12, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %12, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %42 = load i16, ptr %7, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %7, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %44 = load i32, ptr %11, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !12
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #10
  %47 = call i32 @prepare_to_wait_event(ptr noundef %13, ptr noundef nonnull %5, i32 noundef 2) #10
  %48 = load i32, ptr %11, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %50, %46
  call void @schedule() #10
  %51 = call i32 @prepare_to_wait_event(ptr noundef %13, ptr noundef nonnull %5, i32 noundef 2) #10
  %52 = load i32, ptr %11, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %50, label %54

54:                                               ; preds = %50, %46
  call void @finish_wait(ptr noundef %13, ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #10
  br label %55

55:                                               ; preds = %54, %39
  call void @_raw_spin_lock(ptr noundef %7) #10
  %56 = load i32, ptr %12, align 4
  %57 = add i32 %56, -1
  store i32 %57, ptr %12, align 4
  br label %14

58:                                               ; preds = %36
  %59 = getelementptr inbounds %struct.squashfs_cache, ptr %1, i32 0, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = load ptr, ptr %10, align 4
  br i1 %17, label %62, label %73

62:                                               ; preds = %68, %58
  %63 = phi i32 [ %70, %68 ], [ %60, %58 ]
  %64 = phi i32 [ %71, %68 ], [ 0, %58 ]
  %65 = getelementptr %struct.squashfs_cache_entry, ptr %61, i32 %63, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %62
  %69 = add i32 %63, 1
  %70 = srem i32 %69, %16
  %71 = add nuw nsw i32 %64, 1
  %72 = icmp eq i32 %71, %16
  br i1 %72, label %73, label %62

73:                                               ; preds = %68, %62, %58
  %74 = phi i32 [ %60, %58 ], [ %63, %62 ], [ %70, %68 ]
  %75 = add i32 %74, 1
  %76 = srem i32 %75, %16
  store i32 %76, ptr %59, align 4
  %77 = getelementptr %struct.squashfs_cache_entry, ptr %61, i32 %74
  %78 = add i32 %37, -1
  store i32 %78, ptr %11, align 4
  store i64 %2, ptr %77, align 8
  %79 = getelementptr %struct.squashfs_cache_entry, ptr %61, i32 %74, i32 2
  store i32 1, ptr %79, align 4
  %80 = getelementptr %struct.squashfs_cache_entry, ptr %61, i32 %74, i32 4
  store i32 1, ptr %80, align 8
  %81 = getelementptr %struct.squashfs_cache_entry, ptr %61, i32 %74, i32 6
  store i32 0, ptr %81, align 8
  %82 = getelementptr %struct.squashfs_cache_entry, ptr %61, i32 %74, i32 5
  store i32 0, ptr %82, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %83 = load i16, ptr %7, align 4
  %84 = add i16 %83, 1
  store i16 %84, ptr %7, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %85 = getelementptr %struct.squashfs_cache_entry, ptr %61, i32 %74, i32 3
  %86 = getelementptr %struct.squashfs_cache_entry, ptr %61, i32 %74, i32 10
  %87 = load ptr, ptr %86, align 8
  %88 = call i32 @squashfs_read_data(ptr noundef %0, i64 noundef %2, i32 noundef %3, ptr noundef %85, ptr noundef %87) #10
  %89 = getelementptr %struct.squashfs_cache_entry, ptr %61, i32 %74, i32 1
  store i32 %88, ptr %89, align 8
  call void @_raw_spin_lock(ptr noundef %7) #10
  %90 = load i32, ptr %89, align 8
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %73
  store i32 %90, ptr %82, align 4
  br label %93

93:                                               ; preds = %92, %73
  store i32 0, ptr %80, align 8
  %94 = load i32, ptr %81, align 8
  %95 = icmp eq i32 %94, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #10
  %96 = load i16, ptr %7, align 4
  %97 = add i16 %96, 1
  store i16 %97, ptr %7, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10
  call void asm sideeffect "", "~{memory}"() #10
  br i1 %95, label %137, label %98

98:                                               ; preds = %93
  %99 = getelementptr %struct.squashfs_cache_entry, ptr %61, i32 %74, i32 7
  call void @__wake_up(ptr noundef %99, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  br label %137

100:                                              ; preds = %32
  %101 = load ptr, ptr %10, align 4
  %102 = getelementptr %struct.squashfs_cache_entry, ptr %101, i32 %34
  %103 = getelementptr %struct.squashfs_cache_entry, ptr %101, i32 %34, i32 2
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load i32, ptr %11, align 4
  %108 = add i32 %107, -1
  store i32 %108, ptr %11, align 4
  %109 = load i32, ptr %103, align 4
  br label %110

110:                                              ; preds = %106, %100
  %111 = phi i32 [ %109, %106 ], [ %104, %100 ]
  %112 = add i32 %111, 1
  store i32 %112, ptr %103, align 4
  %113 = getelementptr %struct.squashfs_cache_entry, ptr %101, i32 %34, i32 4
  %114 = load i32, ptr %113, align 8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %134, label %116

116:                                              ; preds = %110
  %117 = getelementptr %struct.squashfs_cache_entry, ptr %101, i32 %34, i32 6
  %118 = load i32, ptr %117, align 8
  %119 = add i32 %118, 1
  store i32 %119, ptr %117, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %120 = load i16, ptr %7, align 4
  %121 = add i16 %120, 1
  store i16 %121, ptr %7, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %122 = load i32, ptr %113, align 8
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %137, label %124

124:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false), !annotation !12
  call void @init_wait_entry(ptr noundef nonnull %6, i32 noundef 0) #10
  %125 = getelementptr %struct.squashfs_cache_entry, ptr %101, i32 %34, i32 7
  %126 = call i32 @prepare_to_wait_event(ptr noundef %125, ptr noundef nonnull %6, i32 noundef 2) #10
  %127 = load i32, ptr %113, align 8
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %129, %124
  call void @schedule() #10
  %130 = call i32 @prepare_to_wait_event(ptr noundef %125, ptr noundef nonnull %6, i32 noundef 2) #10
  %131 = load i32, ptr %113, align 8
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %129

133:                                              ; preds = %129, %124
  call void @finish_wait(ptr noundef %125, ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #10
  br label %137

134:                                              ; preds = %110
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %135 = load i16, ptr %7, align 4
  %136 = add i16 %135, 1
  store i16 %136, ptr %7, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %137

137:                                              ; preds = %134, %133, %116, %98, %93
  %138 = phi ptr [ %77, %98 ], [ %102, %133 ], [ %102, %116 ], [ %102, %134 ], [ %77, %93 ]
  %139 = getelementptr inbounds %struct.squashfs_cache_entry, ptr %138, i32 0, i32 5
  %140 = load i32, ptr %139, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %137
  %143 = load ptr, ptr %1, align 4
  %144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %143, i64 noundef %2) #11
  br label %145

145:                                              ; preds = %142, %137
  ret ptr %138
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @squashfs_read_data(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @squashfs_cache_put(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.squashfs_cache_entry, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.squashfs_cache, ptr %3, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.squashfs_cache_entry, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -1
  store i32 %7, ptr %5, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.squashfs_cache, ptr %3, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.squashfs_cache, ptr %3, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %17 = load i16, ptr %4, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %19 = getelementptr inbounds %struct.squashfs_cache, ptr %3, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %19, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %23

20:                                               ; preds = %9, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %21 = load i16, ptr %4, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %23

23:                                               ; preds = %20, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @squashfs_cache_delete(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %43, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.squashfs_cache, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %40

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.squashfs_cache, ptr %0, i32 0, i32 10
  %9 = getelementptr inbounds %struct.squashfs_cache, ptr %0, i32 0, i32 7
  br label %10

10:                                               ; preds = %33, %7
  %11 = phi i32 [ 0, %7 ], [ %37, %33 ]
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr %struct.squashfs_cache_entry, ptr %12, i32 %11, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %33, label %16

16:                                               ; preds = %10
  %17 = load i32, ptr %9, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %19, %16
  %20 = phi ptr [ %29, %19 ], [ %14, %16 ]
  %21 = phi i32 [ %24, %19 ], [ 0, %16 ]
  %22 = getelementptr ptr, ptr %20, i32 %21
  %23 = load ptr, ptr %22, align 4
  tail call void @kfree(ptr noundef %23) #10
  %24 = add nuw nsw i32 %21, 1
  %25 = load i32, ptr %9, align 4
  %26 = icmp slt i32 %24, %25
  %27 = load ptr, ptr %8, align 4
  %28 = getelementptr %struct.squashfs_cache_entry, ptr %27, i32 %11, i32 9
  %29 = load ptr, ptr %28, align 4
  br i1 %26, label %19, label %30

30:                                               ; preds = %19, %16
  %31 = phi ptr [ %14, %16 ], [ %29, %19 ]
  tail call void @kfree(ptr noundef %31) #10
  %32 = load ptr, ptr %8, align 4
  br label %33

33:                                               ; preds = %30, %10
  %34 = phi ptr [ %32, %30 ], [ %12, %10 ]
  %35 = getelementptr %struct.squashfs_cache_entry, ptr %34, i32 %11, i32 10
  %36 = load ptr, ptr %35, align 8
  tail call void @kfree(ptr noundef %36) #10
  %37 = add nuw nsw i32 %11, 1
  %38 = load i32, ptr %4, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %10, label %40

40:                                               ; preds = %33, %3
  %41 = getelementptr inbounds %struct.squashfs_cache, ptr %0, i32 0, i32 10
  %42 = load ptr, ptr %41, align 4
  tail call void @kfree(ptr noundef %42) #10
  tail call void @kfree(ptr noundef nonnull %0) #10
  br label %43

43:                                               ; preds = %40, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @squashfs_cache_init(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 52) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %0) #11
  br label %85

9:                                                ; preds = %3
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 64) #10
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %12, label %14, !prof !13

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.squashfs_cache, ptr %5, i32 0, i32 10
  store ptr null, ptr %13, align 8
  br label %82

14:                                               ; preds = %9
  %15 = extractvalue { i32, i1 } %10, 0
  %16 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %15, i32 noundef 3520) #13
  %17 = getelementptr inbounds %struct.squashfs_cache, ptr %5, i32 0, i32 10
  store ptr %16, ptr %17, align 8
  %18 = icmp eq ptr %16, null
  br i1 %18, label %82, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.squashfs_cache, ptr %5, i32 0, i32 2
  store i32 0, ptr %20, align 8
  %21 = getelementptr inbounds %struct.squashfs_cache, ptr %5, i32 0, i32 3
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.squashfs_cache, ptr %5, i32 0, i32 5
  store i32 %1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.squashfs_cache, ptr %5, i32 0, i32 1
  store i32 %1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.squashfs_cache, ptr %5, i32 0, i32 6
  store i32 %2, ptr %24, align 8
  %25 = ashr i32 %2, 12
  %26 = getelementptr inbounds %struct.squashfs_cache, ptr %5, i32 0, i32 7
  %27 = icmp ult i32 %2, 4096
  %28 = select i1 %27, i32 1, i32 %25
  store i32 %28, ptr %26, align 4
  store ptr %0, ptr %5, align 8
  %29 = getelementptr inbounds %struct.squashfs_cache, ptr %5, i32 0, i32 4
  store i32 0, ptr %29, align 8
  %30 = getelementptr inbounds %struct.squashfs_cache, ptr %5, i32 0, i32 8
  store i32 0, ptr %30, align 8
  %31 = getelementptr inbounds %struct.squashfs_cache, ptr %5, i32 0, i32 9
  tail call void @__init_waitqueue_head(ptr noundef %31, ptr noundef nonnull @.str.2, ptr noundef nonnull @squashfs_cache_init.__key) #10
  %32 = icmp eq i32 %1, 0
  br i1 %32, label %85, label %33

33:                                               ; preds = %74, %19
  %34 = phi i32 [ %80, %74 ], [ 0, %19 ]
  %35 = load ptr, ptr %17, align 8
  %36 = getelementptr %struct.squashfs_cache_entry, ptr %35, i32 %34
  %37 = getelementptr %struct.squashfs_cache_entry, ptr %35, i32 %34, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %37, ptr noundef nonnull @.str.4, ptr noundef nonnull @squashfs_cache_init.__key.3) #10
  %38 = getelementptr %struct.squashfs_cache_entry, ptr %35, i32 %34, i32 8
  store ptr %5, ptr %38, align 8
  store i64 -1, ptr %36, align 8
  %39 = load i32, ptr %26, align 4
  %40 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %39, i32 4) #10
  %41 = extractvalue { i32, i1 } %40, 1
  br i1 %41, label %42, label %44, !prof !13

42:                                               ; preds = %33
  %43 = getelementptr %struct.squashfs_cache_entry, ptr %35, i32 %34, i32 9
  store ptr null, ptr %43, align 4
  br label %82

44:                                               ; preds = %33
  %45 = extractvalue { i32, i1 } %40, 0
  %46 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %45, i32 noundef 3520) #13
  %47 = getelementptr %struct.squashfs_cache_entry, ptr %35, i32 %34, i32 9
  store ptr %46, ptr %47, align 4
  %48 = icmp eq ptr %46, null
  br i1 %48, label %82, label %49

49:                                               ; preds = %44
  %50 = load i32, ptr %26, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %56, label %66

52:                                               ; preds = %56
  %53 = add nuw nsw i32 %57, 1
  %54 = load i32, ptr %26, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %52, %49
  %57 = phi i32 [ %53, %52 ], [ 0, %49 ]
  %58 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %59 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %58, i32 noundef 3264, i32 noundef 4096) #12
  %60 = load ptr, ptr %47, align 4
  %61 = getelementptr ptr, ptr %60, i32 %57
  store ptr %59, ptr %61, align 4
  %62 = load ptr, ptr %47, align 4
  %63 = getelementptr ptr, ptr %62, i32 %57
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %82, label %52

66:                                               ; preds = %52, %49
  %67 = phi ptr [ %46, %49 ], [ %62, %52 ]
  %68 = phi i32 [ %50, %49 ], [ %54, %52 ]
  %69 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %70 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %69, i32 noundef 3264, i32 noundef 16) #12
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = getelementptr %struct.squashfs_cache_entry, ptr %35, i32 %34, i32 10
  store ptr null, ptr %73, align 8
  br label %82

74:                                               ; preds = %66
  %75 = shl i32 %68, 12
  %76 = getelementptr inbounds %struct.squashfs_page_actor, ptr %70, i32 0, i32 2
  store i32 %75, ptr %76, align 8
  store ptr %67, ptr %70, align 8
  %77 = getelementptr inbounds %struct.squashfs_page_actor, ptr %70, i32 0, i32 1
  store i32 %68, ptr %77, align 4
  %78 = getelementptr inbounds %struct.squashfs_page_actor, ptr %70, i32 0, i32 3
  store i32 0, ptr %78, align 4
  %79 = getelementptr %struct.squashfs_cache_entry, ptr %35, i32 %34, i32 10
  store ptr %70, ptr %79, align 8
  %80 = add nuw nsw i32 %34, 1
  %81 = icmp eq i32 %80, %1
  br i1 %81, label %85, label %33

82:                                               ; preds = %72, %56, %44, %42, %14, %12
  %83 = phi ptr [ @.str.5, %72 ], [ @.str.1, %12 ], [ @.str.1, %14 ], [ @.str.5, %42 ], [ @.str.6, %56 ], [ @.str.5, %44 ]
  %84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %83, ptr noundef %0) #11
  tail call void @squashfs_cache_delete(ptr noundef nonnull %5)
  br label %85

85:                                               ; preds = %82, %74, %19, %7
  %86 = phi ptr [ null, %7 ], [ null, %82 ], [ %5, %19 ], [ %5, %74 ]
  ret ptr %86
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @squashfs_copy_data(ptr noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %42, label %6

6:                                                ; preds = %4
  %7 = icmp eq ptr %0, null
  %8 = getelementptr inbounds %struct.squashfs_cache_entry, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 8
  br i1 %7, label %14, label %10

10:                                               ; preds = %6
  %11 = icmp sgt i32 %9, %2
  br i1 %11, label %12, label %39

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.squashfs_cache_entry, ptr %1, i32 0, i32 9
  br label %17

14:                                               ; preds = %6
  %15 = sub i32 %9, %2
  %16 = tail call i32 @llvm.smin.i32(i32 %15, i32 %3)
  br label %42

17:                                               ; preds = %33, %12
  %18 = phi i32 [ %9, %12 ], [ %37, %33 ]
  %19 = phi ptr [ %0, %12 ], [ %34, %33 ]
  %20 = phi i32 [ %2, %12 ], [ %36, %33 ]
  %21 = phi i32 [ %3, %12 ], [ %35, %33 ]
  %22 = load ptr, ptr %13, align 4
  %23 = lshr i32 %20, 12
  %24 = getelementptr ptr, ptr %22, i32 %23
  %25 = load ptr, ptr %24, align 4
  %26 = and i32 %20, 4095
  %27 = getelementptr i8, ptr %25, i32 %26
  %28 = sub i32 %18, %20
  %29 = sub nuw nsw i32 4096, %26
  %30 = tail call i32 @llvm.smin.i32(i32 %28, i32 %29)
  %31 = icmp sgt i32 %21, %30
  br i1 %31, label %33, label %32

32:                                               ; preds = %17
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %19, ptr align 1 %27, i32 %21, i1 false)
  br label %39

33:                                               ; preds = %17
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %19, ptr align 1 %27, i32 %30, i1 false)
  %34 = getelementptr i8, ptr %19, i32 %30
  %35 = sub i32 %21, %30
  %36 = add i32 %30, %20
  %37 = load i32, ptr %8, align 8
  %38 = icmp sgt i32 %37, %36
  br i1 %38, label %17, label %39

39:                                               ; preds = %33, %32, %10
  %40 = phi i32 [ 0, %32 ], [ %3, %10 ], [ %35, %33 ]
  %41 = sub i32 %3, %40
  br label %42

42:                                               ; preds = %39, %14, %4
  %43 = phi i32 [ %16, %14 ], [ %41, %39 ], [ 0, %4 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @squashfs_read_metadata(ptr noundef %0, ptr noundef writeonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = icmp slt i32 %4, 0
  br i1 %8, label %119, label %9, !prof !13

9:                                                ; preds = %5
  %10 = icmp eq i32 %4, 0
  br i1 %10, label %119, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.squashfs_sb_info, ptr %7, i32 0, i32 3
  br label %13

13:                                               ; preds = %94, %11
  %14 = phi i32 [ %4, %11 ], [ %65, %94 ]
  %15 = phi ptr [ %1, %11 ], [ %64, %94 ]
  %16 = load ptr, ptr %12, align 4
  %17 = load i64, ptr %2, align 8
  %18 = tail call ptr @squashfs_cache_get(ptr noundef %0, ptr noundef %16, i64 noundef %17, i32 noundef 0)
  %19 = getelementptr inbounds %struct.squashfs_cache_entry, ptr %18, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %96

22:                                               ; preds = %13
  %23 = load i32, ptr %3, align 4
  %24 = getelementptr inbounds %struct.squashfs_cache_entry, ptr %18, i32 0, i32 1
  %25 = load i32, ptr %24, align 8
  %26 = icmp sgt i32 %25, %23
  br i1 %26, label %27, label %96

27:                                               ; preds = %22
  %28 = icmp eq ptr %15, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.squashfs_cache_entry, ptr %18, i32 0, i32 9
  br label %34

31:                                               ; preds = %27
  %32 = sub i32 %25, %23
  %33 = tail call i32 @llvm.smin.i32(i32 %32, i32 %14) #10
  br label %60

34:                                               ; preds = %50, %29
  %35 = phi i32 [ %25, %29 ], [ %54, %50 ]
  %36 = phi ptr [ %15, %29 ], [ %51, %50 ]
  %37 = phi i32 [ %23, %29 ], [ %53, %50 ]
  %38 = phi i32 [ %14, %29 ], [ %52, %50 ]
  %39 = load ptr, ptr %30, align 4
  %40 = lshr i32 %37, 12
  %41 = getelementptr ptr, ptr %39, i32 %40
  %42 = load ptr, ptr %41, align 4
  %43 = and i32 %37, 4095
  %44 = getelementptr i8, ptr %42, i32 %43
  %45 = sub i32 %35, %37
  %46 = sub nuw nsw i32 4096, %43
  %47 = tail call i32 @llvm.smin.i32(i32 %45, i32 %46) #10
  %48 = icmp sgt i32 %38, %47
  br i1 %48, label %50, label %49

49:                                               ; preds = %34
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %36, ptr align 1 %44, i32 %38, i1 false) #10
  br label %56

50:                                               ; preds = %34
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %36, ptr align 1 %44, i32 %47, i1 false) #10
  %51 = getelementptr i8, ptr %36, i32 %47
  %52 = sub i32 %38, %47
  %53 = add i32 %47, %37
  %54 = load i32, ptr %24, align 8
  %55 = icmp sgt i32 %54, %53
  br i1 %55, label %34, label %56

56:                                               ; preds = %50, %49
  %57 = phi i32 [ 0, %49 ], [ %52, %50 ]
  %58 = sub i32 %14, %57
  %59 = load i32, ptr %3, align 4
  br label %60

60:                                               ; preds = %56, %31
  %61 = phi i32 [ %23, %31 ], [ %59, %56 ]
  %62 = phi i32 [ %33, %31 ], [ %58, %56 ]
  %63 = getelementptr i8, ptr %15, i32 %62
  %64 = select i1 %28, ptr null, ptr %63
  %65 = sub i32 %14, %62
  %66 = add i32 %61, %62
  store i32 %66, ptr %3, align 4
  %67 = load i32, ptr %24, align 8
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.squashfs_cache_entry, ptr %18, i32 0, i32 3
  %71 = load i64, ptr %70, align 8
  store i64 %71, ptr %2, align 8
  store i32 0, ptr %3, align 4
  br label %72

72:                                               ; preds = %69, %60
  %73 = getelementptr inbounds %struct.squashfs_cache_entry, ptr %18, i32 0, i32 8
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.squashfs_cache, ptr %74, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %75) #10
  %76 = getelementptr inbounds %struct.squashfs_cache_entry, ptr %18, i32 0, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = add i32 %77, -1
  store i32 %78, ptr %76, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.squashfs_cache, ptr %74, i32 0, i32 5
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, 1
  store i32 %83, ptr %81, align 4
  %84 = getelementptr inbounds %struct.squashfs_cache, ptr %74, i32 0, i32 4
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %80
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %88 = load i16, ptr %75, align 4
  %89 = add i16 %88, 1
  store i16 %89, ptr %75, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %90 = getelementptr inbounds %struct.squashfs_cache, ptr %74, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %90, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %94

91:                                               ; preds = %80, %72
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %92 = load i16, ptr %75, align 4
  %93 = add i16 %92, 1
  store i16 %93, ptr %75, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %94

94:                                               ; preds = %91, %87
  %95 = icmp eq i32 %65, 0
  br i1 %95, label %119, label %13

96:                                               ; preds = %22, %13
  %97 = phi i32 [ %20, %13 ], [ -5, %22 ]
  %98 = getelementptr inbounds %struct.squashfs_cache_entry, ptr %18, i32 0, i32 8
  %99 = load ptr, ptr %98, align 8
  %100 = getelementptr inbounds %struct.squashfs_cache, ptr %99, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %100) #10
  %101 = getelementptr inbounds %struct.squashfs_cache_entry, ptr %18, i32 0, i32 2
  %102 = load i32, ptr %101, align 4
  %103 = add i32 %102, -1
  store i32 %103, ptr %101, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %96
  %106 = getelementptr inbounds %struct.squashfs_cache, ptr %99, i32 0, i32 5
  %107 = load i32, ptr %106, align 4
  %108 = add i32 %107, 1
  store i32 %108, ptr %106, align 4
  %109 = getelementptr inbounds %struct.squashfs_cache, ptr %99, i32 0, i32 4
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %105
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %113 = load i16, ptr %100, align 4
  %114 = add i16 %113, 1
  store i16 %114, ptr %100, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %115 = getelementptr inbounds %struct.squashfs_cache, ptr %99, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %115, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %119

116:                                              ; preds = %105, %96
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %117 = load i16, ptr %100, align 4
  %118 = add i16 %117, 1
  store i16 %118, ptr %100, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %119

119:                                              ; preds = %116, %112, %94, %9, %5
  %120 = phi i32 [ -5, %5 ], [ %97, %112 ], [ %97, %116 ], [ 0, %9 ], [ %4, %94 ]
  ret i32 %120
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @squashfs_get_fragment(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.squashfs_sb_info, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = tail call ptr @squashfs_cache_get(ptr noundef %0, ptr noundef %7, i64 noundef %1, i32 noundef %2)
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @squashfs_get_datablock(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.squashfs_sb_info, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @squashfs_cache_get(ptr noundef %0, ptr noundef %7, i64 noundef %1, i32 noundef %2)
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @squashfs_read_table(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add i32 %2, 4095
  %5 = lshr i32 %4, 12
  %6 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %2, i32 noundef 3264) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %41, label %8

8:                                                ; preds = %3
  %9 = shl nuw nsw i32 %5, 2
  %10 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %38, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 16) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  %17 = icmp eq i32 %2, 0
  %18 = and i32 %4, -4096
  %19 = select i1 %17, i32 %18, i32 %2
  %20 = getelementptr inbounds %struct.squashfs_page_actor, ptr %14, i32 0, i32 2
  store i32 %19, ptr %20, align 8
  store ptr %10, ptr %14, align 8
  %21 = getelementptr inbounds %struct.squashfs_page_actor, ptr %14, i32 0, i32 1
  store i32 %5, ptr %21, align 4
  %22 = getelementptr inbounds %struct.squashfs_page_actor, ptr %14, i32 0, i32 3
  store i32 0, ptr %22, align 4
  %23 = icmp ult i32 %4, 4096
  br i1 %23, label %34, label %24

24:                                               ; preds = %16
  %25 = call i32 @llvm.umax.i32(i32 %5, i32 1)
  br label %27

26:                                               ; preds = %12
  tail call void @kfree(ptr noundef nonnull %10) #10
  br label %38

27:                                               ; preds = %27, %24
  %28 = phi ptr [ %32, %27 ], [ %6, %24 ]
  %29 = phi i32 [ %31, %27 ], [ 0, %24 ]
  %30 = getelementptr ptr, ptr %10, i32 %29
  store ptr %28, ptr %30, align 4
  %31 = add nuw nsw i32 %29, 1
  %32 = getelementptr i8, ptr %28, i32 4096
  %33 = icmp eq i32 %31, %25
  br i1 %33, label %34, label %27

34:                                               ; preds = %27, %16
  %35 = or i32 %2, 16777216
  %36 = tail call i32 @squashfs_read_data(ptr noundef %0, i64 noundef %1, i32 noundef %35, ptr noundef null, ptr noundef nonnull %14) #10
  tail call void @kfree(ptr noundef nonnull %10) #10
  tail call void @kfree(ptr noundef nonnull %14) #10
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34, %26, %8
  %39 = phi i32 [ -12, %26 ], [ %36, %34 ], [ -12, %8 ]
  tail call void @kfree(ptr noundef nonnull %6) #10
  %40 = inttoptr i32 %39 to ptr
  br label %41

41:                                               ; preds = %38, %34, %3
  %42 = phi ptr [ %40, %38 ], [ %6, %34 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

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
!8 = !{i64 2149005293}
!9 = !{i64 2149001117}
!10 = !{i64 2149001192, i64 2149001219, i64 2149001266, i64 2149001288, i64 2149001316, i64 2149001336}
!11 = !{i64 2149028296}
!12 = !{!"auto-init"}
!13 = !{!"branch_weights", i32 1, i32 2000}
