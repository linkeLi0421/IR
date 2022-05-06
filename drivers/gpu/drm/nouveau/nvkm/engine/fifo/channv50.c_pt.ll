; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/fifo/channv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/channv50.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_fifo_chan_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv50_fifo_chan = type { ptr, %struct.nvkm_fifo_chan, ptr, ptr, ptr, ptr, ptr, [16 x ptr] }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_fifo_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x ptr] }
%struct.nvkm_fifo = type { ptr, %struct.nvkm_engine, [128 x i32], i32, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.nvkm_event, %struct.nvkm_event, %struct.nvkm_event }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.126 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.126 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.120, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.120 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_gpuobj = type { %union.anon, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
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

@nv50_fifo_chan_func = internal constant %struct.nvkm_fifo_chan_func { ptr @nv50_fifo_chan_dtor, ptr @nv50_fifo_chan_init, ptr @nv50_fifo_chan_fini, ptr null, ptr @nv50_fifo_chan_engine_ctor, ptr @nv50_fifo_chan_engine_dtor, ptr @nv50_fifo_chan_engine_init, ptr @nv50_fifo_chan_engine_fini, ptr @nv50_fifo_chan_object_ctor, ptr @nv50_fifo_chan_object_dtor, ptr null }, align 4
@.str = private unnamed_addr constant [52 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/fifo/channv50.c\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"%s: channel %d [%s] unload timeout\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nv50_fifo_chan_engine(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nv50_fifo_chan, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %4, ptr noundef %1) #5
  %9 = icmp sgt i32 %8, -1
  %10 = getelementptr %struct.nv50_fifo_chan, ptr %0, i32 0, i32 7, i32 %8
  %11 = select i1 %9, ptr %10, ptr null
  ret ptr %11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_fifo_chan_engine_dtor(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = getelementptr i8, ptr %0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %5, ptr noundef %1) #5
  %10 = icmp sgt i32 %9, -1
  %11 = getelementptr %struct.nv50_fifo_chan, ptr %3, i32 0, i32 7, i32 %9
  %12 = select i1 %10, ptr %11, ptr null
  tail call void @nvkm_gpuobj_del(ptr noundef %12) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_gpuobj_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_fifo_chan_object_dtor(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 344
  %4 = load ptr, ptr %3, align 8
  tail call void @nvkm_ramht_remove(ptr noundef %4, i32 noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_ramht_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_fifo_chan_fini(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_fifo, ptr %3, i32 0, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 5
  %7 = load i16, ptr %6, align 8
  %8 = zext i16 %7 to i32
  %9 = shl nuw nsw i32 %8, 2
  %10 = add nuw nsw i32 %9, 9728
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 %10
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %15 = and i32 %14, 2147483647
  %16 = load ptr, ptr %11, align 4
  %17 = getelementptr i8, ptr %16, i32 %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #5, !srcloc !11
  tail call void @nv50_fifo_runlist_update(ptr noundef %3) #5
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr i8, ptr %18, i32 %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #5, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_fifo_runlist_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nv50_fifo_chan_dtor(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = getelementptr i8, ptr %0, i32 344
  tail call void @nvkm_ramht_del(ptr noundef %3) #5
  %4 = getelementptr i8, ptr %0, i32 340
  tail call void @nvkm_gpuobj_del(ptr noundef %4) #5
  %5 = getelementptr i8, ptr %0, i32 336
  tail call void @nvkm_gpuobj_del(ptr noundef %5) #5
  %6 = getelementptr i8, ptr %0, i32 332
  tail call void @nvkm_gpuobj_del(ptr noundef %6) #5
  %7 = getelementptr i8, ptr %0, i32 328
  tail call void @nvkm_gpuobj_del(ptr noundef %7) #5
  ret ptr %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_ramht_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_fifo_chan_ctor(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq i64 %1, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nv50_fifo_chan, ptr %4, i32 0, i32 1
  %11 = tail call i32 @nvkm_fifo_chan_ctor(ptr noundef nonnull @nv50_fifo_chan_func, ptr noundef %0, i32 noundef 65536, i32 noundef 4096, i1 noundef zeroext false, i64 noundef %1, i64 noundef %2, i32 noundef 15, i32 noundef 0, i32 noundef 12582912, i32 noundef 8192, ptr noundef %3, ptr noundef %10) #5
  store ptr %0, ptr %4, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.nv50_fifo_chan, ptr %4, i32 0, i32 1, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nv50_fifo_chan, ptr %4, i32 0, i32 2
  %17 = tail call i32 @nvkm_gpuobj_new(ptr noundef %7, i32 noundef 512, i32 noundef 4096, i1 noundef zeroext true, ptr noundef %15, ptr noundef %16) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %13
  %20 = load ptr, ptr %14, align 4
  %21 = getelementptr inbounds %struct.nv50_fifo_chan, ptr %4, i32 0, i32 4
  %22 = tail call i32 @nvkm_gpuobj_new(ptr noundef %7, i32 noundef 4608, i32 noundef 0, i1 noundef zeroext true, ptr noundef %20, ptr noundef %21) #5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load ptr, ptr %14, align 4
  %26 = getelementptr inbounds %struct.nv50_fifo_chan, ptr %4, i32 0, i32 5
  %27 = tail call i32 @nvkm_gpuobj_new(ptr noundef %7, i32 noundef 16384, i32 noundef 0, i1 noundef zeroext false, ptr noundef %25, ptr noundef %26) #5
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load ptr, ptr %14, align 4
  %31 = getelementptr inbounds %struct.nv50_fifo_chan, ptr %4, i32 0, i32 6
  %32 = tail call i32 @nvkm_ramht_new(ptr noundef %7, i32 noundef 32768, i32 noundef 16, ptr noundef %30, ptr noundef %31) #5
  br label %33

33:                                               ; preds = %29, %24, %19, %13, %9, %5
  %34 = phi i32 [ %32, %29 ], [ -22, %5 ], [ %11, %9 ], [ %17, %13 ], [ %22, %19 ], [ %27, %24 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fifo_chan_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_new(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ramht_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_fifo_chan_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_fifo, ptr %3, i32 0, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 328
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %7, i32 0, i32 4
  %9 = load i64, ptr %8, align 8
  %10 = lshr i64 %9, 12
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
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %15) #5, !srcloc !11
  tail call void @nv50_fifo_runlist_update(ptr noundef %3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_fifo_chan_engine_ctor(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 2
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %6 [
    i32 31, label %19
    i32 48, label %19
    i32 33, label %7
    i32 36, label %7
  ]

6:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 40, i32 noundef 9, ptr noundef null) #5
  br label %19

7:                                                ; preds = %3, %3
  %8 = getelementptr i8, ptr %0, i32 -8
  %9 = getelementptr i8, ptr %0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %11, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %10, ptr noundef %1) #5
  %15 = icmp sgt i32 %14, -1
  %16 = getelementptr %struct.nv50_fifo_chan, ptr %8, i32 0, i32 7, i32 %14
  %17 = select i1 %15, ptr %16, ptr null
  %18 = tail call i32 @nvkm_object_bind(ptr noundef %2, ptr noundef null, i32 noundef 0, ptr noundef %17) #5
  br label %19

19:                                               ; preds = %7, %6, %3, %3
  %20 = phi i32 [ %18, %7 ], [ 0, %6 ], [ 0, %3 ], [ 0, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_fifo_chan_engine_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = getelementptr i8, ptr %0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %5, ptr noundef %1) #5
  %10 = icmp sgt i32 %9, -1
  %11 = getelementptr %struct.nv50_fifo_chan, ptr %3, i32 0, i32 7, i32 %9
  %12 = select i1 %10, ptr %11, ptr null
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 2
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %17 [
    i32 31, label %73
    i32 48, label %73
    i32 33, label %18
    i32 36, label %16
  ]

16:                                               ; preds = %2
  br label %18

17:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 40, i32 noundef 9, ptr noundef null) #5
  br label %73

18:                                               ; preds = %16, %2
  %19 = phi i32 [ 96, %16 ], [ 0, %2 ]
  %20 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %13, i32 0, i32 4
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %13, i32 0, i32 5
  %23 = load i32, ptr %22, align 8
  %24 = zext i32 %23 to i64
  %25 = add i64 %21, -1
  %26 = add i64 %25, %24
  %27 = getelementptr i8, ptr %0, i32 336
  %28 = load ptr, ptr %27, align 8
  %29 = load ptr, ptr %28, align 8
  %30 = load ptr, ptr %29, align 4
  %31 = tail call ptr %30(ptr noundef %28) #5
  %32 = load ptr, ptr %27, align 8
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  tail call void %35(ptr noundef %32, i32 noundef %19, i32 noundef 1638400) #5
  %36 = load ptr, ptr %27, align 8
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = or i32 %19, 4
  %41 = trunc i64 %26 to i32
  tail call void %39(ptr noundef %36, i32 noundef %40, i32 noundef %41) #5
  %42 = load ptr, ptr %27, align 8
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %43, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = or i32 %19, 8
  %47 = trunc i64 %21 to i32
  tail call void %45(ptr noundef %42, i32 noundef %46, i32 noundef %47) #5
  %48 = load ptr, ptr %27, align 8
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %49, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = or i32 %19, 12
  %53 = lshr i64 %26, 8
  %54 = trunc i64 %53 to i32
  %55 = and i32 %54, -16777216
  %56 = lshr i64 %21, 32
  %57 = trunc i64 %56 to i32
  %58 = or i32 %55, %57
  tail call void %51(ptr noundef %48, i32 noundef %52, i32 noundef %58) #5
  %59 = load ptr, ptr %27, align 8
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %60, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = or i32 %19, 16
  tail call void %62(ptr noundef %59, i32 noundef %63, i32 noundef 0) #5
  %64 = load ptr, ptr %27, align 8
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %65, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = or i32 %19, 20
  tail call void %67(ptr noundef %64, i32 noundef %68, i32 noundef 0) #5
  %69 = load ptr, ptr %27, align 8
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %70, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  tail call void %72(ptr noundef %69) #5
  br label %73

73:                                               ; preds = %18, %17, %2, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_fifo_chan_engine_fini(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #0 {
  %4 = alloca %struct.nvkm_timer_wait, align 8
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvkm_fifo, ptr %6, i32 0, i32 1, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 2
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %12 [
    i32 31, label %119
    i32 48, label %119
    i32 33, label %13
    i32 36, label %11
  ]

11:                                               ; preds = %3
  br label %13

12:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 40, i32 noundef 9, ptr noundef null) #5
  br label %119

13:                                               ; preds = %11, %3
  %14 = phi i32 [ 96, %11 ], [ 0, %3 ]
  %15 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 47200
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %19 = or i32 %18, 1
  %20 = load ptr, ptr %15, align 4
  %21 = getelementptr i8, ptr %20, i32 47200
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #5, !srcloc !11
  %22 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %23, i32 0, i32 4
  %25 = load i64, ptr %24, align 8
  %26 = lshr i64 %25, 12
  %27 = trunc i64 %26 to i32
  %28 = load ptr, ptr %15, align 4
  %29 = getelementptr i8, ptr %28, i32 13052
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #5, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i32 40, i1 false), !annotation !12
  call void @nvkm_timer_wait_init(ptr noundef %8, i64 noundef 2000000000, ptr noundef nonnull %4) #5
  br label %30

30:                                               ; preds = %35, %13
  %31 = load ptr, ptr %15, align 4
  %32 = getelementptr i8, ptr %31, i32 13052
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #5, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %74

35:                                               ; preds = %30
  %36 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %4) #5
  %37 = icmp sgt i64 %36, -1
  br i1 %37, label %30, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %4, align 8
  %40 = getelementptr inbounds %struct.nvkm_timer, ptr %39, i32 0, i32 1, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 8
  %44 = call ptr @dev_driver_string(ptr noundef %43) #5
  %45 = load ptr, ptr %4, align 8
  %46 = getelementptr inbounds %struct.nvkm_timer, ptr %45, i32 0, i32 1, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.nvkm_device, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %38
  %54 = load ptr, ptr %49, align 4
  br label %55

55:                                               ; preds = %53, %38
  %56 = phi ptr [ %54, %53 ], [ %51, %38 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 88, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %44, ptr noundef %56) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #5
  %57 = getelementptr inbounds %struct.nvkm_fifo, ptr %6, i32 0, i32 1, i32 1, i32 5
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %55
  %61 = load ptr, ptr %7, align 4
  %62 = getelementptr inbounds %struct.nvkm_device, ptr %61, i32 0, i32 2
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.nvkm_fifo, ptr %6, i32 0, i32 1, i32 1, i32 4
  %65 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 5
  %66 = load i16, ptr %65, align 8
  %67 = zext i16 %66 to i32
  %68 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 3, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.nvkm_client, ptr %69, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.2, ptr noundef %64, i32 noundef %67, ptr noundef %70) #6
  br label %71

71:                                               ; preds = %60, %55
  %72 = xor i1 %2, true
  %73 = select i1 %2, i32 -16, i32 0
  br label %75

74:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #5
  br label %75

75:                                               ; preds = %74, %71
  %76 = phi i1 [ true, %74 ], [ %72, %71 ]
  %77 = phi i32 [ 0, %74 ], [ %73, %71 ]
  %78 = load ptr, ptr %15, align 4
  %79 = getelementptr i8, ptr %78, i32 47200
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %18) #5, !srcloc !11
  br i1 %76, label %80, label %119

80:                                               ; preds = %75
  %81 = getelementptr i8, ptr %0, i32 336
  %82 = load ptr, ptr %81, align 8
  %83 = load ptr, ptr %82, align 8
  %84 = load ptr, ptr %83, align 4
  %85 = call ptr %84(ptr noundef %82) #5
  %86 = load ptr, ptr %81, align 8
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %87, i32 0, i32 3
  %89 = load ptr, ptr %88, align 4
  call void %89(ptr noundef %86, i32 noundef %14, i32 noundef 0) #5
  %90 = load ptr, ptr %81, align 8
  %91 = load ptr, ptr %90, align 8
  %92 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %91, i32 0, i32 3
  %93 = load ptr, ptr %92, align 4
  %94 = or i32 %14, 4
  call void %93(ptr noundef %90, i32 noundef %94, i32 noundef 0) #5
  %95 = load ptr, ptr %81, align 8
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %96, i32 0, i32 3
  %98 = load ptr, ptr %97, align 4
  %99 = or i32 %14, 8
  call void %98(ptr noundef %95, i32 noundef %99, i32 noundef 0) #5
  %100 = load ptr, ptr %81, align 8
  %101 = load ptr, ptr %100, align 8
  %102 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %101, i32 0, i32 3
  %103 = load ptr, ptr %102, align 4
  %104 = or i32 %14, 12
  call void %103(ptr noundef %100, i32 noundef %104, i32 noundef 0) #5
  %105 = load ptr, ptr %81, align 8
  %106 = load ptr, ptr %105, align 8
  %107 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %106, i32 0, i32 3
  %108 = load ptr, ptr %107, align 4
  %109 = or i32 %14, 16
  call void %108(ptr noundef %105, i32 noundef %109, i32 noundef 0) #5
  %110 = load ptr, ptr %81, align 8
  %111 = load ptr, ptr %110, align 8
  %112 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %111, i32 0, i32 3
  %113 = load ptr, ptr %112, align 4
  %114 = or i32 %14, 20
  call void %113(ptr noundef %110, i32 noundef %114, i32 noundef 0) #5
  %115 = load ptr, ptr %81, align 8
  %116 = load ptr, ptr %115, align 8
  %117 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %116, i32 0, i32 1
  %118 = load ptr, ptr %117, align 4
  call void %118(ptr noundef %115) #5
  br label %119

119:                                              ; preds = %80, %75, %12, %3, %3
  %120 = phi i32 [ %77, %80 ], [ %77, %75 ], [ 0, %12 ], [ 0, %3 ], [ 0, %3 ]
  ret i32 %120
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_fifo_chan_object_ctor(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvkm_engine, ptr %6, i32 0, i32 1, i32 2
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %11 [
    i32 31, label %12
    i32 48, label %12
    i32 33, label %9
    i32 36, label %10
  ]

9:                                                ; preds = %2
  br label %12

10:                                               ; preds = %2
  br label %12

11:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 179, i32 noundef 9, ptr noundef null) #5
  br label %17

12:                                               ; preds = %10, %9, %2, %2
  %13 = phi i32 [ 2097152, %10 ], [ 1048576, %9 ], [ 0, %2 ], [ 0, %2 ]
  %14 = getelementptr i8, ptr %0, i32 344
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i32 @nvkm_ramht_insert(ptr noundef %15, ptr noundef %1, i32 noundef 0, i32 noundef 4, i32 noundef %4, i32 noundef %13) #5
  br label %17

17:                                               ; preds = %12, %11
  %18 = phi i32 [ -22, %11 ], [ %16, %12 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_bind(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ramht_insert(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{i64 3954199}
!9 = !{i64 2151493652}
!10 = !{i64 2151494874}
!11 = !{i64 3953781}
!12 = !{!"auto-init"}
