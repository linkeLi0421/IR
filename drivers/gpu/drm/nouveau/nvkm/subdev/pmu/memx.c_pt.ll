; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/memx.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/memx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_pmu = type { ptr, %struct.nvkm_subdev, %struct.nvkm_falcon, ptr, ptr, ptr, ptr, i8, %struct.completion, %struct.anon.130, %struct.anon.131 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.122, %struct.anon.123, %struct.nvkm_engine }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.122 = type { i32, ptr, i32, i8 }
%struct.anon.123 = type { i32, ptr, i32, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.126 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.126 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.130 = type { %struct.mutex, i32, i32 }
%struct.anon.131 = type { i32, i32, %struct.work_struct, %struct.wait_queue_head, i32, i32, [2 x i32] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nvkm_memx = type { ptr, i32, i32, %struct.anon.138 }
%struct.anon.138 = type { i32, i32, [64 x i32] }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.121 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@.str = private unnamed_addr constant [33 x i8] c"%s: Exec took %uns, PMU_IN %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%s: R[%06x] = %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"%s: R[%06x] & %08x == %08x, %d us\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"%s:     DELAY = %d ns\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"%s: WAIT VBLANK !NO ACTIVE HEAD\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"%s: WAIT VBLANK HEAD%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"%s:    MEM TRAIN\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"%s:    HOST BLOCKED\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"%s:    HOST UNBLOCKED\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_memx_init(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca [2 x i32], align 8
  %4 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  store i64 0, ptr %3, align 8, !annotation !8
  %6 = call i32 @nvkm_pmu_send(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 1481459021, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %2
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %10 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 276) #7
  store ptr %10, ptr %1, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %8
  store ptr %0, ptr %10, align 8
  %13 = load i32, ptr %3, align 8
  %14 = getelementptr inbounds %struct.nvkm_memx, ptr %10, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds [2 x i32], ptr %3, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nvkm_memx, ptr %10, i32 0, i32 2
  store i32 %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  br label %19

19:                                               ; preds = %19, %12
  %20 = load ptr, ptr %18, align 4
  %21 = getelementptr i8, ptr %20, i32 1090944
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 3) #6, !srcloc !10
  %22 = load ptr, ptr %18, align 4
  %23 = getelementptr i8, ptr %22, i32 1090944
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #6, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %26, label %19

26:                                               ; preds = %19
  %27 = load i32, ptr %14, align 4
  %28 = or i32 %27, 16777216
  %29 = load ptr, ptr %18, align 4
  %30 = getelementptr i8, ptr %29, i32 1089984
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #6, !srcloc !10
  br label %31

31:                                               ; preds = %26, %8, %2
  %32 = phi i32 [ 0, %26 ], [ %6, %2 ], [ -12, %8 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  ret i32 %32
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_pmu_send(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_memx_fini(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca [2 x i32], align 8
  %4 = load ptr, ptr %0, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_pmu, ptr %5, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  store i64 0, ptr %3, align 8, !annotation !8
  %8 = getelementptr inbounds %struct.nvkm_memx, ptr %4, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %34, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.nvkm_pmu, ptr %12, i32 0, i32 1, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nvkm_memx, ptr %4, i32 0, i32 3, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = shl i32 %16, 16
  %18 = or i32 %17, %9
  %19 = getelementptr inbounds %struct.nvkm_device, ptr %14, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 1089988
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %18) #6, !srcloc !10
  %22 = load i32, ptr %15, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %24, %11
  %25 = phi i32 [ %30, %24 ], [ 0, %11 ]
  %26 = getelementptr %struct.nvkm_memx, ptr %4, i32 0, i32 3, i32 2, i32 %25
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr %19, align 4
  %29 = getelementptr i8, ptr %28, i32 1089988
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #6, !srcloc !10
  %30 = add nuw i32 %25, 1
  %31 = load i32, ptr %15, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %24, label %33

33:                                               ; preds = %24, %11
  store i32 0, ptr %8, align 4
  store i32 0, ptr %15, align 4
  br label %34

34:                                               ; preds = %33, %2
  %35 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 1089984
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %39 = load ptr, ptr %35, align 4
  %40 = getelementptr i8, ptr %39, i32 1090944
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 0) #6, !srcloc !10
  br i1 %1, label %41, label %57

41:                                               ; preds = %34
  %42 = and i32 %38, 16777215
  %43 = getelementptr inbounds %struct.nvkm_memx, ptr %4, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = call i32 @nvkm_pmu_send(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 1481459021, i32 noundef 1, i32 noundef %44, i32 noundef %42) #6
  %46 = getelementptr inbounds %struct.nvkm_pmu, ptr %5, i32 0, i32 1, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = icmp ugt i32 %47, 3
  br i1 %48, label %49, label %57

49:                                               ; preds = %41
  %50 = load ptr, ptr %6, align 4
  %51 = getelementptr inbounds %struct.nvkm_device, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.nvkm_pmu, ptr %5, i32 0, i32 1, i32 4
  %54 = load i32, ptr %3, align 8
  %55 = getelementptr inbounds [2 x i32], ptr %3, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %52, ptr noundef nonnull @.str, ptr noundef %53, i32 noundef %54, i32 noundef %56) #8
  br label %57

57:                                               ; preds = %49, %41, %34
  call void @kfree(ptr noundef %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_memx_wr32(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.nvkm_pmu, ptr %4, i32 0, i32 1, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, 3
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.nvkm_pmu, ptr %4, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nvkm_pmu, ptr %4, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.1, ptr noundef %13, i32 noundef %1, i32 noundef %2) #8
  br label %14

14:                                               ; preds = %8, %3
  %15 = getelementptr inbounds %struct.nvkm_memx, ptr %0, i32 0, i32 3
  %16 = getelementptr inbounds %struct.nvkm_memx, ptr %0, i32 0, i32 3, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, -62
  %19 = icmp ult i32 %18, -64
  %20 = load i32, ptr %15, align 4
  br i1 %19, label %22, label %21

21:                                               ; preds = %14
  switch i32 %20, label %24 [
    i32 3, label %45
    i32 0, label %45
  ]

22:                                               ; preds = %14
  %23 = icmp eq i32 %20, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %22, %21
  %25 = load ptr, ptr %0, align 4
  %26 = getelementptr inbounds %struct.nvkm_pmu, ptr %25, i32 0, i32 1, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = shl i32 %17, 16
  %29 = or i32 %20, %28
  %30 = getelementptr inbounds %struct.nvkm_device, ptr %27, i32 0, i32 11
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 1089988
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %29) #6, !srcloc !10
  %33 = load i32, ptr %16, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %35, %24
  %36 = phi i32 [ %41, %35 ], [ 0, %24 ]
  %37 = getelementptr %struct.nvkm_memx, ptr %0, i32 0, i32 3, i32 2, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = load ptr, ptr %30, align 4
  %40 = getelementptr i8, ptr %39, i32 1089988
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #6, !srcloc !10
  %41 = add nuw i32 %36, 1
  %42 = load i32, ptr %16, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %35, label %44

44:                                               ; preds = %35, %24
  store i32 0, ptr %16, align 4
  br label %45

45:                                               ; preds = %44, %22, %21, %21
  %46 = phi i32 [ 0, %44 ], [ %17, %22 ], [ %17, %21 ], [ %17, %21 ]
  %47 = getelementptr %struct.nvkm_memx, ptr %0, i32 0, i32 3, i32 2, i32 %46
  store i32 %1, ptr %47, align 4
  %48 = getelementptr inbounds i8, ptr %47, i32 4
  store i32 %2, ptr %48, align 4
  %49 = load i32, ptr %16, align 4
  %50 = add i32 %49, 2
  store i32 %50, ptr %16, align 4
  store i32 3, ptr %15, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_memx_wait(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.nvkm_pmu, ptr %6, i32 0, i32 1, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 3
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.nvkm_pmu, ptr %6, i32 0, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvkm_pmu, ptr %6, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.2, ptr noundef %15, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #8
  br label %16

16:                                               ; preds = %10, %5
  %17 = getelementptr inbounds %struct.nvkm_memx, ptr %0, i32 0, i32 3
  %18 = getelementptr inbounds %struct.nvkm_memx, ptr %0, i32 0, i32 3, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -60
  %21 = icmp ult i32 %20, -64
  %22 = load i32, ptr %17, align 4
  br i1 %21, label %24, label %23

23:                                               ; preds = %16
  switch i32 %22, label %26 [
    i32 4, label %47
    i32 0, label %47
  ]

24:                                               ; preds = %16
  %25 = icmp eq i32 %22, 0
  br i1 %25, label %47, label %26

26:                                               ; preds = %24, %23
  %27 = load ptr, ptr %0, align 4
  %28 = getelementptr inbounds %struct.nvkm_pmu, ptr %27, i32 0, i32 1, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = shl i32 %19, 16
  %31 = or i32 %22, %30
  %32 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 11
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 1089988
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %31) #6, !srcloc !10
  %35 = load i32, ptr %18, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %37, %26
  %38 = phi i32 [ %43, %37 ], [ 0, %26 ]
  %39 = getelementptr %struct.nvkm_memx, ptr %0, i32 0, i32 3, i32 2, i32 %38
  %40 = load i32, ptr %39, align 4
  %41 = load ptr, ptr %32, align 4
  %42 = getelementptr i8, ptr %41, i32 1089988
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #6, !srcloc !10
  %43 = add nuw i32 %38, 1
  %44 = load i32, ptr %18, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %37, label %46

46:                                               ; preds = %37, %26
  store i32 0, ptr %18, align 4
  br label %47

47:                                               ; preds = %46, %24, %23, %23
  %48 = phi i32 [ 0, %46 ], [ %19, %24 ], [ %19, %23 ], [ %19, %23 ]
  %49 = getelementptr %struct.nvkm_memx, ptr %0, i32 0, i32 3, i32 2, i32 %48
  store i32 %1, ptr %49, align 4
  %50 = getelementptr inbounds i8, ptr %49, i32 4
  store i32 %2, ptr %50, align 4
  %51 = getelementptr inbounds i8, ptr %49, i32 8
  store i32 %3, ptr %51, align 4
  %52 = getelementptr inbounds i8, ptr %49, i32 12
  store i32 %4, ptr %52, align 4
  %53 = load i32, ptr %18, align 4
  %54 = add i32 %53, 4
  store i32 %54, ptr %18, align 4
  store i32 4, ptr %17, align 4
  %55 = load ptr, ptr %0, align 4
  %56 = getelementptr inbounds %struct.nvkm_pmu, ptr %55, i32 0, i32 1, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = shl i32 %54, 16
  %59 = or i32 %58, 4
  %60 = getelementptr inbounds %struct.nvkm_device, ptr %57, i32 0, i32 11
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr i8, ptr %61, i32 1089988
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %59) #6, !srcloc !10
  %63 = load i32, ptr %18, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %65, %47
  %66 = phi i32 [ %71, %65 ], [ 0, %47 ]
  %67 = getelementptr %struct.nvkm_memx, ptr %0, i32 0, i32 3, i32 2, i32 %66
  %68 = load i32, ptr %67, align 4
  %69 = load ptr, ptr %60, align 4
  %70 = getelementptr i8, ptr %69, i32 1089988
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #6, !srcloc !10
  %71 = add nuw i32 %66, 1
  %72 = load i32, ptr %18, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %65, label %74

74:                                               ; preds = %65, %47
  store i32 0, ptr %17, align 4
  store i32 0, ptr %18, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_memx_nsec(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.nvkm_pmu, ptr %3, i32 0, i32 1, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 3
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.nvkm_pmu, ptr %3, i32 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nvkm_pmu, ptr %3, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.3, ptr noundef %12, i32 noundef %1) #8
  br label %13

13:                                               ; preds = %7, %2
  %14 = getelementptr inbounds %struct.nvkm_memx, ptr %0, i32 0, i32 3
  %15 = getelementptr inbounds %struct.nvkm_memx, ptr %0, i32 0, i32 3, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, -63
  %18 = icmp ult i32 %17, -64
  %19 = load i32, ptr %14, align 4
  br i1 %18, label %21, label %20

20:                                               ; preds = %13
  switch i32 %19, label %23 [
    i32 5, label %44
    i32 0, label %44
  ]

21:                                               ; preds = %13
  %22 = icmp eq i32 %19, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %21, %20
  %24 = load ptr, ptr %0, align 4
  %25 = getelementptr inbounds %struct.nvkm_pmu, ptr %24, i32 0, i32 1, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = shl i32 %16, 16
  %28 = or i32 %19, %27
  %29 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 11
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 1089988
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %28) #6, !srcloc !10
  %32 = load i32, ptr %15, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %34, %23
  %35 = phi i32 [ %40, %34 ], [ 0, %23 ]
  %36 = getelementptr %struct.nvkm_memx, ptr %0, i32 0, i32 3, i32 2, i32 %35
  %37 = load i32, ptr %36, align 4
  %38 = load ptr, ptr %29, align 4
  %39 = getelementptr i8, ptr %38, i32 1089988
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #6, !srcloc !10
  %40 = add nuw i32 %35, 1
  %41 = load i32, ptr %15, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %34, label %43

43:                                               ; preds = %34, %23
  store i32 0, ptr %15, align 4
  br label %44

44:                                               ; preds = %43, %21, %20, %20
  %45 = phi i32 [ 0, %43 ], [ %16, %21 ], [ %16, %20 ], [ %16, %20 ]
  %46 = getelementptr %struct.nvkm_memx, ptr %0, i32 0, i32 3, i32 2, i32 %45
  store i32 %1, ptr %46, align 4
  %47 = load i32, ptr %15, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %15, align 4
  store i32 5, ptr %14, align 4
  %49 = load ptr, ptr %0, align 4
  %50 = getelementptr inbounds %struct.nvkm_pmu, ptr %49, i32 0, i32 1, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = shl i32 %48, 16
  %53 = or i32 %52, 5
  %54 = getelementptr inbounds %struct.nvkm_device, ptr %51, i32 0, i32 11
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 1089988
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %53) #6, !srcloc !10
  %57 = load i32, ptr %15, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %59, %44
  %60 = phi i32 [ %65, %59 ], [ 0, %44 ]
  %61 = getelementptr %struct.nvkm_memx, ptr %0, i32 0, i32 3, i32 2, i32 %60
  %62 = load i32, ptr %61, align 4
  %63 = load ptr, ptr %54, align 4
  %64 = getelementptr i8, ptr %63, i32 1089988
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %62) #6, !srcloc !10
  %65 = add nuw i32 %60, 1
  %66 = load i32, ptr %15, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %59, label %68

68:                                               ; preds = %59, %44
  store i32 0, ptr %14, align 4
  store i32 0, ptr %15, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_memx_wait_vblank(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_pmu, ptr %2, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 16
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %6, 208
  br i1 %7, label %8, label %40

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 6357072
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr %9, align 4
  %17 = getelementptr i8, ptr %16, i32 6359872
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %19 = lshr i32 %18, 16
  %20 = and i32 %18, 65535
  %21 = mul nuw i32 %20, %19
  br label %22

22:                                               ; preds = %15, %8
  %23 = phi i32 [ 0, %8 ], [ %21, %15 ]
  %24 = and i32 %12, 512
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %9, align 4
  %28 = getelementptr i8, ptr %27, i32 6361216
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %30 = lshr i32 %29, 16
  %31 = and i32 %29, 65535
  %32 = mul nuw i32 %31, %30
  %33 = icmp ugt i32 %32, %23
  %34 = tail call i32 @llvm.umax.i32(i32 %32, i32 %23)
  %35 = zext i1 %33 to i32
  br label %36

36:                                               ; preds = %26, %22
  %37 = phi i32 [ %23, %22 ], [ %34, %26 ]
  %38 = phi i32 [ 0, %22 ], [ %35, %26 ]
  %39 = icmp eq i32 %37, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36, %1
  %41 = getelementptr inbounds %struct.nvkm_pmu, ptr %2, i32 0, i32 1, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = icmp ugt i32 %42, 3
  br i1 %43, label %44, label %114

44:                                               ; preds = %40
  %45 = load ptr, ptr %3, align 4
  %46 = getelementptr inbounds %struct.nvkm_device, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.nvkm_pmu, ptr %2, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %47, ptr noundef nonnull @.str.4, ptr noundef %48) #8
  br label %114

49:                                               ; preds = %36
  %50 = getelementptr inbounds %struct.nvkm_pmu, ptr %2, i32 0, i32 1, i32 5
  %51 = load i32, ptr %50, align 4
  %52 = icmp ugt i32 %51, 3
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load ptr, ptr %3, align 4
  %55 = getelementptr inbounds %struct.nvkm_device, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.nvkm_pmu, ptr %2, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %56, ptr noundef nonnull @.str.5, ptr noundef %57, i32 noundef %38) #8
  br label %58

58:                                               ; preds = %53, %49
  %59 = getelementptr inbounds %struct.nvkm_memx, ptr %0, i32 0, i32 3
  %60 = getelementptr inbounds %struct.nvkm_memx, ptr %0, i32 0, i32 3, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, -63
  %63 = icmp ult i32 %62, -64
  %64 = load i32, ptr %59, align 4
  br i1 %63, label %66, label %65

65:                                               ; preds = %58
  switch i32 %64, label %68 [
    i32 6, label %89
    i32 0, label %89
  ]

66:                                               ; preds = %58
  %67 = icmp eq i32 %64, 0
  br i1 %67, label %89, label %68

68:                                               ; preds = %66, %65
  %69 = load ptr, ptr %0, align 4
  %70 = getelementptr inbounds %struct.nvkm_pmu, ptr %69, i32 0, i32 1, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = shl i32 %61, 16
  %73 = or i32 %64, %72
  %74 = getelementptr inbounds %struct.nvkm_device, ptr %71, i32 0, i32 11
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr i8, ptr %75, i32 1089988
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %73) #6, !srcloc !10
  %77 = load i32, ptr %60, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %79, %68
  %80 = phi i32 [ %85, %79 ], [ 0, %68 ]
  %81 = getelementptr %struct.nvkm_memx, ptr %0, i32 0, i32 3, i32 2, i32 %80
  %82 = load i32, ptr %81, align 4
  %83 = load ptr, ptr %74, align 4
  %84 = getelementptr i8, ptr %83, i32 1089988
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %82) #6, !srcloc !10
  %85 = add nuw i32 %80, 1
  %86 = load i32, ptr %60, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %79, label %88

88:                                               ; preds = %79, %68
  store i32 0, ptr %60, align 4
  br label %89

89:                                               ; preds = %88, %66, %65, %65
  %90 = phi i32 [ 0, %88 ], [ %61, %66 ], [ %61, %65 ], [ %61, %65 ]
  %91 = getelementptr %struct.nvkm_memx, ptr %0, i32 0, i32 3, i32 2, i32 %90
  store i32 %38, ptr %91, align 4
  %92 = load i32, ptr %60, align 4
  %93 = add i32 %92, 1
  store i32 %93, ptr %60, align 4
  store i32 6, ptr %59, align 4
  %94 = load ptr, ptr %0, align 4
  %95 = getelementptr inbounds %struct.nvkm_pmu, ptr %94, i32 0, i32 1, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = shl i32 %93, 16
  %98 = or i32 %97, 6
  %99 = getelementptr inbounds %struct.nvkm_device, ptr %96, i32 0, i32 11
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr i8, ptr %100, i32 1089988
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %98) #6, !srcloc !10
  %102 = load i32, ptr %60, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %113, label %104

104:                                              ; preds = %104, %89
  %105 = phi i32 [ %110, %104 ], [ 0, %89 ]
  %106 = getelementptr %struct.nvkm_memx, ptr %0, i32 0, i32 3, i32 2, i32 %105
  %107 = load i32, ptr %106, align 4
  %108 = load ptr, ptr %99, align 4
  %109 = getelementptr i8, ptr %108, i32 1089988
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %107) #6, !srcloc !10
  %110 = add nuw i32 %105, 1
  %111 = load i32, ptr %60, align 4
  %112 = icmp ult i32 %110, %111
  br i1 %112, label %104, label %113

113:                                              ; preds = %104, %89
  store i32 0, ptr %59, align 4
  store i32 0, ptr %60, align 4
  br label %114

114:                                              ; preds = %113, %44, %40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_memx_train(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_pmu, ptr %2, i32 0, i32 1, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 3
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nvkm_pmu, ptr %2, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nvkm_pmu, ptr %2, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.6, ptr noundef %11) #8
  br label %12

12:                                               ; preds = %6, %1
  %13 = getelementptr inbounds %struct.nvkm_memx, ptr %0, i32 0, i32 3
  %14 = getelementptr inbounds %struct.nvkm_memx, ptr %0, i32 0, i32 3, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, 63
  %17 = load i32, ptr %13, align 4
  br i1 %16, label %19, label %18

18:                                               ; preds = %12
  switch i32 %17, label %21 [
    i32 7, label %42
    i32 0, label %42
  ]

19:                                               ; preds = %12
  %20 = icmp eq i32 %17, 0
  br i1 %20, label %42, label %21

21:                                               ; preds = %19, %18
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.nvkm_pmu, ptr %22, i32 0, i32 1, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = shl i32 %15, 16
  %26 = or i32 %17, %25
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 11
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 1089988
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %26) #6, !srcloc !10
  %30 = load i32, ptr %14, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %32, %21
  %33 = phi i32 [ %38, %32 ], [ 0, %21 ]
  %34 = getelementptr %struct.nvkm_memx, ptr %0, i32 0, i32 3, i32 2, i32 %33
  %35 = load i32, ptr %34, align 4
  %36 = load ptr, ptr %27, align 4
  %37 = getelementptr i8, ptr %36, i32 1089988
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #6, !srcloc !10
  %38 = add nuw i32 %33, 1
  %39 = load i32, ptr %14, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %32, label %41

41:                                               ; preds = %32, %21
  store i32 0, ptr %14, align 4
  br label %42

42:                                               ; preds = %41, %19, %18, %18
  store i32 7, ptr %13, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_memx_train_result(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [2 x i32], align 8
  %5 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  store i64 0, ptr %4, align 8, !annotation !8
  %7 = call i32 @nvkm_pmu_send(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 1481459021, i32 noundef 0, i32 noundef 1, i32 noundef 0) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %3
  %10 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 2
  %13 = icmp ugt i32 %12, %2
  br i1 %13, label %31, label %14

14:                                               ; preds = %9
  %15 = load i32, ptr %4, align 8
  %16 = or i32 %15, 33554432
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 1089984
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %16) #6, !srcloc !10
  %20 = icmp ult i32 %11, 4
  br i1 %20, label %31, label %21

21:                                               ; preds = %14
  %22 = call i32 @llvm.umax.i32(i32 %12, i32 1)
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi i32 [ %29, %23 ], [ 0, %21 ]
  %25 = load ptr, ptr %17, align 4
  %26 = getelementptr i8, ptr %25, i32 1089988
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #6, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %28 = getelementptr i32, ptr %1, i32 %24
  store i32 %27, ptr %28, align 4
  %29 = add nuw nsw i32 %24, 1
  %30 = icmp eq i32 %29, %22
  br i1 %30, label %31, label %23

31:                                               ; preds = %23, %14, %9, %3
  %32 = phi i32 [ %7, %3 ], [ -12, %9 ], [ 0, %14 ], [ 0, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_memx_block(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_pmu, ptr %2, i32 0, i32 1, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 3
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nvkm_pmu, ptr %2, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nvkm_pmu, ptr %2, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.7, ptr noundef %11) #8
  br label %12

12:                                               ; preds = %6, %1
  %13 = getelementptr inbounds %struct.nvkm_memx, ptr %0, i32 0, i32 3
  %14 = getelementptr inbounds %struct.nvkm_memx, ptr %0, i32 0, i32 3, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, 63
  %17 = load i32, ptr %13, align 4
  br i1 %16, label %20, label %18

18:                                               ; preds = %12
  %19 = icmp ult i32 %17, 2
  br i1 %19, label %43, label %22

20:                                               ; preds = %12
  %21 = icmp eq i32 %17, 0
  br i1 %21, label %43, label %22

22:                                               ; preds = %20, %18
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr inbounds %struct.nvkm_pmu, ptr %23, i32 0, i32 1, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = shl i32 %15, 16
  %27 = or i32 %17, %26
  %28 = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 11
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 1089988
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %27) #6, !srcloc !10
  %31 = load i32, ptr %14, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %33, %22
  %34 = phi i32 [ %39, %33 ], [ 0, %22 ]
  %35 = getelementptr %struct.nvkm_memx, ptr %0, i32 0, i32 3, i32 2, i32 %34
  %36 = load i32, ptr %35, align 4
  %37 = load ptr, ptr %28, align 4
  %38 = getelementptr i8, ptr %37, i32 1089988
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #6, !srcloc !10
  %39 = add nuw i32 %34, 1
  %40 = load i32, ptr %14, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %33, label %42

42:                                               ; preds = %33, %22
  store i32 0, ptr %14, align 4
  br label %43

43:                                               ; preds = %42, %20, %18
  store i32 1, ptr %13, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_memx_unblock(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_pmu, ptr %2, i32 0, i32 1, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 3
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nvkm_pmu, ptr %2, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nvkm_pmu, ptr %2, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.8, ptr noundef %11) #8
  br label %12

12:                                               ; preds = %6, %1
  %13 = getelementptr inbounds %struct.nvkm_memx, ptr %0, i32 0, i32 3
  %14 = getelementptr inbounds %struct.nvkm_memx, ptr %0, i32 0, i32 3, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, 63
  %17 = load i32, ptr %13, align 4
  br i1 %16, label %19, label %18

18:                                               ; preds = %12
  switch i32 %17, label %21 [
    i32 2, label %42
    i32 0, label %42
  ]

19:                                               ; preds = %12
  %20 = icmp eq i32 %17, 0
  br i1 %20, label %42, label %21

21:                                               ; preds = %19, %18
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.nvkm_pmu, ptr %22, i32 0, i32 1, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = shl i32 %15, 16
  %26 = or i32 %17, %25
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 11
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 1089988
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %26) #6, !srcloc !10
  %30 = load i32, ptr %14, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %32, %21
  %33 = phi i32 [ %38, %32 ], [ 0, %21 ]
  %34 = getelementptr %struct.nvkm_memx, ptr %0, i32 0, i32 3, i32 2, i32 %33
  %35 = load i32, ptr %34, align 4
  %36 = load ptr, ptr %27, align 4
  %37 = getelementptr i8, ptr %36, i32 1089988
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #6, !srcloc !10
  %38 = add nuw i32 %33, 1
  %39 = load i32, ptr %14, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %32, label %41

41:                                               ; preds = %32, %21
  store i32 0, ptr %14, align 4
  br label %42

42:                                               ; preds = %41, %19, %18, %18
  store i32 2, ptr %13, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"auto-init"}
!9 = !{i64 2151486012}
!10 = !{i64 3944919}
!11 = !{i64 3945337}
!12 = !{i64 2151484790}
