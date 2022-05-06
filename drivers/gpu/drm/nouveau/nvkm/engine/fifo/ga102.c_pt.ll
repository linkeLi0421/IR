; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/fifo/ga102.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/ga102.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_engine_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.68, %struct.anon.69, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon.68 = type { ptr }
%struct.anon.69 = type { ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_fifo = type { ptr, %struct.nvkm_engine, [128 x i32], i32, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.nvkm_event, %struct.nvkm_event, %struct.nvkm_event }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.70 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.70 = type { %struct.refcount_struct, %struct.mutex, i8 }
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
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.volta_channel_gpfifo_a_v0 = type { i8, i8, i16, i32, i64, i64, i64, i64, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.125, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.125 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_top = type { ptr, %struct.nvkm_subdev, %struct.list_head }
%struct.ga102_chan = type { %struct.nvkm_object, %struct.anon.132, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.anon.132 = type { i32, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
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
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }

@ga102_fifo = internal constant %struct.nvkm_engine_func { ptr @ga102_fifo_dtor, ptr null, ptr null, ptr @ga102_fifo_info, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.anon.68 { ptr @ga102_fifo_sclass }, %struct.anon.69 zeroinitializer, ptr null, [0 x %struct.nvkm_sclass] zeroinitializer }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@ga102_user_oclass = internal constant %struct.nvkm_device_oclass { ptr @ga102_user_new, %struct.nvkm_sclass zeroinitializer }, align 4
@ga102_chan_oclass = internal constant %struct.nvkm_device_oclass { ptr @ga102_chan_new, %struct.nvkm_sclass zeroinitializer }, align 4
@ga102_chan = internal constant %struct.nvkm_object_func { ptr @ga102_chan_dtor, ptr @ga102_chan_init, ptr @ga102_chan_fini, ptr null, ptr null, ptr @ga102_chan_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ga102_chan_sclass }, align 4
@.str = private unnamed_addr constant [49 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/fifo/ga102.c\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ga102_fifo_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 736) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nvkm_fifo, ptr %6, i32 0, i32 1
  %10 = tail call i32 @nvkm_engine_ctor(ptr noundef nonnull @ga102_fifo, ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext true, ptr noundef %9) #9
  store ptr %6, ptr %3, align 4
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi i32 [ 0, %8 ], [ -12, %4 ]
  ret i32 %12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_engine_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal ptr @ga102_fifo_dtor(ptr noundef readnone %0) #5 {
  %2 = getelementptr i8, ptr %0, i32 -4
  ret ptr %2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ga102_fifo_info(ptr nocapture noundef readnone %0, i64 noundef %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = icmp eq i64 %1, 4294967297
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  store i64 1, ptr %2, align 8
  br label %6

6:                                                ; preds = %5, %3
  %7 = phi i32 [ 0, %5 ], [ -38, %3 ]
  ret i32 %7
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ga102_fifo_sclass(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #6 {
  switch i32 %1, label %16 [
    i32 0, label %4
    i32 1, label %10
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 1
  store i32 -1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 1, i32 1
  store i32 -1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 1, i32 2
  store i32 50017, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 1, i32 3
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 1, i32 4
  store ptr null, ptr %9, align 4
  br label %14

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 1
  store i64 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 1, i32 2
  store i32 51055, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 1, i32 3
  store i64 0, ptr %13, align 4
  br label %14

14:                                               ; preds = %10, %4
  %15 = phi ptr [ @ga102_chan_oclass, %10 ], [ @ga102_user_oclass, %4 ]
  store ptr %15, ptr %2, align 4
  br label %16

16:                                               ; preds = %14, %3
  %17 = phi i32 [ 2, %3 ], [ 0, %14 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ga102_user_new(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = tail call i32 @tu102_fifo_user_new(ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #9
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tu102_fifo_user_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ga102_chan_new(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = icmp eq i32 %3, 48
  br i1 %6, label %7, label %270

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.nvkm_oclass, ptr %1, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %2, i32 0, i32 6
  %11 = load i64, ptr %10, align 8
  %12 = tail call ptr @nvkm_uvmm_search(ptr noundef %9, i64 noundef %11) #9
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = ptrtoint ptr %12 to i32
  br label %270

16:                                               ; preds = %7
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 104) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %270, label %20

20:                                               ; preds = %16
  tail call void @nvkm_object_ctor(ptr noundef nonnull @ga102_chan, ptr noundef %1, ptr noundef nonnull %18) #9
  store ptr %18, ptr %4, align 4
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 23
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nvkm_top, ptr %22, i32 0, i32 2
  br label %24

24:                                               ; preds = %28, %20
  %25 = phi ptr [ %23, %20 ], [ %26, %28 ]
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %23
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %26, i32 -32
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 28
  br i1 %31, label %32, label %24

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %26, i32 -12
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ga102_chan, ptr %18, i32 0, i32 1
  store i32 %34, ptr %35, align 8
  br label %39

36:                                               ; preds = %24
  %37 = getelementptr inbounds %struct.ga102_chan, ptr %18, i32 0, i32 1
  %38 = load i32, ptr %37, align 8
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi i32 [ %38, %36 ], [ %34, %32 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %270, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.ga102_chan, ptr %18, i32 0, i32 1
  %44 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %45 = load ptr, ptr %44, align 4
  %46 = add i32 %40, 4
  %47 = getelementptr i8, ptr %45, i32 %46
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %49 = and i32 %48, -16
  %50 = getelementptr inbounds %struct.ga102_chan, ptr %18, i32 0, i32 1, i32 1
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %2, i32 0, i32 2
  store i16 0, ptr %51, align 2
  %52 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %2, i32 0, i32 7
  store i64 0, ptr %52, align 8
  %53 = load ptr, ptr %44, align 4
  %54 = load i32, ptr %43, align 8
  %55 = add i32 %54, 8
  %56 = getelementptr i8, ptr %53, i32 %55
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %58 = and i32 %57, -65536
  %59 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %2, i32 0, i32 8
  store i32 %58, ptr %59, align 8
  %60 = getelementptr inbounds %struct.ga102_chan, ptr %18, i32 0, i32 2
  %61 = tail call i32 @nvkm_memory_new(ptr noundef %0, i32 noundef 0, i64 noundef 4096, i32 noundef 4096, i1 noundef zeroext true, ptr noundef %60) #9
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %270

63:                                               ; preds = %42
  %64 = getelementptr inbounds %struct.ga102_chan, ptr %18, i32 0, i32 3
  %65 = tail call i32 @nvkm_memory_new(ptr noundef %0, i32 noundef 0, i64 noundef 4096, i32 noundef 4096, i1 noundef zeroext true, ptr noundef %64) #9
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %270

67:                                               ; preds = %63
  %68 = load ptr, ptr %64, align 4
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.nvkm_memory_func, ptr %69, i32 0, i32 7
  %71 = load ptr, ptr %70, align 4
  %72 = tail call ptr %71(ptr noundef %68) #9
  %73 = load ptr, ptr %64, align 4
  %74 = getelementptr inbounds %struct.nvkm_memory, ptr %73, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %75, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  tail call void %77(ptr noundef %73, i64 noundef 16, i32 noundef 64206) #9
  %78 = load ptr, ptr %64, align 4
  %79 = getelementptr inbounds %struct.nvkm_memory, ptr %78, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %80, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  tail call void %82(ptr noundef %78, i64 noundef 48, i32 noundef 2147481858) #9
  %83 = load ptr, ptr %64, align 4
  %84 = getelementptr inbounds %struct.nvkm_memory, ptr %83, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %85, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %2, i32 0, i32 4
  %89 = load i64, ptr %88, align 8
  %90 = trunc i64 %89 to i32
  tail call void %87(ptr noundef %83, i64 noundef 72, i32 noundef %90) #9
  %91 = load ptr, ptr %64, align 4
  %92 = getelementptr inbounds %struct.nvkm_memory, ptr %91, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %93, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = load i64, ptr %88, align 8
  %97 = lshr i64 %96, 32
  %98 = trunc i64 %97 to i32
  %99 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %2, i32 0, i32 3
  %100 = load i32, ptr %99, align 4
  %101 = lshr i32 %100, 3
  %102 = icmp ugt i32 %100, 15
  %103 = add nsw i32 %101, -1
  %104 = tail call i32 @llvm.ctlz.i32(i32 %103, i1 false) #9, !range !10
  %105 = mul nsw i32 %104, -65536
  %106 = add nsw i32 %105, 2097152
  %107 = select i1 %102, i32 %106, i32 0
  %108 = or i32 %107, %98
  tail call void %95(ptr noundef %91, i64 noundef 76, i32 noundef %108) #9
  %109 = load ptr, ptr %64, align 4
  %110 = getelementptr inbounds %struct.nvkm_memory, ptr %109, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %111, i32 0, i32 1
  %113 = load ptr, ptr %112, align 4
  tail call void %113(ptr noundef %109, i64 noundef 132, i32 noundef 541065216) #9
  %114 = load ptr, ptr %64, align 4
  %115 = getelementptr inbounds %struct.nvkm_memory, ptr %114, i32 0, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %116, i32 0, i32 1
  %118 = load ptr, ptr %117, align 4
  tail call void %118(ptr noundef %114, i64 noundef 148, i32 noundef 805306369) #9
  %119 = load ptr, ptr %64, align 4
  %120 = getelementptr inbounds %struct.nvkm_memory, ptr %119, i32 0, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %121, i32 0, i32 1
  %123 = load ptr, ptr %122, align 4
  tail call void %123(ptr noundef %119, i64 noundef 172, i32 noundef 131072) #9
  %124 = load ptr, ptr %64, align 4
  %125 = getelementptr inbounds %struct.nvkm_memory, ptr %124, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %126, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  tail call void %128(ptr noundef %124, i64 noundef 228, i32 noundef 0) #9
  %129 = load ptr, ptr %64, align 4
  %130 = getelementptr inbounds %struct.nvkm_memory, ptr %129, i32 0, i32 1
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %131, i32 0, i32 1
  %133 = load ptr, ptr %132, align 4
  tail call void %133(ptr noundef %129, i64 noundef 232, i32 noundef 0) #9
  %134 = load ptr, ptr %64, align 4
  %135 = getelementptr inbounds %struct.nvkm_memory, ptr %134, i32 0, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %136, i32 0, i32 1
  %138 = load ptr, ptr %137, align 4
  tail call void %138(ptr noundef %134, i64 noundef 244, i32 noundef 4096) #9
  %139 = load ptr, ptr %64, align 4
  %140 = getelementptr inbounds %struct.nvkm_memory, ptr %139, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %141, i32 0, i32 1
  %143 = load ptr, ptr %142, align 4
  tail call void %143(ptr noundef %139, i64 noundef 248, i32 noundef 268447872) #9
  %144 = load ptr, ptr %64, align 4
  %145 = getelementptr inbounds %struct.nvkm_memory, ptr %144, i32 0, i32 1
  %146 = load ptr, ptr %145, align 4
  %147 = load ptr, ptr %146, align 4
  %148 = tail call i32 %147(ptr noundef %144, i64 noundef 536) #9
  %149 = load ptr, ptr %64, align 4
  %150 = getelementptr inbounds %struct.nvkm_memory, ptr %149, i32 0, i32 1
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %151, i32 0, i32 1
  %153 = load ptr, ptr %152, align 4
  tail call void %153(ptr noundef %149, i64 noundef 536, i32 noundef %148) #9
  %154 = load ptr, ptr %64, align 4
  %155 = getelementptr inbounds %struct.nvkm_memory, ptr %154, i32 0, i32 1
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %156, i32 0, i32 1
  %158 = load ptr, ptr %157, align 4
  %159 = load ptr, ptr %60, align 8
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr inbounds %struct.nvkm_memory_func, ptr %160, i32 0, i32 3
  %162 = load ptr, ptr %161, align 4
  %163 = tail call i64 %162(ptr noundef %159) #9
  %164 = trunc i64 %163 to i32
  tail call void %158(ptr noundef %154, i64 noundef 544, i32 noundef %164) #9
  %165 = load ptr, ptr %64, align 4
  %166 = getelementptr inbounds %struct.nvkm_memory, ptr %165, i32 0, i32 1
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %167, i32 0, i32 1
  %169 = load ptr, ptr %168, align 4
  %170 = load ptr, ptr %60, align 8
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr inbounds %struct.nvkm_memory_func, ptr %171, i32 0, i32 3
  %173 = load ptr, ptr %172, align 4
  %174 = tail call i64 %173(ptr noundef %170) #9
  %175 = lshr i64 %174, 32
  %176 = trunc i64 %175 to i32
  tail call void %169(ptr noundef %165, i64 noundef 548, i32 noundef %176) #9
  %177 = load ptr, ptr %64, align 4
  %178 = load ptr, ptr %177, align 4
  %179 = getelementptr inbounds %struct.nvkm_memory_func, ptr %178, i32 0, i32 8
  %180 = load ptr, ptr %179, align 4
  tail call void %180(ptr noundef %177) #9
  %181 = getelementptr inbounds %struct.ga102_chan, ptr %18, i32 0, i32 4
  %182 = tail call i32 @nvkm_memory_new(ptr noundef %0, i32 noundef 0, i64 noundef 4096, i32 noundef 4096, i1 noundef zeroext true, ptr noundef %181) #9
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %270

184:                                              ; preds = %67
  %185 = getelementptr inbounds %struct.ga102_chan, ptr %18, i32 0, i32 5
  %186 = tail call i32 @nvkm_memory_new(ptr noundef %0, i32 noundef 0, i64 noundef 4096, i32 noundef 4096, i1 noundef zeroext true, ptr noundef %185) #9
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %270

188:                                              ; preds = %184
  %189 = load ptr, ptr %185, align 4
  %190 = load ptr, ptr %189, align 4
  %191 = getelementptr inbounds %struct.nvkm_memory_func, ptr %190, i32 0, i32 7
  %192 = load ptr, ptr %191, align 4
  %193 = tail call ptr %192(ptr noundef %189) #9
  %194 = load ptr, ptr %185, align 4
  %195 = getelementptr inbounds %struct.nvkm_memory, ptr %194, i32 0, i32 1
  %196 = load ptr, ptr %195, align 4
  %197 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %196, i32 0, i32 1
  %198 = load ptr, ptr %197, align 4
  tail call void %198(ptr noundef %194, i64 noundef 0, i32 noundef -2147287039) #9
  %199 = load ptr, ptr %185, align 4
  %200 = getelementptr inbounds %struct.nvkm_memory, ptr %199, i32 0, i32 1
  %201 = load ptr, ptr %200, align 4
  %202 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %201, i32 0, i32 1
  %203 = load ptr, ptr %202, align 4
  tail call void %203(ptr noundef %199, i64 noundef 4, i32 noundef 1) #9
  %204 = load ptr, ptr %185, align 4
  %205 = getelementptr inbounds %struct.nvkm_memory, ptr %204, i32 0, i32 1
  %206 = load ptr, ptr %205, align 4
  %207 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %206, i32 0, i32 1
  %208 = load ptr, ptr %207, align 4
  tail call void %208(ptr noundef %204, i64 noundef 8, i32 noundef 0) #9
  %209 = load ptr, ptr %185, align 4
  %210 = getelementptr inbounds %struct.nvkm_memory, ptr %209, i32 0, i32 1
  %211 = load ptr, ptr %210, align 4
  %212 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %211, i32 0, i32 1
  %213 = load ptr, ptr %212, align 4
  tail call void %213(ptr noundef %209, i64 noundef 12, i32 noundef 0) #9
  %214 = load ptr, ptr %185, align 4
  %215 = getelementptr inbounds %struct.nvkm_memory, ptr %214, i32 0, i32 1
  %216 = load ptr, ptr %215, align 4
  %217 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %216, i32 0, i32 1
  %218 = load ptr, ptr %217, align 4
  %219 = load ptr, ptr %181, align 8
  %220 = load ptr, ptr %219, align 4
  %221 = getelementptr inbounds %struct.nvkm_memory_func, ptr %220, i32 0, i32 4
  %222 = load ptr, ptr %221, align 4
  %223 = tail call i64 %222(ptr noundef %219) #9
  %224 = trunc i64 %223 to i32
  tail call void %218(ptr noundef %214, i64 noundef 16, i32 noundef %224) #9
  %225 = load ptr, ptr %185, align 4
  %226 = getelementptr inbounds %struct.nvkm_memory, ptr %225, i32 0, i32 1
  %227 = load ptr, ptr %226, align 4
  %228 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %227, i32 0, i32 1
  %229 = load ptr, ptr %228, align 4
  %230 = load ptr, ptr %181, align 8
  %231 = load ptr, ptr %230, align 4
  %232 = getelementptr inbounds %struct.nvkm_memory_func, ptr %231, i32 0, i32 4
  %233 = load ptr, ptr %232, align 4
  %234 = tail call i64 %233(ptr noundef %230) #9
  %235 = lshr i64 %234, 32
  %236 = trunc i64 %235 to i32
  tail call void %229(ptr noundef %225, i64 noundef 20, i32 noundef %236) #9
  %237 = load ptr, ptr %185, align 4
  %238 = getelementptr inbounds %struct.nvkm_memory, ptr %237, i32 0, i32 1
  %239 = load ptr, ptr %238, align 4
  %240 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %239, i32 0, i32 1
  %241 = load ptr, ptr %240, align 4
  %242 = load ptr, ptr %64, align 4
  %243 = load ptr, ptr %242, align 4
  %244 = getelementptr inbounds %struct.nvkm_memory_func, ptr %243, i32 0, i32 4
  %245 = load ptr, ptr %244, align 4
  %246 = tail call i64 %245(ptr noundef %242) #9
  %247 = trunc i64 %246 to i32
  tail call void %241(ptr noundef %237, i64 noundef 24, i32 noundef %247) #9
  %248 = load ptr, ptr %185, align 4
  %249 = getelementptr inbounds %struct.nvkm_memory, ptr %248, i32 0, i32 1
  %250 = load ptr, ptr %249, align 4
  %251 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %250, i32 0, i32 1
  %252 = load ptr, ptr %251, align 4
  %253 = load ptr, ptr %64, align 4
  %254 = load ptr, ptr %253, align 4
  %255 = getelementptr inbounds %struct.nvkm_memory_func, ptr %254, i32 0, i32 4
  %256 = load ptr, ptr %255, align 4
  %257 = tail call i64 %256(ptr noundef %253) #9
  %258 = lshr i64 %257, 32
  %259 = trunc i64 %258 to i32
  tail call void %252(ptr noundef %248, i64 noundef 28, i32 noundef %259) #9
  %260 = load ptr, ptr %185, align 4
  %261 = load ptr, ptr %260, align 4
  %262 = getelementptr inbounds %struct.nvkm_memory_func, ptr %261, i32 0, i32 8
  %263 = load ptr, ptr %262, align 4
  tail call void %263(ptr noundef %260) #9
  %264 = load ptr, ptr %64, align 4
  %265 = tail call i32 @nvkm_vmm_join(ptr noundef %12, ptr noundef %264) #9
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %188
  %268 = tail call ptr @nvkm_vmm_ref(ptr noundef %12) #9
  %269 = getelementptr inbounds %struct.ga102_chan, ptr %18, i32 0, i32 6
  store ptr %268, ptr %269, align 8
  br label %270

270:                                              ; preds = %267, %188, %184, %67, %63, %42, %39, %16, %14, %5
  %271 = phi i32 [ %15, %14 ], [ 0, %267 ], [ -38, %5 ], [ -12, %16 ], [ -19, %39 ], [ %61, %42 ], [ %65, %63 ], [ %182, %67 ], [ %186, %184 ], [ %265, %188 ]
  ret i32 %271
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_uvmm_search(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_join(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_vmm_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ga102_chan_dtor(ptr noundef returned %0) #0 {
  %2 = getelementptr inbounds %struct.ga102_chan, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ga102_chan, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  tail call void @nvkm_vmm_part(ptr noundef nonnull %3, ptr noundef %7) #9
  tail call void @nvkm_vmm_unref(ptr noundef %2) #9
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.ga102_chan, ptr %0, i32 0, i32 5
  tail call void @nvkm_memory_unref(ptr noundef %9) #9
  %10 = getelementptr inbounds %struct.ga102_chan, ptr %0, i32 0, i32 4
  tail call void @nvkm_memory_unref(ptr noundef %10) #9
  %11 = getelementptr inbounds %struct.ga102_chan, ptr %0, i32 0, i32 3
  tail call void @nvkm_memory_unref(ptr noundef %11) #9
  %12 = getelementptr inbounds %struct.ga102_chan, ptr %0, i32 0, i32 2
  tail call void @nvkm_memory_unref(ptr noundef %12) #9
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ga102_chan_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_engine, ptr %3, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ga102_chan, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 8
  %8 = add i32 %7, 768
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %13 = or i32 %12, -2147483648
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr i8, ptr %14, i32 %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #9, !srcloc !12
  %16 = getelementptr inbounds %struct.ga102_chan, ptr %0, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nvkm_memory_func, ptr %18, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i64 %20(ptr noundef %17) #9
  %22 = trunc i64 %21 to i32
  %23 = load ptr, ptr %9, align 4
  %24 = load i32, ptr %6, align 8
  %25 = add i32 %24, 128
  %26 = getelementptr i8, ptr %23, i32 %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %22) #9, !srcloc !12
  %27 = load ptr, ptr %16, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nvkm_memory_func, ptr %28, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i64 %30(ptr noundef %27) #9
  %32 = lshr i64 %31, 32
  %33 = trunc i64 %32 to i32
  %34 = load ptr, ptr %9, align 4
  %35 = load i32, ptr %6, align 8
  %36 = add i32 %35, 132
  %37 = getelementptr i8, ptr %34, i32 %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %33) #9, !srcloc !12
  %38 = load ptr, ptr %9, align 4
  %39 = load i32, ptr %6, align 8
  %40 = add i32 %39, 136
  %41 = getelementptr i8, ptr %38, i32 %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 2) #9, !srcloc !12
  %42 = load ptr, ptr %9, align 4
  %43 = getelementptr inbounds %struct.ga102_chan, ptr %0, i32 0, i32 1, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr i8, ptr %42, i32 %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 2) #9, !srcloc !12
  %46 = load ptr, ptr %9, align 4
  %47 = load i32, ptr %6, align 8
  %48 = add i32 %47, 144
  %49 = getelementptr i8, ptr %46, i32 %48
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 0) #9, !srcloc !12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ga102_chan_fini(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = alloca %struct.nvkm_timer_wait, align 8
  %4 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvkm_engine, ptr %5, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ga102_chan, ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.ga102_chan, ptr %0, i32 0, i32 1, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %9, i32 %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 3) #9, !srcloc !12
  %14 = load ptr, ptr %8, align 4
  %15 = load i32, ptr %10, align 8
  %16 = add i32 %15, 152
  %17 = getelementptr i8, ptr %14, i32 %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 16777216) #9, !srcloc !12
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !13
  call void @nvkm_timer_wait_init(ptr noundef %7, i64 noundef 2000000000, ptr noundef nonnull %3) #9
  br label %18

18:                                               ; preds = %26, %2
  %19 = load ptr, ptr %8, align 4
  %20 = load i32, ptr %10, align 8
  %21 = add i32 %20, 152
  %22 = getelementptr i8, ptr %19, i32 %21
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %24 = and i32 %23, 1048576
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %48, label %26

26:                                               ; preds = %18
  %27 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %3) #9
  %28 = icmp sgt i64 %27, -1
  br i1 %28, label %18, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %3, align 8
  %31 = getelementptr inbounds %struct.nvkm_timer, ptr %30, i32 0, i32 1, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = call ptr @dev_driver_string(ptr noundef %34) #9
  %36 = load ptr, ptr %3, align 8
  %37 = getelementptr inbounds %struct.nvkm_timer, ptr %36, i32 0, i32 1, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nvkm_device, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %29
  %45 = load ptr, ptr %40, align 4
  br label %46

46:                                               ; preds = %44, %29
  %47 = phi ptr [ %45, %44 ], [ %42, %29 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 97, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %35, ptr noundef %47) #9
  br label %48

48:                                               ; preds = %46, %18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #9
  %49 = load ptr, ptr %8, align 4
  %50 = load i32, ptr %10, align 8
  %51 = add i32 %50, 136
  %52 = getelementptr i8, ptr %49, i32 %51
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 0) #9, !srcloc !12
  %53 = load ptr, ptr %8, align 4
  %54 = load i32, ptr %11, align 4
  %55 = getelementptr i8, ptr %53, i32 %54
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 -1) #9, !srcloc !12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ga102_chan_map(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) #0 {
  %7 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nvkm_engine, ptr %8, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ga102_chan, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_memory_func, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i64 %15(ptr noundef %12) #9
  %17 = icmp eq i64 %16, -1
  br i1 %17, label %25, label %18

18:                                               ; preds = %6
  store i32 0, ptr %3, align 4
  %19 = load ptr, ptr %10, align 8
  %20 = getelementptr inbounds %struct.nvkm_device_func, ptr %19, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef %10, i32 noundef 3) #9
  %23 = zext i32 %22 to i64
  %24 = add i64 %16, %23
  store i64 %24, ptr %4, align 8
  store i64 4096, ptr %5, align 8
  br label %25

25:                                               ; preds = %18, %6
  %26 = phi i32 [ 0, %18 ], [ -14, %6 ]
  ret i32 %26
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ga102_chan_sclass(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  store ptr @nvkm_object_new, ptr %2, align 8
  %6 = getelementptr inbounds %struct.nvkm_oclass, ptr %2, i32 0, i32 1
  store i32 -1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.nvkm_oclass, ptr %2, i32 0, i32 1, i32 1
  store i32 -1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nvkm_oclass, ptr %2, i32 0, i32 1, i32 2
  store i32 51125, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nvkm_oclass, ptr %2, i32 0, i32 1, i32 3
  store ptr null, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nvkm_oclass, ptr %2, i32 0, i32 1, i32 4
  store ptr null, ptr %10, align 4
  br label %11

11:                                               ; preds = %5, %3
  %12 = phi i32 [ 0, %5 ], [ -22, %3 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_part(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind }

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
!8 = !{i64 3949383}
!9 = !{i64 2151488836}
!10 = !{i32 0, i32 33}
!11 = !{i64 2151490058}
!12 = !{i64 3948965}
!13 = !{!"auto-init"}
