; ModuleID = '/llk/IR/fs/ext4/page-io.c_pt.bc'
source_filename = "../fs/ext4/page-io.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.ext4_io_end = type { %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ext4_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i32, i64, %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, ptr, %struct.kobject, %struct.completion, ptr, ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.ext4_orphan_info, i32, i32, i32, ptr, i32, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.atomic_t, %struct.rb_root, %struct.rwlock_t, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i64, i32, i32, ptr, i32, ptr, %struct.timer_list, ptr, i32, ptr, i32, ptr, i32, %struct.shrinker, %struct.list_head, i32, %struct.ext4_es_stats, ptr, ptr, [16 x i8], %struct.spinlock, [1 x %struct.ext4_journal_trigger], %struct.ratelimit_state, %struct.ratelimit_state, %struct.ratelimit_state, %struct.atomic_t, %struct.atomic_t, %struct.fscrypt_dummy_policy, %struct.percpu_rw_semaphore, ptr, i64, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i64, ptr, i64, i32, i32, i32, i64, ptr, i64, %struct.work_struct, %struct.atomic_t, [2 x %struct.list_head], [2 x %struct.list_head], i32, %struct.spinlock, ptr, %struct.ext4_fc_stats, i32, %struct.ext4_fc_replay_state, [52 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ext4_orphan_info = type { i32, i32, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ext4_es_stats = type { i32, %struct.percpu_counter, %struct.percpu_counter, i64, i64, %struct.percpu_counter, %struct.percpu_counter }
%struct.ext4_journal_trigger = type { %struct.jbd2_buffer_trigger_type, ptr }
%struct.jbd2_buffer_trigger_type = type { ptr, ptr }
%struct.fscrypt_dummy_policy = type {}
%struct.ext4_fc_stats = type { [10 x i32], i32, i32, i32, i32, i32, i64 }
%struct.ext4_fc_replay_state = type { i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, %union.anon.28, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%union.anon.28 = type {}
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ext4_io_submit = type { ptr, ptr, ptr, i64 }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16 }
%struct.page = type { i32, %union.anon.1, %union.anon.69, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.69 = type { %struct.atomic_t }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }

@.str = private unnamed_addr constant [12 x i8] c"ext4_io_end\00", align 1
@io_end_cachep = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"ext4_io_end_vec\00", align 1
@io_end_vec_cachep = internal unnamed_addr global ptr null, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"\010\00", align 1
@.str.4 = private unnamed_addr constant [102 x i8] c"failed to convert unwritten extents to written extents -- potential data loss!  (inode %lu, error %d)\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"fs/ext4/page-io.c\00", align 1
@buffer_io_error._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.buffer_io_error = private unnamed_addr constant [16 x i8] c"buffer_io_error\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"\013Buffer I/O error on device %pg, logical block %llu\0A\00", align 1
@ext4__ioend_wq = external dso_local global [37 x %struct.wait_queue_head], align 4
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@ext4_end_bio.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"io_end is NULL: %s: sector %Lu len %u err %d\0A\00", align 1
@__func__.ext4_end_bio = private unnamed_addr constant [13 x i8] c"ext4_end_bio\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"I/O error %d writing to inode %lu starting block %llu)\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @ext4_init_pageio() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 36, i32 noundef 4, i32 noundef 131072, ptr noundef null) #8
  store ptr %1, ptr @io_end_cachep, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.1, i32 noundef 24, i32 noundef 8, i32 noundef 0, ptr noundef null) #8
  store ptr %4, ptr @io_end_vec_cachep, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = load ptr, ptr @io_end_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %7) #8
  br label %8

8:                                                ; preds = %6, %3, %0
  %9 = phi i32 [ -12, %6 ], [ -12, %0 ], [ 0, %3 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_exit_pageio() local_unnamed_addr #2 {
  %1 = load ptr, ptr @io_end_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #8
  %2 = load ptr, ptr @io_end_vec_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ext4_alloc_io_end_vec(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @io_end_vec_cachep, align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 3392) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  store volatile ptr %3, ptr %3, align 8
  %6 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.ext4_io_end, ptr %0, i32 0, i32 6
  %8 = getelementptr inbounds %struct.ext4_io_end, ptr %0, i32 0, i32 6, i32 1
  %9 = load ptr, ptr %8, align 4
  store ptr %3, ptr %8, align 4
  store ptr %7, ptr %3, align 8
  store ptr %9, ptr %6, align 4
  store volatile ptr %3, ptr %9, align 4
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi ptr [ %3, %5 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ext4_last_io_end_vec(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ext4_io_end, ptr %0, i32 0, i32 6
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/page-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 82, 0\0A.popsection", ""() #8, !srcloc !9
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ext4_io_end, ptr %0, i32 0, i32 6, i32 1
  %8 = load ptr, ptr %7, align 4
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_end_io_rsv_work(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.list_head, align 8
  %3 = getelementptr i8, ptr %0, i32 -8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  %4 = getelementptr i8, ptr %0, i32 -12
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #8
  %6 = load ptr, ptr %3, align 4
  store ptr %6, ptr %2, align 8
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %2, ptr %7, align 4
  %8 = getelementptr i8, ptr %0, i32 -4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  store ptr %2, ptr %9, align 4
  store volatile ptr %3, ptr %3, align 4
  store ptr %3, ptr %8, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #8
  %11 = load volatile ptr, ptr %2, align 8
  %12 = icmp eq ptr %11, %2
  br i1 %12, label %68, label %13

13:                                               ; preds = %64, %1
  %14 = phi ptr [ %66, %64 ], [ %11, %1 ]
  %15 = phi i32 [ %65, %64 ], [ 0, %1 ]
  %16 = getelementptr inbounds %struct.ext4_io_end, ptr %14, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21, !prof !8

20:                                               ; preds = %13
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/page-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 254, 0\0A.popsection", ""() #8, !srcloc !10
  unreachable

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %14, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %23, ptr %25, align 4
  store volatile ptr %24, ptr %23, align 4
  store volatile ptr %14, ptr %14, align 4
  store ptr %14, ptr %22, align 4
  %26 = getelementptr inbounds %struct.ext4_io_end, ptr %14, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ext4_io_end, ptr %14, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  store ptr null, ptr %28, align 4
  %30 = call i32 @ext4_convert_unwritten_io_end_vec(ptr noundef %29, ptr noundef %14) #8
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 8
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 27
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ext4_sb_info, ptr %36, i32 0, i32 48
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 10
  %43 = load i32, ptr %42, align 4
  call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %34, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %43, i32 noundef %30) #8
  br label %44

44:                                               ; preds = %41, %32, %21
  %45 = load ptr, ptr %26, align 4
  %46 = load i32, ptr %16, align 4
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = and i32 %46, -2
  store i32 %50, ptr %16, align 4
  %51 = getelementptr i8, ptr %45, i32 512
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %51) #8, !srcloc !12
  %52 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %51, ptr %51, i32 1, ptr elementtype(i32) %51) #8, !srcloc !13
  %53 = extractvalue { i32, i32 } %52, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = ptrtoint ptr %45 to i32
  %57 = urem i32 %56, 37
  %58 = getelementptr [37 x %struct.wait_queue_head], ptr @ext4__ioend_wq, i32 0, i32 %57
  call void @__wake_up(ptr noundef %58, i32 noundef 3, i32 noundef 0, ptr noundef null) #8
  br label %59

59:                                               ; preds = %55, %49, %44
  call fastcc void @ext4_release_io_end(ptr noundef %14) #8
  %60 = icmp eq i32 %15, 0
  %61 = icmp ne i32 %30, 0
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %63, label %64, !prof !8

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %63, %59
  %65 = phi i32 [ %30, %63 ], [ %15, %59 ]
  %66 = load volatile ptr, ptr %2, align 8
  %67 = icmp eq ptr %66, %2
  br i1 %67, label %68, label %13

68:                                               ; preds = %64, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ext4_init_io_end(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr @io_end_cachep, align 4
  %4 = or i32 %1, 256
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %3, i32 noundef %4) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ext4_io_end, ptr %5, i32 0, i32 2
  store ptr %0, ptr %8, align 4
  store volatile ptr %5, ptr %5, align 8
  %9 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %5, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ext4_io_end, ptr %5, i32 0, i32 6
  store volatile ptr %10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ext4_io_end, ptr %5, i32 0, i32 6, i32 1
  store ptr %10, ptr %11, align 8
  %12 = getelementptr inbounds %struct.ext4_io_end, ptr %5, i32 0, i32 5
  store volatile i32 1, ptr %12, align 8
  br label %13

13:                                               ; preds = %7, %2
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_put_io_end_defer(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ext4_io_end, ptr %0, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #8, !srcloc !12
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #8, !srcloc !16
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %49, label %8, !prof !17

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #8
  br label %49

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !18
  %10 = getelementptr inbounds %struct.ext4_io_end, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ext4_io_end, ptr %0, i32 0, i32 6
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %9
  tail call fastcc void @ext4_release_io_end(ptr noundef %0)
  br label %49

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ext4_io_end, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 27
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ext4_io_end, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.ext4_sb_info, ptr %25, i32 0, i32 47
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33, !prof !17

33:                                               ; preds = %29
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 229, i32 noundef 9, ptr noundef null) #8
  br label %34

34:                                               ; preds = %33, %29, %19
  %35 = getelementptr i8, ptr %21, i32 484
  %36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %35) #8
  %37 = getelementptr inbounds %struct.ext4_sb_info, ptr %25, i32 0, i32 113
  %38 = load ptr, ptr %37, align 16
  %39 = getelementptr i8, ptr %21, i32 488
  %40 = load volatile ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %39
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = getelementptr i8, ptr %21, i32 496
  %44 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %38, ptr noundef %43) #8
  br label %45

45:                                               ; preds = %42, %34
  %46 = getelementptr i8, ptr %21, i32 492
  %47 = load ptr, ptr %46, align 4
  store ptr %0, ptr %46, align 4
  store ptr %39, ptr %0, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %47, ptr %48, align 4
  store volatile ptr %0, ptr %47, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %35, i32 noundef %36) #8
  br label %49

49:                                               ; preds = %45, %18, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_release_io_end(ptr noundef %0) unnamed_addr #2 {
  %2 = load volatile ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %5, label %4, !prof !17

4:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/page-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 152, 0\0A.popsection", ""() #8, !srcloc !19
  unreachable

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ext4_io_end, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10, !prof !17

10:                                               ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/page-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 153, 0\0A.popsection", ""() #8, !srcloc !20
  unreachable

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ext4_io_end, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !17

15:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 154, i32 noundef 9, ptr noundef null) #8
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.ext4_io_end, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %20, %16
  %21 = phi ptr [ %23, %20 ], [ %18, %16 ]
  %22 = getelementptr inbounds %struct.bio, ptr %21, i32 0, i32 11
  %23 = load ptr, ptr %22, align 4
  tail call fastcc void @ext4_finish_bio(ptr noundef nonnull %21)
  tail call void @bio_put(ptr noundef nonnull %21) #8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %20

25:                                               ; preds = %20, %16
  %26 = getelementptr inbounds %struct.ext4_io_end, ptr %0, i32 0, i32 6
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %37, label %29

29:                                               ; preds = %29, %25
  %30 = phi ptr [ %31, %29 ], [ %27, %25 ]
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %33, ptr %34, align 4
  store volatile ptr %31, ptr %33, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %30, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %32, align 4
  %35 = load ptr, ptr @io_end_vec_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %35, ptr noundef %30) #8
  %36 = icmp eq ptr %31, %26
  br i1 %36, label %37, label %29

37:                                               ; preds = %29, %25
  %38 = load ptr, ptr @io_end_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %38, ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_put_io_end(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ext4_io_end, ptr %0, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #8, !srcloc !12
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #8, !srcloc !16
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %35, label %8, !prof !17

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #8
  br label %35

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !18
  %10 = getelementptr inbounds %struct.ext4_io_end, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ext4_io_end, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @ext4_convert_unwritten_io_end_vec(ptr noundef %16, ptr noundef %0) #8
  store ptr null, ptr %15, align 4
  %18 = getelementptr inbounds %struct.ext4_io_end, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %10, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %14
  %24 = and i32 %20, -2
  store i32 %24, ptr %10, align 4
  %25 = getelementptr i8, ptr %19, i32 512
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #8, !srcloc !12
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #8, !srcloc !13
  %27 = extractvalue { i32, i32 } %26, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = ptrtoint ptr %19 to i32
  %31 = urem i32 %30, 37
  %32 = getelementptr [37 x %struct.wait_queue_head], ptr @ext4__ioend_wq, i32 0, i32 %31
  tail call void @__wake_up(ptr noundef %32, i32 noundef 3, i32 noundef 0, ptr noundef null) #8
  br label %33

33:                                               ; preds = %29, %23, %14, %9
  %34 = phi i32 [ 0, %9 ], [ %17, %14 ], [ %17, %23 ], [ %17, %29 ]
  tail call fastcc void @ext4_release_io_end(ptr noundef %0)
  br label %35

35:                                               ; preds = %33, %8, %6
  %36 = phi i32 [ %34, %33 ], [ 0, %6 ], [ 0, %8 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_convert_unwritten_io_end_vec(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ext4_get_io_end(ptr noundef returned %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ext4_io_end, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #8, !srcloc !12
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #8, !srcloc !21
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !8

6:                                                ; preds = %1
  %7 = add i32 %4, 1
  %8 = or i32 %7, %4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %12, label %10, !prof !17

10:                                               ; preds = %6, %1
  %11 = phi i32 [ 2, %1 ], [ 1, %6 ]
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef %11) #8
  br label %12

12:                                               ; preds = %10, %6
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_io_submit(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ext4_io_submit, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.writeback_control, ptr %6, i32 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 1
  %10 = getelementptr inbounds %struct.ext4_io_submit, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.ext4_io_end, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 20
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i16
  %17 = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 5
  store i16 %16, ptr %17, align 4
  %18 = load ptr, ptr %2, align 4
  %19 = select i1 %9, i32 2049, i32 1
  %20 = getelementptr inbounds %struct.bio, ptr %18, i32 0, i32 2
  store i32 %19, ptr %20, align 4
  %21 = load ptr, ptr %2, align 4
  tail call void @submit_bio(ptr noundef %21) #8
  br label %22

22:                                               ; preds = %5, %1
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ext4_io_submit_init(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  store ptr %1, ptr %0, align 8
  %3 = getelementptr inbounds %struct.ext4_io_submit, ptr %0, i32 0, i32 1
  store ptr null, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ext4_io_submit, ptr %0, i32 0, i32 2
  store ptr null, ptr %4, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_bio_write_page(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12, !prof !17

12:                                               ; preds = %4
  %13 = add i32 %9, -1
  br label %16

14:                                               ; preds = %4
  %15 = ptrtoint ptr %1 to i32
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  %18 = inttoptr i32 %17 to ptr
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23, !prof !8

22:                                               ; preds = %16
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/page-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 449, 0\0A.popsection", ""() #8, !srcloc !22
  unreachable

23:                                               ; preds = %16
  %24 = load volatile i32, ptr %8, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27, !prof !17

27:                                               ; preds = %23
  %28 = add i32 %24, -1
  br label %31

29:                                               ; preds = %23
  %30 = ptrtoint ptr %1 to i32
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = inttoptr i32 %32 to ptr
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, 32768
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37, !prof !17

37:                                               ; preds = %31
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/page-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 450, 0\0A.popsection", ""() #8, !srcloc !23
  unreachable

38:                                               ; preds = %31
  br i1 %3, label %39, label %51

39:                                               ; preds = %38
  %40 = load volatile i32, ptr %8, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43, !prof !17

43:                                               ; preds = %39
  %44 = add i32 %40, -1
  br label %47

45:                                               ; preds = %39
  %46 = ptrtoint ptr %1 to i32
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = inttoptr i32 %48 to ptr
  %50 = tail call zeroext i1 @__folio_start_writeback(ptr noundef %49, i1 noundef zeroext true) #8
  br label %53

51:                                               ; preds = %38
  %52 = tail call zeroext i1 @set_page_writeback(ptr noundef %1) #8
  br label %53

53:                                               ; preds = %51, %47
  %54 = load volatile i32, ptr %8, align 4
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57, !prof !17

57:                                               ; preds = %53
  %58 = add i32 %54, -1
  br label %61

59:                                               ; preds = %53
  %60 = ptrtoint ptr %1 to i32
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = inttoptr i32 %62 to ptr
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %63) #8
  %64 = icmp ult i32 %2, 4096
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  tail call void @zero_user_segments(ptr noundef %1, i32 noundef %2, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  br label %66

66:                                               ; preds = %65, %61
  %67 = load volatile i32, ptr %1, align 4
  %68 = and i32 %67, 8192
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71, !prof !8

70:                                               ; preds = %66
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/page-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 476, 0\0A.popsection", ""() #8, !srcloc !24
  unreachable

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = inttoptr i32 %73 to ptr
  %75 = getelementptr inbounds %struct.ext4_io_submit, ptr %0, i32 0, i32 1
  %76 = getelementptr inbounds %struct.ext4_io_submit, ptr %0, i32 0, i32 2
  br label %77

77:                                               ; preds = %139, %71
  %78 = phi ptr [ %74, %71 ], [ %141, %139 ]
  %79 = getelementptr inbounds %struct.buffer_head, ptr %78, i32 0, i32 5
  %80 = load ptr, ptr %79, align 4
  %81 = ptrtoint ptr %80 to i32
  %82 = and i32 %81, 4095
  %83 = icmp ult i32 %82, %2
  br i1 %83, label %89, label %84

84:                                               ; preds = %77
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %78) #8
  %85 = load volatile i32, ptr %78, align 4
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %139

88:                                               ; preds = %84
  tail call void @_set_bit(i32 noundef 0, ptr noundef %78) #8
  br label %139

89:                                               ; preds = %77
  %90 = load volatile i32, ptr %78, align 4
  %91 = and i32 %90, 2
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %105, label %93

93:                                               ; preds = %89
  %94 = load volatile i32, ptr %78, align 4
  %95 = and i32 %94, 256
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %93
  %98 = load volatile i32, ptr %78, align 4
  %99 = and i32 %98, 16
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = load volatile i32, ptr %78, align 4
  %103 = and i32 %102, 2048
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %129, label %105

105:                                              ; preds = %101, %97, %93, %89
  %106 = load volatile i32, ptr %78, align 4
  %107 = and i32 %106, 16
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %78) #8
  br label %110

110:                                              ; preds = %109, %105
  %111 = load ptr, ptr %75, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %139, label %113

113:                                              ; preds = %110
  %114 = load ptr, ptr %0, align 8
  %115 = getelementptr inbounds %struct.writeback_control, ptr %114, i32 0, i32 4
  %116 = load i32, ptr %115, align 8
  %117 = icmp eq i32 %116, 1
  %118 = load ptr, ptr %76, align 8
  %119 = getelementptr inbounds %struct.ext4_io_end, ptr %118, i32 0, i32 2
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.inode, ptr %120, i32 0, i32 20
  %122 = load i8, ptr %121, align 1
  %123 = zext i8 %122 to i16
  %124 = getelementptr inbounds %struct.bio, ptr %111, i32 0, i32 5
  store i16 %123, ptr %124, align 4
  %125 = load ptr, ptr %75, align 4
  %126 = select i1 %117, i32 2049, i32 1
  %127 = getelementptr inbounds %struct.bio, ptr %125, i32 0, i32 2
  store i32 %126, ptr %127, align 4
  %128 = load ptr, ptr %75, align 4
  tail call void @submit_bio(ptr noundef %128) #8
  store ptr null, ptr %75, align 4
  br label %139

129:                                              ; preds = %101
  %130 = load volatile i32, ptr %78, align 4
  %131 = and i32 %130, 32
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %129
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %78) #8
  br label %134

134:                                              ; preds = %133, %129
  %135 = load volatile i32, ptr %78, align 4
  %136 = and i32 %135, 128
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  tail call void @_set_bit(i32 noundef 7, ptr noundef %78) #8
  br label %139

139:                                              ; preds = %138, %134, %113, %110, %88, %84
  %140 = getelementptr inbounds %struct.buffer_head, ptr %78, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, %74
  br i1 %142, label %143, label %77

143:                                              ; preds = %139
  %144 = load volatile i32, ptr %1, align 4
  %145 = and i32 %144, 8192
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %148, !prof !8

147:                                              ; preds = %143
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/page-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 499, 0\0A.popsection", ""() #8, !srcloc !25
  unreachable

148:                                              ; preds = %143
  %149 = load i32, ptr %72, align 4
  %150 = inttoptr i32 %149 to ptr
  %151 = getelementptr inbounds %struct.ext4_io_submit, ptr %0, i32 0, i32 3
  %152 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 20
  br label %153

153:                                              ; preds = %243, %148
  %154 = phi ptr [ %150, %148 ], [ %246, %243 ]
  %155 = phi i32 [ 0, %148 ], [ %244, %243 ]
  %156 = load volatile i32, ptr %154, align 4
  %157 = and i32 %156, 128
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %243, label %159

159:                                              ; preds = %153
  %160 = load ptr, ptr %75, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %188, label %162

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.buffer_head, ptr %154, i32 0, i32 3
  %164 = load i64, ptr %163, align 8
  %165 = load i64, ptr %151, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %228, label %170

167:                                              ; preds = %228
  %168 = load ptr, ptr %75, align 4
  %169 = icmp eq ptr %168, null
  br i1 %169, label %187, label %170

170:                                              ; preds = %167, %162
  %171 = phi ptr [ %168, %167 ], [ %160, %162 ]
  %172 = load ptr, ptr %0, align 8
  %173 = getelementptr inbounds %struct.writeback_control, ptr %172, i32 0, i32 4
  %174 = load i32, ptr %173, align 8
  %175 = icmp eq i32 %174, 1
  %176 = load ptr, ptr %76, align 8
  %177 = getelementptr inbounds %struct.ext4_io_end, ptr %176, i32 0, i32 2
  %178 = load ptr, ptr %177, align 4
  %179 = getelementptr inbounds %struct.inode, ptr %178, i32 0, i32 20
  %180 = load i8, ptr %179, align 1
  %181 = zext i8 %180 to i16
  %182 = getelementptr inbounds %struct.bio, ptr %171, i32 0, i32 5
  store i16 %181, ptr %182, align 4
  %183 = load ptr, ptr %75, align 4
  %184 = select i1 %175, i32 2049, i32 1
  %185 = getelementptr inbounds %struct.bio, ptr %183, i32 0, i32 2
  store i32 %184, ptr %185, align 4
  %186 = load ptr, ptr %75, align 4
  tail call void @submit_bio(ptr noundef %186) #8
  br label %187

187:                                              ; preds = %170, %167
  store ptr null, ptr %75, align 4
  br label %188

188:                                              ; preds = %187, %159
  %189 = tail call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext 256, ptr noundef nonnull @fs_bio_set) #8
  %190 = getelementptr inbounds %struct.buffer_head, ptr %154, i32 0, i32 3
  %191 = load i64, ptr %190, align 8
  %192 = getelementptr inbounds %struct.buffer_head, ptr %154, i32 0, i32 4
  %193 = load i32, ptr %192, align 8
  %194 = lshr i32 %193, 9
  %195 = zext i32 %194 to i64
  %196 = mul i64 %191, %195
  %197 = getelementptr inbounds %struct.bio, ptr %189, i32 0, i32 8
  store i64 %196, ptr %197, align 4
  %198 = getelementptr inbounds %struct.buffer_head, ptr %154, i32 0, i32 6
  %199 = load ptr, ptr %198, align 8
  %200 = getelementptr inbounds %struct.bio, ptr %189, i32 0, i32 3
  %201 = load i16, ptr %200, align 4
  %202 = and i16 %201, -2049
  store i16 %202, ptr %200, align 4
  %203 = getelementptr inbounds %struct.bio, ptr %189, i32 0, i32 1
  %204 = load ptr, ptr %203, align 4
  %205 = icmp eq ptr %204, %199
  br i1 %205, label %208, label %206

206:                                              ; preds = %188
  %207 = and i16 %201, -2177
  store i16 %207, ptr %200, align 4
  br label %208

208:                                              ; preds = %206, %188
  store ptr %199, ptr %203, align 4
  %209 = getelementptr inbounds %struct.bio, ptr %189, i32 0, i32 10
  store ptr @ext4_end_bio, ptr %209, align 4
  %210 = load ptr, ptr %76, align 8
  %211 = getelementptr inbounds %struct.ext4_io_end, ptr %210, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %211) #8, !srcloc !12
  %212 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %211, ptr %211, i32 1, ptr elementtype(i32) %211) #8, !srcloc !21
  %213 = extractvalue { i32, i32, i32 } %212, 0
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %219, label %215, !prof !8

215:                                              ; preds = %208
  %216 = add i32 %213, 1
  %217 = or i32 %216, %213
  %218 = icmp sgt i32 %217, -1
  br i1 %218, label %221, label %219, !prof !17

219:                                              ; preds = %215, %208
  %220 = phi i32 [ 2, %208 ], [ 1, %215 ]
  tail call void @refcount_warn_saturate(ptr noundef %211, i32 noundef %220) #8
  br label %221

221:                                              ; preds = %219, %215
  %222 = getelementptr inbounds %struct.bio, ptr %189, i32 0, i32 11
  store ptr %210, ptr %222, align 4
  store ptr %189, ptr %75, align 4
  %223 = load i64, ptr %190, align 8
  store i64 %223, ptr %151, align 8
  %224 = load i8, ptr %152, align 1
  %225 = zext i8 %224 to i16
  %226 = getelementptr inbounds %struct.bio, ptr %189, i32 0, i32 5
  store i16 %225, ptr %226, align 4
  %227 = load ptr, ptr %75, align 4
  br label %228

228:                                              ; preds = %221, %162
  %229 = phi ptr [ %227, %221 ], [ %160, %162 ]
  %230 = getelementptr inbounds %struct.buffer_head, ptr %154, i32 0, i32 4
  %231 = load i32, ptr %230, align 8
  %232 = getelementptr inbounds %struct.buffer_head, ptr %154, i32 0, i32 5
  %233 = load ptr, ptr %232, align 4
  %234 = ptrtoint ptr %233 to i32
  %235 = and i32 %234, 4095
  %236 = tail call i32 @bio_add_page(ptr noundef %229, ptr noundef %1, i32 noundef %231, i32 noundef %235) #8
  %237 = load i32, ptr %230, align 8
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %167

239:                                              ; preds = %228
  %240 = load i64, ptr %151, align 8
  %241 = add i64 %240, 1
  store i64 %241, ptr %151, align 8
  %242 = add i32 %155, 1
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %154) #8
  br label %243

243:                                              ; preds = %239, %153
  %244 = phi i32 [ %242, %239 ], [ %155, %153 ]
  %245 = getelementptr inbounds %struct.buffer_head, ptr %154, i32 0, i32 1
  %246 = load ptr, ptr %245, align 4
  %247 = icmp eq ptr %246, %150
  br i1 %247, label %248, label %153

248:                                              ; preds = %243
  tail call void @unlock_page(ptr noundef %1) #8
  %249 = icmp eq i32 %244, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %248
  tail call void @end_page_writeback(ptr noundef %1) #8
  br label %251

251:                                              ; preds = %250, %248
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_writeback(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_page_writeback(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_finish_bio(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 13
  %3 = load i16, ptr %2, align 4
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %116, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 16
  %7 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 6
  br label %8

8:                                                ; preds = %112, %5
  %9 = phi i32 [ 0, %5 ], [ %36, %112 ]
  %10 = phi i32 [ 0, %5 ], [ %35, %112 ]
  %11 = phi ptr [ null, %5 ], [ %25, %112 ]
  %12 = load ptr, ptr %6, align 4
  %13 = icmp eq i32 %9, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = getelementptr %struct.page, ptr %11, i32 1
  br label %24

16:                                               ; preds = %8
  %17 = getelementptr %struct.bio_vec, ptr %12, i32 %10
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr %struct.bio_vec, ptr %12, i32 %10, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = lshr i32 %20, 12
  %22 = getelementptr %struct.page, ptr %18, i32 %21
  %23 = and i32 %20, 4095
  br label %24

24:                                               ; preds = %16, %14
  %25 = phi ptr [ %22, %16 ], [ %15, %14 ]
  %26 = phi i32 [ %23, %16 ], [ 0, %14 ]
  %27 = sub nuw nsw i32 4096, %26
  %28 = getelementptr %struct.bio_vec, ptr %12, i32 %10, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = sub i32 %29, %9
  %31 = tail call i32 @llvm.umin.i32(i32 %27, i32 %30) #8
  %32 = add i32 %31, %9
  %33 = icmp eq i32 %32, %29
  %34 = zext i1 %33 to i32
  %35 = add nuw nsw i32 %10, %34
  %36 = select i1 %33, i32 0, i32 %32
  %37 = add nuw nsw i32 %31, %26
  %38 = load i8, ptr %7, align 2
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %63, label %40

40:                                               ; preds = %24
  %41 = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45, !prof !17

45:                                               ; preds = %40
  %46 = add i32 %42, -1
  br label %49

47:                                               ; preds = %40
  %48 = ptrtoint ptr %25 to i32
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = inttoptr i32 %50 to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %51) #8
  %52 = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  tail call void @__filemap_set_wb_err(ptr noundef %53, i32 noundef -5) #8
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.inode, ptr %54, i32 0, i32 8
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.super_block, ptr %58, i32 0, i32 44
  %60 = tail call i32 @errseq_set(ptr noundef %59, i32 noundef -5) #8
  br label %61

61:                                               ; preds = %56, %49
  %62 = getelementptr inbounds %struct.address_space, ptr %53, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %62) #8
  br label %63

63:                                               ; preds = %61, %24
  %64 = load volatile i32, ptr %25, align 4
  %65 = and i32 %64, 8192
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68, !prof !8

67:                                               ; preds = %63
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/page-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 123, 0\0A.popsection", ""() #8, !srcloc !26
  unreachable

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1, i32 0, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = inttoptr i32 %70 to ptr
  %72 = getelementptr inbounds %struct.buffer_head, ptr %71, i32 0, i32 12
  %73 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %72) #8
  br label %74

74:                                               ; preds = %104, %68
  %75 = phi ptr [ %71, %68 ], [ %107, %104 ]
  %76 = phi i32 [ 0, %68 ], [ %105, %104 ]
  %77 = getelementptr inbounds %struct.buffer_head, ptr %75, i32 0, i32 5
  %78 = load ptr, ptr %77, align 4
  %79 = ptrtoint ptr %78 to i32
  %80 = and i32 %79, 4095
  %81 = icmp ult i32 %80, %26
  br i1 %81, label %87, label %82

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.buffer_head, ptr %75, i32 0, i32 4
  %84 = load i32, ptr %83, align 8
  %85 = add i32 %84, %80
  %86 = icmp ugt i32 %85, %37
  br i1 %86, label %87, label %92

87:                                               ; preds = %82, %74
  %88 = load volatile i32, ptr %75, align 4
  %89 = lshr i32 %88, 7
  %90 = and i32 %89, 1
  %91 = add i32 %90, %76
  br label %104

92:                                               ; preds = %82
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %75) #8
  %93 = load i8, ptr %7, align 2
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %92
  %96 = tail call i32 @___ratelimit(ptr noundef nonnull @buffer_io_error._rs, ptr noundef nonnull @__func__.buffer_io_error) #8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.buffer_head, ptr %75, i32 0, i32 6
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr inbounds %struct.buffer_head, ptr %75, i32 0, i32 3
  %102 = load i64, ptr %101, align 8
  %103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %100, i64 noundef %102) #9
  br label %104

104:                                              ; preds = %98, %95, %92, %87
  %105 = phi i32 [ %76, %92 ], [ %91, %87 ], [ %76, %95 ], [ %76, %98 ]
  %106 = getelementptr inbounds %struct.buffer_head, ptr %75, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, %71
  br i1 %108, label %109, label %74

109:                                              ; preds = %104
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %72, i32 noundef %73) #8
  %110 = icmp eq i32 %105, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %109
  tail call void @end_page_writeback(ptr noundef %25) #8
  br label %112

112:                                              ; preds = %111, %109
  %113 = load i16, ptr %2, align 4
  %114 = zext i16 %113 to i32
  %115 = icmp ult i32 %35, %114
  br i1 %115, label %8, label %116

116:                                              ; preds = %112, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__filemap_set_wb_err(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__folio_start_writeback(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ext4_end_bio(ptr noundef %0) #2 {
  %2 = alloca [32 x i8], align 1
  %3 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8
  %6 = load i64, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !27
  %7 = icmp eq ptr %4, null
  %8 = load i1, ptr @ext4_end_bio.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %20, !prof !8

11:                                               ; preds = %1
  store i1 true, ptr @ext4_end_bio.__already_done, align 1
  %12 = call ptr @bio_devname(ptr noundef %0, ptr noundef nonnull %2) #8
  %13 = load i64, ptr %5, align 4
  %14 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = lshr i32 %15, 9
  %17 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 6
  %18 = load i8, ptr %17, align 2
  %19 = zext i8 %18 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 332, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %12, i64 noundef %13, i32 noundef %16, i32 noundef %19) #8
  br label %20

20:                                               ; preds = %11, %1
  br i1 %7, label %21, label %22

21:                                               ; preds = %20
  call fastcc void @ext4_finish_bio(ptr noundef %0)
  call void @bio_put(ptr noundef %0) #8
  br label %70

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 10
  store ptr null, ptr %23, align 4
  %24 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 6
  %25 = load i8, ptr %24, align 2
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %58, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.ext4_io_end, ptr %4, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 8
  %31 = load ptr, ptr %30, align 4
  %32 = zext i8 %25 to i32
  %33 = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 10
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 19
  %36 = load i8, ptr %35, align 2
  %37 = zext i8 %36 to i32
  %38 = add nsw i32 %37, -9
  %39 = zext i32 %38 to i64
  %40 = lshr i64 %6, %39
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %31, ptr noundef nonnull @__func__.ext4_end_bio, i32 noundef 346, ptr noundef nonnull @.str.9, i32 noundef %32, i32 noundef %34, i64 noundef %40) #8
  %41 = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 9
  %42 = load ptr, ptr %41, align 8
  %43 = load i8, ptr %24, align 2
  %44 = call i32 @blk_status_to_errno(i8 noundef zeroext %43) #8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %58, label %46, !prof !17

46:                                               ; preds = %27
  call void @__filemap_set_wb_err(ptr noundef %42, i32 noundef %44) #8
  %47 = load ptr, ptr %42, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.inode, ptr %47, i32 0, i32 8
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.super_block, ptr %51, i32 0, i32 44
  %53 = call i32 @errseq_set(ptr noundef %52, i32 noundef %44) #8
  br label %54

54:                                               ; preds = %49, %46
  %55 = icmp eq i32 %44, -28
  %56 = getelementptr inbounds %struct.address_space, ptr %42, i32 0, i32 10
  %57 = zext i1 %55 to i32
  call void @_set_bit(i32 noundef %57, ptr noundef %56) #8
  br label %58

58:                                               ; preds = %54, %27, %22
  %59 = getelementptr inbounds %struct.ext4_io_end, ptr %4, i32 0, i32 4
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.ext4_io_end, ptr %4, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !28
  %65 = ptrtoint ptr %0 to i32
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %64) #8, !srcloc !12
  %66 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %65, ptr %64) #8, !srcloc !29
  %67 = extractvalue { i32, i32 } %66, 0
  %68 = inttoptr i32 %67 to ptr
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !30
  store ptr %68, ptr %3, align 4
  call void @ext4_put_io_end_defer(ptr noundef nonnull %4)
  br label %70

69:                                               ; preds = %58
  call void @ext4_put_io_end_defer(ptr noundef nonnull %4)
  call fastcc void @ext4_finish_bio(ptr noundef %0)
  call void @bio_put(ptr noundef %0) #8
  br label %70

70:                                               ; preds = %69, %63, %21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_devname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_warning(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_status_to_errno(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!9 = !{i64 2153933383, i64 2153933864, i64 2153933420, i64 2153933476, i64 2153933510, i64 2153933534, i64 2153933575, i64 2153933596, i64 2153933624, i64 2153933658}
!10 = !{i64 2153946007, i64 2153946489, i64 2153946044, i64 2153946100, i64 2153946134, i64 2153946158, i64 2153946199, i64 2153946220, i64 2153946248, i64 2153946282}
!11 = !{i64 2148443128}
!12 = !{i64 841063, i64 2148331034, i64 2148331060, i64 2148331107, i64 2148331129, i64 2148331157, i64 2148331177}
!13 = !{i64 2148345490, i64 2148345522, i64 2148345551, i64 2148345585, i64 2148345616, i64 2148345639}
!14 = !{i64 2148443331}
!15 = !{i64 2148444129}
!16 = !{i64 2148346264, i64 2148346296, i64 2148346325, i64 2148346359, i64 2148346390, i64 2148346413}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2149769643}
!19 = !{i64 2153939181, i64 2153939663, i64 2153939218, i64 2153939274, i64 2153939308, i64 2153939332, i64 2153939373, i64 2153939394, i64 2153939422, i64 2153939456}
!20 = !{i64 2153940216, i64 2153940698, i64 2153940253, i64 2153940309, i64 2153940343, i64 2153940367, i64 2153940408, i64 2153940429, i64 2153940457, i64 2153940491}
!21 = !{i64 2148343907, i64 2148343939, i64 2148343968, i64 2148344002, i64 2148344033, i64 2148344056}
!22 = !{i64 2153952005, i64 2153952487, i64 2153952042, i64 2153952098, i64 2153952132, i64 2153952156, i64 2153952197, i64 2153952218, i64 2153952246, i64 2153952280}
!23 = !{i64 2153953029, i64 2153953511, i64 2153953066, i64 2153953122, i64 2153953156, i64 2153953180, i64 2153953221, i64 2153953242, i64 2153953270, i64 2153953304}
!24 = !{i64 2153954282, i64 2153954764, i64 2153954319, i64 2153954375, i64 2153954409, i64 2153954433, i64 2153954474, i64 2153954495, i64 2153954523, i64 2153954557}
!25 = !{i64 2153955514, i64 2153955996, i64 2153955551, i64 2153955607, i64 2153955641, i64 2153955665, i64 2153955706, i64 2153955727, i64 2153955755, i64 2153955789}
!26 = !{i64 2153937592, i64 2153938074, i64 2153937629, i64 2153937685, i64 2153937719, i64 2153937743, i64 2153937784, i64 2153937805, i64 2153937833, i64 2153937867}
!27 = !{!"auto-init"}
!28 = !{i64 2153951022}
!29 = !{i64 849713, i64 849730, i64 849754, i64 849780, i64 849798}
!30 = !{i64 2153951341}
