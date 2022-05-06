; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/fifo/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.nvkm_engine_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.122, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr }
%struct.anon.122 = type { ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_event_func = type { ptr, ptr, ptr, ptr }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_fifo_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x ptr] }
%struct.nvkm_fifo = type { ptr, %struct.nvkm_engine, [128 x i32], i32, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.nvkm_event, %struct.nvkm_event, %struct.nvkm_event }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.123 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.123 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.nvkm_gpuobj = type { %union.anon.1, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.1 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvif_notify_uevent_rep = type {}
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_fifo_chan_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }

@.str = private unnamed_addr constant [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/fifo/base.c\00", align 1
@nvkm_fifo_ctor.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"&fifo->mutex\00", align 1
@nvkm_fifo = internal constant %struct.nvkm_engine_func { ptr @nvkm_fifo_dtor, ptr @nvkm_fifo_preinit, ptr @nvkm_fifo_oneinit, ptr @nvkm_fifo_info, ptr @nvkm_fifo_init, ptr @nvkm_fifo_fini, ptr @nvkm_fifo_intr, ptr null, ptr null, %struct.anon { ptr @nvkm_fifo_class_get }, %struct.anon.122 zeroinitializer, ptr null, [0 x %struct.nvkm_sclass] zeroinitializer }, align 4
@nvkm_fifo_uevent_func = internal constant %struct.nvkm_event_func { ptr @nvkm_fifo_uevent_ctor, ptr null, ptr @nvkm_fifo_uevent_init, ptr @nvkm_fifo_uevent_fini }, align 4
@nvkm_fifo_cevent_func = internal constant %struct.nvkm_event_func { ptr @nvkm_fifo_cevent_ctor, ptr null, ptr null, ptr null }, align 4
@nvkm_fifo_kevent_func = internal constant %struct.nvkm_event_func { ptr @nvkm_fifo_kevent_ctor, ptr null, ptr null, ptr null }, align 4
@nvkm_fifo_class_ = internal constant %struct.nvkm_device_oclass { ptr @nvkm_fifo_class_new_, %struct.nvkm_sclass zeroinitializer }, align 4
@nvkm_fifo_class = internal constant %struct.nvkm_device_oclass { ptr @nvkm_fifo_class_new, %struct.nvkm_sclass zeroinitializer }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_fifo_recover_chan(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %3, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 40, i32 noundef 9, ptr noundef null) #7
  br label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 5
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #7
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %11, i32 0, i32 13
  %13 = load ptr, ptr %12, align 4
  tail call void %13(ptr noundef %0, i32 noundef %1) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #7
  br label %14

14:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_fifo_pause(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %0, ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_fifo_start(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %0, ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_fifo_fault(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %0, ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_fifo_chan_put(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !8

6:                                                ; preds = %3
  store ptr null, ptr %2, align 4
  %7 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %1) #7
  br label %8

8:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nvkm_fifo_chan_inst_locked(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 4
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %22, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %6, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %10, i32 0, i32 4
  %12 = load i64, ptr %11, align 8
  %13 = icmp eq i64 %12, %1
  br i1 %13, label %14, label %4

14:                                               ; preds = %8
  %15 = getelementptr i8, ptr %6, i32 -88
  %16 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 4
  store volatile ptr %18, ptr %17, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %6, ptr %21, align 4
  store ptr %20, ptr %6, align 4
  store ptr %3, ptr %16, align 4
  store volatile ptr %6, ptr %3, align 4
  br label %22

22:                                               ; preds = %14, %4
  %23 = phi ptr [ %15, %14 ], [ null, %4 ]
  ret ptr %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nvkm_fifo_chan_inst(ptr noundef %0, i64 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 5
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #7
  %6 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 4
  br label %7

7:                                                ; preds = %11, %3
  %8 = phi ptr [ %6, %3 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %6
  br i1 %10, label %27, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %9, i32 12
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %13, i32 0, i32 4
  %15 = load i64, ptr %14, align 8
  %16 = icmp eq i64 %15, %1
  br i1 %16, label %17, label %7

17:                                               ; preds = %11
  %18 = getelementptr i8, ptr %9, i32 -88
  %19 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %9, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %20, ptr %22, align 4
  store volatile ptr %21, ptr %20, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %19, align 4
  %23 = load ptr, ptr %6, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %9, ptr %24, align 4
  store ptr %23, ptr %9, align 4
  store ptr %6, ptr %19, align 4
  store volatile ptr %9, ptr %6, align 4
  %25 = icmp eq ptr %18, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  store i32 %5, ptr %2, align 4
  br label %28

27:                                               ; preds = %17, %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #7
  br label %28

28:                                               ; preds = %27, %26
  %29 = phi ptr [ %18, %26 ], [ null, %27 ]
  ret ptr %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nvkm_fifo_chan_chid(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 5
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #7
  %6 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 4
  br label %7

7:                                                ; preds = %11, %3
  %8 = phi ptr [ %6, %3 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %6
  br i1 %10, label %24, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %9, i32 8
  %13 = load i16, ptr %12, align 8
  %14 = zext i16 %13 to i32
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %7

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %9, i32 -88
  %18 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %9, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %19, ptr %21, align 4
  store volatile ptr %20, ptr %19, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %18, align 4
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %9, ptr %23, align 4
  store ptr %22, ptr %9, align 4
  store ptr %6, ptr %18, align 4
  store volatile ptr %9, ptr %6, align 4
  store i32 %5, ptr %2, align 4
  br label %25

24:                                               ; preds = %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #7
  br label %25

25:                                               ; preds = %24, %16
  %26 = phi ptr [ %17, %16 ], [ null, %24 ]
  ret ptr %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_fifo_kevent(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 9
  tail call void @nvkm_event_send(ptr noundef %3, i32 noundef 1, i32 noundef %1, ptr noundef null, i32 noundef 0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_send(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_fifo_cevent(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 8
  tail call void @nvkm_event_send(ptr noundef %2, i32 noundef 1, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_fifo_uevent(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.nvif_notify_uevent_rep, align 1
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %2) #7
  %3 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 7
  call void @nvkm_event_send(ptr noundef %3, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_fifo_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  store ptr %0, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_fifo, ptr %5, i32 0, i32 4
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nvkm_fifo, ptr %5, i32 0, i32 4, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nvkm_fifo, ptr %5, i32 0, i32 5
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nvkm_fifo, ptr %5, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %10, ptr noundef nonnull @.str.1, ptr noundef nonnull @nvkm_fifo_ctor.__key) #7
  %11 = getelementptr inbounds %struct.nvkm_fifo, ptr %5, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, 4096
  br i1 %13, label %14, label %15, !prof !8

14:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 364, i32 noundef 9, ptr noundef null) #7
  br label %15

15:                                               ; preds = %14, %6
  %16 = phi i32 [ 4096, %14 ], [ %4, %6 ]
  store i32 %16, ptr %11, align 4
  %17 = getelementptr inbounds %struct.nvkm_fifo, ptr %5, i32 0, i32 2
  tail call void @__bitmap_clear(ptr noundef %17, i32 noundef 0, i32 noundef %16) #7
  %18 = getelementptr inbounds %struct.nvkm_fifo, ptr %5, i32 0, i32 1
  %19 = tail call i32 @nvkm_engine_ctor(ptr noundef nonnull @nvkm_fifo, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext true, ptr noundef %18) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %0, i32 0, i32 11
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.nvkm_fifo, ptr %5, i32 0, i32 7
  %27 = tail call i32 @nvkm_event_init(ptr noundef nonnull @nvkm_fifo_uevent_func, i32 noundef 1, i32 noundef 1, ptr noundef %26) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %25, %21
  %30 = getelementptr inbounds %struct.nvkm_fifo, ptr %5, i32 0, i32 8
  %31 = tail call i32 @nvkm_event_init(ptr noundef nonnull @nvkm_fifo_cevent_func, i32 noundef 1, i32 noundef 1, ptr noundef %30) #7
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.nvkm_fifo, ptr %5, i32 0, i32 9
  %35 = tail call i32 @nvkm_event_init(ptr noundef nonnull @nvkm_fifo_kevent_func, i32 noundef 1, i32 noundef %4, ptr noundef %34) #7
  br label %36

36:                                               ; preds = %33, %29, %25, %15
  %37 = phi i32 [ %35, %33 ], [ %19, %15 ], [ %27, %25 ], [ %31, %29 ]
  ret i32 %37
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_engine_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_event_init(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_fifo_dtor(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call ptr %4(ptr noundef %2) #7
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi ptr [ %7, %6 ], [ %2, %1 ]
  %10 = getelementptr i8, ptr %0, i32 700
  tail call void @nvkm_event_fini(ptr noundef %10) #7
  %11 = getelementptr i8, ptr %0, i32 668
  tail call void @nvkm_event_fini(ptr noundef %11) #7
  %12 = getelementptr i8, ptr %0, i32 636
  tail call void @nvkm_event_fini(ptr noundef %12) #7
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_fifo_preinit(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @nvkm_mc_reset(ptr noundef %3, i32 noundef 32, i32 noundef 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_fifo_oneinit(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 %5(ptr noundef %2) #7
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_fifo_info(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = icmp eq i64 %1, 4294967297
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %0, i32 600
  %8 = load i32, ptr %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, ptr %2, align 8
  br label %17

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = tail call i32 %13(ptr noundef %4, i64 noundef %1, ptr noundef %2) #7
  br label %17

17:                                               ; preds = %15, %10, %6
  %18 = phi i32 [ 0, %6 ], [ %16, %15 ], [ -38, %10 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_fifo_init(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %2) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_fifo_fini(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void %6(ptr noundef %3) #7
  br label %9

9:                                                ; preds = %8, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_fifo_intr(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_fifo_class_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 -4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %7, i32 0, i32 14
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = tail call i32 %9(ptr noundef %6, i32 noundef %1, ptr noundef %0) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %26, label %28

14:                                               ; preds = %19, %3
  %15 = phi i32 [ %20, %19 ], [ 0, %3 ]
  %16 = getelementptr %struct.nvkm_fifo_func, ptr %7, i32 0, i32 16, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %14
  %20 = add i32 %15, 1
  %21 = icmp eq i32 %15, %1
  br i1 %21, label %22, label %14

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 1
  %24 = getelementptr inbounds %struct.nvkm_fifo_chan_oclass, ptr %17, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %23, ptr noundef align 4 dereferenceable(20) %24, i32 20, i1 false)
  %25 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 3
  store ptr %17, ptr %25, align 4
  br label %26

26:                                               ; preds = %22, %11
  %27 = phi ptr [ @nvkm_fifo_class, %22 ], [ @nvkm_fifo_class_, %11 ]
  store ptr %27, ptr %2, align 4
  br label %28

28:                                               ; preds = %26, %14, %11
  %29 = phi i32 [ %12, %11 ], [ 0, %26 ], [ %15, %14 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mc_reset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_fifo_class_new_(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.nvkm_oclass, ptr %1, i32 0, i32 10
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 -4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %9, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %8, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #7
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_fifo_class_new(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.nvkm_oclass, ptr %1, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_oclass, ptr %1, i32 0, i32 10
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %9, i32 -4
  %11 = load ptr, ptr %7, align 4
  %12 = tail call i32 %11(ptr noundef %10, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #7
  ret i32 %12
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @nvkm_fifo_uevent_ctor(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #5 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.nvkm_notify, ptr %3, i32 0, i32 7
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nvkm_notify, ptr %3, i32 0, i32 5
  store i32 1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nvkm_notify, ptr %3, i32 0, i32 6
  store i32 0, ptr %9, align 4
  br label %10

10:                                               ; preds = %6, %4
  %11 = phi i32 [ 0, %6 ], [ -38, %4 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_fifo_uevent_init(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -640
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_fifo_uevent_fini(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -640
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %5, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %4) #7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @nvkm_fifo_cevent_ctor(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #5 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.nvkm_notify, ptr %3, i32 0, i32 7
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nvkm_notify, ptr %3, i32 0, i32 5
  store i32 1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nvkm_notify, ptr %3, i32 0, i32 6
  store i32 0, ptr %9, align 4
  br label %10

10:                                               ; preds = %6, %4
  %11 = phi i32 [ 0, %6 ], [ -38, %4 ]
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @nvkm_fifo_kevent_ctor(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #6 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.nvkm_notify, ptr %3, i32 0, i32 7
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nvkm_notify, ptr %3, i32 0, i32 5
  store i32 1, ptr %8, align 4
  %9 = getelementptr i8, ptr %0, i32 80
  %10 = load i16, ptr %9, align 8
  %11 = zext i16 %10 to i32
  %12 = getelementptr inbounds %struct.nvkm_notify, ptr %3, i32 0, i32 6
  store i32 %11, ptr %12, align 4
  br label %13

13:                                               ; preds = %6, %4
  %14 = phi i32 [ 0, %6 ], [ -38, %4 ]
  ret i32 %14
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }

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
