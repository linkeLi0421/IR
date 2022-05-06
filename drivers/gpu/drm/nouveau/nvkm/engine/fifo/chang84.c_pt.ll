; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/fifo/chang84.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/chang84.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_fifo_chan_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_fifo = type { ptr, %struct.nvkm_engine, [128 x i32], i32, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.nvkm_event, %struct.nvkm_event, %struct.nvkm_event }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.126 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.126 = type { %struct.refcount_struct, %struct.mutex, i8 }
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
%struct.nv50_fifo_chan = type { ptr, %struct.nvkm_fifo_chan, ptr, ptr, ptr, ptr, ptr, [16 x ptr] }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_gpuobj = type { %union.anon.1, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.1 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.121 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_fifo_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x ptr] }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }

@g84_fifo_chan_func = internal constant %struct.nvkm_fifo_chan_func { ptr @nv50_fifo_chan_dtor, ptr @g84_fifo_chan_init, ptr @nv50_fifo_chan_fini, ptr @g84_fifo_chan_ntfy, ptr @g84_fifo_chan_engine_ctor, ptr @nv50_fifo_chan_engine_dtor, ptr @g84_fifo_chan_engine_init, ptr @g84_fifo_chan_engine_fini, ptr @g84_fifo_chan_object_ctor, ptr @nv50_fifo_chan_object_dtor, ptr null }, align 4
@.str = private unnamed_addr constant [51 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/fifo/chang84.c\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"%s: channel %d [%s] unload timeout\0A\00", align 1
@switch.table.g84_fifo_chan_object_ctor = private unnamed_addr constant [24 x i32] [i32 6291456, i32 3145728, i32 5242880, i32 0, i32 0, i32 0, i32 1048576, i32 0, i32 3145728, i32 2097152, i32 0, i32 4194304, i32 2097152, i32 6291456, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5242880, i32 0, i32 0, i32 5242880, i32 4194304], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @g84_fifo_chan_ctor(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq i64 %1, 0
  br i1 %8, label %38, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nv50_fifo_chan, ptr %4, i32 0, i32 1
  %11 = tail call i32 @nvkm_fifo_chan_ctor(ptr noundef nonnull @g84_fifo_chan_func, ptr noundef %0, i32 noundef 65536, i32 noundef 4096, i1 noundef zeroext false, i64 noundef %1, i64 noundef %2, i32 noundef 255, i32 noundef 0, i32 noundef 12582912, i32 noundef 8192, ptr noundef %3, ptr noundef %10) #6
  store ptr %0, ptr %4, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.nv50_fifo_chan, ptr %4, i32 0, i32 1, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nv50_fifo_chan, ptr %4, i32 0, i32 4
  %17 = tail call i32 @nvkm_gpuobj_new(ptr noundef %7, i32 noundef 512, i32 noundef 0, i1 noundef zeroext true, ptr noundef %15, ptr noundef %16) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %13
  %20 = load ptr, ptr %14, align 4
  %21 = getelementptr inbounds %struct.nv50_fifo_chan, ptr %4, i32 0, i32 5
  %22 = tail call i32 @nvkm_gpuobj_new(ptr noundef %7, i32 noundef 16384, i32 noundef 0, i1 noundef zeroext false, ptr noundef %20, ptr noundef %21) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load ptr, ptr %14, align 4
  %26 = getelementptr inbounds %struct.nv50_fifo_chan, ptr %4, i32 0, i32 3
  %27 = tail call i32 @nvkm_gpuobj_new(ptr noundef %7, i32 noundef 4096, i32 noundef 1024, i1 noundef zeroext true, ptr noundef %25, ptr noundef %26) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load ptr, ptr %14, align 4
  %31 = getelementptr inbounds %struct.nv50_fifo_chan, ptr %4, i32 0, i32 2
  %32 = tail call i32 @nvkm_gpuobj_new(ptr noundef %7, i32 noundef 256, i32 noundef 256, i1 noundef zeroext true, ptr noundef %30, ptr noundef %31) #6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load ptr, ptr %14, align 4
  %36 = getelementptr inbounds %struct.nv50_fifo_chan, ptr %4, i32 0, i32 6
  %37 = tail call i32 @nvkm_ramht_new(ptr noundef %7, i32 noundef 32768, i32 noundef 16, ptr noundef %35, ptr noundef %36) #6
  br label %38

38:                                               ; preds = %34, %29, %24, %19, %13, %9, %5
  %39 = phi i32 [ %37, %34 ], [ -22, %5 ], [ %11, %9 ], [ %17, %13 ], [ %22, %19 ], [ %27, %24 ], [ %32, %29 ]
  ret i32 %39
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fifo_chan_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_new(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ramht_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv50_fifo_chan_dtor(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @g84_fifo_chan_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_fifo, ptr %3, i32 0, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 328
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %7, i32 0, i32 4
  %9 = load i64, ptr %8, align 8
  %10 = lshr i64 %9, 8
  %11 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 5
  %12 = load i16, ptr %11, align 8
  %13 = zext i16 %12 to i32
  %14 = trunc i64 %10 to i32
  %15 = or i32 %14, -2147483648
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = shl nuw nsw i32 %13, 2
  %19 = add nuw nsw i32 %18, 9728
  %20 = getelementptr i8, ptr %17, i32 %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %15) #6, !srcloc !9
  tail call void @nv50_fifo_runlist_update(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_fifo_chan_fini(ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @g84_fifo_chan_ntfy(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_fifo, ptr %7, i32 0, i32 7
  store ptr %8, ptr %2, align 4
  br label %9

9:                                                ; preds = %5, %3
  %10 = phi i32 [ 0, %5 ], [ -22, %3 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @g84_fifo_chan_engine_ctor(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 2
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %6 [
    i32 31, label %11
    i32 48, label %11
    i32 33, label %7
    i32 50, label %7
    i32 38, label %7
    i32 36, label %7
    i32 39, label %7
    i32 27, label %7
    i32 40, label %7
    i32 29, label %7
    i32 46, label %7
    i32 28, label %7
  ]

6:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef null) #6
  br label %11

7:                                                ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  %8 = getelementptr i8, ptr %0, i32 -8
  %9 = tail call ptr @nv50_fifo_chan_engine(ptr noundef %8, ptr noundef %1) #6
  %10 = tail call i32 @nvkm_object_bind(ptr noundef %2, ptr noundef null, i32 noundef 0, ptr noundef %9) #6
  br label %11

11:                                               ; preds = %7, %6, %3, %3
  %12 = phi i32 [ %10, %7 ], [ 0, %3 ], [ 0, %3 ], [ 0, %6 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_fifo_chan_engine_dtor(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @g84_fifo_chan_engine_init(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = tail call ptr @nv50_fifo_chan_engine(ptr noundef %3, ptr noundef %1) #6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 2
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %13 [
    i32 31, label %69
    i32 48, label %69
    i32 33, label %14
    i32 50, label %8
    i32 38, label %8
    i32 36, label %9
    i32 39, label %9
    i32 27, label %10
    i32 40, label %10
    i32 29, label %11
    i32 46, label %11
    i32 28, label %12
  ]

8:                                                ; preds = %2, %2
  br label %14

9:                                                ; preds = %2, %2
  br label %14

10:                                               ; preds = %2, %2
  br label %14

11:                                               ; preds = %2, %2
  br label %14

12:                                               ; preds = %2
  br label %14

13:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef null) #6
  br label %69

14:                                               ; preds = %12, %11, %10, %9, %8, %2
  %15 = phi i32 [ 64, %8 ], [ 96, %9 ], [ 128, %10 ], [ 160, %11 ], [ 192, %12 ], [ 32, %2 ]
  %16 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %5, i32 0, i32 4
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 8
  %20 = zext i32 %19 to i64
  %21 = add i64 %17, -1
  %22 = add i64 %21, %20
  %23 = getelementptr i8, ptr %0, i32 336
  %24 = load ptr, ptr %23, align 8
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr %25, align 4
  %27 = tail call ptr %26(ptr noundef %24) #6
  %28 = load ptr, ptr %23, align 8
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %29, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  tail call void %31(ptr noundef %28, i32 noundef %15, i32 noundef 1638400) #6
  %32 = load ptr, ptr %23, align 8
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = or i32 %15, 4
  %37 = trunc i64 %22 to i32
  tail call void %35(ptr noundef %32, i32 noundef %36, i32 noundef %37) #6
  %38 = load ptr, ptr %23, align 8
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %39, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = or i32 %15, 8
  %43 = trunc i64 %17 to i32
  tail call void %41(ptr noundef %38, i32 noundef %42, i32 noundef %43) #6
  %44 = load ptr, ptr %23, align 8
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %45, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = or i32 %15, 12
  %49 = lshr i64 %22, 8
  %50 = trunc i64 %49 to i32
  %51 = and i32 %50, -16777216
  %52 = lshr i64 %17, 32
  %53 = trunc i64 %52 to i32
  %54 = or i32 %51, %53
  tail call void %47(ptr noundef %44, i32 noundef %48, i32 noundef %54) #6
  %55 = load ptr, ptr %23, align 8
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %56, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = or i32 %15, 16
  tail call void %58(ptr noundef %55, i32 noundef %59, i32 noundef 0) #6
  %60 = load ptr, ptr %23, align 8
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %61, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = or i32 %15, 20
  tail call void %63(ptr noundef %60, i32 noundef %64, i32 noundef 0) #6
  %65 = load ptr, ptr %23, align 8
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %66, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  tail call void %68(ptr noundef %65) #6
  br label %69

69:                                               ; preds = %14, %13, %2, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @g84_fifo_chan_engine_fini(ptr nocapture noundef readonly %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
  %4 = alloca %struct.nvkm_timer_wait, align 8
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvkm_fifo, ptr %6, i32 0, i32 1, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 2
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %16 [
    i32 31, label %132
    i32 48, label %132
    i32 33, label %17
    i32 50, label %11
    i32 38, label %11
    i32 36, label %12
    i32 39, label %12
    i32 27, label %13
    i32 40, label %13
    i32 29, label %14
    i32 46, label %14
    i32 28, label %15
  ]

11:                                               ; preds = %3, %3
  br label %17

12:                                               ; preds = %3, %3
  br label %17

13:                                               ; preds = %3, %3
  br label %17

14:                                               ; preds = %3, %3
  br label %17

15:                                               ; preds = %3
  br label %17

16:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef null) #6
  br label %132

17:                                               ; preds = %15, %14, %13, %12, %11, %3
  %18 = phi i32 [ 64, %11 ], [ 96, %12 ], [ 128, %13 ], [ 160, %14 ], [ 192, %15 ], [ 32, %3 ]
  %19 = load ptr, ptr %6, align 4
  %20 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %19, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef %6, ptr noundef %1) #6
  %23 = add i32 %22, -1
  %24 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 9504
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %28 = and i32 %27, -64
  %29 = shl nuw i32 1, %23
  %30 = or i32 %28, %29
  %31 = load ptr, ptr %24, align 4
  %32 = getelementptr i8, ptr %31, i32 9504
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #6, !srcloc !9
  %33 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 6
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %34, i32 0, i32 4
  %36 = load i64, ptr %35, align 8
  %37 = lshr i64 %36, 12
  %38 = trunc i64 %37 to i32
  %39 = load ptr, ptr %24, align 4
  %40 = getelementptr i8, ptr %39, i32 13052
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #6, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i32 40, i1 false), !annotation !12
  call void @nvkm_timer_wait_init(ptr noundef %8, i64 noundef 2000000000, ptr noundef nonnull %4) #6
  %41 = load ptr, ptr %24, align 4
  %42 = getelementptr i8, ptr %41, i32 13052
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #6, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %50, label %72

45:                                               ; preds = %50
  %46 = load ptr, ptr %24, align 4
  %47 = getelementptr i8, ptr %46, i32 13052
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #6, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %72

50:                                               ; preds = %45, %17
  %51 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %4) #6
  %52 = icmp sgt i64 %51, -1
  br i1 %52, label %45, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %4, align 8
  %55 = getelementptr inbounds %struct.nvkm_timer, ptr %54, i32 0, i32 1, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nvkm_device, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 8
  %59 = call ptr @dev_driver_string(ptr noundef %58) #6
  %60 = load ptr, ptr %4, align 8
  %61 = getelementptr inbounds %struct.nvkm_timer, ptr %60, i32 0, i32 1, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.nvkm_device, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.device, ptr %64, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %53
  %69 = load ptr, ptr %64, align 4
  br label %70

70:                                               ; preds = %68, %53
  %71 = phi ptr [ %69, %68 ], [ %66, %53 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 91, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %59, ptr noundef %71) #6
  br label %72

72:                                               ; preds = %70, %45, %17
  %73 = phi i64 [ %51, %70 ], [ 0, %17 ], [ %51, %45 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #6
  %74 = icmp sgt i64 %73, -1
  %75 = load ptr, ptr %24, align 4
  %76 = getelementptr i8, ptr %75, i32 9504
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %27) #6, !srcloc !9
  br i1 %74, label %93, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.nvkm_fifo, ptr %6, i32 0, i32 1, i32 1, i32 5
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr %7, align 4
  %83 = getelementptr inbounds %struct.nvkm_device, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.nvkm_fifo, ptr %6, i32 0, i32 1, i32 1, i32 4
  %86 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 5
  %87 = load i16, ptr %86, align 8
  %88 = zext i16 %87 to i32
  %89 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 3, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.nvkm_client, ptr %90, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.2, ptr noundef %85, i32 noundef %88, ptr noundef %91) #7
  br label %92

92:                                               ; preds = %81, %77
  br i1 %2, label %132, label %93

93:                                               ; preds = %92, %72
  %94 = getelementptr i8, ptr %0, i32 336
  %95 = load ptr, ptr %94, align 8
  %96 = load ptr, ptr %95, align 8
  %97 = load ptr, ptr %96, align 4
  %98 = call ptr %97(ptr noundef %95) #6
  %99 = load ptr, ptr %94, align 8
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %100, i32 0, i32 3
  %102 = load ptr, ptr %101, align 4
  call void %102(ptr noundef %99, i32 noundef %18, i32 noundef 0) #6
  %103 = load ptr, ptr %94, align 8
  %104 = load ptr, ptr %103, align 8
  %105 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %104, i32 0, i32 3
  %106 = load ptr, ptr %105, align 4
  %107 = or i32 %18, 4
  call void %106(ptr noundef %103, i32 noundef %107, i32 noundef 0) #6
  %108 = load ptr, ptr %94, align 8
  %109 = load ptr, ptr %108, align 8
  %110 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %109, i32 0, i32 3
  %111 = load ptr, ptr %110, align 4
  %112 = or i32 %18, 8
  call void %111(ptr noundef %108, i32 noundef %112, i32 noundef 0) #6
  %113 = load ptr, ptr %94, align 8
  %114 = load ptr, ptr %113, align 8
  %115 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %114, i32 0, i32 3
  %116 = load ptr, ptr %115, align 4
  %117 = or i32 %18, 12
  call void %116(ptr noundef %113, i32 noundef %117, i32 noundef 0) #6
  %118 = load ptr, ptr %94, align 8
  %119 = load ptr, ptr %118, align 8
  %120 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %119, i32 0, i32 3
  %121 = load ptr, ptr %120, align 4
  %122 = or i32 %18, 16
  call void %121(ptr noundef %118, i32 noundef %122, i32 noundef 0) #6
  %123 = load ptr, ptr %94, align 8
  %124 = load ptr, ptr %123, align 8
  %125 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %124, i32 0, i32 3
  %126 = load ptr, ptr %125, align 4
  %127 = or i32 %18, 20
  call void %126(ptr noundef %123, i32 noundef %127, i32 noundef 0) #6
  %128 = load ptr, ptr %94, align 8
  %129 = load ptr, ptr %128, align 8
  %130 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %129, i32 0, i32 1
  %131 = load ptr, ptr %130, align 4
  call void %131(ptr noundef %128) #6
  br label %132

132:                                              ; preds = %93, %92, %16, %3, %3
  %133 = phi i32 [ 0, %93 ], [ -16, %92 ], [ 0, %3 ], [ 0, %3 ], [ 0, %16 ]
  ret i32 %133
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @g84_fifo_chan_object_ctor(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvkm_engine, ptr %6, i32 0, i32 1, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -27
  %10 = icmp ult i32 %9, 24
  br i1 %10, label %12, label %11

11:                                               ; preds = %12, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 176, i32 noundef 9, ptr noundef null) #6
  br label %22

12:                                               ; preds = %2
  %13 = lshr i32 15219543, %9
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %11, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds [24 x i32], ptr @switch.table.g84_fifo_chan_object_ctor, i32 0, i32 %9
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i8, ptr %0, i32 344
  %20 = load ptr, ptr %19, align 8
  %21 = tail call i32 @nvkm_ramht_insert(ptr noundef %20, ptr noundef %1, i32 noundef 0, i32 noundef 4, i32 noundef %4, i32 noundef %18) #6
  br label %22

22:                                               ; preds = %16, %11
  %23 = phi i32 [ -22, %11 ], [ %21, %16 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_fifo_chan_object_dtor(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_fifo_runlist_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_bind(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv50_fifo_chan_engine(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ramht_insert(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 2151494457}
!9 = !{i64 3953364}
!10 = !{i64 3953782}
!11 = !{i64 2151493235}
!12 = !{!"auto-init"}
