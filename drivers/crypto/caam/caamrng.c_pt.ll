; ModuleID = '/llk/IR/drivers/crypto/caam/caamrng.c_pt.bc'
source_filename = "../drivers/crypto/caam/caamrng.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.caam_drv_private = type { ptr, ptr, ptr, ptr, [4 x ptr], ptr, i8, i8, i8, i32, i32, i32, i32, ptr, i32, ptr, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.caam_ctrl = type { i32, i32, i32, i32, [4 x %struct.masterid], [11 x i32], i32, [4 x %struct.masterid], [5 x i32], i32, i32, i32, [5 x %struct.partid], [22 x i32], i32, i32, [182 x i32], [8 x i32], [8 x i32], [8 x i32], [32 x i32], i64, [70 x i32], %union.anon.145, [416 x i32], %struct.version_regs, %struct.caam_perfmon }
%struct.masterid = type { i32, i32 }
%struct.partid = type { i32, i32 }
%union.anon.145 = type { [2 x %struct.rngtst] }
%struct.rngtst = type { i32, [3 x i32], i32, [3 x i32], i32, i32, i32, i32, i32, i32, i32, [15 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], [15 x i32] }
%struct.version_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, i32 }
%struct.caam_perfmon = type { i64, i64, i64, i64, i64, i64, i64, [13 x i64], i32, i32, i32, i32, [2 x i64], i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.caam_rng_ctx = type { %struct.hwrng, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.kfifo }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.kfifo = type { %union.anon.144, [0 x i8] }
%union.anon.144 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.caam_rng_job_ctx = type { ptr, ptr }
%struct.page = type { i32, %union.anon.1, %union.anon.120, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.120 = type { %struct.atomic_t }

@.str = private unnamed_addr constant [9 x i8] c"rng-caam\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"registering rng-caam\0A\00", align 1
@caam_little_end = external dso_local local_unnamed_addr global i8, align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"\013Job Ring Device allocation for transform failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"unable to map destination memory\0A\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@caam_ptr_sz = external dso_local local_unnamed_addr global i32, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @caam_rng_exit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @devres_release_group(ptr noundef %0, ptr noundef nonnull @caam_rng_init) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @caam_rng_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.caam_drv_private, ptr %3, i32 0, i32 11
  %5 = load i32, ptr %4, align 4
  %6 = icmp slt i32 %5, 10
  %7 = load ptr, ptr %3, align 4
  br i1 %6, label %8, label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.caam_ctrl, ptr %7, i32 0, i32 26, i32 24
  %10 = load i8, ptr @caam_little_end, align 1, !range !8
  %11 = icmp eq i8 %10, 0
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6
  br i1 %11, label %14, label %13

13:                                               ; preds = %8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  br label %16

14:                                               ; preds = %8
  %15 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  br label %16

16:                                               ; preds = %14, %13
  %17 = phi i32 [ %12, %13 ], [ %15, %14 ]
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 15
  br label %31

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.caam_ctrl, ptr %7, i32 0, i32 25, i32 13
  %22 = load i8, ptr @caam_little_end, align 1, !range !8
  %23 = icmp eq i8 %22, 0
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #6
  br i1 %23, label %26, label %25

25:                                               ; preds = %20
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  br label %28

26:                                               ; preds = %20
  %27 = tail call i32 @llvm.bswap.i32(i32 %24) #6
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i32 [ %24, %25 ], [ %27, %26 ]
  %30 = and i32 %29, 255
  br label %31

31:                                               ; preds = %28, %16
  %32 = phi i32 [ %19, %16 ], [ %30, %28 ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %53, label %34

34:                                               ; preds = %31
  %35 = tail call ptr @devres_open_group(ptr noundef %0, ptr noundef nonnull @caam_rng_init, i32 noundef 3264) #6
  %36 = icmp eq ptr %35, null
  br i1 %36, label %53, label %37

37:                                               ; preds = %34
  %38 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 112, i32 noundef 3520) #6
  %39 = icmp eq ptr %38, null
  br i1 %39, label %53, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.caam_rng_ctx, ptr %38, i32 0, i32 2
  store ptr %0, ptr %41, align 4
  store ptr @.str, ptr %38, align 4
  %42 = getelementptr inbounds %struct.hwrng, ptr %38, i32 0, i32 1
  store ptr @caam_init, ptr %42, align 4
  %43 = getelementptr inbounds %struct.hwrng, ptr %38, i32 0, i32 2
  store ptr @caam_cleanup, ptr %43, align 4
  %44 = getelementptr inbounds %struct.hwrng, ptr %38, i32 0, i32 5
  store ptr @caam_read, ptr %44, align 4
  %45 = ptrtoint ptr %38 to i32
  %46 = getelementptr inbounds %struct.hwrng, ptr %38, i32 0, i32 6
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.hwrng, ptr %38, i32 0, i32 7
  store i16 1024, ptr %47, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.1) #7
  %48 = tail call i32 @devm_hwrng_register(ptr noundef %0, ptr noundef nonnull %38) #6
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %40
  %51 = tail call i32 @devres_release_group(ptr noundef %0, ptr noundef nonnull @caam_rng_init) #6
  br label %53

52:                                               ; preds = %40
  tail call void @devres_close_group(ptr noundef %0, ptr noundef nonnull @caam_rng_init) #6
  br label %53

53:                                               ; preds = %52, %50, %37, %34, %31
  %54 = phi i32 [ %48, %50 ], [ 0, %52 ], [ 0, %31 ], [ -12, %34 ], [ -12, %37 ]
  ret i32 %54
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_open_group(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @caam_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [1 x %struct.scatterlist], align 4
  %3 = alloca %struct.completion, align 4
  %4 = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.caam_rng_ctx, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 16, i32 noundef 3521) #6
  %10 = getelementptr inbounds %struct.caam_rng_ctx, ptr %6, i32 0, i32 4
  store ptr %9, ptr %10, align 4
  %11 = icmp eq ptr %9, null
  br i1 %11, label %51, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %7, align 4
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %13, i32 noundef 16, i32 noundef 3521) #6
  %15 = getelementptr inbounds %struct.caam_rng_ctx, ptr %6, i32 0, i32 3
  store ptr %14, ptr %15, align 4
  %16 = icmp eq ptr %14, null
  br i1 %16, label %51, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.caam_rng_ctx, ptr %6, i32 0, i32 6
  %19 = tail call i32 @__kfifo_alloc(ptr noundef %18, i32 noundef 16, i32 noundef 1, i32 noundef 3265) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %51

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.caam_rng_ctx, ptr %6, i32 0, i32 5
  store i32 -32, ptr %22, align 4
  %23 = getelementptr inbounds %struct.caam_rng_ctx, ptr %6, i32 0, i32 5, i32 1
  store volatile ptr %23, ptr %23, align 4
  %24 = getelementptr inbounds %struct.caam_rng_ctx, ptr %6, i32 0, i32 5, i32 1, i32 1
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.caam_rng_ctx, ptr %6, i32 0, i32 5, i32 2
  store ptr @caam_rng_worker, ptr %25, align 4
  %26 = tail call ptr @caam_jr_alloc() #6
  %27 = getelementptr inbounds %struct.caam_rng_ctx, ptr %6, i32 0, i32 1
  store ptr %26, ptr %27, align 4
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = ptrtoint ptr %26 to i32
  tail call void @__kfifo_free(ptr noundef %18) #6
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #7
  br label %51

32:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #6, !annotation !11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #6, !annotation !11
  call void @sg_init_table(ptr noundef nonnull %2, i32 noundef 1) #6
  %33 = call i32 @__kfifo_dma_in_prepare(ptr noundef %18, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 16) #6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %50, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %27, align 4
  %37 = load i32, ptr %2, align 4
  %38 = and i32 %37, -4
  %39 = inttoptr i32 %38 to ptr
  %40 = call ptr @page_address(ptr noundef %39) #6
  %41 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr i8, ptr %40, i32 %42
  %44 = load ptr, ptr %15, align 4
  %45 = call fastcc i32 @caam_rng_read_one(ptr noundef %36, ptr noundef %43, ptr noundef %44, ptr noundef nonnull %3) #6
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %35
  %48 = load i32, ptr %18, align 4
  %49 = add i32 %48, %45
  store i32 %49, ptr %18, align 4
  br label %50

50:                                               ; preds = %47, %35, %32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #6
  br label %51

51:                                               ; preds = %50, %29, %17, %12, %1
  %52 = phi i32 [ %30, %29 ], [ 0, %50 ], [ -12, %1 ], [ -12, %12 ], [ -12, %17 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @caam_cleanup(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = inttoptr i32 %3 to ptr
  %5 = getelementptr inbounds %struct.caam_rng_ctx, ptr %4, i32 0, i32 5
  %6 = tail call zeroext i1 @flush_work(ptr noundef %5) #6
  %7 = getelementptr inbounds %struct.caam_rng_ctx, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void @caam_jr_free(ptr noundef %8) #6
  %9 = getelementptr inbounds %struct.caam_rng_ctx, ptr %4, i32 0, i32 6
  tail call void @__kfifo_free(ptr noundef %9) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @caam_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = alloca %struct.completion, align 4
  %6 = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = inttoptr i32 %7 to ptr
  br i1 %3, label %9, label %15

9:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !11
  %10 = getelementptr inbounds %struct.caam_rng_ctx, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.caam_rng_ctx, ptr %8, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = call fastcc i32 @caam_rng_read_one(ptr noundef %11, ptr noundef %1, ptr noundef %13, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  br label %26

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.caam_rng_ctx, ptr %8, i32 0, i32 6
  %17 = tail call i32 @__kfifo_out(ptr noundef %16, ptr noundef %1, i32 noundef %2) #6
  %18 = load i32, ptr %16, align 4
  %19 = getelementptr inbounds %struct.caam_rng_ctx, ptr %8, i32 0, i32 6, i32 0, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.caam_rng_ctx, ptr %8, i32 0, i32 5
  %24 = load ptr, ptr @system_wq, align 4
  %25 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %24, ptr noundef %23) #6
  br label %26

26:                                               ; preds = %22, %15, %9
  %27 = phi i32 [ %14, %9 ], [ %17, %22 ], [ %17, %15 ]
  ret i32 %27
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_hwrng_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_close_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @caam_rng_worker(ptr noundef %0) #0 {
  %2 = alloca [1 x %struct.scatterlist], align 4
  %3 = alloca %struct.completion, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #6, !annotation !11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #6, !annotation !11
  call void @sg_init_table(ptr noundef nonnull %2, i32 noundef 1) #6
  %4 = getelementptr i8, ptr %0, i32 16
  %5 = call i32 @__kfifo_dma_in_prepare(ptr noundef %4, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 16) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -16
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %2, align 4
  %11 = and i32 %10, -4
  %12 = inttoptr i32 %11 to ptr
  %13 = call ptr @page_address(ptr noundef %12) #6
  %14 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %13, i32 %15
  %17 = getelementptr i8, ptr %0, i32 -8
  %18 = load ptr, ptr %17, align 4
  %19 = call fastcc i32 @caam_rng_read_one(ptr noundef %9, ptr noundef %16, ptr noundef %18, ptr noundef nonnull %3) #6
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %7
  %22 = load i32, ptr %4, align 4
  %23 = add i32 %22, %19
  store i32 %23, ptr %4, align 4
  br label %24

24:                                               ; preds = %21, %7, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @caam_jr_alloc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_dma_in_prepare(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @caam_rng_read_one(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.caam_rng_job_ctx, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  store ptr %3, ptr %6, align 8
  %7 = getelementptr inbounds %struct.caam_rng_job_ctx, ptr %6, i32 0, i32 1
  store ptr %5, ptr %7, align 4
  %8 = call zeroext i1 @is_vmalloc_addr(ptr noundef %1) #6
  %9 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %21, !prof !12

12:                                               ; preds = %4
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %13 = call ptr @dev_driver_string(ptr noundef %0) #6
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load ptr, ptr %0, align 4
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi ptr [ %18, %17 ], [ %15, %12 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %13, ptr noundef %20) #6
  br label %21

21:                                               ; preds = %19, %4
  br i1 %8, label %31, label %22

22:                                               ; preds = %21
  %23 = load ptr, ptr @mem_map, align 4
  %24 = ptrtoint ptr %1 to i32
  %25 = add i32 %24, 1073741824
  %26 = lshr i32 %25, 12
  %27 = getelementptr %struct.page, ptr %23, i32 %26
  %28 = and i32 %24, 4095
  %29 = call i32 @dma_map_page_attrs(ptr noundef %0, ptr noundef %27, i32 noundef %28, i32 noundef 16, i32 noundef 2, i32 noundef 0) #6
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %22, %21
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3) #7
  br label %95

32:                                               ; preds = %22
  store i32 0, ptr %3, align 4
  %33 = getelementptr inbounds %struct.completion, ptr %3, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %33, ptr noundef nonnull @.str.6, ptr noundef nonnull @init_completion.__key) #6
  %34 = load i8, ptr @caam_little_end, align 1, !range !8
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %35, i32 16810160, i32 -1333788671
  store i32 %36, ptr %2, align 4
  %37 = load i8, ptr @caam_little_end, align 1, !range !8
  %38 = icmp eq i8 %37, 0
  %39 = lshr i32 %36, 24
  %40 = select i1 %38, i32 %39, i32 %36
  %41 = and i32 %40, 49
  %42 = getelementptr i32, ptr %2, i32 %41
  %43 = select i1 %38, i32 33575042, i32 -2108686334
  store i32 %43, ptr %42, align 4
  %44 = load i32, ptr %2, align 4
  %45 = load i8, ptr @caam_little_end, align 1, !range !8
  %46 = icmp eq i8 %45, 0
  %47 = call i32 @llvm.bswap.i32(i32 %44) #6
  %48 = select i1 %46, i32 %47, i32 %44
  %49 = add i32 %48, 1
  %50 = call i32 @llvm.bswap.i32(i32 %49) #6
  %51 = select i1 %46, i32 %50, i32 %49
  store i32 %51, ptr %2, align 4
  %52 = load i8, ptr @caam_little_end, align 1, !range !8
  %53 = icmp eq i8 %52, 0
  %54 = lshr i32 %51, 24
  %55 = select i1 %53, i32 %54, i32 %51
  %56 = and i32 %55, 127
  %57 = getelementptr i32, ptr %2, i32 %56
  %58 = select i1 %53, i32 268448864, i32 1614020624
  store i32 %58, ptr %57, align 4
  %59 = load i32, ptr %2, align 4
  %60 = load i8, ptr @caam_little_end, align 1, !range !8
  %61 = icmp eq i8 %60, 0
  %62 = call i32 @llvm.bswap.i32(i32 %59) #6
  %63 = select i1 %61, i32 %62, i32 %59
  %64 = add i32 %63, 1
  %65 = call i32 @llvm.bswap.i32(i32 %64) #6
  %66 = select i1 %61, i32 %65, i32 %64
  store i32 %66, ptr %2, align 4
  %67 = load i8, ptr @caam_little_end, align 1, !range !8
  %68 = icmp eq i8 %67, 0
  %69 = lshr i32 %66, 24
  %70 = select i1 %68, i32 %69, i32 %66
  %71 = and i32 %70, 127
  %72 = getelementptr i32, ptr %2, i32 %71
  %73 = call i32 @llvm.bswap.i32(i32 %29) #6
  %74 = select i1 %68, i32 %73, i32 %29
  store i32 %74, ptr %72, align 4
  %75 = load i32, ptr %2, align 4
  %76 = load i8, ptr @caam_little_end, align 1, !range !8
  %77 = icmp eq i8 %76, 0
  %78 = call i32 @llvm.bswap.i32(i32 %75) #6
  %79 = select i1 %77, i32 %78, i32 %75
  %80 = load i32, ptr @caam_ptr_sz, align 4
  %81 = lshr i32 %80, 2
  %82 = add i32 %79, %81
  %83 = call i32 @llvm.bswap.i32(i32 %82) #6
  %84 = select i1 %77, i32 %83, i32 %82
  store i32 %84, ptr %2, align 4
  %85 = call i32 @caam_jr_enqueue(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @caam_rng_done, ptr noundef nonnull %6) #6
  %86 = icmp eq i32 %85, -115
  br i1 %86, label %87, label %88

87:                                               ; preds = %32
  call void @wait_for_completion(ptr noundef %3) #6
  br label %88

88:                                               ; preds = %87, %32
  %89 = phi i32 [ 0, %87 ], [ %85, %32 ]
  call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %29, i32 noundef 16, i32 noundef 2, i32 noundef 0) #6
  %90 = icmp eq i32 %89, 0
  %91 = load i32, ptr %5, align 4
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i32 16, i32 %91
  %94 = select i1 %90, i32 %93, i32 %89
  br label %95

95:                                               ; preds = %88, %31
  %96 = phi i32 [ -12, %31 ], [ %94, %88 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret i32 %96
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @caam_jr_enqueue(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @caam_rng_done(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @caam_strstatus(ptr noundef %0, i32 noundef %2, i1 noundef zeroext false) #6
  %8 = getelementptr inbounds %struct.caam_rng_job_ctx, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  store i32 %7, ptr %9, align 4
  br label %10

10:                                               ; preds = %6, %4
  %11 = load ptr, ptr %3, align 4
  tail call void @complete(ptr noundef %11) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @caam_strstatus(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @caam_jr_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{i64 2152098367}
!10 = !{i64 2156917590}
!11 = !{!"auto-init"}
!12 = !{!"branch_weights", i32 1, i32 2000}
