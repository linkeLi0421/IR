; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv04.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv04.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_fifo_chan_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
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
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.nvkm_instmem = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.list_head, %struct.list_head, i32, %struct.mutex, ptr, ptr, ptr, ptr }
%struct.nvkm_ramht = type { ptr, ptr, ptr, i32, i32, [0 x %struct.nvkm_ramht_data] }
%struct.nvkm_ramht_data = type { ptr, i32, i32 }
%struct.nvkm_gpuobj = type { %union.anon.1, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.1 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv04_fifo = type { %struct.nvkm_fifo, ptr }

@.str = private unnamed_addr constant [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv04.c\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s: intr %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"%s: CACHE_ERROR - ch %d [%s] subc %d mthd %04x data %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.5 = private unnamed_addr constant [110 x i8] c"%s: DMA_PUSHER - ch %d [%s] get %02x%08x put %02x%08x ib_get %08x ib_put %08x state %08x (err: %s) push %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [78 x i8] c"%s: DMA_PUSHER - ch %d [%s] get %08x put %08x state %08x (err: %s) push %08x\0A\00", align 1
@nv_dma_state_err.desc = internal unnamed_addr constant [8 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"CALL_SUBR_ACTIVE\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"INVALID_MTHD\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"RET_SUBR_INACTIVE\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"INVALID_CMD\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"IB_EMPTY\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"MEM_FAULT\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"UNK\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@nv04_fifo_dma_oclass = external dso_local constant %struct.nvkm_fifo_chan_oclass, align 4
@nv04_fifo = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] } { ptr null, ptr null, ptr null, ptr @nv04_fifo_init, ptr null, ptr @nv04_fifo_intr, ptr null, ptr @nv04_fifo_engine_id, ptr @nv04_fifo_id_engine, ptr @nv04_fifo_pause, ptr @nv04_fifo_start, ptr null, ptr null, ptr null, ptr null, ptr null, [2 x ptr] [ptr @nv04_fifo_dma_oclass, ptr null] }, align 4
@nv04_fifo_ramfc = internal constant [9 x { i8, i8, i8, i32 }] [{ i8, i8, i8, i32 } { i8 32, i8 0, i8 0, i32 12864 }, { i8, i8, i8, i32 } { i8 32, i8 32, i8 0, i32 12868 }, { i8, i8, i8, i32 } { i8 16, i8 64, i8 0, i32 12844 }, { i8, i8, i8, i32 } { i8 16, i8 68, i8 0, i32 12960 }, { i8, i8, i8, i32 } { i8 32, i8 96, i8 0, i32 12840 }, { i8, i8, i8, i32 } { i8 32, i8 -128, i8 0, i32 12836 }, { i8, i8, i8, i32 } { i8 32, i8 -96, i8 0, i32 12928 }, { i8, i8, i8, i32 } { i8 32, i8 -64, i8 0, i32 12884 }, { i8, i8, i8, i32 } zeroinitializer], align 4
@switch.table.nv04_fifo_id_engine = private unnamed_addr constant [4 x i32] [i32 48, i32 33, i32 36, i32 31], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv04_fifo_pause(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca %struct.nvkm_timer_wait, align 8
  %4 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 5
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #6
  store i32 %7, ptr %1, align 4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 9472
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #6, !srcloc !9
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr i8, ptr %11, i32 12880
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %14 = and i32 %13, -2
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr i8, ptr %15, i32 12880
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #6, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !12
  call void @nvkm_timer_wait_init(ptr noundef %5, i64 noundef 2000000000, ptr noundef nonnull %3) #6
  br label %17

17:                                               ; preds = %23, %2
  %18 = load ptr, ptr %8, align 4
  %19 = getelementptr i8, ptr %18, i32 12880
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #6, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %21 = and i32 %20, 4096
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %45, label %23

23:                                               ; preds = %17
  %24 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %3) #6
  %25 = icmp sgt i64 %24, -1
  br i1 %25, label %17, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr inbounds %struct.nvkm_timer, ptr %27, i32 0, i32 1, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = call ptr @dev_driver_string(ptr noundef %31) #6
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds %struct.nvkm_timer, ptr %33, i32 0, i32 1, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %26
  %42 = load ptr, ptr %37, align 4
  br label %43

43:                                               ; preds = %41, %26
  %44 = phi ptr [ %42, %41 ], [ %39, %26 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 74, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %32, ptr noundef %44) #6
  br label %45

45:                                               ; preds = %43, %17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #6
  %46 = load ptr, ptr %8, align 4
  %47 = getelementptr i8, ptr %46, i32 12880
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #6, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %49 = and i32 %48, 16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = load ptr, ptr %8, align 4
  %53 = getelementptr i8, ptr %52, i32 8448
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 1) #6, !srcloc !9
  br label %54

54:                                               ; preds = %51, %45
  %55 = load ptr, ptr %8, align 4
  %56 = getelementptr i8, ptr %55, i32 12888
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 0) #6, !srcloc !9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv04_fifo_start(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %1, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 12880
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %10 = or i32 %9, 1
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr i8, ptr %11, i32 12880
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #6, !srcloc !9
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr i8, ptr %13, i32 9472
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 1) #6, !srcloc !9
  %15 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %5) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nv04_fifo_id_engine(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp ult i32 %1, 4
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %11

5:                                                ; preds = %2
  %6 = getelementptr inbounds [4 x i32], ptr @switch.table.nv04_fifo_id_engine, i32 0, i32 %1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @nvkm_device_engine(ptr noundef %9, i32 noundef %7, i32 noundef 0) #6
  br label %11

11:                                               ; preds = %5, %4
  %12 = phi ptr [ null, %4 ], [ %10, %5 ]
  ret ptr %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_device_engine(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv04_fifo_engine_id(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 2
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %8 [
    i32 48, label %9
    i32 33, label %5
    i32 36, label %6
    i32 31, label %7
  ]

5:                                                ; preds = %2
  br label %9

6:                                                ; preds = %2
  br label %9

7:                                                ; preds = %2
  br label %9

8:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 124, i32 noundef 9, ptr noundef null) #6
  br label %9

9:                                                ; preds = %8, %7, %6, %5, %2
  %10 = phi i32 [ 0, %8 ], [ 3, %7 ], [ 2, %6 ], [ 1, %5 ], [ 0, %2 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv04_fifo_intr(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 8512
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr i8, ptr %12, i32 8448
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %15 = and i32 %14, %11
  %16 = load ptr, ptr %8, align 4
  %17 = getelementptr i8, ptr %16, i32 9472
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %19 = load ptr, ptr %8, align 4
  %20 = getelementptr i8, ptr %19, i32 9472
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 0) #6, !srcloc !9
  %21 = load ptr, ptr %8, align 4
  %22 = getelementptr i8, ptr %21, i32 12804
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %24 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, -1
  %27 = and i32 %26, %23
  %28 = load ptr, ptr %8, align 4
  %29 = getelementptr i8, ptr %28, i32 12912
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %31 = and i32 %15, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %160, label %33

33:                                               ; preds = %1
  %34 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store ptr null, ptr %4, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !12
  %35 = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 11
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 12880
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %39 = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 15
  %40 = load i32, ptr %39, align 8
  %41 = icmp ult i32 %40, 64
  %42 = load ptr, ptr %35, align 4
  %43 = shl i32 %30, 1
  %44 = and i32 %43, 4088
  br i1 %41, label %45, label %53

45:                                               ; preds = %33
  %46 = add nuw nsw i32 %44, 14336
  %47 = getelementptr i8, ptr %42, i32 %46
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %49 = load ptr, ptr %35, align 4
  %50 = add nuw nsw i32 %44, 14340
  %51 = getelementptr i8, ptr %49, i32 %50
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  br label %61

53:                                               ; preds = %33
  %54 = or i32 %44, 589824
  %55 = getelementptr i8, ptr %42, i32 %54
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %57 = load ptr, ptr %35, align 4
  %58 = or i32 %44, 589828
  %59 = getelementptr i8, ptr %57, i32 %58
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  br label %61

61:                                               ; preds = %53, %45
  %62 = phi i32 [ %48, %45 ], [ %56, %53 ]
  %63 = phi i32 [ %52, %45 ], [ %60, %53 ]
  %64 = and i32 %38, 256
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %107, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 68
  %68 = load ptr, ptr %67, align 8
  %69 = lshr i32 %62, 13
  %70 = and i32 %69, 7
  %71 = and i32 %62, 8188
  %72 = shl nuw nsw i32 %70, 2
  %73 = shl nuw i32 15, %72
  %74 = load ptr, ptr %35, align 4
  %75 = getelementptr i8, ptr %74, i32 12928
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %77 = icmp eq i32 %71, 0
  br i1 %77, label %78, label %99

78:                                               ; preds = %66
  %79 = xor i32 %73, -1
  %80 = and i32 %76, %79
  %81 = load ptr, ptr %35, align 4
  %82 = getelementptr i8, ptr %81, i32 12928
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %80) #6, !srcloc !9
  br label %83

83:                                               ; preds = %96, %78
  %84 = phi i32 [ %80, %78 ], [ %76, %96 ]
  %85 = load ptr, ptr %35, align 4
  %86 = getelementptr i8, ptr %85, i32 12888
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %88 = and i32 %87, 65535
  br label %89

89:                                               ; preds = %99, %83
  %90 = phi i32 [ %88, %83 ], [ %63, %99 ]
  %91 = phi i32 [ %84, %83 ], [ %76, %99 ]
  %92 = and i32 %91, %73
  %93 = icmp eq i32 %92, 0
  %94 = icmp ne ptr %68, null
  %95 = select i1 %93, i1 %94, i1 false
  br i1 %95, label %105, label %107

96:                                               ; preds = %99
  %97 = add nsw i32 %71, -384
  %98 = icmp ult i32 %97, 125
  br i1 %98, label %83, label %107

99:                                               ; preds = %66
  %100 = add nsw i32 %71, -256
  %101 = icmp ult i32 %100, 125
  %102 = add nsw i32 %71, -512
  %103 = icmp ult i32 %102, 7677
  %104 = or i1 %101, %103
  br i1 %104, label %89, label %96

105:                                              ; preds = %89
  %106 = tail call zeroext i1 @nvkm_sw_mthd(ptr noundef nonnull %68, i32 noundef %27, i32 noundef %70, i32 noundef %71, i32 noundef %90) #6
  br i1 %106, label %129, label %107

107:                                              ; preds = %105, %96, %89, %61
  %108 = call ptr @nvkm_fifo_chan_chid(ptr noundef %0, i32 noundef %27, ptr noundef nonnull %5) #6
  store ptr %108, ptr %4, align 4
  %109 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 5
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %127, label %112

112:                                              ; preds = %107
  %113 = load ptr, ptr %6, align 4
  %114 = getelementptr inbounds %struct.nvkm_device, ptr %113, i32 0, i32 2
  %115 = load ptr, ptr %114, align 8
  %116 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 4
  %117 = icmp eq ptr %108, null
  br i1 %117, label %122, label %118

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %108, i32 0, i32 3, i32 1
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.nvkm_client, ptr %120, i32 0, i32 1
  br label %122

122:                                              ; preds = %118, %112
  %123 = phi ptr [ %121, %118 ], [ @.str.4, %112 ]
  %124 = lshr i32 %62, 13
  %125 = and i32 %124, 7
  %126 = and i32 %62, 8188
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.3, ptr noundef %116, i32 noundef %27, ptr noundef %123, i32 noundef %125, i32 noundef %126, i32 noundef %63) #7
  br label %127

127:                                              ; preds = %122, %107
  %128 = load i32, ptr %5, align 4
  call void @nvkm_fifo_chan_put(ptr noundef %0, i32 noundef %128, ptr noundef nonnull %4) #6
  br label %129

129:                                              ; preds = %127, %105
  %130 = load ptr, ptr %35, align 4
  %131 = getelementptr i8, ptr %130, i32 12832
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 0) #6, !srcloc !9
  %132 = load ptr, ptr %35, align 4
  %133 = getelementptr i8, ptr %132, i32 8448
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 1) #6, !srcloc !9
  %134 = load ptr, ptr %35, align 4
  %135 = getelementptr i8, ptr %134, i32 12800
  %136 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #6, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %137 = and i32 %136, -2
  %138 = load ptr, ptr %35, align 4
  %139 = getelementptr i8, ptr %138, i32 12800
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %137) #6, !srcloc !9
  %140 = add i32 %30, 4
  %141 = load ptr, ptr %35, align 4
  %142 = getelementptr i8, ptr %141, i32 12912
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 %140) #6, !srcloc !9
  %143 = load ptr, ptr %35, align 4
  %144 = getelementptr i8, ptr %143, i32 12800
  %145 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %144) #6, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %146 = or i32 %145, 1
  %147 = load ptr, ptr %35, align 4
  %148 = getelementptr i8, ptr %147, i32 12800
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %148, i32 %146) #6, !srcloc !9
  %149 = load ptr, ptr %35, align 4
  %150 = getelementptr i8, ptr %149, i32 12888
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 0) #6, !srcloc !9
  %151 = load ptr, ptr %35, align 4
  %152 = getelementptr i8, ptr %151, i32 12832
  %153 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %152) #6, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %154 = or i32 %153, 1
  %155 = load ptr, ptr %35, align 4
  %156 = getelementptr i8, ptr %155, i32 12832
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 %154) #6, !srcloc !9
  %157 = load ptr, ptr %35, align 4
  %158 = getelementptr i8, ptr %157, i32 12880
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 1) #6, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %159 = and i32 %15, -2
  br label %160

160:                                              ; preds = %129, %1
  %161 = phi i32 [ %159, %129 ], [ %15, %1 ]
  %162 = and i32 %161, 4096
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %256, label %164

164:                                              ; preds = %160
  %165 = load ptr, ptr %6, align 4
  %166 = getelementptr inbounds %struct.nvkm_device, ptr %165, i32 0, i32 11
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr i8, ptr %167, i32 12868
  %169 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %168) #6, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %170 = load ptr, ptr %166, align 4
  %171 = getelementptr i8, ptr %170, i32 12864
  %172 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %171) #6, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %173 = load ptr, ptr %166, align 4
  %174 = getelementptr i8, ptr %173, i32 12832
  %175 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %174) #6, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %176 = load ptr, ptr %166, align 4
  %177 = getelementptr i8, ptr %176, i32 12840
  %178 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %177) #6, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !12
  %179 = call ptr @nvkm_fifo_chan_chid(ptr noundef %0, i32 noundef %27, ptr noundef nonnull %3) #6
  store ptr %179, ptr %2, align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %185, label %181

181:                                              ; preds = %164
  %182 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %179, i32 0, i32 3, i32 1
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr inbounds %struct.nvkm_client, ptr %183, i32 0, i32 1
  br label %185

185:                                              ; preds = %181, %164
  %186 = phi ptr [ %184, %181 ], [ @.str.4, %164 ]
  %187 = getelementptr inbounds %struct.nvkm_device, ptr %165, i32 0, i32 15
  %188 = load i32, ptr %187, align 8
  %189 = icmp eq i32 %188, 80
  br i1 %189, label %190, label %230

190:                                              ; preds = %185
  %191 = load ptr, ptr %166, align 4
  %192 = getelementptr i8, ptr %191, i32 13096
  %193 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %192) #6, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %194 = load ptr, ptr %166, align 4
  %195 = getelementptr i8, ptr %194, i32 13088
  %196 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %195) #6, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %197 = load ptr, ptr %166, align 4
  %198 = getelementptr i8, ptr %197, i32 13108
  %199 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %198) #6, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %200 = load ptr, ptr %166, align 4
  %201 = getelementptr i8, ptr %200, i32 13104
  %202 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %201) #6, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %203 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 5
  %204 = load i32, ptr %203, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %214, label %206

206:                                              ; preds = %190
  %207 = load ptr, ptr %6, align 4
  %208 = getelementptr inbounds %struct.nvkm_device, ptr %207, i32 0, i32 2
  %209 = load ptr, ptr %208, align 8
  %210 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 4
  %211 = lshr i32 %178, 29
  %212 = getelementptr [8 x ptr], ptr @nv_dma_state_err.desc, i32 0, i32 %211
  %213 = load ptr, ptr %212, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %209, ptr noundef nonnull @.str.5, ptr noundef %210, i32 noundef %27, ptr noundef %186, i32 noundef %193, i32 noundef %169, i32 noundef %196, i32 noundef %172, i32 noundef %199, i32 noundef %202, i32 noundef %178, ptr noundef %213, i32 noundef %175) #7
  br label %214

214:                                              ; preds = %206, %190
  %215 = load ptr, ptr %166, align 4
  %216 = getelementptr i8, ptr %215, i32 13156
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %216, i32 0) #6, !srcloc !9
  %217 = icmp eq i32 %169, %172
  %218 = icmp eq i32 %193, %196
  %219 = select i1 %217, i1 %218, i1 false
  br i1 %219, label %225, label %220

220:                                              ; preds = %214
  %221 = load ptr, ptr %166, align 4
  %222 = getelementptr i8, ptr %221, i32 12868
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %222, i32 %172) #6, !srcloc !9
  %223 = load ptr, ptr %166, align 4
  %224 = getelementptr i8, ptr %223, i32 13096
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %224, i32 %196) #6, !srcloc !9
  br label %247

225:                                              ; preds = %214
  %226 = icmp eq i32 %199, %202
  br i1 %226, label %247, label %227

227:                                              ; preds = %225
  %228 = load ptr, ptr %166, align 4
  %229 = getelementptr i8, ptr %228, i32 13108
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %229, i32 %202) #6, !srcloc !9
  br label %247

230:                                              ; preds = %185
  %231 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 5
  %232 = load i32, ptr %231, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %242, label %234

234:                                              ; preds = %230
  %235 = load ptr, ptr %6, align 4
  %236 = getelementptr inbounds %struct.nvkm_device, ptr %235, i32 0, i32 2
  %237 = load ptr, ptr %236, align 8
  %238 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 4
  %239 = lshr i32 %178, 29
  %240 = getelementptr [8 x ptr], ptr @nv_dma_state_err.desc, i32 0, i32 %239
  %241 = load ptr, ptr %240, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %237, ptr noundef nonnull @.str.6, ptr noundef %238, i32 noundef %27, ptr noundef %186, i32 noundef %169, i32 noundef %172, i32 noundef %178, ptr noundef %241, i32 noundef %175) #7
  br label %242

242:                                              ; preds = %234, %230
  %243 = icmp eq i32 %169, %172
  br i1 %243, label %247, label %244

244:                                              ; preds = %242
  %245 = load ptr, ptr %166, align 4
  %246 = getelementptr i8, ptr %245, i32 12868
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %246, i32 %172) #6, !srcloc !9
  br label %247

247:                                              ; preds = %244, %242, %227, %225, %220
  %248 = load i32, ptr %3, align 4
  call void @nvkm_fifo_chan_put(ptr noundef %0, i32 noundef %248, ptr noundef nonnull %2) #6
  %249 = load ptr, ptr %166, align 4
  %250 = getelementptr i8, ptr %249, i32 12840
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %250, i32 0) #6, !srcloc !9
  %251 = load ptr, ptr %166, align 4
  %252 = getelementptr i8, ptr %251, i32 12832
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %252, i32 1) #6, !srcloc !9
  %253 = load ptr, ptr %166, align 4
  %254 = getelementptr i8, ptr %253, i32 8448
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %254, i32 4096) #6, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %255 = and i32 %161, -4097
  br label %256

256:                                              ; preds = %247, %160
  %257 = phi i32 [ %255, %247 ], [ %161, %160 ]
  %258 = and i32 %257, 1048576
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %275, label %260

260:                                              ; preds = %256
  %261 = and i32 %257, -1048577
  %262 = load ptr, ptr %8, align 4
  %263 = getelementptr i8, ptr %262, i32 8448
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %263, i32 1048576) #6, !srcloc !9
  %264 = load ptr, ptr %8, align 4
  %265 = getelementptr i8, ptr %264, i32 12908
  %266 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %265) #6, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %267 = or i32 %266, 1
  %268 = load ptr, ptr %8, align 4
  %269 = getelementptr i8, ptr %268, i32 12908
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %269, i32 %267) #6, !srcloc !9
  %270 = add i32 %30, 4
  %271 = load ptr, ptr %8, align 4
  %272 = getelementptr i8, ptr %271, i32 12912
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %272, i32 %270) #6, !srcloc !9
  %273 = load ptr, ptr %8, align 4
  %274 = getelementptr i8, ptr %273, i32 12880
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %274, i32 1) #6, !srcloc !9
  br label %275

275:                                              ; preds = %260, %256
  %276 = phi i32 [ %261, %260 ], [ %257, %256 ]
  %277 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 15
  %278 = load i32, ptr %277, align 8
  %279 = icmp eq i32 %278, 80
  br i1 %279, label %280, label %295

280:                                              ; preds = %275
  %281 = and i32 %276, 16
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %287, label %283

283:                                              ; preds = %280
  %284 = and i32 %276, -17
  %285 = load ptr, ptr %8, align 4
  %286 = getelementptr i8, ptr %285, i32 8448
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %286, i32 16) #6, !srcloc !9
  br label %287

287:                                              ; preds = %283, %280
  %288 = phi i32 [ %284, %283 ], [ %276, %280 ]
  %289 = and i32 %288, 1073741824
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %295, label %291

291:                                              ; preds = %287
  %292 = load ptr, ptr %8, align 4
  %293 = getelementptr i8, ptr %292, i32 8448
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %293, i32 1073741824) #6, !srcloc !9
  call void @nvkm_fifo_uevent(ptr noundef %0) #6
  %294 = and i32 %288, -1073741825
  br label %295

295:                                              ; preds = %291, %287, %275
  %296 = phi i32 [ %294, %291 ], [ %288, %287 ], [ %276, %275 ]
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %317, label %298

298:                                              ; preds = %295
  %299 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 5
  %300 = load i32, ptr %299, align 4
  %301 = icmp ugt i32 %300, 1
  br i1 %301, label %302, label %307

302:                                              ; preds = %298
  %303 = load ptr, ptr %6, align 4
  %304 = getelementptr inbounds %struct.nvkm_device, ptr %303, i32 0, i32 2
  %305 = load ptr, ptr %304, align 8
  %306 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %305, ptr noundef nonnull @.str.2, ptr noundef %306, i32 noundef %296) #7
  br label %307

307:                                              ; preds = %302, %298
  %308 = load ptr, ptr %8, align 4
  %309 = getelementptr i8, ptr %308, i32 8512
  %310 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %309) #6, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %311 = xor i32 %296, -1
  %312 = and i32 %310, %311
  %313 = load ptr, ptr %8, align 4
  %314 = getelementptr i8, ptr %313, i32 8512
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %314, i32 %312) #6, !srcloc !9
  %315 = load ptr, ptr %8, align 4
  %316 = getelementptr i8, ptr %315, i32 8448
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %316, i32 %296) #6, !srcloc !9
  br label %317

317:                                              ; preds = %307, %295
  %318 = and i32 %18, 1
  %319 = load ptr, ptr %8, align 4
  %320 = getelementptr i8, ptr %319, i32 9472
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %320, i32 %318) #6, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_uevent(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv04_fifo_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 32
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_instmem, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_instmem, ptr %5, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_instmem, ptr %5, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 8256
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 255) #6, !srcloc !9
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr i8, ptr %15, i32 8260
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 16908287) #6, !srcloc !9
  %17 = getelementptr inbounds %struct.nvkm_ramht, ptr %7, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = shl i32 %18, 16
  %20 = add i32 %19, -589824
  %21 = getelementptr inbounds %struct.nvkm_ramht, ptr %7, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %22, i32 0, i32 4
  %24 = load i64, ptr %23, align 8
  %25 = lshr i64 %24, 8
  %26 = trunc i64 %25 to i32
  %27 = or i32 %20, %26
  %28 = or i32 %27, 50331648
  %29 = load ptr, ptr %12, align 4
  %30 = getelementptr i8, ptr %29, i32 8720
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #6, !srcloc !9
  %31 = load ptr, ptr %9, align 4
  %32 = getelementptr inbounds %struct.nvkm_memory_func, ptr %31, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i64 %33(ptr noundef %9) #6
  %35 = lshr i64 %34, 8
  %36 = trunc i64 %35 to i32
  %37 = load ptr, ptr %12, align 4
  %38 = getelementptr i8, ptr %37, i32 8728
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #6, !srcloc !9
  %39 = load ptr, ptr %11, align 4
  %40 = getelementptr inbounds %struct.nvkm_memory_func, ptr %39, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i64 %41(ptr noundef %11) #6
  %43 = lshr i64 %42, 8
  %44 = trunc i64 %43 to i32
  %45 = load ptr, ptr %12, align 4
  %46 = getelementptr i8, ptr %45, i32 8724
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #6, !srcloc !9
  %47 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, -1
  %50 = load ptr, ptr %12, align 4
  %51 = getelementptr i8, ptr %50, i32 12804
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #6, !srcloc !9
  %52 = load ptr, ptr %12, align 4
  %53 = getelementptr i8, ptr %52, i32 8448
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 -1) #6, !srcloc !9
  %54 = load ptr, ptr %12, align 4
  %55 = getelementptr i8, ptr %54, i32 8512
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 -1) #6, !srcloc !9
  %56 = load ptr, ptr %12, align 4
  %57 = getelementptr i8, ptr %56, i32 12800
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 1) #6, !srcloc !9
  %58 = load ptr, ptr %12, align 4
  %59 = getelementptr i8, ptr %58, i32 12880
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 1) #6, !srcloc !9
  %60 = load ptr, ptr %12, align 4
  %61 = getelementptr i8, ptr %60, i32 9472
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 1) #6, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv04_fifo_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 740) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.nv04_fifo, ptr %9, i32 0, i32 1
  store ptr %5, ptr %12, align 8
  store ptr %9, ptr %6, align 4
  %13 = tail call i32 @nvkm_fifo_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %9) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = add i32 %4, -1
  %17 = getelementptr inbounds %struct.nvkm_fifo, ptr %9, i32 0, i32 2
  tail call void @_set_bit(i32 noundef %16, ptr noundef %17) #6
  br label %18

18:                                               ; preds = %15, %11, %7
  %19 = phi i32 [ 0, %15 ], [ -12, %7 ], [ %13, %11 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fifo_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv04_fifo_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 740) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nv04_fifo, ptr %6, i32 0, i32 1
  store ptr @nv04_fifo_ramfc, ptr %9, align 8
  store ptr %6, ptr %3, align 4
  %10 = tail call i32 @nvkm_fifo_ctor(ptr noundef nonnull @nv04_fifo, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 16, ptr noundef nonnull %6) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nvkm_fifo, ptr %6, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 15, ptr noundef %13) #6
  br label %14

14:                                               ; preds = %12, %8, %4
  %15 = phi i32 [ 0, %12 ], [ -12, %4 ], [ %10, %8 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_fifo_chan_chid(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_chan_put(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_sw_mthd(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }

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
!8 = !{i64 2151496691}
!9 = !{i64 3955598}
!10 = !{i64 3956016}
!11 = !{i64 2151495469}
!12 = !{!"auto-init"}
