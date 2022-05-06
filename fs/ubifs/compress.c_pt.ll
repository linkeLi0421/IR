; ModuleID = '/llk/IR/fs/ubifs/compress.c_pt.bc'
source_filename = "../fs/ubifs/compress.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ubifs_compressor = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.67, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.47 }
%struct.llist_node = type { ptr }
%union.anon.47 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.48 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.67 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@ubifs_compressors = dso_local local_unnamed_addr global [4 x ptr] zeroinitializer, align 4
@.str = private unnamed_addr constant [75 x i8] c"cannot compress %d bytes, compressor %s, error %d, leave data uncompressed\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"invalid compression type %d\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s compression is not compiled in\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"cannot decompress %d bytes, compressor %s, error %d\00", align 1
@lzo_compr = internal global %struct.ubifs_compressor { i32 1, ptr null, ptr @lzo_mutex, ptr null, ptr @.str.5, ptr @.str.5 }, align 4
@zstd_compr = internal global %struct.ubifs_compressor { i32 3, ptr null, ptr @zstd_enc_mutex, ptr @zstd_dec_mutex, ptr @.str.6, ptr @.str.6 }, align 4
@zlib_compr = internal global %struct.ubifs_compressor { i32 2, ptr null, ptr @deflate_mutex, ptr @inflate_mutex, ptr @.str.7, ptr @.str.8 }, align 4
@none_compr = internal global %struct.ubifs_compressor { i32 0, ptr null, ptr null, ptr null, ptr @.str.9, ptr @.str.10 }, align 4
@.str.4 = private unnamed_addr constant [67 x i8] c"\013UBIFS error (pid %d): cannot initialize compressor %s, error %ld\00", align 1
@lzo_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @lzo_mutex, i64 12), ptr getelementptr (i8, ptr @lzo_mutex, i64 12) } }, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"lzo\00", align 1
@zstd_enc_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @zstd_enc_mutex, i64 12), ptr getelementptr (i8, ptr @zstd_enc_mutex, i64 12) } }, align 4
@zstd_dec_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @zstd_dec_mutex, i64 12), ptr getelementptr (i8, ptr @zstd_dec_mutex, i64 12) } }, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"zstd\00", align 1
@deflate_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @deflate_mutex, i64 12), ptr getelementptr (i8, ptr @deflate_mutex, i64 12) } }, align 4
@inflate_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @inflate_mutex, i64 12), ptr getelementptr (i8, ptr @inflate_mutex, i64 12) } }, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"zlib\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"deflate\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_compress(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = load i32, ptr %5, align 4
  %8 = getelementptr [4 x ptr], ptr @ubifs_compressors, i32 0, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq i32 %7, 0
  %11 = icmp slt i32 %2, 128
  %12 = or i1 %11, %10
  br i1 %12, label %34, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.ubifs_compressor, ptr %9, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @mutex_lock(ptr noundef nonnull %15) #6
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr inbounds %struct.ubifs_compressor, ptr %9, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @crypto_comp_compress(ptr noundef %20, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #6
  %22 = load ptr, ptr %14, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  tail call void @mutex_unlock(ptr noundef nonnull %22) #6
  br label %25

25:                                               ; preds = %24, %18
  %26 = icmp eq i32 %21, 0
  br i1 %26, label %30, label %27, !prof !8

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.ubifs_compressor, ptr %9, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %2, ptr noundef %29, i32 noundef %21) #6
  br label %34

30:                                               ; preds = %25
  %31 = load i32, ptr %4, align 4
  %32 = sub i32 %2, %31
  %33 = icmp slt i32 %32, 64
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %27, %6
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %3, ptr align 1 %1, i32 %2, i1 false)
  store i32 %2, ptr %4, align 4
  store i32 0, ptr %5, align 4
  br label %35

35:                                               ; preds = %34, %30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_comp_compress(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_decompress(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = icmp ugt i32 %5, 3
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %6
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %5) #6
  br label %38

9:                                                ; preds = %6
  %10 = getelementptr [4 x ptr], ptr @ubifs_compressors, i32 0, i32 %5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ubifs_compressor, ptr %11, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18, !prof !9

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ubifs_compressor, ptr %11, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %17) #6
  br label %38

18:                                               ; preds = %9
  %19 = icmp eq i32 %5, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %3, ptr align 1 %1, i32 %2, i1 false)
  store i32 %2, ptr %4, align 4
  br label %38

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.ubifs_compressor, ptr %11, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @mutex_lock(ptr noundef nonnull %23) #6
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.ubifs_compressor, ptr %11, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @crypto_comp_decompress(ptr noundef %28, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #6
  %30 = load ptr, ptr %22, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  tail call void @mutex_unlock(ptr noundef nonnull %30) #6
  br label %33

33:                                               ; preds = %32, %26
  %34 = icmp eq i32 %29, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.ubifs_compressor, ptr %11, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %2, ptr noundef %37, i32 noundef %29) #6
  br label %38

38:                                               ; preds = %35, %33, %20, %15, %8
  %39 = phi i32 [ -22, %8 ], [ -22, %15 ], [ 0, %20 ], [ %29, %35 ], [ 0, %33 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_comp_decompress(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @ubifs_compressors_init() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call fastcc i32 @compr_init(ptr noundef nonnull @lzo_compr) #7
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %21

3:                                                ; preds = %0
  %4 = tail call fastcc i32 @compr_init(ptr noundef nonnull @zstd_compr) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @compr_init(ptr noundef nonnull @zlib_compr) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store ptr @none_compr, ptr @ubifs_compressors, align 4
  br label %21

10:                                               ; preds = %6
  %11 = load ptr, ptr getelementptr inbounds (%struct.ubifs_compressor, ptr @zstd_compr, i32 0, i32 5), align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr getelementptr inbounds (%struct.ubifs_compressor, ptr @zstd_compr, i32 0, i32 1), align 4
  tail call void @crypto_destroy_tfm(ptr noundef %14, ptr noundef %14) #6
  br label %15

15:                                               ; preds = %13, %10, %3
  %16 = phi i32 [ %4, %3 ], [ %7, %10 ], [ %7, %13 ]
  %17 = load ptr, ptr getelementptr inbounds (%struct.ubifs_compressor, ptr @lzo_compr, i32 0, i32 5), align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr getelementptr inbounds (%struct.ubifs_compressor, ptr @lzo_compr, i32 0, i32 1), align 4
  tail call void @crypto_destroy_tfm(ptr noundef %20, ptr noundef %20) #6
  br label %21

21:                                               ; preds = %19, %15, %9, %0
  %22 = phi i32 [ 0, %9 ], [ %1, %0 ], [ %16, %15 ], [ %16, %19 ]
  ret i32 %22
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @compr_init(ptr noundef %0) unnamed_addr #3 section ".init.text" {
  %2 = getelementptr inbounds %struct.ubifs_compressor, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @crypto_alloc_base(ptr noundef nonnull %3, i32 noundef 2, i32 noundef 15) #6
  %7 = getelementptr inbounds %struct.ubifs_compressor, ptr %0, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = tail call ptr @llvm.thread.pointer() #6
  %11 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 52
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.ubifs_compressor, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = ptrtoint ptr %6 to i32
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %12, ptr noundef %14, i32 noundef %15) #8
  %17 = load ptr, ptr %7, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %22

19:                                               ; preds = %5, %1
  %20 = load i32, ptr %0, align 4
  %21 = getelementptr [4 x ptr], ptr @ubifs_compressors, i32 0, i32 %20
  store ptr %0, ptr %21, align 4
  br label %22

22:                                               ; preds = %19, %9
  %23 = phi i32 [ %18, %9 ], [ 0, %19 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_compressors_exit() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.ubifs_compressor, ptr @lzo_compr, i32 0, i32 5), align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds (%struct.ubifs_compressor, ptr @lzo_compr, i32 0, i32 1), align 4
  tail call void @crypto_destroy_tfm(ptr noundef %4, ptr noundef %4) #6
  br label %5

5:                                                ; preds = %3, %0
  %6 = load ptr, ptr getelementptr inbounds (%struct.ubifs_compressor, ptr @zlib_compr, i32 0, i32 5), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr getelementptr inbounds (%struct.ubifs_compressor, ptr @zlib_compr, i32 0, i32 1), align 4
  tail call void @crypto_destroy_tfm(ptr noundef %9, ptr noundef %9) #6
  br label %10

10:                                               ; preds = %8, %5
  %11 = load ptr, ptr getelementptr inbounds (%struct.ubifs_compressor, ptr @zstd_compr, i32 0, i32 5), align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr getelementptr inbounds (%struct.ubifs_compressor, ptr @zstd_compr, i32 0, i32 1), align 4
  tail call void @crypto_destroy_tfm(ptr noundef %14, ptr noundef %14) #6
  br label %15

15:                                               ; preds = %13, %10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_base(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold }
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
!9 = !{!"branch_weights", i32 1, i32 2000}
