; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifogv100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifogv100.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_fifo_chan_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.6 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.anon.6 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_fifo = type { ptr, %struct.nvkm_engine, [128 x i32], i32, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.nvkm_event, %struct.nvkm_event, %struct.nvkm_event }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.gk104_fifo_chan = type { %struct.nvkm_fifo_chan, ptr, i32, ptr, %struct.list_head, i8, ptr, [16 x %struct.gk104_fifo_engn] }
%struct.gk104_fifo_engn = type { ptr, ptr }
%struct.gk104_fifo = type { ptr, %struct.nvkm_fifo, %struct.anon.135, i32, [16 x %struct.anon.136], i32, [16 x %struct.anon.137], i32, %struct.anon.138 }
%struct.anon.135 = type { %struct.work_struct, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.anon.136 = type { ptr, i32, i32 }
%struct.anon.137 = type { [2 x ptr], i32, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.138 = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.126, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.126 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_vma = type { %struct.list_head, %struct.rb_node, i64, [7 x i8], i8, ptr, ptr }
%struct.nvkm_gpuobj = type { %union.anon, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.gk104_fifo_func = type { %struct.anon.133, ptr, %struct.anon.134, ptr, %struct.gk104_fifo_user_user, %struct.gk104_fifo_chan_user, i8 }
%struct.anon.133 = type { ptr }
%struct.anon.134 = type { ptr, ptr, ptr, ptr, ptr }
%struct.gk104_fifo_user_user = type { %struct.nvkm_sclass, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.gk104_fifo_chan_user = type { %struct.nvkm_sclass, ptr }
%struct.nvkm_fifo_cgrp = type { i32, %struct.list_head, %struct.list_head, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.volta_channel_gpfifo_a_v0 = type { i8, i8, i16, i32, i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [63 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create channel gpfifo size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [125 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create channel gpfifo vers %d vmm %llx ioffset %016llx ilength %08x runlist %016llx priv %d\0A\00", align 1
@gv100_fifo_gpfifo = internal constant %struct.nvkm_fifo_chan_func { ptr @gk104_fifo_gpfifo_dtor, ptr @gk104_fifo_gpfifo_init, ptr @gk104_fifo_gpfifo_fini, ptr @gf100_fifo_chan_ntfy, ptr @gk104_fifo_gpfifo_engine_ctor, ptr @gk104_fifo_gpfifo_engine_dtor, ptr @gv100_fifo_gpfifo_engine_init, ptr @gv100_fifo_gpfifo_engine_fini, ptr null, ptr null, ptr @gv100_fifo_gpfifo_submit_token }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gv100_fifo_gpfifo_engine_fini(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 28
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = tail call i32 @gk104_fifo_gpfifo_kick(ptr noundef %0) #6
  br label %28

11:                                               ; preds = %3
  %12 = tail call fastcc i32 @gv100_fifo_gpfifo_engine_valid(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext false)
  %13 = icmp ne i32 %12, 0
  %14 = and i1 %13, %2
  br i1 %14, label %28, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 8
  %17 = load ptr, ptr %16, align 4
  %18 = tail call ptr %17(ptr noundef %5) #6
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  tail call void %21(ptr noundef %5, i32 noundef 528, i32 noundef 0) #6
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  tail call void %24(ptr noundef %5, i32 noundef 532, i32 noundef 0) #6
  %25 = load ptr, ptr %5, align 8
  %26 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  tail call void %27(ptr noundef %5) #6
  br label %28

28:                                               ; preds = %15, %11, %9
  %29 = phi i32 [ %10, %9 ], [ %12, %15 ], [ %12, %11 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_fifo_gpfifo_kick(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gv100_fifo_gpfifo_engine_valid(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_fifo, ptr %5, i32 0, i32 1, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.gk104_fifo, ptr %9, i32 0, i32 1, i32 6
  tail call void @mutex_lock(ptr noundef %10) #6
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 9776
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %15 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = shl nuw i32 1, %16
  %18 = or i32 %17, %14
  %19 = load ptr, ptr %11, align 4
  %20 = getelementptr i8, ptr %19, i32 9776
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #6, !srcloc !11
  %21 = tail call i32 @gk104_fifo_gpfifo_kick_locked(ptr noundef %0) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %3
  %24 = select i1 %1, i32 131072, i32 65536
  %25 = select i1 %2, i32 %24, i32 0
  %26 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %27, align 8
  %29 = load ptr, ptr %28, align 4
  %30 = tail call ptr %29(ptr noundef %27) #6
  %31 = load ptr, ptr %26, align 4
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 %34(ptr noundef %31, i32 noundef 172) #6
  %36 = load ptr, ptr %26, align 4
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = xor i32 %24, -1
  %41 = and i32 %35, %40
  %42 = or i32 %41, %25
  tail call void %39(ptr noundef %36, i32 noundef 172, i32 noundef %42) #6
  %43 = load ptr, ptr %26, align 4
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  tail call void %46(ptr noundef %43) #6
  br label %47

47:                                               ; preds = %23, %3
  %48 = load ptr, ptr %11, align 4
  %49 = getelementptr i8, ptr %48, i32 9776
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %51 = load i32, ptr %15, align 4
  %52 = shl nuw i32 1, %51
  %53 = xor i32 %52, -1
  %54 = and i32 %50, %53
  %55 = load ptr, ptr %11, align 4
  %56 = getelementptr i8, ptr %55, i32 9776
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #6, !srcloc !11
  %57 = load ptr, ptr %8, align 8
  %58 = getelementptr inbounds %struct.gk104_fifo, ptr %57, i32 0, i32 1, i32 6
  tail call void @mutex_unlock(ptr noundef %58) #6
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gv100_fifo_gpfifo_engine_init(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @gk104_fifo_gpfifo_engine(ptr noundef %0, ptr noundef %1) #6
  %4 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 28
  br i1 %6, label %34, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 8
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr %11(ptr noundef %9) #6
  %13 = load ptr, ptr %9, align 8
  %14 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.gk104_fifo_engn, ptr %3, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nvkm_vma, ptr %17, i32 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = or i32 %20, 4
  tail call void %15(ptr noundef %9, i32 noundef 528, i32 noundef %21) #6
  %22 = load ptr, ptr %9, align 8
  %23 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %16, align 4
  %26 = getelementptr inbounds %struct.nvkm_vma, ptr %25, i32 0, i32 2
  %27 = load i64, ptr %26, align 8
  %28 = lshr i64 %27, 32
  %29 = trunc i64 %28 to i32
  tail call void %24(ptr noundef %9, i32 noundef 532, i32 noundef %29) #6
  %30 = load ptr, ptr %9, align 8
  %31 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  tail call void %32(ptr noundef %9) #6
  %33 = tail call fastcc i32 @gv100_fifo_gpfifo_engine_valid(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %34

34:                                               ; preds = %7, %2
  %35 = phi i32 [ %33, %7 ], [ 0, %2 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gk104_fifo_gpfifo_engine(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gv100_fifo_gpfifo_new_(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr nocapture noundef writeonly %7, i1 noundef zeroext %8, ptr nocapture noundef writeonly %9, ptr noundef %10, ptr nocapture noundef writeonly %11) local_unnamed_addr #0 {
  %13 = getelementptr inbounds %struct.gk104_fifo, ptr %1, i32 0, i32 1
  %14 = getelementptr inbounds %struct.gk104_fifo, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load i64, ptr %2, align 8
  %17 = trunc i64 %16 to i32
  %18 = tail call i32 @llvm.cttz.i32(i32 %17, i1 true), !range !12
  %19 = icmp eq i32 %17, 0
  %20 = select i1 %19, i32 -1, i32 %18
  %21 = icmp eq i64 %4, 0
  %22 = select i1 %21, i1 true, i1 %19
  br i1 %22, label %227, label %23

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.gk104_fifo, ptr %1, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = icmp slt i32 %20, %25
  br i1 %26, label %27, label %227

27:                                               ; preds = %23
  %28 = zext i32 %20 to i64
  %29 = shl nuw i64 1, %28
  store i64 %29, ptr %2, align 8
  %30 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %31 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 488) #7
  %32 = icmp eq ptr %31, null
  br i1 %32, label %227, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %31, i32 0, i32 3
  store ptr %34, ptr %11, align 4
  %35 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %31, i32 0, i32 1
  store ptr %1, ptr %35, align 8
  %36 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %31, i32 0, i32 2
  store i32 %20, ptr %36, align 4
  %37 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %31, i32 0, i32 4
  store volatile ptr %37, ptr %37, align 4
  %38 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %31, i32 0, i32 4, i32 1
  store ptr %37, ptr %38, align 8
  %39 = getelementptr %struct.gk104_fifo, ptr %1, i32 0, i32 6, i32 %20, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.gk104_fifo, ptr %1, i32 0, i32 8
  %42 = getelementptr inbounds %struct.gk104_fifo, ptr %1, i32 0, i32 8, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.nvkm_vma, ptr %43, i32 0, i32 2
  %45 = load i64, ptr %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = tail call i32 @nvkm_fifo_chan_ctor(ptr noundef %0, ptr noundef %13, i32 noundef 4096, i32 noundef 4096, i1 noundef zeroext true, i64 noundef %4, i64 noundef 0, i32 noundef %40, i32 noundef 1, i32 noundef %46, i32 noundef 512, ptr noundef %10, ptr noundef nonnull %31) #6
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %227

49:                                               ; preds = %33
  %50 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %31, i32 0, i32 5
  %51 = load i16, ptr %50, align 8
  store i16 %51, ptr %3, align 2
  %52 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %31, i32 0, i32 6
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %53, i32 0, i32 4
  %55 = load i64, ptr %54, align 8
  store i64 %55, ptr %7, align 8
  %56 = load ptr, ptr %31, align 8
  %57 = getelementptr inbounds %struct.nvkm_fifo_chan_func, ptr %56, i32 0, i32 10
  %58 = load ptr, ptr %57, align 4
  %59 = tail call i32 %58(ptr noundef nonnull %31) #6
  store i32 %59, ptr %9, align 4
  %60 = load ptr, ptr %1, align 4
  %61 = getelementptr inbounds %struct.gk104_fifo_func, ptr %60, i32 0, i32 6
  %62 = load i8, ptr %61, align 4, !range !13
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %49
  %65 = load i16, ptr %50, align 8
  %66 = zext i16 %65 to i32
  br label %80

67:                                               ; preds = %49
  %68 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %69 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %68, i32 noundef 3264, i32 noundef 24) #7
  %70 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %31, i32 0, i32 3
  store ptr %69, ptr %70, align 8
  %71 = icmp eq ptr %69, null
  br i1 %71, label %227, label %72

72:                                               ; preds = %67
  %73 = load i16, ptr %50, align 8
  %74 = zext i16 %73 to i32
  store i32 %74, ptr %69, align 8
  %75 = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %69, i32 0, i32 1
  store volatile ptr %75, ptr %75, align 4
  %76 = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %69, i32 0, i32 1, i32 1
  store ptr %75, ptr %76, align 8
  %77 = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %69, i32 0, i32 2
  store volatile ptr %77, ptr %77, align 4
  %78 = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %69, i32 0, i32 2, i32 1
  store ptr %77, ptr %78, align 8
  %79 = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %69, i32 0, i32 3
  store i32 0, ptr %79, align 4
  br label %80

80:                                               ; preds = %72, %64
  %81 = phi i32 [ %66, %64 ], [ %74, %72 ]
  %82 = shl nuw nsw i32 %81, 9
  %83 = zext i32 %82 to i64
  %84 = lshr i64 %6, 3
  %85 = trunc i64 %84 to i32
  %86 = icmp ugt i32 %85, 1
  %87 = add i32 %85, -1
  %88 = tail call i32 @llvm.ctlz.i32(i32 %87, i1 false) #6, !range !12
  %89 = sub nuw nsw i32 32, %88
  %90 = select i1 %86, i32 %89, i32 0
  %91 = load ptr, ptr %41, align 4
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.nvkm_memory_func, ptr %92, i32 0, i32 7
  %94 = load ptr, ptr %93, align 4
  %95 = tail call ptr %94(ptr noundef %91) #6
  br label %96

96:                                               ; preds = %96, %80
  %97 = phi i32 [ 0, %80 ], [ %105, %96 ]
  %98 = load ptr, ptr %41, align 4
  %99 = getelementptr inbounds %struct.nvkm_memory, ptr %98, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %100, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = add nuw nsw i32 %97, %82
  %104 = zext i32 %103 to i64
  tail call void %102(ptr noundef %98, i64 noundef %104, i32 noundef 0) #6
  %105 = add nuw nsw i32 %97, 4
  %106 = icmp ult i32 %97, 508
  br i1 %106, label %96, label %107

107:                                              ; preds = %96
  %108 = sext i32 %90 to i64
  %109 = load ptr, ptr %41, align 4
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.nvkm_memory_func, ptr %110, i32 0, i32 8
  %112 = load ptr, ptr %111, align 4
  tail call void %112(ptr noundef %109) #6
  %113 = load ptr, ptr %41, align 4
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.nvkm_memory_func, ptr %114, i32 0, i32 4
  %116 = load ptr, ptr %115, align 4
  %117 = tail call i64 %116(ptr noundef %113) #6
  %118 = add i64 %117, %83
  %119 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 11
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr i8, ptr %120, i32 1065000
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %123 = tail call i32 @__sw_hweight32(i32 noundef %122) #6
  %124 = mul i32 %123, 1755
  %125 = add i32 %124, 4365
  %126 = and i32 %125, -4096
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %31, i32 0, i32 6
  %129 = tail call i32 @nvkm_memory_new(ptr noundef %15, i32 noundef 0, i64 noundef %127, i32 noundef 4096, i1 noundef zeroext true, ptr noundef %128) #6
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %227

131:                                              ; preds = %107
  %132 = load ptr, ptr %128, align 8
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.nvkm_memory_func, ptr %133, i32 0, i32 3
  %135 = load ptr, ptr %134, align 4
  %136 = tail call i64 %135(ptr noundef %132) #6
  %137 = icmp eq i64 %136, -1
  br i1 %137, label %227, label %138

138:                                              ; preds = %131
  %139 = load ptr, ptr %52, align 4
  %140 = load ptr, ptr %139, align 8
  %141 = load ptr, ptr %140, align 4
  %142 = tail call ptr %141(ptr noundef %139) #6
  %143 = load ptr, ptr %52, align 4
  %144 = load ptr, ptr %143, align 8
  %145 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %144, i32 0, i32 3
  %146 = load ptr, ptr %145, align 4
  %147 = trunc i64 %118 to i32
  tail call void %146(ptr noundef %143, i32 noundef 8, i32 noundef %147) #6
  %148 = load ptr, ptr %52, align 4
  %149 = load ptr, ptr %148, align 8
  %150 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %149, i32 0, i32 3
  %151 = load ptr, ptr %150, align 4
  %152 = lshr i64 %118, 32
  %153 = trunc i64 %152 to i32
  tail call void %151(ptr noundef %148, i32 noundef 12, i32 noundef %153) #6
  %154 = load ptr, ptr %52, align 4
  %155 = load ptr, ptr %154, align 8
  %156 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %155, i32 0, i32 3
  %157 = load ptr, ptr %156, align 4
  tail call void %157(ptr noundef %154, i32 noundef 16, i32 noundef 64206) #6
  %158 = load ptr, ptr %52, align 4
  %159 = load ptr, ptr %158, align 8
  %160 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %159, i32 0, i32 3
  %161 = load ptr, ptr %160, align 4
  tail call void %161(ptr noundef %158, i32 noundef 48, i32 noundef 2147481858) #6
  %162 = load ptr, ptr %52, align 4
  %163 = load ptr, ptr %162, align 8
  %164 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %163, i32 0, i32 3
  %165 = load ptr, ptr %164, align 4
  %166 = trunc i64 %5 to i32
  tail call void %165(ptr noundef %162, i32 noundef 72, i32 noundef %166) #6
  %167 = load ptr, ptr %52, align 4
  %168 = load ptr, ptr %167, align 8
  %169 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %168, i32 0, i32 3
  %170 = load ptr, ptr %169, align 4
  %171 = lshr i64 %5, 32
  %172 = shl nsw i64 %108, 16
  %173 = or i64 %172, %171
  %174 = trunc i64 %173 to i32
  tail call void %170(ptr noundef %167, i32 noundef 76, i32 noundef %174) #6
  %175 = load ptr, ptr %52, align 4
  %176 = load ptr, ptr %175, align 8
  %177 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %176, i32 0, i32 3
  %178 = load ptr, ptr %177, align 4
  tail call void %178(ptr noundef %175, i32 noundef 132, i32 noundef 541065216) #6
  %179 = load ptr, ptr %52, align 4
  %180 = load ptr, ptr %179, align 8
  %181 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %180, i32 0, i32 3
  %182 = load ptr, ptr %181, align 4
  tail call void %182(ptr noundef %179, i32 noundef 148, i32 noundef 805306369) #6
  %183 = load ptr, ptr %52, align 4
  %184 = load ptr, ptr %183, align 8
  %185 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %184, i32 0, i32 3
  %186 = load ptr, ptr %185, align 4
  %187 = select i1 %8, i32 32, i32 0
  tail call void %186(ptr noundef %183, i32 noundef 228, i32 noundef %187) #6
  %188 = load ptr, ptr %52, align 4
  %189 = load ptr, ptr %188, align 8
  %190 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %189, i32 0, i32 3
  %191 = load ptr, ptr %190, align 4
  %192 = load i16, ptr %50, align 8
  %193 = zext i16 %192 to i32
  tail call void %191(ptr noundef %188, i32 noundef 232, i32 noundef %193) #6
  %194 = load ptr, ptr %52, align 4
  %195 = load ptr, ptr %194, align 8
  %196 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %195, i32 0, i32 3
  %197 = load ptr, ptr %196, align 4
  tail call void %197(ptr noundef %194, i32 noundef 244, i32 noundef 4096) #6
  %198 = load ptr, ptr %52, align 4
  %199 = load ptr, ptr %198, align 8
  %200 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %199, i32 0, i32 3
  %201 = load ptr, ptr %200, align 4
  tail call void %201(ptr noundef %198, i32 noundef 248, i32 noundef 268447872) #6
  %202 = load ptr, ptr %52, align 4
  %203 = load ptr, ptr %202, align 8
  %204 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %203, i32 0, i32 2
  %205 = load ptr, ptr %204, align 4
  %206 = tail call i32 %205(ptr noundef %202, i32 noundef 536) #6
  %207 = load ptr, ptr %52, align 4
  %208 = load ptr, ptr %207, align 8
  %209 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %208, i32 0, i32 3
  %210 = load ptr, ptr %209, align 4
  tail call void %210(ptr noundef %207, i32 noundef 536, i32 noundef %206) #6
  %211 = load ptr, ptr %52, align 4
  %212 = load ptr, ptr %211, align 8
  %213 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %212, i32 0, i32 3
  %214 = load ptr, ptr %213, align 4
  %215 = trunc i64 %136 to i32
  tail call void %214(ptr noundef %211, i32 noundef 544, i32 noundef %215) #6
  %216 = load ptr, ptr %52, align 4
  %217 = load ptr, ptr %216, align 8
  %218 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %217, i32 0, i32 3
  %219 = load ptr, ptr %218, align 4
  %220 = lshr i64 %136, 32
  %221 = trunc i64 %220 to i32
  tail call void %219(ptr noundef %216, i32 noundef 548, i32 noundef %221) #6
  %222 = load ptr, ptr %52, align 4
  %223 = load ptr, ptr %222, align 8
  %224 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %223, i32 0, i32 1
  %225 = load ptr, ptr %224, align 4
  tail call void %225(ptr noundef %222) #6
  %226 = tail call fastcc i32 @gv100_fifo_gpfifo_engine_valid(ptr noundef nonnull %31, i1 noundef zeroext true, i1 noundef zeroext true)
  br label %227

227:                                              ; preds = %138, %131, %107, %67, %33, %27, %23, %12
  %228 = phi i32 [ %226, %138 ], [ -22, %23 ], [ -22, %12 ], [ -12, %27 ], [ %47, %33 ], [ -12, %67 ], [ %129, %107 ], [ -14, %131 ]
  ret i32 %228
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fifo_chan_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gv100_fifo_gpfifo_new(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
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
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %3) #8
  br label %20

20:                                               ; preds = %13, %5
  %21 = icmp ugt i32 %3, 47
  br i1 %21, label %22, label %66

22:                                               ; preds = %20
  %23 = load i8, ptr %2, align 8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %66

25:                                               ; preds = %22
  %26 = icmp eq i32 %3, 48
  br i1 %26, label %27, label %66

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
  %38 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %2, i32 0, i32 6
  %39 = load i64, ptr %38, align 8
  %40 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %2, i32 0, i32 4
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %2, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %2, i32 0, i32 5
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %2, i32 0, i32 1
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef 0, i64 noundef %39, i64 noundef %41, i32 noundef %43, i64 noundef %45, i32 noundef %48) #8
  br label %50

50:                                               ; preds = %32, %27
  %51 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %2, i32 0, i32 5
  %52 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %2, i32 0, i32 2
  %53 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %2, i32 0, i32 6
  %54 = load i64, ptr %53, align 8
  %55 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %2, i32 0, i32 4
  %56 = load i64, ptr %55, align 8
  %57 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %2, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %2, i32 0, i32 7
  %61 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %2, i32 0, i32 1
  %62 = load i8, ptr %61, align 1
  %63 = icmp ne i8 %62, 0
  %64 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %2, i32 0, i32 8
  %65 = tail call i32 @gv100_fifo_gpfifo_new_(ptr noundef nonnull @gv100_fifo_gpfifo, ptr noundef %0, ptr noundef %51, ptr noundef %52, i64 noundef %54, i64 noundef %56, i64 noundef %59, ptr noundef %60, i1 noundef zeroext %63, ptr noundef %64, ptr noundef %1, ptr noundef %4)
  br label %66

66:                                               ; preds = %50, %25, %22, %20
  %67 = phi i32 [ %65, %50 ], [ -38, %20 ], [ -38, %22 ], [ -7, %25 ]
  ret i32 %67
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_fifo_gpfifo_kick_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gk104_fifo_gpfifo_dtor(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_gpfifo_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_gpfifo_fini(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_fifo_chan_ntfy(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_fifo_gpfifo_engine_ctor(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_gpfifo_engine_dtor(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @gv100_fifo_gpfifo_submit_token(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 5
  %3 = load i16, ptr %2, align 8
  %4 = zext i16 %3 to i32
  ret i32 %4
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }
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
!8 = !{i64 3954173}
!9 = !{i64 2151493626}
!10 = !{i64 2151494848}
!11 = !{i64 3953755}
!12 = !{i32 0, i32 33}
!13 = !{i8 0, i8 2}
