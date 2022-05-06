; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/mpeg/nv44.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/mpeg/nv44.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.69 = type { ptr }
%struct.anon.70 = type { ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nv44_mpeg = type { %struct.nvkm_engine, %struct.list_head }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.71 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.71 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.123, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.123 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nv44_mpeg_chan = type { %struct.nvkm_object, ptr, ptr, %struct.list_head, i32 }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_gpuobj = type { %union.anon.68, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.68 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }

@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@nv31_mpeg_object = external dso_local constant %struct.nvkm_object_func, align 4
@nv44_mpeg = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.69, %struct.anon.70, ptr, [2 x %struct.nvkm_sclass] } { ptr null, ptr null, ptr null, ptr null, ptr @nv31_mpeg_init, ptr null, ptr @nv44_mpeg_intr, ptr @nv31_mpeg_tile, ptr null, %struct.anon.69 zeroinitializer, %struct.anon.70 { ptr @nv44_mpeg_chan_new, ptr null }, ptr null, [2 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 12660, ptr @nv31_mpeg_object, ptr null }, %struct.nvkm_sclass zeroinitializer] }, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s: ch %d [%08x %s] %08x %08x %08x %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@nv44_mpeg_chan = internal constant %struct.nvkm_object_func { ptr @nv44_mpeg_chan_dtor, ptr null, ptr @nv44_mpeg_chan_fini, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv44_mpeg_chan_bind, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv44_mpeg_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 96) #4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nv44_mpeg, ptr %6, i32 0, i32 1
  store volatile ptr %9, ptr %9, align 8
  %10 = getelementptr inbounds %struct.nv44_mpeg, ptr %6, i32 0, i32 1, i32 1
  store ptr %9, ptr %10, align 4
  store ptr %6, ptr %3, align 4
  %11 = tail call i32 @nvkm_engine_ctor(ptr noundef nonnull @nv44_mpeg, ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext true, ptr noundef nonnull %6) #5
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i32 [ %11, %8 ], [ -12, %4 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_engine_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv31_mpeg_init(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv44_mpeg_intr(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 45848
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %8 = and i32 %7, 1048575
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 45312
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr i8, ptr %12, i32 45616
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 45620
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr i8, ptr %18, i32 45624
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %21 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 2
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #5
  %23 = getelementptr inbounds %struct.nv44_mpeg, ptr %0, i32 0, i32 1
  br label %24

24:                                               ; preds = %28, %1
  %25 = phi ptr [ %23, %1 ], [ %26, %28 ]
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %23
  br i1 %27, label %41, label %28

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %26, i32 8
  %30 = load i32, ptr %29, align 8
  %31 = lshr i32 %30, 4
  %32 = icmp eq i32 %31, %8
  br i1 %32, label %33, label %24

33:                                               ; preds = %28
  %34 = getelementptr i8, ptr %26, i32 -80
  %35 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %26, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %36, ptr %38, align 4
  store volatile ptr %37, ptr %36, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %26, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %35, align 4
  %39 = load ptr, ptr %23, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %26, ptr %40, align 4
  store ptr %39, ptr %26, align 4
  store ptr %23, ptr %35, align 4
  store volatile ptr %26, ptr %23, align 4
  br label %41

41:                                               ; preds = %33, %24
  %42 = phi ptr [ %34, %33 ], [ null, %24 ]
  %43 = and i32 %11, 16777216
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %64, label %45

45:                                               ; preds = %41
  %46 = icmp eq i32 %14, 32
  %47 = icmp eq i32 %17, 0
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load ptr, ptr %4, align 4
  %51 = getelementptr i8, ptr %50, i32 45832
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %53 = load ptr, ptr %4, align 4
  %54 = getelementptr i8, ptr %53, i32 45832
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #5, !srcloc !11
  %55 = and i32 %11, -16777217
  br label %64

56:                                               ; preds = %45
  %57 = icmp eq i32 %14, 16
  br i1 %57, label %58, label %64

58:                                               ; preds = %56
  switch i32 %17, label %64 [
    i32 400, label %59
    i32 416, label %59
    i32 432, label %59
  ]

59:                                               ; preds = %58, %58, %58
  %60 = load ptr, ptr %2, align 4
  %61 = tail call zeroext i1 @nv40_mpeg_mthd_dma(ptr noundef %60, i32 noundef %17, i32 noundef %20) #5
  %62 = and i32 %11, -16777217
  %63 = select i1 %61, i32 %62, i32 %11
  br label %64

64:                                               ; preds = %59, %58, %56, %49, %41
  %65 = phi i32 [ %11, %56 ], [ %11, %41 ], [ %55, %49 ], [ %11, %58 ], [ %63, %59 ]
  %66 = load ptr, ptr %4, align 4
  %67 = getelementptr i8, ptr %66, i32 45312
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %11) #5, !srcloc !11
  %68 = load ptr, ptr %4, align 4
  %69 = getelementptr i8, ptr %68, i32 45616
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 1) #5, !srcloc !11
  %70 = icmp eq i32 %65, 0
  br i1 %70, label %94, label %71

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 5
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %94, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %2, align 4
  %77 = getelementptr inbounds %struct.nvkm_device, ptr %76, i32 0, i32 2
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 4
  %80 = icmp eq ptr %42, null
  br i1 %80, label %90, label %81

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.nv44_mpeg_chan, ptr %42, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %83, i32 0, i32 5
  %85 = load i16, ptr %84, align 8
  %86 = zext i16 %85 to i32
  %87 = getelementptr inbounds %struct.nvkm_object, ptr %42, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.nvkm_client, ptr %88, i32 0, i32 1
  br label %90

90:                                               ; preds = %81, %75
  %91 = phi i32 [ %86, %81 ], [ -1, %75 ]
  %92 = phi ptr [ %89, %81 ], [ @.str.2, %75 ]
  %93 = shl nuw nsw i32 %8, 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str, ptr noundef %79, i32 noundef %91, i32 noundef %93, ptr noundef %92, i32 noundef %11, i32 noundef %14, i32 noundef %17, i32 noundef %20) #6
  br label %94

94:                                               ; preds = %90, %71, %64
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %22) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv31_mpeg_tile(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv44_mpeg_chan_new(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_oclass, ptr %1, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 96) #4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nv44_mpeg_chan, ptr noundef %1, ptr noundef nonnull %7) #5
  %10 = getelementptr inbounds %struct.nv44_mpeg_chan, ptr %7, i32 0, i32 1
  store ptr %5, ptr %10, align 8
  %11 = getelementptr inbounds %struct.nv44_mpeg_chan, ptr %7, i32 0, i32 2
  store ptr %0, ptr %11, align 4
  store ptr %7, ptr %2, align 4
  %12 = getelementptr inbounds %struct.nvkm_engine, ptr %5, i32 0, i32 2
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #5
  %14 = getelementptr inbounds %struct.nv44_mpeg_chan, ptr %7, i32 0, i32 3
  %15 = getelementptr inbounds %struct.nv44_mpeg, ptr %5, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %14, ptr %17, align 4
  store ptr %16, ptr %14, align 8
  %18 = getelementptr inbounds %struct.nv44_mpeg_chan, ptr %7, i32 0, i32 3, i32 1
  store ptr %15, ptr %18, align 4
  store volatile ptr %14, ptr %15, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #5
  br label %19

19:                                               ; preds = %9, %3
  %20 = phi i32 [ 0, %9 ], [ -12, %3 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nv40_mpeg_mthd_dma(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nv44_mpeg_chan_dtor(ptr noundef returned %0) #0 {
  %2 = getelementptr inbounds %struct.nv44_mpeg_chan, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_engine, ptr %3, i32 0, i32 2
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #5
  %6 = getelementptr inbounds %struct.nv44_mpeg_chan, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.nv44_mpeg_chan, ptr %0, i32 0, i32 3, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #5
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv44_mpeg_chan_fini(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.nv44_mpeg_chan, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvkm_engine, ptr %4, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nv44_mpeg_chan, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 4
  %10 = or i32 %9, -2147483648
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 45868
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %15 = and i32 %14, -2
  %16 = load ptr, ptr %11, align 4
  %17 = getelementptr i8, ptr %16, i32 45868
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #5, !srcloc !11
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr i8, ptr %18, i32 45848
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %21 = icmp eq i32 %20, %10
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load ptr, ptr %11, align 4
  %24 = getelementptr i8, ptr %23, i32 45848
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %26 = and i32 %25, 2147483647
  %27 = load ptr, ptr %11, align 4
  %28 = getelementptr i8, ptr %27, i32 45848
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #5, !srcloc !11
  br label %29

29:                                               ; preds = %22, %2
  %30 = load ptr, ptr %11, align 4
  %31 = getelementptr i8, ptr %30, i32 45868
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %33 = or i32 %32, 1
  %34 = load ptr, ptr %11, align 4
  %35 = getelementptr i8, ptr %34, i32 45868
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #5, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv44_mpeg_chan_bind(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvkm_engine, ptr %6, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @nvkm_gpuobj_new(ptr noundef %8, i32 noundef 1056, i32 noundef %2, i1 noundef zeroext true, ptr noundef %1, ptr noundef %3) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %4
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %12, i32 0, i32 4
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = getelementptr inbounds %struct.nv44_mpeg_chan, ptr %0, i32 0, i32 4
  store i32 %15, ptr %16, align 8
  %17 = load ptr, ptr %3, align 4
  %18 = load ptr, ptr %17, align 8
  %19 = load ptr, ptr %18, align 4
  %20 = tail call ptr %19(ptr noundef %17) #5
  %21 = load ptr, ptr %3, align 4
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  tail call void %24(ptr noundef %21, i32 noundef 120, i32 noundef 33562305) #5
  %25 = load ptr, ptr %3, align 4
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  tail call void %28(ptr noundef %25) #5
  br label %29

29:                                               ; preds = %11, %4
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_new(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind allocsize(2) }
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
!8 = !{i64 3944912}
!9 = !{i64 2151484365}
!10 = !{i64 2151485587}
!11 = !{i64 3944494}
