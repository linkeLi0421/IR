; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifogk104.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifogk104.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_fifo_chan_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.gk104_fifo_chan = type { %struct.nvkm_fifo_chan, ptr, i32, ptr, %struct.list_head, i8, ptr, [16 x %struct.gk104_fifo_engn] }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.gk104_fifo_engn = type { ptr, ptr }
%struct.gk104_fifo = type { ptr, %struct.nvkm_fifo, %struct.anon.9, i32, [16 x %struct.anon.10], i32, [16 x %struct.anon.11], i32, %struct.anon.12 }
%struct.nvkm_fifo = type { ptr, %struct.nvkm_engine, [128 x i32], i32, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.nvkm_event, %struct.nvkm_event, %struct.nvkm_event }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.6 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.6 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.9 = type { %struct.work_struct, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.anon.10 = type { ptr, i32, i32 }
%struct.anon.11 = type { [2 x ptr], i32, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.12 = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.146, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.146 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.nvkm_fifo_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x ptr] }
%struct.nvkm_gpuobj = type { %union.anon, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_vma = type { %struct.list_head, %struct.rb_node, i64, [7 x i8], i8, ptr, ptr }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.kepler_channel_gpfifo_a_v0 = type { i8, i8, i16, i32, i64, i64, i64, i64 }
%struct.gk104_fifo_func = type { %struct.anon.7, ptr, %struct.anon.8, ptr, %struct.gk104_fifo_user_user, %struct.gk104_fifo_chan_user, i8 }
%struct.anon.7 = type { ptr }
%struct.anon.8 = type { ptr, ptr, ptr, ptr, ptr }
%struct.gk104_fifo_user_user = type { %struct.nvkm_sclass, ptr }
%struct.gk104_fifo_chan_user = type { %struct.nvkm_sclass, ptr }
%struct.nvkm_fifo_cgrp = type { i32, %struct.list_head, %struct.list_head, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.nvkm_memory_ptrs = type { ptr, ptr }

@.str = private unnamed_addr constant [55 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifogk104.c\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: %s %d [%s] kick timeout\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"tsg\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@gk104_fifo_gpfifo_func = dso_local constant %struct.nvkm_fifo_chan_func { ptr @gk104_fifo_gpfifo_dtor, ptr @gk104_fifo_gpfifo_init, ptr @gk104_fifo_gpfifo_fini, ptr @gf100_fifo_chan_ntfy, ptr @gk104_fifo_gpfifo_engine_ctor, ptr @gk104_fifo_gpfifo_engine_dtor, ptr @gk104_fifo_gpfifo_engine_init, ptr @gk104_fifo_gpfifo_engine_fini, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [63 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create channel gpfifo size %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [125 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create channel gpfifo vers %d vmm %llx ioffset %016llx ilength %08x runlist %016llx priv %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk104_fifo_gpfifo_kick_locked(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.gk104_fifo, ptr %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.gk104_fifo, ptr %4, i32 0, i32 1, i32 1, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 3, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load i32, ptr %11, align 4
  %15 = or i32 %14, 16777216
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 9780
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %15) #7, !srcloc !9
  br label %26

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 5
  %21 = load i16, ptr %20, align 8
  %22 = zext i16 %21 to i32
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 9780
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %22) #7, !srcloc !9
  br label %26

26:                                               ; preds = %19, %13
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !10
  call void @nvkm_timer_wait_init(ptr noundef %7, i64 noundef 2000000000, ptr noundef nonnull %2) #7
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  br label %28

28:                                               ; preds = %34, %26
  %29 = load ptr, ptr %27, align 4
  %30 = getelementptr i8, ptr %29, i32 9780
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %32 = and i32 %31, 1048576
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %78, label %34

34:                                               ; preds = %28
  %35 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #7
  %36 = icmp sgt i64 %35, -1
  br i1 %36, label %28, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %2, align 8
  %39 = getelementptr inbounds %struct.nvkm_timer, ptr %38, i32 0, i32 1, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.nvkm_device, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 8
  %43 = call ptr @dev_driver_string(ptr noundef %42) #7
  %44 = load ptr, ptr %2, align 8
  %45 = getelementptr inbounds %struct.nvkm_timer, ptr %44, i32 0, i32 1, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %37
  %53 = load ptr, ptr %48, align 4
  br label %54

54:                                               ; preds = %52, %37
  %55 = phi ptr [ %53, %52 ], [ %50, %37 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 54, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %43, ptr noundef %55) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #7
  %56 = getelementptr inbounds %struct.gk104_fifo, ptr %4, i32 0, i32 1, i32 1, i32 1, i32 5
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %54
  %60 = load ptr, ptr %6, align 4
  %61 = getelementptr inbounds %struct.nvkm_device, ptr %60, i32 0, i32 2
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.gk104_fifo, ptr %4, i32 0, i32 1, i32 1, i32 1, i32 4
  %64 = select i1 %12, ptr @.str.4, ptr @.str.3
  br i1 %12, label %67, label %65

65:                                               ; preds = %59
  %66 = load i32, ptr %11, align 4
  br label %71

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 5
  %69 = load i16, ptr %68, align 8
  %70 = zext i16 %69 to i32
  br label %71

71:                                               ; preds = %67, %65
  %72 = phi i32 [ %66, %65 ], [ %70, %67 ]
  %73 = getelementptr inbounds %struct.nvkm_client, ptr %9, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.2, ptr noundef %63, ptr noundef nonnull %64, i32 noundef %72, ptr noundef %73) #8
  br label %74

74:                                               ; preds = %71, %54
  %75 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 5
  %76 = load i16, ptr %75, align 8
  %77 = zext i16 %76 to i32
  call void @nvkm_fifo_recover_chan(ptr noundef %5, i32 noundef %77) #7
  br label %79

78:                                               ; preds = %28
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #7
  br label %79

79:                                               ; preds = %78, %74
  %80 = phi i32 [ -110, %74 ], [ 0, %78 ]
  ret i32 %80
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_recover_chan(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk104_fifo_gpfifo_kick(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_fifo, ptr %3, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %4) #7
  %5 = tail call i32 @gk104_fifo_gpfifo_kick_locked(ptr noundef %0)
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds %struct.nvkm_fifo, ptr %6, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %7) #7
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @gk104_fifo_gpfifo_engine(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %4, ptr noundef %1) #7
  %9 = icmp sgt i32 %8, -1
  %10 = getelementptr %struct.gk104_fifo_chan, ptr %0, i32 0, i32 7, i32 %8
  %11 = select i1 %9, ptr %10, ptr null
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gk104_fifo_gpfifo_engine_dtor(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %4, ptr noundef %1) #7
  %9 = icmp sgt i32 %8, -1
  %10 = getelementptr %struct.gk104_fifo_chan, ptr %0, i32 0, i32 7, i32 %8
  %11 = select i1 %9, ptr %10, ptr null
  %12 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.gk104_fifo_engn, ptr %11, i32 0, i32 1
  tail call void @nvkm_vmm_put(ptr noundef %13, ptr noundef %14) #7
  tail call void @nvkm_gpuobj_del(ptr noundef %11) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_put(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_gpuobj_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk104_fifo_gpfifo_engine_ctor(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %5, ptr noundef %1) #7
  %10 = icmp sgt i32 %9, -1
  %11 = getelementptr %struct.gk104_fifo_chan, ptr %0, i32 0, i32 7, i32 %9
  %12 = select i1 %10, ptr %11, ptr null
  %13 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 2
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %15 [
    i32 48, label %37
    i32 28, label %37
    i32 33, label %16
    i32 46, label %16
    i32 38, label %16
    i32 39, label %16
    i32 40, label %16
    i32 49, label %16
    i32 37, label %16
    i32 41, label %16
    i32 42, label %16
  ]

15:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef null) #7
  br label %37

16:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3
  %17 = tail call i32 @nvkm_object_bind(ptr noundef %2, ptr noundef null, i32 noundef 0, ptr noundef %12) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %12, align 4
  %23 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %22, i32 0, i32 5
  %24 = load i32, ptr %23, align 8
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.gk104_fifo_engn, ptr %12, i32 0, i32 1
  %27 = tail call i32 @nvkm_vmm_get(ptr noundef %21, i8 noundef zeroext 12, i64 noundef %25, ptr noundef %26) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %19
  %30 = load ptr, ptr %12, align 4
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %31, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %20, align 4
  %35 = load ptr, ptr %26, align 4
  %36 = tail call i32 %33(ptr noundef %30, i64 noundef 0, ptr noundef %34, ptr noundef %35, ptr noundef null, i32 noundef 0) #7
  br label %37

37:                                               ; preds = %29, %19, %16, %15, %3, %3
  %38 = phi i32 [ %36, %29 ], [ %17, %16 ], [ %27, %19 ], [ 0, %3 ], [ 0, %3 ], [ 0, %15 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_bind(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_get(ptr noundef, i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gk104_fifo_gpfifo_fini(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.gk104_fifo, ptr %3, i32 0, i32 1, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 5
  %7 = load i16, ptr %6, align 8
  %8 = zext i16 %7 to i32
  %9 = shl nuw nsw i32 %8, 3
  %10 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %0, i32 0, i32 4
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %30, label %13

13:                                               ; preds = %1
  tail call void @gk104_fifo_runlist_remove(ptr noundef %3, ptr noundef %0) #7
  %14 = or i32 %9, 8388612
  %15 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 %14
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %19 = or i32 %18, 2048
  %20 = load ptr, ptr %15, align 4
  %21 = getelementptr i8, ptr %20, i32 %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #7, !srcloc !9
  %22 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nvkm_fifo, ptr %23, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %24) #7
  %25 = tail call i32 @gk104_fifo_gpfifo_kick_locked(ptr noundef %0) #7
  %26 = load ptr, ptr %22, align 4
  %27 = getelementptr inbounds %struct.nvkm_fifo, ptr %26, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %27) #7
  %28 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %0, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  tail call void @gk104_fifo_runlist_update(ptr noundef %3, i32 noundef %29) #7
  br label %30

30:                                               ; preds = %13, %1
  %31 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %32 = load ptr, ptr %31, align 4
  %33 = or i32 %9, 8388608
  %34 = getelementptr i8, ptr %32, i32 %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 0) #7, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_runlist_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_runlist_update(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gk104_fifo_gpfifo_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.gk104_fifo, ptr %3, i32 0, i32 1, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %7, i32 0, i32 4
  %9 = load i64, ptr %8, align 8
  %10 = lshr i64 %9, 12
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 5
  %13 = load i16, ptr %12, align 8
  %14 = zext i16 %13 to i32
  %15 = shl nuw nsw i32 %14, 3
  %16 = or i32 %15, 8388612
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 %16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %21 = and i32 %20, -983041
  %22 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %0, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = shl i32 %23, 16
  %25 = or i32 %24, %21
  %26 = load ptr, ptr %17, align 4
  %27 = getelementptr i8, ptr %26, i32 %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #7, !srcloc !9
  %28 = or i32 %11, -2147483648
  %29 = load ptr, ptr %17, align 4
  %30 = or i32 %15, 8388608
  %31 = getelementptr i8, ptr %29, i32 %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %28) #7, !srcloc !9
  %32 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %0, i32 0, i32 4
  %33 = load volatile ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %32
  br i1 %34, label %35, label %53

35:                                               ; preds = %1
  %36 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %0, i32 0, i32 5
  %37 = load i8, ptr %36, align 4, !range !13
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  tail call void @gk104_fifo_runlist_insert(ptr noundef %3, ptr noundef %0) #7
  %40 = load ptr, ptr %17, align 4
  %41 = getelementptr i8, ptr %40, i32 %16
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %43 = or i32 %42, 1024
  %44 = load ptr, ptr %17, align 4
  %45 = getelementptr i8, ptr %44, i32 %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #7, !srcloc !9
  %46 = load i32, ptr %22, align 4
  tail call void @gk104_fifo_runlist_update(ptr noundef %3, i32 noundef %46) #7
  %47 = load ptr, ptr %17, align 4
  %48 = getelementptr i8, ptr %47, i32 %16
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %50 = or i32 %49, 1024
  %51 = load ptr, ptr %17, align 4
  %52 = getelementptr i8, ptr %51, i32 %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #7, !srcloc !9
  br label %53

53:                                               ; preds = %39, %35, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_runlist_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @gk104_fifo_gpfifo_dtor(ptr noundef returned %0) #0 {
  %2 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %0, i32 0, i32 6
  tail call void @nvkm_memory_unref(ptr noundef %2) #7
  %3 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  tail call void @kfree(ptr noundef %4) #7
  ret ptr %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_fifo_chan_ntfy(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gk104_fifo_gpfifo_engine_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %4, ptr noundef %1) #7
  %9 = icmp sgt i32 %8, -1
  %10 = getelementptr %struct.gk104_fifo_chan, ptr %0, i32 0, i32 7, i32 %8
  %11 = select i1 %9, ptr %10, ptr null
  %12 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 2
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %28 [
    i32 48, label %64
    i32 28, label %64
    i32 33, label %29
    i32 46, label %16
    i32 38, label %17
    i32 39, label %18
    i32 40, label %19
    i32 49, label %20
    i32 37, label %21
    i32 41, label %22
    i32 42, label %23
  ]

16:                                               ; preds = %2
  br label %29

17:                                               ; preds = %2
  br label %29

18:                                               ; preds = %2
  br label %29

19:                                               ; preds = %2
  br label %29

20:                                               ; preds = %2
  br label %29

21:                                               ; preds = %2
  br label %29

22:                                               ; preds = %2
  br label %29

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 34603664, i32 528
  br label %29

28:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef null) #7
  br label %64

29:                                               ; preds = %23, %22, %21, %20, %19, %18, %17, %16, %2
  %30 = phi i32 [ 544, %16 ], [ 592, %17 ], [ 608, %18 ], [ 624, %19 ], [ 640, %20 ], [ 656, %21 ], [ 34603632, %22 ], [ 528, %2 ], [ %27, %23 ]
  %31 = getelementptr inbounds %struct.gk104_fifo_engn, ptr %11, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nvkm_vma, ptr %32, i32 0, i32 2
  %34 = load i64, ptr %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = or i32 %35, 4
  %37 = lshr i64 %34, 32
  %38 = trunc i64 %37 to i32
  %39 = load ptr, ptr %13, align 8
  %40 = load ptr, ptr %39, align 4
  %41 = tail call ptr %40(ptr noundef %13) #7
  %42 = load ptr, ptr %13, align 8
  %43 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = and i32 %30, 752
  tail call void %44(ptr noundef %13, i32 noundef %45, i32 noundef %36) #7
  %46 = load ptr, ptr %13, align 8
  %47 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %46, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = or i32 %45, 4
  tail call void %48(ptr noundef %13, i32 noundef %49, i32 noundef %38) #7
  %50 = icmp ult i32 %30, 65536
  br i1 %50, label %60, label %51

51:                                               ; preds = %29
  %52 = lshr i32 %30, 16
  %53 = load ptr, ptr %13, align 8
  %54 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %53, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  tail call void %55(ptr noundef %13, i32 noundef %52, i32 noundef %36) #7
  %56 = load ptr, ptr %13, align 8
  %57 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %56, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = or i32 %52, 4
  tail call void %58(ptr noundef %13, i32 noundef %59, i32 noundef %38) #7
  br label %60

60:                                               ; preds = %51, %29
  %61 = load ptr, ptr %13, align 8
  %62 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  tail call void %63(ptr noundef %13) #7
  br label %64

64:                                               ; preds = %60, %28, %2, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gk104_fifo_gpfifo_engine_fini(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 2
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %21 [
    i32 48, label %22
    i32 28, label %22
    i32 33, label %8
    i32 46, label %9
    i32 38, label %10
    i32 39, label %11
    i32 40, label %12
    i32 49, label %13
    i32 37, label %14
    i32 41, label %15
    i32 42, label %16
  ]

8:                                                ; preds = %3
  br label %22

9:                                                ; preds = %3
  br label %22

10:                                               ; preds = %3
  br label %22

11:                                               ; preds = %3
  br label %22

12:                                               ; preds = %3
  br label %22

13:                                               ; preds = %3
  br label %22

14:                                               ; preds = %3
  br label %22

15:                                               ; preds = %3
  br label %22

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 34603664, i32 528
  br label %22

21:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef null) #7
  br label %22

22:                                               ; preds = %21, %16, %15, %14, %13, %12, %11, %10, %9, %8, %3, %3
  %23 = phi i32 [ 0, %21 ], [ 34603632, %15 ], [ 656, %14 ], [ 640, %13 ], [ 624, %12 ], [ 608, %11 ], [ 592, %10 ], [ 544, %9 ], [ 528, %8 ], [ 0, %3 ], [ 0, %3 ], [ %20, %16 ]
  %24 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nvkm_fifo, ptr %25, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %26) #7
  %27 = tail call i32 @gk104_fifo_gpfifo_kick_locked(ptr noundef %0) #7
  %28 = load ptr, ptr %24, align 4
  %29 = getelementptr inbounds %struct.nvkm_fifo, ptr %28, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %29) #7
  %30 = icmp ne i32 %27, 0
  %31 = and i1 %30, %2
  %32 = icmp eq i32 %23, 0
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %60, label %34

34:                                               ; preds = %22
  %35 = load ptr, ptr %5, align 8
  %36 = load ptr, ptr %35, align 4
  %37 = tail call ptr %36(ptr noundef %5) #7
  %38 = load ptr, ptr %5, align 8
  %39 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = and i32 %23, 752
  tail call void %40(ptr noundef %5, i32 noundef %41, i32 noundef 0) #7
  %42 = load ptr, ptr %5, align 8
  %43 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = or i32 %41, 4
  tail call void %44(ptr noundef %5, i32 noundef %45, i32 noundef 0) #7
  %46 = icmp ult i32 %23, 65536
  br i1 %46, label %56, label %47

47:                                               ; preds = %34
  %48 = lshr i32 %23, 16
  %49 = load ptr, ptr %5, align 8
  %50 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %49, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  tail call void %51(ptr noundef %5, i32 noundef %48, i32 noundef 0) #7
  %52 = load ptr, ptr %5, align 8
  %53 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %52, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = or i32 %48, 4
  tail call void %54(ptr noundef %5, i32 noundef %55, i32 noundef 0) #7
  br label %56

56:                                               ; preds = %47, %34
  %57 = load ptr, ptr %5, align 8
  %58 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %57, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  tail call void %59(ptr noundef %5) #7
  br label %60

60:                                               ; preds = %56, %22
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk104_fifo_gpfifo_new(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.nvkm_oclass, ptr %1, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_object, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_client, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 8
  %12 = icmp ugt i32 %11, 4
  br i1 %12, label %13, label %20

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.nvkm_client, ptr %9, i32 0, i32 1
  %15 = getelementptr inbounds %struct.nvkm_object, ptr %7, i32 0, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.nvkm_object, ptr %7, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %3) #8
  br label %20

20:                                               ; preds = %13, %5
  %21 = icmp ugt i32 %3, 39
  br i1 %21, label %22, label %240

22:                                               ; preds = %20
  %23 = load i8, ptr %2, align 8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %240

25:                                               ; preds = %22
  %26 = icmp eq i32 %3, 40
  br i1 %26, label %27, label %240

27:                                               ; preds = %25
  %28 = load ptr, ptr %8, align 4
  %29 = getelementptr inbounds %struct.nvkm_client, ptr %28, i32 0, i32 3
  %30 = load i32, ptr %29, align 8
  %31 = icmp ugt i32 %30, 4
  br i1 %31, label %32, label %50

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.nvkm_client, ptr %28, i32 0, i32 1
  %34 = getelementptr inbounds %struct.nvkm_object, ptr %7, i32 0, i32 4
  %35 = load i32, ptr %34, align 8
  %36 = getelementptr inbounds %struct.nvkm_object, ptr %7, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.kepler_channel_gpfifo_a_v0, ptr %2, i32 0, i32 6
  %39 = load i64, ptr %38, align 8
  %40 = getelementptr inbounds %struct.kepler_channel_gpfifo_a_v0, ptr %2, i32 0, i32 4
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds %struct.kepler_channel_gpfifo_a_v0, ptr %2, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.kepler_channel_gpfifo_a_v0, ptr %2, i32 0, i32 5
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr inbounds %struct.kepler_channel_gpfifo_a_v0, ptr %2, i32 0, i32 1
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef 0, i64 noundef %39, i64 noundef %41, i32 noundef %43, i64 noundef %45, i32 noundef %48) #8
  br label %50

50:                                               ; preds = %32, %27
  %51 = getelementptr inbounds %struct.kepler_channel_gpfifo_a_v0, ptr %2, i32 0, i32 5
  %52 = getelementptr inbounds %struct.kepler_channel_gpfifo_a_v0, ptr %2, i32 0, i32 2
  %53 = getelementptr inbounds %struct.kepler_channel_gpfifo_a_v0, ptr %2, i32 0, i32 6
  %54 = load i64, ptr %53, align 8
  %55 = getelementptr inbounds %struct.kepler_channel_gpfifo_a_v0, ptr %2, i32 0, i32 4
  %56 = load i64, ptr %55, align 8
  %57 = getelementptr inbounds %struct.kepler_channel_gpfifo_a_v0, ptr %2, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.kepler_channel_gpfifo_a_v0, ptr %2, i32 0, i32 7
  %60 = getelementptr inbounds %struct.kepler_channel_gpfifo_a_v0, ptr %2, i32 0, i32 1
  %61 = load i8, ptr %60, align 1
  %62 = icmp eq i8 %61, 0
  %63 = load i64, ptr %51, align 8
  %64 = trunc i64 %63 to i32
  %65 = tail call i32 @llvm.cttz.i32(i32 %64, i1 true) #7, !range !14
  %66 = icmp eq i32 %64, 0
  %67 = select i1 %66, i32 -1, i32 %65
  %68 = icmp eq i64 %54, 0
  %69 = select i1 %68, i1 true, i1 %66
  br i1 %69, label %240, label %70

70:                                               ; preds = %50
  %71 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 7
  %72 = load i32, ptr %71, align 4
  %73 = icmp slt i32 %67, %72
  br i1 %73, label %74, label %240

74:                                               ; preds = %70
  %75 = zext i32 %67 to i64
  %76 = shl nuw i64 1, %75
  store i64 %76, ptr %51, align 8
  %77 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %78 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %77, i32 noundef 3520, i32 noundef 488) #9
  %79 = icmp eq ptr %78, null
  br i1 %79, label %240, label %80

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %78, i32 0, i32 3
  store ptr %81, ptr %4, align 4
  %82 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %78, i32 0, i32 1
  store ptr %0, ptr %82, align 8
  %83 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %78, i32 0, i32 2
  store i32 %67, ptr %83, align 4
  %84 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %78, i32 0, i32 4
  store volatile ptr %84, ptr %84, align 4
  %85 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %78, i32 0, i32 4, i32 1
  store ptr %84, ptr %85, align 8
  %86 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1
  %87 = getelementptr %struct.gk104_fifo, ptr %0, i32 0, i32 6, i32 %67, i32 6
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 8
  %90 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 8, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.nvkm_vma, ptr %91, i32 0, i32 2
  %93 = load i64, ptr %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = tail call i32 @nvkm_fifo_chan_ctor(ptr noundef nonnull @gk104_fifo_gpfifo_func, ptr noundef %86, i32 noundef 4096, i32 noundef 4096, i1 noundef zeroext true, i64 noundef %54, i64 noundef 0, i32 noundef %88, i32 noundef 1, i32 noundef %94, i32 noundef 512, ptr noundef %1, ptr noundef nonnull %78) #7
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %240

97:                                               ; preds = %80
  %98 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %78, i32 0, i32 5
  %99 = load i16, ptr %98, align 8
  store i16 %99, ptr %52, align 2
  %100 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %78, i32 0, i32 6
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %101, i32 0, i32 4
  %103 = load i64, ptr %102, align 8
  store i64 %103, ptr %59, align 8
  %104 = load ptr, ptr %0, align 4
  %105 = getelementptr inbounds %struct.gk104_fifo_func, ptr %104, i32 0, i32 6
  %106 = load i8, ptr %105, align 4, !range !13
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %97
  %109 = zext i16 %99 to i32
  br label %123

110:                                              ; preds = %97
  %111 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %112 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %111, i32 noundef 3264, i32 noundef 24) #9
  %113 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %78, i32 0, i32 3
  store ptr %112, ptr %113, align 8
  %114 = icmp eq ptr %112, null
  br i1 %114, label %240, label %115

115:                                              ; preds = %110
  %116 = load i16, ptr %98, align 8
  %117 = zext i16 %116 to i32
  store i32 %117, ptr %112, align 8
  %118 = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %112, i32 0, i32 1
  store volatile ptr %118, ptr %118, align 4
  %119 = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %112, i32 0, i32 1, i32 1
  store ptr %118, ptr %119, align 8
  %120 = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %112, i32 0, i32 2
  store volatile ptr %120, ptr %120, align 4
  %121 = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %112, i32 0, i32 2, i32 1
  store ptr %120, ptr %121, align 8
  %122 = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %112, i32 0, i32 3
  store i32 0, ptr %122, align 4
  br label %123

123:                                              ; preds = %115, %108
  %124 = phi i32 [ %109, %108 ], [ %117, %115 ]
  %125 = shl nuw nsw i32 %124, 9
  %126 = zext i32 %125 to i64
  %127 = lshr i32 %58, 3
  %128 = icmp ugt i32 %58, 15
  %129 = add nsw i32 %127, -1
  %130 = tail call i32 @llvm.ctlz.i32(i32 %129, i1 false) #7, !range !14
  %131 = sub nuw nsw i32 32, %130
  %132 = select i1 %128, i32 %131, i32 0
  %133 = load ptr, ptr %89, align 4
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.nvkm_memory_func, ptr %134, i32 0, i32 7
  %136 = load ptr, ptr %135, align 4
  %137 = tail call ptr %136(ptr noundef %133) #7
  br label %138

138:                                              ; preds = %138, %123
  %139 = phi i32 [ 0, %123 ], [ %147, %138 ]
  %140 = load ptr, ptr %89, align 4
  %141 = getelementptr inbounds %struct.nvkm_memory, ptr %140, i32 0, i32 1
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %142, i32 0, i32 1
  %144 = load ptr, ptr %143, align 4
  %145 = add nuw nsw i32 %139, %125
  %146 = zext i32 %145 to i64
  tail call void %144(ptr noundef %140, i64 noundef %146, i32 noundef 0) #7
  %147 = add nuw nsw i32 %139, 4
  %148 = icmp ult i32 %139, 508
  br i1 %148, label %138, label %149

149:                                              ; preds = %138
  %150 = sext i32 %132 to i64
  %151 = load ptr, ptr %89, align 4
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr inbounds %struct.nvkm_memory_func, ptr %152, i32 0, i32 8
  %154 = load ptr, ptr %153, align 4
  tail call void %154(ptr noundef %151) #7
  %155 = load ptr, ptr %89, align 4
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr inbounds %struct.nvkm_memory_func, ptr %156, i32 0, i32 4
  %158 = load ptr, ptr %157, align 4
  %159 = tail call i64 %158(ptr noundef %155) #7
  %160 = add i64 %159, %126
  %161 = load ptr, ptr %100, align 4
  %162 = load ptr, ptr %161, align 8
  %163 = load ptr, ptr %162, align 4
  %164 = tail call ptr %163(ptr noundef %161) #7
  %165 = load ptr, ptr %100, align 4
  %166 = load ptr, ptr %165, align 8
  %167 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %166, i32 0, i32 3
  %168 = load ptr, ptr %167, align 4
  %169 = trunc i64 %160 to i32
  tail call void %168(ptr noundef %165, i32 noundef 8, i32 noundef %169) #7
  %170 = load ptr, ptr %100, align 4
  %171 = load ptr, ptr %170, align 8
  %172 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %171, i32 0, i32 3
  %173 = load ptr, ptr %172, align 4
  %174 = lshr i64 %160, 32
  %175 = trunc i64 %174 to i32
  tail call void %173(ptr noundef %170, i32 noundef 12, i32 noundef %175) #7
  %176 = load ptr, ptr %100, align 4
  %177 = load ptr, ptr %176, align 8
  %178 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %177, i32 0, i32 3
  %179 = load ptr, ptr %178, align 4
  tail call void %179(ptr noundef %176, i32 noundef 16, i32 noundef 64206) #7
  %180 = load ptr, ptr %100, align 4
  %181 = load ptr, ptr %180, align 8
  %182 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %181, i32 0, i32 3
  %183 = load ptr, ptr %182, align 4
  tail call void %183(ptr noundef %180, i32 noundef 48, i32 noundef -1790) #7
  %184 = load ptr, ptr %100, align 4
  %185 = load ptr, ptr %184, align 8
  %186 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %185, i32 0, i32 3
  %187 = load ptr, ptr %186, align 4
  %188 = trunc i64 %56 to i32
  tail call void %187(ptr noundef %184, i32 noundef 72, i32 noundef %188) #7
  %189 = load ptr, ptr %100, align 4
  %190 = load ptr, ptr %189, align 8
  %191 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %190, i32 0, i32 3
  %192 = load ptr, ptr %191, align 4
  %193 = lshr i64 %56, 32
  %194 = shl nsw i64 %150, 16
  %195 = or i64 %194, %193
  %196 = trunc i64 %195 to i32
  tail call void %192(ptr noundef %189, i32 noundef 76, i32 noundef %196) #7
  %197 = load ptr, ptr %100, align 4
  %198 = load ptr, ptr %197, align 8
  %199 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %198, i32 0, i32 3
  %200 = load ptr, ptr %199, align 4
  tail call void %200(ptr noundef %197, i32 noundef 132, i32 noundef 541065216) #7
  %201 = load ptr, ptr %100, align 4
  %202 = load ptr, ptr %201, align 8
  %203 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %202, i32 0, i32 3
  %204 = load ptr, ptr %203, align 4
  tail call void %204(ptr noundef %201, i32 noundef 148, i32 noundef 805306369) #7
  %205 = load ptr, ptr %100, align 4
  %206 = load ptr, ptr %205, align 8
  %207 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %206, i32 0, i32 3
  %208 = load ptr, ptr %207, align 4
  tail call void %208(ptr noundef %205, i32 noundef 156, i32 noundef 256) #7
  %209 = load ptr, ptr %100, align 4
  %210 = load ptr, ptr %209, align 8
  %211 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %210, i32 0, i32 3
  %212 = load ptr, ptr %211, align 4
  tail call void %212(ptr noundef %209, i32 noundef 172, i32 noundef 31) #7
  %213 = load ptr, ptr %100, align 4
  %214 = load ptr, ptr %213, align 8
  %215 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %214, i32 0, i32 3
  %216 = load ptr, ptr %215, align 4
  %217 = select i1 %62, i32 0, i32 32
  tail call void %216(ptr noundef %213, i32 noundef 228, i32 noundef %217) #7
  %218 = load ptr, ptr %100, align 4
  %219 = load ptr, ptr %218, align 8
  %220 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %219, i32 0, i32 3
  %221 = load ptr, ptr %220, align 4
  %222 = load i16, ptr %98, align 8
  %223 = zext i16 %222 to i32
  tail call void %221(ptr noundef %218, i32 noundef 232, i32 noundef %223) #7
  %224 = load ptr, ptr %100, align 4
  %225 = load ptr, ptr %224, align 8
  %226 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %225, i32 0, i32 3
  %227 = load ptr, ptr %226, align 4
  tail call void %227(ptr noundef %224, i32 noundef 184, i32 noundef -134217728) #7
  %228 = load ptr, ptr %100, align 4
  %229 = load ptr, ptr %228, align 8
  %230 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %229, i32 0, i32 3
  %231 = load ptr, ptr %230, align 4
  tail call void %231(ptr noundef %228, i32 noundef 248, i32 noundef 268447872) #7
  %232 = load ptr, ptr %100, align 4
  %233 = load ptr, ptr %232, align 8
  %234 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %233, i32 0, i32 3
  %235 = load ptr, ptr %234, align 4
  tail call void %235(ptr noundef %232, i32 noundef 252, i32 noundef 268435472) #7
  %236 = load ptr, ptr %100, align 4
  %237 = load ptr, ptr %236, align 8
  %238 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %237, i32 0, i32 1
  %239 = load ptr, ptr %238, align 4
  tail call void %239(ptr noundef %236) #7
  br label %240

240:                                              ; preds = %149, %110, %80, %74, %70, %50, %25, %22, %20
  %241 = phi i32 [ 0, %149 ], [ -22, %70 ], [ -22, %50 ], [ -12, %74 ], [ %95, %80 ], [ -12, %110 ], [ -38, %20 ], [ -38, %22 ], [ -7, %25 ]
  ret i32 %241
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fifo_chan_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

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
!8 = !{i64 2151497747}
!9 = !{i64 3956654}
!10 = !{!"auto-init"}
!11 = !{i64 3957072}
!12 = !{i64 2151496525}
!13 = !{i8 0, i8 2}
!14 = !{i32 0, i32 33}
