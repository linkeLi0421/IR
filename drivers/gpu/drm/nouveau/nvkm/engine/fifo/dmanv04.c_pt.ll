; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/fifo/dmanv04.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/dmanv04.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_fifo_chan_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_fifo_chan_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nv04_fifo_chan = type { %struct.nvkm_fifo_chan, ptr, i32, [16 x ptr] }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_fifo = type { ptr, %struct.nvkm_engine, [128 x i32], i32, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.nvkm_event, %struct.nvkm_event, %struct.nvkm_event }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.3 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.3 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.123, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.123 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_instmem = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.list_head, %struct.list_head, i32, %struct.mutex, ptr, ptr, ptr, ptr }
%struct.nv04_fifo = type { %struct.nvkm_fifo, ptr }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.nv04_fifo_ramfc = type { i24, i32 }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.nv03_channel_dma_v0 = type { i8, i8, [2 x i8], i32, i64 }
%struct.nvkm_gpuobj = type { %union.anon, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }

@nv04_fifo_dma_func = dso_local constant %struct.nvkm_fifo_chan_func { ptr @nv04_fifo_dma_dtor, ptr @nv04_fifo_dma_init, ptr @nv04_fifo_dma_fini, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv04_fifo_dma_object_ctor, ptr @nv04_fifo_dma_object_dtor, ptr null }, align 4
@nv04_fifo_dma_oclass = dso_local local_unnamed_addr constant %struct.nvkm_fifo_chan_oclass { ptr @nv04_fifo_dma_new, %struct.nvkm_sclass { i32 0, i32 0, i32 107, ptr null, ptr null } }, align 4
@.str = private unnamed_addr constant [51 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/fifo/dmanv04.c\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create channel dma size %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create channel dma vers %d pushbuf %llx offset %08x\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv04_fifo_dma_object_dtor(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nv04_fifo_chan, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvkm_fifo, ptr %4, i32 0, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 32
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_fifo, ptr %4, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %9) #4
  %10 = getelementptr inbounds %struct.nvkm_instmem, ptr %8, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  tail call void @nvkm_ramht_remove(ptr noundef %11, i32 noundef %1) #4
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct.nvkm_fifo, ptr %12, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %13) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_ramht_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv04_fifo_dma_fini(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nv04_fifo_chan, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_fifo, ptr %3, i32 0, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 32
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_instmem, ptr %7, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_fifo, ptr %3, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  %13 = getelementptr inbounds %struct.nv04_fifo_chan, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nvkm_fifo, ptr %3, i32 0, i32 5
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #4
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 9472
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #4, !srcloc !9
  %20 = load ptr, ptr %17, align 4
  %21 = getelementptr i8, ptr %20, i32 12804
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  %23 = and i32 %22, %12
  %24 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 5
  %25 = load i16, ptr %24, align 8
  %26 = zext i16 %25 to i32
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %129

28:                                               ; preds = %1
  %29 = load ptr, ptr %17, align 4
  %30 = getelementptr i8, ptr %29, i32 12832
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  %32 = and i32 %31, -2
  %33 = load ptr, ptr %17, align 4
  %34 = getelementptr i8, ptr %33, i32 12832
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #4, !srcloc !9
  %35 = load ptr, ptr %17, align 4
  %36 = getelementptr i8, ptr %35, i32 12800
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 0) #4, !srcloc !9
  %37 = load ptr, ptr %17, align 4
  %38 = getelementptr i8, ptr %37, i32 12880
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  %40 = and i32 %39, -2
  %41 = load ptr, ptr %17, align 4
  %42 = getelementptr i8, ptr %41, i32 12880
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #4, !srcloc !9
  %43 = getelementptr inbounds %struct.nv04_fifo, ptr %3, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %9, align 4
  %46 = getelementptr inbounds %struct.nvkm_memory_func, ptr %45, i32 0, i32 7
  %47 = load ptr, ptr %46, align 4
  %48 = tail call ptr %47(ptr noundef %9) #4
  %49 = getelementptr inbounds %struct.nvkm_memory, ptr %9, i32 0, i32 1
  %50 = load i32, ptr %44, align 4
  br label %51

51:                                               ; preds = %51, %28
  %52 = phi i32 [ %50, %28 ], [ %100, %51 ]
  %53 = phi ptr [ %44, %28 ], [ %99, %51 ]
  %54 = and i32 %52, 63
  %55 = zext i32 %54 to i64
  %56 = shl nsw i64 -1, %55
  %57 = xor i64 %56, -1
  %58 = lshr i32 %52, 19
  %59 = and i32 %58, 31
  %60 = zext i32 %59 to i64
  %61 = shl i64 %57, %60
  %62 = trunc i64 %61 to i32
  %63 = lshr i32 %52, 6
  %64 = and i32 %63, 31
  %65 = zext i32 %64 to i64
  %66 = shl i64 %57, %65
  %67 = trunc i64 %66 to i32
  %68 = load ptr, ptr %17, align 4
  %69 = getelementptr inbounds %struct.nv04_fifo_ramfc, ptr %53, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr i8, ptr %68, i32 %70
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  %73 = and i32 %72, %62
  %74 = load i32, ptr %53, align 4
  %75 = lshr i32 %74, 19
  %76 = and i32 %75, 31
  %77 = lshr i32 %73, %76
  %78 = load ptr, ptr %49, align 4
  %79 = load ptr, ptr %78, align 4
  %80 = lshr i32 %74, 11
  %81 = and i32 %80, 255
  %82 = add i32 %81, %14
  %83 = zext i32 %82 to i64
  %84 = tail call i32 %79(ptr noundef %9, i64 noundef %83) #4
  %85 = xor i32 %67, -1
  %86 = and i32 %84, %85
  %87 = load ptr, ptr %49, align 4
  %88 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %87, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = load i32, ptr %53, align 4
  %91 = lshr i32 %90, 11
  %92 = and i32 %91, 255
  %93 = add i32 %92, %14
  %94 = zext i32 %93 to i64
  %95 = lshr i32 %90, 6
  %96 = and i32 %95, 31
  %97 = shl i32 %77, %96
  %98 = or i32 %97, %86
  tail call void %89(ptr noundef %9, i64 noundef %94, i32 noundef %98) #4
  %99 = getelementptr %struct.nv04_fifo_ramfc, ptr %53, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, 63
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %51

103:                                              ; preds = %51
  %104 = load ptr, ptr %9, align 4
  %105 = getelementptr inbounds %struct.nvkm_memory_func, ptr %104, i32 0, i32 8
  %106 = load ptr, ptr %105, align 4
  tail call void %106(ptr noundef %9) #4
  %107 = load ptr, ptr %43, align 4
  br label %108

108:                                              ; preds = %108, %103
  %109 = phi ptr [ %107, %103 ], [ %114, %108 ]
  %110 = load ptr, ptr %17, align 4
  %111 = getelementptr inbounds %struct.nv04_fifo_ramfc, ptr %109, i32 0, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr i8, ptr %110, i32 %112
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 0) #4, !srcloc !9
  %114 = getelementptr %struct.nv04_fifo_ramfc, ptr %109, i32 1
  %115 = load i32, ptr %114, align 4
  %116 = and i32 %115, 63
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %108

118:                                              ; preds = %108
  %119 = load ptr, ptr %17, align 4
  %120 = getelementptr i8, ptr %119, i32 12912
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 0) #4, !srcloc !9
  %121 = load ptr, ptr %17, align 4
  %122 = getelementptr i8, ptr %121, i32 12816
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 0) #4, !srcloc !9
  %123 = load ptr, ptr %17, align 4
  %124 = getelementptr i8, ptr %123, i32 12804
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 %12) #4, !srcloc !9
  %125 = load ptr, ptr %17, align 4
  %126 = getelementptr i8, ptr %125, i32 12800
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 1) #4, !srcloc !9
  %127 = load ptr, ptr %17, align 4
  %128 = getelementptr i8, ptr %127, i32 12880
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 1) #4, !srcloc !9
  br label %129

129:                                              ; preds = %118, %1
  %130 = load ptr, ptr %17, align 4
  %131 = getelementptr i8, ptr %130, i32 9476
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %131) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  %133 = load i16, ptr %24, align 8
  %134 = zext i16 %133 to i32
  %135 = shl nuw i32 1, %134
  %136 = xor i32 %135, -1
  %137 = and i32 %132, %136
  %138 = load ptr, ptr %17, align 4
  %139 = getelementptr i8, ptr %138, i32 9476
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %137) #4, !srcloc !9
  %140 = load ptr, ptr %17, align 4
  %141 = getelementptr i8, ptr %140, i32 9472
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 1) #4, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv04_fifo_dma_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nv04_fifo_chan, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_fifo, ptr %3, i32 0, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 5
  %7 = load i16, ptr %6, align 8
  %8 = zext i16 %7 to i32
  %9 = shl nuw i32 1, %8
  %10 = getelementptr inbounds %struct.nvkm_fifo, ptr %3, i32 0, i32 5
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #4
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 9476
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  %16 = or i32 %15, %9
  %17 = load ptr, ptr %12, align 4
  %18 = getelementptr i8, ptr %17, i32 9476
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #4, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nv04_fifo_dma_dtor(ptr noundef readonly returned %0) #0 {
  %2 = getelementptr inbounds %struct.nv04_fifo_chan, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_fifo, ptr %3, i32 0, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 32
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nv04_fifo, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_instmem, ptr %7, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_memory_func, ptr %12, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr %14(ptr noundef %11) #4
  %16 = getelementptr inbounds %struct.nv04_fifo_chan, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %9, align 4
  br label %18

18:                                               ; preds = %18, %1
  %19 = phi i32 [ %17, %1 ], [ %32, %18 ]
  %20 = phi ptr [ %9, %1 ], [ %31, %18 ]
  %21 = load ptr, ptr %10, align 4
  %22 = getelementptr inbounds %struct.nvkm_memory, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %16, align 4
  %27 = lshr i32 %19, 11
  %28 = and i32 %27, 255
  %29 = add i32 %28, %26
  %30 = zext i32 %29 to i64
  tail call void %25(ptr noundef %21, i64 noundef %30, i32 noundef 0) #4
  %31 = getelementptr %struct.nv04_fifo_ramfc, ptr %20, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 63
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %18

35:                                               ; preds = %18
  %36 = load ptr, ptr %10, align 4
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.nvkm_memory_func, ptr %37, i32 0, i32 8
  %39 = load ptr, ptr %38, align 4
  tail call void %39(ptr noundef %36) #4
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv04_fifo_dma_object_ctor(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nv04_fifo_chan, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvkm_fifo, ptr %4, i32 0, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 32
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 5
  %10 = load i16, ptr %9, align 8
  %11 = zext i16 %10 to i32
  %12 = shl i32 %11, 24
  %13 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.nvkm_engine, ptr %16, i32 0, i32 1, i32 2
  %18 = load i32, ptr %17, align 4
  switch i32 %18, label %21 [
    i32 31, label %22
    i32 48, label %22
    i32 33, label %19
    i32 36, label %20
  ]

19:                                               ; preds = %2
  br label %22

20:                                               ; preds = %2
  br label %22

21:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 62, i32 noundef 9, ptr noundef null) #4
  br label %33

22:                                               ; preds = %20, %19, %2, %2
  %23 = phi i32 [ -2147352576, %20 ], [ -2147418112, %19 ], [ -2147483648, %2 ], [ -2147483648, %2 ]
  %24 = or i32 %12, %23
  %25 = getelementptr inbounds %struct.nvkm_fifo, ptr %4, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %25) #4
  %26 = getelementptr inbounds %struct.nvkm_instmem, ptr %8, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = load i16, ptr %9, align 8
  %29 = zext i16 %28 to i32
  %30 = tail call i32 @nvkm_ramht_insert(ptr noundef %27, ptr noundef %1, i32 noundef %29, i32 noundef 4, i32 noundef %14, i32 noundef %24) #4
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr inbounds %struct.nvkm_fifo, ptr %31, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %32) #4
  br label %33

33:                                               ; preds = %22, %21
  %34 = phi i32 [ -22, %21 ], [ %30, %22 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv04_fifo_dma_new(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #0 {
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
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %3) #5
  br label %24

24:                                               ; preds = %17, %5
  %25 = icmp ugt i32 %3, 15
  br i1 %25, label %26, label %119

26:                                               ; preds = %24
  %27 = load i8, ptr %2, align 8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %119

29:                                               ; preds = %26
  %30 = icmp eq i32 %3, 16
  br i1 %30, label %31, label %119

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
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef 0, i64 noundef %43, i32 noundef %45) #5
  br label %47

47:                                               ; preds = %36, %31
  %48 = getelementptr inbounds %struct.nv03_channel_dma_v0, ptr %2, i32 0, i32 4
  %49 = load i64, ptr %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %119, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %53 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3520, i32 noundef 400) #6
  %54 = icmp eq ptr %53, null
  br i1 %54, label %119, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %53, i32 0, i32 3
  store ptr %56, ptr %4, align 4
  %57 = load i64, ptr %48, align 8
  %58 = tail call i32 @nvkm_fifo_chan_ctor(ptr noundef nonnull @nv04_fifo_dma_func, ptr noundef %0, i32 noundef 4096, i32 noundef 4096, i1 noundef zeroext false, i64 noundef 0, i64 noundef %57, i32 noundef 11, i32 noundef 0, i32 noundef 8388608, i32 noundef 65536, ptr noundef %1, ptr noundef nonnull %53) #4
  %59 = getelementptr inbounds %struct.nv04_fifo_chan, ptr %53, i32 0, i32 1
  store ptr %0, ptr %59, align 8
  %60 = icmp eq i32 %58, 0
  br i1 %60, label %61, label %119

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %53, i32 0, i32 5
  %63 = load i16, ptr %62, align 8
  %64 = trunc i16 %63 to i8
  %65 = getelementptr inbounds %struct.nv03_channel_dma_v0, ptr %2, i32 0, i32 1
  store i8 %64, ptr %65, align 1
  %66 = zext i16 %63 to i32
  %67 = shl nuw nsw i32 %66, 5
  %68 = getelementptr inbounds %struct.nv04_fifo_chan, ptr %53, i32 0, i32 2
  store i32 %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.nvkm_instmem, ptr %11, i32 0, i32 10
  %70 = load ptr, ptr %69, align 4
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.nvkm_memory_func, ptr %71, i32 0, i32 7
  %73 = load ptr, ptr %72, align 4
  %74 = tail call ptr %73(ptr noundef %70) #4
  %75 = load ptr, ptr %69, align 4
  %76 = getelementptr inbounds %struct.nvkm_memory, ptr %75, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %77, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = load i32, ptr %68, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.nv03_channel_dma_v0, ptr %2, i32 0, i32 3
  %83 = load i32, ptr %82, align 4
  tail call void %79(ptr noundef %75, i64 noundef %81, i32 noundef %83) #4
  %84 = load ptr, ptr %69, align 4
  %85 = getelementptr inbounds %struct.nvkm_memory, ptr %84, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %86, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = load i32, ptr %68, align 4
  %90 = add i32 %89, 4
  %91 = zext i32 %90 to i64
  %92 = load i32, ptr %82, align 4
  tail call void %88(ptr noundef %84, i64 noundef %91, i32 noundef %92) #4
  %93 = load ptr, ptr %69, align 4
  %94 = getelementptr inbounds %struct.nvkm_memory, ptr %93, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %95, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = load i32, ptr %68, align 4
  %99 = add i32 %98, 8
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %53, i32 0, i32 7
  %102 = load ptr, ptr %101, align 8
  %103 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %102, i32 0, i32 4
  %104 = load i64, ptr %103, align 8
  %105 = lshr i64 %104, 4
  %106 = trunc i64 %105 to i32
  tail call void %97(ptr noundef %93, i64 noundef %100, i32 noundef %106) #4
  %107 = load ptr, ptr %69, align 4
  %108 = getelementptr inbounds %struct.nvkm_memory, ptr %107, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %109, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = load i32, ptr %68, align 4
  %113 = add i32 %112, 16
  %114 = zext i32 %113 to i64
  tail call void %111(ptr noundef %107, i64 noundef %114, i32 noundef 548984) #4
  %115 = load ptr, ptr %69, align 4
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.nvkm_memory_func, ptr %116, i32 0, i32 8
  %118 = load ptr, ptr %117, align 4
  tail call void %118(ptr noundef %115) #4
  br label %119

119:                                              ; preds = %61, %55, %51, %47, %29, %26, %24
  %120 = phi i32 [ 0, %61 ], [ -22, %47 ], [ -12, %51 ], [ %58, %55 ], [ -38, %24 ], [ -38, %26 ], [ -7, %29 ]
  ret i32 %120
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ramht_insert(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fifo_chan_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }
attributes #6 = { nounwind allocsize(2) }

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
!8 = !{i64 2151493269}
!9 = !{i64 3952176}
!10 = !{i64 3952594}
!11 = !{i64 2151492047}
