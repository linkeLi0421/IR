; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv50.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_fifo_chan_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
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
%struct.nv50_fifo = type { %struct.nvkm_fifo, [2 x ptr], i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.121 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.nvkm_memory_ptrs = type { ptr, ptr }

@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@nv50_fifo_gpfifo_oclass = external dso_local constant %struct.nvkm_fifo_chan_oclass, align 4
@nv50_fifo = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] } { ptr @nv50_fifo_dtor, ptr @nv50_fifo_oneinit, ptr null, ptr @nv50_fifo_init, ptr null, ptr @nv04_fifo_intr, ptr null, ptr @nv04_fifo_engine_id, ptr @nv04_fifo_id_engine, ptr @nv04_fifo_pause, ptr @nv04_fifo_start, ptr null, ptr null, ptr null, ptr null, ptr null, [2 x ptr] [ptr @nv50_fifo_gpfifo_oclass, ptr null] }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_fifo_runlist_update(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %2) #3
  tail call fastcc void @nv50_fifo_runlist_update_locked(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef %2) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_fifo_runlist_update_locked(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nv50_fifo, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr %struct.nv50_fifo, ptr %0, i32 0, i32 1, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq i32 %5, 0
  %9 = zext i1 %8 to i32
  store i32 %9, ptr %4, align 4
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.nvkm_memory_func, ptr %10, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = tail call ptr %12(ptr noundef %7) #3
  %14 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %19 = getelementptr inbounds %struct.nvkm_memory, ptr %7, i32 0, i32 1
  br label %20

20:                                               ; preds = %36, %17
  %21 = phi i32 [ 0, %17 ], [ %37, %36 ]
  %22 = phi i32 [ 0, %17 ], [ %38, %36 ]
  %23 = load ptr, ptr %18, align 4
  %24 = shl i32 %22, 2
  %25 = add i32 %24, 9728
  %26 = getelementptr i8, ptr %23, i32 %25
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %36, label %29

29:                                               ; preds = %20
  %30 = load ptr, ptr %19, align 4
  %31 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = add i32 %21, 1
  %34 = shl i32 %21, 2
  %35 = sext i32 %34 to i64
  tail call void %32(ptr noundef %7, i64 noundef %35, i32 noundef %22) #3
  br label %36

36:                                               ; preds = %29, %20
  %37 = phi i32 [ %33, %29 ], [ %21, %20 ]
  %38 = add nuw nsw i32 %22, 1
  %39 = load i32, ptr %14, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %20, label %41

41:                                               ; preds = %36, %1
  %42 = phi i32 [ 0, %1 ], [ %37, %36 ]
  %43 = load ptr, ptr %7, align 4
  %44 = getelementptr inbounds %struct.nvkm_memory_func, ptr %43, i32 0, i32 8
  %45 = load ptr, ptr %44, align 4
  tail call void %45(ptr noundef %7) #3
  %46 = load ptr, ptr %7, align 4
  %47 = getelementptr inbounds %struct.nvkm_memory_func, ptr %46, i32 0, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i64 %48(ptr noundef %7) #3
  %50 = lshr i64 %49, 12
  %51 = trunc i64 %50 to i32
  %52 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 13044
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %51) #3, !srcloc !11
  %55 = load ptr, ptr %52, align 4
  %56 = getelementptr i8, ptr %55, i32 13036
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %42) #3, !srcloc !11
  %57 = load ptr, ptr %52, align 4
  %58 = getelementptr i8, ptr %57, i32 9472
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 257) #3, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_fifo_oneinit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nv50_fifo, ptr %0, i32 0, i32 1
  %5 = tail call i32 @nvkm_memory_new(ptr noundef %3, i32 noundef 0, i64 noundef 512, i32 noundef 4096, i1 noundef zeroext false, ptr noundef %4) #3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr %struct.nv50_fifo, ptr %0, i32 0, i32 1, i32 1
  %9 = tail call i32 @nvkm_memory_new(ptr noundef %3, i32 noundef 0, i64 noundef 512, i32 noundef 4096, i1 noundef zeroext false, ptr noundef %8) #3
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi i32 [ %9, %7 ], [ %5, %1 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_fifo_init(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 512
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %8 = and i32 %7, -257
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #3, !srcloc !11
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 512
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %14 = or i32 %13, 256
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #3, !srcloc !11
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr i8, ptr %17, i32 9484
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 1866267700) #3, !srcloc !11
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr i8, ptr %19, i32 8260
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 16793599) #3, !srcloc !11
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr i8, ptr %21, i32 8448
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 -1) #3, !srcloc !11
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr i8, ptr %23, i32 8512
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -1073741825) #3, !srcloc !11
  br label %25

25:                                               ; preds = %25, %1
  %26 = phi i32 [ 0, %1 ], [ %31, %25 ]
  %27 = load ptr, ptr %4, align 4
  %28 = shl i32 %26, 2
  %29 = add nuw nsw i32 %28, 9728
  %30 = getelementptr i8, ptr %27, i32 %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 0) #3, !srcloc !11
  %31 = add nuw nsw i32 %26, 1
  %32 = icmp eq i32 %31, 128
  br i1 %32, label %33, label %25

33:                                               ; preds = %25
  tail call fastcc void @nv50_fifo_runlist_update_locked(ptr noundef %0)
  %34 = load ptr, ptr %4, align 4
  %35 = getelementptr i8, ptr %34, i32 12800
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 1) #3, !srcloc !11
  %36 = load ptr, ptr %4, align 4
  %37 = getelementptr i8, ptr %36, i32 12880
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 1) #3, !srcloc !11
  %38 = load ptr, ptr %4, align 4
  %39 = getelementptr i8, ptr %38, i32 9472
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 1) #3, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nv50_fifo_dtor(ptr noundef returned %0) #0 {
  %2 = getelementptr inbounds %struct.nv50_fifo, ptr %0, i32 0, i32 1
  %3 = getelementptr %struct.nv50_fifo, ptr %0, i32 0, i32 1, i32 1
  tail call void @nvkm_memory_unref(ptr noundef %3) #3
  tail call void @nvkm_memory_unref(ptr noundef %2) #3
  ret ptr %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_fifo_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 748) #4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  store ptr %7, ptr %4, align 4
  %10 = tail call i32 @nvkm_fifo_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 128, ptr noundef nonnull %7) #3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.nvkm_fifo, ptr %7, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %13) #3
  tail call void @_set_bit(i32 noundef 127, ptr noundef %13) #3
  br label %14

14:                                               ; preds = %12, %9, %5
  %15 = phi i32 [ 0, %12 ], [ -12, %5 ], [ %10, %9 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fifo_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_fifo_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 748) #4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  store ptr %6, ptr %3, align 4
  %9 = tail call i32 @nvkm_fifo_ctor(ptr noundef nonnull @nv50_fifo, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 128, ptr noundef nonnull %6) #3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.nvkm_fifo, ptr %6, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %12) #3
  tail call void @_set_bit(i32 noundef 127, ptr noundef %12) #3
  br label %13

13:                                               ; preds = %11, %8, %4
  %14 = phi i32 [ 0, %11 ], [ -12, %4 ], [ %9, %8 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_fifo_intr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_fifo_engine_id(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv04_fifo_id_engine(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_fifo_pause(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_fifo_start(ptr noundef, ptr noundef) #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind allocsize(2) }

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
!8 = !{i64 3947763}
!9 = !{i64 2151487216}
!10 = !{i64 2151488438}
!11 = !{i64 3947345}
