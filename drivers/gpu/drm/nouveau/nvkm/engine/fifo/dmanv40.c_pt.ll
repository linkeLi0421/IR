; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/fifo/dmanv40.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/dmanv40.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_fifo_chan_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_fifo_chan_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
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
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.121 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.nv03_channel_dma_v0 = type { i8, i8, [2 x i8], i32, i64 }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nv04_fifo_chan = type { %struct.nvkm_fifo_chan, ptr, i32, [16 x ptr] }
%struct.nvkm_instmem = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.list_head, %struct.list_head, i32, %struct.mutex, ptr, ptr, ptr, ptr }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_gpuobj = type { %union.anon.1, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.1 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_fifo_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x ptr] }

@nv40_fifo_dma_oclass = dso_local local_unnamed_addr constant %struct.nvkm_fifo_chan_oclass { ptr @nv40_fifo_dma_new, %struct.nvkm_sclass { i32 0, i32 0, i32 16494, ptr null, ptr null } }, align 4
@.str = private unnamed_addr constant [60 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create channel dma size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [85 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create channel dma vers %d pushbuf %llx offset %08x\0A\00", align 1
@nv40_fifo_dma_func = internal constant %struct.nvkm_fifo_chan_func { ptr @nv04_fifo_dma_dtor, ptr @nv04_fifo_dma_init, ptr @nv04_fifo_dma_fini, ptr null, ptr @nv40_fifo_dma_engine_ctor, ptr @nv40_fifo_dma_engine_dtor, ptr @nv40_fifo_dma_engine_init, ptr @nv40_fifo_dma_engine_fini, ptr @nv40_fifo_dma_object_ctor, ptr @nv04_fifo_dma_object_dtor, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/fifo/dmanv40.c\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv40_fifo_dma_new(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = getelementptr inbounds %struct.nvkm_oclass, ptr %1, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 32
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_object, ptr %7, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_client, ptr %13, i32 0, i32 3
  %15 = load i32, ptr %14, align 8
  %16 = icmp ugt i32 %15, 4
  br i1 %16, label %17, label %24

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.nvkm_client, ptr %13, i32 0, i32 1
  %19 = getelementptr inbounds %struct.nvkm_object, ptr %7, i32 0, i32 4
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.nvkm_object, ptr %7, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %3) #4
  br label %24

24:                                               ; preds = %17, %5
  %25 = icmp ugt i32 %3, 15
  br i1 %25, label %26, label %127

26:                                               ; preds = %24
  %27 = load i8, ptr %2, align 8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %127

29:                                               ; preds = %26
  %30 = icmp eq i32 %3, 16
  br i1 %30, label %31, label %127

31:                                               ; preds = %29
  %32 = load ptr, ptr %12, align 4
  %33 = getelementptr inbounds %struct.nvkm_client, ptr %32, i32 0, i32 3
  %34 = load i32, ptr %33, align 8
  %35 = icmp ugt i32 %34, 4
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.nvkm_client, ptr %32, i32 0, i32 1
  %38 = getelementptr inbounds %struct.nvkm_object, ptr %7, i32 0, i32 4
  %39 = load i32, ptr %38, align 8
  %40 = getelementptr inbounds %struct.nvkm_object, ptr %7, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nv03_channel_dma_v0, ptr %2, i32 0, i32 4
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds %struct.nv03_channel_dma_v0, ptr %2, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef 0, i64 noundef %43, i32 noundef %45) #4
  br label %47

47:                                               ; preds = %36, %31
  %48 = getelementptr inbounds %struct.nv03_channel_dma_v0, ptr %2, i32 0, i32 4
  %49 = load i64, ptr %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %127, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %53 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3520, i32 noundef 400) #5
  %54 = icmp eq ptr %53, null
  br i1 %54, label %127, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %53, i32 0, i32 3
  store ptr %56, ptr %4, align 4
  %57 = load i64, ptr %48, align 8
  %58 = tail call i32 @nvkm_fifo_chan_ctor(ptr noundef nonnull @nv40_fifo_dma_func, ptr noundef %0, i32 noundef 4096, i32 noundef 4096, i1 noundef zeroext false, i64 noundef 0, i64 noundef %57, i32 noundef 15, i32 noundef 0, i32 noundef 12582912, i32 noundef 4096, ptr noundef %1, ptr noundef nonnull %53) #6
  %59 = getelementptr inbounds %struct.nv04_fifo_chan, ptr %53, i32 0, i32 1
  store ptr %0, ptr %59, align 8
  %60 = icmp eq i32 %58, 0
  br i1 %60, label %61, label %127

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %53, i32 0, i32 5
  %63 = load i16, ptr %62, align 8
  %64 = trunc i16 %63 to i8
  %65 = getelementptr inbounds %struct.nv03_channel_dma_v0, ptr %2, i32 0, i32 1
  store i8 %64, ptr %65, align 1
  %66 = zext i16 %63 to i32
  %67 = shl nuw nsw i32 %66, 7
  %68 = getelementptr inbounds %struct.nv04_fifo_chan, ptr %53, i32 0, i32 2
  store i32 %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.nvkm_instmem, ptr %11, i32 0, i32 10
  %70 = load ptr, ptr %69, align 4
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.nvkm_memory_func, ptr %71, i32 0, i32 7
  %73 = load ptr, ptr %72, align 4
  %74 = tail call ptr %73(ptr noundef %70) #6
  %75 = load ptr, ptr %69, align 4
  %76 = getelementptr inbounds %struct.nvkm_memory, ptr %75, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %77, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = load i32, ptr %68, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.nv03_channel_dma_v0, ptr %2, i32 0, i32 3
  %83 = load i32, ptr %82, align 4
  tail call void %79(ptr noundef %75, i64 noundef %81, i32 noundef %83) #6
  %84 = load ptr, ptr %69, align 4
  %85 = getelementptr inbounds %struct.nvkm_memory, ptr %84, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %86, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = load i32, ptr %68, align 4
  %90 = add i32 %89, 4
  %91 = zext i32 %90 to i64
  %92 = load i32, ptr %82, align 4
  tail call void %88(ptr noundef %84, i64 noundef %91, i32 noundef %92) #6
  %93 = load ptr, ptr %69, align 4
  %94 = getelementptr inbounds %struct.nvkm_memory, ptr %93, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %95, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = load i32, ptr %68, align 4
  %99 = add i32 %98, 12
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %53, i32 0, i32 7
  %102 = load ptr, ptr %101, align 8
  %103 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %102, i32 0, i32 4
  %104 = load i64, ptr %103, align 8
  %105 = lshr i64 %104, 4
  %106 = trunc i64 %105 to i32
  tail call void %97(ptr noundef %93, i64 noundef %100, i32 noundef %106) #6
  %107 = load ptr, ptr %69, align 4
  %108 = getelementptr inbounds %struct.nvkm_memory, ptr %107, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %109, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = load i32, ptr %68, align 4
  %113 = add i32 %112, 24
  %114 = zext i32 %113 to i64
  tail call void %111(ptr noundef %107, i64 noundef %114, i32 noundef 805855352) #6
  %115 = load ptr, ptr %69, align 4
  %116 = getelementptr inbounds %struct.nvkm_memory, ptr %115, i32 0, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %117, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = load i32, ptr %68, align 4
  %121 = add i32 %120, 60
  %122 = zext i32 %121 to i64
  tail call void %119(ptr noundef %115, i64 noundef %122, i32 noundef 131071) #6
  %123 = load ptr, ptr %69, align 4
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.nvkm_memory_func, ptr %124, i32 0, i32 8
  %126 = load ptr, ptr %125, align 4
  tail call void %126(ptr noundef %123) #6
  br label %127

127:                                              ; preds = %61, %55, %51, %47, %29, %26, %24
  %128 = phi i32 [ 0, %61 ], [ -22, %47 ], [ -12, %51 ], [ %58, %55 ], [ -38, %24 ], [ -38, %26 ], [ -7, %29 ]
  ret i32 %128
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fifo_chan_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv04_fifo_dma_dtor(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_fifo_dma_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_fifo_dma_fini(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv40_fifo_dma_engine_ctor(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 2
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %12 [
    i32 31, label %24
    i32 48, label %24
    i32 33, label %13
    i32 36, label %6
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 16
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %10, 68
  br i1 %11, label %24, label %13

12:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 53, i32 noundef 9, ptr noundef null) #6
  br label %24

13:                                               ; preds = %6, %3
  %14 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %16, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %15, ptr noundef %1) #6
  %20 = icmp sgt i32 %19, -1
  %21 = getelementptr %struct.nv04_fifo_chan, ptr %0, i32 0, i32 3, i32 %19
  %22 = select i1 %20, ptr %21, ptr null
  %23 = tail call i32 @nvkm_object_bind(ptr noundef %2, ptr noundef null, i32 noundef 0, ptr noundef %22) #6
  br label %24

24:                                               ; preds = %13, %12, %6, %3, %3
  %25 = phi i32 [ %23, %13 ], [ 0, %12 ], [ 0, %3 ], [ 0, %3 ], [ 0, %6 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv40_fifo_dma_engine_dtor(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %4, ptr noundef %1) #6
  %9 = icmp sgt i32 %8, -1
  %10 = getelementptr %struct.nv04_fifo_chan, ptr %0, i32 0, i32 3, i32 %8
  %11 = select i1 %9, ptr %10, ptr null
  tail call void @nvkm_gpuobj_del(ptr noundef %11) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv40_fifo_dma_engine_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nv04_fifo_chan, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvkm_fifo, ptr %4, i32 0, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 32
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 2
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %17 [
    i32 31, label %84
    i32 48, label %84
    i32 33, label %18
    i32 36, label %11
  ]

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 16
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %15, 68
  br i1 %16, label %84, label %18

17:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 53, i32 noundef 9, ptr noundef null) #6
  br label %84

18:                                               ; preds = %11, %2
  %19 = phi i32 [ 13024, %2 ], [ 13068, %11 ]
  %20 = phi i32 [ 56, %2 ], [ 84, %11 ]
  %21 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %23, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 %25(ptr noundef %22, ptr noundef %1) #6
  %27 = icmp sgt i32 %26, -1
  %28 = getelementptr %struct.nv04_fifo_chan, ptr %0, i32 0, i32 3, i32 %26
  %29 = select i1 %27, ptr %28, ptr null
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %30, i32 0, i32 4
  %32 = load i64, ptr %31, align 8
  %33 = lshr i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = getelementptr inbounds %struct.nvkm_fifo, ptr %4, i32 0, i32 5
  %36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %35) #6
  %37 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 9472
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %41 = and i32 %40, -2
  %42 = load ptr, ptr %37, align 4
  %43 = getelementptr i8, ptr %42, i32 9472
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #6, !srcloc !11
  %44 = load ptr, ptr %37, align 4
  %45 = getelementptr i8, ptr %44, i32 12804
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %47 = getelementptr inbounds %struct.nvkm_fifo, ptr %4, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, -1
  %50 = and i32 %49, %46
  %51 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 5
  %52 = load i16, ptr %51, align 8
  %53 = zext i16 %52 to i32
  %54 = icmp eq i32 %50, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %18
  %56 = load ptr, ptr %37, align 4
  %57 = getelementptr i8, ptr %56, i32 %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %34) #6, !srcloc !11
  br label %58

58:                                               ; preds = %55, %18
  %59 = getelementptr inbounds %struct.nvkm_instmem, ptr %8, i32 0, i32 10
  %60 = load ptr, ptr %59, align 4
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.nvkm_memory_func, ptr %61, i32 0, i32 7
  %63 = load ptr, ptr %62, align 4
  %64 = tail call ptr %63(ptr noundef %60) #6
  %65 = load ptr, ptr %59, align 4
  %66 = getelementptr inbounds %struct.nvkm_memory, ptr %65, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %67, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.nv04_fifo_chan, ptr %0, i32 0, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, %20
  %73 = zext i32 %72 to i64
  tail call void %69(ptr noundef %65, i64 noundef %73, i32 noundef %34) #6
  %74 = load ptr, ptr %59, align 4
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.nvkm_memory_func, ptr %75, i32 0, i32 8
  %77 = load ptr, ptr %76, align 4
  tail call void %77(ptr noundef %74) #6
  %78 = load ptr, ptr %37, align 4
  %79 = getelementptr i8, ptr %78, i32 9472
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %81 = or i32 %80, 1
  %82 = load ptr, ptr %37, align 4
  %83 = getelementptr i8, ptr %82, i32 9472
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %81) #6, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %35, i32 noundef %36) #6
  br label %84

84:                                               ; preds = %58, %17, %11, %2, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv40_fifo_dma_engine_fini(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.nv04_fifo_chan, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvkm_fifo, ptr %5, i32 0, i32 1, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 32
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 2
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %18 [
    i32 31, label %71
    i32 48, label %71
    i32 33, label %19
    i32 36, label %12
  ]

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nvkm_device, ptr %14, i32 0, i32 16
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %16, 68
  br i1 %17, label %71, label %19

18:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 53, i32 noundef 9, ptr noundef null) #6
  br label %71

19:                                               ; preds = %12, %3
  %20 = phi i32 [ 13024, %3 ], [ 13068, %12 ]
  %21 = phi i32 [ 56, %3 ], [ 84, %12 ]
  %22 = getelementptr inbounds %struct.nvkm_fifo, ptr %5, i32 0, i32 5
  %23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %22) #6
  %24 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 9472
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %28 = and i32 %27, -2
  %29 = load ptr, ptr %24, align 4
  %30 = getelementptr i8, ptr %29, i32 9472
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #6, !srcloc !11
  %31 = load ptr, ptr %24, align 4
  %32 = getelementptr i8, ptr %31, i32 12804
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %34 = getelementptr inbounds %struct.nvkm_fifo, ptr %5, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, -1
  %37 = and i32 %36, %33
  %38 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 5
  %39 = load i16, ptr %38, align 8
  %40 = zext i16 %39 to i32
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %19
  %43 = load ptr, ptr %24, align 4
  %44 = getelementptr i8, ptr %43, i32 %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 0) #6, !srcloc !11
  br label %45

45:                                               ; preds = %42, %19
  %46 = getelementptr inbounds %struct.nvkm_instmem, ptr %9, i32 0, i32 10
  %47 = load ptr, ptr %46, align 4
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.nvkm_memory_func, ptr %48, i32 0, i32 7
  %50 = load ptr, ptr %49, align 4
  %51 = tail call ptr %50(ptr noundef %47) #6
  %52 = load ptr, ptr %46, align 4
  %53 = getelementptr inbounds %struct.nvkm_memory, ptr %52, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %54, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nv04_fifo_chan, ptr %0, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, %21
  %60 = zext i32 %59 to i64
  tail call void %56(ptr noundef %52, i64 noundef %60, i32 noundef 0) #6
  %61 = load ptr, ptr %46, align 4
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.nvkm_memory_func, ptr %62, i32 0, i32 8
  %64 = load ptr, ptr %63, align 4
  tail call void %64(ptr noundef %61) #6
  %65 = load ptr, ptr %24, align 4
  %66 = getelementptr i8, ptr %65, i32 9472
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %68 = or i32 %67, 1
  %69 = load ptr, ptr %24, align 4
  %70 = getelementptr i8, ptr %69, i32 9472
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #6, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %23) #6
  br label %71

71:                                               ; preds = %45, %18, %12, %3, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv40_fifo_dma_object_ctor(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nv04_fifo_chan, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvkm_fifo, ptr %4, i32 0, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 32
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 5
  %10 = load i16, ptr %9, align 8
  %11 = zext i16 %10 to i32
  %12 = shl i32 %11, 23
  %13 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.nvkm_engine, ptr %16, i32 0, i32 1, i32 2
  %18 = load i32, ptr %17, align 4
  switch i32 %18, label %23 [
    i32 31, label %24
    i32 48, label %24
    i32 33, label %19
    i32 36, label %21
  ]

19:                                               ; preds = %2
  %20 = or i32 %12, 1048576
  br label %24

21:                                               ; preds = %2
  %22 = or i32 %12, 2097152
  br label %24

23:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 166, i32 noundef 9, ptr noundef null) #6
  br label %34

24:                                               ; preds = %21, %19, %2, %2
  %25 = phi i32 [ %22, %21 ], [ %20, %19 ], [ %12, %2 ], [ %12, %2 ]
  %26 = getelementptr inbounds %struct.nvkm_fifo, ptr %4, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %26) #6
  %27 = getelementptr inbounds %struct.nvkm_instmem, ptr %8, i32 0, i32 8
  %28 = load ptr, ptr %27, align 4
  %29 = load i16, ptr %9, align 8
  %30 = zext i16 %29 to i32
  %31 = tail call i32 @nvkm_ramht_insert(ptr noundef %28, ptr noundef %1, i32 noundef %30, i32 noundef 4, i32 noundef %14, i32 noundef %25) #6
  %32 = load ptr, ptr %3, align 8
  %33 = getelementptr inbounds %struct.nvkm_fifo, ptr %32, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %33) #6
  br label %34

34:                                               ; preds = %24, %23
  %35 = phi i32 [ -22, %23 ], [ %31, %24 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_fifo_dma_object_dtor(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_bind(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_gpuobj_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ramht_insert(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind }
attributes #5 = { nounwind allocsize(2) }
attributes #6 = { nounwind }

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
!8 = !{i64 3952960}
!9 = !{i64 2151492413}
!10 = !{i64 2151493635}
!11 = !{i64 3952542}
