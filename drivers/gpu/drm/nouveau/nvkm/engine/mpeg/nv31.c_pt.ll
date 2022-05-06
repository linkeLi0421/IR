; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/mpeg/nv31.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/mpeg/nv31.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv31_mpeg_func = type { ptr }
%struct.anon = type { ptr }
%struct.anon.136 = type { ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.137 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.137 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nv31_mpeg_chan = type { %struct.nvkm_object, ptr, ptr }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.135, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.135 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.nv31_mpeg = type { ptr, %struct.nvkm_engine, ptr }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }

@nv31_mpeg_object = dso_local constant %struct.nvkm_object_func { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv31_mpeg_object_bind, ptr null }, align 4
@nv31_mpeg_chan = internal constant %struct.nvkm_object_func { ptr @nv31_mpeg_chan_dtor, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/mpeg/nv31.c\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"%s: timeout %08x\0A\00", align 1
@nv31_mpeg = internal constant %struct.nv31_mpeg_func { ptr @nv31_mpeg_mthd_dma }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@nv31_mpeg_ = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.136, ptr, [2 x %struct.nvkm_sclass] } { ptr @nv31_mpeg_dtor, ptr null, ptr null, ptr null, ptr @nv31_mpeg_init, ptr null, ptr @nv31_mpeg_intr, ptr @nv31_mpeg_tile, ptr null, %struct.anon zeroinitializer, %struct.anon.136 { ptr @nv31_mpeg_chan_new, ptr null }, ptr null, [2 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 12660, ptr @nv31_mpeg_object, ptr null }, %struct.nvkm_sclass zeroinitializer] }, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"%s: ch %d [%s] %08x %08x %08x %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"%s: inst %08x dma0 %08x dma1 %08x dma2 %08x\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv31_mpeg_object_bind(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvkm_engine, ptr %6, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @nvkm_gpuobj_new(ptr noundef %8, i32 noundef 16, i32 noundef %2, i1 noundef zeroext false, ptr noundef %1, ptr noundef %3) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %4
  %12 = load ptr, ptr %3, align 4
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr %14(ptr noundef %12) #7
  %16 = load ptr, ptr %3, align 4
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  tail call void %19(ptr noundef %16, i32 noundef 0, i32 noundef %21) #7
  %22 = load ptr, ptr %3, align 4
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  tail call void %25(ptr noundef %22, i32 noundef 4, i32 noundef 0) #7
  %26 = load ptr, ptr %3, align 4
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  tail call void %29(ptr noundef %26, i32 noundef 8, i32 noundef 0) #7
  %30 = load ptr, ptr %3, align 4
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %31, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  tail call void %33(ptr noundef %30, i32 noundef 12, i32 noundef 0) #7
  %34 = load ptr, ptr %3, align 4
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  tail call void %37(ptr noundef %34) #7
  br label %38

38:                                               ; preds = %11, %4
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv31_mpeg_chan_new(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_oclass, ptr %1, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 80) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %5, i32 -4
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nv31_mpeg_chan, ptr noundef %1, ptr noundef nonnull %7) #7
  %11 = getelementptr inbounds %struct.nv31_mpeg_chan, ptr %7, i32 0, i32 1
  store ptr %10, ptr %11, align 8
  %12 = getelementptr inbounds %struct.nv31_mpeg_chan, ptr %7, i32 0, i32 2
  store ptr %0, ptr %12, align 4
  store ptr %7, ptr %2, align 4
  %13 = getelementptr inbounds %struct.nvkm_engine, ptr %5, i32 0, i32 2
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #7
  %15 = getelementptr i8, ptr %5, i32 88
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  store ptr %7, ptr %15, align 4
  br label %19

19:                                               ; preds = %18, %9
  %20 = phi i32 [ -16, %9 ], [ 0, %18 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %14) #7
  br label %21

21:                                               ; preds = %19, %3
  %22 = phi i32 [ %20, %19 ], [ -12, %3 ]
  ret i32 %22
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv31_mpeg_tile(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %2, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = shl i32 %1, 4
  %11 = add i32 %10, 45064
  %12 = getelementptr i8, ptr %9, i32 %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %7) #7, !srcloc !9
  %13 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %2, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = load ptr, ptr %8, align 4
  %16 = add i32 %10, 45060
  %17 = getelementptr i8, ptr %15, i32 %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %14) #7, !srcloc !9
  %18 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %2, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr %8, align 4
  %21 = add i32 %10, 45056
  %22 = getelementptr i8, ptr %20, i32 %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %19) #7, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv31_mpeg_init(ptr noundef %0) #0 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 45280
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 32) #7, !srcloc !9
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr i8, ptr %8, i32 45288
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 32) #7, !srcloc !9
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr i8, ptr %10, i32 45868
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #7, !srcloc !9
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 45844
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 256) #7, !srcloc !9
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr i8, ptr %14, i32 45600
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 49) #7, !srcloc !9
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr i8, ptr %16, i32 45824
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 33562305) #7, !srcloc !9
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr i8, ptr %18, i32 45868
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %21 = or i32 %20, 1
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr i8, ptr %22, i32 45868
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #7, !srcloc !9
  %24 = load ptr, ptr %5, align 4
  %25 = getelementptr i8, ptr %24, i32 45312
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 -1) #7, !srcloc !9
  %26 = load ptr, ptr %5, align 4
  %27 = getelementptr i8, ptr %26, i32 45376
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 -1) #7, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !12
  call void @nvkm_timer_wait_init(ptr noundef %4, i64 noundef 2000000000, ptr noundef nonnull %2) #7
  br label %28

28:                                               ; preds = %34, %1
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr i8, ptr %29, i32 45568
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #7, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %67, label %34

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
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 247, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %43, ptr noundef %55) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #7
  %56 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 5
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %54
  %60 = load ptr, ptr %3, align 4
  %61 = getelementptr inbounds %struct.nvkm_device, ptr %60, i32 0, i32 2
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 4
  %64 = load ptr, ptr %5, align 4
  %65 = getelementptr i8, ptr %64, i32 45568
  %66 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #7, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.2, ptr noundef %63, i32 noundef %66) #9
  br label %68

67:                                               ; preds = %28
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #7
  br label %68

68:                                               ; preds = %67, %59, %54
  %69 = phi i32 [ 0, %67 ], [ -16, %59 ], [ -16, %54 ]
  ret i32 %69
}

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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv31_mpeg_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 96) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  store ptr %0, ptr %7, align 8
  %10 = getelementptr inbounds %struct.nv31_mpeg, ptr %7, i32 0, i32 1
  store ptr %10, ptr %4, align 4
  %11 = tail call i32 @nvkm_engine_ctor(ptr noundef nonnull @nv31_mpeg_, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext true, ptr noundef %10) #7
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi i32 [ %11, %9 ], [ -12, %5 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_engine_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv31_mpeg_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 96) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  store ptr @nv31_mpeg, ptr %6, align 8
  %9 = getelementptr inbounds %struct.nv31_mpeg, ptr %6, i32 0, i32 1
  store ptr %9, ptr %3, align 4
  %10 = tail call i32 @nvkm_engine_ctor(ptr noundef nonnull @nv31_mpeg_, ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext true, ptr noundef %9) #7
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi i32 [ %10, %8 ], [ -12, %4 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_new(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nv31_mpeg_chan_dtor(ptr noundef readonly returned %0) #0 {
  %2 = getelementptr inbounds %struct.nv31_mpeg_chan, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nv31_mpeg, ptr %3, i32 0, i32 1, i32 2
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #7
  %6 = getelementptr inbounds %struct.nv31_mpeg, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store ptr null, ptr %6, align 4
  br label %10

10:                                               ; preds = %9, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #7
  ret ptr %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal ptr @nv31_mpeg_dtor(ptr noundef readnone %0) #6 {
  %2 = getelementptr i8, ptr %0, i32 -4
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv31_mpeg_intr(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 45312
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr i8, ptr %9, i32 45616
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 45620
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr i8, ptr %15, i32 45624
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %18 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 2
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #7
  %20 = and i32 %8, 16777216
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %43, label %22

22:                                               ; preds = %1
  %23 = icmp eq i32 %11, 32
  %24 = icmp eq i32 %14, 0
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load ptr, ptr %5, align 4
  %28 = getelementptr i8, ptr %27, i32 45832
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %30 = load ptr, ptr %5, align 4
  %31 = getelementptr i8, ptr %30, i32 45832
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #7, !srcloc !9
  %32 = and i32 %8, -16777217
  br label %43

33:                                               ; preds = %22
  %34 = icmp eq i32 %11, 16
  br i1 %34, label %35, label %43

35:                                               ; preds = %33
  switch i32 %14, label %43 [
    i32 400, label %36
    i32 416, label %36
    i32 432, label %36
  ]

36:                                               ; preds = %35, %35, %35
  %37 = load ptr, ptr %3, align 4
  %38 = load ptr, ptr %2, align 4
  %39 = load ptr, ptr %38, align 4
  %40 = tail call zeroext i1 %39(ptr noundef %37, i32 noundef %14, i32 noundef %17) #7
  %41 = and i32 %8, -16777217
  %42 = select i1 %40, i32 %41, i32 %8
  br label %43

43:                                               ; preds = %36, %35, %33, %26, %1
  %44 = phi i32 [ %8, %33 ], [ %8, %1 ], [ %32, %26 ], [ %8, %35 ], [ %42, %36 ]
  %45 = load ptr, ptr %5, align 4
  %46 = getelementptr i8, ptr %45, i32 45312
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %8) #7, !srcloc !9
  %47 = load ptr, ptr %5, align 4
  %48 = getelementptr i8, ptr %47, i32 45616
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 1) #7, !srcloc !9
  %49 = icmp eq i32 %44, 0
  br i1 %49, label %74, label %50

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %74, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %3, align 4
  %56 = getelementptr inbounds %struct.nvkm_device, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 4
  %59 = getelementptr i8, ptr %0, i32 88
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %71, label %62

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.nv31_mpeg_chan, ptr %60, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %64, i32 0, i32 5
  %66 = load i16, ptr %65, align 8
  %67 = zext i16 %66 to i32
  %68 = getelementptr inbounds %struct.nvkm_object, ptr %60, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.nvkm_client, ptr %69, i32 0, i32 1
  br label %71

71:                                               ; preds = %62, %54
  %72 = phi i32 [ %67, %62 ], [ -1, %54 ]
  %73 = phi ptr [ %70, %62 ], [ @.str.5, %54 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.4, ptr noundef %58, i32 noundef %72, ptr noundef %73, i32 noundef %8, i32 noundef %11, i32 noundef %14, i32 noundef %17) #9
  br label %74

74:                                               ; preds = %71, %50, %43
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv31_mpeg_mthd_dma(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 56
  %5 = load ptr, ptr %4, align 8
  %6 = shl i32 %2, 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = add i32 %6, 7340032
  %10 = getelementptr i8, ptr %8, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %12 = load ptr, ptr %7, align 4
  %13 = add i32 %6, 7340036
  %14 = getelementptr i8, ptr %12, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %16 = load ptr, ptr %7, align 4
  %17 = add i32 %6, 7340040
  %18 = getelementptr i8, ptr %16, i32 %17
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %20 = and i32 %19, -4096
  %21 = lshr i32 %11, 20
  %22 = or i32 %20, %21
  %23 = add i32 %15, 1
  %24 = and i32 %11, 8192
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.nvkm_engine, ptr %5, i32 0, i32 1, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %75, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.nvkm_engine, ptr %5, i32 0, i32 1, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.nvkm_engine, ptr %5, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.6, ptr noundef %35, i32 noundef %6, i32 noundef %11, i32 noundef %15, i32 noundef %19) #9
  br label %75

36:                                               ; preds = %3
  switch i32 %1, label %67 [
    i32 400, label %37
    i32 416, label %52
  ]

37:                                               ; preds = %36
  %38 = load ptr, ptr %7, align 4
  %39 = getelementptr i8, ptr %38, i32 45824
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %41 = and i32 %40, -65537
  %42 = and i32 %11, 196608
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 0, i32 65536
  %45 = or i32 %41, %44
  %46 = load ptr, ptr %7, align 4
  %47 = getelementptr i8, ptr %46, i32 45824
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #7, !srcloc !9
  %48 = load ptr, ptr %7, align 4
  %49 = getelementptr i8, ptr %48, i32 45876
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %22) #7, !srcloc !9
  %50 = load ptr, ptr %7, align 4
  %51 = getelementptr i8, ptr %50, i32 45860
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %23) #7, !srcloc !9
  br label %75

52:                                               ; preds = %36
  %53 = load ptr, ptr %7, align 4
  %54 = getelementptr i8, ptr %53, i32 45824
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %56 = and i32 %55, -131073
  %57 = and i32 %11, 196608
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, i32 0, i32 131072
  %60 = or i32 %56, %59
  %61 = load ptr, ptr %7, align 4
  %62 = getelementptr i8, ptr %61, i32 45824
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %60) #7, !srcloc !9
  %63 = load ptr, ptr %7, align 4
  %64 = getelementptr i8, ptr %63, i32 45920
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %22) #7, !srcloc !9
  %65 = load ptr, ptr %7, align 4
  %66 = getelementptr i8, ptr %65, i32 45924
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %23) #7, !srcloc !9
  br label %75

67:                                               ; preds = %36
  %68 = and i32 %11, 196608
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load ptr, ptr %7, align 4
  %72 = getelementptr i8, ptr %71, i32 45936
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %22) #7, !srcloc !9
  %73 = load ptr, ptr %7, align 4
  %74 = getelementptr i8, ptr %73, i32 45940
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %23) #7, !srcloc !9
  br label %75

75:                                               ; preds = %70, %67, %52, %37, %30, %26
  %76 = phi i1 [ false, %30 ], [ false, %26 ], [ false, %67 ], [ true, %52 ], [ true, %70 ], [ true, %37 ]
  ret i1 %76
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

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
!8 = !{i64 2151488523}
!9 = !{i64 3947430}
!10 = !{i64 3947848}
!11 = !{i64 2151487301}
!12 = !{!"auto-init"}
